import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retail_app/layout/retail_app/cubit/states.dart';
import 'package:retail_app/models/home_model.dart';
import 'package:retail_app/widgets/retail_app/cart/cart_screen.dart';
import 'package:retail_app/widgets/retail_app/home/home_screen.dart';
import 'package:retail_app/widgets/retail_app/orders/orders_screen.dart';
import 'package:retail_app/widgets/retail_app/settings/more_screen.dart';

class RetailCubit extends Cubit<RetailHomeStates> {
  RetailCubit() : super(RetailInitialState());

  static RetailCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> bottomScreen = [
    HomeScreen(),
    CartScreen(),
    OrderScreen(),
    MoreScreen(),
  ];
  List<String> titles = [
    'Home',
    'Cart',
    'Orders',
    'More',
  ];
  void changeBottom(int index) {
    currentIndex = index;
    emit(RetailChangeBottomNavState());
  }

  HomeModel? homeModel;
}
