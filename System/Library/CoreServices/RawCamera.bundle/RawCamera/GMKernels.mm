@interface GMKernels
+ (id)kernelWithName:(id)name;
@end

@implementation GMKernels

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v4 = +[RAWKernels sharedKernels];
  v5 = [v4 kernelWithName:nameCopy group:@"GM"];

  return v5;
}

@end