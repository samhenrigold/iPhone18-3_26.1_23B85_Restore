@interface FringeEdgesKernels
+ (id)kernelWithName:(id)name;
@end

@implementation FringeEdgesKernels

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v4 = +[RAWKernels sharedKernels];
  v5 = [v4 kernelWithName:nameCopy group:@"FringeEdges"];

  return v5;
}

@end