import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:new_architecture/data/api/graphql_api.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            return Center(
              child: Text(result.exception.toString()),
            );
          } else if (result.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            var data = result.data;
            print(result.data);
            return Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Products",
                    
                  ),
                ),
                // Expanded(
                //   child: GridView.builder(
                //     gridDelegate:
                //         const SliverGridDelegateWithFixedCrossAxisCount(
                //             crossAxisCount: 2),
                //     itemCount: data.length,
                //     itemBuilder: (context, index) {
                //       var product = data[index]["node"];
                //       return Column(
                //         children: [
                //           SizedBox(
                //             height: 160,
                //             width: 180,
                //             child: Image.network(product["thumbnail"]["url"]),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(vertical: 8),
                //             child: Text(product["name"].toString()),
                //           )
                //         ],
                //       );
                //     },
                //   ),
                // )
              ],
            );
          }
        },
      ),
    );
  }
}
