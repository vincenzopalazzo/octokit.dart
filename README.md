<div align="center">
  <h1>octokit.dart</h1>

  <img src="https://github.com/vincenzopalazzo/octokit.dart/blob/main/docs/logo.png" />

  <p>
    <strong> :dart: Dart toolkit for the GitHub GraphQL API :dart: </strong>
  </p>

  <p>
    <img alt="GitHub Workflow Status" src="https://img.shields.io/github/workflow/status/vincenzopalazzo/octokit.dart/graphql%20Test%20case?style=flat-square">
  </p>

  <h4>
    <a href="https://github.com/vincenzopalazzo/octokit.dart">Project Homepage</a>
  </h4>
</div>

## Table of Content

- Introduction
- Getting started
- Usage
- License

## Introduction

[Github API v4](https://docs.github.com/en/graphql) dart wrapper to interact with Github in your application with dart and flutter.

The library is flexible and provide all what the user need, all the feature that are supported and will be supported are listed below:

- [X] Raw GraphQL query and mutation
- [ ] Autogenerate the query from a .graphql file and work with dart object in your app

## Getting started

TODO: 

## Usage

## Raw Query

```dart
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
```

## Additional information

This package is a designed to be auto managed be the end user, in fact this package give the API to work with
code generation from graphql schema, so you can implement your custom query on your client and handle all with the 
API provided by octokit.dart

## License
TODO
