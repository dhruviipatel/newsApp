import 'package:newsapp/data/repositories/auth_repo.dart';
import 'package:newsapp/data/repositories/post_repo.dart';
import 'package:newsapp/data/repositories/tag_repo.dart';

class Repository {
  final AuthRepo authRepo;
  final TagsRepo tagsRepo;
  final PostRepo postRepo;

  Repository({
    required this.authRepo,
    required this.postRepo,
    required this.tagsRepo,
  });
}
