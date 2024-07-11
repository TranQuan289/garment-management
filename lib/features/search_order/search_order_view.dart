import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garment_management/common/widgets/search_form_field.dart';
import 'package:garment_management/utils/color_utils.dart';
import 'package:garment_management/utils/routes/routes.dart';

class SearchOrderView extends StatefulWidget {
  const SearchOrderView({Key? key}) : super(key: key);

  @override
  _SearchOrderViewState createState() => _SearchOrderViewState();
}

class _SearchOrderViewState extends State<SearchOrderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtils.primaryBackgroundColor,
        title: Text(
          'Tra cứu thông tin đơn hàng',
          style: TextStyle(
            color: ColorUtils.primaryColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchFormField(
              hint: 'Tìm kiếm ...',
              prefixIcon: Icon(Icons.search),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Kết quả',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            //
            InkWell(
              onTap: () => Routes.goToSearchOrderDetailScreen(context),
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
                            'Mã khách hàng',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            'Tên khách hàng',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: Icon(Icons.more_horiz)),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
