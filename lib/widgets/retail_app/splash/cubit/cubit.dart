import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retail_app/models/retail_app/splash_model.dart';
import 'package:retail_app/shared/components/constants.dart';
import 'package:retail_app/shared/network/end_points.dart';
import 'package:retail_app/shared/network/network/dio_helper.dart';
import 'package:retail_app/widgets/retail_app/splash/cubit/states.dart';

class SplashCubit extends Cubit<SplashStates> {
  SplashCubit() : super(SplashInitialState());
  static SplashCubit get(context) => BlocProvider.of(context);

  SplashModel? splashModel;

  void getSplashData() {
      // print(splashModel?.data?.name.toString());

    emit(SplashLoadingState());
    DioHelper.getData(
      url: SPLASH,
      xApiKey:
          'PMAK-63e0dc4ab9b96b04d4c01780-e6982a414f5fe6418f69ca228297245821',
    ).then((value) {
      splashModel = SplashModel.fromJson(value.data);
      // printFullText(splashModel);
      print(splashModel?.data?.name.toString());
      print(splashModel?.data?.logo.toString());
      print(splashModel?.data?.isWelcomeScreenEnabled);
    }).catchError((error) {
      emit(SplashErrorState());
      print(error);
    });
  }
}
