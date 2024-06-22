// To parse this JSON data, do
//
//     final productsInventory = productsInventoryFromJson(jsonString);

import 'dart:convert';

List<ProductsInventory> productsInventoryFromJson(String str) => List<ProductsInventory>.from(json.decode(str).map((x) => ProductsInventory.fromJson(x)));

String productsInventoryToJson(List<ProductsInventory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductsInventory {
    final int id;
    final String titleProduct;
    final String imgProduct;
    final Category category;
    final String brand;
    final String price;
    final String discount;
    final String description;

    ProductsInventory({
        required this.id,
        required this.titleProduct,
        required this.imgProduct,
        required this.category,
        required this.brand,
        required this.price,
        required this.discount,
        required this.description,
    });

    factory ProductsInventory.fromJson(Map<String, dynamic> json) => ProductsInventory(
        id: json["id"],
        titleProduct: json["titleProduct"],
        imgProduct: json["imgProduct"],
        category: categoryValues.map[json["category"]]!,
        brand: json["brand"],
        price: json["price"],
        discount: json["discount"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "titleProduct": titleProduct,
        "imgProduct": imgProduct,
        "category": categoryValues.reverse[category],
        "brand": brand,
        "price": price,
        "discount": discount,
        "description": description,
    };
}

enum Category {
    HERRAMIENTA_ELCTRICA,
    HERRAMIENTA_MANUAL
}

final categoryValues = EnumValues({
    "Herramienta eléctrica": Category.HERRAMIENTA_ELCTRICA,
    "Herramienta manual": Category.HERRAMIENTA_MANUAL
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
