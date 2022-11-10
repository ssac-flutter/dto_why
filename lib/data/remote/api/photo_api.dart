import 'package:dio/dio.dart';
import 'package:dto_why/data/remote/dto/photo_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'photo_api.g.dart';

@RestApi(baseUrl: 'https://pixabay.com/api/')
abstract class PhotoApi {
  factory PhotoApi(Dio dio, {String baseUrl}) = _PhotoApi;

  @GET('/')
  Future<PhotoDto> getPhotos({
    @Query('key') required String key,
    @Query('q') required String query,
    @Query('image_type') required String type,
  });
}
