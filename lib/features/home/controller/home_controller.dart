// import 'package:delivery_app/common/core/utils.dart';
import 'package:delivery_app/features/home/repository/home_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final homeControllerProvider = Provider((ref) {
  final homeRepository = ref.watch(homeRepositoryProvider);
  return HomeController(homeRepository: homeRepository,);
});

class HomeController{
  final HomeRepository _homeRepository;
  HomeController({required HomeRepository homeRepository,})
      : _homeRepository = homeRepository;

  Future getHomeImages(String name, BuildContext context) async {
    final homeImages = await _homeRepository.getHomeImages(name: name);
    return homeImages;
  }
}
