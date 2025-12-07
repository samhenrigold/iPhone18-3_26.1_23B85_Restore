@interface OTInheritanceKey(CDP)
- (id)accessCode;
- (uint64_t)initFromAccessKey:()CDP;
@end

@implementation OTInheritanceKey(CDP)

- (uint64_t)initFromAccessKey:()CDP
{
  v4 = a3;
  wrappingKeyData = [v4 wrappingKeyData];
  v6 = [wrappingKeyData length];

  if (v6)
  {
    v8 = _CDPLogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [OTInheritanceKey(CDP) initFromAccessKey:v8];
    }

    v9 = objc_alloc(MEMORY[0x1E69B7CD8]);
    wrappedKeyData = [v4 wrappedKeyData];
    wrappingKeyData2 = [v4 wrappingKeyData];
    beneficiaryID = [v4 beneficiaryID];
    v25 = 0;
    v13 = &v25;
    v14 = [v9 initWithWrappedKeyData:wrappedKeyData wrappingKeyData:wrappingKeyData2 uuid:beneficiaryID error:&v25];
  }

  else
  {
    wrappingKeyString = [v4 wrappingKeyString];
    v16 = [wrappingKeyString length];

    if (!v16)
    {
      v20 = 0;
      goto LABEL_14;
    }

    v18 = _CDPLogSystem(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [OTInheritanceKey(CDP) initFromAccessKey:v18];
    }

    v19 = objc_alloc(MEMORY[0x1E69B7CD8]);
    wrappedKeyData = [v4 wrappedKeyData];
    wrappingKeyData2 = [v4 wrappingKeyString];
    beneficiaryID = [v4 beneficiaryID];
    v24 = 0;
    v13 = &v24;
    v14 = [v19 initWithWrappedKeyData:wrappedKeyData wrappingKeyString:wrappingKeyData2 uuid:beneficiaryID error:&v24];
  }

  v16 = v14;
  v20 = *v13;

  if (v20)
  {
    v22 = _CDPLogSystem(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(OTInheritanceKey(CDP) *)v20 initFromAccessKey:v22];
    }
  }

LABEL_14:

  return v16;
}

- (id)accessCode
{
  v2 = objc_alloc(MEMORY[0x1E698DD88]);
  uuid = [self uuid];
  v4 = [v2 initWithBeneficiairyIdentifier:uuid];

  claimTokenData = [self claimTokenData];
  [v4 setClaimTokenData:claimTokenData];

  claimTokenString = [self claimTokenString];
  [v4 setClaimTokenString:claimTokenString];

  wrappingKeyData = [self wrappingKeyData];
  [v4 setWrappingKeyData:wrappingKeyData];

  wrappingKeyString = [self wrappingKeyString];
  [v4 setWrappingKeyString:wrappingKeyString];

  wrappedKeyData = [self wrappedKeyData];
  [v4 setWrappedKeyData:wrappedKeyData];

  wrappedKeyString = [self wrappedKeyString];
  [v4 setWrappedKeyString:wrappedKeyString];

  return v4;
}

- (void)initFromAccessKey:()CDP .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "Error creating key from access key string. Error - %@", &v2, 0xCu);
}

@end