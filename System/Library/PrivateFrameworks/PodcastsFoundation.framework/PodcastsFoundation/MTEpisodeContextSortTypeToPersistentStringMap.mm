@interface MTEpisodeContextSortTypeToPersistentStringMap
@end

@implementation MTEpisodeContextSortTypeToPersistentStringMap

void __MTEpisodeContextSortTypeToPersistentStringMap_inverted_block_invoke()
{
  v5[10] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F54BD568;
  v4[1] = &unk_1F54BD6E8;
  v5[0] = @"default";
  v5[1] = @"pub-date";
  v4[2] = &unk_1F54BD700;
  v4[3] = &unk_1F54BD718;
  v5[2] = @"pub-date-ascending";
  v5[3] = @"title";
  v4[4] = &unk_1F54BD730;
  v4[5] = &unk_1F54BD748;
  v5[4] = @"bookmarked-date";
  v5[5] = @"bookmarked-date-ascending";
  v4[6] = &unk_1F54BD760;
  v4[7] = &unk_1F54BD778;
  v5[6] = @"group-by-shows";
  v5[7] = @"downloaded-date-ascending";
  v4[8] = &unk_1F54BD790;
  v4[9] = &unk_1F54BD7A8;
  v5[8] = @"downloaded-date";
  v5[9] = @"**Invalid(enum-count)**";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:10];
  v1 = MTEpisodeContextSortTypeToPersistentStringMap_inverted_map;
  MTEpisodeContextSortTypeToPersistentStringMap_inverted_map = v0;

  v2 = [MTEpisodeContextSortTypeToPersistentStringMap_inverted_map mt_invertedDictionary];
  v3 = MTEpisodeContextSortTypeToPersistentStringMap_inverted_invertedMap;
  MTEpisodeContextSortTypeToPersistentStringMap_inverted_invertedMap = v2;
}

@end