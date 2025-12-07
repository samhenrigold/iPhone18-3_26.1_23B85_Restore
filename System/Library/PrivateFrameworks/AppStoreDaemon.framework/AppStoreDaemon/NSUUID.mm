@interface NSUUID
+ (id)asd_generateLogKey;
@end

@implementation NSUUID

+ (id)asd_generateLogKey
{
  uUID = [objc_opt_self() UUID];
  uUIDString = [uUID UUIDString];
  v3 = [uUIDString componentsSeparatedByString:@"-"];
  firstObject = [v3 firstObject];

  return firstObject;
}

@end