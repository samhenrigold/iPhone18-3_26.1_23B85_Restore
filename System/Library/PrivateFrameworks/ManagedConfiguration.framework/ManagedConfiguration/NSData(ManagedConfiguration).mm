@interface NSData(ManagedConfiguration)
+ (id)MCDataFromFile:()ManagedConfiguration;
+ (id)MCDataWithHexString:()ManagedConfiguration;
+ (uint64_t)MCDataWithCFData:()ManagedConfiguration;
- (id)MCHexString;
- (id)MCSHA256Hash;
@end

@implementation NSData(ManagedConfiguration)

- (id)MCHexString
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [self length];
  bytes = [self bytes];
  v4 = v9 - ((2 * v2 + 16) & 0xFFFFFFFFFFFFFFF0);
  if (v2)
  {
    v5 = v9 - ((2 * v2 + 16) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v6 = *bytes++;
      *v5 = MCHexString_digits[v6 >> 4];
      v4 = v5 + 2;
      v5[1] = MCHexString_digits[v6 & 0xF];
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  *v4 = 0;
  v7 = [MEMORY[0x1E696AEC0] stringWithCString:? encoding:?];

  return v7;
}

+ (id)MCDataWithHexString:()ManagedConfiguration
{
  v3 = a3;
  data = [MEMORY[0x1E695DF88] data];
  v5 = [v3 length];
  v14 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [v3 characterAtIndex:v7];
      v10 = v9 - 48;
      if ((v9 - 65) <= 5)
      {
        v11 = v9 - 55;
      }

      else
      {
        v11 = 0;
      }

      if ((v9 - 97) <= 5)
      {
        v12 = v9 - 87;
      }

      else
      {
        v12 = v11;
      }

      if ((v9 - 48) > 9u)
      {
        v10 = v12;
      }

      if (v8)
      {
        v14 = 16 * v10;
      }

      else
      {
        v14 |= v10;
        [data appendBytes:&v14 length:1];
      }

      v8 ^= 1u;
      ++v7;
    }

    while (v6 != v7);
  }

  return data;
}

+ (uint64_t)MCDataWithCFData:()ManagedConfiguration
{
  v4 = MEMORY[0x1E695DEF0];
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);

  return [v4 dataWithBytes:BytePtr length:Length];
}

- (id)MCSHA256Hash
{
  v4 = *MEMORY[0x1E69E9840];
  CC_SHA256([self bytes], objc_msgSend(self, "length"), md);
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];

  return v1;
}

+ (id)MCDataFromFile:()ManagedConfiguration
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = 0;
  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3 options:0 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = v3;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Could not read data from path %{public}@: %{public}@", buf, 0x16u);
    }

    if (MCIsDaemonProcess == 1 && [v5 code] == 257)
    {
      domain = [v5 domain];
      v8 = [domain isEqualToString:*MEMORY[0x1E696A250]];

      if (v8)
      {
        MCLogUnexpectedFileAccessError(v3, v5);
      }
    }
  }

  return v4;
}

@end