import 'dart:async';

class Item {
  String name;
  int quantity;

  Item(this.name, this.quantity);

  void updateQuantity(int newQuantity) {
    quantity = newQuantity;
  }

  @override
  String toString() {
    return 'Item: $name, Quantity: $quantity';
  }
}

class Inventory {
  List<Item> items = [];

  void addItem(String name, int quantity) {
    items.add(Item(name, quantity));
  }

  Future<void> updateItemQuantity(String name, int newQuantity) async {
    final item = getItemByName(name);
    if (item != null) {
      
      await Future.delayed(Duration(seconds: 2));
      item.updateQuantity(newQuantity);
      print('Quantity for item $name updated successfully.'); 
    } else {
      print('Item $name not found in inventory.');
    }
  }

Item? getItemByName(String name) {
  try {
    return items.firstWhere((item) => item.name == name);
  } catch (e) {
    print('Error: $e');
    return null;
  }
}


  void displayInventory() {
    if (items.isEmpty) {
      print('Inventory is empty.');
    } else {
      print('Inventory:');
      items.forEach((item) {
        print(item);
      });
    }
  }
}

void main() async {
  final inventory = Inventory();

  inventory.addItem('Apple', 10);
  inventory.addItem('Banana', 15);
  inventory.addItem('Orange', 20);

  inventory.displayInventory();

  await inventory.updateItemQuantity('Apple', 5);
  await inventory.updateItemQuantity('Banana', 8);

  inventory.displayInventory();
}
