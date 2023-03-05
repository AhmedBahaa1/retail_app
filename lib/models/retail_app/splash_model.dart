class SplashModel {
  Data? data;

  SplashModel({this.data});

  SplashModel.fromJson(Map<String, dynamic> json) {
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
  String? name;
  String? description;
  String? logo;
  bool? isWelcomeScreenEnabled;
  String? domain;
  DeliveryConfigurations? deliveryConfigurations;
  ColorIdentity? colorIdentity;

  Data(
      {this.name,
      this.description,
      this.logo,
      this.isWelcomeScreenEnabled,
      this.domain,
      this.deliveryConfigurations,
      this.colorIdentity});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    logo = json['logo'];
    isWelcomeScreenEnabled = json['is_welcome_screen_enabled'];
    domain = json['domain'];
    deliveryConfigurations = json['delivery_configurations'] != null
        ? new DeliveryConfigurations.fromJson(json['delivery_configurations'])
        : null;
    colorIdentity = json['color_identity'] != null
        ? new ColorIdentity.fromJson(json['color_identity'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['logo'] = this.logo;
    data['is_welcome_screen_enabled'] = this.isWelcomeScreenEnabled;
    data['domain'] = this.domain;
    if (this.deliveryConfigurations != null) {
      data['delivery_configurations'] = this.deliveryConfigurations!.toJson();
    }
    if (this.colorIdentity != null) {
      data['color_identity'] = this.colorIdentity!.toJson();
    }
    return data;
  }
}

class DeliveryConfigurations {
  String? enabled;

  DeliveryConfigurations({this.enabled});

  DeliveryConfigurations.fromJson(Map<String, dynamic> json) {
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enabled'] = this.enabled;
    return data;
  }
}

class ColorIdentity {
  String? textColor;
  String? baseColor;

  ColorIdentity({this.textColor, this.baseColor});

  ColorIdentity.fromJson(Map<String, dynamic> json) {
    textColor = json['text_color'];
    baseColor = json['base_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text_color'] = this.textColor;
    data['base_color'] = this.baseColor;
    return data;
  }
}