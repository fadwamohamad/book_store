import 'package:book_store/modules/login/login.dart';
import 'package:flutter/material.dart';

import '../../shared/component/components.dart';
import 'cubit/cubit.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'REGISTER',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Color(0xFFFF4D03F),
                          fontWeight: FontWeight.w800
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    defaultTextFormField(
                      controller: nameController,
                      type: TextInputType.name,
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please enter your User Name';
                        }
                      },
                      label: 'User Name',
                      prefix: Icons.person,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    defaultTextFormField(
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email address';
                        }
                      },
                      label: 'Email Address',
                      prefix: Icons.email_outlined,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    defaultTextFormField(
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      //suffix: SocialRegisterCubit.get(context).suffix,
                      onSubmit: (value) {},
                      //isPassword:
                      //SocialRegisterCubit.get(context).isPassword,
                      suffixPressed: () {
                        // SocialRegisterCubit.get(context)
                        //     .changePasswordVisibility();
                      },
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'Password is too short';
                        }
                      },
                      label: 'Password',
                      prefix: Icons.lock_outline,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    defaultTextFormField(
                      controller: phoneController,
                      type: TextInputType.phone,
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please enter your phone';
                        }
                      },
                      label: 'Phone',
                      prefix: Icons.phone,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                defaultButton(
                  function: () {
                    if (formKey.currentState!.validate()) {
                      RegisterCubit.get(context).userRegister(
                        name: nameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                        phone: phoneController.text,
                      );
                    }
                  },
                  text: 'register',
                  isUpperCase: true,
                ),
                    defaultTextButton(function: (){
                      navigateTo(context, Login());
                    }, text: 'Back')

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
