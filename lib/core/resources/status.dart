enum Status {
  initial,
  loading,
  loaded,
  failed;

  bool get isInitial => this == Status.initial;

  bool get isLoading => this == Status.loading;

  bool get isLoaded => this == Status.loaded;

  bool get isFailed => this == Status.failed;
}
