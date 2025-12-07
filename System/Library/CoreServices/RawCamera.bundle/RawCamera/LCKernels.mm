@interface LCKernels
+ (id)kernelWithName:(id)name;
@end

@implementation LCKernels

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v4 = +[RAWKernels sharedKernels];
  v5 = [v4 kernelWithName:nameCopy group:@"LC"];

  return v5;
}

@end