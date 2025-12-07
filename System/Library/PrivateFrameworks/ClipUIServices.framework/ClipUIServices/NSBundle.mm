@interface NSBundle
@end

@implementation NSBundle

uint64_t __58__NSBundle_ClipUIServicesExtras__cps_clipUIServicesBundle__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = cps_clipUIServicesBundle_bundle;
  cps_clipUIServicesBundle_bundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end