/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/api_endpoint.dart' as _i2;
import '../endpoints/article_endpoint.dart' as _i3;
import '../endpoints/example_endpoint.dart' as _i4;
import '../endpoints/weather_endpoint.dart' as _i5;
import 'package:articlecrud_server/src/generated/article.dart' as _i6;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'api': _i2.ApiEndpoint()
        ..initialize(
          server,
          'api',
          null,
        ),
      'article': _i3.ArticleEndpoint()
        ..initialize(
          server,
          'article',
          null,
        ),
      'example': _i4.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'weather': _i5.WeatherEndpoint()
        ..initialize(
          server,
          'weather',
          null,
        ),
    };
    connectors['api'] = _i1.EndpointConnector(
      name: 'api',
      endpoint: endpoints['api']!,
      methodConnectors: {
        'getDays': _i1.MethodConnector(
          name: 'getDays',
          params: {
            'dob': _i1.ParameterDescription(
              name: 'dob',
              type: _i1.getType<DateTime>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['api'] as _i2.ApiEndpoint).getDays(
            session,
            params['dob'],
          ),
        )
      },
    );
    connectors['article'] = _i1.EndpointConnector(
      name: 'article',
      endpoint: endpoints['article']!,
      methodConnectors: {
        'getArticles': _i1.MethodConnector(
          name: 'getArticles',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['article'] as _i3.ArticleEndpoint).getArticles(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addArticle': _i1.MethodConnector(
          name: 'addArticle',
          params: {
            'article': _i1.ParameterDescription(
              name: 'article',
              type: _i1.getType<_i6.Article>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['article'] as _i3.ArticleEndpoint).addArticle(
            session,
            params['article'],
          ),
        ),
        'updateArticle': _i1.MethodConnector(
          name: 'updateArticle',
          params: {
            'article': _i1.ParameterDescription(
              name: 'article',
              type: _i1.getType<_i6.Article>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['article'] as _i3.ArticleEndpoint).updateArticle(
            session,
            params['article'],
          ),
        ),
        'deleteArticle': _i1.MethodConnector(
          name: 'deleteArticle',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['article'] as _i3.ArticleEndpoint).deleteArticle(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i4.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['weather'] = _i1.EndpointConnector(
      name: 'weather',
      endpoint: endpoints['weather']!,
      methodConnectors: {
        'getWeatherInfo': _i1.MethodConnector(
          name: 'getWeatherInfo',
          params: {
            'cityId': _i1.ParameterDescription(
              name: 'cityId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['weather'] as _i5.WeatherEndpoint).getWeatherInfo(
            session,
            params['cityId'],
          ),
        )
      },
    );
  }
}
