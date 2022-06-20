part of 'shared.dart';

// Color Pallete
Color primaryColor = Color(0xff5008E9);
Color secondColor = Color(0xffE0D9FF);
Color blackColor = Color(0xff1F1449);
Color whiteColor = Color(0xffFFFFFF);
Color greyColor = Color(0xff9698A9);
Color greenColor = Color(0xff0EC3AE);
Color redColor = Color(0xffEB70A5);
Color backgroundColor = Color(0xffFAFAFA);
Color inaktifColor = Color(0xffDBD7EC);
Color secondBgColor = Color(0xFFF5F6FD);
Color inputTextColor = Color(0xFFEFF1FF);
Color unavailableColor = Color(0xFFEBECF1);

// TextStyle Pallete
TextStyle blacTextStyle = GoogleFonts.poppins(color: blackColor);

TextStyle whiteTextStyle = GoogleFonts.poppins(color: whiteColor);

TextStyle greyTextStyle = GoogleFonts.poppins(color: greyColor);

TextStyle greenTextStyle = GoogleFonts.poppins(color: greenColor);

TextStyle redTextStyle = GoogleFonts.poppins(color: redColor);

TextStyle purpleTextStyle = GoogleFonts.poppins(color: primaryColor);

//  FontWeight Palllete
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;

double defaultMargin = 24.0;
double defaultRadius = 17.0;

Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: primaryColor,
);
