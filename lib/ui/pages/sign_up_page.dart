part of 'pages.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController hobbyController = TextEditingController();

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
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    'Join us and get\nyour next journey',
                    style: blacTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                  margin: EdgeInsets.only(top: 30, bottom: 40),
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
                          title: 'Full Name',
                          hintText: 'Your Full Name',
                          controller: nameController),

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

                      InputText(
                          obscureText: false,
                          title: 'Hobby',
                          hintText: 'Your hobby',
                          controller: hobbyController),
                      // Button Sign Up
                      BlocConsumer<AuthCubit, AuthState>(
                        listener: (context, state) {
                          if (state is AuthSucces) {
                            Navigator.pushNamedAndRemoveUntil(
                                context, '/bonus', (route) => false);
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
                            title: 'Get Started',
                            margin: EdgeInsets.only(top: 10),
                            onPressed: () {
                              context.read<AuthCubit>().signUp(
                                  email: emailController.text,
                                  password: passwordController.text,
                                  name: nameController.text,
                                  hobby: hobbyController.text);
                            },
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
