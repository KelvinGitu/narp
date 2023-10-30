import 'package:delivery_app/common/widgets/elevated_button_widget.dart';
import 'package:delivery_app/features/authentication/controller/auth_controller.dart';
import 'package:delivery_app/features/delivery/controller/delivery_controller.dart';
// import 'package:delivery_app/features/delivery/controller/recipient_controller.dart';
// import 'package:delivery_app/features/delivery/controller/sender_controller.dart';
// import 'package:delivery_app/features/delivery/repository/delivery_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';
 
class ReceivePackage extends ConsumerStatefulWidget {
  const ReceivePackage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ReceivePackageState();
}

class _ReceivePackageState extends ConsumerState<ReceivePackage> {
  final TextEditingController senderInstructionsController =
      TextEditingController();
  final TextEditingController senderNameController = TextEditingController();
  final TextEditingController senderNumberController = TextEditingController();

  final TextEditingController recipientNameController = TextEditingController();
  final TextEditingController recipientInstructionsController =
      TextEditingController();
  final TextEditingController recipientNumberController =
      TextEditingController();
  @override
  void dispose() {
    super.dispose();
    senderInstructionsController.dispose();
    senderNameController.dispose();
    senderNumberController.dispose();
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

  // void createSender() {
  //   final user = ref.read(userProvider)!;
  //   ref.read(senderControllerProvider.notifier).createSender(
  //         user.name,
  //         '797580932',
  //         senderInstructionsController.text.trim(),
  //         context,
  //       );
  // }

  // void createRecipient() {
  //   ref.read(recipientControllerProvider.notifier).createRecipient(
  //         recipientNameController.text.trim(),
  //         recipientNumberController.text.trim(),
  //         recipientInstructionsController.text.trim(),
  //         context,
  //       );
  // }

  void createDelivery() {
    final user = ref.read(userProvider)!;
    ref.read(deliveryControllerProvider.notifier).createDelivery(
          senderNameController.text.trim(),
          user.name,
          senderNumberController.text.trim(),
          '797580932',
          senderInstructionsController.text.trim(),
          recipientInstructionsController.text.trim(),
          'senderLocation',
          'recipientLocation',
          '400',
          context,
        );
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.read(userProvider)!;
    // final sender = ref.read(senderDetailsProvider);
    // final recipient = ref.read(recipientDetailsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Receive Package'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 420,
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
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        height: 50,
                        width: 180,
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
                        height: 120,
                        width: 250,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: senderNameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                hintText: 'Enter sender\'s name',
                              ),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            TextFormField(
                              controller: senderNumberController,
                              obscureText: false,
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                hintText: 'Enter sender\'s phone',
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
                        height: 90,
                        width: 250,
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
                              controller: senderInstructionsController,
                              obscureText: false,
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                hintText:
                                    'Enter additional details for the driver',
                              ),
                              maxLength: 40,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        minimumSize: const Size(200, 40),
                        backgroundColor: Colors.white,
                        textStyle: Theme.of(context).textTheme.bodySmall,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: const BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: const Text('Confirm sender'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 2),
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Drop off',
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
                      // sender.hasValue
                      //     ? sender.when(
                      //         data: (data) => Container(
                      //           height: 50,
                      //           width: 180,
                      //           margin:
                      //               const EdgeInsets.symmetric(horizontal: 5),
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             children: [
                      //               Text(
                      //                 "Additional Information",
                      //                 style: Theme.of(context)
                      //                     .textTheme
                      //                     .bodySmall!
                      //                     .copyWith(
                      //                         fontWeight: FontWeight.bold),
                      //               ),
                      //               Text(
                      //                 data.senderInstructions,
                      //                 style:
                      //                     Theme.of(context).textTheme.bodySmall,
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //         error: (error, stackTrace) =>
                      //             ErrorText(error: error.toString()),
                      //         loading: () => const Loader(),
                      //       )
                      Container(
                        height: 90,
                        width: 250,
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
                              controller: recipientInstructionsController,
                              obscureText: false,
                              decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                hintText:
                                    'Enter additional details for the driver',
                              ),
                              maxLength: 40,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        minimumSize: const Size(200, 40),
                        backgroundColor: Colors.white,
                        textStyle: Theme.of(context).textTheme.bodySmall,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: const BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: const Text('Confirm recipient'),
                    ),
                  ),
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
