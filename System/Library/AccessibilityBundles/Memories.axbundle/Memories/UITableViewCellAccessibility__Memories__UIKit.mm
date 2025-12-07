@interface UITableViewCellAccessibility__Memories__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation UITableViewCellAccessibility__Memories__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UICollectionViewControllerWrapperView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"subviews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UICollectionViewControllerWrapperView" hasInstanceMethod:@"_collectionViewController" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v26 = *MEMORY[0x29EDCA608];
  accessibilityIdentification = [(UITableViewCellAccessibility__Memories__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AccessibilityMiroTitleCollectionCell"];

  if (v4)
  {
    v23 = 0;
    objc_opt_class();
    v5 = [(UITableViewCellAccessibility__Memories__UIKit *)self safeValueForKey:@"subviews"];
    v6 = __UIAccessibilityCastAsClass();

    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          MEMORY[0x29C2DE4B0](@"UICollectionViewControllerWrapperView");
          if (objc_opt_isKindOfClass())
          {
            v23 = 0;
            objc_opt_class();
            v14 = [v12 safeValueForKey:@"_collectionViewController"];
            v15 = __UIAccessibilityCastAsClass();

            if (v23 == 1)
            {
              abort();
            }

            collectionView = [v15 collectionView];
            v24 = collectionView;
            accessibilityElements = [MEMORY[0x29EDB8D80] arrayWithObjects:&v24 count:1];

            goto LABEL_15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v18.receiver = self;
  v18.super_class = UITableViewCellAccessibility__Memories__UIKit;
  accessibilityElements = [(UITableViewCellAccessibility__Memories__UIKit *)&v18 accessibilityElements];
LABEL_15:

  return accessibilityElements;
}

@end