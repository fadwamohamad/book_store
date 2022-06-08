import 'package:book_store/layout/home_layout.dart';
import 'package:book_store/modules/login/cubit/cubit.dart';
import 'package:book_store/modules/login/cubit/states.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/component/components.dart';
import '../register/register.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginStates>(
      listener: (context, state) {
        if (state is LoginErrorState) {
          showToast(text: state.error, state: ToastStates.ERROR);
        }
        if (state is LoginSuccessState) {
            navigateTo(context, HomeLayout());
        }
      },
    builder: (context, state) {
      return Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'LOGIN',
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline4!
                          .copyWith(
                        color: Color(0xFFFF4D03F),
                        fontWeight: FontWeight.w800
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
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
                    const SizedBox(
                      height: 30.0,
                    ),
                    defaultTextFormField(
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'Password is too short';
                        }
                      },
                      label: 'Password',
                      prefix: Icons.lock_outline,
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    defaultButton(
                      function: () {
                        if (formKey.currentState!.validate()) {
                          LoginCubit.get(context).userLogin(
                              email: emailController.text,
                              password: passwordController.text);
                        }
                      },
                      text: 'Login',
                      isUpperCase: true,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                        ),
                        defaultTextButton(
                          function: () {
                             navigateTo(context, Register());
                          },
                          text: 'Register',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }  );
    }
  }

