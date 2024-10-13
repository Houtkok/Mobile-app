void main() {
  // List of student scores
  List<int> scores = [45, 67, 82, 49, 51, 78, 92, 30];

  // You code
  List<int> passed = [];
  for(var score in scores){
    if(score > 50){
      passed.add(score);
    }
  }
  print(passed);
  print(passed.length.toString() + " students passed");
 
}