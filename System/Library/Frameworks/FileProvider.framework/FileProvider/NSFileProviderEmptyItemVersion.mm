@interface NSFileProviderEmptyItemVersion
@end

@implementation NSFileProviderEmptyItemVersion

uint64_t __47___NSFileProviderEmptyItemVersion_emptyVersion__block_invoke()
{
  v0 = objc_alloc_init(_NSFileProviderEmptyItemVersion);
  v1 = emptyVersion_instance;
  emptyVersion_instance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end