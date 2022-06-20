part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<DestinationCubit>().fetchDestination();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<DestinationCubit, DestinationState>(
          listener: (context, state) {
            if (state is DestinationFailed) {
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
            if (state is DestinationSucces) {
              List<DestinationModel> destination1 =
                  state.destinations.sublist(0, 6);
              List<DestinationModel> destination2 =
                  state.destinations.sublist(6, 10);
              return ListView(
                children: [
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      if (state is AuthSucces) {
                        return Container(
                          margin: EdgeInsets.only(
                              top: 30,
                              right: defaultMargin,
                              left: defaultMargin),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hallo,\n${state.user.name}',
                                      style: blacTextStyle.copyWith(
                                          fontSize: 24, fontWeight: semiBold),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'Where to fly today?',
                                      style: greyTextStyle.copyWith(
                                          fontSize: 16, fontWeight: light),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 70,
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: primaryColor),
                                    shape: BoxShape.circle),
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/me.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                              )
                            ],
                          ),
                        );
                      } else {
                        return SizedBox();
                      }
                    },
                  ),
                  // List Destination
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: double.infinity,
                    height: 305,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: destination1.length,
                      itemBuilder: (_, index) => Container(
                          margin: EdgeInsets.only(
                              left: (index == 0) ? defaultMargin : 0,
                              right: (index == destination1.length - 1)
                                  ? defaultMargin
                                  : 16),
                          child: CardPopularDestination(destination1[index])),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: defaultMargin),
                          child: Text(
                            'New This Year',
                            style: blacTextStyle.copyWith(
                                fontWeight: semiBold, fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 94,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: destination2.length,
                            itemBuilder: (_, index) => Container(
                                margin: EdgeInsets.only(
                                    left: (index == 0) ? defaultMargin : 0,
                                    right: (index == destination1.length - 1)
                                        ? defaultMargin
                                        : 16),
                                child: CardNewDestination(destination2[index])),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return Center(
                child: loadingIndicator,
              );
            }
          },
        ),
      ),
    );
  }
}
