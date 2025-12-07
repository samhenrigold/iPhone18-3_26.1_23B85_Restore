@interface NTKEditModeFromStringDict
@end

@implementation NTKEditModeFromStringDict

void ___NTKEditModeFromStringDict_block_invoke(uint64_t a1)
{
  v3 = _NTKStringFromEditModeDict(a1);
  v1 = _DictionaryByReversingDictionary(v3);
  v2 = _NTKEditModeFromStringDict_dictionary;
  _NTKEditModeFromStringDict_dictionary = v1;
}

@end