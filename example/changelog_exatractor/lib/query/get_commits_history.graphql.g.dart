// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_commits_history.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesQueryGetLastCommits _$VariablesQueryGetLastCommitsFromJson(
    Map<String, dynamic> json) {
  return VariablesQueryGetLastCommits(
    owner: json['owner'] as String,
    name: json['name'] as String,
    branch: json['branch'] as String,
    first: json['first'] as int,
  );
}

Map<String, dynamic> _$VariablesQueryGetLastCommitsToJson(
        VariablesQueryGetLastCommits instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'name': instance.name,
      'branch': instance.branch,
      'first': instance.first,
    };

QueryGetLastCommits _$QueryGetLastCommitsFromJson(Map<String, dynamic> json) {
  return QueryGetLastCommits(
    repository: json['repository'] == null
        ? null
        : QueryGetLastCommits$repository.fromJson(
            json['repository'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetLastCommitsToJson(
        QueryGetLastCommits instance) =>
    <String, dynamic>{
      'repository': instance.repository,
    };

QueryGetLastCommits$repository _$QueryGetLastCommits$repositoryFromJson(
    Map<String, dynamic> json) {
  return QueryGetLastCommits$repository(
    ref: json['ref'] == null
        ? null
        : QueryGetLastCommits$repository$ref.fromJson(
            json['ref'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetLastCommits$repositoryToJson(
        QueryGetLastCommits$repository instance) =>
    <String, dynamic>{
      'ref': instance.ref,
    };

QueryGetLastCommits$repository$ref _$QueryGetLastCommits$repository$refFromJson(
    Map<String, dynamic> json) {
  return QueryGetLastCommits$repository$ref(
    target: json['target'] == null
        ? null
        : QueryGetLastCommits$repository$ref$target.fromJson(
            json['target'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetLastCommits$repository$refToJson(
        QueryGetLastCommits$repository$ref instance) =>
    <String, dynamic>{
      'target': instance.target,
    };

QueryGetLastCommits$repository$ref$target
    _$QueryGetLastCommits$repository$ref$targetFromJson(
        Map<String, dynamic> json) {
  return QueryGetLastCommits$repository$ref$target();
}

Map<String, dynamic> _$QueryGetLastCommits$repository$ref$targetToJson(
        QueryGetLastCommits$repository$ref$target instance) =>
    <String, dynamic>{};

QueryGetLastCommits$repository$ref$target$Commit
    _$QueryGetLastCommits$repository$ref$target$CommitFromJson(
        Map<String, dynamic> json) {
  return QueryGetLastCommits$repository$ref$target$Commit(
    history: QueryGetLastCommits$repository$ref$target$Commit$history.fromJson(
        json['history'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryGetLastCommits$repository$ref$target$CommitToJson(
        QueryGetLastCommits$repository$ref$target$Commit instance) =>
    <String, dynamic>{
      'history': instance.history,
    };

QueryGetLastCommits$repository$ref$target$Commit$history
    _$QueryGetLastCommits$repository$ref$target$Commit$historyFromJson(
        Map<String, dynamic> json) {
  return QueryGetLastCommits$repository$ref$target$Commit$history(
    pageInfo: QueryGetLastCommits$repository$ref$target$Commit$history$pageInfo
        .fromJson(json['pageInfo'] as Map<String, dynamic>),
    edges: (json['edges'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryGetLastCommits$repository$ref$target$Commit$history$edges
                .fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String,
    dynamic> _$QueryGetLastCommits$repository$ref$target$Commit$historyToJson(
        QueryGetLastCommits$repository$ref$target$Commit$history instance) =>
    <String, dynamic>{
      'pageInfo': instance.pageInfo,
      'edges': instance.edges,
    };

QueryGetLastCommits$repository$ref$target$Commit$history$pageInfo
    _$QueryGetLastCommits$repository$ref$target$Commit$history$pageInfoFromJson(
        Map<String, dynamic> json) {
  return QueryGetLastCommits$repository$ref$target$Commit$history$pageInfo(
    hasNextPage: json['hasNextPage'] as bool,
    endCursor: json['endCursor'] as String?,
  );
}

Map<String, dynamic>
    _$QueryGetLastCommits$repository$ref$target$Commit$history$pageInfoToJson(
            QueryGetLastCommits$repository$ref$target$Commit$history$pageInfo
                instance) =>
        <String, dynamic>{
          'hasNextPage': instance.hasNextPage,
          'endCursor': instance.endCursor,
        };

QueryGetLastCommits$repository$ref$target$Commit$history$edges
    _$QueryGetLastCommits$repository$ref$target$Commit$history$edgesFromJson(
        Map<String, dynamic> json) {
  return QueryGetLastCommits$repository$ref$target$Commit$history$edges(
    node: json['node'] == null
        ? null
        : QueryGetLastCommits$repository$ref$target$Commit$history$edges$node
            .fromJson(json['node'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$QueryGetLastCommits$repository$ref$target$Commit$history$edgesToJson(
            QueryGetLastCommits$repository$ref$target$Commit$history$edges
                instance) =>
        <String, dynamic>{
          'node': instance.node,
        };

QueryGetLastCommits$repository$ref$target$Commit$history$edges$node
    _$QueryGetLastCommits$repository$ref$target$Commit$history$edges$nodeFromJson(
        Map<String, dynamic> json) {
  return QueryGetLastCommits$repository$ref$target$Commit$history$edges$node(
    messageHeadline: json['messageHeadline'] as String,
    author: json['author'] == null
        ? null
        : QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author
            .fromJson(json['author'] as Map<String, dynamic>),
    committedDate: json['committedDate'] as String,
  );
}

Map<String, dynamic>
    _$QueryGetLastCommits$repository$ref$target$Commit$history$edges$nodeToJson(
            QueryGetLastCommits$repository$ref$target$Commit$history$edges$node
                instance) =>
        <String, dynamic>{
          'messageHeadline': instance.messageHeadline,
          'author': instance.author,
          'committedDate': instance.committedDate,
        };

QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author
    _$QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$authorFromJson(
        Map<String, dynamic> json) {
  return QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author(
    user: json['user'] == null
        ? null
        : QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author$user
            .fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$authorToJson(
            QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author
                instance) =>
        <String, dynamic>{
          'user': instance.user,
        };

QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author$user
    _$QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author$userFromJson(
        Map<String, dynamic> json) {
  return QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author$user(
    login: json['login'] as String,
  );
}

Map<String, dynamic>
    _$QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author$userToJson(
            QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author$user
                instance) =>
        <String, dynamic>{
          'login': instance.login,
        };
