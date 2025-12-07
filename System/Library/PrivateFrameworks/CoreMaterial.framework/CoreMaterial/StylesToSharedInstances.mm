@interface StylesToSharedInstances
@end

@implementation StylesToSharedInstances

uint64_t ___StylesToSharedInstances_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _StylesToSharedInstances___stylesToSharedInstances = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

@end