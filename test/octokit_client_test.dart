import 'dart:io';
import 'package:graphql/client.dart';
import 'package:octokit/octokit.dart';
import 'package:test/test.dart';

import 'octokit_keys.dart' as Constants;
import 'queries/github.commits.graphql.dart';
import 'utis/raw_client.dart';

void main() {
  var sysEnv = Platform.environment;
  group('test queries', () {
    GithubClient? client;
    String? token;

    setUp(() {
      token = sysEnv[Constants.githubToken]!;
      client = GithubClient(token: token!);
    });

    test('Run raw query with Github client', () async {
      var query = r'''
        query {
           viewer { 
              __typename
              login
            }
        }
        ''';
      var response =
          await client!.rawQuery(queryDefinition: query, queryName: "viewer");
      expect(response["login"], "vincenzopalazzo");
    });

    test('run a query', () async {
      var rawClient = await makeRawClient(token: token!);
      var query = QueryOptions(document: gql(commitQuery), variables: {
        "owner": "vincenzopalazzo",
        "repo": "octokit.dart",
      });
      var response = await rawClient.query(query);
      var edges = response.data!["repository"]!["refs"]!["edges"]!;
      expect(edges.length >= 1, isTrue);
      edges.forEach((element) {
        expect(element["node"], isNotNull);
      });
    });

    test('run a query and decode the result in a Object', () async {
      var response = await client!.query(
          query: GQLOptionsQueryLastCommits(
              variables: VariablesQueryLastCommits(
                  owner: "vincenzopalazzo", repo: "octokit.dart")));
      var query = QueryLastCommits.fromJson(response);
      expect(query.repository!.refs!.edges!.length >= 1, isTrue);
      query.repository!.refs!.edges!.forEach((element) {
        expect(element!.node, isNotNull);
      });
    });
  });
}
