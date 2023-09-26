import 'package:delivery_app/views/widgets/package_details_form.dart';
import 'package:flutter/material.dart';

class SendPackage extends StatelessWidget {
  final TextEditingController _packageNameController = TextEditingController();
  final TextEditingController _packageSizeController = TextEditingController();

  SendPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Send/Receive Package',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Send Package',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Provide the following details for your package',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black.withOpacity(0.5),
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Sender\'s Name',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 5,
              ),
              PackageDetailsField(
                controller: _packageNameController,
                width: MediaQuery.of(context).size.width, hintText: '',
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Receiver\'s Name',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 5,
              ),
              PackageDetailsField(
                controller: _packageSizeController,
                width: MediaQuery.of(context).size.width, hintText: '',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sender\'s Phone',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      PackageDetailsField(
                        controller: _packageSizeController,
                        width: MediaQuery.of(context).size.width * 0.4, hintText: '',
                      ),
                    ],
                    
                  ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Receiver\'s Phone',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      PackageDetailsField(
                        controller: _packageSizeController,
                        width: MediaQuery.of(context).size.width * 0.4, hintText: '',
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pickup Location',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      PackageDetailsField(
                        controller: _packageSizeController,
                        width: MediaQuery.of(context).size.width * 0.4, hintText: '',
                      ),
                    ],
                    
                  ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dropoff Location',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      PackageDetailsField(
                        controller: _packageSizeController,
                        width: MediaQuery.of(context).size.width * 0.4, hintText: '',
                      ),
                    ],
                  ),
                ],
              ),
               const SizedBox(
                height: 10,
              ),
              Text(
                'Delivery Timeline',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 5,
              ),
              PackageDetailsField(
                controller: _packageNameController,
                width: MediaQuery.of(context).size.width, hintText: 'Select Type',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
