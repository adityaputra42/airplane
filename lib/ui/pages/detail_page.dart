part of 'pages.dart';

class DetailPage extends StatelessWidget {
  final DestinationModel destination;
  const DetailPage(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(destination.imageUrl),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: double.infinity,
            height: 214,
            margin: EdgeInsets.only(top: 236),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.white.withOpacity(0),
              Colors.black.withOpacity(0.85)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          SafeArea(
              child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: double.infinity,
                    height: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/emblem.png'))),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 246, left: 12, right: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                destination.name,
                                style: whiteTextStyle.copyWith(
                                    fontSize: 24, fontWeight: semiBold),
                              ),
                              Text(
                                destination.city,
                                style: whiteTextStyle.copyWith(
                                    fontWeight: light, fontSize: 16),
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
                              size: 24,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              destination.rate.toString(),
                              style: whiteTextStyle.copyWith(
                                  fontWeight: medium, fontSize: 16),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    margin: EdgeInsets.only(top: 30, bottom: 30),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black12)
                        ],
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: blacTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          destination.about,
                          style: blacTextStyle.copyWith(height: 2),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Photos',
                          style: blacTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                      image: AssetImage('assets/image2.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                      image: AssetImage('assets/image5.png'),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: DecorationImage(
                                      image: AssetImage('assets/image4.png'),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Interest',
                          style: blacTextStyle.copyWith(
                              fontWeight: semiBold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InterestItem(title: 'Kids Park'),
                                SizedBox(
                                  height: 10,
                                ),
                                InterestItem(title: 'Museum City'),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InterestItem(title: 'Honor Bridge'),
                                SizedBox(
                                  height: 10,
                                ),
                                InterestItem(title: 'Central Mall'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                NumberFormat.currency(
                                        locale: 'ID_id',
                                        symbol: 'IDR ',
                                        decimalDigits: 0)
                                    .format(destination.price),
                                style: blacTextStyle.copyWith(
                                    fontWeight: medium, fontSize: 18),
                              ),
                              Text(
                                'Per Orang',
                                style:
                                    greyTextStyle.copyWith(fontWeight: light),
                              )
                            ],
                          ),
                        ),
                        CustomButton(
                          title: 'Book Now',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SelectSeatPage(destination)));
                          },
                          width: 170,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
