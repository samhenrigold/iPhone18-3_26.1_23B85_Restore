@interface SNLPAssetVersionChecker
+ (id)loadNSNumberListFromPlistURL:(id)l;
+ (unordered_set<unsigned)loadUInt32ListFromConfigPListResourceName:(std:(std:(id)name :(SEL)a3 allocator<unsigned int>> *__return_ptr)retstr :(id)a4 equal_to<unsigned)int>;
+ (unordered_set<unsigned)loadUInt32ListFromPlistURL:(std:(std:(id)l :(SEL)a3 allocator<unsigned int>> *__return_ptr)retstr :(id)a4 equal_to<unsigned)int>;
@end

@implementation SNLPAssetVersionChecker

+ (unordered_set<unsigned)loadUInt32ListFromConfigPListResourceName:(std:(std:(id)name :(SEL)a3 allocator<unsigned int>> *__return_ptr)retstr :(id)a4 equal_to<unsigned)int>
{
  v10 = a4;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:name];
  v7 = [v6 URLForResource:v10 withExtension:@"plist"];

  if (v7)
  {
    [name loadUInt32ListFromPlistURL:v7];
  }

  else
  {
    v8 = SNLPOSLoggerForCategory(0);
    retstr->var0.var0 = 0u;
    *&retstr->var0.var1.var0 = 0u;
    retstr->var0.var3 = 1.0;
  }

  return result;
}

+ (unordered_set<unsigned)loadUInt32ListFromPlistURL:(std:(std:(id)l :(SEL)a3 allocator<unsigned int>> *__return_ptr)retstr :(id)a4 equal_to<unsigned)int>
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [SNLPAssetVersionChecker loadNSNumberListFromPlistURL:a4];
  retstr->var0.var0 = 0u;
  *&retstr->var0.var1.var0 = 0u;
  retstr->var0.var3 = 1.0;
  v17 = v5;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(retstr, [v5 count]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v17;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntValue = [*(*(&v19 + 1) + 8 * i) unsignedIntValue];
        var0 = retstr->var0.var0.var1.var0;
        if (!var0)
        {
          goto LABEL_22;
        }

        v11 = vcnt_s8(var0);
        v11.i16[0] = vaddlv_u8(v11);
        if (v11.u32[0] > 1uLL)
        {
          v12 = unsignedIntValue;
          if (var0 <= unsignedIntValue)
          {
            v12 = unsignedIntValue % var0;
          }
        }

        else
        {
          v12 = (var0 - 1) & unsignedIntValue;
        }

        v13 = retstr->var0.var0.var0[v12];
        if (!v13 || (v14 = *v13) == 0)
        {
LABEL_22:
          operator new();
        }

        while (1)
        {
          v15 = v14[1];
          if (v15 == unsignedIntValue)
          {
            break;
          }

          if (v11.u32[0] > 1uLL)
          {
            if (v15 >= var0)
            {
              v15 %= var0;
            }
          }

          else
          {
            v15 &= var0 - 1;
          }

          if (v15 != v12)
          {
            goto LABEL_22;
          }

LABEL_21:
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_22;
          }
        }

        if (*(v14 + 4) != unsignedIntValue)
        {
          goto LABEL_21;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return result;
}

+ (id)loadNSNumberListFromPlistURL:(id)l
{
  v3 = [MEMORY[0x277CBEA60] arrayWithContentsOfURL:l];
  if (!v3)
  {
    v4 = SNLPOSLoggerForCategory(0);
  }

  return v3;
}

@end