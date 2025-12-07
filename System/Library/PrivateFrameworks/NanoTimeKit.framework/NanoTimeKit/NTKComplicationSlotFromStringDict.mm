@interface NTKComplicationSlotFromStringDict
@end

@implementation NTKComplicationSlotFromStringDict

void ___NTKComplicationSlotFromStringDict_block_invoke(uint64_t a1)
{
  v3 = _NTKStringFromComplicationSlotDict(a1);
  v1 = _DictionaryByReversingDictionary(v3);
  v2 = _NTKComplicationSlotFromStringDict_dictionary;
  _NTKComplicationSlotFromStringDict_dictionary = v1;
}

@end