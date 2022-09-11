import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorCubit extends Cubit<int> {
  CalculatorCubit() : super(0);

  void sayaciArttir() {
    int sayac = state + 1;
    emit(sayac);
  }

  void sayaciAzalt(int deger) {
    int sayac = state - deger;
    emit(sayac);
  }
}
