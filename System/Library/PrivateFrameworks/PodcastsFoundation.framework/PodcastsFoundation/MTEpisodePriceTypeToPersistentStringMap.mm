@interface MTEpisodePriceTypeToPersistentStringMap
@end

@implementation MTEpisodePriceTypeToPersistentStringMap

void __MTEpisodePriceTypeToPersistentStringMap_inverted_block_invoke()
{
  v5[6] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F54BD568;
  v4[1] = &unk_1F54BD718;
  v5[0] = @"NONE";
  v5[1] = @"PLUS";
  v4[2] = &unk_1F54BD730;
  v4[3] = &unk_1F54BD700;
  v5[2] = @"PRMO";
  v5[3] = @"PSUB";
  v4[4] = &unk_1F54BD6E8;
  v4[5] = &unk_1F54BD748;
  v5[4] = @"STDQ";
  v5[5] = @"**Invalid(enum-count)**";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:6];
  v1 = MTEpisodePriceTypeToPersistentStringMap_inverted_map;
  MTEpisodePriceTypeToPersistentStringMap_inverted_map = v0;

  v2 = [MTEpisodePriceTypeToPersistentStringMap_inverted_map mt_invertedDictionary];
  v3 = MTEpisodePriceTypeToPersistentStringMap_inverted_invertedMap;
  MTEpisodePriceTypeToPersistentStringMap_inverted_invertedMap = v2;
}

@end