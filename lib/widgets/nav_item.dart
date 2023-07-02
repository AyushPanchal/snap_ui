import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap/theme/colors.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  const NavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 20.h,
          color: isSelected ? Colors.black : kIconColor.withOpacity(0.5),
        ),
        label.isEmpty
            ? const SizedBox()
            : Text(
                label,
              ),
      ],
    );
  }
}

const List<NavItem> navBarItems = [
  NavItem(
    icon: FeatherIcons.mapPin,
    label: "",
    isSelected: false,
  ),
  NavItem(
    icon: FeatherIcons.messageSquare,
    label: "",
    isSelected: false,
  ),
  NavItem(
    icon: FeatherIcons.camera,
    label: "",
    isSelected: false,
  ),
  NavItem(
    icon: FeatherIcons.users,
    label: "",
    isSelected: false,
  ),
  NavItem(
    icon: FeatherIcons.play,
    label: "",
    isSelected: false,
  ),
];
