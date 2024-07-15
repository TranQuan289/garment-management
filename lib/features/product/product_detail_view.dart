import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garment_management/common/widgets/text_form_field.dart';
import 'package:garment_management/utils/color_utils.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  @override
  _ProductDetailViewState createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtils.primaryBackgroundColor,
        title: Text(
          'Chi tiết sản phẩm',
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
              Center(
                child: FlutterLogo(
                  size: 50,
                ),
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
                label: "Tên sản phẩm",
                inputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldCustomWidget(
                hint: '',
                label: "Đơn giá",
                inputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldCustomWidget(
                hint: '',
                label: "Size",
                inputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldCustomWidget(
                hint: '',
                label: "Kiểu sản phẩm",
                inputAction: TextInputAction.next,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
