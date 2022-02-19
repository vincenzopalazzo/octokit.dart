import 'dart:io';

import 'package:changelog_exatractor/query/get_commits_history.graphqls.dart';
import 'package:octokit/octokit.dart';

void storeCommits(
    QueryGetLastCommits branch, String version, String pathToStore) async {
  try {
    var changelog = File(pathToStore);
    changelog.writeAsStringSync("## $version\n",
        flush: true, mode: FileMode.append);
    var commits = branch.repository!.ref!.target!
        as QueryGetLastCommits$repository$ref$target$Commit;
    for (var element in commits.history.edges!) {
      var commit = element!.node!;
      var user = commit.author!.user!.login;
      changelog.writeAsStringSync(
          "- ${commit.messageHeadline}. Made by @$user in ${commit.committedDate.split("T")[0]}\n",
          flush: true,
          mode: FileMode.append);
    }
  } catch (ex, stacktrace) {
    print(stacktrace);
  }
}

Future<void> main(List<String> arguments) async {
  var sysEnv = Platform.environment;
  var token = sysEnv["GITHUB_TOKEN"]!;

  var client = GithubClient(token: token);
  var response = await client.query(
      query: GQLOptionsQueryGetLastCommits(
          variables: VariablesQueryGetLastCommits(
              branch: "main",
              name: "octokit.dart",
              owner: "vincenzopalazzo",
              first: 60)));
  var commits = QueryGetLastCommits.fromJson(response);

  /// FIXME: Take this information from command line
  storeCommits(commits, "v0.0.2", "CHANGELOG.md");
  exit(0);
}
