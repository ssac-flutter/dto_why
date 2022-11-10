import 'package:dto_why/data/remote/dto/photo_dto.dart';
import 'package:dto_why/domain/model/photo.dart';

extension HitsToPhoto on Hits {
  Photo toPhoto() {
    return Photo(url: previewURL!, tags: tags!);
  }
}
