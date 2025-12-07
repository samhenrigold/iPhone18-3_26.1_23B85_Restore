@interface KNClassicStylesheetRecordReferenceWrapper
+ (BOOL)allowUnarchivingObjectClass:(Class)class;
@end

@implementation KNClassicStylesheetRecordReferenceWrapper

+ (BOOL)allowUnarchivingObjectClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    return 1;
  }

  v5 = objc_opt_class();

  return [(objc_class *)class isSubclassOfClass:v5];
}

@end