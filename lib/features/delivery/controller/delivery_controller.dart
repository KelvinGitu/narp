import 'package:delivery_app/common/core/utils.dart';
import 'package:delivery_app/features/authentication/controller/auth_controller.dart';
import 'package:delivery_app/features/delivery/repository/delivery_repository.dart';
import 'package:delivery_app/models/delivery_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

final deliveryDetailsProvider = StreamProvider(((ref) {
  final deliveryController = ref.watch(deliveryControllerProvider.notifier);
  return deliveryController.getDelivery();
}));

final deliveryControllerProvider =
    StateNotifierProvider<DeliveryController, bool>((ref) {
  final deliveryRepository = ref.watch(deliveryRepositoryProvider);
  return DeliveryController(deliveryRepository: deliveryRepository, ref: ref);
});

class DeliveryController extends StateNotifier<bool> {
  final DeliveryRepository _deliveryRepository;
  final Ref _ref;
  DeliveryController({
    required DeliveryRepository deliveryRepository,
    required Ref ref,
  })  : _deliveryRepository = deliveryRepository,
        _ref = ref,
        super(false);

  void createDelivery(
    String senderName,
    String recipientName,
    String senderPhone,
    String recipientPhone,
    String senderInstructions,
    String recipientInstructions,
    String senderLocation,
    String recipientLocation,
    String deliveryPrice,
    BuildContext context,
  ) async {
    state = true;
    final uid = _ref.read(userProvider)?.uid ?? '';
    Delivery delivery = Delivery(
      id: uid,
      senderName: senderName,
      recipientName: recipientName,
      senderPhone: senderPhone,
      recipientPhone: recipientPhone,
      senderInstructions: senderInstructions,
      recipientInstructions: recipientInstructions,
      senderLocation: senderLocation,
      recipientLocation: recipientLocation,
      deliveryPrice: deliveryPrice,
    );

    final res = await _deliveryRepository.createDelivery(delivery);
    state = false;
    res.fold(
      (l) => showSnackBar(context, l.message),
      (r) => Routemaster.of(context).pop(),
    );
  }

  Stream<List<Delivery>> getDelivery() {
    return _deliveryRepository.getDelivery();
  }
}
