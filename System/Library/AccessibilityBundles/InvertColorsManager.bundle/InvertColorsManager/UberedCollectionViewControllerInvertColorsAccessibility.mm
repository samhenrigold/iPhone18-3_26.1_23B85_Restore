@interface UberedCollectionViewControllerInvertColorsAccessibility
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UberedCollectionViewControllerInvertColorsAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = UberedCollectionViewControllerInvertColorsAccessibility;
  [(UberedCollectionViewControllerInvertColorsAccessibility *)&v15 viewWillAppear:appear];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(UberedCollectionViewControllerInvertColorsAccessibility *)self safeValueForKey:@"view", 0];
  subviews = [v4 subviews];

  v6 = [subviews countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setAccessibilityIgnoresInvertColors:1];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

@end