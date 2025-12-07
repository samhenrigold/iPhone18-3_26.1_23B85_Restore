@interface HDEncryptedArchiveSymmetricKey
+ (id)fetchFromKeychainForLabel:(id)label error:(id *)error;
+ (id)randomKeyWithError:(id *)error;
- (BOOL)addToKeychainWithLabel:(id)label error:(id *)error;
- (BOOL)deleteFromKeychainWithLabel:(id)label error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HDEncryptedArchiveSymmetricKey)initWithCoder:(id)coder;
- (HDEncryptedArchiveSymmetricKey)initWithData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HDEncryptedArchiveSymmetricKey

- (HDEncryptedArchiveSymmetricKey)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = HDEncryptedArchiveSymmetricKey;
  v5 = [(HDEncryptedArchiveSymmetricKey *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_copy(dataCopy);
    key = v5->_key;
    v5->_key = v6;
  }

  return v5;
}

+ (id)randomKeyWithError:(id *)error
{
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  v5 = SecRandomCopyBytes(*MEMORY[0x277CDC540], [v4 length], objc_msgSend(v4, "mutableBytes"));
  if (v5)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:2000 format:{@"Failed to generate random symmetric key: %d", v5}];
    v6 = 0;
  }

  else
  {
    v6 = [[HDEncryptedArchiveSymmetricKey alloc] initWithData:v4];
  }

  return v6;
}

+ (id)fetchFromKeychainForLabel:(id)label error:(id *)error
{
  v32[7] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  result = 0;
  v6 = *MEMORY[0x277CDC228];
  v31[0] = *MEMORY[0x277CDC080];
  v31[1] = v6;
  v7 = *MEMORY[0x277CDC250];
  v32[0] = labelCopy;
  v32[1] = v7;
  v8 = *MEMORY[0x277CDC008];
  v9 = *MEMORY[0x277CDC5C8];
  v31[2] = *MEMORY[0x277CDBFE0];
  v31[3] = v9;
  v10 = *MEMORY[0x277CDBED8];
  v31[4] = *MEMORY[0x277CDC140];
  v31[5] = v10;
  v11 = *MEMORY[0x277CDBF18];
  v32[4] = MEMORY[0x277CBEC28];
  v32[5] = v11;
  v32[2] = v8;
  v32[3] = MEMORY[0x277CBEC38];
  v31[6] = *MEMORY[0x277CDC558];
  v32[6] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:7];
  v13 = SecItemCopyMatching(v12, &result);
  if (v13)
  {
    if (v13 != -25300)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA590];
      v16 = v13;
      v29 = *MEMORY[0x277CCA450];
      v30 = @"Failed to retrieve symmetric key.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v18 = [v14 errorWithDomain:v15 code:v16 userInfo:v17];
      if (v18)
      {
        if (error)
        {
          v19 = v18;
          *error = v18;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (!result)
  {
LABEL_9:
    [MEMORY[0x277CCA9B8] hk_assignError:error code:118 format:@"No matching key found."];
    goto LABEL_13;
  }

  v20 = CFGetTypeID(result);
  if (v20 == CFDataGetTypeID())
  {
    v21 = [HDEncryptedArchiveSymmetricKey alloc];
    v22 = result;
    v23 = [(HDEncryptedArchiveSymmetricKey *)v21 initWithData:result];

    goto LABEL_14;
  }

  v24 = MEMORY[0x277CCA9B8];
  v25 = CFGetTypeID(result);
  v26 = CFCopyTypeIDDescription(v25);
  [v24 hk_assignError:error code:3 format:{@"Unexpected return type %@ during keychain fetch.", v26}];

  CFRelease(result);
LABEL_13:
  v23 = 0;
LABEL_14:

  return v23;
}

- (BOOL)addToKeychainWithLabel:(id)label error:(id *)error
{
  v28[8] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  key = self->_key;
  v8 = *MEMORY[0x277CDC228];
  v27[0] = *MEMORY[0x277CDC5E8];
  v27[1] = v8;
  v9 = *MEMORY[0x277CDC250];
  v28[0] = key;
  v28[1] = v9;
  v27[2] = *MEMORY[0x277CDC018];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{8 * -[NSData length](key, "length")}];
  v11 = *MEMORY[0x277CDBFE0];
  v12 = *MEMORY[0x277CDC008];
  v28[2] = v10;
  v28[3] = v12;
  v13 = *MEMORY[0x277CDC080];
  v27[3] = v11;
  v27[4] = v13;
  v14 = *MEMORY[0x277CDC5C8];
  v28[4] = labelCopy;
  v28[5] = MEMORY[0x277CBEC38];
  v15 = *MEMORY[0x277CDC140];
  v27[5] = v14;
  v27[6] = v15;
  v27[7] = *MEMORY[0x277CDBED8];
  v16 = *MEMORY[0x277CDBF18];
  v28[6] = MEMORY[0x277CBEC28];
  v28[7] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:8];

  v18 = SecItemAdd(v17, 0);
  if (v18)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA590];
    v25 = *MEMORY[0x277CCA450];
    v26 = @"Failed to store public key.";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v22 = [v19 errorWithDomain:v20 code:v18 userInfo:v21];
    if (v22)
    {
      if (error)
      {
        v23 = v22;
        *error = v22;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v18 == 0;
}

- (BOOL)deleteFromKeychainWithLabel:(id)label error:(id *)error
{
  v23[5] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v6 = *MEMORY[0x277CDC228];
  v22[0] = *MEMORY[0x277CDC080];
  v22[1] = v6;
  v7 = *MEMORY[0x277CDC250];
  v23[0] = labelCopy;
  v23[1] = v7;
  v8 = *MEMORY[0x277CDC140];
  v22[2] = *MEMORY[0x277CDC5C8];
  v22[3] = v8;
  v23[2] = MEMORY[0x277CBEC38];
  v23[3] = MEMORY[0x277CBEC28];
  v22[4] = *MEMORY[0x277CDBED8];
  v23[4] = *MEMORY[0x277CDBF18];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
  v10 = SecItemDelete(v9);
  v11 = v10;
  if (v10 != -25300 && v10)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA590];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"Failed to delete key.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v15 = [v12 errorWithDomain:v13 code:v11 userInfo:v14];
    if (v15)
    {
      if (error)
      {
        v16 = v15;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  if (v11)
  {
    v17 = v11 == -25300;
  }

  else
  {
    v17 = 1;
  }

  v18 = v17;

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSData *)self->_key isEqualToData:equalCopy[1]];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HDEncryptedArchiveSymmetricKey allocWithZone:zone];
  key = self->_key;

  return [(HDEncryptedArchiveSymmetricKey *)v4 initWithData:key];
}

- (HDEncryptedArchiveSymmetricKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sym_key"];

  if (v5)
  {
    self = [(HDEncryptedArchiveSymmetricKey *)self initWithData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end