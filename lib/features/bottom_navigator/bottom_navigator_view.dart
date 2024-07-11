import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:garment_management/features/bottom_navigator/notifier/bottom_navigation_notifier.dart';
import 'package:garment_management/features/home/home_view.dart';
import 'package:garment_management/features/order/order_view.dart';
import 'package:garment_management/features/bill/bill_view.dart';
import 'package:garment_management/utils/color_utils.dart';
import '../../common/base_state_delegate/base_state_delegate.dart';

class BottomNavigationView extends ConsumerStatefulWidget {
  const BottomNavigationView({super.key});

  @override
  BaseStateDelegate<BottomNavigationView, BottomNavigationNotifier>
      createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState
    extends BaseStateDelegate<BottomNavigationView, BottomNavigationNotifier> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initNotifier() {
    notifier = ref.read(bottomNavigationNotifierProvider.notifier);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Consumer(
          builder: (context, ref, child) {
            ref.watch(
              bottomNavigationNotifierProvider.select(
                (value) => value.currentIndex,
              ),
            );
            return PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: const [
                HomeView(),
                OrderView(),
                BillView(),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        color: ColorUtils.primaryBackgroundColor,
        child: BottomAppBar(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          padding: const EdgeInsets.all(0),
          shape: AutomaticNotchedShape(
            const RoundedRectangleBorder(),
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Consumer(
            builder: (context, ref, child) {
              final index = ref.watch(
                bottomNavigationNotifierProvider.select(
                  (value) => value.currentIndex,
                ),
              );
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      _pageController.jumpToPage(0);
                      notifier.setCurrentIndex(0);
                    },
                    child: Text(
                      "Home",
                      style: TextStyle(
                        color: index == 0
                            ? ColorUtils.blueColor
                            : ColorUtils.primaryColor,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _pageController.jumpToPage(1);
                      notifier.setCurrentIndex(1);
                    },
                    child: Text(
                      "Đặt may",
                      style: TextStyle(
                        color: index == 1
                            ? ColorUtils.blueColor
                            : ColorUtils.primaryColor,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _pageController.jumpToPage(2);
                      notifier.setCurrentIndex(2);
                    },
                    child: Text(
                      "Lập hóa đơn",
                      style: TextStyle(
                        color: index == 2
                            ? ColorUtils.blueColor
                            : ColorUtils.primaryColor,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
