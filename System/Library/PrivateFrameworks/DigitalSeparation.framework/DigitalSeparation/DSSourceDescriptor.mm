@interface DSSourceDescriptor
+ (id)descriptorCache;
+ (id)sourceDescriptorForSource:(id)source;
+ (id)sourceDescriptorForSource:(id)source localizationBundle:(id)bundle;
+ (void)initialize;
+ (void)setDescriptorCache:(uint64_t)cache;
- (BOOL)requiresCellular;
- (BOOL)requiresWifi;
- (BOOL)shouldIgnoreError:(id)error;
- (BOOL)supportsResourceTypes;
- (NSArray)darwinNotifications;
- (NSDictionary)ignoreErrors;
- (NSString)correspondingApplicationIdentifier;
- (NSString)dataUsageBundleIdentifier;
- (NSString)localizedAlertButtonLabel;
- (NSString)localizedAppName;
- (NSString)localizedName;
- (NSString)localizedStopAllAlertDetail;
- (NSString)localizedStopAllAlertLabel;
- (NSString)localizedStopAllLabel;
- (__CFString)namedValueForLocKey:(uint64_t)key;
- (__CFString)resourceTypeFromResource:(uint64_t)resource;
- (id)_locKeyForResources:(void *)resources withDescriptorKey:;
- (id)_localizedStopByPerson:(void *)person detailTextForDirectlySharedResources:(void *)resources isBlocking:;
- (id)_localizedStopByPerson:(void *)person detailTextForIndirectlySharedResources:(void *)resources isBlocking:;
- (id)attributedStopByPerson:(uint64_t)person direction:(void *)direction format:(void *)format namedResourceList:(int)list isBlocking:;
- (id)initWithSourceName:(void *)name localizationBundle:;
- (id)localizedAlertDetailForSelectedPeople:(id)people;
- (id)localizedAlertTextForPerson:(id)person;
- (id)localizedDetailTextByType:(id)type;
- (id)localizedNameListForResources:(uint64_t)resources;
- (id)localizedPublicSharingDetailTextByType:(id)type;
- (id)localizedResourceNamesForPerson:(id)person;
- (id)localizedStopAllAlertDetailForPeople:(id)people;
- (id)localizedStopByTypeSubtitleForSharingType:(id)type;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)orderedResourceTypes:(id)types;
- (id)peopleByResourceType:(uint64_t)type;
- (id)resourceTypeOrder;
- (id)sharedResourcesByResourceType:(uint64_t)type;
- (id)stopByPerson:(uint64_t)person direction:(void *)direction format:(void *)format namedResources:(int)resources isBlocking:;
- (id)stopByPersonLocKey:(void *)key resourceTypes:(char)types isBlocking:;
- (int64_t)priority;
- (uint64_t)localizationBundle;
- (uint64_t)sourceName;
- (uint64_t)sourceProperties;
- (void)_localizedStopByPerson:(void *)person isBlocking:;
- (void)_sharedResourcesForPeople:(int)people isOwnedByUser:;
- (void)localizableKey:(void *)key;
- (void)localizedAppName;
- (void)setLocalizationBundle:(uint64_t)bundle;
- (void)setSourceName:(uint64_t)name;
- (void)setSourceProperties:(uint64_t)properties;
@end

@implementation DSSourceDescriptor

+ (id)descriptorCache
{
  objc_opt_self();
  v0 = _descriptorCache;
  if (!_descriptorCache)
  {
    if (descriptorCache_onceToken != -1)
    {
      +[DSSourceDescriptor descriptorCache];
    }

    v0 = _descriptorCache;
  }

  return v0;
}

uint64_t __37__DSSourceDescriptor_descriptorCache__block_invoke()
{
  _descriptorCache = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

+ (void)setDescriptorCache:(uint64_t)cache
{
  v4 = a2;
  objc_opt_self();
  if (_descriptorCache != v4)
  {
    os_unfair_lock_lock(&kDescriptorCacheLock);
    v2 = [v4 copy];
    v3 = _descriptorCache;
    _descriptorCache = v2;

    os_unfair_lock_unlock(&kDescriptorCacheLock);
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    DSLogSourceDescriptor = os_log_create("com.apple.DigitalSeparation", "DSSourceDescriptor");

    MEMORY[0x2821F96F8]();
  }
}

- (id)initWithSourceName:(void *)name localizationBundle:
{
  v6 = a2;
  nameCopy = name;
  if (self)
  {
    if (![v6 length])
    {
      [DSSourceDescriptor initWithSourceName:self localizationBundle:?];
    }

    if (![v6 length])
    {
      v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"No source name provided" userInfo:0];
      objc_exception_throw(v13);
    }

    v14.receiver = self;
    v14.super_class = DSSourceDescriptor;
    v8 = objc_msgSendSuper2(&v14, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, name);
      v9 = [self[2] URLForResource:@"SourceDescriptors" withExtension:@"plist"];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v9];
      v11 = self[3];
      self[3] = v10;
    }
  }

  return self;
}

+ (id)sourceDescriptorForSource:(id)source
{
  v4 = MEMORY[0x277CCA8D8];
  sourceCopy = source;
  dssd_bundleForSourceDescriptor = [v4 dssd_bundleForSourceDescriptor];
  v7 = [self sourceDescriptorForSource:sourceCopy localizationBundle:dssd_bundleForSourceDescriptor];

  return v7;
}

+ (id)sourceDescriptorForSource:(id)source localizationBundle:(id)bundle
{
  v20[3] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  bundleCopy = bundle;
  os_unfair_lock_lock(&kDescriptorCacheLock);
  v9 = +[DSSourceDescriptor descriptorCache];
  v10 = [v9 objectForKeyedSubscript:sourceCopy];

  os_unfair_lock_unlock(&kDescriptorCacheLock);
  if (!v10)
  {
    v10 = [[DSSourceDescriptor alloc] initWithSourceName:sourceCopy localizationBundle:bundleCopy];
    if (v10)
    {
      if (sourceCopy)
      {
        os_unfair_lock_lock(&kDescriptorCacheLock);
        v11 = +[DSSourceDescriptor descriptorCache];
        [v11 setObject:v10 forKeyedSubscript:sourceCopy];

        os_unfair_lock_unlock(&kDescriptorCacheLock);
        goto LABEL_5;
      }
    }

    else
    {
      [DSSourceDescriptor sourceDescriptorForSource:a2 localizationBundle:self];
    }

    v14 = MEMORY[0x277CBEAD8];
    v15 = *MEMORY[0x277CCA5A0];
    v19[0] = @"sourceName";
    v19[1] = @"localizationBundle";
    v20[0] = sourceCopy;
    v20[1] = bundleCopy;
    v19[2] = @"cached";
    v20[2] = v10;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v17 = [v14 exceptionWithName:v15 reason:@"No source descriptor for provided source name and bundle" userInfo:v16];
    v18 = v17;

    objc_exception_throw(v17);
  }

LABEL_5:
  v12 = v10;

  return v10;
}

uint64_t __43__DSSourceDescriptor_orderedResourceTypes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 indexOfObject:a2];
  v8 = [*(a1 + 32) indexOfObject:v6];

  if (v7 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 > v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (NSString)localizedAppName
{
  correspondingApplicationIdentifier = [(DSSourceDescriptor *)self correspondingApplicationIdentifier];
  if (correspondingApplicationIdentifier)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CC1E70] bundleRecordWithApplicationIdentifier:correspondingApplicationIdentifier error:&v8];
    v5 = v8;
    if (!v4)
    {
      [(DSSourceDescriptor *)self localizedAppName];
      goto LABEL_9;
    }

    localizedName = [v4 localizedName];

    if (localizedName)
    {
      goto LABEL_4;
    }
  }

  [(DSSourceDescriptor *)self localizedAppName];
  v5 = v9;
LABEL_9:
  localizedName = v10;

LABEL_4:

  return localizedName;
}

- (int64_t)priority
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"PRIORITY"];
  integerValue = [v6 integerValue];

  if (integerValue <= 1)
  {
    return 1;
  }

  else
  {
    return integerValue;
  }
}

- (NSArray)darwinNotifications
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"DARWIN_NOTIFICATIONS"];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  return v7;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  selfCopy = self;
  if (self)
  {
    v5 = self->_sourceProperties;
    selfCopy = selfCopy->_sourceName;
  }

  else
  {
    v5 = 0;
  }

  subscriptCopy = subscript;
  v7 = [(NSDictionary *)v5 objectForKeyedSubscript:selfCopy];
  v8 = [v7 objectForKeyedSubscript:subscriptCopy];

  return v8;
}

- (NSDictionary)ignoreErrors
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"IGNORE_ERRORS"];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = v7;

  return v7;
}

- (BOOL)shouldIgnoreError:(id)error
{
  errorCopy = error;
  ignoreErrors = [(DSSourceDescriptor *)self ignoreErrors];
  domain = [errorCopy domain];
  v7 = [ignoreErrors objectForKeyedSubscript:domain];
  v8 = MEMORY[0x277CCABB0];
  code = [errorCopy code];

  v10 = [v8 numberWithInteger:code];
  LOBYTE(v8) = [v7 containsObject:v10];

  return v8;
}

- (NSString)dataUsageBundleIdentifier
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"REQUIRED_DATA_USAGE_POLICY"];
  v7 = [v6 objectForKeyedSubscript:@"bundle-identifier"];

  return v7;
}

- (BOOL)requiresWifi
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"REQUIRED_DATA_USAGE_POLICY"];
  v7 = [v6 objectForKeyedSubscript:@"wifi"];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (BOOL)requiresCellular
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"REQUIRED_DATA_USAGE_POLICY"];
  v7 = [v6 objectForKeyedSubscript:@"cell"];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (NSString)correspondingApplicationIdentifier
{
  if (self)
  {
    v3 = self->_sourceProperties;
    sourceName = self->_sourceName;
  }

  else
  {
    v3 = 0;
    sourceName = 0;
  }

  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:sourceName];
  v6 = [v5 objectForKeyedSubscript:@"APPLICATION_IDENTIFIER"];

  return v6;
}

- (void)setSourceName:(uint64_t)name
{
  if (name)
  {
    objc_storeStrong((name + 8), a2);
  }
}

- (void)setLocalizationBundle:(uint64_t)bundle
{
  if (bundle)
  {
    objc_storeStrong((bundle + 16), a2);
  }
}

- (uint64_t)localizationBundle
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setSourceProperties:(uint64_t)properties
{
  if (properties)
  {
    objc_storeStrong((properties + 24), a2);
  }
}

- (__CFString)resourceTypeFromResource:(uint64_t)resource
{
  if (resource)
  {
    displayDetail = [a2 displayDetail];
    v4 = @"RESOURCE";
    if (displayDetail)
    {
      v5 = *(resource + 24);
      v6 = *(resource + 8);
      v7 = v5;
      v8 = [v7 objectForKeyedSubscript:v6];
      v9 = [v8 objectForKeyedSubscript:@"RESOURCE_TYPES"];

      v10 = [v9 objectForKeyedSubscript:displayDetail];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = @"RESOURCE";
      }

      v4 = v12;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)sourceProperties
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)sourceName
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (id)sharedResourcesByResourceType:(uint64_t)type
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v21 = v4;
  if (type)
  {
    v5 = v4;
    [MEMORY[0x277CBEB38] dictionary];
    objc_claimAutoreleasedReturnValue();
    *&v6 = OUTLINED_FUNCTION_23();
    v22 = v6;
    v23 = v6;
    v24 = v6;
    v25 = v6;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [(DSSourceDescriptor *)type resourceTypeFromResource:v12];
          if ([(__CFString *)v13 isEqualToString:@"RESOURCE"])
          {

            v13 = @"RESOURCES";
          }

          v14 = [v2 objectForKeyedSubscript:v13];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = [MEMORY[0x277CBEB58] set];
          }

          v17 = v16;

          [v17 addObject:v12];
          [v2 setObject:v17 forKeyedSubscript:v13];
        }

        v9 = OUTLINED_FUNCTION_26(v18, v19, &v22, v26);
      }

      while (v9);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)peopleByResourceType:(uint64_t)type
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v20 = v4;
  if (type)
  {
    v5 = v4;
    [MEMORY[0x277CBEB38] dictionary];
    objc_claimAutoreleasedReturnValue();
    *&v6 = OUTLINED_FUNCTION_23();
    v29 = v6;
    v30 = v6;
    v31 = v6;
    v32 = v6;
    obj = [v5 allPeople];
    v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v23)
    {
      v22 = *v30;
      do
      {
        v7 = 0;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = v7;
          v8 = *(*(&v29 + 1) + 8 * v7);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v9 = [v8 sharedResourcesForSourceName:*(type + 8)];
          v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v26;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v26 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [(DSSourceDescriptor *)type resourceTypeFromResource:?];
                if ([(__CFString *)v14 isEqualToString:@"RESOURCE"])
                {

                  v14 = @"RESOURCES";
                }

                v15 = [v2 objectForKeyedSubscript:v14];
                v16 = v15;
                if (v15)
                {
                  v17 = v15;
                }

                else
                {
                  v17 = [MEMORY[0x277CBEB58] set];
                }

                v18 = v17;

                [v18 addObject:v8];
                [v2 setObject:v18 forKeyedSubscript:v14];
              }

              v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v11);
          }

          v7 = v24 + 1;
        }

        while (v24 + 1 != v23);
        v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)resourceTypeOrder
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v1 = *(self + 8);
    v2 = *(self + 24);
    v3 = [v2 objectForKeyedSubscript:v1];
    v4 = [v3 objectForKeyedSubscript:@"RESOURCE_TYPE_ORDER"];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v9[0] = @"RESOURCES";
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)orderedResourceTypes:(id)types
{
  typesCopy = types;
  if (types)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithArray:a2];
    resourceTypeOrder = [(DSSourceDescriptor *)typesCopy resourceTypeOrder];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__DSSourceDescriptor_orderedResourceTypes___block_invoke;
    v7[3] = &unk_278F72D28;
    v8 = resourceTypeOrder;
    v5 = resourceTypeOrder;
    [v3 sortUsingComparator:v7];
    typesCopy = [MEMORY[0x277CBEA60] arrayWithArray:v3];
  }

  return typesCopy;
}

- (void)localizableKey:(void *)key
{
  if (key)
  {
    key = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", key[1], a2];
    v2 = vars8;
  }

  return key;
}

- (NSString)localizedName
{
  if (self)
  {
    localizationBundle = self->_localizationBundle;
  }

  else
  {
    localizationBundle = 0;
  }

  v4 = localizationBundle;
  v5 = [(DSSourceDescriptor *)self localizableKey:?];
  v6 = [OUTLINED_FUNCTION_0_1() localizedStringForKey:? value:? table:?];

  return v6;
}

- (NSString)localizedAlertButtonLabel
{
  if (self)
  {
    localizationBundle = self->_localizationBundle;
  }

  else
  {
    localizationBundle = 0;
  }

  v4 = localizationBundle;
  v5 = [(DSSourceDescriptor *)self localizableKey:?];
  v6 = [OUTLINED_FUNCTION_0_1() localizedStringForKey:? value:? table:?];

  return v6;
}

- (id)localizedAlertDetailForSelectedPeople:(id)people
{
  v57 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  v6 = [MEMORY[0x277CBEB58] set];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = peopleCopy;
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      v11 = 0;
      do
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (self)
        {
          sourceName = self->_sourceName;
        }

        else
        {
          sourceName = 0;
        }

        v13 = [*(*(&v49 + 1) + 8 * v11) sharedResourcesForSourceName:sourceName];
        [v6 unionSet:v13];

        ++v11;
      }

      while (v9 != v11);
      v14 = [v7 countByEnumeratingWithState:&v49 objects:v56 count:16];
      v9 = v14;
    }

    while (v14);
  }

  v15 = [(DSSourceDescriptor *)self sharedResourcesByResourceType:v6];
  allKeys = [v15 allKeys];
  v17 = [(DSSourceDescriptor *)self orderedResourceTypes:allKeys];

  v18 = [v7 count];
  v19 = @"ALERT_DETAIL_%@";
  if (v18 == 1)
  {
    v19 = @"ALERT_DETAIL_SINGLE_PERSON_%@";
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = v19;
  [v17 componentsJoinedByString:@"_"];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_21();
  v22 = [v20 stringWithFormat:v21];

  v23 = [(__CFString *)v21 isEqualToString:@"ALERT_DETAIL_SINGLE_PERSON_%@"];
  if (v23)
  {
    firstObject = [v7 firstObject];
    v48 = v15;
    if (self)
    {
      localizationBundle = self->_localizationBundle;
    }

    else
    {
      localizationBundle = 0;
    }

    v26 = localizationBundle;
    v27 = OUTLINED_FUNCTION_25();
    v28 = [(DSSourceDescriptor *)v27 localizableKey:v22];
    v29 = [(__CFString *)v21 localizedAttributedStringForKey:v28 value:&stru_285B9D7E0 table:0];

    v30 = objc_alloc(MEMORY[0x277CCA898]);
    v54 = *MEMORY[0x277CCA290];
    termsOfAddress = [firstObject termsOfAddress];
    v53 = termsOfAddress;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
    v55 = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_6();
    v35 = [v34 initWithFormat:? options:? locale:? context:?];

    string = [v35 string];
    LODWORD(termsOfAddress) = [string containsString:@"@"];

    if (termsOfAddress)
    {
      v37 = MEMORY[0x277CCACA8];
      string2 = [v35 string];
      [firstObject displayGivenName];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_17();
      string3 = [v37 stringWithFormat:string2];
    }

    else
    {
      string3 = [v35 string];
    }

    v15 = v48;
  }

  else
  {
    v40 = v17;
    if (self)
    {
      v41 = self->_localizationBundle;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;
    v43 = [(DSSourceDescriptor *)self localizableKey:v22];
    firstObject = [(NSBundle *)v42 localizedStringForKey:v43 value:&stru_285B9D7E0 table:0];

    if ([firstObject containsString:@"@"])
    {
      v44 = MEMORY[0x277CCACA8];
      firstObject2 = [v7 firstObject];
      displayGivenName = [firstObject2 displayGivenName];
      string3 = [v44 stringWithFormat:firstObject, displayGivenName, objc_msgSend(v7, "count") - 1];
    }

    else
    {
      firstObject = firstObject;
      string3 = firstObject;
    }

    v17 = v40;
  }

  return string3;
}

- (NSString)localizedStopAllLabel
{
  if (self)
  {
    localizationBundle = self->_localizationBundle;
  }

  else
  {
    localizationBundle = 0;
  }

  v4 = localizationBundle;
  v5 = [(DSSourceDescriptor *)self localizableKey:?];
  v6 = [OUTLINED_FUNCTION_0_1() localizedStringForKey:? value:? table:?];

  return v6;
}

- (NSString)localizedStopAllAlertLabel
{
  if (self)
  {
    localizationBundle = self->_localizationBundle;
  }

  else
  {
    localizationBundle = 0;
  }

  v4 = localizationBundle;
  v5 = [(DSSourceDescriptor *)self localizableKey:?];
  v6 = [OUTLINED_FUNCTION_0_1() localizedStringForKey:? value:? table:?];

  return v6;
}

- (NSString)localizedStopAllAlertDetail
{
  if (self)
  {
    localizationBundle = self->_localizationBundle;
  }

  else
  {
    localizationBundle = 0;
  }

  v4 = localizationBundle;
  v5 = [(DSSourceDescriptor *)self localizableKey:?];
  v6 = [OUTLINED_FUNCTION_0_1() localizedStringForKey:? value:? table:?];

  return v6;
}

- (id)localizedDetailTextByType:(id)type
{
  v95 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  allPeople = [typeCopy allPeople];
  v9 = [MEMORY[0x277CBEB58] set];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  allPeople2 = [typeCopy allPeople];
  v11 = [allPeople2 countByEnumeratingWithState:&v85 objects:v94 count:16];
  if (v11)
  {
    v12 = v11;
    v4 = *v86;
    do
    {
      v13 = 0;
      do
      {
        if (*v86 != v4)
        {
          objc_enumerationMutation(allPeople2);
        }

        if (self)
        {
          sourceName = self->_sourceName;
        }

        else
        {
          sourceName = 0;
        }

        [*(*(&v85 + 1) + 8 * v13) sharedResourcesForSourceName:sourceName];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_22() unionSet:v3];

        ++v13;
      }

      while (v12 != v13);
      v17 = OUTLINED_FUNCTION_26(v15, v16, &v85, v94);
      v12 = v17;
    }

    while (v17);
  }

  v18 = [(DSSourceDescriptor *)self peopleByResourceType:typeCopy];
  v19 = [(DSSourceDescriptor *)self sharedResourcesByResourceType:v9];
  [v19 allKeys];
  objc_claimAutoreleasedReturnValue();
  v20 = OUTLINED_FUNCTION_25();
  v21 = [(DSSourceDescriptor *)v20 orderedResourceTypes:v4];

  if ([v19 count] == 1)
  {
    [OUTLINED_FUNCTION_18() objectAtIndexedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    v26 = [OUTLINED_FUNCTION_12() objectForKeyedSubscript:?];
    v27 = [v26 count];

    v77 = v5;
    if (v27 == 1)
    {
      v28 = MEMORY[0x277CCACA8];
      anyObject = [v9 anyObject];
      [(DSSourceDescriptor *)self resourceTypeFromResource:anyObject];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_21();
      v30 = [v28 stringWithFormat:@"DETAIL_TEXT_SINGLE_%@_WITH_NAME"];

      v31 = v30;
      if (self)
      {
        localizationBundle = self->_localizationBundle;
      }

      else
      {
        localizationBundle = 0;
      }

      v80 = localizationBundle;
      v33 = [(DSSourceDescriptor *)self localizableKey:v30];
      OUTLINED_FUNCTION_19();
      v35 = [v34 localizedStringForKey:? value:? table:?];

      v81 = v31;
      v36 = [(DSSourceDescriptor *)self localizableKey:v31];
      v37 = v35;
      v73 = [v35 isEqualToString:v36];

      anyObject2 = [v9 anyObject];
      displayName = [anyObject2 displayName];

      if ((v73 & 1) == 0 && [displayName length])
      {
        v40 = v37;
        v24 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v37, objc_msgSend(allPeople, "count"), displayName];
LABEL_37:

        goto LABEL_17;
      }

      v58 = @"SINGLE";
      v5 = v77;
    }

    else
    {
      v58 = @"MULTIPLE";
    }

    v59 = MEMORY[0x277CCACA8];
    v93[0] = v58;
    v93[1] = v5;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
    v61 = [v60 componentsJoinedByString:@"_"];
    v62 = [v59 stringWithFormat:@"DETAIL_TEXT_%@", v61];

    if (self)
    {
      v63 = self->_localizationBundle;
    }

    else
    {
      v63 = 0;
    }

    v64 = v63;
    v65 = OUTLINED_FUNCTION_25();
    v81 = v62;
    v66 = [(DSSourceDescriptor *)v65 localizableKey:v62];
    v67 = [OUTLINED_FUNCTION_24() localizedStringForKey:? value:? table:?];

    v68 = MEMORY[0x277CCACA8];
    displayName = [OUTLINED_FUNCTION_18() objectAtIndexedSubscript:?];
    v69 = [v18 objectForKeyedSubscript:displayName];
    v24 = [v68 localizedStringWithFormat:v67, objc_msgSend(v69, "count")];

    v40 = v67;
    goto LABEL_37;
  }

  if ([v19 count] == 2)
  {
    v82 = [OUTLINED_FUNCTION_18() objectAtIndexedSubscript:?];
    v78 = [v19 objectForKeyedSubscript:v82];
    v41 = [v78 count];
    v42 = @"SINGLE";
    if (v41 != 1)
    {
      v42 = @"MULTIPLE";
    }

    v92[0] = v42;
    [v21 objectAtIndexedSubscript:1];
    objc_claimAutoreleasedReturnValue();
    v43 = [OUTLINED_FUNCTION_12() objectForKeyedSubscript:?];
    v44 = [v43 count];
    v45 = @"SINGLE";
    if (v44 != 1)
    {
      v45 = @"MULTIPLE";
    }

    v92[1] = v45;
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];

    v83 = MEMORY[0x277CCACA8];
    v74 = [v46 objectAtIndexedSubscript:0];
    v91[0] = v74;
    v71 = [OUTLINED_FUNCTION_18() objectAtIndexedSubscript:?];
    v91[1] = v71;
    v79 = v46;
    v70 = [v46 objectAtIndexedSubscript:1];
    v91[2] = v70;
    v47 = [v21 objectAtIndexedSubscript:1];
    v91[3] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:4];
    [v48 componentsJoinedByString:@"_"];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_21();
    v84 = [v83 stringWithFormat:@"DETAIL_TEXT_%@"];

    v76 = allPeople;
    if (self)
    {
      v49 = self->_localizationBundle;
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;
    v51 = OUTLINED_FUNCTION_25();
    v52 = [(DSSourceDescriptor *)v51 localizableKey:v84];
    v53 = [OUTLINED_FUNCTION_24() localizedStringForKey:? value:? table:?];

    v72 = MEMORY[0x277CCACA8];
    v75 = [OUTLINED_FUNCTION_18() objectAtIndexedSubscript:?];
    v54 = [v18 objectForKeyedSubscript:v75];
    v55 = [v54 count];
    v56 = [v21 objectAtIndexedSubscript:1];
    v57 = [v18 objectForKeyedSubscript:v56];
    v24 = [v72 localizedStringWithFormat:v53, v55, objc_msgSend(v57, "count")];

    allPeople = v76;
  }

  else
  {
    v22 = DSLogSourceDescriptor;
    if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_FAULT))
    {
      v89 = 138543362;
      v90 = v21;
      OUTLINED_FUNCTION_5(&dword_248C40000, v22, v23, "More than 2 resource types are not supported: %{public}@", &v89);
    }

    v24 = 0;
  }

LABEL_17:

  return v24;
}

- (id)localizedPublicSharingDetailTextByType:(id)type
{
  v62 = *MEMORY[0x277D85DE8];
  allPublicResources = [type allPublicResources];
  v4 = [MEMORY[0x277CBEB98] setWithArray:?];
  v5 = [(DSSourceDescriptor *)self sharedResourcesByResourceType:v4];

  allKeys = [v5 allKeys];
  selfCopy = self;
  v7 = [(DSSourceDescriptor *)self orderedResourceTypes:allKeys];

  array = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v9 = v7;
  v44 = [v9 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v44)
  {
    v10 = *v55;
    v46 = v5;
    v48 = v9;
    v42 = *v55;
    do
    {
      v11 = 0;
      do
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v45 = v11;
        v12 = [v5 objectForKeyedSubscript:*(*(&v54 + 1) + 8 * v11)];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        obj = v12;
        v13 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v51;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v51 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v50 + 1) + 8 * i);
              displayName = [v17 displayName];
              if (!displayName || (v19 = displayName, [v17 displayName], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "length"), v20, v19, !v21))
              {
                v27 = MEMORY[0x277CCACA8];
                v9 = v48;
                v28 = [v48 componentsJoinedByString:@"_"];
                v29 = [v27 stringWithFormat:@"PUBLIC_SHARING_DETAIL_TEXT_%@", v28];

                if (selfCopy)
                {
                  localizationBundle = selfCopy->_localizationBundle;
                }

                else
                {
                  localizationBundle = 0;
                }

                v5 = v46;
                v31 = localizationBundle;
                v32 = [(DSSourceDescriptor *)selfCopy localizableKey:v29];
                v33 = [(NSBundle *)v31 localizedStringForKey:v32 value:&stru_285B9D7E0 table:0];

                if ([v46 count] == 1)
                {
                  v26 = allPublicResources;
                  v25 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v33, objc_msgSend(allPublicResources, "count")];
                }

                else
                {
                  if ([v46 count] == 2)
                  {
                    v34 = MEMORY[0x277CCACA8];
                    v35 = [v48 objectAtIndexedSubscript:0];
                    v36 = [v46 objectForKeyedSubscript:v35];
                    v37 = [v36 count];
                    [v48 objectAtIndexedSubscript:1];
                    objc_claimAutoreleasedReturnValue();
                    v38 = [OUTLINED_FUNCTION_12() objectForKeyedSubscript:?];
                    v25 = [v34 localizedStringWithFormat:v33, v37, objc_msgSend(v38, "count")];

                    v9 = v48;
                  }

                  else
                  {
                    v39 = DSLogSourceDescriptor;
                    if (OUTLINED_FUNCTION_27())
                    {
                      v58 = 138543362;
                      v59 = v48;
                      OUTLINED_FUNCTION_5(&dword_248C40000, v39, v40, "More than 2 resource types are not supported: %{public}@", &v58);
                    }

                    v25 = 0;
                  }

                  v26 = allPublicResources;
                }

                goto LABEL_29;
              }

              v22 = MEMORY[0x277CCACA8];
              v23 = DSLocStringForKey(@"RESOURCE_DISPLAY_NAME");
              [v17 displayName];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_17();
              v24 = [v22 stringWithFormat:v23];

              [array addObject:v24];
            }

            v14 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v11 = v45 + 1;
        v5 = v46;
        v9 = v48;
        v10 = v42;
      }

      while (v45 + 1 != v44);
      v44 = [v48 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v44);
  }

  v25 = [DSUtilities localizedDetailStringWithTruncationFromArray:array withType:@"com.apple.DigitalSeparation.Resources"];
  v26 = allPublicResources;
LABEL_29:

  return v25;
}

- (id)_localizedStopByPerson:(void *)person detailTextForDirectlySharedResources:(void *)resources isBlocking:
{
  v299[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  personCopy = person;
  v10 = personCopy;
  if (self)
  {
    string = [personCopy count];
    if (!string)
    {
      goto LABEL_3;
    }

    v13 = OUTLINED_FUNCTION_20();
    v15 = [(DSSourceDescriptor *)v13 sharedResourcesByResourceType:v14];
    [v15 allKeys];
    objc_claimAutoreleasedReturnValue();
    v16 = OUTLINED_FUNCTION_14();
    v268 = [(DSSourceDescriptor *)v16 orderedResourceTypes:v17];

    v18 = [v8 shareDirectionForSourceName:*(self + 8)];
    v19 = OUTLINED_FUNCTION_20();
    v21 = [(DSSourceDescriptor *)v19 localizedNameListForResources:v20];
    v22 = v21;
    if ((~v18 & 3) != 0)
    {
      if (v18)
      {
        if (string == 1)
        {
          [v10 anyObject];
          objc_claimAutoreleasedReturnValue();
          v36 = OUTLINED_FUNCTION_3_0();
          v37 = [(DSSourceDescriptor *)v36 resourceTypeFromResource:v18];
          v285 = v37;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v285 count:1];
          v39 = OUTLINED_FUNCTION_9();
          v26 = [(DSSourceDescriptor *)v39 stopByPersonLocKey:v40 resourceTypes:v41 isBlocking:v42];

          v43 = *(self + 16);
          v44 = OUTLINED_FUNCTION_3_0();
          v45 = [(DSSourceDescriptor *)v44 localizableKey:v26];
          v46 = [OUTLINED_FUNCTION_1_1() localizedAttributedStringForKey:? value:? table:?];

          v18 = [(DSSourceDescriptor *)self namedValueForLocKey:v26];
          if (![v18 length] || !objc_msgSend(v22, "length"))
          {
            v47 = OUTLINED_FUNCTION_4();
            v49 = 1;
LABEL_23:
            v31 = v46;
            v60 = [(DSSourceDescriptor *)v47 attributedStopByPerson:v48 direction:v49 format:v46 namedResourceList:0 isBlocking:resources];
LABEL_61:
            string = [v60 string];

            goto LABEL_77;
          }

          [objc_alloc(MEMORY[0x277CCA898]) initWithString:v18];
          v155 = v18;
          OUTLINED_FUNCTION_3_0();
LABEL_60:
          OUTLINED_FUNCTION_15();
          v60 = [(DSSourceDescriptor *)v165 attributedStopByPerson:v166 direction:v167 format:v168 namedResourceList:v169 isBlocking:v170];

          v18 = v155;
          v31 = v46;
          goto LABEL_61;
        }

        v261 = v21;
        v76 = OUTLINED_FUNCTION_11();
        v80 = [(DSSourceDescriptor *)v76 stopByPersonLocKey:v77 resourceTypes:v78 isBlocking:v79];
        v81 = *(self + 16);
        v82 = OUTLINED_FUNCTION_3_0();
        v83 = [(DSSourceDescriptor *)v82 localizableKey:v80];
        v264 = [OUTLINED_FUNCTION_1_1() localizedStringForKey:? value:? table:?];

        v84 = OUTLINED_FUNCTION_10();
        [(DSSourceDescriptor *)v84 namedValueForLocKey:v85];
        objc_claimAutoreleasedReturnValue();
        if ([OUTLINED_FUNCTION_22() count] == 1)
        {
          v258 = v18;
          v22 = v261;
          if (![v264 length] || !objc_msgSend(v261, "length"))
          {
            v86 = MEMORY[0x277CCACA8];
            displayGivenName = [v8 displayGivenName];
            string = [v86 localizedStringWithFormat:v264, string, displayGivenName];

            v31 = v264;
LABEL_75:
            v26 = v262;
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_4();
          OUTLINED_FUNCTION_15();
          string = [(DSSourceDescriptor *)v199 stopByPerson:v200 direction:v201 format:v202 namedResources:v203 isBlocking:v204];
        }

        else
        {
          v22 = v261;
          if ([v15 count] == 2)
          {
            v113 = [OUTLINED_FUNCTION_2_1(2 v113];
            v120 = [v15 objectForKeyedSubscript:v113];
            v121 = [v120 count];
            [v8 displayGivenName];
            v122 = v259 = v18;
            [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
            objc_claimAutoreleasedReturnValue();
            v123 = [OUTLINED_FUNCTION_5_0() objectForKeyedSubscript:?];
            string = [v245 localizedStringWithFormat:v266, v121, v122, objc_msgSend(v123, "count")];

            v31 = v266;
            v18 = v259;

LABEL_64:
            v26 = v262;
            goto LABEL_77;
          }

          v156 = DSLogSourceDescriptor;
          v157 = OUTLINED_FUNCTION_27();
          if (v157)
          {
            OUTLINED_FUNCTION_13(5.8381e-34, v157, v158, v159, v160, v161, v162, v163, v164, v213, v216, v220, v223, v224, v227, v231, v236, v242, v250, v257, v261, v262, v264, v268);
            OUTLINED_FUNCTION_5(&dword_248C40000, v156, v211, "More than 2 resource types are not supported: %{public}@", v286);
          }

          string = 0;
        }

        v26 = v262;
        v31 = v264;
LABEL_77:

        goto LABEL_10;
      }

      if ((v18 & 2) == 0)
      {
        string = 0;
LABEL_10:

        goto LABEL_3;
      }

      if (string == 1)
      {
        [v10 anyObject];
        objc_claimAutoreleasedReturnValue();
        v50 = OUTLINED_FUNCTION_3_0();
        v51 = [(DSSourceDescriptor *)v50 resourceTypeFromResource:v18];
        v284 = v51;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v284 count:1];
        v53 = OUTLINED_FUNCTION_9();
        v26 = [(DSSourceDescriptor *)v53 stopByPersonLocKey:v54 resourceTypes:v55 isBlocking:v56];

        v57 = *(self + 16);
        v58 = OUTLINED_FUNCTION_3_0();
        v59 = [(DSSourceDescriptor *)v58 localizableKey:v26];
        v46 = [OUTLINED_FUNCTION_1_1() localizedAttributedStringForKey:? value:? table:?];

        v18 = [(DSSourceDescriptor *)self namedValueForLocKey:v26];
        if (![v18 length] || !objc_msgSend(v22, "length"))
        {
          v47 = OUTLINED_FUNCTION_4();
          v49 = 2;
          goto LABEL_23;
        }

        [objc_alloc(MEMORY[0x277CCA898]) initWithString:v18];
        v155 = v18;
        OUTLINED_FUNCTION_3_0();
        goto LABEL_60;
      }

      v260 = v21;
      v88 = OUTLINED_FUNCTION_11();
      v92 = [(DSSourceDescriptor *)v88 stopByPersonLocKey:v89 resourceTypes:v90 isBlocking:v91];
      v93 = *(self + 16);
      v94 = OUTLINED_FUNCTION_3_0();
      v68 = [(DSSourceDescriptor *)v94 localizableKey:v92];
      v263 = [OUTLINED_FUNCTION_1_1() localizedAttributedStringForKey:? value:? table:?];

      v95 = OUTLINED_FUNCTION_10();
      [(DSSourceDescriptor *)v95 namedValueForLocKey:v96];
      objc_claimAutoreleasedReturnValue();
      if ([OUTLINED_FUNCTION_22() count] == 1)
      {
        v22 = v260;
        v258 = v18;
        if (![v18 length] || !objc_msgSend(v260, "length"))
        {
          v97 = objc_alloc(MEMORY[0x277CCA898]);
          v26 = v262;
          if (resources)
          {
            v282 = *MEMORY[0x277CCA290];
            termsOfAddress = [v8 termsOfAddress];
            v281 = termsOfAddress;
            v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v281 count:1];
            v283 = v72;
            v73 = MEMORY[0x277CBEAC0];
            v74 = &v283;
            v75 = &v282;
            goto LABEL_38;
          }

          v279 = *MEMORY[0x277CCA290];
          termsOfAddress = [v8 termsOfAddress];
          v278 = termsOfAddress;
          v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v278 count:1];
          v280 = v72;
          v152 = MEMORY[0x277CBEAC0];
          v153 = &v280;
          v154 = &v279;
          goto LABEL_66;
        }

        goto LABEL_80;
      }

      v22 = v260;
      if ([v15 count] == 2)
      {
        v258 = v18;
        if (resources)
        {
          v124 = v263;
          string2 = [v263 string];
          v126 = [string2 containsString:@"%#"];

          objc_alloc(MEMORY[0x277CCA898]);
          if (v126)
          {
            v276 = *MEMORY[0x277CCA290];
            termsOfAddress2 = [v8 termsOfAddress];
            v275 = termsOfAddress2;
            v238 = [MEMORY[0x277CBEA60] arrayWithObjects:&v275 count:1];
            v277 = v238;
            v127 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v277 forKeys:&v276 count:1];
            v128 = [OUTLINED_FUNCTION_2_1(v127 v128];
            v229 = [v15 objectForKeyedSubscript:?];
            v225 = [v229 count];
            v135 = [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
            v136 = [v15 objectForKeyedSubscript:v135];
            v137 = [v136 count];
            displayGivenName2 = [v8 displayGivenName];
            OUTLINED_FUNCTION_6();
            v140 = [v139 initWithFormat:v225 options:v137 locale:displayGivenName2 context:?];

            v141 = v239;
            v142 = v233;
          }

          else
          {
            v273 = *MEMORY[0x277CCA290];
            termsOfAddress3 = [v8 termsOfAddress];
            v272 = termsOfAddress3;
            v141 = [MEMORY[0x277CBEA60] arrayWithObjects:&v272 count:1];
            v274 = v141;
            v142 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v274 forKeys:&v273 count:1];
            v128 = [v8 displayGivenName];
            OUTLINED_FUNCTION_6();
            v140 = [v198 initWithFormat:v128 options:? locale:? context:?];
          }

          v31 = v124;
        }

        else
        {
          v230 = objc_alloc(MEMORY[0x277CCA898]);
          v270 = *MEMORY[0x277CCA290];
          termsOfAddress4 = [v8 termsOfAddress];
          v269 = termsOfAddress4;
          v240 = [MEMORY[0x277CBEA60] arrayWithObjects:&v269 count:1];
          v271 = v240;
          v234 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v271 forKeys:&v270 count:1];
          displayGivenName3 = [v8 displayGivenName];
          v186 = [OUTLINED_FUNCTION_2_1(displayGivenName3 v186];
          v193 = [v15 objectForKeyedSubscript:v186];
          v194 = [v193 count];
          v195 = [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
          v196 = [v15 objectForKeyedSubscript:v195];
          v219 = v194;
          v222 = [v196 count];
          v128 = displayGivenName3;
          v31 = v267;
          OUTLINED_FUNCTION_6();
          v140 = [v197 initWithFormat:displayGivenName3 options:v219 locale:v222 context:?];

          v142 = v235;
          v141 = v241;
        }

        v184 = termsOfAddress3;
        goto LABEL_74;
      }

      v143 = DSLogSourceDescriptor;
      v144 = OUTLINED_FUNCTION_27();
      v31 = v263;
      if (!v144)
      {
LABEL_63:
        string = 0;
        goto LABEL_64;
      }
    }

    else
    {
      if (string == 1)
      {
        anyObject = [v10 anyObject];
        v24 = [(DSSourceDescriptor *)self resourceTypeFromResource:anyObject];
        v299[0] = v24;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v299 count:1];
        v26 = [(DSSourceDescriptor *)self stopByPersonLocKey:v25 resourceTypes:resources isBlocking:?];

        v27 = *(self + 16);
        v28 = OUTLINED_FUNCTION_3_0();
        v29 = [(DSSourceDescriptor *)v28 localizableKey:v26];
        OUTLINED_FUNCTION_19();
        v31 = [v30 localizedStringForKey:? value:? table:?];

        v18 = [(DSSourceDescriptor *)self namedValueForLocKey:v26];
        if ([v31 length] && objc_msgSend(v22, "length"))
        {
          v32 = OUTLINED_FUNCTION_4();
          v34 = v18;
          v35 = v22;
        }

        else
        {
          v32 = OUTLINED_FUNCTION_4();
          v34 = v31;
          v35 = 0;
        }

        string = [(DSSourceDescriptor *)v32 stopByPerson:v33 direction:3 format:v34 namedResources:v35 isBlocking:resources];
        goto LABEL_77;
      }

      v260 = v21;
      v61 = OUTLINED_FUNCTION_11();
      v65 = [(DSSourceDescriptor *)v61 stopByPersonLocKey:v62 resourceTypes:v63 isBlocking:v64];
      v66 = *(self + 16);
      v67 = OUTLINED_FUNCTION_3_0();
      v68 = [(DSSourceDescriptor *)v67 localizableKey:v65];
      v263 = [OUTLINED_FUNCTION_1_1() localizedAttributedStringForKey:? value:? table:?];

      v69 = OUTLINED_FUNCTION_10();
      [(DSSourceDescriptor *)v69 namedValueForLocKey:v70];
      objc_claimAutoreleasedReturnValue();
      if ([OUTLINED_FUNCTION_22() count] == 1)
      {
        v22 = v260;
        v258 = v18;
        if (![v18 length] || !objc_msgSend(v260, "length"))
        {
          v71 = objc_alloc(MEMORY[0x277CCA898]);
          v26 = v262;
          if (resources)
          {
            v297 = *MEMORY[0x277CCA290];
            termsOfAddress = [v8 termsOfAddress];
            v296 = termsOfAddress;
            v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v296 count:1];
            v298 = v72;
            v73 = MEMORY[0x277CBEAC0];
            v74 = &v298;
            v75 = &v297;
LABEL_38:
            [v73 dictionaryWithObjects:v74 forKeys:v75 count:1];
            objc_claimAutoreleasedReturnValue();
            displayGivenName4 = [OUTLINED_FUNCTION_7() displayGivenName];
            v214 = string;
            v217 = displayGivenName4;
LABEL_67:
            OUTLINED_FUNCTION_6();
            v172 = [v171 initWithFormat:v214 options:v217 locale:? context:?];

LABEL_68:
            string = [v172 string];

            v31 = v263;
LABEL_76:
            v18 = v258;
            goto LABEL_77;
          }

          v294 = *MEMORY[0x277CCA290];
          termsOfAddress = [v8 termsOfAddress];
          v293 = termsOfAddress;
          v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v293 count:1];
          v295 = v72;
          v152 = MEMORY[0x277CBEAC0];
          v153 = &v295;
          v154 = &v294;
LABEL_66:
          [v152 dictionaryWithObjects:v153 forKeys:v154 count:1];
          objc_claimAutoreleasedReturnValue();
          displayGivenName4 = [OUTLINED_FUNCTION_7() displayGivenName];
          v214 = displayGivenName4;
          v217 = string;
          goto LABEL_67;
        }

LABEL_80:
        [objc_alloc(MEMORY[0x277CCA898]) initWithString:v18];
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_15();
        v172 = [(DSSourceDescriptor *)v205 attributedStopByPerson:v206 direction:v207 format:v208 namedResourceList:v209 isBlocking:v210];

        v26 = v262;
        goto LABEL_68;
      }

      v22 = v260;
      if ([v15 count] == 2)
      {
        v99 = objc_alloc(MEMORY[0x277CCA898]);
        if (resources)
        {
          v291 = *MEMORY[0x277CCA290];
          termsOfAddress5 = [v8 termsOfAddress];
          v290 = termsOfAddress5;
          v243 = [MEMORY[0x277CBEA60] arrayWithObjects:&v290 count:1];
          v292 = v243;
          v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v292 forKeys:&v291 count:1];
          [OUTLINED_FUNCTION_2_1(v100 v101];
          objc_claimAutoreleasedReturnValue();
          v175 = [OUTLINED_FUNCTION_5_0() objectForKeyedSubscript:?];
          v108 = [v175 count];
          v232 = [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
          v109 = [v15 objectForKeyedSubscript:?];
          [v109 count];
          displayGivenName5 = [OUTLINED_FUNCTION_7() displayGivenName];
          v218 = v99;
          v221 = displayGivenName5;
          v215 = v108;
          resourcesCopy = resources;
          v112 = v228;
        }

        else
        {
          v288 = *MEMORY[0x277CCA290];
          termsOfAddress6 = [v8 termsOfAddress];
          v287 = termsOfAddress6;
          v248 = [MEMORY[0x277CBEA60] arrayWithObjects:&v287 count:1];
          v289 = v248;
          v173 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v289 forKeys:&v288 count:1];
          displayGivenName6 = [v8 displayGivenName];
          v175 = [OUTLINED_FUNCTION_2_1(displayGivenName6 v175];
          v232 = [v15 objectForKeyedSubscript:?];
          v182 = [v232 count];
          v112 = v173;
          v109 = [(uint8_t *)v286 objectAtIndexedSubscript:1];
          displayGivenName5 = [v15 objectForKeyedSubscript:v109];
          v218 = v182;
          v221 = [displayGivenName5 count];
          resourcesCopy = displayGivenName6;
          v215 = displayGivenName6;
        }

        v31 = v265;
        OUTLINED_FUNCTION_6();
        v140 = [v183 initWithFormat:v215 options:v218 locale:v221 context:?];

        v184 = v253;
LABEL_74:

        string = [v140 string];

        goto LABEL_75;
      }

      v143 = DSLogSourceDescriptor;
      v144 = OUTLINED_FUNCTION_27();
      v31 = v263;
      if (!v144)
      {
        goto LABEL_63;
      }
    }

    OUTLINED_FUNCTION_13(5.8381e-34, v144, v145, v146, v147, v148, v149, v150, v151, v213, v216, v220, v223, v224, v227, v231, v236, v242, v250, v257, v260, v262, v263, v268);
    OUTLINED_FUNCTION_5(&dword_248C40000, v143, v212, "More than 2 resource types are not supported: %{public}@", v286);
    goto LABEL_63;
  }

  string = 0;
LABEL_3:

  return string;
}

- (id)localizedNameListForResources:(uint64_t)resources
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (resources)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = [DSSourceDescriptor sourceDescriptorForSource:*(resources + 8)];
    localizedAppName = [v5 localizedAppName];

    v6 = [(DSSourceDescriptor *)resources sharedResourcesByResourceType:v3];
    if ([v6 count] == 1)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = v3;
      v7 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v37;
        v32 = v6;
        v33 = v3;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v37 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v36 + 1) + 8 * i);
            displayName = [v11 displayName];
            if (![displayName length])
            {

LABEL_21:
              v22 = 0;
              v6 = v32;
              v3 = v33;
              goto LABEL_28;
            }

            displayName2 = [v11 displayName];
            v14 = [DSUtilities isString:displayName2 likeString:localizedAppName];

            if (v14)
            {
              goto LABEL_21;
            }

            v15 = [array count];
            v16 = MEMORY[0x277CCACA8];
            if (v15 == 2)
            {
              v6 = v32;
              allKeys = [v32 allKeys];
              [allKeys objectAtIndexedSubscript:0];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_17();
              v24 = [v16 stringWithFormat:@"%@_NAME_TRUNCATION"];

              v25 = *(resources + 16);
              v26 = [(DSSourceDescriptor *)resources localizableKey:v24];
              v27 = [v25 localizedStringForKey:v26 value:&stru_285B9D7E0 table:0];

              v28 = [(DSSourceDescriptor *)resources localizableKey:v24];
              LOBYTE(v26) = [v27 isEqualToString:v28];

              if (v26)
              {
                v29 = DSLogSourceDescriptor;
                v3 = v33;
                if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v41 = v24;
                  _os_log_error_impl(&dword_248C40000, v29, OS_LOG_TYPE_ERROR, "No loc key present matching %@", buf, 0xCu);
                }
              }

              else
              {
                v30 = [MEMORY[0x277CCACA8] stringWithFormat:v27, objc_msgSend(obj, "count") - 2];

                [array addObject:v30];
                v27 = v30;
                v3 = v33;
              }

              goto LABEL_27;
            }

            v17 = DSLocStringForKey(@"RESOURCE_DISPLAY_NAME");
            [v11 displayName];
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_17();
            v18 = [v16 stringWithFormat:v17];
            [array addObject:v18];
          }

          v8 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
          v6 = v32;
          v3 = v33;
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:

      v22 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:array];
    }

    else
    {
      v19 = [v6 count];
      v20 = DSLogSourceDescriptor;
      if (v19 == 2)
      {
        if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v41 = v6;
          _os_log_impl(&dword_248C40000, v20, OS_LOG_TYPE_INFO, "2 resource types are not supported for enumeration: %{public}@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v41 = v6;
        OUTLINED_FUNCTION_5(&dword_248C40000, v20, v21, "More than 2 resource types are not supported: %{public}@", buf);
      }

      v22 = 0;
    }

LABEL_28:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)stopByPersonLocKey:(void *)key resourceTypes:(char)types isBlocking:
{
  v7 = a2;
  keyCopy = key;
  v9 = keyCopy;
  if (self)
  {
    v10 = MEMORY[0x277CCACA8];
    if ([keyCopy count] == 1)
    {
      [v9 firstObject];
    }

    else
    {
      [v9 componentsJoinedByString:@"_"];
    }
    v11 = ;
    v12 = [v10 stringWithFormat:v7, v11];

    if (types)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v12, @"SCWB"];
    }

    else
    {
      v13 = v12;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (__CFString)namedValueForLocKey:(uint64_t)key
{
  v11 = *MEMORY[0x277D85DE8];
  if (key)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", a2, @"WITH_NAME"];
    v4 = [(DSSourceDescriptor *)key localizableKey:v3];

    v5 = [*(key + 16) localizedStringForKey:v4 value:&stru_285B9D7E0 table:0];
    if ([v5 isEqualToString:v4])
    {
      v6 = DSLogSourceDescriptor;
      if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_error_impl(&dword_248C40000, v6, OS_LOG_TYPE_ERROR, "No loc key found named %@", buf, 0xCu);
      }

      v7 = &stru_285B9D7E0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)stopByPerson:(uint64_t)person direction:(void *)direction format:(void *)format namedResources:(int)resources isBlocking:
{
  v11 = a2;
  directionCopy = direction;
  formatCopy = format;
  v14 = formatCopy;
  if (self)
  {
    if (formatCopy)
    {
      v15 = MEMORY[0x277CCACA8];
      displayGivenName = [v11 displayGivenName];
      self = displayGivenName;
      if (person == 1 || !resources)
      {
        v21 = displayGivenName;
        v22 = v14;
      }

      else
      {
        v21 = v14;
        v22 = displayGivenName;
      }

      v18 = v15;
    }

    else
    {
      v17 = MEMORY[0x277CCACA8];
      [v11 displayGivenName];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_17();
      v18 = v17;
    }

    v19 = [v18 localizedStringWithFormat:directionCopy, v21, v22];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)attributedStopByPerson:(uint64_t)person direction:(void *)direction format:(void *)format namedResourceList:(int)list isBlocking:
{
  v33[1] = *MEMORY[0x277D85DE8];
  v12 = a2;
  directionCopy = direction;
  formatCopy = format;
  v15 = formatCopy;
  if (self)
  {
    if (formatCopy)
    {
      v16 = objc_alloc(MEMORY[0x277CCA898]);
      if (person != 1 && list)
      {
        v32 = *MEMORY[0x277CCA290];
        termsOfAddress = [v12 termsOfAddress];
        v31 = termsOfAddress;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        v33[0] = v18;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
        objc_claimAutoreleasedReturnValue();
        displayGivenName = [OUTLINED_FUNCTION_7() displayGivenName];
        v24 = v15;
LABEL_9:
        OUTLINED_FUNCTION_6();
        self = [v22 initWithFormat:v24 options:? locale:? context:?];

        goto LABEL_10;
      }

      v29 = *MEMORY[0x277CCA290];
      termsOfAddress = [v12 termsOfAddress];
      v28 = termsOfAddress;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      v30 = v18;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      objc_claimAutoreleasedReturnValue();
      displayGivenName2 = [OUTLINED_FUNCTION_7() displayGivenName];
      displayGivenName = displayGivenName2;
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x277CCA898]);
      v26 = *MEMORY[0x277CCA290];
      termsOfAddress = [v12 termsOfAddress];
      v25 = termsOfAddress;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      v27 = v18;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      objc_claimAutoreleasedReturnValue();
      displayGivenName2 = [OUTLINED_FUNCTION_7() displayGivenName];
      displayGivenName = displayGivenName2;
    }

    v24 = displayGivenName2;
    goto LABEL_9;
  }

LABEL_10:

  return self;
}

- (id)_localizedStopByPerson:(void *)person detailTextForIndirectlySharedResources:(void *)resources isBlocking:
{
  v60[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  personCopy = person;
  v10 = personCopy;
  if (self)
  {
    v11 = [personCopy count];
    if (!v11)
    {
      goto LABEL_3;
    }

    v13 = OUTLINED_FUNCTION_20();
    v15 = [(DSSourceDescriptor *)v13 sharedResourcesByResourceType:v14];
    [v15 allKeys];
    objc_claimAutoreleasedReturnValue();
    v16 = OUTLINED_FUNCTION_14();
    v18 = [(DSSourceDescriptor *)v16 orderedResourceTypes:v17];

    v19 = OUTLINED_FUNCTION_20();
    [(DSSourceDescriptor *)v19 localizedNameListForResources:v20];
    v57 = v56 = v18;
    if (v57)
    {
      resourcesCopy = 1;
    }

    else
    {
      resourcesCopy = resources;
    }

    if (v11 == 1 && resourcesCopy)
    {
      [v10 anyObject];
      objc_claimAutoreleasedReturnValue();
      v22 = OUTLINED_FUNCTION_14();
      v24 = [(DSSourceDescriptor *)v22 resourceTypeFromResource:v23];
      v60[0] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:1];
      v26 = OUTLINED_FUNCTION_9();
      v30 = [(DSSourceDescriptor *)v26 stopByPersonLocKey:v27 resourceTypes:v28 isBlocking:v29];
    }

    else
    {
      v30 = [(DSSourceDescriptor *)self stopByPersonLocKey:v18 resourceTypes:resources isBlocking:?];
    }

    v31 = *(self + 16);
    v32 = [(DSSourceDescriptor *)self localizableKey:v30];
    OUTLINED_FUNCTION_19();
    v34 = [v33 localizedStringForKey:? value:? table:?];

    v35 = [(DSSourceDescriptor *)self namedValueForLocKey:v30];
    if ([v15 count] != 1)
    {
      if ([v15 count] == 2)
      {
        v55 = MEMORY[0x277CCACA8];
        if (resources)
        {
          v53 = [v56 objectAtIndexedSubscript:0];
          v51 = [v15 objectForKeyedSubscript:v53];
          v50 = [v51 count];
          [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
          objc_claimAutoreleasedReturnValue();
          v39 = [OUTLINED_FUNCTION_5_0() objectForKeyedSubscript:?];
          v40 = [v39 count];
          displayGivenName = [v8 displayGivenName];
          v11 = [v55 localizedStringWithFormat:v34, v50, v40, displayGivenName];
        }

        else
        {
          displayGivenName2 = [v8 displayGivenName];
          v54 = [v56 objectAtIndexedSubscript:0];
          v52 = [v15 objectForKeyedSubscript:v54];
          v45 = [v52 count];
          [v56 objectAtIndexedSubscript:1];
          objc_claimAutoreleasedReturnValue();
          v46 = [OUTLINED_FUNCTION_5_0() objectForKeyedSubscript:?];
          v11 = [v55 localizedStringWithFormat:v34, displayGivenName2, v45, objc_msgSend(v46, "count")];
        }
      }

      else
      {
        v42 = DSLogSourceDescriptor;
        if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_FAULT))
        {
          v58 = 138543362;
          v59 = v56;
          OUTLINED_FUNCTION_5(&dword_248C40000, v42, v43, "More than 2 resource types are not supported: %{public}@", &v58);
        }

        v11 = 0;
      }

      goto LABEL_29;
    }

    if ([v35 length] && objc_msgSend(v57, "length"))
    {
      v47 = OUTLINED_FUNCTION_4();
      v11 = [(DSSourceDescriptor *)v47 stopByPerson:v48 direction:4 format:v35 namedResources:v57 isBlocking:resources];
      goto LABEL_29;
    }

    v36 = MEMORY[0x277CCACA8];
    displayGivenName3 = [v8 displayGivenName];
    v38 = displayGivenName3;
    if (resources)
    {
      if (v11 != 1)
      {
        [v36 localizedStringWithFormat:v34, v11, displayGivenName3];
        v11 = LABEL_27:;

LABEL_29:
        goto LABEL_3;
      }
    }

    else
    {
      v49 = v11;
    }

    [v36 localizedStringWithFormat:v34, displayGivenName3, v49];
    goto LABEL_27;
  }

  v11 = 0;
LABEL_3:

  return v11;
}

- (void)_localizedStopByPerson:(void *)person isBlocking:
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = [v5 sharedResourcesForSourceName:self[1]];
    v8 = [MEMORY[0x277CBEB58] set];
    v9 = [MEMORY[0x277CBEB58] set];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if (([v6 shareDirectionForSharedResource:{v15, v23}] & 4) != 0)
          {
            v16 = v9;
          }

          else
          {
            v16 = v8;
          }

          v17 = [v16 addObject:v15];
        }

        v12 = OUTLINED_FUNCTION_26(v17, v18, &v23, v27);
      }

      while (v12);
    }

    v19 = [(DSSourceDescriptor *)self _localizedStopByPerson:v6 detailTextForDirectlySharedResources:v8 isBlocking:person];
    v20 = [(DSSourceDescriptor *)self _localizedStopByPerson:v6 detailTextForIndirectlySharedResources:v9 isBlocking:person];
    array = [MEMORY[0x277CBEB18] array];
    if (v19)
    {
      [OUTLINED_FUNCTION_24() addObject:?];
    }

    if (v20)
    {
      [array addObject:v20];
    }

    self = [array componentsJoinedByString:{@" ", v23}];
  }

  return self;
}

- (id)localizedAlertTextForPerson:(id)person
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    localizationBundle = self->_localizationBundle;
  }

  else
  {
    localizationBundle = 0;
  }

  v6 = localizationBundle;
  personCopy = person;
  v8 = [(DSSourceDescriptor *)self localizableKey:?];
  v9 = [(NSBundle *)v6 localizedAttributedStringForKey:v8 value:&stru_285B9D7E0 table:0];

  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v21 = *MEMORY[0x277CCA290];
  termsOfAddress = [personCopy termsOfAddress];
  v20 = termsOfAddress;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v22[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  displayName = [personCopy displayName];
  displayName2 = [personCopy displayName];

  OUTLINED_FUNCTION_6();
  v17 = [v16 initWithFormat:displayName options:displayName2 locale:? context:?];

  string = [v17 string];

  return string;
}

- (id)localizedResourceNamesForPerson:(id)person
{
  if (self)
  {
    sourceName = self->_sourceName;
  }

  else
  {
    sourceName = 0;
  }

  v6 = [person sharedResourcesForSourceName:sourceName];
  v7 = [(DSSourceDescriptor *)self localizedNameListForResources:v6];

  return v7;
}

- (BOOL)supportsResourceTypes
{
  if (self)
  {
    sourceName = self->_sourceName;
  }

  else
  {
    sourceName = 0;
  }

  return sourceName == @"com.apple.DigitalSeparation.Photos";
}

- (id)localizedStopAllAlertDetailForPeople:(id)people
{
  v36 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  array = [MEMORY[0x277CBEB18] array];
  v7 = [(DSSourceDescriptor *)self _sharedResourcesForPeople:peopleCopy isOwnedByUser:1];
  v33 = v7;
  if ([v7 count])
  {
    [array addObject:@"OUTGOING"];
    v9 = [(DSSourceDescriptor *)self _locKeyForResources:v7 withDescriptorKey:@"STOP_ALL_SHARING_ALERT_DETAIL_TEXT_OUTGOING_%@"];
    if (self)
    {
      localizationBundle = self->_localizationBundle;
    }

    else
    {
      localizationBundle = 0;
    }

    v11 = localizationBundle;
    v12 = [(DSSourceDescriptor *)self localizableKey:v9];
    OUTLINED_FUNCTION_19();
    v8 = [v13 localizedStringForKey:? value:? table:?];
  }

  else
  {
    v8 = 0;
  }

  v14 = [(DSSourceDescriptor *)self _sharedResourcesForPeople:peopleCopy isOwnedByUser:0];
  if ([v14 count])
  {
    [array addObject:@"INCOMING"];
    v16 = [(DSSourceDescriptor *)self _locKeyForResources:v14 withDescriptorKey:@"STOP_ALL_SHARING_ALERT_DETAIL_TEXT_INCOMING_%@"];
    if (self)
    {
      v17 = self->_localizationBundle;
    }

    else
    {
      v17 = 0;
    }

    v3 = v17;
    v18 = [(DSSourceDescriptor *)self localizableKey:v16];
    v15 = [(NSBundle *)v3 localizedStringForKey:v18 value:&stru_285B9D7E0 table:0];
  }

  else
  {
    v15 = 0;
  }

  v19 = MEMORY[0x277CCACA8];
  [array componentsJoinedByString:@"_"];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_21();
  v20 = [v19 stringWithFormat:@"STOP_ALL_SHARING_ALERT_DETAIL_%@"];

  if (self)
  {
    v21 = self->_localizationBundle;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  v23 = [(DSSourceDescriptor *)self localizableKey:v20];
  v24 = [(NSBundle *)v22 localizedStringForKey:v23 value:&stru_285B9D7E0 table:0];

  if (v8 && v15)
  {
    v25 = MEMORY[0x277CCACA8];
    v32 = v15;
  }

  else
  {
    if (v15)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:v24, v15, v32, v33];
      goto LABEL_19;
    }

    if (!v8)
    {
      v28 = DSLogSourceDescriptor;
      if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_FAULT))
      {
        if (self)
        {
          sourceName = self->_sourceName;
        }

        else
        {
          sourceName = 0;
        }

        v34 = 138543362;
        v35 = sourceName;
        v30 = v28;
        OUTLINED_FUNCTION_5(&dword_248C40000, v30, v31, "Could not support resource specific alert detail for source: %{public}@", &v34);

        v26 = 0;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_20;
    }

    v25 = MEMORY[0x277CCACA8];
  }

  [v25 stringWithFormat:v24, v8, v32, v33];
  v26 = LABEL_19:;
LABEL_20:

  return v26;
}

- (void)_sharedResourcesForPeople:(int)people isOwnedByUser:
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v21 = v5;
  if (self)
  {
    v6 = v5;
    [MEMORY[0x277CBEB58] set];
    objc_claimAutoreleasedReturnValue();
    *&v7 = OUTLINED_FUNCTION_23();
    v28 = v7;
    v29 = v7;
    v30 = v7;
    v31 = v7;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v23 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v12 = [v11 sharedResourcesForSourceName:self[1]];
          v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v25;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v25 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v24 + 1) + 8 * j);
                v18 = [v11 shareDirectionForSharedResource:v17];
                v19 = (v18 & 0xFFFFFFFFFFFFFFFELL) == 2;
                if (!people)
                {
                  v19 = v18 != 2;
                }

                if (v19)
                {
                  [self addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v14);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }
  }

  return self;
}

- (id)_locKeyForResources:(void *)resources withDescriptorKey:
{
  v39[2] = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  if (self)
  {
    v6 = [(DSSourceDescriptor *)self sharedResourcesByResourceType:a2];
    allKeys = [v6 allKeys];
    v8 = [(DSSourceDescriptor *)self orderedResourceTypes:allKeys];

    if ([v6 count] == 1)
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v6 objectForKeyedSubscript:v9];
      v11 = [v10 count];
      v12 = @"MULTIPLE";
      if (v11 == 1)
      {
        v12 = @"SINGLE";
      }

      v13 = v12;

      v14 = MEMORY[0x277CCACA8];
      v39[0] = v13;
      v39[1] = v9;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
      v16 = [v15 componentsJoinedByString:@"_"];
      v17 = [v14 stringWithFormat:resourcesCopy, v16];
    }

    else
    {
      if ([v6 count] != 2)
      {
        v31 = DSLogSourceDescriptor;
        if (os_log_type_enabled(DSLogSourceDescriptor, OS_LOG_TYPE_FAULT))
        {
          v35 = 138543362;
          v36 = v8;
          OUTLINED_FUNCTION_5(&dword_248C40000, v31, v32, "More than 2 resource types are not supported: %{public}@", &v35);
        }

        v17 = 0;
        goto LABEL_18;
      }

      v18 = [v8 objectAtIndexedSubscript:0];
      v19 = [v6 objectForKeyedSubscript:v18];
      v34 = resourcesCopy;
      if ([v19 count] == 1)
      {
        v20 = @"SINGLE";
      }

      else
      {
        v20 = @"MULTIPLE";
      }

      v38[0] = v20;
      v21 = [v8 objectAtIndexedSubscript:1];
      v22 = [v6 objectForKeyedSubscript:v21];
      if ([v22 count] == 1)
      {
        v23 = @"SINGLE";
      }

      else
      {
        v23 = @"MULTIPLE";
      }

      v38[1] = v23;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

      v24 = MEMORY[0x277CCACA8];
      v25 = [v9 objectAtIndexedSubscript:0];
      v37[0] = v25;
      v26 = [v8 objectAtIndexedSubscript:0];
      v37[1] = v26;
      v27 = [OUTLINED_FUNCTION_8() objectAtIndexedSubscript:?];
      v37[2] = v27;
      v28 = [v8 objectAtIndexedSubscript:1];
      v37[3] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
      v30 = [v29 componentsJoinedByString:@"_"];
      v17 = [v24 stringWithFormat:v34, v30];

      resourcesCopy = v34;
    }

LABEL_18:
    goto LABEL_19;
  }

  v17 = 0;
LABEL_19:

  return v17;
}

- (id)localizedStopByTypeSubtitleForSharingType:(id)type
{
  v28 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  [MEMORY[0x277CBEB58] set];
  objc_claimAutoreleasedReturnValue();
  *&v6 = OUTLINED_FUNCTION_23();
  *(&v23 + 1) = *(&v6 + 1);
  v24 = v6;
  v25 = v6;
  v26 = v6;
  allPeople = [typeCopy allPeople];
  v8 = [allPeople countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(allPeople);
        }

        if (self)
        {
          sourceName = self->_sourceName;
        }

        else
        {
          sourceName = 0;
        }

        v13 = [*(*(&v23 + 1) + 8 * v11) sharedResourcesForSourceName:sourceName];
        [v3 unionSet:v13];

        ++v11;
      }

      while (v9 != v11);
      v16 = OUTLINED_FUNCTION_26(v14, v15, &v23, v27);
      v9 = v16;
    }

    while (v16);
  }

  v17 = [(DSSourceDescriptor *)self _locKeyForResources:v3 withDescriptorKey:@"STOP_BY_TYPE_SUBTITLE_%@"];
  if (v17)
  {
    if (self)
    {
      localizationBundle = self->_localizationBundle;
    }

    else
    {
      localizationBundle = 0;
    }

    v21 = localizationBundle;
    v22 = [(DSSourceDescriptor *)self localizableKey:v17];
    v18 = [(NSBundle *)v21 localizedStringForKey:v22 value:&stru_285B9D7E0 table:0];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)initWithSourceName:(uint64_t)a1 localizationBundle:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DSSourceDescriptor.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"sourceName.length"}];
}

+ (void)sourceDescriptorForSource:(uint64_t)a1 localizationBundle:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DSSourceDescriptor.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"cached"}];
}

- (void)localizedAppName
{
  if (self)
  {
    v6 = self[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(DSSourceDescriptor *)self localizableKey:?];
  *a2 = v8;
  *a3 = [v7 localizedStringForKey:v8 value:&stru_285B9D7E0 table:0];
}

@end