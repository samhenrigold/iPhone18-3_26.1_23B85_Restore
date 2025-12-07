@interface SiriTTSLanguages
+ (NSSet)availableLanguages;
+ (id)fallbackLanguageFor:(id)for;
@end

@implementation SiriTTSLanguages

+ (id)fallbackLanguageFor:(id)for
{
  v3 = sub_1B1C2CB58();
  v5 = v4;
  swift_getObjCClassMetadata();
  static Languages.fallbackLanguage(for:)(v3, v5);

  v6 = sub_1B1C2CB28();

  return v6;
}

+ (NSSet)availableLanguages
{
  static Languages.availableLanguages.getter();
  v2 = sub_1B1C2CF48();

  return v2;
}

@end