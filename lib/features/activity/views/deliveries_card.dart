// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DeliveriesCard extends StatelessWidget {
  final String senderLocation;
  final String recipientLocation;
  const DeliveriesCard({
    Key? key,
    required this.senderLocation,
    required this.recipientLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(),
      ),
      child: Row(
        children: [
          Text(senderLocation, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
          const SizedBox(width: 25),
          Text(recipientLocation, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
