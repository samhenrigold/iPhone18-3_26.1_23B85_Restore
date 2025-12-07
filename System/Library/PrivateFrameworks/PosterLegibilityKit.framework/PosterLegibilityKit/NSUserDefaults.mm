@interface NSUserDefaults
@end

@implementation NSUserDefaults

void __56__NSUserDefaults_PLKAdditions__plk_dumpMappedImageCache__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) standardUserDefaults];
  plk_dumpMappedImageCache_dumpMappedImageCache = [v1 BOOLForKey:?];
}

void __58__NSUserDefaults_PLKAdditions__plk_forceClassicLegibility__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) standardUserDefaults];
  plk_forceClassicLegibility_forceClassicLegibility = [v1 BOOLForKey:?];
}

void __58__NSUserDefaults_PLKAdditions__plk_disableUILabelLRUCache__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) standardUserDefaults];
  plk_disableUILabelLRUCache_disableUILabelLRUCache = [v1 BOOLForKey:?];
}

void __63__NSUserDefaults_PLKAdditions__plk_overridePerfDescriptorScale__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) standardUserDefaults];
  [v2 doubleForKey:?];
  plk_overridePerfDescriptorScale_overridePerfDescriptorScale = v1;
}

@end