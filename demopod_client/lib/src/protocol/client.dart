/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:demopod_client/src/protocol/article.dart' as _i3;
import 'dart:io' as _i4;
import 'protocol.dart' as _i5;

class _EndpointApp extends _i1.EndpointRef {
  _EndpointApp(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'app';

  _i2.Future<List<_i3.Article>> getArticles({String? keyword}) =>
      caller.callServerEndpoint<List<_i3.Article>>(
        'app',
        'getArticles',
        {'keyword': keyword},
      );

  _i2.Future<bool> addArticle(_i3.Article article) =>
      caller.callServerEndpoint<bool>(
        'app',
        'addArticle',
        {'article': article},
      );

  _i2.Future<bool> deleteArticle(int id) => caller.callServerEndpoint<bool>(
        'app',
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

  _i2.Future<_i3.Article> getArticle(int id) =>
      caller.callServerEndpoint<_i3.Article>(
        'example',
        'getArticle',
        {'id': id},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i4.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i5.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    app = _EndpointApp(this);
    example = _EndpointExample(this);
  }

  late final _EndpointApp app;

  late final _EndpointExample example;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'app': app,
        'example': example,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
