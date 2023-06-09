import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:new_architecture/core/constants/route_name/navigator_const.dart';
import 'package:new_architecture/core/utils/routers/routers.dart';
import 'package:new_architecture/data/api/graphql_api.dart';
import 'package:new_architecture/di/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: GraphqlService.client,
      child: MaterialApp(
        title: 'Test app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: OngenerateRoutes.instance.routeGenerator,
        initialRoute: NavigatorConst.home,
      ),
    );
  }
}
