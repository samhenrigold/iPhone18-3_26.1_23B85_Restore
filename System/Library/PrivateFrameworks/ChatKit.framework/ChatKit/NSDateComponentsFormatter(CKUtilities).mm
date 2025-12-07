@interface NSDateComponentsFormatter(CKUtilities)
+ (id)__ck_durationFormatter;
@end

@implementation NSDateComponentsFormatter(CKUtilities)

+ (id)__ck_durationFormatter
{
  v1 = objc_opt_new();
  [v1 setUnitsStyle:0];
  [v1 setZeroFormattingBehavior:0x10000];

  return v1;
}

@end