import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'get_commits_history.graphql.g.dart';

@JsonSerializable()
class VariablesQueryGetLastCommits extends JsonSerializable {
  VariablesQueryGetLastCommits(
      {required this.owner,
      required this.name,
      required this.branch,
      required this.first});

  @override
  factory VariablesQueryGetLastCommits.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryGetLastCommitsFromJson(json);

  final String owner;

  final String name;

  final String branch;

  final int first;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryGetLastCommitsToJson(this);
}

@JsonSerializable()
class QueryGetLastCommits extends JsonSerializable {
  QueryGetLastCommits({this.repository});

  @override
  factory QueryGetLastCommits.fromJson(Map<String, dynamic> json) =>
      _$QueryGetLastCommitsFromJson(json);

  final QueryGetLastCommits$repository? repository;

  @override
  Map<String, dynamic> toJson() => _$QueryGetLastCommitsToJson(this);
}

const QUERY_GET_LAST_COMMITS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetLastCommits'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'owner')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'branch')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'repository'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'owner'),
                  value: VariableNode(name: NameNode(value: 'owner'))),
              ArgumentNode(
                  name: NameNode(value: 'name'),
                  value: VariableNode(name: NameNode(value: 'name')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'ref'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'qualifiedName'),
                        value: VariableNode(name: NameNode(value: 'branch')))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'target'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          InlineFragmentNode(
                              typeCondition: TypeConditionNode(
                                  on: NamedTypeNode(
                                      name: NameNode(value: 'Commit'),
                                      isNonNull: false)),
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'history'),
                                    alias: null,
                                    arguments: [
                                      ArgumentNode(
                                          name: NameNode(value: 'first'),
                                          value: VariableNode(
                                              name: NameNode(value: 'first')))
                                    ],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'pageInfo'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(
                                                    value: 'hasNextPage'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null),
                                            FieldNode(
                                                name: NameNode(
                                                    value: 'endCursor'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null),
                                            FieldNode(
                                                name: NameNode(
                                                    value: '__typename'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ])),
                                      FieldNode(
                                          name: NameNode(value: 'edges'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'node'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                    selections: [
                                                      FieldNode(
                                                          name: NameNode(
                                                              value:
                                                                  'messageHeadline'),
                                                          alias: null,
                                                          arguments: [],
                                                          directives: [],
                                                          selectionSet: null),
                                                      FieldNode(
                                                          name: NameNode(
                                                              value: 'author'),
                                                          alias: null,
                                                          arguments: [],
                                                          directives: [],
                                                          selectionSet:
                                                              SelectionSetNode(
                                                                  selections: [
                                                                FieldNode(
                                                                    name: NameNode(
                                                                        value:
                                                                            'user'),
                                                                    alias: null,
                                                                    arguments: [],
                                                                    directives: [],
                                                                    selectionSet:
                                                                        SelectionSetNode(
                                                                            selections: [
                                                                          FieldNode(
                                                                              name: NameNode(value: 'login'),
                                                                              alias: null,
                                                                              arguments: [],
                                                                              directives: [],
                                                                              selectionSet: null),
                                                                          FieldNode(
                                                                              name: NameNode(value: '__typename'),
                                                                              alias: null,
                                                                              arguments: [],
                                                                              directives: [],
                                                                              selectionSet: null)
                                                                        ])),
                                                                FieldNode(
                                                                    name: NameNode(
                                                                        value:
                                                                            '__typename'),
                                                                    alias: null,
                                                                    arguments: [],
                                                                    directives: [],
                                                                    selectionSet:
                                                                        null)
                                                              ])),
                                                      FieldNode(
                                                          name: NameNode(
                                                              value:
                                                                  'committedDate'),
                                                          alias: null,
                                                          arguments: [],
                                                          directives: [],
                                                          selectionSet: null),
                                                      FieldNode(
                                                          name: NameNode(
                                                              value:
                                                                  '__typename'),
                                                          alias: null,
                                                          arguments: [],
                                                          directives: [],
                                                          selectionSet: null)
                                                    ])),
                                            FieldNode(
                                                name: NameNode(
                                                    value: '__typename'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ])),
                                      FieldNode(
                                          name: NameNode(value: '__typename'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ])),
                                FieldNode(
                                    name: NameNode(value: '__typename'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ])),
                          FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ])),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);

class GQLOptionsQueryGetLastCommits extends graphql.QueryOptions {
  GQLOptionsQueryGetLastCommits(
      {String? operationName,
      required VariablesQueryGetLastCommits variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_LAST_COMMITS);
}

class GQLWatchOptionsQueryGetLastCommits extends graphql.WatchQueryOptions {
  GQLWatchOptionsQueryGetLastCommits(
      {String? operationName,
      required VariablesQueryGetLastCommits variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_LAST_COMMITS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults);
}

class GQLFetchMoreOptionsQueryGetLastCommits extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryGetLastCommits(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQueryGetLastCommits variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_GET_LAST_COMMITS);
}

extension GQLExtensionQueryGetLastCommits on graphql.GraphQLClient {
  Future<graphql.QueryResult> queryGetLastCommits(
          GQLOptionsQueryGetLastCommits options) async =>
      await this.query(options);
  graphql.ObservableQuery watchQueryGetLastCommits(
          GQLWatchOptionsQueryGetLastCommits options) =>
      this.watchQuery(options);
}

extension GQLResultExtensionQueryGetLastCommits on graphql.QueryResult {
  QueryGetLastCommits? get parsedDataQueryGetLastCommits {
    final data = this.data;
    return data == null ? null : QueryGetLastCommits.fromJson(data);
  }
}

@JsonSerializable()
class QueryGetLastCommits$repository extends JsonSerializable {
  QueryGetLastCommits$repository({this.ref});

  @override
  factory QueryGetLastCommits$repository.fromJson(Map<String, dynamic> json) =>
      _$QueryGetLastCommits$repositoryFromJson(json);

  final QueryGetLastCommits$repository$ref? ref;

  @override
  Map<String, dynamic> toJson() => _$QueryGetLastCommits$repositoryToJson(this);
}

@JsonSerializable()
class QueryGetLastCommits$repository$ref extends JsonSerializable {
  QueryGetLastCommits$repository$ref({this.target});

  @override
  factory QueryGetLastCommits$repository$ref.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetLastCommits$repository$refFromJson(json);

  final QueryGetLastCommits$repository$ref$target? target;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetLastCommits$repository$refToJson(this);
}

@JsonSerializable()
class QueryGetLastCommits$repository$ref$target extends JsonSerializable {
  QueryGetLastCommits$repository$ref$target();

  @override
  factory QueryGetLastCommits$repository$ref$target.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Commit":
        return QueryGetLastCommits$repository$ref$target$Commit.fromJson(json);
      default:
        return _$QueryGetLastCommits$repository$ref$targetFromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetLastCommits$repository$ref$targetToJson(this);
}

@JsonSerializable()
class QueryGetLastCommits$repository$ref$target$Commit
    extends QueryGetLastCommits$repository$ref$target {
  QueryGetLastCommits$repository$ref$target$Commit({required this.history})
      : super();

  @override
  factory QueryGetLastCommits$repository$ref$target$Commit.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetLastCommits$repository$ref$target$CommitFromJson(json);

  final QueryGetLastCommits$repository$ref$target$Commit$history history;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetLastCommits$repository$ref$target$CommitToJson(this);
}

@JsonSerializable()
class QueryGetLastCommits$repository$ref$target$Commit$history
    extends JsonSerializable {
  QueryGetLastCommits$repository$ref$target$Commit$history(
      {required this.pageInfo, this.edges});

  @override
  factory QueryGetLastCommits$repository$ref$target$Commit$history.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetLastCommits$repository$ref$target$Commit$historyFromJson(json);

  final QueryGetLastCommits$repository$ref$target$Commit$history$pageInfo
      pageInfo;

  final List<QueryGetLastCommits$repository$ref$target$Commit$history$edges?>?
      edges;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetLastCommits$repository$ref$target$Commit$historyToJson(this);
}

@JsonSerializable()
class QueryGetLastCommits$repository$ref$target$Commit$history$pageInfo
    extends JsonSerializable {
  QueryGetLastCommits$repository$ref$target$Commit$history$pageInfo(
      {required this.hasNextPage, this.endCursor});

  @override
  factory QueryGetLastCommits$repository$ref$target$Commit$history$pageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetLastCommits$repository$ref$target$Commit$history$pageInfoFromJson(
          json);

  final bool hasNextPage;

  final String? endCursor;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetLastCommits$repository$ref$target$Commit$history$pageInfoToJson(
          this);
}

@JsonSerializable()
class QueryGetLastCommits$repository$ref$target$Commit$history$edges
    extends JsonSerializable {
  QueryGetLastCommits$repository$ref$target$Commit$history$edges({this.node});

  @override
  factory QueryGetLastCommits$repository$ref$target$Commit$history$edges.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetLastCommits$repository$ref$target$Commit$history$edgesFromJson(
          json);

  final QueryGetLastCommits$repository$ref$target$Commit$history$edges$node?
      node;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetLastCommits$repository$ref$target$Commit$history$edgesToJson(
          this);
}

@JsonSerializable()
class QueryGetLastCommits$repository$ref$target$Commit$history$edges$node
    extends JsonSerializable {
  QueryGetLastCommits$repository$ref$target$Commit$history$edges$node(
      {required this.messageHeadline,
      this.author,
      required this.committedDate});

  @override
  factory QueryGetLastCommits$repository$ref$target$Commit$history$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetLastCommits$repository$ref$target$Commit$history$edges$nodeFromJson(
          json);

  final String messageHeadline;

  final QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author?
      author;

  final String committedDate;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetLastCommits$repository$ref$target$Commit$history$edges$nodeToJson(
          this);
}

@JsonSerializable()
class QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author
    extends JsonSerializable {
  QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author(
      {this.user});

  @override
  factory QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$authorFromJson(
          json);

  final QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author$user?
      user;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$authorToJson(
          this);
}

@JsonSerializable()
class QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author$user
    extends JsonSerializable {
  QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author$user(
      {required this.login});

  @override
  factory QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author$user.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author$userFromJson(
          json);

  final String login;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryGetLastCommits$repository$ref$target$Commit$history$edges$node$author$userToJson(
          this);
}
