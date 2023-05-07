import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:injectable/injectable.dart';
import 'package:new_architecture/core/constants/config/config_const.dart';
import 'package:new_architecture/data/preferences/token_preferences.dart';

@Injectable()
class AuthRepository {
  AuthRepository(this._token);
  final TokenPreference _token;
  final FlutterAppAuth _appAuth = const FlutterAppAuth();
  Future login() async {
    final AuthorizationResponse? authorizationResponse =
        await _appAuth.authorize(
      AuthorizationRequest(
        Config.clientId,
        Config.redirectUrl,
        issuer: Config.issuer,
        serviceConfiguration: Config.serviceConfiguration,
        scopes: ['openid', 'email', 'profile'],
      ),
    );
    _processAuthResponse(authorizationResponse!);
  }

  void _processAuthResponse(AuthorizationResponse response) async {
    if (response.authorizationCode == null) {
      throw Exception();
    } else {
      await _token.set(response.authorizationCode!);
    }
  }

  getToken() async {
    var token = _token.get();
    return token;
  }
}
