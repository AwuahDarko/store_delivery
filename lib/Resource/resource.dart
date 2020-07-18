import 'package:store/models/category.dart';
import 'package:store/models/product.dart';

class AppData {
  static List<Category> allCategories = [
    const Category(
        id: 'jsjsj',
        name: 'Vegetable Salad',
        quantity: '40',
        imageUrl: 'assets/images/vegetable_salad.jpg'
    ),
    const Category(
        id: 'jsjsj',
        name: 'Fruit Salad',
        quantity: '42',
        imageUrl: 'assets/images/fruit.jpg'
    ),
    const Category(
        id: 'jsjsj',
        name: 'Sandwiches',
        quantity: '20',
        imageUrl: 'assets/images/sand.jpg'
    ),
    const Category(
        id: 'jsjsj',
        name: 'Burgers',
        quantity: '30',
        imageUrl: 'assets/images/burger.jpg'
    ),
    const Category(
        id: 'kshu',
        name: 'Local dishes',
        quantity: '40',
        imageUrl: 'assets/images/fufu.jpg'
    ),
    const Category(
        id: 'jsjsj',
        name: 'Delight',
        quantity: '40',
        imageUrl: 'assets/images/jollof.jpg'
    ),
    const Category(
        id: 'jsjsj',
        name: 'Dessert',
        quantity: '40',
        imageUrl: 'assets/images/dessert.jpg'
    ),
    const Category(
        id: 'jsjsj',
        name: 'Water',
        quantity: '40',
        imageUrl: 'assets/images/water.jpg'
    )
  ];


  static List<Product> productList = [
    const Product(
        id: '256666',
        name: 'Cauliflower',
        imageUrl: 'assets/images/cauliflower.jpg',
        categoryId: 'hjghhj',
        price: '12.50'
    ),
    const Product(
        id: '256666',
        name: 'Beans',
        imageUrl: 'assets/images/bean.jpg',
        categoryId: 'hjghhj',
        price: '20.20'
    ),
    Product(
        id: '256666',
        name: 'Onion',
        imageUrl: 'assets/images/onion.jpg',
        categoryId: 'hjghhj',
        price: '2.50'
    ),
    const Product(
        id: '256666',
        name: 'Spinach',
        imageUrl: 'assets/images/spinach.jpg',
        categoryId: 'hjghhj',
        price: '1.50'
    ),
    const Product(
        id: '256666',
        name: 'Tomato',
        imageUrl: 'assets/images/tomato.jpg',
        categoryId: 'hjghhj',
        price: '14.80'
    ),
    const Product(
        id: '256666',
        name: 'Cabbage',
        imageUrl: 'assets/images/cabbage.jpg',
        categoryId: 'hjghhj',
        price: '23.00'
    ),
    const Product(
        id: '256666',
        name: 'Broccoli',
        imageUrl: 'assets/images/broccoli.jpg',
        categoryId: 'hjghhj',
        price: '30.50'
    ),
    const Product(
        id: '256666',
        name: 'Carrot',
        imageUrl: 'assets/images/carrot.jpg',
        categoryId: 'hjghhj',
        price: '18.00'
    ),
    const Product(
        id: '256666',
        name: 'Pepper',
        imageUrl: 'assets/images/pepper.jpg',
        categoryId: 'hjghhj',
        price: '5.50'
    )
  ];
}