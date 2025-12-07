@interface CLRegion(HMFObject)
+ (NSString)shortDescription;
- (id)shortDescription;
@end

@implementation CLRegion(HMFObject)

- (id)shortDescription
{
  v1 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  v3 = [v1 stringWithFormat:@"<%@>", shortDescription];

  return v3;
}

+ (NSString)shortDescription
{
  v1 = objc_opt_class();

  return NSStringFromClass(v1);
}

@end