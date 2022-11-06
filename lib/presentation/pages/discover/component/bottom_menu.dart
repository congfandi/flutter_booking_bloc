import 'package:booking/presentation/pages/discover/discover_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key, required this.cubit}) : super(key: key);
  final DiscoverCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.0.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildItem(
            onTap: () => cubit.changeIndex(0),
            icon: Icons.location_on_sharp,
            title: 'Trips',
            isSelected: cubit.state.selectedIndex == 0,
          ),
          _buildItem(
            onTap: () => cubit.changeIndex(1),
            icon: Icons.favorite,
            title: 'Favorite',
            isSelected: cubit.state.selectedIndex == 1,
          ),
          _buildItem(
            onTap: () => cubit.changeIndex(2),
            icon: Icons.settings,
            title: 'Settings',
            isSelected: cubit.state.selectedIndex == 2,
          ),
        ],
      ),
    );
  }

  Widget _buildItem({
    required GestureTapCallback? onTap,
    required IconData icon,
    required String title,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: (){
        onTap!();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.black : Colors.grey,
          ),
          const SizedBox(height: 4.0),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.grey,
              fontSize: 12.0.sp,
            ),
          ),
        ],
      ),
    );
  }
}
