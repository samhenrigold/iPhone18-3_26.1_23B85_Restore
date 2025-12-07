@interface DeFringeKernels
+ (id)kernelWithName:(id)name;
@end

@implementation DeFringeKernels

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v4 = +[RAWKernels sharedKernels];
  v5 = [v4 kernelWithName:nameCopy group:@"DeFringe"];

  return v5;
}

@end