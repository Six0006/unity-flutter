enum Flavor { dev, stg, prod }

///Helper widget to help with the flavoring with our app
class FlavorConfig {
  static const dev = 'Dev';
  static const stg = 'Stg';
  static const prod = 'Prod';

  final Flavor flavor;
  final String name;

  factory FlavorConfig({
    required Flavor flavor,
  }) {
    return FlavorConfig._internal(flavor, flavor.name);
  }

  FlavorConfig._internal(this.flavor, this.name);

  bool get isDev => flavor == Flavor.prod;

  bool get isStg => flavor == Flavor.stg;

  bool get isProd => flavor == Flavor.prod;
}

extension FlavorName on Flavor {
  String get name {
    switch (this) {
      case Flavor.dev:
        return FlavorConfig.dev;
      case Flavor.stg:
        return FlavorConfig.stg;
      case Flavor.prod:
        return FlavorConfig.prod;
    }
  }
}
