@interface NSCharacterSet(RomajiAdditions)
+ (id)alphabetCharacterSet;
@end

@implementation NSCharacterSet(RomajiAdditions)

+ (id)alphabetCharacterSet
{
  if (alphabetCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(RomajiAdditions) alphabetCharacterSet];
  }

  v2 = alphabetCharacterSet___alphabetCharacterSet;

  return v2;
}

@end