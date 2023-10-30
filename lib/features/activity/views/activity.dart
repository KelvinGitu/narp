import 'package:delivery_app/common/core/error_text.dart';
import 'package:delivery_app/common/core/loader.dart';
import 'package:delivery_app/features/delivery/controller/delivery_controller.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/features/activity/views/deliveries_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActivityScreen extends ConsumerWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final delivery = ref.watch(deliveryDetailsProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Available orders'),
          centerTitle: false,
        ),
        body: delivery.when(
            data: (deliveries) => ListView.builder(
                  itemCount: deliveries.length,
                  itemBuilder: (context, index) {
                  final delivery = deliveries[index];
                    return DeliveriesCard(senderLocation: delivery.senderLocation, recipientLocation: delivery.recipientLocation );
                  }),
                  error: (error, stackTrace) =>
                      ErrorText(error: error.toString()),
                  loading: () => const Loader(),
                ));
  }
}
