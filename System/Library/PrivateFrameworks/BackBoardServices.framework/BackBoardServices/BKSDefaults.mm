@interface BKSDefaults
+ (id)externalDefaults;
+ (id)localDefaults;
@end

@implementation BKSDefaults

+ (id)localDefaults
{
  if (localDefaults___once != -1)
  {
    dispatch_once(&localDefaults___once, &__block_literal_global_12851);
  }

  v3 = localDefaults___instance;

  return v3;
}

+ (id)externalDefaults
{
  if (externalDefaults___once != -1)
  {
    dispatch_once(&externalDefaults___once, &__block_literal_global_2_12848);
  }

  v3 = externalDefaults___instance;

  return v3;
}

uint64_t __31__BKSDefaults_externalDefaults__block_invoke()
{
  v0 = objc_alloc_init(BKSExternalDefaults);
  v1 = externalDefaults___instance;
  externalDefaults___instance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __28__BKSDefaults_localDefaults__block_invoke()
{
  v0 = objc_alloc_init(BKSLocalDefaults);
  v1 = localDefaults___instance;
  localDefaults___instance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end