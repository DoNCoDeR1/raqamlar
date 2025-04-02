import 'package:get_it/get_it.dart';

import '../../features/draw/data/repo/repo_impl.dart';
import '../../features/draw/domain/repository/draw_repo.dart';


GetIt ls = GetIt.instance;

Future<void> setupDI() async {
  ls.registerSingleton<DrawRepo>(DrawRepoImpl());
}
