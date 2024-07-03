class apiCrypto {
  final String name;
  final String symbol;
  final double priceUsd;

  apiCrypto({required this.name, required this.symbol, required this.priceUsd});

  factory apiCrypto.fromJson(Map<String, dynamic> json) {
    return apiCrypto(
      name: json['name'],
      symbol: json['symbol'],
      priceUsd: double.parse(json['price_usd']),
    );
  }
}
