@interface MTPlayReasonToPersistentStringMap
@end

@implementation MTPlayReasonToPersistentStringMap

void __MTPlayReasonToPersistentStringMap_inverted_block_invoke()
{
  v5[16] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F54BD550;
  v4[1] = &unk_1F54BD580;
  v5[0] = @"none";
  v5[1] = @"restoration";
  v4[2] = &unk_1F54BD598;
  v4[3] = &unk_1F54BD5B0;
  v5[2] = @"handoff";
  v5[3] = @"user";
  v4[4] = &unk_1F54BD5C8;
  v4[5] = &unk_1F54BD5E0;
  v5[4] = @"car-play";
  v5[5] = @"magical-moments";
  v4[6] = &unk_1F54BD5F8;
  v4[7] = &unk_1F54BD610;
  v5[6] = @"store";
  v5[7] = @"media-remote";
  v4[8] = &unk_1F54BD628;
  v4[9] = &unk_1F54BD640;
  v5[8] = @"siri";
  v5[9] = @"quick-actions";
  v4[10] = &unk_1F54BD658;
  v4[11] = &unk_1F54BD670;
  v5[10] = @"top-shelf";
  v5[11] = @"shared-queue";
  v4[12] = &unk_1F54BD688;
  v4[13] = &unk_1F54BD6A0;
  v5[12] = @"rich-notifications";
  v5[13] = @"playthrough";
  v4[14] = &unk_1F54BD6B8;
  v4[15] = &unk_1F54BD6D0;
  v5[14] = @"widget";
  v5[15] = @"**Invalid(enum-count)**";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:16];
  v1 = MTPlayReasonToPersistentStringMap_inverted_map;
  MTPlayReasonToPersistentStringMap_inverted_map = v0;

  v2 = [MTPlayReasonToPersistentStringMap_inverted_map mt_invertedDictionary];
  v3 = MTPlayReasonToPersistentStringMap_inverted_invertedMap;
  MTPlayReasonToPersistentStringMap_inverted_invertedMap = v2;
}

@end