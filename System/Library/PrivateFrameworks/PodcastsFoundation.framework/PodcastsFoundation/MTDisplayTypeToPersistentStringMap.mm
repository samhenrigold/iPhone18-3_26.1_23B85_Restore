@interface MTDisplayTypeToPersistentStringMap
@end

@implementation MTDisplayTypeToPersistentStringMap

void __MTDisplayTypeToPersistentStringMap_inverted_block_invoke()
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F54BD568;
  v4[1] = &unk_1F54BD6E8;
  v5[0] = @"free";
  v5[1] = @"paid";
  v4[2] = &unk_1F54BD700;
  v5[2] = @"hybrid";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v1 = MTDisplayTypeToPersistentStringMap_inverted_map;
  MTDisplayTypeToPersistentStringMap_inverted_map = v0;

  v2 = [MTDisplayTypeToPersistentStringMap_inverted_map mt_invertedDictionary];
  v3 = MTDisplayTypeToPersistentStringMap_inverted_invertedMap;
  MTDisplayTypeToPersistentStringMap_inverted_invertedMap = v2;
}

@end