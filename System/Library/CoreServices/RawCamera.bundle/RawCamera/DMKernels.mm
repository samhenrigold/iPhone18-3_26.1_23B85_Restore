@interface DMKernels
+ (id)kernelWithName:(id)name;
@end

@implementation DMKernels

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v4 = +[RAWKernels sharedKernels];
  v5 = [v4 kernelWithName:nameCopy group:@"DM"];

  return v5;
}

@end