@interface MFCreateStringFromHeaderBytes
@end

@implementation MFCreateStringFromHeaderBytes

uint64_t ___MFCreateStringFromHeaderBytes_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"\\=\\?([^?]*)\\?(q|b)\\?([^?]*)\\?\\=" options:1 error:0];
  _MFCreateStringFromHeaderBytes_mimeRegex = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

@end