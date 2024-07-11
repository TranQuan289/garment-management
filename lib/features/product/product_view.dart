import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garment_management/common/widgets/search_form_field.dart';
import 'package:garment_management/utils/color_utils.dart';
import 'package:garment_management/utils/routes/routes.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtils.primaryBackgroundColor,
        title: Text(
          'Tra cứu sản phẩm',
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
              SearchFormField(
                hint: 'Tìm kiếm ...',
                prefixIcon: Icon(Icons.search),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Áo vest'),
                  Text('Xem tất cả'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => Routes.goToProductDetailScreen(context),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Áo sơ mi'),
                  Text('Xem tất cả'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 60,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Quần tây'),
                  Text('Xem tất cả'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 60,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mẫu vải'),
                  Text('Xem tất cả'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 60,
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
