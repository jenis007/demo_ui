import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  bool? switchButton = false;
  bool? switchButton1 = false;
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.9.h),
                child: Text(
                  'Add Product',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.7.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.9.h),
                child: Text(
                  'Add product images',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 0.8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.9.h),
                child: Text(
                  'Add upto 5 images, first image will be your product’s cover image that will highlight everywhere',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Color(0xff666565),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3.2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.9.h),
                child: SvgPicture.asset('assets/svg/image_picker.svg'),
              ),
              SizedBox(
                height: 4.5.h,
              ),
              commonText('Product Name'),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.9.h),
                child: SizedBox(
                  height: 6.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xffE4E4E4),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.4.h,
              ),
              commonText('Product meta description'),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.9.h),
                child: SizedBox(
                  height: 6.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xffE4E4E4),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.4.h,
              ),
              commonText('Product description'),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.9.h),
                child: SizedBox(
                  height: 6.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xffE4E4E4),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  commonText('Create variation'),
                  SizedBox(
                    width: 25.w,
                  ),
                  CupertinoSwitch(
                    trackColor: Color(0xffB0BEC5),
                    value: switchButton!,
                    onChanged: (value) {
                      setState(() {
                        switchButton = value;
                      });
                    },
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 2.7.h),
                    height: 4.6.h,
                    width: 10.5.h,
                    decoration: BoxDecoration(
                      color: Color(0xff3881D8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Add',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 4.6.h,
                      margin: EdgeInsets.only(right: 2.7.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 1.h, vertical: 0.5.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffE4E4E4),
                      ),
                      child: Row(
                        children: List.generate(
                            2,
                            (index) => Container(
                                  height: 3.6.h,
                                  margin: EdgeInsets.only(right: 1.h),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 1.h),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xff2ECC71),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Red',
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 1.h,
                                      ),
                                      SvgPicture.asset('assets/svg/remove.svg')
                                    ],
                                  ),
                                )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 2.7.h),
                padding: EdgeInsets.all(1.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff656565),
                    width: 0.5,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 6.h,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Color(0xffE4E4E4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2.h,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 6.h,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Color(0xffE4E4E4),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    SizedBox(
                      height: 6.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xffE4E4E4),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    SizedBox(
                      height: 6.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xffE4E4E4),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    SizedBox(
                      height: 6.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xffE4E4E4),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  commonText('Item Returnable'),
                  SizedBox(
                    width: 25.w,
                  ),
                  CupertinoSwitch(
                    trackColor: Color(0xffB0BEC5),
                    value: switchButton1!,
                    onChanged: (value) {
                      setState(() {
                        switchButton1 = value;
                      });
                    },
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding commonText(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.9.h),
      child: Text(
        text,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
