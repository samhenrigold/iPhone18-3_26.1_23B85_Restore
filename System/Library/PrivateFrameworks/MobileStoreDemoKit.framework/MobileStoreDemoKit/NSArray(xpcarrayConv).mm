@interface NSArray(xpcarrayConv)
+ (id)arrayWithXPCArray:()xpcarrayConv;
- (id)_convertObjectToNSData:()xpcarrayConv;
- (id)initWithXPCArray:()xpcarrayConv;
- (id)xpcArrayFromArray;
- (id)xpcSafeArrayFromArray;
@end

@implementation NSArray(xpcarrayConv)

+ (id)arrayWithXPCArray:()xpcarrayConv
{
  v3 = MEMORY[0x277CBEA60];
  v4 = a3;
  v5 = [[v3 alloc] initWithXPCArray:v4];

  return v5;
}

- (id)initWithXPCArray:()xpcarrayConv
{
  v4 = a3;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy_;
  v17[3] = __Block_byref_object_dispose_;
  array = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __42__NSArray_xpcarrayConv__initWithXPCArray___block_invoke;
  v13 = &unk_2798EF348;
  v15 = &v16;
  selfCopy = self;
  v14 = selfCopy;
  v6 = xpc_array_apply(v4, &v10);
  if (v6)
  {
    v7 = defaultLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(NSArray(xpcarrayConv) *)v17 initWithXPCArray:v7];
    }

    selfCopy = [selfCopy initWithArray:{*(v17[0] + 40), v10, v11, v12, v13}];
    v8 = selfCopy;
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v16, 8);
  return v8;
}

- (id)xpcArrayFromArray
{
  v2 = xpc_array_create(0, 0);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__NSArray_xpcarrayConv__xpcArrayFromArray__block_invoke;
  v6[3] = &unk_2798EF370;
  v3 = v2;
  v7 = v3;
  v8 = &v9;
  [self enumerateObjectsUsingBlock:v6];
  if (v10[3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)xpcSafeArrayFromArray
{
  v38 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = self;
    v2 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (!v2)
    {
      goto LABEL_32;
    }

    v3 = v2;
    v4 = *v33;
    v5 = 0x277CBE000uLL;
    v23 = *v33;
    while (1)
    {
      v6 = 0;
      v24 = v3;
      do
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v6;
          v8 = v7;
          v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v10 = v8;
          v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v29;
            do
            {
              v14 = 0;
              do
              {
                if (*v29 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v28 + 1) + 8 * v14);
                v16 = [v10 objectForKeyedSubscript:v15];
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  [v9 setObject:v16 forKeyedSubscript:v15];
                }

                else
                {
                  v17 = v5;
                  if (v16)
                  {
                    [obj _convertObjectToNSData:v16];
                  }

                  else
                  {
                    [MEMORY[0x277CBEB68] null];
                  }
                  v18 = ;
                  [v9 setObject:v18 forKeyedSubscript:v15];

                  v5 = v17;
                }

                ++v14;
              }

              while (v12 != v14);
              v19 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
              v12 = v19;
            }

            while (v19);
          }

          v20 = [v9 copy];
          [v25 addObject:v20];

          v4 = v23;
          v3 = v24;
          v6 = v26;
        }

        else
        {
          if (!v7)
          {
            goto LABEL_30;
          }

          v10 = [v7 description];
          [v25 addObject:v10];
        }

LABEL_30:
        ++v6;
      }

      while (v6 != v3);
      v3 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (!v3)
      {
LABEL_32:

        v21 = [v25 copy];
        goto LABEL_34;
      }
    }
  }

  v21 = MEMORY[0x277CBEBF8];
LABEL_34:

  return v21;
}

- (id)_convertObjectToNSData:()xpcarrayConv
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (![v3 conformsToProtocol:&unk_286AE26D0] || (objc_msgSend(MEMORY[0x277CCAAB0], "archivedDataWithRootObject:requiringSecureCoding:error:", v4, 0, 0), (data = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (![MEMORY[0x277CCAC58] propertyList:v4 isValidForFormat:200] || (objc_msgSend(MEMORY[0x277CCAC58], "dataWithPropertyList:format:options:error:", v4, 200, 0, 0), (data = objc_claimAutoreleasedReturnValue()) == 0))
      {
        data = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:0];
        if (!data)
        {
          v6 = [v4 description];
          data = [v6 dataUsingEncoding:4];
        }
      }
    }
  }

  else
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  return data;
}

- (void)initWithXPCArray:()xpcarrayConv .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_259B7D000, a2, OS_LOG_TYPE_DEBUG, "Converted from xpc to NSArray: %{public}@", &v3, 0xCu);
}

@end