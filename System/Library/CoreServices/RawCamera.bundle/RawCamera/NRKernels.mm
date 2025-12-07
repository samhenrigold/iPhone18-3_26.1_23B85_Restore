@interface NRKernels
+ (id)kernelWithName:(id)name;
@end

@implementation NRKernels

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v4 = +[RAWKernels sharedKernels];
  v5 = [v4 kernelWithName:nameCopy group:@"NR"];

  return v5;
}

@end