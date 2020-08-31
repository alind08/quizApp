import 'package:flutter/cupertino.dart';

@immutable
abstract class QuestionState{
  const QuestionState();
}

class QuestionLoading extends QuestionState {
  const QuestionLoading();
}

class Question1Loaded extends QuestionState{
  const Question1Loaded();
}

class Question2Loaded extends QuestionState{
  const Question2Loaded();
}


class QuestionError extends QuestionState {
  final String message;
  const QuestionError(this.message);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is QuestionError && o.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}