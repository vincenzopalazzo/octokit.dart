import 'dart:io';
import 'package:graphql/client.dart';
import 'package:test/test.dart';

import 'octokit_keys.dart' as Constants;

void main() {
  var sysEnv = Platform.environment;
  group('login_query', () {
    var token = "";
    GraphQLClient? graphQLClient;

    setUp(() {
      token = sysEnv[Constants.githubToken]!;
      final _httpLink = HttpLink(
        'https://api.github.com/graphql',
      );

      final _authLink = AuthLink(
        getToken: () async => 'Bearer $token',
      );

      Link _link = _authLink.concat(_httpLink);
      graphQLClient = GraphQLClient(
        cache: GraphQLCache(),
        link: _link,
      );
    });

    test('Run the first query generated', () {
      var query = QueryOptions(document: gql(r'''
        query {
           viewer { 
              __typename
              login
            }
        }
        '''));
      var response = graphQLClient!.query(query);
    });
  });
}
