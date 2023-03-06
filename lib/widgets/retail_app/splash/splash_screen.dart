import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retail_app/layout/retail_app/retail_app_layout.dart';
import 'package:retail_app/shared/components/constants.dart';
import 'package:retail_app/widgets/retail_app/splash/cubit/cubit.dart';
import 'package:retail_app/widgets/retail_app/splash/cubit/states.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => RetailAppLayout(),
          ));
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return BlocConsumer<SplashCubit,SplashStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = SplashCubit.get(context);
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  // alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // cubit.splashModel.data.logo,
                      Image.network(
                        // '${cubit.splashModel?.data?.logo.toString()}',
                        // '${SplashCubit.get(context).splashModel?.data?.logo.toString()}',
                        'https://upload.wikimedia.org/wikipedia/commons/e/e8/Tesla_logo.png',
                        height: 60,
                        width: 60,
                      ),
                      Text(
                        '${cubit.splashModel?.data?.name.toString()}',
                        
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: defaultColor,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
