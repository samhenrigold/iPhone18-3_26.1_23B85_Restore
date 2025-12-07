@interface VSAMSIdentityProviderResponseValueTransformer
- (VSAMSIdentityProviderResponseValueTransformer)init;
@end

@implementation VSAMSIdentityProviderResponseValueTransformer

- (VSAMSIdentityProviderResponseValueTransformer)init
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = VSAMSIdentityProviderResponseValueTransformer;
  v2 = [(VSCompoundValueTransformer *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSAMSIdentityProviderResponseDictionaryValueTransformer);
    v4 = objc_alloc_init(MEMORY[0x277CE2258]);
    [v4 setObjectValueTransformer:v3];
    v5 = [MEMORY[0x277CCAE68] valueTransformerForName:*MEMORY[0x277CE2488]];
    v6 = objc_alloc_init(MEMORY[0x277CE2258]);
    [v6 setObjectValueTransformer:v5];
    v10[0] = v6;
    v10[1] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    [(VSCompoundValueTransformer *)v2 setValueTransformers:v7];
  }

  return v2;
}

@end