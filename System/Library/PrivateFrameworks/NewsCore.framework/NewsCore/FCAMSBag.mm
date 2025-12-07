@interface FCAMSBag
+ (id)bag;
@end

@implementation FCAMSBag

+ (id)bag
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __15__FCAMSBag_bag__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1EDB278C0 != -1)
  {
    dispatch_once(&qword_1EDB278C0, block);
  }

  v2 = _MergedGlobals_199;

  return v2;
}

uint64_t __15__FCAMSBag_bag__block_invoke(uint64_t a1)
{
  objc_opt_self();
  v1 = MEMORY[0x1E698C7E0];
  v2 = [MEMORY[0x1E698C9A0] bagKeySet];
  [v1 registerBagKeySet:v2 forProfile:@"AppleNews" profileVersion:@"1"];

  v3 = MEMORY[0x1E698C7E0];
  v4 = [MEMORY[0x1E698CAF8] bagKeySet];
  [v3 registerBagKeySet:v4 forProfile:@"AppleNews" profileVersion:@"1"];

  v5 = MEMORY[0x1E698C7E0];
  v6 = [MEMORY[0x1E698CAE8] bagKeySet];
  [v5 registerBagKeySet:v6 forProfile:@"AppleNews" profileVersion:@"1"];

  v7 = MEMORY[0x1E698C7E0];
  v8 = [MEMORY[0x1E698CB70] bagKeySet];
  [v7 registerBagKeySet:v8 forProfile:@"AppleNews" profileVersion:@"1"];

  v9 = MEMORY[0x1E698C7E0];
  v10 = [MEMORY[0x1E698CA00] bagKeySet];
  [v9 registerBagKeySet:v10 forProfile:@"AppleNews" profileVersion:@"1"];

  v11 = MEMORY[0x1E698C7E0];
  v12 = [MEMORY[0x1E698C9F0] bagKeySet];
  [v11 registerBagKeySet:v12 forProfile:@"AppleNews" profileVersion:@"1"];

  v13 = MEMORY[0x1E698C7E0];
  v14 = [MEMORY[0x1E698C8A8] bagKeySet];
  [v13 registerBagKeySet:v14 forProfile:@"AppleNews" profileVersion:@"1"];

  v15 = MEMORY[0x1E698C7E0];
  v16 = [MEMORY[0x1E698CB88] bagKeySet];
  [v15 registerBagKeySet:v16 forProfile:@"AppleNews" profileVersion:@"1"];

  v17 = MEMORY[0x1E698C7E0];
  v18 = [MEMORY[0x1E698C9E8] bagKeySet];
  [v17 registerBagKeySet:v18 forProfile:@"AppleNews" profileVersion:@"1"];

  v19 = MEMORY[0x1E698C7E0];
  v20 = [MEMORY[0x1E698C970] bagKeySet];
  [v19 registerBagKeySet:v20 forProfile:@"AppleNews" profileVersion:@"1"];

  v21 = [MEMORY[0x1E698C7D8] bagForProfile:@"AppleNews" profileVersion:@"1"];
  v22 = _MergedGlobals_199;
  _MergedGlobals_199 = v21;

  return MEMORY[0x1EEE66BB8](v21, v22);
}

@end