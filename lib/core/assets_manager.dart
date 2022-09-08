import 'package:flutter/material.dart';

const String imagePath = 'assets/images';

class ImageAssets {
  // Splash page Image
  static String splashImage = '$imagePath/splash/splash.svg';

  // On Boarding page Images
  static String onBoardingScreen1 = '$imagePath/on_boarding/on_boarding_1.svg';
  static String onBoardingScreen2 = '$imagePath/on_boarding/on_boarding_2.svg';

  // login page Images
  static String phone = '$imagePath/login/phone.svg';
  static String eyeOff = '$imagePath/login/eye_off.svg';
  static String mail = '$imagePath/login/mail.svg';
  static String google = '$imagePath/login/google.svg';
  static String facebook = '$imagePath/login/Facebook.svg';
  static String offPassword = '$imagePath/login/off_password.svg';

  // verification page Images
  static Widget arrowBackAppBarIcon = const Icon(Icons.arrow_back_ios_rounded);

  // services - home page Images
  static String livingRoom = '$imagePath/services/living_room.jpg';
  static String spaceJoy = '$imagePath/services/space_joy.jpg';
  static String search = '$imagePath/services/search.svg';
  static String home = '$imagePath/services/home.svg';
  static String briefcase = '$imagePath/services/briefcase.svg';
  static String shoppingCart = '$imagePath/services/shopping_cart.svg';
  static String user = '$imagePath/services/user.svg';
  static String bell = '$imagePath/services/bell.svg';
  static String ellipse = '$imagePath/services/ellipse.svg';
  static String vector = '$imagePath/services/Vector.svg';

  // profile
  static String about = '$imagePath/services/profile/about.svg';
  static String address = '$imagePath/services/profile/address.svg';
  static String contact = '$imagePath/services/profile/contact.svg';
  static String favorites = '$imagePath/services/profile/favorites.svg';
  static String setting = '$imagePath/services/profile/setting.svg';
  static String share = '$imagePath/services/profile/share.svg';
  static String signOut = '$imagePath/services/profile/sign_out.svg';
  static String wallet = '$imagePath/services/profile/wallet.svg';
  static String profile = '$imagePath/services/profile/profile.jpg';

  // categories
  static String gardens = '$imagePath/services/categories/gardens.svg';
  static String electricity = '$imagePath/services/categories/electricity.svg';
  static String cleaning = '$imagePath/services/categories/cleaning.svg';
  static String plunger = '$imagePath/services/categories/plunger.svg';
  // static String plunger = '$imagePath/services/categories/plunger.svg';
}

class FontAssets {
  static const String fontFamilyPoppins = "Poppins";
  static const String fontFamilyRoboto = "Roboto";
  static const String fontFamilyCairo = "Cairo";
}

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

class FontSize {
  static const double s10 = 10.0;
  // static const double s12 = 12.0;
  // static const double s14 = 14.0;
  // static const double s16 = 16.0;
  // static const double s17 = 17.0;
  // static const double s18 = 18.0;
  // static const double s20 = 20.0;
  // static const double s22 = 22.0;
  // static const double s24 = 24.0;
  // static const double s26 = 26.0;
}
