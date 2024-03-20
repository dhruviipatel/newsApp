import 'package:newsapp/data/data_sources/remote/api_client.dart';
import 'package:newsapp/data/data_sources/remote/api_endpoint_urls.dart';
import 'package:velocity_x/velocity_x.dart';

class TagsRepo extends ApiClient {
  TagsRepo();

  getAllTags() async {
    try {
      final response = await getRequest(path: ApiEndpointUrls.tags);
      if (response.statusCode == 200) {
        Vx.log(response.data);
      }
    } on Exception catch (e) {
      Vx.log(e);
    }
  }
}
