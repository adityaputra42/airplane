part of 'pages.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 30,
                        ),
                        width: double.infinity,
                        child: Text(
                          'My Wallet',
                          style: blacTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 18),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 3, bottom: 30),
                        width: double.infinity,
                        child: Text(
                          'Check your wallet balance here',
                          style: greyTextStyle.copyWith(
                            fontWeight: light,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 70,
                  height: 40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: greenColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: () {},
                    child: Text(
                      'Top Up',
                      style: whiteTextStyle.copyWith(fontWeight: medium),
                    ),
                  ),
                )
              ],
            ),

            BonusCard(),
            Container(
              margin: const EdgeInsets.only(bottom: 20, top: 30),
              child: Text(
                'Ricent transaction',
                style:
                    blacTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
            ),
            Container(
              width: double.infinity,
              height: 90,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: inputTextColor,
              ),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 70,
                    margin: const EdgeInsets.only(right: 18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: primaryColor
                        // image: const DecorationImage(
                        //     image: AssetImage('assets/bg_topup.png')),
                        ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Top Up Wallet',
                        style: blacTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        NumberFormat.currency(
                                locale: 'ID_id',
                                decimalDigits: 0,
                                symbol: 'IDR ')
                            .format(250000),
                        style: greenTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Saturday, 27 Aug 2021',
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                    ],
                  )
                ],
              ),
            )
            // SizedBox(
            //   width: double.infinity,
            //   height: MediaQuery.of(context).size.height - 235 - heightCard,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 4,
            //     itemBuilder: (_, index) => Container(
            //         // margin: EdgeInsets.only(
            //         //     left: (index == 0) ? defaultMargin : 0,
            //         //     right: (index == destination1.length - 1)
            //         //         ? defaultMargin
            //         //         : 16),
            //         child: CardPopularDestination(destination1[index])),
            //   ),
            // )
          ],
        ),
      )),
    );
  }
}
