@interface BoostKernels
+ (id)kernelWithName:(id)name;
@end

@implementation BoostKernels

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v4 = +[RAWKernels sharedKernels];
  v5 = [v4 kernelWithName:nameCopy group:@"Boost"];

  return v5;
}

@end