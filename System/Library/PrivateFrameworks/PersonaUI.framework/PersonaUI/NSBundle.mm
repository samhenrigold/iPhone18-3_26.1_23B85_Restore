@interface NSBundle
@end

@implementation NSBundle

uint64_t __41__NSBundle_PersonaUI__pr_personaUIBundle__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = pr_personaUIBundle_personaUIBundle;
  pr_personaUIBundle_personaUIBundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end