import 'package:flutter_appauth/flutter_appauth.dart';

class Config {
  static const AuthorizationServiceConfiguration serviceConfiguration =
      AuthorizationServiceConfiguration(
    authorizationEndpoint:
        'https://auth.utc.uz/realms/TelecomCarDev/protocol/openid-connect/auth',
    tokenEndpoint:
        'https://auth.utc.uz/realms/TelecomCarDev/protocol/openid-connect/token',
    endSessionEndpoint:
        'https://auth.utc.uz/realms/TelecomCarDev/protocol/openid-connect/logout',
  );
  static const String clientId = 'hasura';
  static const String redirectUrl = 'com.telecomcar.debug://login';
  static const String issuer = 'https://auth.utc.uz/realms/TelecomCarDev';
  static const String discoveryUrl =
      'https://auth.utc.uz/realms/TelecomCarDev/.well-known/openid-configuration';
  static const String postLogoutRedirectUrl =
      'https://auth.utc.uz/realms/TelecomCarDev/protocol/openid-connect/token';
}
