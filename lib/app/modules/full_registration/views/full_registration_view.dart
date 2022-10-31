import 'package:badhan_apps/app/core/theme/app_theme.dart';
import 'package:badhan_apps/app/modules/full_registration/views/widgets/custome_dialog_box.dart';
import 'package:badhan_apps/app/modules/registration/widgets/custome_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/full_registration_controller.dart';

class FullRegistrationView extends GetView<FullRegistrationController> {
  const FullRegistrationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: ScrollConfiguration(
          behavior: MaterialScrollBehavior().copyWith(overscroll: false),
          child: ListView(
           
            padding: const EdgeInsets.all(16),
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                "Full Registration",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    color: ColorConstants.kSecondaryColor,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                    // key: _formKey,
                    child: Column(
                  children: [
                    PhysicalModel(
                      color: ColorConstants.kPrimaryColor,
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: CustomeTextField(
                        hintText: 'Enter Your Name',
                        labelText: 'Name',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    PhysicalModel(
                      color: ColorConstants.kPrimaryColor,
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: CustomeTextField(
                        hintText: 'Select your blood group',
                        labelText: 'Blood Group',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    PhysicalModel(
                      color: ColorConstants.kPrimaryColor,
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: CustomeTextField(
                        hintText: 'Select you Date of Birth',
                        labelText: "Date of Birth",
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    PhysicalModel(
                      color: ColorConstants.kPrimaryColor,
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: CustomeTextField(
                        hintText: 'Select Your Last Donation Date',
                        labelText: 'Last Donation Date',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    PhysicalModel(
                      color: ColorConstants.kPrimaryColor,
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: CustomeTextField(
                        hintText: 'Select Your Gender',
                        labelText: 'Gender',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    PhysicalModel(
                      color: ColorConstants.kPrimaryColor,
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: CustomeTextField(
                        hintText: 'Enter your Emergency Contact Number',
                        labelText: 'Emergency Contact Number',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    PhysicalModel(
                      color: ColorConstants.kPrimaryColor,
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: CustomeTextField(
                        hintText: 'Select Your Present Thana',
                        labelText: 'Thana (Present Location)',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    PhysicalModel(
                      color: ColorConstants.kPrimaryColor,
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: CustomeTextField(
                        hintText: 'Select your Permanent Location',
                        labelText: 'Permanent Location',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    PhysicalModel(
                      color: ColorConstants.kPrimaryColor,
                      elevation: 6.0,
                      borderRadius: BorderRadius.circular(15.0),
                      child: CustomeTextField(
                        hintText: 'Enter you Email Address',
                        labelText: 'Email Address',
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TermsAndCondition(),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({Key? key}) : super(key: key);

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool agree = false;
  void _doSomething() {
    // Do something
    Get.toNamed('/chat-ui');
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Material(
            child: Checkbox(
              value: agree,
              onChanged: (value) {
                setState(() {
                  agree = value ?? false;
                });
              },
            ),
          ),
          Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6),
            child: RichText(
                text: TextSpan(
                    text: 'I do agree to',
                    style: TextStyle(color: ColorConstants.kBlackColor),
                    children: [
                  TextSpan(
                      text: " terms and conditions",
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => CustomDialog(
                                    title: "Terms and Conditions",
                                    content:
                                        "'I’m giving my consent to be enlisted in Badhan Donor’s List so anyone can call me for Blood donation when it is required'",
                                  ));
                          //   Get.defaultDialog(

                          //       cancel: Positioned(
                          //           top: 5,
                          //           right: 5,
                          //           child: InkWell(
                          //               onTap: () {
                          //                 Get.back();
                          //               },
                          //               child: Icon(Icons.cancel))),
                          //       onCancel: () {},
                          //       title: 'Terms and Condition',
                          //       content: Container(
                          //         constraints: BoxConstraints(
                          //             maxWidth:
                          //                 MediaQuery.of(context).size.width *
                          //                     0.6),
                          //         child: Text(
                          //             "I’m giving my consent to be enlisted in Badhan Donor’s List so anyone can call me for Blood donation when it is required"),
                          //       ));
                        })
                ])),
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
              side: BorderSide(color: ColorConstants.kSecondaryColor),
              primary: ColorConstants.kSecondaryColor,
              onSurface: ColorConstants.kSecondaryColor,
              minimumSize: Size(250, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: agree ? _doSomething : null,
          child: const Text(
            'Continue',
            style: TextStyle(color: ColorConstants.kBlackColor),
          ))
    ]);
  }
}
