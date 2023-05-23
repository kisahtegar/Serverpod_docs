import 'package:mypod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

// This is an Todo endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.Todo` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class TodoEndpoint extends Endpoint {
  // You create methods in your endpoint which are accessible from the client by
  // creating a public method with `Session` as its first parameter. Supported
  // parameter types are `bool`, `int`, `double`, `String`, `DateTime`, and any
  // objects that are generated from your `protocol` directory. The methods
  // should return a typed future; the same types as for the parameters are
  // supported. The `session` object provides access to the database, logging,
  // passwords, and information about the request being made to the server.

  /// Adding Todo to the database.
  Future<Todo> addTodo(Session session, Todo item) async {
    await Todo.insert(session, item);
    return item;
  }

  /// Load Todos.
  Future<List<Todo>> loadTodos(Session session) async =>
      await Todo.find(session);
}
