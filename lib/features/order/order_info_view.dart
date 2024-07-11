import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garment_management/common/widgets/text_form_field.dart';
import 'package:garment_management/utils/color_utils.dart';

class OrderInfoView extends StatefulWidget {
  const OrderInfoView({Key? key}) : super(key: key);

  @override
  _OrderInfoViewState createState() => _OrderInfoViewState();
}

class _OrderInfoViewState extends State<OrderInfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtils.primaryBackgroundColor,
        title: Text(
          'Thông tin đặt may',
          style: TextStyle(
            color: ColorUtils.primaryColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(
            Icons.restore_outlined,
            size: 40,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.only(bottom: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  FlutterLogo(
                    size: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tên sản phẩm',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Size',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldCustomWidget(
                hint: '',
                label: "Mã sản phẩm",
                inputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldCustomWidget(
                hint: '',
                label: "Tên khách hàng",
                inputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldCustomWidget(
                hint: '',
                label: "Số điện thoại",
                inputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldCustomWidget(
                hint: '',
                label: "Địa chỉ",
                inputAction: TextInputAction.next,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
