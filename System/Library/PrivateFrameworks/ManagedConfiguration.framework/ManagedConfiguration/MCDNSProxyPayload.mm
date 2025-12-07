@interface MCDNSProxyPayload
+ (id)typeStrings;
- (MCDNSProxyPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (NSDictionary)configurationDictionary;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCDNSProxyPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.dnsProxy.managed";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (MCDNSProxyPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = MCDNSProxyPayload;
  v9 = [(MCPayload *)&v38 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (v9)
  {
    v37 = 0;
    v10 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"AppBundleIdentifier" isRequired:1 outError:&v37];
    v11 = v37;
    appBundleIdentifier = v9->_appBundleIdentifier;
    v9->_appBundleIdentifier = v10;

    if (v9->_appBundleIdentifier)
    {
      v36 = v11;
      v13 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ProviderBundleIdentifier" isRequired:0 outError:&v36];
      v14 = v36;

      providerBundleIdentifier = v9->_providerBundleIdentifier;
      v9->_providerBundleIdentifier = v13;

      if (v9->_providerBundleIdentifier)
      {
        v16 = 1;
      }

      else
      {
        v16 = v14 == 0;
      }

      if (v16)
      {
        v35 = v14;
        v17 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ProviderConfiguration" isRequired:0 outError:&v35];
        v11 = v35;

        providerConfiguration = v9->_providerConfiguration;
        v9->_providerConfiguration = v17;

        if (v9->_providerBundleIdentifier || !v11)
        {
          v34 = v11;
          v19 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"DNSProxyUUID" isRequired:0 outError:&v34];
          v20 = v34;

          dnsProxyUUID = v9->_dnsProxyUUID;
          v9->_dnsProxyUUID = v19;

          v11 = v20;
        }
      }

      else
      {
        v11 = v14;
      }
    }

    if ([dictionaryCopy count])
    {
      v22 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v23 = v22;
        friendlyName = [(MCPayload *)v9 friendlyName];
        *buf = 138543618;
        v40 = friendlyName;
        v41 = 2114;
        v42 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
      }
    }

    if (v11)
    {
      v25 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v26 = v25;
      if (error)
      {
        v27 = v25;
        *error = v26;
      }

      v28 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v29 = v28;
        v30 = objc_opt_class();
        v31 = v30;
        mCVerboseDescription = [v26 MCVerboseDescription];
        *buf = 138543618;
        v40 = v30;
        v41 = 2114;
        v42 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v9 = 0;
    }
  }

  return v9;
}

- (id)stubDictionary
{
  v8.receiver = self;
  v8.super_class = MCDNSProxyPayload;
  stubDictionary = [(MCPayload *)&v8 stubDictionary];
  appBundleIdentifier = [(MCDNSProxyPayload *)self appBundleIdentifier];
  [stubDictionary setObject:appBundleIdentifier forKeyedSubscript:@"AppBundleIdentifier"];

  providerBundleIdentifier = [(MCDNSProxyPayload *)self providerBundleIdentifier];
  [stubDictionary setObject:providerBundleIdentifier forKeyedSubscript:@"ProviderBundleIdentifier"];

  dnsProxyUUID = [(MCDNSProxyPayload *)self dnsProxyUUID];
  [stubDictionary setObject:dnsProxyUUID forKeyedSubscript:@"DNSProxyUUID"];

  return stubDictionary;
}

- (NSDictionary)configurationDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  displayName = [(MCPayload *)self displayName];
  [v3 setObject:displayName forKeyedSubscript:@"PayloadDisplayName"];

  appBundleIdentifier = [(MCDNSProxyPayload *)self appBundleIdentifier];
  [v3 setObject:appBundleIdentifier forKeyedSubscript:@"AppBundleIdentifier"];

  providerBundleIdentifier = [(MCDNSProxyPayload *)self providerBundleIdentifier];
  [v3 setObject:providerBundleIdentifier forKeyedSubscript:@"ProviderBundleIdentifier"];

  providerConfiguration = [(MCDNSProxyPayload *)self providerConfiguration];
  [v3 setObject:providerConfiguration forKeyedSubscript:@"ProviderConfiguration"];

  return v3;
}

- (id)verboseDescription
{
  v13.receiver = self;
  v13.super_class = MCDNSProxyPayload;
  verboseDescription = [(MCPayload *)&v13 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  appBundleIdentifier = [(MCDNSProxyPayload *)self appBundleIdentifier];
  [v4 appendFormat:@"App: %@\n", appBundleIdentifier];

  providerBundleIdentifier = [(MCDNSProxyPayload *)self providerBundleIdentifier];

  if (providerBundleIdentifier)
  {
    providerBundleIdentifier2 = [(MCDNSProxyPayload *)self providerBundleIdentifier];
    [v4 appendFormat:@"App's provider: %@\n", providerBundleIdentifier2];
  }

  providerConfiguration = [(MCDNSProxyPayload *)self providerConfiguration];

  if (providerConfiguration)
  {
    providerConfiguration2 = [(MCDNSProxyPayload *)self providerConfiguration];
    [v4 appendFormat:@"Provider's configuration: %@\n", providerConfiguration2];
  }

  dnsProxyUUID = [(MCDNSProxyPayload *)self dnsProxyUUID];

  if (dnsProxyUUID)
  {
    dnsProxyUUID2 = [(MCDNSProxyPayload *)self dnsProxyUUID];
    [v4 appendFormat:@"DNSProxyUUID            : %@\n", dnsProxyUUID2];
  }

  return v4;
}

- (id)subtitle2Label
{
  subtitle2Description = [(MCDNSProxyPayload *)self subtitle2Description];
  if (subtitle2Description)
  {
    v10 = MCLocalizedFormat(@"DNS_PROXY_PROVIDER_BUNDLE_COLON", v2, v3, v4, v5, v6, v7, v8, v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)payloadDescriptionKeyValueSections
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v4 = [MCKeyValue alloc];
  appBundleIdentifier = [(MCDNSProxyPayload *)self appBundleIdentifier];
  v6 = MCLocalizedString(@"DNS_PROXY_APP");
  v7 = [(MCKeyValue *)v4 initWithLocalizedString:appBundleIdentifier localizedKey:v6];
  [v3 addObject:v7];

  providerBundleIdentifier = [(MCDNSProxyPayload *)self providerBundleIdentifier];

  if (providerBundleIdentifier)
  {
    v9 = [MCKeyValue alloc];
    providerBundleIdentifier2 = [(MCDNSProxyPayload *)self providerBundleIdentifier];
    v11 = MCLocalizedString(@"DNS_PROXY_PROVIDER_BUNDLE");
    v12 = [(MCKeyValue *)v9 initWithLocalizedString:providerBundleIdentifier2 localizedKey:v11];
    [v3 addObject:v12];
  }

  dnsProxyUUID = [(MCDNSProxyPayload *)self dnsProxyUUID];

  if (dnsProxyUUID)
  {
    v14 = [MCKeyValue alloc];
    dnsProxyUUID2 = [(MCDNSProxyPayload *)self dnsProxyUUID];
    v16 = MCLocalizedString(@"DNS_PROXY_UUID");
    v17 = [(MCKeyValue *)v14 initWithLocalizedString:dnsProxyUUID2 localizedKey:v16];
    [v3 addObject:v17];
  }

  v18 = [MCKeyValueSection sectionWithKeyValues:v3];
  v21[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

  return v19;
}

- (id)installationWarnings
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MCLocalizedString(@"INSTALL_WARNING_DNS_PROXY_TITLE");
  v3 = MCLocalizedStringByDevice(@"INSTALL_WARNING_DNS_PROXY");
  v4 = [MCProfileWarning warningWithLocalizedTitle:v2 localizedBody:v3 isLongForm:1];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

@end