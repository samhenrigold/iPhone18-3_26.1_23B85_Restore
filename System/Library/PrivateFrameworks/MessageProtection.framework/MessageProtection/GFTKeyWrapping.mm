@interface GFTKeyWrapping
+ (id)wrapSeed:(id)seed to:(__SecKey *)to legacy:(BOOL)legacy error:(id *)error;
@end

@implementation GFTKeyWrapping

+ (id)wrapSeed:(id)seed to:(__SecKey *)to legacy:(BOOL)legacy error:(id *)error
{
  legacyCopy = legacy;
  seedCopy = seed;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  error = 0;
  v11 = SecKeyCopyExternalRepresentation(to, &error);
  [v10 addObject:v11];

  if (error && error)
  {
    v12 = 0;
    *error = error;
  }

  else
  {
    v12 = [_TtC17MessageProtection13GFTKeyWrapper wrapSeed:seedCopy to:v10 legacy:legacyCopy error:error];
  }

  return v12;
}

@end