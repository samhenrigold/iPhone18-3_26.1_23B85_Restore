@interface ELSWhitelistEntry
- (ELSWhitelistEntry)initWithBundleIdentifier:(id)identifier parameterName:(id)name baseLocalizationKey:(id)key needsWAPIKeys:(BOOL)keys requiresFollowup:(BOOL)followup retry:(BOOL)retry platforms:(id)platforms;
- (ELSWhitelistEntry)initWithBundleIdentifier:(id)identifier parameterName:(id)name displayNameLocalizationKey:(id)key descriptionLocalizationKey:(id)localizationKey sensitiveInformationLocalizationKey:(id)informationLocalizationKey needsWAPIKeys:(BOOL)keys requiresFollowup:(BOOL)followup retry:(BOOL)self0 platforms:(id)self1;
@end

@implementation ELSWhitelistEntry

- (ELSWhitelistEntry)initWithBundleIdentifier:(id)identifier parameterName:(id)name baseLocalizationKey:(id)key needsWAPIKeys:(BOOL)keys requiresFollowup:(BOOL)followup retry:(BOOL)retry platforms:(id)platforms
{
  keysCopy = keys;
  v16 = MEMORY[0x277CCACA8];
  platformsCopy = platforms;
  keyCopy = key;
  nameCopy = name;
  identifierCopy = identifier;
  keyCopy = [v16 stringWithFormat:@"%@_DESCRIPTION", keyCopy];
  keyCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_SENSITIVE_INFORMATION", keyCopy];
  BYTE1(v25) = retry;
  LOBYTE(v25) = followup;
  v23 = [(ELSWhitelistEntry *)self initWithBundleIdentifier:identifierCopy parameterName:nameCopy displayNameLocalizationKey:keyCopy descriptionLocalizationKey:keyCopy sensitiveInformationLocalizationKey:keyCopy2 needsWAPIKeys:keysCopy requiresFollowup:v25 retry:platformsCopy platforms:?];

  return v23;
}

- (ELSWhitelistEntry)initWithBundleIdentifier:(id)identifier parameterName:(id)name displayNameLocalizationKey:(id)key descriptionLocalizationKey:(id)localizationKey sensitiveInformationLocalizationKey:(id)informationLocalizationKey needsWAPIKeys:(BOOL)keys requiresFollowup:(BOOL)followup retry:(BOOL)self0 platforms:(id)self1
{
  keysCopy = keys;
  identifierCopy = identifier;
  nameCopy = name;
  keyCopy = key;
  localizationKeyCopy = localizationKey;
  informationLocalizationKeyCopy = informationLocalizationKey;
  platformsCopy = platforms;
  v33.receiver = self;
  v33.super_class = ELSWhitelistEntry;
  v21 = [(ELSWhitelistEntry *)&v33 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_bundleIdentifier, identifier);
    objc_storeStrong(&v22->_parameterName, name);
    objc_storeStrong(&v22->_platformAvailability, platforms);
    if (keysCopy && MGGetBoolAnswer())
    {
      v23 = [keyCopy stringByAppendingString:@"_WAPI"];
      displayNameLocalizationKey = v22->_displayNameLocalizationKey;
      v22->_displayNameLocalizationKey = v23;

      v25 = [localizationKeyCopy stringByAppendingString:@"_WAPI"];
      descriptionLocalizationKey = v22->_descriptionLocalizationKey;
      v22->_descriptionLocalizationKey = v25;

      v27 = [informationLocalizationKeyCopy stringByAppendingString:@"_WAPI"];
    }

    else
    {
      objc_storeStrong(&v22->_displayNameLocalizationKey, key);
      objc_storeStrong(&v22->_descriptionLocalizationKey, localizationKey);
      v27 = informationLocalizationKeyCopy;
    }

    sensitiveInformationLocalizationKey = v22->_sensitiveInformationLocalizationKey;
    v22->_sensitiveInformationLocalizationKey = v27;

    v22->_requiresFollowup = followup;
    v22->_retry = retry;
  }

  return v22;
}

@end