import 'dart:io';
import 'package:octokit/octokit.dart';
import 'package:test/test.dart';

import 'octokit_keys.dart' as Constants;
import 'queries/github.commits.graphql.dart';

void main() {
  var sysEnv = Platform.environment;
  group('test queries', () {
    GithubClient? client;

    setUp(() {
      var token = sysEnv[Constants.githubToken]!;
      client = GithubClient(token: token);
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

    test('run a query and decode the result in a Object', () async {
      var response = await client!.query(
          query: GQLOptionsQueryLastCommits(
              variables: VariablesQueryLastCommits(
                  owner: "vincenzopalazzo", repo: "octokit.dart")));
      var query = QueryLastCommits.fromJson(response);
      expect(query.repository!.refs!.edges!.length, 1);
      query.repository!.refs!.edges!.forEach((element) {
        expect(element!.node, isNotNull);
      });
    });
  });
}
