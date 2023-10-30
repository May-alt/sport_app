import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_app/main_layouts.dart';
import 'package:sport_app/net_work/cache_helper.dart';
import 'package:sport_app/ui/authentification/login/cubit/login_cubit.dart';
import 'package:sport_app/ui/authentification/register/register.dart';
import 'package:sport_app/ui/pages/home/home.dart';
import 'package:sport_app/utils/function.dart';
import 'package:sport_app/utils/styles/colors.dart';
import 'package:sport_app/utils/reusibales_widgets/reus_widgets.dart';

class LoginViews extends StatefulWidget {
  const LoginViews({Key? key}) : super(key: key);

  @override
  State<LoginViews> createState() => _LoginViewsState();
}

class _LoginViewsState extends State<LoginViews> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  //Loading
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginLoadingState) {
            ShowProgressIdicator(context);
            //   print("LoginLoadingState");
          } else if (state is LoginSuccesState) {
            CacheHelper.saveData(key: 'uid', value: state.uid).then((value) {
              NavToAndRemove(context, MainLayouts());
              tostShow(
                  msg: "Welcome to your account",
                  state: TostOptionState.SUCCESS);
            });
          }
        },
        builder: (context, state) {
          var cubit = LoginCubit.get(context);

          return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: ReusPaddingAll(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeInRight(
                        child: Container(
                          height: 300,
                          child: Image.asset(
                            "assets/running.png",
                          ),
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
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        !value.contains('@')) {
                                      return " email Is Empty";
                                    }
                                  },
                                  prefixIcon: Icon(Icons.email, color: Cpurple),
                                  controller: emailController,
                                  hintText: "Foulen_Ben Foulen@gmail.com",
                                ),
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
                                      cubit.changeLoginPasswordVisibility();
                                    }),
                                SizedBox(
                                  height: 20.0,
                                ),
                                reusAuthButtom(
                                    onPressed: () {
                                      if (formkey.currentState!.validate()) {
                                        print(emailController);
                                        print(passwordController);

                                        cubit.UserLogin(
                                            email: emailController.text.trim(),
                                            password:
                                                passwordController.text.trim());
                                      }
                                    },
                                    text: "Sign In"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      reusTexyRowAuthNav(
                        text: "Don't have an account?",
                        btntext: "Sign Up",
                        textStyle: Theme.of(context).textTheme.bodyText1,
                        onPressed: () {
                          NavToAotherPage(context, RegisterViews());
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
