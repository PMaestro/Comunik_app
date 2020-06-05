enum HomeState { IDLE, LOADING, ERROR, DONE }

class HomeBlocState {
  HomeBlocState(this.state, {this.errorMessage});

  HomeState state;
  String errorMessage;
}
