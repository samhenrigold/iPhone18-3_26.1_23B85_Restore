@interface NSData(FCANEF)
- (id)fc_anefDecryptWithKey:()FCANEF;
- (id)fc_anefEncryptWithKey:()FCANEF;
@end

@implementation NSData(FCANEF)

- (id)fc_anefEncryptWithKey:()FCANEF
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([self fc_anefKeyIsValid:v4])
  {
    v5 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(self, "length") + 28}];
    v6 = [MEMORY[0x1E695DEF0] fc_randomDataWithLength:12];
    mutableBytes = [v5 mutableBytes];
    bytes = [v6 bytes];
    v9 = *(bytes + 8);
    *mutableBytes = *bytes;
    *(mutableBytes + 8) = v9;
    [v4 bytes];
    [v4 length];
    [v6 bytes];
    [self bytes];
    v10 = [self length];
    v16 = [v5 mutableBytes] + 12;
    v11 = CCCryptorGCMOneshotEncrypt();
    mutableBytes2 = [v5 mutableBytes];
    v13 = [self length];
    *(mutableBytes2 + v13 + 12) = v22;
    if (v11)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __40__NSData_FCANEF__fc_anefEncryptWithKey___block_invoke_2;
      v17[3] = &unk_1E7C41578;
      v19 = v11;
      v17[4] = self;
      v18 = v4;
      v14 = __40__NSData_FCANEF__fc_anefEncryptWithKey___block_invoke_2(v17);
    }

    else
    {
      v14 = v5;
    }
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __40__NSData_FCANEF__fc_anefEncryptWithKey___block_invoke;
    v20[3] = &unk_1E7C397D0;
    v20[4] = self;
    v21 = v4;
    v14 = __40__NSData_FCANEF__fc_anefEncryptWithKey___block_invoke(v20);
  }

  return v14;
}

- (id)fc_anefDecryptWithKey:()FCANEF
{
  v4 = a3;
  if ([self fc_anefKeyIsValid:v4])
  {
    if ([self length] < 0x1D)
    {
      v7 = 0;
    }

    else
    {
      [self bytes];
      [self bytes];
      [self length];
      v5 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(self, "length") - 28}];
      [v4 bytes];
      [v4 length];
      [self bytes];
      [self length];
      [v5 mutableBytes];
      v6 = CCCryptorGCMOneshotDecrypt();
      if (v6)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __40__NSData_FCANEF__fc_anefDecryptWithKey___block_invoke_2;
        v9[3] = &unk_1E7C41578;
        v11 = v6;
        v9[4] = self;
        v10 = v4;
        v7 = __40__NSData_FCANEF__fc_anefDecryptWithKey___block_invoke_2(v9);
      }

      else
      {
        v7 = v5;
      }
    }
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__NSData_FCANEF__fc_anefDecryptWithKey___block_invoke;
    v12[3] = &unk_1E7C397D0;
    v12[4] = self;
    v13 = v4;
    v7 = __40__NSData_FCANEF__fc_anefDecryptWithKey___block_invoke(v12);
  }

  return v7;
}

@end