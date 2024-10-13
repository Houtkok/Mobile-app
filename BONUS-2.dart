void main(){
  bool verify_balance(String input){
    List<String> store = [];
    Map<String,String> bracket = {')':'(','}':'{',']':'['};

    for(var i = 0 ; i < input.length ; i++){
      String n = input[i];
      if( n == '(' || n == '{' || n == '['){
        store.add(n);
      }
      else if( n == ')' || n == '}' || n == ']'){
        if(store.isEmpty || store.last != bracket[n]){
          return false;
        }
        store.removeLast();
      }
    }
    return store.isEmpty;
  }

  print(verify_balance("{what is (42)}?"));
  print(verify_balance("[text}"));
  print(verify_balance("{[[(a)b]c]d} "));
}