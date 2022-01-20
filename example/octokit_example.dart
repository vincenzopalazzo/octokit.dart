import 'dart:io';

import 'package:octokit/octokit.dart';

void main() async {
  var sysEnv = Platform.environment;
  var token = sysEnv["GITHUB_TOKEN"]!;
  GithubClient client = GithubClient(token: token);
  var query = r'''
        query {
           viewer { 
              __typename
              login
            }
        }
        ''';
  var response =
      await client.rawQuery(queryDefinition: query, queryName: "viewer");
  print(response);
}
