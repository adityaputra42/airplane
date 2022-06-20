part of 'pages.dart';

class CheckoutPage extends StatelessWidget {
  final TransactionModel transaction;

  const CheckoutPage(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          // NOTE: Header
          Container(
            margin: EdgeInsets.only(top: 50),
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/tujuan.png'))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CGK',
                          style: blacTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 24),
                        ),
                        Text(
                          'Tanggerang',
                          style: greyTextStyle.copyWith(fontWeight: light),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'BLI',
                          style: blacTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 24),
                        ),
                        Text(
                          transaction.destination.city,
                          style: greyTextStyle.copyWith(fontWeight: light),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          // NOTE: DeatilCheckout
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 1, blurRadius: 1, color: Colors.black12)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOTE: Detail Destination
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                image: NetworkImage(
                                    transaction.destination.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                transaction.destination.name,
                                style: blacTextStyle.copyWith(
                                    fontWeight: medium, fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                transaction.destination.city,
                                style: greyTextStyle.copyWith(
                                  fontWeight: light,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star_rounded,
                          color: Colors.amber,
                          size: 20,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          transaction.destination.rate.toString(),
                          style: blacTextStyle.copyWith(fontWeight: medium),
                        )
                      ],
                    ),
                  ],
                ),
                // Note: Booking Information
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Booking Details',
                    style: blacTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InterestItem(title: 'Traveler'),
                    Text(
                      '${transaction.amountOfTraveler} Person',
                      style: blacTextStyle.copyWith(fontWeight: semiBold),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InterestItem(title: 'Seat'),
                    Text(
                      transaction.selectedSeat,
                      style: blacTextStyle.copyWith(fontWeight: semiBold),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InterestItem(title: 'Insurance'),
                    Text(
                      transaction.insurance ? 'YES' : 'NO',
                      style: transaction.insurance
                          ? greenTextStyle.copyWith(fontWeight: semiBold)
                          : redTextStyle.copyWith(fontWeight: semiBold),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InterestItem(title: 'Refundable'),
                    Text(
                      transaction.refundable ? 'YES' : 'NO',
                      style: transaction.refundable
                          ? greenTextStyle.copyWith(fontWeight: semiBold)
                          : redTextStyle.copyWith(fontWeight: semiBold),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InterestItem(title: 'VAT'),
                    Text(
                      '${(transaction.vat * 100).toStringAsFixed(0)}%',
                      style: blacTextStyle.copyWith(fontWeight: semiBold),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InterestItem(title: 'Price'),
                    Text(
                      NumberFormat.currency(
                              locale: 'ID_id', symbol: 'IDR ', decimalDigits: 0)
                          .format(transaction.price),
                      style: blacTextStyle.copyWith(fontWeight: semiBold),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InterestItem(title: 'Grand Total'),
                    Text(
                      NumberFormat.currency(
                              locale: 'ID_id', symbol: 'IDR ', decimalDigits: 0)
                          .format(transaction.grandTotal),
                      style: purpleTextStyle.copyWith(fontWeight: semiBold),
                    )
                  ],
                ),
              ],
            ),
          ),
          // NOTE: wallet
          BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              if (state is AuthSucces) {
                return Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  margin: EdgeInsets.only(top: 30, bottom: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 1,
                            color: Colors.black12)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment Details',
                        style: blacTextStyle.copyWith(
                            fontWeight: semiBold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 70,
                            margin: EdgeInsets.only(right: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.center,
                                colors: [
                                  Color(0xFF863FFB),
                                  primaryColor,
                                ],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  margin: EdgeInsets.only(right: 6),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/logo_airplane.png'))),
                                ),
                                Text(
                                  'Pay',
                                  style: whiteTextStyle.copyWith(
                                      fontWeight: medium, fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  NumberFormat.currency(
                                          locale: 'ID_id',
                                          symbol: 'IDR ',
                                          decimalDigits: 0)
                                      .format(state.user.balance),
                                  overflow: TextOverflow.ellipsis,
                                  style: blacTextStyle.copyWith(
                                      fontWeight: medium, fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Current Balance',
                                  style:
                                      greyTextStyle.copyWith(fontWeight: light),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              } else {
                return SizedBox();
              }
            },
          ),
          // NOTE: button Checkout
          BlocConsumer<TransactionCubit, TransactionState>(
            listener: (context, state) {
              if (state is TransactionSucces) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/succes', (route) => false);
              } else if (state is TransactionFailed) {
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
              if (state is TransactionLoading) {
                return Center(
                  child: loadingIndicator,
                );
              }
              return CustomButton(
                title: 'Pay Now',
                onPressed: () {
                  context
                      .read<TransactionCubit>()
                      .createTransaction(transaction);
                },
                margin: EdgeInsets.only(bottom: 30),
              );
            },
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              bottom: 45,
            ),
            child: Text(
              'Terms and Conditions',
              style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                  decoration: TextDecoration.underline),
            ),
          )
        ],
      )),
    );
  }
}
