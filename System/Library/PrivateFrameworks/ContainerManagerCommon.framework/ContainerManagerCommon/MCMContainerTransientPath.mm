@interface MCMContainerTransientPath
+ (Class)_containerClassPathClass;
@end

@implementation MCMContainerTransientPath

+ (Class)_containerClassPathClass
{

  return objc_opt_class();
}

@end