part of 'pages.dart';

class MainPage extends StatefulWidget {
  final int initialPage;
  const MainPage({Key? key, this.initialPage = 0}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController(initialPage: 0);
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialPage;
    pageController = PageController(initialPage: widget.initialPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xFFFFFFFF),
          ),
          SafeArea(
              child: Container(
            color: backgroundColor,
          )),
          SafeArea(
              child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              this.setState(() {
                selectedIndex = index;
              });
            },
            children: [
              Center(
                child: HomePage(),
              ),
              Center(
                child: TicketPage(),
              ),
              Center(
                child: WalletPage(),
              ),
              Center(
                child: SettingPage(),
              )
            ],
          )),
          Container(
            margin: EdgeInsets.only(
                bottom: 24, right: defaultRadius, left: defaultRadius),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomBottomNavbar(
                  selectedIndex: selectedIndex,
                  onTap: (index) {
                    this.setState(() {
                      selectedIndex = index;
                    });
                    pageController.jumpToPage(selectedIndex);
                  },
                )),
          )
        ],
      ),
      // Navigation Bar
      // bottomNavigationBar: FlashyTabBar(
      //   iconSize: 24,
      //   items: [
      //     FlashyTabBarItem(
      //         activeColor: primaryColor,
      //         icon: Icon(Icons.home_rounded),
      //         title: Text(
      //           'Home',
      //           style: purpleTextStyle,
      //         )),
      //     FlashyTabBarItem(
      //         activeColor: primaryColor,
      //         icon: Icon(Icons.airplane_ticket_rounded),
      //         title: Text(
      //           'Ticket',
      //           style: purpleTextStyle,
      //         )),
      //     FlashyTabBarItem(
      //         activeColor: primaryColor,
      //         icon: Icon(Icons.account_balance_wallet_rounded),
      //         title: Text(
      //           'Wallet',
      //           style: purpleTextStyle,
      //         )),
      //     FlashyTabBarItem(
      //         activeColor: primaryColor,
      //         icon: Icon(Icons.settings),
      //         title: Text(
      //           'Setting',
      //           style: purpleTextStyle,
      //         )),
      //   ],
      //   animationCurve: Curves.linear,
      //   selectedIndex: selectedIndex,
      //   showElevation: true,
      //   animationDuration: Duration(milliseconds: 300),
      //   onItemSelected: (index) {
      //     setState(() {
      //       selectedIndex = index;
      //     });
      //     pageController.jumpToPage(selectedIndex);
      //   },
      // ),
    );
  }
}
