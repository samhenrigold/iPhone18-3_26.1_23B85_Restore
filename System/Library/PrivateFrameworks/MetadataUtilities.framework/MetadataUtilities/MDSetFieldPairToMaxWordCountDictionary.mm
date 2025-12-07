@interface MDSetFieldPairToMaxWordCountDictionary
@end

@implementation MDSetFieldPairToMaxWordCountDictionary

CFTypeRef ____MDSetFieldPairToMaxWordCountDictionary_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = CFRetain(result);
    _fieldPairToMaxWordCountDictionary = result;
  }

  return result;
}

@end