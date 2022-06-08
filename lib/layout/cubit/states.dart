abstract class HomeLayoutStates {}

class HomeLayoutInitialState extends HomeLayoutStates {}

class HomeLayoutGetUserLoadingState extends HomeLayoutStates {}

class HomeLayoutGetUserSuccessState extends HomeLayoutStates {}

class HomeLayoutGetUserErrorState extends HomeLayoutStates {
  final String error;
  HomeLayoutGetUserErrorState(this.error);
}

class HomeLayoutChangeBottomNavState extends HomeLayoutStates {}