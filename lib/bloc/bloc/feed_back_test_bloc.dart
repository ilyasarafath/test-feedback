import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'feed_back_test_event.dart';
part 'feed_back_test_state.dart';

class FeedBackTestBloc extends Bloc<FeedBackTestEvent, FeedBackTestState> {
  FeedBackTestBloc() : super(FeedBackTestInitial()) {
    on<FeedBackTestEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
