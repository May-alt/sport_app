import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/main_layouts.dart';
import 'package:sport_app/net_work/cache_helper.dart';
import 'package:sport_app/ui/authentification/login/login.dart';
import 'package:sport_app/ui/authentification/register/cubit/register_cubit.dart';
import 'package:sport_app/utils/function.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';
import 'package:sport_app/utils/styles/colors.dart';

class RegisterViews extends StatefulWidget {
  const RegisterViews({Key? key}) : super(key: key);

  @override
  State<RegisterViews> createState() => _RegisterViewsState();
}

class _RegisterViewsState extends State<RegisterViews> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  //Loading
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if (state is CreateUserSuccessState) {
            CacheHelper.saveData(key: 'uid', value: state.uid).then((value) {
              print("user create witth success");
              tostShow(
                  msg: "Welcome to your account",
                  state: TostOptionState.SUCCESS);
              NavToAndRemove(context, MainLayouts());
            });
          }
        },
        builder: (context, state) {
          var cubit = RegisterCubit().get(context);
          return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: ReusPaddingAll(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeInDown(
                        child: Container(
                          height: 300,
                          child: Image.asset("assets/running.png"),
                          //  color: Colors.amber,
                        ),
                      ),
                      FadeInUp(
                        delay: Duration(milliseconds: 800),
                        duration: Duration(milliseconds: 1500),
                        child: Form(
                          key: formkey,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                reusTextFormFiled(
                                    textStyle:
                                        Theme.of(context).textTheme.caption,
                                    keyboardType: TextInputType.text,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return " name Is Empty";
                                      }
                                    },
                                    prefixIcon:
                                        Icon(Icons.person, color: Cpurple),
                                    controller: nameController,
                                    hintText: "Foulen_Ben"),
                                SizedBox(
                                  height: 20,
                                ),
                                reusTextFormFiled(
                                    textStyle:
                                        Theme.of(context).textTheme.caption,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          !value.contains('@')) {
                                        return " email Is Empty";
                                      }
                                    },
                                    prefixIcon:
                                        Icon(Icons.email, color: Cpurple),
                                    controller: emailController,
                                    hintText: "Foulen_Ben Foulen@gmail.com"),
                                SizedBox(
                                  height: 20,
                                ),
                                reusTextFormFiled(
                                    textStyle:
                                        Theme.of(context).textTheme.caption,
                                    keyboardType: TextInputType.visiblePassword,
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.length < 6) {
                                        return " Password Is Empty";
                                      }
                                    },
                                    prefixIcon:
                                        Icon(Icons.lock, color: Cpurple),
                                    controller: passwordController,
                                    hintText: "012345678",
                                    obscureText: cubit.IspasswordShow,
                                    sufixicon: cubit.sufixicon,
                                    iconsColor: Cpurple,
                                    SufixPresVisibal: () {
                                      cubit.changeRegisterPasswordVisibility();
                                    }),
                                SizedBox(
                                  height: 20.0,
                                ),
                                reusAuthButtom(
                                    onPressed: () {
                                      if (formkey.currentState!.validate()) {
                                        // print(emailController);
                                        // print(passwordController);
                                        cubit.UserRegister(
                                            email: emailController.text,
                                            password: passwordController.text,
                                            rename: nameController.text);
                                      }
                                    },
                                    text: "Sign Up"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      reusTexyRowAuthNav(
                        text: "You have an account?",
                        btntext: "Sign In",
                        textStyle: Theme.of(context).textTheme.bodyText1,
                        onPressed: () {
                          NavToAotherPage(context, LoginViews());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
