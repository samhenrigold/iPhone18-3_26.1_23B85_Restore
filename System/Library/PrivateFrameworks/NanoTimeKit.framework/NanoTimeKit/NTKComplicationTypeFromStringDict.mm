@interface NTKComplicationTypeFromStringDict
@end

@implementation NTKComplicationTypeFromStringDict

void ___NTKComplicationTypeFromStringDict_block_invoke(uint64_t a1)
{
  v3 = _NTKStringFromComplicationTypeDict(a1);
  v1 = _DictionaryByReversingDictionary(v3);
  v2 = _NTKComplicationTypeFromStringDict_dictionary;
  _NTKComplicationTypeFromStringDict_dictionary = v1;
}

@end