import 'package:dio/dio.dart';

import '../../model/model.dart';

class Api {
  final String _endPoint =
      'https://calendarific.com/api/v2/holidays?api_key=96175f7095c2d31049a145634ba858d759894d1d&country=EG&year=2022';
  final Dio _dio = Dio();
  late final Response _response;
  Future<List<Model>> getData() async {
    _response = await _dio.get(_endPoint);
    final List result = _response.data['response']['holidays'];
    print(result.toString());
    return result.map((e) => Model.fromJson(e)).toList();
  }
}
