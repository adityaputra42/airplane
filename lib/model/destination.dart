part of 'model.dart';

class DestinationModel extends Equatable {
  final String id;
  final String name;
  final String city;
  final String imageUrl;
  final double rate;
  final int price;
  final String about;

  DestinationModel({
    required this.id,
    this.name = '',
    this.city = '',
    this.imageUrl = '',
    this.rate = 0.0,
    this.price = 0,
    this.about = '',
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) =>
      DestinationModel(
        id: id,
        name: json['name'],
        city: json['city'],
        rate: (json['rate'] as num).toDouble(),
        imageUrl: json['imageUrl'],
        price: json['price'],
        about: json['about'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'city': city,
        'rate': rate,
        'imageUrl': imageUrl,
        'price': price,
        'about': about,
      };

  @override
  List<Object?> get props => [
        id,
        name,
        city,
        imageUrl,
        rate,
        price,
        about,
      ];
}
