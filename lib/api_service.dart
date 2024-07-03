import 'dart:convert';
import 'package:http/http.dart' as http;
import 'apicrypto.dart';

class ApiService {
  static const String url = 'https://api.coinlore.net/api/tickers/';

  static Future<List<apiCrypto>> fetchCryptos() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['data'];
      return data.map((json) => apiCrypto.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load cryptos');
    }
  }
}
