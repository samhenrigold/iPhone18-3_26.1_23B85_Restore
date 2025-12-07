@interface EKNullFetchRequestToken
+ (id)sharedToken;
@end

@implementation EKNullFetchRequestToken

+ (id)sharedToken
{
  if (sharedToken_onceToken != -1)
  {
    +[EKNullFetchRequestToken sharedToken];
  }

  v3 = sharedToken_sharedToken;

  return v3;
}

uint64_t __38__EKNullFetchRequestToken_sharedToken__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = sharedToken_sharedToken;
  sharedToken_sharedToken = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

@end