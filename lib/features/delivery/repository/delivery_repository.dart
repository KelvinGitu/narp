import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/common/core/failure.dart';
import 'package:delivery_app/common/core/firebase_constants.dart';
import 'package:delivery_app/common/core/type_defs.dart';
import 'package:delivery_app/common/providers/firebase_providers.dart';
import 'package:delivery_app/models/delivery_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

final deliveryRepositoryProvider = Provider(
    (ref) => DeliveryRepository(firestore: ref.watch(firestoreProvider)));

class DeliveryRepository {
  final FirebaseFirestore _firestore;
  DeliveryRepository({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  FutureEither createDelivery(Delivery delivery) async {
    try {
      // _deliveries.doc(delivery.id).set(delivery.toMap())
      return right(_deliveries
          .add(delivery.toMap())
          .then((documentSnapshot) => documentSnapshot.id));
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Stream<List<Delivery>> getDelivery() {
    return _deliveries.snapshots().map((event) {
      List<Delivery> deliveries = [];
      for (var doc in event.docs) {
        deliveries.add(Delivery.fromMap(doc.data() as Map<String, dynamic>));
      }
      return deliveries;
    });
  }

  // Stream<Delivery> getDeliveries() {
  //   return _deliveries.doc().snapshots().map(
  //     (DocumentSnapshot doc) {
  //       final data = Delivery.fromMap(doc.data() as Map<String, dynamic>);
  //       return data;
  //     },
  //   );
  // }

  CollectionReference get _deliveries =>
      _firestore.collection(FirebaseConstants.deliveriesCollection);
}
