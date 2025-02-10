class UserDummy {
  int? id, age;
  String? firstName,
      lastName,
      maidenName,
      gender,
      email,
      role,
      ein,
      ssn,
      userAgent,
      phone,
      username,
      password,
      birthDate,
      image,
      bloodGroup,
      eyeColor,
      ip,
      macAddress,
      university;

  double? height, weight;
  Hair? hair;
  Address? address;
  Bank? bank;
  Company? company;
  Crypto? crypto;

  UserDummy({
    this.id,
    this.firstName,
    this.lastName,
    this.maidenName,
    this.age,
    this.gender,
    this.email,
    this.phone,
    this.username,
    this.password,
    this.birthDate,
    this.image,
    this.bloodGroup,
    this.height,
    this.weight,
    this.eyeColor,
    this.hair,
    this.ip,
    this.address,
    this.macAddress,
    this.university,
    this.bank,
    this.company,
    this.ein,
    this.ssn,
    this.userAgent,
    this.crypto,
    this.role,
  });

  factory UserDummy.maptomodel(Map<String, dynamic> m1) => UserDummy(
        id: m1["id"],
        firstName: m1["firstName"],
        lastName: m1["lastName"],
        maidenName: m1["maidenName"],
        age: m1["age"],
        gender: m1["gender"],
        email: m1["email"],
        phone: m1["phone"],
        username: m1["username"],
        password: m1["password"],
        birthDate: m1["birthDate"],
        image: m1["image"],
        bloodGroup: m1["bloodGroup"],
        height: m1["height"],
        weight: m1["weight"],
        eyeColor: m1["eyeColor"],
        hair: Hair.maptomodel(m1["hair"]),
        ip: m1["ip"],
        address: Address.maptomodel(m1["address"]),
        macAddress: m1["macAddress"],
        university: m1["university"],
        bank: Bank.maptomodel(m1["bank"]),
        company: Company.maptomodel(m1["company"]),
        ein: m1["ein"],
        ssn: m1["ssn"],
        userAgent: m1["userAgent"],
        crypto: Crypto.maptomodel(m1["crypto"]),
        role: m1["role"],
      );
}

class Address {
  String? address, city, state, stateCode, postalCode, country;
  Coordinates? coordinates;

  Address({
    this.address,
    this.city,
    this.state,
    this.stateCode,
    this.postalCode,
    this.coordinates,
    this.country,
  });

  factory Address.maptomodel(Map<String, dynamic> m1) => Address(
        address: m1["address"],
        city: m1["city"],
        state: m1["state"],
        stateCode: m1["stateCode"],
        postalCode: m1["postalCode"],
        coordinates: Coordinates.maptomodel(m1["coordinates"]),
        country: m1["country"],
      );
}

class Coordinates {
  double? lat, lng;

  Coordinates({
    this.lat,
    this.lng,
  });

  factory Coordinates.maptomodel(Map<String, dynamic> m1) => Coordinates(
        lat: m1["lat"],
        lng: m1["lng"],
      );
}

class Bank {
  String? cardExpire, cardNumber, cardType, currency, iban;

  Bank({
    this.cardExpire,
    this.cardNumber,
    this.cardType,
    this.currency,
    this.iban,
  });

  factory Bank.maptomodel(Map<String, dynamic> m1) => Bank(
        cardExpire: m1["cardExpire"],
        cardNumber: m1["cardNumber"],
        cardType: m1["cardType"],
        currency: m1["currency"],
        iban: m1["iban"],
      );
}

class Company {
  String? department, name, title;
  Address? address;

  Company({
    this.department,
    this.name,
    this.title,
    this.address,
  });

  factory Company.maptomodel(Map<String, dynamic> m1) => Company(
        department: m1["department"],
        name: m1["name"],
        title: m1["title"],
        address: Address.maptomodel(m1["address"]),
      );
}

class Crypto {
  String? coin, wallet, network;

  Crypto({
    this.coin,
    this.wallet,
    this.network,
  });

  factory Crypto.maptomodel(Map<String, dynamic> m1) => Crypto(
        coin: m1["coin"],
        wallet: m1["wallet"],
        network: m1["network"],
      );
}

class Hair {
  String? color, type;

  Hair({
    this.color,
    this.type,
  });

  factory Hair.maptomodel(Map<String, dynamic> m1) => Hair(
        color: m1["color"],
        type: m1["type"],
      );
}
