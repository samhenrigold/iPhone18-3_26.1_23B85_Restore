@interface FringeDirectionsKernels
+ (id)kernelWithName:(id)name;
@end

@implementation FringeDirectionsKernels

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v4 = +[RAWKernels sharedKernels];
  v5 = [v4 kernelWithName:nameCopy group:@"FringeDirections"];

  return v5;
}

@end