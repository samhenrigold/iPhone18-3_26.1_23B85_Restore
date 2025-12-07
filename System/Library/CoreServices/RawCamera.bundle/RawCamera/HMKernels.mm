@interface HMKernels
+ (id)kernelWithName:(id)name;
@end

@implementation HMKernels

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v4 = +[RAWKernels sharedKernels];
  v5 = [v4 kernelWithName:nameCopy group:@"HM"];

  return v5;
}

@end