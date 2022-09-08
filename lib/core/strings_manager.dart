import 'package:mono_ui/core/assets_manager.dart';
import 'package:mono_ui/features/onBoarding/domain/entities/on_boarding_entities.dart';

class AppStrings {
  static const noRouteFound = "No Route Found";

  // Splash page Strings
  static const String splashString = 'mono';

  // On Boarding page Strings
  static const String bodyString =
      'Lorem Ipsum is simply dummy text of the printing';

  static List<OnBoardingModel> boarding = [
    OnBoardingModel(
      image: ImageAssets.onBoardingScreen1,
      title: 'Find your service',
      body: bodyString,
    ),
    OnBoardingModel(
      image: ImageAssets.onBoardingScreen2,
      title: 'Apply your service with us !',
      body: bodyString,
    ),
  ];

  // login page strings
  static const String signInAppBarString = 'Sign in';
  static const String signInButtonString = 'sign in';
  static const String signInWelcomeString = 'Welcome back';
  static const String signUpAppBarString = 'Create New Account';
  static const String signUpButtonString = 'sign up';
  static const String signUpWelcomeString = 'Welcome';
  static const String phoneLabelString = 'phone number';
  static const String phoneHintString = '0598981984';
  static const String passwordLabelString = 'password';
  static const String passwordHintString = '0123456789';
  static const String forgotPasswordHintString = 'Forgot password?';
  static const String socialMediaLabelString = 'Or by social media';
  static const String noHaveAccountString = 'I have no account';
  static const String haveAccountString = 'I have account';
  static const String createAccountString = ' - create new account ';
  static const String guestButtonString = 'Enter as a guest';

  // forgot password page strings
  static const String forgotPasswordAppBarString = 'Forgot Password';
  static const String emailString = 'Email';
  static const String emailHintString = 'Google account';
  static const String googleString = 'Google account';
  static const String sendString = 'send';

  // Verification page strings
  static const String verificationAppBarString = 'verification';
  static const String verificationResendAppBarString = 'Resend';
  static const String verificationTimerAppBarString = '1:55 min';
  static const String verificationConfirmAppBarString = 'confirm';

  // Services - home page strings
  // categories
  static const String gardensString = 'Gardens';
  static const String electricityString = 'Electricity';
  static const String cleaningString = 'Cleaning';
  static const String plungerString = 'Plunger';
  // static const String plungerString = 'Plunger';

  static const String categoriesString = 'Categories';
  static const String seeAllString = 'See all';
  static const String offersAndPackagesString = 'Offers & packages';
  static const String designOfChildrenString =
      'Design of a children\'s room for 2 children';
  static const String eg256String = '256 EG';
  static const String interiorDesignString = 'Interior design';
  static const String designerIbrahimString = 'Designer / Ibrahim';
  static const String bookString = 'Book';
  static const String onHoldString = 'On Hold';
  static const String workString = 'Opening';
  static const String finishedString = 'canceled';
  static const String differentServicesString = 'Different services';

  static List<Map<String, String>> categoriesItems = [
    {
      'image': ImageAssets.gardens,
      'text': gardensString,
    },
    {
      'image': ImageAssets.electricity,
      'text': electricityString,
    },
    {
      'image': ImageAssets.cleaning,
      'text': cleaningString,
    },
    {
      'image': ImageAssets.plunger,
      'text': plungerString,
    },
    /***********************/
    {
      'image': ImageAssets.electricity,
      'text': electricityString,
    },
    {
      'image': ImageAssets.cleaning,
      'text': cleaningString,
    },
  ];
}
