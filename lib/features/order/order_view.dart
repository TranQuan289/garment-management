import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garment_management/common/base_state_delegate/base_state_delegate.dart';
import 'package:garment_management/common/widgets/search_form_field.dart';
import 'package:garment_management/features/bill/notifier/profile_notifier.dart';
import 'package:garment_management/utils/color_utils.dart';
import 'package:garment_management/utils/routes/routes.dart';

class OrderView extends ConsumerStatefulWidget {
  const OrderView({super.key});

  @override
  BaseStateDelegate<OrderView, ProfileNotifier> createState() =>
      _OrderViewState();
}

class _OrderViewState extends BaseStateDelegate<OrderView, ProfileNotifier>
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
          'Đặt may',
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
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchFormField(
                  hint: 'Tìm kiếm ...',
                  prefixIcon: Icon(Icons.search),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Khách hàng đặt may',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => Routes.goToOrderInfoScreen(context),
                  child: Container(
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
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Tên',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Text(
                                'Sđt',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Text(
                                'Trạng thái',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 60,
                            decoration: BoxDecoration(
                              color: ColorUtils.whiteColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: PopupMenuButton<int>(
                              onSelected: (item) => onSelected(context, item),
                              itemBuilder: (context) => [
                                PopupMenuItem<int>(
                                  value: 0,
                                  child: Text('Chi tiết'),
                                ),
                                PopupMenuItem<int>(
                                  value: 1,
                                  child: Text('Lập hóa đơn'),
                                ),
                              ],
                              icon: Icon(Icons.more_horiz,
                                  color: ColorUtils.blueMiddleColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Routes.goToOrderDetailScreen(context);
        break;
      case 1:
        // Thêm hành động lập hóa đơn tại đây
        break;
    }
  }

  @override
  bool get wantKeepAlive => true;
}
