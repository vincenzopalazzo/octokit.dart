/// The implementation contains the implementation of the
/// graphql client
///
/// author: https://github.com/vincenzopalazzo
import 'package:graphql/client.dart';

class GithubClient {
  /// The instance of GraphQLClient
  late GraphQLClient _client;

  GithubClient(
      {required String token,
      String endPoint = "https://api.github.com/graphql",
      GraphQLCache? cache}) {
    var link = HttpLink(endPoint, defaultHeaders: {
      'Authorization': 'bearer $token',
    });
    _client = GraphQLClient(link: link, cache: cache ?? GraphQLCache());
  }

  /// Make a raw query by passing the query definition inside a query
  Future<Map<String, dynamic>> rawQuery(
      {required String queryDefinition,
      Map<String, dynamic> variable = const {},
      String? queryName}) async {
    var query =
        QueryOptions(document: gql(queryDefinition), variables: variable);
    var response = await _client.query(query);
    if (response.hasException) {
      throw Exception(response.exception);
    }
    if (queryName != null) {
      return response.data![queryName]!;
    }
    return response.data!;
  }

  Future<Map<String, dynamic>> rawMutation(
      {required String mutationDefinition,
      Map<String, dynamic> variable = const {},
      String? mutationName}) async {
    var mutation =
        MutationOptions(document: gql(mutationDefinition), variables: variable);
    var response = await _client.mutate(mutation);
    // TODO test the option of filtering by mutation name
    if (mutationName != null) {
      return response.data![mutationName]!;
    }
    return response.data!;
  }

  /// Function that give you the possibility to run a query
  /// and get the response decoded directly in the Object
  /// from JSON.
  Future<Map<String, dynamic>> query({required QueryOptions query}) async {
    var response = await _client.query(query);
    if (response.hasException) {
      throw Exception(response.exception);
    }
    return response.data!;
  }

  /// Function that give you the possibility to run a mutation
  /// get the response in the Object deserialized from
  /// JSON.
  Future<Map<String, dynamic>> mutate(
      {required MutationOptions mutation}) async {
    var response = await _client.mutate(mutation);
    if (response.hasException) {
      throw Exception(response.exception);
    }
    return response.data!;
  }
}
