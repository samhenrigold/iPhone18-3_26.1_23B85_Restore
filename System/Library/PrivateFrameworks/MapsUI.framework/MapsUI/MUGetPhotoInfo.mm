@interface MUGetPhotoInfo
@end

@implementation MUGetPhotoInfo

uint64_t ___MUGetPhotoInfo_block_invoke()
{
  v0 = [MEMORY[0x1E69A21D8] defaultPhotoOptionsWithAllowSmaller:1];
  v1 = _MUGetPhotoInfo_options;
  _MUGetPhotoInfo_options = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end