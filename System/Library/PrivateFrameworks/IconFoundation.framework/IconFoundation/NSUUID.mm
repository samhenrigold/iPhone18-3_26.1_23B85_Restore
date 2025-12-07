@interface NSUUID
@end

@implementation NSUUID

uint64_t __47__NSUUID_IconFoundationAdditions___IF_nullUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&UUID_NULL];
  v1 = _IF_nullUUID_nullUUID;
  _IF_nullUUID_nullUUID = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end