@interface NSCharacterSet(SubjectParser)
+ (id)ec_prefixDelimiterCharacterSet;
@end

@implementation NSCharacterSet(SubjectParser)

+ (id)ec_prefixDelimiterCharacterSet
{
  if (ec_prefixDelimiterCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(SubjectParser) ec_prefixDelimiterCharacterSet];
  }

  v2 = ec_prefixDelimiterCharacterSet_prefixDelimiterCharacterSet;

  return v2;
}

@end