import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:greenconnext_app/assets/assets.dart';
import 'package:greenconnext_app/l10n/l10n.dart';
import 'package:greenconnext_app/route/AppRouter.gr.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colorScheme = Theme.of(context).colorScheme;
    final activeIconColorFilter = ColorFilter.mode(
      colorScheme.primary,
      BlendMode.srcIn,
    );

    return AutoTabsScaffold(
      routes: const [HomeRoute(), ClassGroupRoute(), ProfileRoute()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: l10n.homeTab,
              icon: Assets.icons.icLinearHome.svg(),
              activeIcon: Assets.icons.icBoldHome
                  .svg(colorFilter: activeIconColorFilter),
            ),
            BottomNavigationBarItem(
              label: l10n.classGroupTab,
              icon: Assets.icons.icLinearClassGroup.svg(),
              activeIcon: Assets.icons.icBoldClassGroup
                  .svg(colorFilter: activeIconColorFilter),
            ),
            BottomNavigationBarItem(
              label: l10n.profileTab,
              icon: Assets.icons.icLinearProfileCircle.svg(),
              activeIcon: Assets.icons.icBoldProfileCircle
                  .svg(colorFilter: activeIconColorFilter),
            ),
          ],
        );
      },
    );
  }
}
