import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:new_architecture/di/injection.config.dart';

final getIt = GetIt.instance;
 
@InjectableInit(  
  initializerName: 'init',
  preferRelativeImports: true, 
  asExtension: true, 
) 
Future <void> configureDependencies() => getIt.init();
