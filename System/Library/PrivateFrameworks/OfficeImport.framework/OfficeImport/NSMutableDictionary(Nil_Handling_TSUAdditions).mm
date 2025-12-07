@interface NSMutableDictionary(Nil_Handling_TSUAdditions)
- (void)tsu_setNonNilObject:()Nil_Handling_TSUAdditions forKey:;
- (void)tsu_setNonNilValueForKey:()Nil_Handling_TSUAdditions fromDictionary:;
@end

@implementation NSMutableDictionary(Nil_Handling_TSUAdditions)

- (void)tsu_setNonNilValueForKey:()Nil_Handling_TSUAdditions fromDictionary:
{
  result = [a4 objectForKeyedSubscript:?];
  if (result)
  {

    return [self setObject:result forKeyedSubscript:a3];
  }

  return result;
}

- (void)tsu_setNonNilObject:()Nil_Handling_TSUAdditions forKey:
{
  if (a3)
  {
    return [result setObject:? forKeyedSubscript:?];
  }

  return result;
}

@end