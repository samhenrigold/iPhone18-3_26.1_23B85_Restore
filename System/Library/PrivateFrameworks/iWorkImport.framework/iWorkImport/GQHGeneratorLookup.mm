@interface GQHGeneratorLookup
+ (Class)generatorForApplication:(int)application;
@end

@implementation GQHGeneratorLookup

+ (Class)generatorForApplication:(int)application
{
  if ((application - 1) > 2)
  {
    return 0;
  }

  else
  {
    return objc_opt_class();
  }
}

@end