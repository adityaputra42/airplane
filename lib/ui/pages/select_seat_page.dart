part of 'pages.dart';

class SelectSeatPage extends StatelessWidget {
  final DestinationModel destination;

  SelectSeatPage(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 30),
            child: Text(
              'Select Your\nFavorite Seat',
              style: blacTextStyle.copyWith(fontWeight: semiBold, fontSize: 24),
            ),
          ),
          Row(
            children: [
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(width: 1, color: primaryColor)),
              ),
              Text(
                'Available',
                style: blacTextStyle,
              ),
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(right: 6, left: 10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Text(
                'Selected',
                style: blacTextStyle,
              ),
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(right: 6, left: 10),
                decoration: BoxDecoration(
                  color: unavailableColor,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Text(
                'Unavailable',
                style: blacTextStyle,
              ),
            ],
          ),
          BlocBuilder<SeatCubit, List<String>>(
            builder: (context, state) {
              return Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1, blurRadius: 1, color: Colors.black12)
                    ]),
                child: Column(
                  children: [
                    // NOTE: Seat Indikator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                'A',
                                style: greyTextStyle.copyWith(fontSize: 16),
                              ),
                            )),
                        Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                'B',
                                style: greyTextStyle.copyWith(fontSize: 16),
                              ),
                            )),
                        Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                ' ',
                                style: greyTextStyle.copyWith(fontSize: 16),
                              ),
                            )),
                        Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                'C',
                                style: greyTextStyle.copyWith(fontSize: 16),
                              ),
                            )),
                        Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                'D',
                                style: greyTextStyle.copyWith(fontSize: 16),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // NOTE: Seat 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SeatItem(
                          id: 'A1',
                        ),
                        SeatItem(
                          id: 'B1',
                        ),
                        Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                '1',
                                style: greyTextStyle.copyWith(fontSize: 16),
                              ),
                            )),
                        SeatItem(
                          id: 'C1',
                        ),
                        SeatItem(
                          id: 'D1',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    // Note: Seat 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SeatItem(
                          id: 'A2',
                        ),
                        SeatItem(
                          id: 'B2',
                          isAvailable: false,
                        ),
                        Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                '2',
                                style: greyTextStyle.copyWith(fontSize: 16),
                              ),
                            )),
                        SeatItem(
                          id: 'C2',
                          isAvailable: false,
                        ),
                        SeatItem(
                          id: 'D2',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    // NOTE: Seat 3
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SeatItem(
                          id: 'A3',
                        ),
                        SeatItem(
                          id: 'B3',
                        ),
                        Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                '3',
                                style: greyTextStyle.copyWith(fontSize: 16),
                              ),
                            )),
                        SeatItem(
                          id: 'C3',
                        ),
                        SeatItem(
                          id: 'D3',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    // NOTE: Seat 4
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SeatItem(
                          id: 'A4',
                        ),
                        SeatItem(
                          id: 'B4',
                        ),
                        Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                '4',
                                style: greyTextStyle.copyWith(fontSize: 16),
                              ),
                            )),
                        SeatItem(
                          id: 'C4',
                          isAvailable: false,
                        ),
                        SeatItem(
                          id: 'D4',
                          isAvailable: false,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    // NOTE: Seat 5
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SeatItem(
                          id: 'A5',
                          isAvailable: false,
                        ),
                        SeatItem(
                          isAvailable: false,
                          id: 'B5',
                        ),
                        Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                '5',
                                style: greyTextStyle.copyWith(fontSize: 16),
                              ),
                            )),
                        SeatItem(
                          id: 'C5',
                        ),
                        SeatItem(
                          id: 'D5',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Your Seat',
                          style: greyTextStyle.copyWith(fontWeight: light),
                        )),
                        Text(
                          state.join(', '),
                          style: blacTextStyle.copyWith(
                              fontWeight: medium, fontSize: 16),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Total',
                          style: greyTextStyle.copyWith(fontWeight: light),
                        )),
                        Text(
                          NumberFormat.currency(
                                  locale: 'ID_id',
                                  symbol: 'IDR ',
                                  decimalDigits: 0)
                              .format(state.length * destination.price),
                          style: purpleTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          BlocBuilder<SeatCubit, List<String>>(
            builder: (context, state) {
              return CustomButton(
                title: 'Continue too Checkout',
                onPressed: () {
                  int price = destination.price * state.length;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutPage(
                        TransactionModel(
                          destination: destination,
                          amountOfTraveler: state.length,
                          selectedSeat: state.join(', '),
                          insurance: true,
                          refundable: false,
                          vat: 0.15,
                          price: price,
                          grandTotal: price + (price * 0.15).toInt(),
                        ),
                      ),
                    ),
                  );
                },
                margin:
                    EdgeInsets.only(top: 30, bottom: 45, left: 24, right: 24),
              );
            },
          )
        ],
      )),
    );
  }
}
