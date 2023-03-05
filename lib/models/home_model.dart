class HomeModel {
  Data? data;

  HomeModel({this.data});

  HomeModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  SectionNumber? section1;
  SectionNumber? section2;
  SectionNumber? section3;
  SectionNumber? section4;
  SectionNumber? section5;

  Data(
      {this.section1,
      this.section2,
      this.section3,
      this.section4,
      this.section5});

  Data.fromJson(Map<String, dynamic> json) {
    section1 = json['section_1'] != null
        ? new SectionNumber.fromJson(json['section_1'])
        : null;
    section2 = json['section_2'] != null
        ? new SectionNumber.fromJson(json['section_2'])
        : null;
    section3 = json['section_3'] != null
        ? new SectionNumber.fromJson(json['section_3'])
        : null;
    section4 = json['section_4'] != null
        ? new SectionNumber.fromJson(json['section_4'])
        : null;
    section5 = json['section_5'] != null
        ? new SectionNumber.fromJson(json['section_5'])
        : null;
  }

  toJson() {}

  // toJson() {}
}

class SectionNumber {
  int? index;
  bool? isEnabled;
  String? title;
  List<Sec1Data>? data;

  SectionNumber({this.index, this.isEnabled, this.title, this.data});

  SectionNumber.fromJson(Map<String, dynamic> json) {
    index = json['index'];
    isEnabled = json['is_enabled'];
    title = json['title'];
    if (json['data'] != null) {
      data = <Sec1Data>[];
      json['data'].forEach((v) {
        data!.add(new Sec1Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['index'] = this.index;
    data['is_enabled'] = this.isEnabled;
    data['title'] = this.title;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sec1Data {
  String? banner;
  String? url;

  Sec1Data({this.banner, this.url});

  Sec1Data.fromJson(Map<String, dynamic> json) {
    banner = json['banner'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['banner'] = this.banner;
    data['url'] = this.url;
    return data;
  }
}

class Sec2Data {
  int? id;
  String? name;
  String? image;

  Sec2Data({this.id, this.name, this.image});

  Sec2Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}

class Sec3Data {
  int? id;
  String? name;
  String? image;
  double? price;
  double? oldPrice;
  bool? isFavorited;

  Sec3Data(
      {this.id,
      this.name,
      this.image,
      this.price,
      this.oldPrice,
      this.isFavorited});

  Sec3Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    oldPrice = json['old_price'];
    isFavorited = json['is_favorited'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['price'] = this.price;
    data['old_price'] = this.oldPrice;
    data['is_favorited'] = this.isFavorited;
    return data;
  }
}

class Sec4Data {
  int? id;
  String? name;
  String? description;
  String? image;
  double? price;
  double? oldPrice;
  bool? isFavorited;

  Sec4Data(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.price,
      this.oldPrice,
      this.isFavorited});

  Sec4Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    price = json['price'];
    oldPrice = json['old_price'];
    isFavorited = json['is_favorited'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['price'] = this.price;
    data['old_price'] = this.oldPrice;
    data['is_favorited'] = this.isFavorited;
    return data;
  }
}
