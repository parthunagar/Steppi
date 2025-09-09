

import 'package:auto_route/annotations.dart';
import 'package:steppi/ui/views/home/language_selection_view.dart';

@AdaptiveAutoRouter(
routes: <AutoRoute>[
     AutoRoute(page: LanguageSelectionView, initial: true)
   ],
)
class $AppRouter {}
        
    