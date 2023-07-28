import 'package:demopod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class AppEndpoint extends Endpoint {
  Future<List<Article>> getArticles(
    Session session, {
    String? keyword,
  }) async {
    return await Article.find(
      session,
      where: (t) =>
          keyword != null ? t.title.like('%$keyword%') : Constant(true),
    );
  }

  Future<bool> addArticle(Session session, Article article) async {
    await Article.insert(session, article);
    return true;
  }

  Future<bool> deleteArticle(Session session, int id) async {
    var result = await Article.delete(session, where: (t) => t.id.equals(id));
    return result == 0;
  }
}
