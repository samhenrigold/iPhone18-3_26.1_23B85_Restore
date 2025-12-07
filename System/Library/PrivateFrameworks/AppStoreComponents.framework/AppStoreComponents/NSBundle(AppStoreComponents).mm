@interface NSBundle(AppStoreComponents)
+ (id)asc_frameworkBundle;
@end

@implementation NSBundle(AppStoreComponents)

+ (id)asc_frameworkBundle
{
  if (asc_frameworkBundle_onceToken != -1)
  {
    +[NSBundle(AppStoreComponents) asc_frameworkBundle];
  }

  v2 = asc_frameworkBundle_appStoreComponents;

  return v2;
}

@end