@interface SBAllDisplaysPredicate
@end

@implementation SBAllDisplaysPredicate

uint64_t __41___SBAllDisplaysPredicate_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_SBAllDisplaysPredicate);
  v1 = sharedInstance___singleton;
  sharedInstance___singleton = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end