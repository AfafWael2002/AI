// Payment Page (RegisterScreen)

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:welcome_page/Payment%20with%20API/cubit.dart';
import 'package:welcome_page/Payment%20with%20API/default_button.dart';
import 'package:welcome_page/Payment%20with%20API/default_textformfiled.dart';
import 'package:welcome_page/Payment%20with%20API/show_snack.dart';
import 'package:welcome_page/Payment%20with%20API/state.dart';
import 'package:welcome_page/Payment%20with%20API/toggle_screen.dart';
import 'package:welcome_page/auth/custom_scaffold.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  final double cartTotal;

  RegisterScreen({Key? key, required this.cartTotal}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController priceController =
      TextEditingController(text: ''); // Initialize price controller
  TextEditingController couponController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    priceController.text =
        (cartTotal * 100).toString(); // Set cart total to price controller

    return BlocProvider(
      create: (context) => PaymentCubit()..getAuthToken(),
      child: CustomScaffold(
        body: Scaffold(
          appBar: AppBar(
            title: const Text('Payment Integration'),
            backgroundColor: const Color.fromARGB(255, 22, 116, 194),
            centerTitle: true,
          ),
          body: BlocConsumer<PaymentCubit, PaymentStates>(
            listener: (context, state) {
              if (state is PaymentRequestTokenSuccessStates) {
                showSnackBar(
                  context: context,
                  text: 'Success get final token',
                  color: Colors.blue,
                );
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ToggleScreen(),
                ));
              }
            },
            builder: (context, state) {
              var cubit = PaymentCubit.get(context);
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'images/Delivery.png',
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.42,
                        ),
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: DefaultTextFormField(
                                    controller: firstNameController,
                                    type: TextInputType.name,
                                    hintText: 'First name',
                                    prefix: Icons.person,
                                    validate: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your first name!';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: DefaultTextFormField(
                                    controller: lastNameController,
                                    validate: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your last name !';
                                      }
                                      return null;
                                    },
                                    type: TextInputType.name,
                                    hintText: 'Last name',
                                    prefix: Icons.person,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            DefaultTextFormField(
                              controller: emailController,
                              validate: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email  !';
                                }
                                return null;
                              },
                              type: TextInputType.emailAddress,
                              hintText: 'Email',
                              prefix: Icons.email,
                            ),
                            const SizedBox(height: 10),
                            DefaultTextFormField(
                              controller: phoneController,
                              validate: (String? value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your phone !';
                                }
                                return null;
                              },
                              type: TextInputType.number,
                              hintText: 'Phone',
                              prefix: Icons.phone,
                            ),
                            const SizedBox(height: 10),
                            Row(children: [
                              Expanded(
                                child: UneditableTextFormField(
                                  controller: priceController,
                                  validate: (String? value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your price !';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.number,
                                  hintText: 'Price',
                                  prefix: Icons.monetization_on,
                                ),
                              ),
                              Expanded(
                                  child: const Text(
                                "Egyptian Cents",
                                textAlign: TextAlign.center,
                              )),
                            ]),
                            const SizedBox(height: 10),
                            DefaultTextFormField(
                              controller: couponController,
                              type: TextInputType.text,
                              hintText: 'Do you have a coupon?',
                              prefix: Icons.confirmation_number,
                              validate: (String? value) {
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            DefaultButton(
                              buttonWidget:
                                  state is! PaymentRequestTokenLoadingStates
                                      ? const Text(
                                          'Register',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            letterSpacing: 1.6,
                                          ),
                                        )
                                      : const Center(
                                          child: CircularProgressIndicator(),
                                        ),
                              function: () {
                                if (formKey.currentState!.validate()) {
                                  cubit.getOrderRegistrationID(
                                    firstName: firstNameController.text,
                                    lastName: lastNameController.text,
                                    email: emailController.text,
                                    phone: phoneController.text,
                                    price: priceController.text,
                                    // coupon: couponController.text, // Pass coupon value
                                  );
                                }
                              },
                              width: MediaQuery.of(context).size.width,
                              radius: 10.0,
                              backgroundColor:
                                  const Color.fromARGB(255, 22, 116, 194),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
