@interface IMSharedMessageDTSummary
+ (id)previewSummary;
@end

@implementation IMSharedMessageDTSummary

+ (id)previewSummary
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___IMSharedMessageDTSummary;
  v2 = objc_msgSendSuper2(&v5, sel_previewSummary);
  if (![v2 length])
  {
    return [IMSharedUtilitiesFrameworkBundle(0 v3)];
  }

  return v2;
}

@end