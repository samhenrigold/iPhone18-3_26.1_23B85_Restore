@interface NTKDateStyleFromStringDict
@end

@implementation NTKDateStyleFromStringDict

void ___NTKDateStyleFromStringDict_block_invoke(uint64_t a1)
{
  v3 = _NTKStringFromDateStyleDict(a1);
  v1 = _DictionaryByReversingDictionary(v3);
  v2 = _NTKDateStyleFromStringDict_dictionary;
  _NTKDateStyleFromStringDict_dictionary = v1;
}

@end