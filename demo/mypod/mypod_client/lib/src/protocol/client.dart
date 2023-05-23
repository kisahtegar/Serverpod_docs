/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:mypod_client/src/protocol/todo.dart' as _i3;
import 'dart:io' as _i4;
import 'protocol.dart' as _i5;

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );

  _i2.Future<Map<String, String>> goodbye(String name) =>
      caller.callServerEndpoint<Map<String, String>>(
        'example',
        'goodbye',
        {'name': name},
      );
}

class _EndpointTodo extends _i1.EndpointRef {
  _EndpointTodo(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'todo';

  /// Adding Todo to the database.
  _i2.Future<_i3.Todo> addTodo(_i3.Todo item) =>
      caller.callServerEndpoint<_i3.Todo>(
        'todo',
        'addTodo',
        {'item': item},
      );

  /// Load Todos.
  _i2.Future<List<_i3.Todo>> loadTodos() =>
      caller.callServerEndpoint<List<_i3.Todo>>(
        'todo',
        'loadTodos',
        {},
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
    example = _EndpointExample(this);
    todo = _EndpointTodo(this);
  }

  late final _EndpointExample example;

  late final _EndpointTodo todo;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'todo': todo,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
