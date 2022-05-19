import 'package:http/http.dart' show Client;
import 'package:init_flutter_bloc/models/item_model.dart';
import 'package:init_flutter_bloc/utils/endpoints.dart';

class MovieApiProvider {
  Client client = Client();

  Future<ItemModel?> fetchMovieList() async {
    final response = await client.get(Uri.parse(cEndpointMovieList));

    if (response.statusCode == 200) {
      return ItemModel.fromJson(response.body);
    } else {
      throw Exception('Failed to load');
    }
  }
}
