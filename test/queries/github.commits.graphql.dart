import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'github.commits.graphql.g.dart';

@JsonSerializable()
class VariablesQueryLastCommits extends JsonSerializable {
  VariablesQueryLastCommits({required this.repo, required this.owner});

  @override
  factory VariablesQueryLastCommits.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryLastCommitsFromJson(json);

  final String repo;

  final String owner;

  @override
  Map<String, dynamic> toJson() => _$VariablesQueryLastCommitsToJson(this);
}

@JsonSerializable()
class QueryLastCommits extends JsonSerializable {
  QueryLastCommits({this.repository});

  @override
  factory QueryLastCommits.fromJson(Map<String, dynamic> json) =>
      _$QueryLastCommitsFromJson(json);

  final QueryLastCommits$repository? repository;

  @override
  Map<String, dynamic> toJson() => _$QueryLastCommitsToJson(this);
}

const QUERY_LAST_COMMITS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LastCommits'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'repo')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'owner')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
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
                  name: NameNode(value: 'name'),
                  value: VariableNode(name: NameNode(value: 'repo'))),
              ArgumentNode(
                  name: NameNode(value: 'owner'),
                  value: VariableNode(name: NameNode(value: 'owner')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'refs'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                        name: NameNode(value: 'refPrefix'),
                        value: StringValueNode(
                            value: 'refs/heads/', isBlock: false)),
                    ArgumentNode(
                        name: NameNode(value: 'orderBy'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'direction'),
                              value:
                                  EnumValueNode(name: NameNode(value: 'DESC'))),
                          ObjectFieldNode(
                              name: NameNode(value: 'field'),
                              value: EnumValueNode(
                                  name: NameNode(value: 'TAG_COMMIT_DATE')))
                        ])),
                    ArgumentNode(
                        name: NameNode(value: 'last'),
                        value: IntValueNode(value: '100'))
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'edges'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'node'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                InlineFragmentNode(
                                    typeCondition: TypeConditionNode(
                                        on: NamedTypeNode(
                                            name: NameNode(value: 'Ref'),
                                            isNonNull: false)),
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'name'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'target'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            InlineFragmentNode(
                                                typeCondition:
                                                    TypeConditionNode(
                                                        on: NamedTypeNode(
                                                            name: NameNode(
                                                                value:
                                                                    'Commit'),
                                                            isNonNull: false)),
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                    selections: [
                                                      FieldNode(
                                                          name: NameNode(
                                                              value: 'history'),
                                                          alias: null,
                                                          arguments: [
                                                            ArgumentNode(
                                                                name: NameNode(
                                                                    value:
                                                                        'first'),
                                                                value:
                                                                    IntValueNode(
                                                                        value:
                                                                            '2'))
                                                          ],
                                                          directives: [],
                                                          selectionSet:
                                                              SelectionSetNode(
                                                                  selections: [
                                                                FieldNode(
                                                                    name: NameNode(
                                                                        value:
                                                                            'edges'),
                                                                    alias: null,
                                                                    arguments: [],
                                                                    directives: [],
                                                                    selectionSet:
                                                                        SelectionSetNode(
                                                                            selections: [
                                                                          FieldNode(
                                                                              name: NameNode(value: 'node'),
                                                                              alias: null,
                                                                              arguments: [],
                                                                              directives: [],
                                                                              selectionSet: SelectionSetNode(selections: [
                                                                                InlineFragmentNode(
                                                                                    typeCondition: TypeConditionNode(on: NamedTypeNode(name: NameNode(value: 'Commit'), isNonNull: false)),
                                                                                    directives: [],
                                                                                    selectionSet: SelectionSetNode(selections: [
                                                                                      FieldNode(name: NameNode(value: 'committedDate'), alias: null, arguments: [], directives: [], selectionSet: null),
                                                                                      FieldNode(name: NameNode(value: 'commitUrl'), alias: null, arguments: [], directives: [], selectionSet: null),
                                                                                      FieldNode(name: NameNode(value: 'messageHeadline'), alias: null, arguments: [], directives: [], selectionSet: null),
                                                                                      FieldNode(name: NameNode(value: 'messageBody'), alias: null, arguments: [], directives: [], selectionSet: null),
                                                                                      FieldNode(
                                                                                          name: NameNode(value: 'author'),
                                                                                          alias: null,
                                                                                          arguments: [],
                                                                                          directives: [],
                                                                                          selectionSet: SelectionSetNode(selections: [
                                                                                            FieldNode(name: NameNode(value: 'name'), alias: null, arguments: [], directives: [], selectionSet: null),
                                                                                            FieldNode(name: NameNode(value: 'email'), alias: null, arguments: [], directives: [], selectionSet: null),
                                                                                            FieldNode(name: NameNode(value: '__typename'), alias: null, arguments: [], directives: [], selectionSet: null)
                                                                                          ])),
                                                                                      FieldNode(name: NameNode(value: '__typename'), alias: null, arguments: [], directives: [], selectionSet: null)
                                                                                    ])),
                                                                                FieldNode(name: NameNode(value: '__typename'), alias: null, arguments: [], directives: [], selectionSet: null)
                                                                              ])),
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

class GQLOptionsQueryLastCommits
    extends graphql.QueryOptions<QueryLastCommits> {
  GQLOptionsQueryLastCommits(
      {String? operationName,
      required VariablesQueryLastCommits variables,
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
            document: QUERY_LAST_COMMITS,
            parserFn: (data) => QueryLastCommits.fromJson(data));
}

class GQLWatchOptionsQueryLastCommits
    extends graphql.WatchQueryOptions<QueryLastCommits> {
  GQLWatchOptionsQueryLastCommits(
      {String? operationName,
      required VariablesQueryLastCommits variables,
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
            document: QUERY_LAST_COMMITS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: (data) => QueryLastCommits.fromJson(data));
}

class GQLFetchMoreOptionsQueryLastCommits extends graphql.FetchMoreOptions {
  GQLFetchMoreOptionsQueryLastCommits(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQueryLastCommits variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_LAST_COMMITS);
}

extension GQLExtensionQueryLastCommits on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryLastCommits>> queryLastCommits(
          GQLOptionsQueryLastCommits options) async =>
      await this.query(options);
  graphql.ObservableQuery<QueryLastCommits> watchQueryLastCommits(
          GQLWatchOptionsQueryLastCommits options) =>
      this.watchQuery(options);
}

@JsonSerializable()
class QueryLastCommits$repository extends JsonSerializable {
  QueryLastCommits$repository({this.refs});

  @override
  factory QueryLastCommits$repository.fromJson(Map<String, dynamic> json) =>
      _$QueryLastCommits$repositoryFromJson(json);

  final QueryLastCommits$repository$refs? refs;

  @override
  Map<String, dynamic> toJson() => _$QueryLastCommits$repositoryToJson(this);
}

@JsonSerializable()
class QueryLastCommits$repository$refs extends JsonSerializable {
  QueryLastCommits$repository$refs({this.edges});

  @override
  factory QueryLastCommits$repository$refs.fromJson(
          Map<String, dynamic> json) =>
      _$QueryLastCommits$repository$refsFromJson(json);

  final List<QueryLastCommits$repository$refs$edges?>? edges;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryLastCommits$repository$refsToJson(this);
}

@JsonSerializable()
class QueryLastCommits$repository$refs$edges extends JsonSerializable {
  QueryLastCommits$repository$refs$edges({this.node});

  @override
  factory QueryLastCommits$repository$refs$edges.fromJson(
          Map<String, dynamic> json) =>
      _$QueryLastCommits$repository$refs$edgesFromJson(json);

  final QueryLastCommits$repository$refs$edges$node? node;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryLastCommits$repository$refs$edgesToJson(this);
}

@JsonSerializable()
class QueryLastCommits$repository$refs$edges$node extends JsonSerializable {
  QueryLastCommits$repository$refs$edges$node(
      {required this.name, this.target});

  @override
  factory QueryLastCommits$repository$refs$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$QueryLastCommits$repository$refs$edges$nodeFromJson(json);

  final String name;

  final QueryLastCommits$repository$refs$edges$node$target? target;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryLastCommits$repository$refs$edges$nodeToJson(this);
}

@JsonSerializable()
class QueryLastCommits$repository$refs$edges$node$target
    extends JsonSerializable {
  QueryLastCommits$repository$refs$edges$node$target();

  @override
  factory QueryLastCommits$repository$refs$edges$node$target.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Commit":
        return QueryLastCommits$repository$refs$edges$node$target$Commit
            .fromJson(json);
      default:
        return _$QueryLastCommits$repository$refs$edges$node$targetFromJson(
            json);
    }
  }

  @override
  Map<String, dynamic> toJson() =>
      _$QueryLastCommits$repository$refs$edges$node$targetToJson(this);
}

@JsonSerializable()
class QueryLastCommits$repository$refs$edges$node$target$Commit
    extends QueryLastCommits$repository$refs$edges$node$target {
  QueryLastCommits$repository$refs$edges$node$target$Commit(
      {required this.history})
      : super();

  @override
  factory QueryLastCommits$repository$refs$edges$node$target$Commit.fromJson(
          Map<String, dynamic> json) =>
      _$QueryLastCommits$repository$refs$edges$node$target$CommitFromJson(json);

  final QueryLastCommits$repository$refs$edges$node$target$Commit$history
      history;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryLastCommits$repository$refs$edges$node$target$CommitToJson(this);
}

@JsonSerializable()
class QueryLastCommits$repository$refs$edges$node$target$Commit$history
    extends JsonSerializable {
  QueryLastCommits$repository$refs$edges$node$target$Commit$history(
      {this.edges});

  @override
  factory QueryLastCommits$repository$refs$edges$node$target$Commit$history.fromJson(
          Map<String, dynamic> json) =>
      _$QueryLastCommits$repository$refs$edges$node$target$Commit$historyFromJson(
          json);

  final List<
          QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges?>?
      edges;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryLastCommits$repository$refs$edges$node$target$Commit$historyToJson(
          this);
}

@JsonSerializable()
class QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges
    extends JsonSerializable {
  QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges(
      {this.node});

  @override
  factory QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges.fromJson(
          Map<String, dynamic> json) =>
      _$QueryLastCommits$repository$refs$edges$node$target$Commit$history$edgesFromJson(
          json);

  final QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node?
      node;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryLastCommits$repository$refs$edges$node$target$Commit$history$edgesToJson(
          this);
}

@JsonSerializable()
class QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node
    extends JsonSerializable {
  QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node(
      {required this.committedDate,
      required this.commitUrl,
      required this.messageHeadline,
      required this.messageBody,
      this.author});

  @override
  factory QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node.fromJson(
          Map<String, dynamic> json) =>
      _$QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$nodeFromJson(
          json);

  final String committedDate;

  final String commitUrl;

  final String messageHeadline;

  final String messageBody;

  final QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node$author?
      author;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$nodeToJson(
          this);
}

@JsonSerializable()
class QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node$author
    extends JsonSerializable {
  QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node$author(
      {this.name, this.email});

  @override
  factory QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node$author.fromJson(
          Map<String, dynamic> json) =>
      _$QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node$authorFromJson(
          json);

  final String? name;

  final String? email;

  @override
  Map<String, dynamic> toJson() =>
      _$QueryLastCommits$repository$refs$edges$node$target$Commit$history$edges$node$authorToJson(
          this);
}
