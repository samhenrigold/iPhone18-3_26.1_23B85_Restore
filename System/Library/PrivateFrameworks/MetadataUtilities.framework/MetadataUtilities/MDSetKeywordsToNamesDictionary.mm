@interface MDSetKeywordsToNamesDictionary
@end

@implementation MDSetKeywordsToNamesDictionary

CFTypeRef ____MDSetKeywordsToNamesDictionary_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = CFRetain(result);
    _keywordsToNamesDictionary = result;
  }

  return result;
}

@end