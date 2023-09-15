import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'edeka_screen_state.dart';

class EdekaScreenCubit extends Cubit<EdekaScreenState> {
  EdekaScreenCubit() : super(EdekaScreenInitial());
  static EdekaScreenCubit get(context) => BlocProvider.of(context);

  bool isFavourite = true;
  double totalAmount = 0.0;

  void addToTotal(double amount) {
    totalAmount += amount;
    emit(TotalState());
  }

  void changeFavourite() {
    isFavourite = !isFavourite;
    emit(FavouriteState());
  }
}
