@interface NSUUID(BMUtilities)
+ (id)bm_bootSessionUUID;
@end

@implementation NSUUID(BMUtilities)

+ (id)bm_bootSessionUUID
{
  if (bm_bootSessionUUID_onceToken != -1)
  {
    +[NSUUID(BMUtilities) bm_bootSessionUUID];
  }

  v2 = bm_bootSessionUUID__bootSessionUUID;

  return v2;
}

@end