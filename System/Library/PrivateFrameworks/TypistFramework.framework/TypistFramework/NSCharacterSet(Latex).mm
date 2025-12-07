@interface NSCharacterSet(Latex)
+ (id)charactersRequiringExtentionCharacterSet;
@end

@implementation NSCharacterSet(Latex)

+ (id)charactersRequiringExtentionCharacterSet
{
  if (charactersRequiringExtentionCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(Latex) charactersRequiringExtentionCharacterSet];
  }

  v2 = charactersRequiringExtentionCharacterSet_charSet;

  return v2;
}

@end