@interface DPMetadataRequiredKeys
@end

@implementation DPMetadataRequiredKeys

void ___DPMetadataRequiredKeys_block_invoke()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = @"VersionHash";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];
  v1 = _DPMetadataRequiredKeys__DPMetadataRequiredKeys;
  _DPMetadataRequiredKeys__DPMetadataRequiredKeys = v0;
}

@end