class Trip {
  Trip({
    this.id,
    this.name,
    this.location,
    this.price,
    this.mattchesAvatar,
    this.locationAvatar,
    this.detail,
    this.days,
    this.tags,
  });

  Trip.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
    price = json['price'];
    mattchesAvatar = json['mattchesAvatar'];
    locationAvatar = json['locationAvatar'];
    detail = json['detail'];
    days = json['days'];
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(Tags.fromJson(v));
      });
    }
  }

  int? id;
  String? name;
  String? location;
  int? price;
  String? mattchesAvatar;
  String? locationAvatar;
  String? detail;
  int? days;
  List<Tags>? tags;

  Trip copyWith({
    int? id,
    String? name,
    String? location,
    int? price,
    String? mattchesAvatar,
    String? locationAvatar,
    String? detail,
    int? days,
    List<Tags>? tags,
  }) =>
      Trip(
        id: id ?? this.id,
        name: name ?? this.name,
        location: location ?? this.location,
        price: price ?? this.price,
        mattchesAvatar: mattchesAvatar ?? this.mattchesAvatar,
        locationAvatar: locationAvatar ?? this.locationAvatar,
        detail: detail ?? this.detail,
        days: days ?? this.days,
        tags: tags ?? this.tags,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['location'] = location;
    map['price'] = price;
    map['mattchesAvatar'] = mattchesAvatar;
    map['locationAvatar'] = locationAvatar;
    map['detail'] = detail;
    map['days'] = days;
    if (tags != null) {
      map['tags'] = tags?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Tags {
  Tags({
    this.name,
    this.id,
  });

  Tags.fromJson(dynamic json) {
    name = json['name'];
    id = json['id'];
  }

  String? name;
  int? id;

  Tags copyWith({
    String? name,
    int? id,
  }) =>
      Tags(
        name: name ?? this.name,
        id: id ?? this.id,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['id'] = id;
    return map;
  }
}
