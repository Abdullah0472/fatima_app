import 'package:flutter/cupertino.dart';

class ServicesCategoriesModels{
  final String imagepath;
  final String tittle;
  final String price;
  ServicesCategoriesModels({
    required this.imagepath,
    required this.tittle,
    required this.price,
  } ){}
}
class NewProductsModels{
  final String imagepath;
  final String firsttittle;
  final String secondtittle;
  final String text;
  final String price;
  NewProductsModels({
    required this.imagepath,
    required this.firsttittle,
    required this.secondtittle,
    required this.text,
    required this.price,
  } ){}
}
class ProductCategoriesModels{
  final String imagepath;
  final String tittle;
  final String price;
  ProductCategoriesModels({
    required this.imagepath,
    required this.tittle,
    required this.price,
  } ){}
}
class CategoriesModels{
  final String imagepath;
  final String tittle;
  final String items;
  CategoriesModels({
    required this.imagepath,
    required this.tittle,
    required this.items,
  } ){}
}
