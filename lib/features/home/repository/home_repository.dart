// import 'package:delivery_app/common/core/failure.dart';
// import 'package:delivery_app/common/core/type_defs.dart';
import 'package:delivery_app/common/providers/firebase_providers.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:fpdart/fpdart.dart';

final homeRepositoryProvider =
    Provider((ref) => HomeRepository(storage: ref.watch(storageProvider)));

class HomeRepository {
  final FirebaseStorage _storage;
  HomeRepository({required FirebaseStorage storage}) : _storage = storage;

  Future<String> getHomeImages({required String name}) async {
    try {
      final homeImage = await _storage
          .ref()
          .child('home_page_tile')
          .child(name)
          .getDownloadURL();
      return homeImage;
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      return (e.toString());
    }
  }
}
