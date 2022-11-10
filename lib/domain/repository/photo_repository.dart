import 'package:dto_why/domain/model/photo.dart';

abstract class PhotoRepository {
  Future<List<Photo>> getPhotos(String query);
}
