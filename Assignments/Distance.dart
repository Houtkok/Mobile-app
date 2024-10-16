class Distance{
  final double _meters;

  Distance.meter(this._meters);
  Distance.cms(double cms) : _meters = cms / 100;
  Distance.kms(double kms) : _meters = kms * 1000;

  double get meters => _meters;
  double get cms => _meters / 1000;
  double get kms => _meters * 100;

  Distance operator +(Distance other){
    return Distance.meter(this.meters + other._meters);
  }
  @override 
  String toString(){
    return "Distance : $_meters";
  }
}
void main(){
  Distance distance1 = Distance.cms(100);
  Distance distance2 = Distance.kms(10);

  Distance total = distance1 + distance2;

  print("Total meter : ${total.meters}");
  print("Total kms : ${total.cms}" );
  print("Total cms : ${total.kms}");
  
}