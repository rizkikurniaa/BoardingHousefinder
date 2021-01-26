class Space {
  int id;
  String name;
  String imgUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;

  Space({
    this.id,
    this.name,
    this.imgUrl,
    this.price,
    this.city,
    this.country,
    this.rating,
    this.address,
    this.phone,
    this.mapUrl,
    this.photos,
    this.numberOfKitchens,
    this.numberOfBedrooms,
    this.numberOfCupboards,
  });

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    imgUrl = json['image_url'];
    price = json['price'];
    city = json['city'];
    country = json['country'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    numberOfKitchens = json['number_of_kitchens'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfCupboards = json['number_of_cupboards'];
  }
}
