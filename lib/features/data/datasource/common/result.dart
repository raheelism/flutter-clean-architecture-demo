import 'package:clean_architect/core/error/failure.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
class ResultState<Type> extends Equatable {
  final CurrentState state;
  final Type data;
  final Failure error;

  ResultState({this.state, this.data, this.error});

  factory ResultState.setLoading() {
    print("LOADING");
    return ResultState(state: CurrentState.LOADING);
  }

  factory ResultState.setResult(Type data) {
    print("SUCCESS");
    return ResultState(state: CurrentState.SUCCESS, data: data);
  }

  factory ResultState.setError(Failure error) {
    print("FAILURE");
    return ResultState(state: CurrentState.ERROR, error: error);
  }

  @override
  List<Object> get props => [state, data, error];
}

enum CurrentState { LOADING, SUCCESS, ERROR }
