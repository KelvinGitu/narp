import 'package:delivery_app/common/widgets/elevated_button_widget.dart';
import 'package:delivery_app/features/authentication/controller/auth_controller.dart';
import 'package:delivery_app/features/delivery/controller/delivery_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

class SendPackage extends ConsumerStatefulWidget {
  const SendPackage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InputUserState();
}

class _InputUserState extends ConsumerState<SendPackage> {
  final TextEditingController senderInstructionsController =
      TextEditingController();
  final TextEditingController recipientNameController = TextEditingController();
  final TextEditingController recipientInstructionsController =
      TextEditingController();
  final TextEditingController recipientNumberController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
    senderInstructionsController.dispose();
    recipientNameController.dispose();
    recipientNumberController.dispose();
    recipientInstructionsController.dispose();
  }

  void navigateToCreateRecipient(BuildContext context) {
    Routemaster.of(context).push('/create-recipient');
  }

  void navigateToCreateSender(BuildContext context) {
    Routemaster.of(context).push('/create-sender');
  }

  void createDelivery() {
    final user = ref.read(userProvider)!;
    ref.read(deliveryControllerProvider.notifier).createDelivery(
          user.name,
          recipientNameController.text.trim(),
          '797580932',
          recipientNumberController.text.trim(),
          senderInstructionsController.text.trim(),
          recipientInstructionsController.text.trim(),
          'senderLocation',
          'recipientLocation',
          '500',
          context,
        );
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.read(userProvider)!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Package'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: double.infinity,
              height: 340,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pick up details',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.location_on_rounded),
                      const SizedBox(width: 15),
                      Container(
                        height: 50,
                        width: 180,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tuskys",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Magadi Road, Ongata Rongai',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.info_outline_rounded),
                      const SizedBox(width: 15),
                      Container(
                        height: 50,
                        width: 180,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '797580932',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.note_add_rounded),
                      const SizedBox(width: 15),
                      Container(
                        width: 250,
                        height: 130,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Additional Information",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              controller: senderInstructionsController,
                              obscureText: false,
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                hintText:
                                    'Enter additional details for the driver',
                              ),
                              maxLength: 150,
                              maxLines: 4,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Center(
                  //   child: TextButton(
                  //     onPressed: () {},
                  //     style: TextButton.styleFrom(
                  //       minimumSize: const Size(200, 40),
                  //       backgroundColor: Colors.white,
                  //       textStyle: Theme.of(context).textTheme.bodySmall,
                  //       foregroundColor: Colors.black,
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(30),
                  //         side: const BorderSide(color: Colors.grey),
                  //       ),
                  //     ),
                  //     child: const Text('Confirm sender'),
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 405,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Drop off details',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.location_on_rounded),
                      const SizedBox(width: 15),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        width: 180,
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Quickmart",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Magadi Road, Kiserian',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.info_outline_rounded),
                      const SizedBox(width: 15),
                      Container(
                        width: 250,
                        height: 120,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: recipientNameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                hintText: 'Enter recipient name',
                              ),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            TextFormField(
                              controller: recipientNumberController,
                              obscureText: false,
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                hintText: 'Enter recipient phone',
                              ),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.note_add_rounded),
                      const SizedBox(width: 15),
                      Container(
                        width: 250,
                        height: 130,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Extra Info",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              controller: recipientInstructionsController,
                              obscureText: false,
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                hintText:
                                    'Enter additional details for the driver',
                              ),
                              maxLength: 150,
                              maxLines: 4,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Center(
                  //   child: TextButton(
                  //     onPressed: () {},
                  //     style: TextButton.styleFrom(
                  //       minimumSize: const Size(200, 40),
                  //       backgroundColor: Colors.white,
                  //       textStyle: Theme.of(context).textTheme.bodySmall,
                  //       foregroundColor: Colors.black,
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(30),
                  //         side: const BorderSide(color: Colors.grey),
                  //       ),
                  //     ),
                  //     child: const Text('Confirm recipient'),
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButtonWidget(
              onPressed: createDelivery,
              buttonText: 'Confirm delivery',
            ),
          ],
        ),
      ),
    );
  }
}
