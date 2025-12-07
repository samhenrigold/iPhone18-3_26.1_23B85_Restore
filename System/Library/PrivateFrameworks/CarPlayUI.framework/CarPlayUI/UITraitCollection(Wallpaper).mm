@interface UITraitCollection(Wallpaper)
- (void)wallpaperAppearanceType;
@end

@implementation UITraitCollection(Wallpaper)

- (void)wallpaperAppearanceType
{
  result = [self valueForNSIntegerTrait:objc_opt_class()];
  if (result >= 3)
  {
    return 0;
  }

  return result;
}

@end