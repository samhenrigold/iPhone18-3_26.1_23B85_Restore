@interface NSBundle
@end

@implementation NSBundle

uint64_t __48__NSBundle_PhotosUI__pu_PhotosUIFrameworkBundle__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = pu_PhotosUIFrameworkBundle_frameworkBundle;
  pu_PhotosUIFrameworkBundle_frameworkBundle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end