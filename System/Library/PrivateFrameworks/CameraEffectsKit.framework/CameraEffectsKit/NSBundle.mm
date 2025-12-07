@interface NSBundle
@end

@implementation NSBundle

uint64_t __26__NSBundle_JFX__jfxBundle__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = jfxBundle_jfxBundle;
  jfxBundle_jfxBundle = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

@end