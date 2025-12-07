@interface PUWatchFaceHelper
+ (CGRect)screenBoundsForWatchType:(int64_t)type;
@end

@implementation PUWatchFaceHelper

+ (CGRect)screenBoundsForWatchType:(int64_t)type
{
  sub_1B37ED5F0(type, a2, type, v3, v4, v5, v6, v7);
  v10 = 0.0;
  v11 = 0.0;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

@end