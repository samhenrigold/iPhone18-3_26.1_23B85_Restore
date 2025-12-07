@interface MTEpisodeContextToPersistentStringMap
@end

@implementation MTEpisodeContextToPersistentStringMap

void __MTEpisodeContextToPersistentStringMap_inverted_block_invoke()
{
  v5[12] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F54BD568;
  v4[1] = &unk_1F54BD6E8;
  v5[0] = @"default";
  v5[1] = @"store";
  v4[2] = &unk_1F54BD700;
  v4[3] = &unk_1F54BD718;
  v5[2] = @"library-episodes";
  v5[3] = @"downloaded-episodes";
  v4[4] = &unk_1F54BD730;
  v4[5] = &unk_1F54BD748;
  v5[4] = @"show-feed";
  v5[5] = @"show-user-episodes";
  v4[6] = &unk_1F54BD760;
  v4[7] = &unk_1F54BD778;
  v5[6] = @"listen-now";
  v5[7] = @"listen-now-latest-episodes";
  v4[8] = &unk_1F54BD790;
  v4[9] = &unk_1F54BD7A8;
  v5[8] = @"bookmarks";
  v5[9] = @"show-downloaded-episodes";
  v4[10] = &unk_1F54BD7C0;
  v4[11] = &unk_1F54BD7D8;
  v5[10] = @"recently-played";
  v5[11] = @"**Invalid(enum-count)**";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:12];
  v1 = MTEpisodeContextToPersistentStringMap_inverted_map;
  MTEpisodeContextToPersistentStringMap_inverted_map = v0;

  v2 = [MTEpisodeContextToPersistentStringMap_inverted_map mt_invertedDictionary];
  v3 = MTEpisodeContextToPersistentStringMap_inverted_invertedMap;
  MTEpisodeContextToPersistentStringMap_inverted_invertedMap = v2;
}

@end