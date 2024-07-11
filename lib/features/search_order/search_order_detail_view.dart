import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garment_management/common/widgets/text_form_field.dart';
import 'package:garment_management/utils/color_utils.dart';

class SearchOrderDetailView extends StatefulWidget {
  const SearchOrderDetailView({Key? key}) : super(key: key);

  @override
  _SearchOrderDetailViewState createState() => _SearchOrderDetailViewState();
}

class _SearchOrderDetailViewState extends State<SearchOrderDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtils.primaryBackgroundColor,
        title: Text(
          'Chi tiết đơn hàng',
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormFieldCustomWidget(
                hint: '',
                label: "Mã hóa đơn",
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
                label: "Ngày đặt",
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
                label: "Tổng tiền",
                inputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldCustomWidget(
                hint: '',
                label: "Trạng thái",
                inputAction: TextInputAction.next,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
