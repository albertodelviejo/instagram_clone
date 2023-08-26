import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_dependency.dart';
import '../cubit/login_cubit.dart';
import '../widgets/instagram_button.dart';
import '../widgets/instagram_logo.dart';
import '../widgets/instagram_text_field.dart';
import '../widgets/login_appbar.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(88),
        child: LoginAppBar(),
      ),
      body: BlocProvider(
        create: (_) => sl<LoginCubit>(),
        child: const LoginScreenBody(),
      ),
    );
  }
}

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const InstagramLogo(),
              const SizedBox(height: 39.0),
              const InstagramTextField(hintText: 'Username'),
              const SizedBox(height: 12.0),
              const InstagramTextField(hintText: 'Password'),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: null,
                    child: Text('Forgot Password?'),
                  )
                ],
              ),
              InstagramButton(
                onPressed: () {},
                title: 'Log In',
              ),
              const SizedBox(height: 12.0),
              InstagramButton(
                onPressed: () {},
                title: 'Log In with Facebook',
              ),
              const SizedBox(height: 12.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: null,
                    child: Text('Sign Up.'),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
