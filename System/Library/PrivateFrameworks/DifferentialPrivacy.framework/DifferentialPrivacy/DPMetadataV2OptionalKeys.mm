@interface DPMetadataV2OptionalKeys
@end

@implementation DPMetadataV2OptionalKeys

void ___DPMetadataV2OptionalKeys_block_invoke()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = @"VDAF";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];
  v1 = _DPMetadataV2OptionalKeys__DPMetadataOptionalKeys;
  _DPMetadataV2OptionalKeys__DPMetadataOptionalKeys = v0;
}

@end