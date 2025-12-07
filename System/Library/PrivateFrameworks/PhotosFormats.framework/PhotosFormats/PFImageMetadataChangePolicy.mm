@interface PFImageMetadataChangePolicy
+ (id)standardPolicy;
@end

@implementation PFImageMetadataChangePolicy

+ (id)standardPolicy
{
  if (standardPolicy_onceToken != -1)
  {
    dispatch_once(&standardPolicy_onceToken, &__block_literal_global_68);
  }

  v3 = standardPolicy_standardPolicy;

  return v3;
}

uint64_t __45__PFImageMetadataChangePolicy_standardPolicy__block_invoke()
{
  v0 = objc_alloc_init(PFImageMetadataChangePolicy);
  v1 = standardPolicy_standardPolicy;
  standardPolicy_standardPolicy = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end