@interface CIColor(CoreUIAdditions)
+ (CIColor)colorWithSRGBRed:()CoreUIAdditions green:blue:;
+ (CIColor)colorWithSRGBRed:()CoreUIAdditions green:blue:alpha:;
@end

@implementation CIColor(CoreUIAdditions)

+ (CIColor)colorWithSRGBRed:()CoreUIAdditions green:blue:alpha:
{
  SRGB = _CUIColorSpaceGetSRGB(self, a2);
  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = a6;
  v11 = CGColorCreate(SRGB, components);
  v12 = [CIColor colorWithCGColor:v11];
  CGColorRelease(v11);
  return v12;
}

+ (CIColor)colorWithSRGBRed:()CoreUIAdditions green:blue:
{
  SRGB = _CUIColorSpaceGetSRGB(self, a2);
  components[0] = a3;
  components[1] = a4;
  components[2] = a5;
  components[3] = 1.0;
  v9 = CGColorCreate(SRGB, components);
  v10 = [CIColor colorWithCGColor:v9];
  CGColorRelease(v9);
  return v10;
}

@end