@interface NSArray(CDPDeviceProtocol)
- (uint64_t)hasMixedSecretType;
- (uint64_t)prevailingLocalSecretType;
@end

@implementation NSArray(CDPDeviceProtocol)

- (uint64_t)prevailingLocalSecretType
{
  v15 = *MEMORY[0x1E69E9840];
  if (![self count])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  selfCopy = self;
  v3 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 1;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(selfCopy);
      }

      v8 = *(*(&v10 + 1) + 8 * v7);
      if ([v8 conformsToProtocol:{&unk_1F5A1CB00, v10}])
      {
        if ([v8 localSecretType] == 1)
        {
          break;
        }
      }

      if (v4 == ++v7)
      {
        v4 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v6 = 2;
  }

  return v6;
}

- (uint64_t)hasMixedSecretType
{
  v15 = *MEMORY[0x1E69E9840];
  if ([self count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    selfCopy = self;
    v3 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(selfCopy);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if ([v8 conformsToProtocol:{&unk_1F5A1CB00, v10}])
          {
            if (v4 & v5)
            {
              LOBYTE(v3) = 1;
              goto LABEL_17;
            }

            if ([v8 localSecretType] == 1)
            {
              v4 = 1;
            }

            else
            {
              v5 |= [v8 localSecretType] == 2;
            }
          }
        }

        v3 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }

      LOBYTE(v3) = v4 & v5;
    }

LABEL_17:
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

@end