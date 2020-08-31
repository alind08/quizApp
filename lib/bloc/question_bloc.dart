import 'package:bloc/bloc.dart';
import '../events/question_event.dart';
import '../states/question_state.dart';

class QuestionBloc extends Bloc<QuestionOrderEvent, QuestionState> {
  QuestionBloc():super(null) ;

  void onNextPress() {
    add(NextQuestionEvent());
  }

  void onDecrement() {
    add(PreviousQuestionEvent());
  }

  QuestionState get initialState => Question1Loaded();

  @override
  Stream<QuestionState> mapEventToState(QuestionOrderEvent event) async* {
    //final _currentState = currentState;
    if (event is NextQuestionEvent && state is Question2Loaded) {
      yield Question2Loaded();
    } else if (event is PreviousQuestionEvent) {
      yield Question2Loaded();
    }
  }
}

// what we cant do with a doubt is there were things