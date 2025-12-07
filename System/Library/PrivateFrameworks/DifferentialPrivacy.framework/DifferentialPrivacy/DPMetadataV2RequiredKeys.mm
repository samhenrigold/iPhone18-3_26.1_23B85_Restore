@interface DPMetadataV2RequiredKeys
@end

@implementation DPMetadataV2RequiredKeys

void ___DPMetadataV2RequiredKeys_block_invoke()
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = @"Version";
  v2[1] = @"DediscoTaskConfig";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:2];
  v1 = _DPMetadataV2RequiredKeys__DPMetadataRequiredKeys;
  _DPMetadataV2RequiredKeys__DPMetadataRequiredKeys = v0;
}

@end