@interface V8CNRKernels
+ (id)kernelWithName:(id)name;
@end

@implementation V8CNRKernels

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v4 = +[RAWKernels sharedKernels];
  v5 = [v4 kernelWithName:nameCopy group:@"V8CNR"];

  return v5;
}

@end