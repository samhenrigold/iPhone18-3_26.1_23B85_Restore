@interface MDSetKeywordsDictionary
@end

@implementation MDSetKeywordsDictionary

CFTypeRef ____MDSetKeywordsDictionary_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = CFRetain(result);
    _keywordsDictionary = result;
  }

  return result;
}

@end