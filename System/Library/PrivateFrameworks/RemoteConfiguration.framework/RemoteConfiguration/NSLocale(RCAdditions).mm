@interface NSLocale(RCAdditions)
+ (id)rc_preferredLanguageCodes;
@end

@implementation NSLocale(RCAdditions)

+ (id)rc_preferredLanguageCodes
{
  if (rc_preferredLanguageCodes_onceToken != -1)
  {
    +[NSLocale(RCAdditions) rc_preferredLanguageCodes];
  }

  v2 = rc_preferredLanguageCodes_s_languageCodes;

  return v2;
}

@end