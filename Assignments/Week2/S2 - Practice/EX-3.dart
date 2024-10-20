class MyDuration {
  final int _milliseconds;

  MyDuration._(this._milliseconds){
    if(_milliseconds < 0){
      throw Exception("Duration must be greater than 0");
    }
  }

  factory MyDuration.fromHours(int hours) {
    return MyDuration._(hours * 60 * 60 * 1000);
  }

  factory MyDuration.fromMinutes(int minutes){
    return MyDuration._(minutes * 60 * 1000);
  }

  factory MyDuration.fromSeconds(int seconds){
    return MyDuration._(seconds * 1000);
  }

  bool operator >(MyDuration value){
    return this._milliseconds > value._milliseconds;
  }

  MyDuration operator +(MyDuration value){
    return MyDuration._(this._milliseconds + value._milliseconds);
  }

  MyDuration operator -(MyDuration value){
    int result = this._milliseconds - value._milliseconds;
    if(result < 0){
      throw Exception("Result must be greater than 0 or equal 0");
    }
    return MyDuration._(result);
  }


  // Display the duration in a readable format
  @override
  String toString() {
    int seconds = (_milliseconds / 1000).round();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;
    int hours = (minutes / 60).floor();
    minutes = minutes % 60;
    return '$hours hours, $minutes minutes, $seconds seconds';
  }
}

void main() {
  MyDuration duration1 = MyDuration.fromHours(3); // 3 hours
  MyDuration duration2 = MyDuration.fromMinutes(45); // 45 minutes
  print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
  print(duration1>duration2); //true

  try {
    print(duration2 - duration1); // This will throw an exception
  } catch (e) {
    print(e); 
  }
}
