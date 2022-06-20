part of 'pages.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
            child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Text(
                    'Welcome Back\nExplorer!',
                    style: blacTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  margin: EdgeInsets.only(top: 40, bottom: 40),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(defaultRadius),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 2,
                            color: Colors.black12)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputText(
                          obscureText: false,
                          title: 'Email Address',
                          hintText: 'Your Email adrress',
                          controller: emailController),

                      InputText(
                          obscureText: true,
                          title: 'Password',
                          hintText: 'Your password',
                          controller: passwordController),

                      // Button Sign Up
                      BlocConsumer<AuthCubit, AuthState>(
                        listener: (context, state) {
                          if (state is AuthSucces) {
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/main', (route) => false);
                          } else if (state is AuthFailed) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: redColor,
                                content: Text(
                                  state.error,
                                  style: whiteTextStyle,
                                ),
                              ),
                            );
                          }
                        },
                        builder: (context, state) {
                          if (state is AuthLoading) {
                            return Center(
                              child: loadingIndicator,
                            );
                          }
                          return CustomButton(
                            title: 'Sign In',
                            margin: EdgeInsets.only(top: 10),
                            onPressed: () {
                              context.read<AuthCubit>().signIn(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  );
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    bottom: 70,
                  ),
                  child: Text(
                    'Create New Account',
                    style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ],
        )));
  }
}
