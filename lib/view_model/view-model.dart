import 'package:counter_app/view_model/base_state.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';

final viewModelProvider = StateNotifierProvider<ViewModel, BaseState>((ref) {
  return ViewModel(BaseState());
});

class ViewModel extends StateNotifier<BaseState> {
  ViewModel(BaseState state) : super(state);

  void updateText(final text) {
    state = TextState(text);
  }
}

class TextState extends BaseState {
  final String textValue;

  TextState(this.textValue);
}
