@interface SRAuthorizationGroup
+ (id)authorizationGroupWithServiceName:(id)name;
+ (void)initialize;
- (NSArray)localizedCollectedData;
- (NSArray)localizedNotCollectedData;
- (NSArray)localizedSampleData;
- (NSArray)localizedWhatIsShared;
- (NSArray)localizedWhenShared;
- (NSArray)platforms;
- (NSString)localizedPlatforms;
- (NSString)localizedRequiredAuthAlertDetail;
- (NSString)localizedRevokeRequiredAuthAlertDetail;
- (SRAuthorizationGroup)initWithBundle:(id)bundle;
- (id)localizedExampleDataValue:(id)value;
- (void)dealloc;
@end

@implementation SRAuthorizationGroup

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _MergedGlobals_6 = os_log_create("com.apple.SensorKit", "SRAuthorizationGroup");
    qword_28001A2C0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  }
}

+ (id)authorizationGroupWithServiceName:(id)name
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [qword_28001A2C0 objectForKey:?];
  if (v4)
  {
LABEL_4:
    v6 = [[SRAuthorizationGroup alloc] initWithBundle:v4];

    return v6;
  }

  v5 = [MEMORY[0x277CCA8D8] skui_bundleForAuthorizationService:name];
  if (v5)
  {
    v4 = v5;
    [qword_28001A2C0 setObject:v5 forKey:name];
    goto LABEL_4;
  }

  v8 = _MergedGlobals_6;
  if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    nameCopy = name;
    _os_log_error_impl(&dword_265602000, v8, OS_LOG_TYPE_ERROR, "Unable to find a bundle for %{public}@", &v9, 0xCu);
  }

  return 0;
}

- (SRAuthorizationGroup)initWithBundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = SRAuthorizationGroup;
  v4 = [(SRAuthorizationGroup *)&v6 init];
  if (v4)
  {
    v4->_bundle = bundle;
  }

  return v4;
}

- (void)dealloc
{
  self->_bundle = 0;
  v3.receiver = self;
  v3.super_class = SRAuthorizationGroup;
  [(SRAuthorizationGroup *)&v3 dealloc];
}

- (NSArray)localizedCollectedData
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRCollectedData"];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v9];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }

        [(NSArray *)v4 addObject:v11];
      }

      v6 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

- (NSArray)localizedNotCollectedData
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRNotCollectedData"];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v9];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }

        [(NSArray *)v4 addObject:v11];
      }

      v6 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

- (NSArray)localizedWhenShared
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRWhenShared"];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v9];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }

        [(NSArray *)v4 addObject:v11];
      }

      v6 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

- (NSArray)localizedWhatIsShared
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRWhatIsShared"];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v9];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }

        [(NSArray *)v4 addObject:v11];
      }

      v6 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

- (NSString)localizedRequiredAuthAlertDetail
{
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRRequiredAuthAlertDetail"];
  result = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v3];
  if (!result)
  {
    return v3;
  }

  return result;
}

- (NSString)localizedRevokeRequiredAuthAlertDetail
{
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRRevokeRequiredAuthAlertDetail"];
  result = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v3];
  if (!result)
  {
    return v3;
  }

  return result;
}

- (NSString)localizedPlatforms
{
  v24 = *MEMORY[0x277D85DE8];
  platforms = [(SRAuthorizationGroup *)self platforms];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](platforms, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(NSArray *)platforms countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(platforms);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 isEqualToString:@"Phone"])
        {
          v9 = 42;
        }

        else if ([v8 isEqualToString:@"Watch"])
        {
          v9 = 43;
        }

        else
        {
          v9 = 0;
        }

        v10 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:v9];
        if (v10)
        {
          [v3 addObject:v10];
        }
      }

      v5 = [(NSArray *)platforms countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  if ([v3 count] >= 2)
  {
    v11 = [v3 componentsJoinedByString:{objc_msgSend(MEMORY[0x277CCACA8], "srui_localizedStringForCode:", 44)}];
    return [v11 localizedUppercaseString];
  }

  if ([v3 count] == 1)
  {
    v16 = 0;
    v12 = [MEMORY[0x277CCACA8] srui_localizedStringForCode:45];
    v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:&v16, objc_msgSend(v3, "firstObject")];
    if (!v13)
    {
      v14 = _MergedGlobals_6;
      if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v22 = v16;
        _os_log_fault_impl(&dword_265602000, v14, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
      }
    }

    v11 = v13;
    return [v11 localizedUppercaseString];
  }

  return 0;
}

- (NSArray)platforms
{
  result = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRPlatforms"];
  if (!result)
  {
    return MEMORY[0x277CBEBF8];
  }

  return result;
}

- (NSArray)localizedSampleData
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:@"SRSampleData"];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [v4 addObject:{-[SRAuthorizationGroup localizedExampleDataValue:](self, "localizedExampleDataValue:", *(*(&v10 + 1) + 8 * v8++))}];
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [MEMORY[0x277CBEA60] arrayWithArray:v4];
}

- (id)localizedExampleDataValue:(id)value
{
  v53 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([value hasSuffix:@"<no loc>"])
    {

      return [value stringByReplacingOccurrencesOfString:@"<no loc>" withString:&stru_2876FBDF0];
    }

    else
    {
      bundle = self->_bundle;

      return [(NSBundle *)bundle objectForInfoDictionaryKey:value];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277CCABB8];

    return [v6 localizedStringFromNumber:value numberStyle:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x277CCA968];

    return [v8 localizedStringFromDate:value dateStyle:1 timeStyle:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v10 = [value countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (!v10)
    {
      return [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
    }

    v12 = v10;
    v13 = *v44;
    *&v11 = 138543618;
    v37 = v11;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(value);
        }

        v15 = *(*(&v43 + 1) + 8 * v14);
        if ([v15 hasSuffix:{@"<no loc>", v37}])
        {
          v16 = [v15 stringByReplacingOccurrencesOfString:@"<no loc>" withString:&stru_2876FBDF0];
        }

        else
        {
          v16 = [(NSBundle *)self->_bundle objectForInfoDictionaryKey:v15];
        }

        v17 = v16;
        if (!v16)
        {
          v19 = _MergedGlobals_6;
          if (!os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_32;
          }

          bundlePath = [(NSBundle *)self->_bundle bundlePath];
          *buf = v37;
          v49 = v15;
          v50 = 2114;
          v51 = bundlePath;
          v21 = v19;
          v22 = "Failed to find key: %{public}@ in %{public}@/Info.plist";
          goto LABEL_35;
        }

        v18 = -[SRAuthorizationGroup localizedExampleDataValue:](self, "localizedExampleDataValue:", [value objectForKeyedSubscript:v15]);
        if (v18)
        {
          [dictionary setObject:v18 forKeyedSubscript:v17];
          goto LABEL_32;
        }

        v23 = _MergedGlobals_6;
        if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_FAULT))
        {
          v24 = [value objectForKeyedSubscript:v15];
          bundlePath2 = [(NSBundle *)self->_bundle bundlePath];
          *buf = v37;
          v49 = v24;
          v50 = 2114;
          v51 = bundlePath2;
          v21 = v23;
          v22 = "Failed to find value: %{public}@ in %{public}@/Info.plist";
LABEL_35:
          _os_log_fault_impl(&dword_265602000, v21, OS_LOG_TYPE_FAULT, v22, buf, 0x16u);
        }

LABEL_32:
        ++v14;
      }

      while (v12 != v14);
      v26 = [value countByEnumeratingWithState:&v43 objects:v52 count:16];
      v12 = v26;
      if (!v26)
      {
        return [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v28 = [value countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v28)
  {
    v30 = v28;
    v31 = *v40;
    *&v29 = 138543618;
    v38 = v29;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(value);
        }

        v33 = *(*(&v39 + 1) + 8 * i);
        v34 = [(SRAuthorizationGroup *)self localizedExampleDataValue:v33, v38];
        if (v34)
        {
          [array addObject:v34];
        }

        else
        {
          v35 = _MergedGlobals_6;
          if (os_log_type_enabled(_MergedGlobals_6, OS_LOG_TYPE_FAULT))
          {
            bundlePath3 = [(NSBundle *)self->_bundle bundlePath];
            *buf = v38;
            v49 = v33;
            v50 = 2114;
            v51 = bundlePath3;
            _os_log_fault_impl(&dword_265602000, v35, OS_LOG_TYPE_FAULT, "Failed to find value: %{public}@ in %{public}@/Info.plist", buf, 0x16u);
          }
        }
      }

      v30 = [value countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v30);
  }

  return [MEMORY[0x277CBEA60] arrayWithArray:array];
}

@end