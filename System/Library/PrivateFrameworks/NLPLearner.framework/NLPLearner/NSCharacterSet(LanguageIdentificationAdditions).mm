@interface NSCharacterSet(LanguageIdentificationAdditions)
+ (id)vietnameseCharacterSet;
@end

@implementation NSCharacterSet(LanguageIdentificationAdditions)

+ (id)vietnameseCharacterSet
{
  if (vietnameseCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(LanguageIdentificationAdditions) vietnameseCharacterSet];
  }

  v2 = vietnameseCharacterSet___vietnameseCharset;

  return v2;
}

@end