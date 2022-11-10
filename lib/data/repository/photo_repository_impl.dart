import 'package:dto_why/data/remote/api/photo_api.dart';
import 'package:dto_why/data/remote/mapper/photo_mapper.dart';
import 'package:dto_why/domain/model/photo.dart';
import 'package:dto_why/domain/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoApi _photoApi;

  PhotoRepositoryImpl(this._photoApi);

  @override
  Future<List<Photo>> getPhotos(String query) async {
    final photoDto = await _photoApi.getPhotos(
      key: '10711147-dc41758b93b263957026bdadb',
      query: query,
      type: 'photo',
    );

    if (photoDto.hits == null) {
      return [];
    }

    return photoDto.hits!
        .map((hit) => hit.toPhoto())
        .toList();
  }
}
