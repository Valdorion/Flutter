import 'package:epsi_shop/bo/article.dart';
import 'package:flutter/foundation.dart';

class Cart with ChangeNotifier {
  final _items = <Article>[];

  String priceTotalInEuro() =>
      "${_items.fold(0 as num, (itemPrev, item) => itemPrev + item.prix) / 10}€";
  String priceTotalInEuroTVA() =>
      "${_items.fold(0 as num, (itemPrev, item) => itemPrev + item.prix) / 10 * 0.2}€";
  String priceTotalInEuroAvecTVA() =>
      "${_items.fold(0 as num, (itemPrev, item) => itemPrev + item.prix) / 10 * 1.2}€";
  //String priceTotalInEuroSimpl() {
  //  var prix = 0 as num;
  //  for (Article item in _items) {
  //    prix+= item.prix;
  //  }
  //  return "$prix€";
  //}
  List<Article> get items => _items;
  //<Article>[].fold(0 as num, (previousValue, element) => previousValue + element.prix)

  void addArticle(Article article) {
    _items.add(article);
    notifyListeners();
  }

  void removeArticle(Article article) {
    _items.remove(article);
    notifyListeners();
  }
}
