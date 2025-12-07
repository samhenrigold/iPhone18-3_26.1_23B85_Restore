@interface V8VIEWKernels
+ (id)kernelWithName:(id)name;
@end

@implementation V8VIEWKernels

+ (id)kernelWithName:(id)name
{
  nameCopy = name;
  v4 = +[RAWKernels sharedKernels];
  v5 = [v4 kernelWithName:nameCopy group:@"V8VIEW"];

  return v5;
}

@end