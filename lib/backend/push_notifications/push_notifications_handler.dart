import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Builder(
            builder: (context) => Image.asset(
              'assets/images/uni1.jpeg',
              fit: BoxFit.contain,
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'forgotPassword': (data) async => ForgotPasswordWidget(),
  'completeProfile': (data) async => CompleteProfileWidget(
        user: getParameter(data, 'user'),
      ),
  'onboarding': (data) async => OnboardingWidget(),
  'MY_profilePage': (data) async => hasMatchingParameters(data, {'userProfile'})
      ? MYProfilePageWidget(
          userProfile: getParameter(data, 'userProfile'),
        )
      : NavBarPage(initialPage: 'MY_profilePage'),
  'MY_Budgets': (data) async => NavBarPage(initialPage: 'MY_Budgets'),
  'paymentDetails': (data) async => PaymentDetailsWidget(
        transactionDetails: getParameter(data, 'transactionDetails'),
        userSpent: getParameter(data, 'userSpent'),
      ),
  'budgetDetails': (data) async => BudgetDetailsWidget(
        loanDetails: getParameter(data, 'loanDetails'),
      ),
  'transferComplete': (data) async => TransferCompleteWidget(),
  'transaction_ADD': (data) async => TransactionADDWidget(),
  'transferFunds': (data) async => TransferFundsWidget(
        accountNumber: getParameter(data, 'accountNumber'),
        accountType: getParameter(data, 'accountType'),
      ),
  'createloan': (data) async => CreateloanWidget(),
  'editProfile': (data) async => EditProfileWidget(
        userProfile: getParameter(data, 'userProfile'),
      ),
  'changePassword': (data) async => ChangePasswordWidget(),
  'notificationsSettings': (data) async => NotificationsSettingsWidget(),
  'privacyPolicy': (data) async => PrivacyPolicyWidget(),
  'tutorial_PROFILE': (data) async => TutorialPROFILEWidget(),
  'homePage_alt_1': (data) async => HomePageAlt1Widget(),
  'budget_DELETE': (data) async => BudgetDELETEWidget(
        budgetList: getParameter(data, 'budgetList'),
      ),
  'transaction_EDIT': (data) async => TransactionEDITWidget(
        transactionDetails: getParameter(data, 'transactionDetails'),
      ),
  'bank': (data) async => BankWidget(),
  'Phonesignin': (data) async => PhonesigninWidget(),
  'phonecode': (data) async => PhonecodeWidget(),
  'loanlist': (data) async => LoanlistWidget(),
  'borrowconfirm': (data) async => BorrowconfirmWidget(
        amount: getParameter(data, 'amount'),
      ),
  'paymentloan': (data) async => PaymentloanWidget(),
  'loanconfirm': (data) async => LoanconfirmWidget(
        amount: getParameter(data, 'amount'),
      ),
  'Loanconfirmcopy': (data) async => LoanconfirmcopyWidget(),
  'borrowconfirmCopyCopy': (data) async => BorrowconfirmCopyCopyWidget(
        amount: getParameter(data, 'amount'),
        profileImage: getParameter(data, 'profileImage'),
        borrowPeriodStart: getParameter(data, 'borrowPeriodStart'),
        borrowPeriodEnd: getParameter(data, 'borrowPeriodEnd'),
        numberOfPayments: getParameter(data, 'numberOfPayments'),
      ),
  'Profilesuccess': (data) async => ProfilesuccessWidget(),
  'Lendemoney': (data) async => LendemoneyWidget(
        amount: getParameter(data, 'amount'),
        rating: getParameter(data, 'rating'),
      ),
  'LendemoneyCopy': (data) async => LendemoneyCopyWidget(
        date: getParameter(data, 'date'),
        amount: getParameter(data, 'amount'),
      ),
  'lend_blank': (data) async => LendBlankWidget(),
  'splashCopy': (data) async => SplashCopyWidget(),
  'dateSelect': (data) async => DateSelectWidget(),
  'onboardingCopy': (data) async => OnboardingCopyWidget(),
  'lend_blankCopy': (data) async => LendBlankCopyWidget(),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
