@interface NSMutableDictionary(Goodies)
- (uint64_t)mf_setBool:()Goodies forKey:;
- (void)mf_addObject:()Goodies forKey:;
- (void)mf_setInteger:()Goodies forKey:;
@end

@implementation NSMutableDictionary(Goodies)

- (uint64_t)mf_setBool:()Goodies forKey:
{
  if (a3)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  return [self setObject:v3 forKey:?];
}

- (void)mf_setInteger:()Goodies forKey:
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInt:a3];
  [self setObject:v8 forKey:v7];
}

- (void)mf_addObject:()Goodies forKey:
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v7 copyWithZone:0];

    CFDictionaryAddValue(self, v9, v6);
    v8 = v9;
  }

  else
  {
    v10 = vm_imap_log(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_2720B1000, v10, OS_LOG_TYPE_DEFAULT, "Bad arguments to %@, %@", &v11, 0x16u);
    }
  }
}

@end