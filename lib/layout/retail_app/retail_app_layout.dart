import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retail_app/layout/retail_app/cubit/cubit.dart';
import 'package:retail_app/layout/retail_app/cubit/states.dart';

class RetailAppLayout extends StatelessWidget {
  const RetailAppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RetailCubit, RetailHomeStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = RetailCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text('home'),
          ),
          body: cubit.bottomScreen[cubit.currentIndex],
          bottomNavigationBar: Container(
            padding: EdgeInsets.all(20),
            height: 100,
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                onTap: (index) {
                  cubit.changeBottom(index);
                },
                currentIndex: cubit.currentIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.apps), label: 'Cart'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite), label: 'Orders'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: 'More'),
                ]),
          ),
        );
      },
    );
  }
}
