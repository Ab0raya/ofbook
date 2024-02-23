import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ofbook/constants/colors.dart';
import 'package:ofbook/core/utils/app_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ofbook/core/utils/service_locator.dart';
import 'package:ofbook/features/home_feature/data/repos/home_repo_impl.dart';
import 'package:ofbook/features/home_feature/presentation/manager/featured_list_cubit/featured_list_cubit.dart';

import 'features/home_feature/presentation/manager/newest_list_cubit/newest_list_cubit.dart';
void main() {
  setup();
  runApp(const Ofbook());
}

class Ofbook extends StatelessWidget {
  const Ofbook({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>FeaturedListCubit(getIt.get<HomeRepoImpl>(),),),
        BlocProvider(create: (context)=>NewestListCubit(getIt.get<HomeRepoImpl>(),),),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:GoogleFonts.montserratAlternatesTextTheme(ThemeData.dark().textTheme)
        ),
      ),
    );
  }
}
