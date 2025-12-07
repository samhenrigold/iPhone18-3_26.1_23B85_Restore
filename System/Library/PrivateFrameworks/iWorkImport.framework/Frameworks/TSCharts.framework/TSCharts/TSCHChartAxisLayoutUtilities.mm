@interface TSCHChartAxisLayoutUtilities
+ (int64_t)snappedLabelAngleInDegrees:(float)degrees prefersVerticalAngles:(BOOL)angles;
@end

@implementation TSCHChartAxisLayoutUtilities

+ (int64_t)snappedLabelAngleInDegrees:(float)degrees prefersVerticalAngles:(BOOL)angles
{
  anglesCopy = angles;
  v5.n128_u32[0] = 1135869952;
  v4.n128_u64[0] = 0;
  v8 = sub_27628C1E0(*&degrees, v4, v5, v6, self, a2);
  v9 = 70.0;
  if (anglesCopy)
  {
    v9 = 20.0;
  }

  if (v8 >= 0.0 && v8 <= v9)
  {
    return 0;
  }

  if (v8 >= (360.0 - v9) && v8 <= 360.0)
  {
    return 0;
  }

  v12 = v9 + 180.0;
  if (v8 >= (180.0 - v9) && v8 <= v12)
  {
    return 180;
  }

  if (v8 > v9 && v8 < (180.0 - v9))
  {
    return 90;
  }

  if (v8 >= (360.0 - v9) || v8 <= v12)
  {
    return 0;
  }

  else
  {
    return 270;
  }
}

@end