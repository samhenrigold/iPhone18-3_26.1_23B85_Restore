@interface WBSPasswordManagerWebsiteMetadataEntry
- (BOOL)updateWebsiteName:(id)name;
- (NSDictionary)dictionaryRepresentation;
- (WBSPasswordManagerWebsiteMetadataEntry)initWithKeychainDictionary:(id)dictionary forDomain:(id)domain;
- (id)description;
- (id)keychainItemLabelForDomain:(id)domain;
@end

@implementation WBSPasswordManagerWebsiteMetadataEntry

- (WBSPasswordManagerWebsiteMetadataEntry)initWithKeychainDictionary:(id)dictionary forDomain:(id)domain
{
  dictionaryCopy = dictionary;
  domainCopy = domain;
  v35.receiver = self;
  v35.super_class = WBSPasswordManagerWebsiteMetadataEntry;
  v8 = [(WBSPasswordManagerWebsiteMetadataEntry *)&v35 init];
  v10 = v8;
  if (!v8)
  {
LABEL_9:
    v31 = 0;
    goto LABEL_10;
  }

  if (!dictionaryCopy)
  {
    v32 = WBS_LOG_CHANNEL_PREFIXKeychain(v8, v9);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordManagerWebsiteMetadataEntry initWithKeychainDictionary:domainCopy forDomain:v32];
    }

    goto LABEL_9;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v33 = WBS_LOG_CHANNEL_PREFIXKeychain(isKindOfClass, v12);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      [(WBSPasswordManagerWebsiteMetadataEntry *)domainCopy initWithKeychainDictionary:v33 forDomain:dictionaryCopy];
    }

    goto LABEL_9;
  }

  v13 = [dictionaryCopy copy];
  originalBackingDictionary = v10->_originalBackingDictionary;
  v10->_originalBackingDictionary = v13;

  v15 = [(NSDictionary *)v10->_originalBackingDictionary safari_stringForKey:@"wn"];
  websiteName = v10->_websiteName;
  v10->_websiteName = v15;

  v17 = [(NSDictionary *)v10->_originalBackingDictionary safari_dateForKey:@"wn_dm"];
  websiteNameDateLastModified = v10->_websiteNameDateLastModified;
  v10->_websiteNameDateLastModified = v17;

  v19 = [(NSDictionary *)v10->_originalBackingDictionary safari_dateForKey:@"wn_dr"];
  websiteNameDateLastRefreshed = v10->_websiteNameDateLastRefreshed;
  v10->_websiteNameDateLastRefreshed = v19;

  v10->_supportsPasskeys = [(NSDictionary *)v10->_originalBackingDictionary safari_BOOLForKey:@"supportsPasskey"];
  v21 = MEMORY[0x1E695DFF8];
  v22 = [(NSDictionary *)v10->_originalBackingDictionary safari_stringForKey:@"enrollPasskeyURL"];
  v23 = [v21 URLWithString:v22];
  enrollPasskeyURL = v10->_enrollPasskeyURL;
  v10->_enrollPasskeyURL = v23;

  v25 = MEMORY[0x1E695DFF8];
  v26 = [(NSDictionary *)v10->_originalBackingDictionary safari_stringForKey:@"managePasskeyURL"];
  v27 = [v25 URLWithString:v26];
  managePasskeyURL = v10->_managePasskeyURL;
  v10->_managePasskeyURL = v27;

  v29 = [(NSDictionary *)v10->_originalBackingDictionary safari_dateForKey:@"passkeyEndpointsDateLastRefreshed"];
  passkeyEndpointsDateLastRefreshed = v10->_passkeyEndpointsDateLastRefreshed;
  v10->_passkeyEndpointsDateLastRefreshed = v29;

  v31 = v10;
LABEL_10:

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p websiteName = %@; websiteNameDateLastModified = %@; websiteNameDateLastRefreshed = %@>", v5, self, self->_websiteName, self->_websiteNameDateLastModified, self->_websiteNameDateLastRefreshed];;

  return v6;
}

- (BOOL)updateWebsiteName:(id)name
{
  nameCopy = name;
  v5 = [MEMORY[0x1E695DF00] now];
  websiteName = self->_websiteName;
  if (websiteName && [(NSString *)websiteName isEqualToString:nameCopy])
  {
    v7 = 0;
  }

  else
  {
    v8 = [nameCopy copy];
    v9 = self->_websiteName;
    self->_websiteName = v8;

    objc_storeStrong(&self->_websiteNameDateLastModified, v5);
    v7 = 1;
  }

  websiteNameDateLastRefreshed = self->_websiteNameDateLastRefreshed;
  self->_websiteNameDateLastRefreshed = v5;

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [(NSDictionary *)self->_originalBackingDictionary mutableCopy];
  v4 = v3;
  if (v3)
  {
    dictionary = v3;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = dictionary;

  if ([(NSString *)self->_websiteName length])
  {
    [v6 setObject:self->_websiteName forKeyedSubscript:@"wn"];
  }

  websiteNameDateLastModified = self->_websiteNameDateLastModified;
  if (websiteNameDateLastModified)
  {
    [v6 setObject:websiteNameDateLastModified forKeyedSubscript:@"wn_dm"];
  }

  websiteNameDateLastRefreshed = self->_websiteNameDateLastRefreshed;
  if (websiteNameDateLastRefreshed)
  {
    [v6 setObject:websiteNameDateLastRefreshed forKeyedSubscript:@"wn_dr"];
  }

  if (self->_supportsPasskeys)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v6 setObject:v9 forKeyedSubscript:@"supportsPasskey"];
  }

  enrollPasskeyURL = self->_enrollPasskeyURL;
  if (enrollPasskeyURL)
  {
    absoluteString = [(NSURL *)enrollPasskeyURL absoluteString];
    [v6 setObject:absoluteString forKeyedSubscript:@"enrollPasskeyURL"];
  }

  managePasskeyURL = self->_managePasskeyURL;
  if (managePasskeyURL)
  {
    absoluteString2 = [(NSURL *)managePasskeyURL absoluteString];
    [v6 setObject:absoluteString2 forKeyedSubscript:@"managePasskeyURL"];
  }

  passkeyEndpointsDateLastRefreshed = self->_passkeyEndpointsDateLastRefreshed;
  if (passkeyEndpointsDateLastRefreshed)
  {
    [v6 setObject:passkeyEndpointsDateLastRefreshed forKeyedSubscript:@"passkeyEndpointsDateLastRefreshed"];
  }

  v15 = [v6 copy];

  return v15;
}

- (id)keychainItemLabelForDomain:(id)domain
{
  v3 = MEMORY[0x1E696AEC0];
  domainCopy = domain;
  v5 = _WBSLocalizedString(@"Website Metadata for %@", &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
  domainCopy = [v3 localizedStringWithFormat:v5, domainCopy];

  return domainCopy;
}

- (void)initWithKeychainDictionary:(uint64_t)a3 forDomain:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = 138478083;
  v6 = a1;
  v7 = 2112;
  v8 = objc_opt_class();
  _os_log_fault_impl(&dword_1B8447000, v4, OS_LOG_TYPE_FAULT, "Error initializing WBSPasswordManagerWebsiteMetadataEntry: received non-Dictionary keychain dictionary for %{private}@; type was %@", &v5, 0x16u);
}

- (void)initWithKeychainDictionary:(uint64_t)a1 forDomain:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Error initializing WBSPasswordManagerWebsiteMetadataEntry: received nil keychain dictionary for %{private}@", &v2, 0xCu);
}

@end