import 'dart:collection';

import 'package:dto_why/domain/model/photo.dart';
import 'package:dto_why/domain/repository/photo_repository.dart';
import 'package:flutter/material.dart';

class MainViewModel extends ChangeNotifier {
  List<Photo> _photos = [];

  UnmodifiableListView<Photo> get photos => UnmodifiableListView(_photos);

  final PhotoRepository photoRepository;

  MainViewModel(this.photoRepository);

  void fetchImages(String query) async {
    _photos = await photoRepository.getPhotos(query);

    notifyListeners();
  }
}
