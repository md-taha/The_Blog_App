// import 'package:get_it/get_it.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:the_blog_app/core/secrets/app_secrets.dart';

// final serviceLocator = GetIt.instance;

// Future<void> initDependencies () async {
//   final supabase = await Supabase.initialize(
//     url: AppSecrets.supabaseUrl,
//     anonKey: AppSecrets.supabaseAnonKey,
//   );
// }


import 'package:the_blog_app/features/blog/data/datasources/blog_local_data_source.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:the_blog_app/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:the_blog_app/core/network/connection_checker.dart';
import 'package:the_blog_app/core/secrets/app_secrets.dart';
import 'package:the_blog_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:the_blog_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:the_blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:the_blog_app/features/auth/domain/usecases/current_user.dart';
import 'package:the_blog_app/features/auth/domain/usecases/user_login.dart';
import 'package:the_blog_app/features/auth/domain/usecases/user_sign_up.dart';
import 'package:the_blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:the_blog_app/features/blog/data/datasources/blog_remote_data_sources.dart';
import 'package:the_blog_app/features/blog/data/repositories/blog_repository_impl.dart';
import 'package:the_blog_app/features/blog/domain/repositories/blog_repository.dart';
import 'package:the_blog_app/features/blog/domain/usecases/get_all_blogs.dart';
import 'package:the_blog_app/features/blog/domain/usecases/upload_blog.dart';
import 'package:the_blog_app/features/blog/presentation/bloc/blog_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'init_dependencies_main.dart';