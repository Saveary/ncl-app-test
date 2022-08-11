class Pipe<T> {
  final T? initialData;
  final BehaviorSubject<T> _controller;

  Pipe(this.initialData, this._controller);
  Stream<T> get stream => _controller.stream;

  factory Pipe({T? initialData}) {
    return Pipe._(initialData: initialData);
  }

  void dispose() {
    _controller.close();
  }
}
