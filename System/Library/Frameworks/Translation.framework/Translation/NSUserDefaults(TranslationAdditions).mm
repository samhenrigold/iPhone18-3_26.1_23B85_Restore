@interface NSUserDefaults(TranslationAdditions)
+ (id)lt_appGroupDefaults;
@end

@implementation NSUserDefaults(TranslationAdditions)

+ (id)lt_appGroupDefaults
{
  if (lt_appGroupDefaults_onceToken != -1)
  {
    +[NSUserDefaults(TranslationAdditions) lt_appGroupDefaults];
  }

  v2 = lt_appGroupDefaults_appGroupDefaults;

  return v2;
}

@end