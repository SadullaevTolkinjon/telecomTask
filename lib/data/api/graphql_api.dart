import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:new_architecture/core/constants/api/api_consts.dart';
import 'package:new_architecture/data/preferences/token_preferences.dart';
import 'package:new_architecture/domain/repository/auth/auth_repository.dart';

class GraphqlService {
  static String readRepositories = """
  query MyProfile{
  get_user_profile{
    user_id
    updated_at
    subdivision_id
    position
    phone_number
    location_json
    last_name
    id
    first_name
    father_name
    created_at
    user{
        role
        car{
            id,
            number,
            color{
                name
                rgb
                hex
            }
            car_model{
                name
            }
        }
    }
  }
}
""";

  static final HttpLink httpLink = HttpLink(
    ApiConstants.graphqlLink,
  );
  static ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    ),
  );

  // final AuthLink authLink = AuthLink(
  //   getToken: () async => 'Bearer ${_authRepository.getToken()}',
  //   // OR
  //   // getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  // );
}
