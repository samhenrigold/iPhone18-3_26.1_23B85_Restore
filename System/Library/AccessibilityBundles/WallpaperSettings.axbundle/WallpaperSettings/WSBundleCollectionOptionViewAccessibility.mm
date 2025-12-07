@interface WSBundleCollectionOptionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation WSBundleCollectionOptionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WSBundleCollectionOptionView" hasInstanceMethod:@"bundleCollection" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WKWallpaperBundleCollection" hasInstanceMethod:@"wallpaperType" withFullSignature:{"Q", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(WSBundleCollectionOptionViewAccessibility *)self safeValueForKey:@"bundleCollection"];
  v3 = [v2 safeUnsignedIntegerForKey:@"wallpaperType"];

  v4 = 0;
  if (v3 > 1)
  {
    switch(v3)
    {
      case 2:
        v5 = @"dynamic.wallpapers";
        break;
      case 3:
        v5 = @"stripe.wallpapers";
        break;
      case 4:
        v5 = @"photo.wallpapers";
        break;
      default:
        goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!v3)
  {
    v5 = @"still.wallpapers";
LABEL_12:
    v4 = accessibilityLocalizedString(v5);
    goto LABEL_13;
  }

  if (v3 == 1)
  {
    v6 = accessibilityLocalizedString(@"motion.wallpapers");
    v4 = AXAttributedStringForBetterPronuciation();
  }

LABEL_13:

  return v4;
}

- (id)accessibilityUserInputLabels
{
  v12[1] = *MEMORY[0x29EDCA608];
  v3 = [(WSBundleCollectionOptionViewAccessibility *)self safeValueForKey:@"bundleCollection"];
  v4 = [v3 safeUnsignedIntegerForKey:@"wallpaperType"];

  if (v4 == 2)
  {
    v5 = accessibilityLocalizedString(@"dynamic.wallpapers.short");
    v11 = v5;
    v6 = MEMORY[0x29EDB8D80];
    v7 = &v11;
    goto LABEL_5;
  }

  if (!v4)
  {
    v5 = accessibilityLocalizedString(@"still.wallpapers.short");
    v12[0] = v5;
    v6 = MEMORY[0x29EDB8D80];
    v7 = v12;
LABEL_5:
    accessibilityUserInputLabels = [v6 arrayWithObjects:v7 count:1];

    goto LABEL_7;
  }

  v10.receiver = self;
  v10.super_class = WSBundleCollectionOptionViewAccessibility;
  accessibilityUserInputLabels = [(WSBundleCollectionOptionViewAccessibility *)&v10 accessibilityUserInputLabels];
LABEL_7:

  return accessibilityUserInputLabels;
}

@end