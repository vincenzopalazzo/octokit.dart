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

<div align="center">
  <img src="https://opensource.org/files/osi_keyhole_300X300_90ppi_0.png" width="150" height="150"/>
</div>

```
Copyright 2022 Vincenzo Palazzo <vincenzopalazzodev@gmail.com>. All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of Google Inc. nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
