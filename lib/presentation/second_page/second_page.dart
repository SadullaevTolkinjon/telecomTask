import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:new_architecture/data/api/graphql_api.dart';
import 'package:new_architecture/presentation/widgets/error_page.dart';
import 'package:new_architecture/presentation/widgets/progress_indicator.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fetch graphql screen"),elevation: 0,
      automaticallyImplyLeading: true,),
      body: Query(
        options: QueryOptions(
          document: gql(GraphqlService.readRepositories),
        ),
        builder: (
          QueryResult result, {
          VoidCallback? refetch,
          FetchMore? fetchMore,
        }) {
          if (result.hasException) {
            return ShowError(
              error: result.exception.toString(),
            );
          } else if (result.isLoading) {
            return const LoaderWidget();
          } else {
            var data = result.data;
          
            return Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "SuccessFully fetch data",
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
