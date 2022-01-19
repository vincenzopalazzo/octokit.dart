import 'dart:io';
import 'package:octokit/octokit.dart';
import 'package:test/test.dart';

import 'octokit_keys.dart' as Constants;

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
  });
}
