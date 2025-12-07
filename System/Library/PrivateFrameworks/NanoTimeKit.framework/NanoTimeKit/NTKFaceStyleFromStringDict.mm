@interface NTKFaceStyleFromStringDict
@end

@implementation NTKFaceStyleFromStringDict

void ___NTKFaceStyleFromStringDict_block_invoke(uint64_t a1)
{
  v3 = _NTKStringFromFaceStyleDict(a1);
  v1 = _DictionaryByReversingDictionary(v3);
  v2 = _NTKFaceStyleFromStringDict_dictionary;
  _NTKFaceStyleFromStringDict_dictionary = v1;
}

@end