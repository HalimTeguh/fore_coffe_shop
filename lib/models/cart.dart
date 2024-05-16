import 'package:flutter/material.dart';
import 'package:fore_coffe_shop/models/coffe.dart';

class Cart extends ChangeNotifier{
  // List of Coffe for sale
  List<Coffe> coffeShop = [
    Coffe(
      name: "Berry Manuka Americano",
      price: 29000,
      description: 'Perpaduan rasa Stroberi dan Manuka dengan Classic Blend Fore yang menyegarkan',
      category: "Americano",
      imagePath: 'assets/images/Berry_Manuka_Americano.jpg',
    ),
    Coffe(
      name: "Double Iced Shaken Latte",
      price: 29000,
      description: 'Paduan klasik 2 shot espresso dengan susu dan krim',
      category: "Coffe",
      imagePath: 'assets/images/Double_Iced_Shaken_Latte.jpg',
    ),
    Coffe(
      name: "Hot Americano",
      price: 21000,
      description: 'Espresso shot dalam segelas air dengan menjaga ketebalan rasa kopinya',
      category: "Americano",
      imagePath: 'assets/images/Hot_Americano.jpg',
    ),
    Coffe(
      name: "Hot Café Latte",
      price: 29000,
      description: 'Paduan espresso dengan susu sapi pilihan dan sedikit foam di atasnya',
      category: "Coffe",
      imagePath: 'assets/images/Hot_Cafe_Latte.jpg',
    ),
    Coffe(
      name: "Hot Café Malt Latte",
      price: 33000,
      description: 'Paduan latte dan sirup Irish yang menghasilkan aroma dan rasa lembut',
      category: "Coffe",
      imagePath: 'assets/images/Hot_Cafe_Malt_Latte.jpg',
    ),
    Coffe(
      name: "Hot Cappuccino",
      price: 29000,
      description: 'Espresso shots dengan susu hangat dan lapisan foam tebal di atasnya',
      category: "Coffe",
      imagePath: 'assets/images/Hot_Cappuccino.jpg',
    ),
    Coffe(
      name: "Hot Espresso",
      price: 19000,
      description: 'Ekstrak biji kopi Arabika murni tanpa campuran',
      category: "Coffe",
      imagePath: 'assets/images/Hot_Espresso.jpg',
    ),
    Coffe(
      name: "Hot Manuka Americano",
      price: 29000,
      description: 'Americano dengan madu Manuka yang pas untuk jadi energy booster',
      category: "Americano",
      imagePath: 'assets/images/Hot_Manuka_Americano.jpg',
    ),
    Coffe(
      name: "Hot Salted Caramel Mocha",
      price: 33000,
      description: 'Perpaduan coklat, latte dari house blend Fore, dan gurihnya caramel',
      category: "Coffe",
      imagePath: 'assets/images/Hot_Salted_Caramel_Mocha.jpg',
    ),
    Coffe(
      name: "Iced Americano",
      price: 21000,
      description: 'Espresso shot dalam segelas air dengan menjaga ketebalan rasa kopinya',
      category: "Americano",
      imagePath: 'assets/images/Iced_Americano.jpg',
    ),
    Coffe(
      name: "Iced Café Latte",
      price: 29000,
      description: 'Paduan espresso dengan susu sapi pilihan dan sedikit foam di atasnya',
      category: "Coffe",
      imagePath: 'assets/images/Iced_Cafe_Latte.jpg',
    ),
    Coffe(
      name: "Iced Café Malt Latte",
      price: 33000,
      description: 'Paduan latte dan sirup Irish yang menghasilkan aroma dan rasa lembut',
      category: "Coffe",
      imagePath: 'assets/images/Iced_Cafe_Malt_Latte.jpg',
    ),
    Coffe(
      name: "Iced Cappuccino",
      price: 29000,
      description: 'Paduan espresso dengan susu sapi pilihan dan foam tebal di atasnya',
      category: "Coffe",
      imagePath: 'assets/images/Iced_Cappuccino.jpg',
    ),
    Coffe(
      name: "Iced Classic Latte",
      price: 240000,
      description: 'Perpaduan rasa espresso premium dengan saus krim spesial Fore',
      category: "Coffe",
      imagePath: 'assets/images/Iced_Classic_Latte.jpg',
    ),
    Coffe(
      name: "Iced Manuka Americano",
      price: 29000,
      description: 'Americano dengan madu Manuka yang pas untuk jadi energy booster',
      category: "Americano",
      imagePath: 'assets/images/Iced_Manuka_Americano.jpg',
    ),
    Coffe(
      name: "Iced Salted Caramel Mocha",
      price: 33000,
      description: 'Perpaduan coklat, latte dari house blend Fore, dan gurihnya caramel',
      category: "Coffe",
      imagePath: 'assets/images/Iced_Salted_Caramel_Mocha.jpg',
    ),
    Coffe(
      name: "Nutty Oat Latte",
      price: 39000,
      description: 'Espresso dari biji kopi khas nusantara dipadukan susu oat gluten-free dan sensasi nutty dari hazelnut',
      category: "Coffe",
      imagePath: 'assets/images/Nutty_Oat_Latte.jpg',
    ),
    Coffe(
      name: "Triple Peach Americano",
      price: 29000,
      description: 'Peach coffee perpaduan rasa kopi, tiga jenis buah peach dan aroma elderflower yang menciptakan sensasi kopi yang segar dan harmonis',
      category: "Americano",
      imagePath: 'assets/images/Triple_Peach_Americano.jpg',
    ),
  ];

  // List of Coffe on user cart
  List<Coffe> userCart = [];

  // Get list of Coffe for sale
  List<Coffe> getCoffeList(){
    return coffeShop;
  }

  // Get cart
  List<Coffe> getUserCart(){
    return userCart;
  }

  // add item to user cart
  void addCoffetoCart(Coffe coffe){
    print("adding ${coffe.name}, ${coffe.price}");
    userCart.add(coffe);
    notifyListeners();
  }

  // remove item in user cart
  void removeCoffetoCart(Coffe coffe){
    print("removing ${coffe.name}, ${coffe.price}");
    userCart.remove(coffe);
    notifyListeners();
  }
}
