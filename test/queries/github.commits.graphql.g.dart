// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github.commits.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesQueryLastCommits _$VariablesQueryLastCommitsFromJson(
    Map<String, dynamic> json) {
  return VariablesQueryLastCommits(
    repo: json['repo'] as String,
    owner: json['owner'] as String,
  );
}

Map<String, dynamic> _$VariablesQueryLastCommitsToJson(
        VariablesQueryLastCommits instance) =>
    <String, dynamic>{
      'repo': instance.repo,
      'owner': instance.owner,
    };

QueryLastCommits _$QueryLastCommitsFromJson(Map<String, dynamic> json) {
  return QueryLastCommits(
    repository: json['repository'] == null
        ? null
        : QueryLastCommits$repository.fromJson(
            json['repository'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryLastCommitsToJson(QueryLastCommits instance) =>
    <String, dynamic>{
      'repository': instance.repository,
    };

QueryLastCommits$repository _$QueryLastCommits$repositoryFromJson(
    Map<String, dynamic> json) {
  return QueryLastCommits$repository(
    refs: json['refs'] == null
        ? null
        : QueryLastCommits$repository$refs.fromJson(
            json['refs'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryLastCommits$repositoryToJson(
        QueryLastCommits$repository instance) =>
    <String, dynamic>{
      'refs': instance.refs,
    };

QueryLastCommits$repository$refs _$QueryLastCommits$repository$refsFromJson(
    Map<String, dynamic> json) {
  return QueryLastCommits$repository$refs(
    edges: (json['edges'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryLastCommits$repository$refs$edges.fromJson(
                e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QueryLastCommits$repository$refsToJson(
        QueryLastCommits$repository$refs instance) =>
    <String, dynamic>{
      'edges': instance.edges,
    };

QueryLastCommits$repository$refs$edges
    _$QueryLastCommits$repository$refs$edgesFromJson(
        Map<String, dynamic> json) {
  return QueryLastCommits$repository$refs$edges(
    node: json['node'] == null
        ? null
        : QueryLastCommits$repository$refs$edges$node.fromJson(
            json['node'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryLastCommits$repository$refs$edgesToJson(
        QueryLastCommits$repository$refs$edges instance) =>
    <String, dynamic>{
      'node': instance.node,
    };

QueryLastCommits$repository$refs$edges$node
    _$QueryLastCommits$repository$refs$edges$nodeFromJson(
        Map<String, dynamic> json) {
  return QueryLastCommits$repository$refs$edges$node(
    name: json['name'] as String,
    target: json['target'] == null
        ? null
        : QueryLastCommits$repository$refs$edges$node$target.fromJson(
            json['target'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$QueryLastCommits$repository$refs$edges$nodeToJson(
        QueryLastCommits$repository$refs$edges$node instance) =>
    <String, dynamic>{
      'name': instance.name,
      'target': instance.target,
    };

QueryLastCommits$repository$refs$edges$node$target
    _$QueryLastCommits$repository$refs$edges$node$targetFromJson(
        Map<String, dynamic> json) {
  return QueryLastCommits$repository$refs$edges$node$target();
}

Map<String, dynamic> _$QueryLastCommits$repository$refs$edges$node$targetToJson(
        QueryLastCommits$repository$refs$edges$node$target instance) =>
    <String, dynamic>{};

QueryLastCommits$repository$refs$edges$node$target$Commit
    _$QueryLastCommits$repository$refs$edges$node$target$CommitFromJson(
        Map<String, dynamic> json) {
  return QueryLastCommits$repository$refs$edges$node$target$Commit(
    history: QueryLastCommits$repository$refs$edges$node$target$Commit$history
        .fromJson(json['history'] as Map<String, dynamic>),
  );
}

Map<String,
    dynamic> _$QueryLastCommits$repository$refs$edges$node$target$CommitToJson(
        QueryLastCommits$repository$refs$edges$node$target$Commit instance) =>
    <String, dynamic>{
      'history': instance.history,
    };

QueryLastCommits$repository$refs$edges$node$target$Commit$history
    _$QueryLastCommits$repository$refs$edges$node$target$Commit$historyFromJson(
        Map<String, dynamic> json) {
  return QueryLastCommits$repository$refs$edges$node$target$Commit$history(
    edges: (json['edges'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges
                .fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic>
    _$QueryLastCommits$repository$refs$edges$node$target$Commit$historyToJson(
            QueryLastCommits$repository$refs$edges$node$target$Commit$history
                instance) =>
        <String, dynamic>{
          'edges': instance.edges,
        };

QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges
    _$QueryLastCommits$repository$refs$edges$node$target$Commit$history$edgesFromJson(
        Map<String, dynamic> json) {
  return QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges(
    node: json['node'] == null
        ? null
        : QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node
            .fromJson(json['node'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$QueryLastCommits$repository$refs$edges$node$target$Commit$history$edgesToJson(
            QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges
                instance) =>
        <String, dynamic>{
          'node': instance.node,
        };

QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node
    _$QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$nodeFromJson(
        Map<String, dynamic> json) {
  return QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node(
    committedDate: json['committedDate'] as String,
    commitUrl: json['commitUrl'] as String,
    messageHeadline: json['messageHeadline'] as String,
    messageBody: json['messageBody'] as String,
    author: json['author'] == null
        ? null
        : QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node$author
            .fromJson(json['author'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$nodeToJson(
            QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node
                instance) =>
        <String, dynamic>{
          'committedDate': instance.committedDate,
          'commitUrl': instance.commitUrl,
          'messageHeadline': instance.messageHeadline,
          'messageBody': instance.messageBody,
          'author': instance.author,
        };

QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node$author
    _$QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node$authorFromJson(
        Map<String, dynamic> json) {
  return QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node$author(
    name: json['name'] as String?,
    email: json['email'] as String?,
  );
}

Map<String, dynamic>
    _$QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node$authorToJson(
            QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node$author
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'email': instance.email,
        };
