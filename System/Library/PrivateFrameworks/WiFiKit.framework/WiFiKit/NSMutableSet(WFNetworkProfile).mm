@interface NSMutableSet(WFNetworkProfile)
- (BOOL)removeNetworkProfile:()WFNetworkProfile;
- (id)_equivalentExistingNetworkProfile:()WFNetworkProfile;
- (uint64_t)replaceNetworkProfile:()WFNetworkProfile;
@end

@implementation NSMutableSet(WFNetworkProfile)

- (uint64_t)replaceNetworkProfile:()WFNetworkProfile
{
  v4 = a3;
  v5 = [self _equivalentExistingNetworkProfile:v4];
  if (v5)
  {
    [self removeObject:v5];
  }

  else
  {
    [NSMutableSet(WFNetworkProfile) replaceNetworkProfile:v4];
  }

  [self addObject:v4];

  return 1;
}

- (BOOL)removeNetworkProfile:()WFNetworkProfile
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [self _equivalentExistingNetworkProfile:v4];
  if (v5)
  {
    [self removeObject:v5];
  }

  else
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
    {
      v11 = 136315394;
      v12 = "[NSMutableSet(WFNetworkProfile) removeNetworkProfile:]";
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_273ECD000, v6, v8, "%s: no existing network matching profile %{public}@", &v11, 0x16u);
    }
  }

  return v5 != 0;
}

- (id)_equivalentExistingNetworkProfile:()WFNetworkProfile
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__NSMutableSet_WFNetworkProfile___equivalentExistingNetworkProfile___block_invoke;
  v8[3] = &unk_279EBE610;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)replaceNetworkProfile:()WFNetworkProfile .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2 && os_log_type_enabled(v2, v4))
  {
    v6 = 136315394;
    v7 = "[NSMutableSet(WFNetworkProfile) replaceNetworkProfile:]";
    v8 = 2114;
    v9 = a1;
    _os_log_impl(&dword_273ECD000, v2, v4, "%s: no existing network matching profile %{public}@", &v6, 0x16u);
  }
}

@end