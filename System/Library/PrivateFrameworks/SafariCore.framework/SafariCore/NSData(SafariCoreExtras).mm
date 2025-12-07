@interface NSData(SafariCoreExtras)
+ (id)safari_dataWithHexString:()SafariCoreExtras;
- (BOOL)safari_dataAppearsToBeCompressed;
- (id)safari_dataByAppendingData:()SafariCoreExtras;
- (id)safari_dataByCompressingData;
- (id)safari_dataByDecompressingData;
- (id)safari_descriptionWithoutSpaces;
- (id)safari_scryptHashWithSalt:()SafariCoreExtras N:r:p:keyLength:;
- (uint64_t)safari_hashMD5;
- (unsigned)safari_SHA1Hash;
@end

@implementation NSData(SafariCoreExtras)

- (id)safari_dataByCompressingData
{
  if ([self length])
  {
    v7.avail_in = [self length];
    data = 0;
    if (!deflateInit_(&v7, 9, "1.2.12", 112))
    {
      v3 = [MEMORY[0x1E695DF88] dataWithLength:{deflateBound(&v7, objc_msgSend(self, "length"))}];
      v7.next_out = [v3 mutableBytes];
      v7.avail_out = [v3 length];
      v4 = deflate(&v7, 4);
      deflateEnd(&v7);
      if (v4 == 1)
      {
        v5 = [v3 length];
        [v3 setLength:v5 - v7.avail_out];
        data = v3;
      }

      else
      {
        data = 0;
      }
    }
  }

  else
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  return data;
}

- (id)safari_dataByDecompressingData
{
  v7 = *MEMORY[0x1E69E9840];
  if ([self length])
  {
    memset(&strm.avail_in, 0, 104);
    strm.next_in = [self bytes];
    strm.avail_in = [self length];
    data2 = 0;
    if (!inflateInit_(&strm, "1.2.12", 112))
    {
      data = [MEMORY[0x1E695DF88] data];
      while (1)
      {
        strm.avail_out = 0x10000;
        strm.next_out = v6;
        if (inflate(&strm, 0) >= 2)
        {
          break;
        }

        [data appendBytes:v6 length:0x10000 - strm.avail_out];
        if (strm.avail_out)
        {
          inflateEnd(&strm);
          data2 = data;
          goto LABEL_9;
        }
      }

      inflateEnd(&strm);
      data2 = 0;
LABEL_9:
    }
  }

  else
  {
    data2 = [MEMORY[0x1E695DEF0] data];
  }

  return data2;
}

- (BOOL)safari_dataAppearsToBeCompressed
{
  if ([self length] >= 2 && (objc_msgSend(self, "getBytes:length:", &v3, 2), (v3 & 0x8F) == 8))
  {
    return (31711 * (bswap32(v3) >> 16)) < 0x843u;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)safari_hashMD5
{
  v4 = *MEMORY[0x1E69E9840];
  CC_MD5([self bytes], objc_msgSend(self, "length"), md);
  if (v3 >= 0)
  {
    return v3;
  }

  else
  {
    return -v3;
  }
}

- (unsigned)safari_SHA1Hash
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = CC_SHA1([self bytes], objc_msgSend(self, "length"), md);
  if (v1)
  {
    v1 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];
  }

  return v1;
}

- (id)safari_scryptHashWithSalt:()SafariCoreExtras N:r:p:keyLength:
{
  v8 = a6;
  v9 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = ccscrypt_storage_size();
  if (v13 <= 0)
  {
    v23 = WBS_LOG_CHANNEL_PREFIXPasswords(v13, v14);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349568;
      v28 = a4;
      v29 = 1026;
      v30 = v9;
      v31 = 1026;
      v32 = v8;
      _os_log_error_impl(&dword_1B8447000, v23, OS_LOG_TYPE_ERROR, "Invalid scrypt parameters N: %{public}llu, r: %{public}u, p: %{public}u.", buf, 0x18u);
    }

    v22 = 0;
  }

  else
  {
    v15 = malloc_type_malloc(v13, 0x6FC353A4uLL);
    v16 = malloc_type_malloc(a7, 0x44A4AFCBuLL);
    v17 = objc_alloc_init(WBSScopeExitHandler);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __70__NSData_SafariCoreExtras__safari_scryptHashWithSalt_N_r_p_keyLength___block_invoke;
    v26[3] = &__block_descriptor_48_e5_v8__0l;
    v26[4] = v15;
    v26[5] = v16;
    v25 = v17;
    [(WBSScopeExitHandler *)v17 setHandler:v26];
    [self length];
    [self bytes];
    [v12 length];
    [v12 bytes];
    v18 = ccscrypt();
    if (v18)
    {
      v20 = v18;
      v21 = WBS_LOG_CHANNEL_PREFIXPasswords(v18, v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [NSData(SafariCoreExtras) safari_scryptHashWithSalt:v20 N:v21 r:? p:? keyLength:?];
      }

      v22 = 0;
    }

    else
    {
      v22 = [MEMORY[0x1E695DEF0] dataWithBytes:v16 length:{a7, a7, v16}];
    }
  }

  return v22;
}

- (id)safari_descriptionWithoutSpaces
{
  v1 = [MEMORY[0x1E696AEC0] safari_stringAsHexWithData:self];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@>", v1];
  lowercaseString = [v2 lowercaseString];

  return lowercaseString;
}

- (id)safari_dataByAppendingData:()SafariCoreExtras
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 appendData:v4];

  return v5;
}

+ (id)safari_dataWithHexString:()SafariCoreExtras
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 characterSetWithCharactersInString:@"0123456789abcdefABCDEF"];
  invertedSet = [v5 invertedSet];

  v7 = [v4 safari_stringByRemovingCharactersInSet:invertedSet];

  v8 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v7 UTF8String];
  if ([v7 length] != 1)
  {
    v9 = 0;
    do
    {
      __strlcpy_chk();
      v11 = strtol(__str, 0, 16);
      [v8 appendBytes:&v11 length:1];
      v9 += 2;
    }

    while (v9 < [v7 length] - 1);
  }

  return v8;
}

- (void)safari_scryptHashWithSalt:()SafariCoreExtras N:r:p:keyLength:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Scrypt failed with error: %{public}d", v2, 8u);
}

@end