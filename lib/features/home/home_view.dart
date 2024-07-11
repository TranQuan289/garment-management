import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garment_management/common/base_state_delegate/base_state_delegate.dart';
import 'package:garment_management/features/bill/notifier/profile_notifier.dart';
import 'package:garment_management/utils/color_utils.dart';
import 'package:garment_management/utils/routes/routes.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  BaseStateDelegate<HomeView, ProfileNotifier> createState() =>
      _HomeViewState();
}

class _HomeViewState extends BaseStateDelegate<HomeView, ProfileNotifier>
    with AutomaticKeepAliveClientMixin {
  @override
  void initNotifier() {
    notifier = ref.read(profileNotifierProvider.notifier);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: ColorUtils.primaryBackgroundColor,
      appBar: AppBar(
        backgroundColor: ColorUtils.primaryBackgroundColor,
        title: Text(
          'Trang chủ',
          style: TextStyle(
            color: ColorUtils.primaryColor,
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.only(bottom: 40),
        child: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Profile',
                        style: TextStyle(fontSize: 20),
                      ),
                      IconButton(
                          onPressed: () {
                            Routes.goToSignInScreen(context);
                          },
                          icon: Icon(Icons.logout))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          child: Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text('Hello, Bảo')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ColorUtils.blueMiddleColor,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        height: 150,
                        width: 150,
                        child: TextButton(
                            onPressed: () {
                              Routes.goToProductScreen(context);
                            },
                            child: Text(
                              'Tra cứu sản phẩm',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: ColorUtils.blueMiddleColor,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        height: 150,
                        width: 150,
                        child: TextButton(
                            onPressed: () {
                              Routes.goToSearchOrderScreen(context);
                            },
                            child: Text(
                              textAlign: TextAlign.center,
                              'Tra cứu thông tin đơn hàng',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
