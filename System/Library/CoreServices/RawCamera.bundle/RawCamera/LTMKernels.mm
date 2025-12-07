@interface LTMKernels
+ (id)kernelWithName:(id)name;
@end

@implementation LTMKernels

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v4 = +[RAWKernels sharedKernels];
  v5 = [v4 kernelWithName:nameCopy group:@"LTM"];

  return v5;
}

@end