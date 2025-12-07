@interface MCSharedDeviceConfigurationPayload
+ (id)typeStrings;
- (MCSharedDeviceConfigurationPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (NSDictionary)configuration;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
@end

@implementation MCSharedDeviceConfigurationPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.shareddeviceconfiguration";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (MCSharedDeviceConfigurationPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = MCSharedDeviceConfigurationPayload;
  v9 = [(MCPayload *)&v32 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (v9)
  {
    v31 = 0;
    v10 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"LockScreenFootnote" isRequired:0 outError:&v31];
    v11 = v31;
    lockScreenFootnote = v9->_lockScreenFootnote;
    v9->_lockScreenFootnote = v10;

    if (v11 || !v9->_lockScreenFootnote && (v30 = 0, [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"IfLostReturnToMessage" isRequired:0 outError:&v30], v15 = objc_claimAutoreleasedReturnValue(), v11 = v30, v16 = v9->_lockScreenFootnote, v9->_lockScreenFootnote = v15, v16, v11) || (v29 = 0, objc_msgSend(dictionaryCopy, "MCValidateAndRemoveNonZeroLengthStringWithKey:isRequired:outError:", @"AssetTagInformation", 0, &v29), v13 = objc_claimAutoreleasedReturnValue(), v11 = v29, assetTagInformation = v9->_assetTagInformation, v9->_assetTagInformation = v13, assetTagInformation, v11))
    {
      v17 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v18 = v17;
      if (error)
      {
        v19 = v17;
        *error = v18;
      }

      v20 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        v22 = objc_opt_class();
        v23 = v22;
        mCVerboseDescription = [v18 MCVerboseDescription];
        *buf = 138543618;
        v34 = v22;
        v35 = 2114;
        v36 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v9 = 0;
    }

    if ([dictionaryCopy count])
    {
      v25 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v26 = v25;
        friendlyName = [(MCPayload *)v9 friendlyName];
        *buf = 138543618;
        v34 = friendlyName;
        v35 = 2114;
        v36 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v26, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }
  }

  return v9;
}

- (NSDictionary)configuration
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  lockScreenFootnote = [(MCSharedDeviceConfigurationPayload *)self lockScreenFootnote];
  [dictionary setObject:lockScreenFootnote forKeyedSubscript:@"LockScreenFootnote"];

  assetTagInformation = [(MCSharedDeviceConfigurationPayload *)self assetTagInformation];
  [dictionary setObject:assetTagInformation forKeyedSubscript:@"AssetTagInformation"];

  return dictionary;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCSharedDeviceConfigurationPayload;
  stubDictionary = [(MCPayload *)&v6 stubDictionary];
  configuration = [(MCSharedDeviceConfigurationPayload *)self configuration];
  [stubDictionary addEntriesFromDictionary:configuration];

  return stubDictionary;
}

- (id)payloadDescriptionKeyValueSections
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  lockScreenFootnote = [(MCSharedDeviceConfigurationPayload *)self lockScreenFootnote];
  v5 = [lockScreenFootnote length];

  if (v5)
  {
    v6 = [MCKeyValue alloc];
    lockScreenFootnote2 = [(MCSharedDeviceConfigurationPayload *)self lockScreenFootnote];
    v8 = MCLocalizedString(@"LOCK_SCREEN_FOOTNOTE");
    v9 = [(MCKeyValue *)v6 initWithLocalizedString:lockScreenFootnote2 localizedKey:v8];

    [v3 addObject:v9];
  }

  assetTagInformation = [(MCSharedDeviceConfigurationPayload *)self assetTagInformation];
  v11 = [assetTagInformation length];

  if (v11)
  {
    v12 = [MCKeyValue alloc];
    assetTagInformation2 = [(MCSharedDeviceConfigurationPayload *)self assetTagInformation];
    v14 = MCLocalizedString(@"ASSET_TAG_INFORMATION");
    v15 = [(MCKeyValue *)v12 initWithLocalizedString:assetTagInformation2 localizedKey:v14];

    [v3 addObject:v15];
  }

  if ([v3 count])
  {
    v16 = [MCKeyValueSection sectionWithKeyValues:v3];
    v19[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end