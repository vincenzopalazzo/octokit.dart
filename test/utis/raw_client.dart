import 'package:graphql/client.dart';

GraphQLClient makeRawClient(
    {String endPoint = "https://api.github.com/graphql",
    required String token}) {
  var link = HttpLink(endPoint, defaultHeaders: {
    'Authorization': 'bearer $token',
  });
  return GraphQLClient(link: link, cache: GraphQLCache());
}

var commitQuery = r''' 
query LastCommits($repo: String!, $owner: String!) {
  repository(name: $repo, owner: $owner) {
   refs(refPrefix: "refs/heads/",  orderBy: {direction: DESC, field: TAG_COMMIT_DATE}, last: 100) {
    edges {
      node {
          ... on Ref {
            name
            target {
              ... on Commit {
                history(first: 2) {
                  edges {
                    node {
                      ... on Commit {
                        committedDate
                        commitUrl
                        messageHeadline
                        messageBody
                        author {
                          name
                          email
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
    }
  }
  }
}
''';
