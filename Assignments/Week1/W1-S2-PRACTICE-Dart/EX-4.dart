void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple'];

  // Your code
  double totalPrice = 0;

  for(var orders in order){
    if(pizzaPrices.containsKey(orders)){
      totalPrice += pizzaPrices[orders]!;
    }
    else{
      print("this item is not available " + orders);
    }
  }  
  print("Total: " + totalPrice.toString());

}
