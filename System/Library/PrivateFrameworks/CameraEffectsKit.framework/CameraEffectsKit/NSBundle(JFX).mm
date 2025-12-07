@interface NSBundle(JFX)
+ (id)jfxBundle;
@end

@implementation NSBundle(JFX)

+ (id)jfxBundle
{
  if (jfxBundle_onceToken != -1)
  {
    +[NSBundle(JFX) jfxBundle];
  }

  v2 = jfxBundle_jfxBundle;

  return v2;
}

@end