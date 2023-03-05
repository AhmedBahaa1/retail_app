import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retail_app/layout/retail_app/cubit/cubit.dart';
import 'package:retail_app/layout/retail_app/cubit/states.dart';
import 'package:retail_app/layout/retail_app/retail_app_layout.dart';
import 'shared/bloc_observer.dart';
import 'shared/network/network/cashe_helper.dart';
import 'shared/network/network/dio_helper.dart';
import 'widgets/retail_app/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CasheHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => RetailCubit(),
          )
        ],
        child: BlocConsumer<RetailCubit, RetailHomeStates>(
          listener: (context, state) {},
          builder: (context, state) => MaterialApp(
            title: 'Retail App',
            theme: ThemeData.light(),
            home: SplashScreen(),
            debugShowCheckedModeBanner: false,
          ),
        ));
  }
}
