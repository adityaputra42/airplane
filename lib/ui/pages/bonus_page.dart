part of 'pages.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Container(
        margin:
            EdgeInsets.only(top: 80, left: defaultMargin, right: defaultMargin),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BonusCard(),
            SizedBox(
              height: 80,
            ),
            Text(
              'Big Bonus 🎉',
              style: blacTextStyle.copyWith(fontWeight: semiBold, fontSize: 32),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We give you early credit so that\nyou can buy a flight ticket',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
            ),
            CustomButton(
              title: 'Start Fly Now',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
              },
              width: 220,
              margin: EdgeInsets.only(top: 50),
            )
          ],
        ),
      )),
    );
  }
}
