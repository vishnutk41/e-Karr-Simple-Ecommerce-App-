import 'dart:convert';


// List<ShopModel> shopModelFromJson(String str) => List<ShopModel>.from(json.decode(str).map((x) => ShopModel.fromJson(x)));

// String shopModelToJson(List<ShopModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

ShopModel shopModelFromJson(String str) => ShopModel.fromJson(json.decode(str));

String shopModelToJson(ShopModel data) => json.encode(data.toJson());

class ShopModel {
    ShopModel({
        required this.status,
        required this.data,
    });

    String status;
    List<Datum> data;

    factory ShopModel.fromJson(Map<String, dynamic> json) => ShopModel(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.id,
        required this.name,
        required this.brand,
        required this.image,
        required this.price,
        required this.description,
    });

    int id;
    String name;
    String brand;
    String image;
    String price;
    String description;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        brand: json["brand"],
        image: json["image"],
        price: json["price"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "brand": brand,
        "image": image,
        "price": price,
        "description": description,
    };
}
