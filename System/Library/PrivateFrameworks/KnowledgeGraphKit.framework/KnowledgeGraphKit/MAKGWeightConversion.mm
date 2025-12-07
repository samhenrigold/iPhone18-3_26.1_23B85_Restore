@interface MAKGWeightConversion
+ (id)kgPropertiesForMAProperties:(float)properties weight:;
+ (void)maPropertiesAndWeightForKGProperties:(id)properties maProperties:(id *)maProperties maWeight:(float *)weight;
@end

@implementation MAKGWeightConversion

+ (void)maPropertiesAndWeightForKGProperties:(id)properties maProperties:(id *)maProperties maWeight:(float *)weight
{
  v25 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = propertiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    v12 = 1.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:v14];
        if ([@"__weight" isEqualToString:v14])
        {
          [v15 value];
          v12 = v16;
        }

        else
        {
          kgPropertyValue = [v15 kgPropertyValue];
          [v7 setObject:kgPropertyValue forKeyedSubscript:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 1.0;
  }

  if (maProperties)
  {
    v18 = v7;
    *maProperties = v7;
  }

  if (weight)
  {
    *weight = v12;
  }
}

+ (id)kgPropertiesForMAProperties:(float)properties weight:
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138412290;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:{v12, v18, v19}];
        v14 = [KGPropertyValue kgPropertyValueWithMAPropertyValue:v13];
        if (v14)
        {
          [v5 setObject:v14 forKeyedSubscript:v12];
        }

        else
        {
          v15 = KGLoggingConnection();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            *buf = v18;
            v24 = v13;
            _os_log_fault_impl(&dword_255870000, v15, OS_LOG_TYPE_FAULT, "Invalid matisse property value %@", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  if (properties != 1.0)
  {
    v16 = [[KGDoublePropertyValue alloc] initWithValue:properties];
    [v5 setObject:v16 forKeyedSubscript:@"__weight"];
  }

  return v5;
}

@end