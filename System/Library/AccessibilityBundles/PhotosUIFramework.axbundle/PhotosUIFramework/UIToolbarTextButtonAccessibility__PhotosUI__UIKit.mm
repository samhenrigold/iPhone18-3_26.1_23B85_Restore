@interface UIToolbarTextButtonAccessibility__PhotosUI__UIKit
- (double)_accessibilityDelayBeforeUpdatingOnActivation;
@end

@implementation UIToolbarTextButtonAccessibility__PhotosUI__UIKit

- (double)_accessibilityDelayBeforeUpdatingOnActivation
{
  v20 = *MEMORY[0x29EDCA608];
  [(UIToolbarTextButtonAccessibility__PhotosUI__UIKit *)self allTargets];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        objc_opt_class();
        v9 = [v8 _accessibilityValueForKey:AXIsPhotoSharingLikeButtonKey];
        v10 = __UIAccessibilityCastAsClass();

        LOBYTE(v9) = [v10 BOOLValue];
        if (v9)
        {

          v12 = 5.0;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14.receiver = self;
  v14.super_class = UIToolbarTextButtonAccessibility__PhotosUI__UIKit;
  [(UIToolbarTextButtonAccessibility__PhotosUI__UIKit *)&v14 _accessibilityDelayBeforeUpdatingOnActivation];
  v12 = v11;
LABEL_11:

  return v12;
}

@end