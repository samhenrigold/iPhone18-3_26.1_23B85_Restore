@interface CADisplayLink
- (void)bkui_enableHighFrameRate;
@end

@implementation CADisplayLink

- (void)bkui_enableHighFrameRate
{
  if (result)
  {
    v2 = result;
    if (MGGetProductType() == 1060988941 || MGGetProductType() == 3585085679 || MGGetProductType() == 689804742 || (result = MGGetProductType(), result == 2309863438))
    {
      *&v3 = OUTLINED_FUNCTION_0_5();
      [v2 setPreferredFrameRateRange:v3];

      return [v2 setHighFrameRateReason:2293761];
    }
  }

  return result;
}

@end