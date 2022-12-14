import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/ui/styles/app_dimensions.dart';
import 'package:sutraq/widgets/custom_avatar.dart';
import 'package:sutraq/widgets/custom_icon.dart';
import 'package:sutraq/widgets/custom_space.dart';
import 'package:sutraq/widgets/custom_text.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBg,
      body: SafeArea(
        child: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: AppPadding.symmetricPadding(15, 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        customAvatar(
                          onTap: (() => Navigator.pop(context)),
                          radius: 20,
                          icon: customIcon(
                            icon: Icons.arrow_back,
                            size: 20,
                          ),
                        ),
                        horizontalSpace(30),
                        boldText(
                          text: "Transaction History",
                          fontSize: 18,
                        ),
                      ],
                    ),
                    verticalSpace(20),
                    Container(
                      height: 50.h,
                      width: 250.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.greenColor,
                            width: 2,
                            strokeAlign: StrokeAlign.inside),
                      ),
                      child: Padding(
                        padding: AppPadding.hPadding(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            smallText(
                              text: "Naira Account: N190,000",
                              fontSize: 13,
                            ),
                            customIcon(
                              icon: Icons.arrow_drop_down_outlined,
                              color: AppColors.greenColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    verticalSpace(35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        defaultText(
                          text: "All Transactions",
                          fontSize: 13,
                          color: AppColors.blueColor,
                        ),
                        defaultText(
                          text: "Debits",
                          fontSize: 12,
                          color: AppColors.darkGrey,
                        ),
                        defaultText(
                          text: "Credits",
                          fontSize: 12,
                          color: AppColors.darkGrey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ColoredBox(
                  color: AppColors.whiteColor,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 0.5,
                        child: ListTile(
                          horizontalTitleGap: 20.w,
                          leading: CircleAvatar(
                              radius: 20.r,
                              backgroundColor: AppColors.lightGreen,
                              child: const Icon(
                                Icons.call_made,
                                color: AppColors.greenColor,
                              )),
                          title: semiBoldText(
                            text: "Access Bank ",
                            color: AppColors.violet,
                            fontSize: 14,
                          ),
                          subtitle: smallText(
                            text: "28, Jan 2020",
                            color: AppColors.greyColor,
                            fontSize: 10,
                          ),
                          trailing: semiBoldText(
                            text: "\$2,400",
                            color: AppColors.violet,
                            fontSize: 14,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
