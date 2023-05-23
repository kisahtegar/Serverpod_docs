/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:articlecrud_client/src/protocol/article.dart' as _i3;
import 'package:articlecrud_client/src/protocol/weather_info.dart' as _i4;
import 'dart:io' as _i5;
import 'protocol.dart' as _i6;

class _EndpointApi extends _i1.EndpointRef {
  _EndpointApi(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'api';

  /// Get the days.
  _i2.Future<String> getDays(DateTime dob) => caller.callServerEndpoint<String>(
        'api',
        'getDays',
        {'dob': dob},
      );
}

class _EndpointArticle extends _i1.EndpointRef {
  _EndpointArticle(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'article';

  /// Fetch articles from DB
  _i2.Future<List<_i3.Article>> getArticles({String? keyword}) =>
      caller.callServerEndpoint<List<_i3.Article>>(
        'article',
        'getArticles',
        {'keyword': keyword},
      );

  _i2.Future<bool> addArticle(_i3.Article article) =>
      caller.callServerEndpoint<bool>(
        'article',
        'addArticle',
        {'article': article},
      );

  /// Update article
  _i2.Future<bool> updateArticle(_i3.Article article) =>
      caller.callServerEndpoint<bool>(
        'article',
        'updateArticle',
        {'article': article},
      );

  /// Delete article
  _i2.Future<bool> deleteArticle(int id) => caller.callServerEndpoint<bool>(
        'article',
        'deleteArticle',
        {'id': id},
      );
}

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointWeather extends _i1.EndpointRef {
  _EndpointWeather(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'weather';

  /// Fetch Weather Info
  _i2.Future<_i4.WeatherInfo> getWeatherInfo(int cityId) =>
      caller.callServerEndpoint<_i4.WeatherInfo>(
        'weather',
        'getWeatherInfo',
        {'cityId': cityId},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i5.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i6.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    api = _EndpointApi(this);
    article = _EndpointArticle(this);
    example = _EndpointExample(this);
    weather = _EndpointWeather(this);
  }

  late final _EndpointApi api;

  late final _EndpointArticle article;

  late final _EndpointExample example;

  late final _EndpointWeather weather;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'api': api,
        'article': article,
        'example': example,
        'weather': weather,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
