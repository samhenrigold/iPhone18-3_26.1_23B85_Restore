@interface OBPrivacyFlow
+ (OBPrivacyFlow)flowWithBundle:(id)bundle;
+ (id)_modelSpecificLocalizedStringKeyForKey:(id)key preferredDeviceType:(unint64_t)type;
+ (id)_splashPlistFromBundle:(id)bundle forContentName:(id)name;
- (BOOL)_conformsToRequirement:(id)requirement;
- (BOOL)_conformsToRequirements:(id)requirements;
- (BOOL)_showInCombinedListWithDeviceClass:(id)class;
- (BOOL)_supportsPlatform:(id)platform;
- (BOOL)enablesGroupingInCombinedList;
- (BOOL)isPersonallyIdentifiable;
- (BOOL)showInCombinedListForPreferredDeviceType:(unint64_t)type;
- (BOOL)supportsPlatformForPreferredDeviceType:(unint64_t)type;
- (OBImage)buttonIcon;
- (OBPrivacyFlow)initWithBundle:(id)bundle;
- (OBPrivacyFlow)initWithSplashContent:(id)content;
- (id)_SKU;
- (id)_bestStringConsideringCMEChinaForKeyWithPrefix:(id)prefix language:(id)language preferredDeviceType:(unint64_t)type withGenerativeSuffix:(BOOL)suffix;
- (id)_bestStringConsideringGenerativeForKeyWithPrefix:(id)prefix language:(id)language preferredDeviceType:(unint64_t)type;
- (id)_bestStringConsideringNetworkForKeyWithPrefix:(id)prefix language:(id)language preferredDeviceType:(unint64_t)type withGenerativeSuffix:(BOOL)suffix withGMEChinaSuffix:(BOOL)chinaSuffix;
- (id)_bundleImageNamed:(id)named;
- (id)_deviceClass;
- (id)_iconSymbolName;
- (id)_legacyLocalizedContentListForLanguage:(id)language preferredDeviceType:(unint64_t)type;
- (id)_platformOfPreferredDeviceType:(unint64_t)type;
- (id)_splashLocalizedStringForKey:(id)key language:(id)language preferredDeviceType:(unint64_t)type;
- (id)_splashLocalizedStringForKey:(id)key language:(id)language table:(id)table preferredDeviceType:(unint64_t)type;
- (id)_stringForKeyWithPrefix:(id)prefix language:(id)language preferredDeviceType:(unint64_t)type withGenerativeSuffix:(BOOL)suffix withGMEChinaSuffix:(BOOL)chinaSuffix withNetworkSuffix:(BOOL)networkSuffix;
- (id)_stringForPlaceholderBundleWithString:(id)string;
- (id)_stringKeyWithCapabilitiesFromPrefix:(id)prefix withNetwork:(BOOL)network withGenerative:(BOOL)generative withGMEChinaSuffix:(BOOL)suffix;
- (id)_textForConditionalItem:(id)item language:(id)language preferredDeviceType:(unint64_t)type;
- (id)_verifiedSplashLocalizedStringForKey:(id)key language:(id)language preferredDeviceType:(unint64_t)type;
- (id)localizedButtonCaptionForLanguage:(id)language preferredDeviceType:(unint64_t)type;
- (id)localizedButtonCaptionSymbolNameForLanguage:(id)language preferredDeviceType:(unint64_t)type;
- (id)localizedButtonTitleForLanguage:(id)language preferredDeviceType:(unint64_t)type;
- (id)localizedCombinedFooterComponentsForLanguage:(id)language preferredDeviceType:(unint64_t)type;
- (id)localizedCombinedFooterForLanguage:(id)language preferredDeviceType:(unint64_t)type;
- (id)localizedCombinedHeaderForLanguage:(id)language preferredDeviceType:(unint64_t)type;
- (id)localizedContentListForLanguage:(id)language preferredDeviceType:(unint64_t)type;
- (id)localizedShortTitleForLanguage:(id)language preferredDeviceType:(unint64_t)type;
- (id)localizedTitleForLanguage:(id)language preferredDeviceType:(unint64_t)type;
- (id)replaceeIdentifierSets;
- (id)replacementPrecondition;
- (unint64_t)contentVersion;
- (void)setButtonIcon:(id)icon;
@end

@implementation OBPrivacyFlow

- (id)replacementPrecondition
{
  v2 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ReplacementInfo"];
  v3 = [v2 objectForKeyedSubscript:@"Precondition"];

  return v3;
}

- (id)replaceeIdentifierSets
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ReplacementInfo", 0];
  v3 = [v2 objectForKeyedSubscript:@"ReplaceeSets"];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (!v6)
        {
          v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
        [v6 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = [v6 copy];

  return v11;
}

- (unint64_t)contentVersion
{
  v2 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ContentVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

+ (OBPrivacyFlow)flowWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = [[OBPrivacyFlow alloc] initWithBundle:bundleCopy];

  return v4;
}

- (OBPrivacyFlow)initWithBundle:(id)bundle
{
  v29 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  v26.receiver = self;
  v26.super_class = OBPrivacyFlow;
  v6 = [(OBPrivacyFlow *)&v26 init];
  v7 = v6;
  if (!v6)
  {
LABEL_21:
    v20 = v7;
    goto LABEL_22;
  }

  objc_storeStrong(&v6->_bundle, bundle);
  underlyingBundle = [(OBBundle *)v7->_bundle underlyingBundle];
  infoDictionary = [underlyingBundle infoDictionary];

  v10 = [infoDictionary objectForKeyedSubscript:@"GDPRSplash"];
  splashContentName = v7->_splashContentName;
  v7->_splashContentName = v10;

  if (v7->_splashContentName)
  {
    underlyingBundle2 = [(OBBundle *)v7->_bundle underlyingBundle];
    v14 = [OBPrivacyFlow _splashPlistFromBundle:underlyingBundle2 forContentName:v7->_splashContentName];
    splashPlist = v7->_splashPlist;
    v7->_splashPlist = v14;

    v16 = v7->_splashPlist;
    if (v16)
    {
      v17 = [(NSDictionary *)v16 objectForKeyedSubscript:@"ButtonTitle"];
      if (v17)
      {
        v7->_splashPListContainsLegacyStringKeys = 1;
      }

      else
      {
        v21 = [(NSDictionary *)v7->_splashPlist objectForKeyedSubscript:@"ButtonCaption"];
        if (v21)
        {
          v7->_splashPListContainsLegacyStringKeys = 1;
        }

        else
        {
          v22 = [(NSDictionary *)v7->_splashPlist objectForKeyedSubscript:@"Title"];
          if (v22)
          {
            v7->_splashPListContainsLegacyStringKeys = 1;
          }

          else
          {
            v23 = [(NSDictionary *)v7->_splashPlist objectForKeyedSubscript:@"ShortTitle"];
            if (v23)
            {
              v7->_splashPListContainsLegacyStringKeys = 1;
            }

            else
            {
              v24 = [(NSDictionary *)v7->_splashPlist objectForKeyedSubscript:@"Content"];
              v7->_splashPListContainsLegacyStringKeys = v24 != 0;
            }
          }
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    v18 = _OBLoggingFacility(v12);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [bundleCopy identifier];
      *buf = 138412290;
      v28 = identifier;
      _os_log_impl(&dword_1B4FB6000, v18, OS_LOG_TYPE_DEFAULT, "No GDPRSplash for bundle %@", buf, 0xCu);
    }
  }

  v20 = 0;
LABEL_22:

  return v20;
}

- (OBPrivacyFlow)initWithSplashContent:(id)content
{
  contentCopy = content;
  v9.receiver = self;
  v9.super_class = OBPrivacyFlow;
  v6 = [(OBPrivacyFlow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_splashPlist, content);
  }

  return v7;
}

- (id)_platformOfPreferredDeviceType:(unint64_t)type
{
  v5 = @"iOS";
  if (type <= 4)
  {
    if (type)
    {
      if (type == 4)
      {
        _currentPlatform = @"macOS";
      }

      else
      {
        _currentPlatform = @"iOS";
      }
    }

    else
    {
      _currentPlatform = [(OBPrivacyFlow *)self _currentPlatform];
    }
  }

  else
  {
    if (type == 8)
    {
      v5 = @"xrOS";
    }

    if (type == 7)
    {
      v5 = @"watchOS";
    }

    if (type - 5 >= 2)
    {
      _currentPlatform = v5;
    }

    else
    {
      _currentPlatform = @"tvOS";
    }
  }

  return _currentPlatform;
}

- (BOOL)supportsPlatformForPreferredDeviceType:(unint64_t)type
{
  selfCopy = self;
  v4 = [(OBPrivacyFlow *)self _platformOfPreferredDeviceType:type];
  LOBYTE(selfCopy) = [(OBPrivacyFlow *)selfCopy _supportsPlatform:v4];

  return selfCopy;
}

- (BOOL)_supportsPlatform:(id)platform
{
  platformCopy = platform;
  v5 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"SupportedPlatforms"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__OBPrivacyFlow__supportsPlatform___block_invoke;
  v9[3] = &unk_1E7C15778;
  v10 = platformCopy;
  v6 = platformCopy;
  v7 = [v5 indexOfObjectPassingTest:v9] != 0x7FFFFFFFFFFFFFFFLL;

  return v7;
}

uint64_t __35__OBPrivacyFlow__supportsPlatform___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 lowercaseString];
    v5 = [*(a1 + 32) lowercaseString];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_splashPlistFromBundle:(id)bundle forContentName:(id)name
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [bundle pathForResource:name ofType:@"plist"];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v4];
  if (!v5)
  {
    v6 = _OBLoggingFacility(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1B4FB6000, v6, OS_LOG_TYPE_DEFAULT, "No splash found in bundle at path: %@", &v8, 0xCu);
    }
  }

  return v5;
}

- (id)_verifiedSplashLocalizedStringForKey:(id)key language:(id)language preferredDeviceType:(unint64_t)type
{
  keyCopy = key;
  v9 = [(OBPrivacyFlow *)self _splashLocalizedStringForKey:keyCopy language:language preferredDeviceType:type];
  v10 = v9;
  if (v9 && ([v9 isEqualToString:keyCopy] & 1) == 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_splashLocalizedStringForKey:(id)key language:(id)language preferredDeviceType:(unint64_t)type
{
  keyCopy = key;
  v9 = self->_splashContentName;
  v10 = [(OBPrivacyFlow *)self _splashLocalizedStringForKey:keyCopy language:language table:v9 preferredDeviceType:type];
  if (v10)
  {
    v11 = v10;
    if ([(OBBundle *)self->_bundle isPlaceholder])
    {
      v12 = [(OBPrivacyFlow *)self _stringForPlaceholderBundleWithString:v11];

      v11 = v12;
    }
  }

  else
  {
    v11 = keyCopy;
  }

  return v11;
}

- (id)_stringForPlaceholderBundleWithString:(id)string
{
  bundle = self->_bundle;
  stringCopy = string;
  identifier = [(OBBundle *)bundle identifier];
  v6 = [stringCopy stringByReplacingOccurrencesOfString:@"%@" withString:identifier];

  return v6;
}

- (id)_splashLocalizedStringForKey:(id)key language:(id)language table:(id)table preferredDeviceType:(unint64_t)type
{
  keyCopy = key;
  languageCopy = language;
  tableCopy = table;
  v13 = [OBPrivacyFlow _modelSpecificLocalizedStringKeyForKey:keyCopy preferredDeviceType:type];
  underlyingBundle = [(OBBundle *)self->_bundle underlyingBundle];
  v15 = [OBUtilities localizedString:v13 forTable:tableCopy inBundle:underlyingBundle forLanguage:languageCopy];

  if (![(__CFString *)v15 length]|| [(__CFString *)v15 isEqualToString:v13])
  {
    underlyingBundle2 = [(OBBundle *)self->_bundle underlyingBundle];
    v17 = [OBUtilities localizedString:keyCopy forTable:tableCopy inBundle:underlyingBundle2 forLanguage:languageCopy];

    v15 = v17;
  }

  if ([(__CFString *)v15 length]&& ([(__CFString *)v15 isEqualToString:keyCopy]& 1) == 0)
  {
    v19 = CFPreferencesCopyValue(@"OBShowFakeText", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if (v19)
    {
      v20 = v19;
      if ([(__CFString *)v15 length]&& os_variant_has_internal_ui())
      {

        v15 = @"ONBOARDINGKIT PRIVACY TEXT";
      }

      CFRelease(v20);
    }

    v15 = v15;
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_modelSpecificLocalizedStringKeyForKey:(id)key preferredDeviceType:(unint64_t)type
{
  keyCopy = key;
  if (type > 4)
  {
    if (type > 6)
    {
      if (type == 7)
      {
        [OBUtilities stringWithFormat:@"%@_APPLEWATCH", keyCopy];
        goto LABEL_18;
      }

      if (type == 8)
      {
        [OBUtilities stringWithFormat:@"%@_APPLEVISION", keyCopy];
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    if (type == 5)
    {
      [OBUtilities stringWithFormat:@"%@_APPLETV", keyCopy];
    }

    else
    {
      [OBUtilities stringWithFormat:@"%@_HOMEPOD", keyCopy];
    }
  }

  else
  {
    if (type <= 2)
    {
      if (type == 1)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_IPHONE", keyCopy];
        goto LABEL_18;
      }

      if (type == 2)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_IPAD", keyCopy];
        goto LABEL_18;
      }

LABEL_21:
      if (_CFMZEnabled())
      {
        [self _modelSpecificLocalizedStringKeyForKey:keyCopy preferredDeviceType:4];
      }

      else
      {
        [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:keyCopy];
      }

      goto LABEL_18;
    }

    if (type == 3)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_IPOD", keyCopy];
    }

    else
    {
      [OBUtilities stringWithFormat:@"%@_MAC", keyCopy];
    }
  }

  v7 = LABEL_18:;

  return v7;
}

- (id)_bundleImageNamed:(id)named
{
  bundle = self->_bundle;
  namedCopy = named;
  underlyingBundle = [(OBBundle *)bundle underlyingBundle];
  v6 = [OBImage imageNamed:namedCopy inBundle:underlyingBundle];

  return v6;
}

- (BOOL)isPersonallyIdentifiable
{
  _iconType = [(OBPrivacyFlow *)self _iconType];
  lowercaseString = [_iconType lowercaseString];
  v4 = [lowercaseString isEqualToString:@"pii"];

  return v4;
}

- (id)_iconSymbolName
{
  if ([(OBPrivacyFlow *)self isPersonallyIdentifiable])
  {
    v2 = @"privacy.handshake";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (OBImage)buttonIcon
{
  if (!self->_buttonIconLoaded && [(OBPrivacyFlow *)self isPersonallyIdentifiable])
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [OBImage imageNamed:@"PII.pdf" inBundle:v3];

    [(OBPrivacyFlow *)self setButtonIcon:v4];
  }

  buttonIcon = self->_buttonIcon;

  return buttonIcon;
}

- (void)setButtonIcon:(id)icon
{
  iconCopy = icon;
  if (self->_buttonIcon != iconCopy)
  {
    v6 = iconCopy;
    objc_storeStrong(&self->_buttonIcon, icon);
    iconCopy = v6;
  }

  self->_buttonIconLoaded = 1;
}

- (BOOL)showInCombinedListForPreferredDeviceType:(unint64_t)type
{
  if (type <= 3)
  {
    if (type > 1)
    {
      v10 = @"iPod";
      if (type != 3)
      {
        v10 = 0;
      }

      if (type == 2)
      {
        _deviceClass = @"iPad";
      }

      else
      {
        _deviceClass = v10;
      }
    }

    else if (type)
    {
      if (type == 1)
      {
        _deviceClass = @"iPhone";
      }

      else
      {
        _deviceClass = 0;
      }
    }

    else
    {
      _deviceClass = [(OBPrivacyFlow *)self _deviceClass];
    }
  }

  else
  {
    v4 = @"AudioAccessory";
    v5 = @"Watch";
    v6 = @"RealityDevice";
    if (type != 8)
    {
      v6 = 0;
    }

    if (type != 7)
    {
      v5 = v6;
    }

    if (type != 6)
    {
      v4 = v5;
    }

    v7 = @"Mac";
    v8 = @"AppleTV";
    if (type != 5)
    {
      v8 = 0;
    }

    if (type != 4)
    {
      v7 = v8;
    }

    if (type <= 5)
    {
      _deviceClass = v7;
    }

    else
    {
      _deviceClass = v4;
    }
  }

  v11 = [(OBPrivacyFlow *)self _showInCombinedListWithDeviceClass:_deviceClass];

  return v11;
}

- (BOOL)_showInCombinedListWithDeviceClass:(id)class
{
  classCopy = class;
  v5 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"HideFromCombinedList"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if ([v5 BOOLValue])
    {
      goto LABEL_10;
    }
  }

  else if (v5)
  {
    v7 = _OBLoggingFacility(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4FB6000, v7, OS_LOG_TYPE_DEFAULT, "HideFromCombinedList must be a BOOLean", buf, 2u);
    }
  }

  v8 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"HideFromCombinedListForSKUs"];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  if (v9)
  {
    _SKU = [(OBPrivacyFlow *)self _SKU];
    v11 = [v8 containsObject:_SKU];

    if (v11)
    {
LABEL_10:
      v12 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    if (v8)
    {
      v13 = _OBLoggingFacility(v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_1B4FB6000, v13, OS_LOG_TYPE_DEFAULT, "HideFromCombinedListForSKUs must be an array", v19, 2u);
      }
    }
  }

  v14 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ShowInCombinedListForDeviceClasses"];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();
  if (v15)
  {
    v12 = [v14 containsObject:classCopy];
  }

  else
  {
    if (v14)
    {
      v16 = _OBLoggingFacility(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1B4FB6000, v16, OS_LOG_TYPE_DEFAULT, "ShowInCombinedListForDeviceClasses must be an array", v18, 2u);
      }
    }

    v12 = 1;
  }

LABEL_24:
  return v12;
}

- (BOOL)enablesGroupingInCombinedList
{
  v2 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"EnablesGroupingInCombinedList"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    if (v2)
    {
      v5 = _OBLoggingFacility(isKindOfClass);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1B4FB6000, v5, OS_LOG_TYPE_DEFAULT, "EnablesGroupingInCombinedList must be a BOOLean", v7, 2u);
      }
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)_deviceClass
{
  v2 = MGGetStringAnswer();

  return v2;
}

- (id)_SKU
{
  v2 = MGGetStringAnswer();

  return v2;
}

- (id)_bestStringConsideringGenerativeForKeyWithPrefix:(id)prefix language:(id)language preferredDeviceType:(unint64_t)type
{
  prefixCopy = prefix;
  languageCopy = language;
  v10 = +[OBCapabilities sharedCapabilities];
  deviceSupportsGenerativeModels = [v10 deviceSupportsGenerativeModels];

  if (!deviceSupportsGenerativeModels || ([(OBPrivacyFlow *)self _bestStringConsideringCMEChinaForKeyWithPrefix:prefixCopy language:languageCopy preferredDeviceType:type withGenerativeSuffix:1], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = [(OBPrivacyFlow *)self _bestStringConsideringCMEChinaForKeyWithPrefix:prefixCopy language:languageCopy preferredDeviceType:type withGenerativeSuffix:0];
  }

  return v12;
}

- (id)_bestStringConsideringCMEChinaForKeyWithPrefix:(id)prefix language:(id)language preferredDeviceType:(unint64_t)type withGenerativeSuffix:(BOOL)suffix
{
  suffixCopy = suffix;
  prefixCopy = prefix;
  languageCopy = language;
  v12 = +[OBCapabilities sharedCapabilities];
  eligibilityForGreymatterHasCountryPolicyChina = [v12 eligibilityForGreymatterHasCountryPolicyChina];

  if (!eligibilityForGreymatterHasCountryPolicyChina || ([(OBPrivacyFlow *)self _bestStringConsideringNetworkForKeyWithPrefix:prefixCopy language:languageCopy preferredDeviceType:type withGenerativeSuffix:suffixCopy withGMEChinaSuffix:1], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = [(OBPrivacyFlow *)self _bestStringConsideringNetworkForKeyWithPrefix:prefixCopy language:languageCopy preferredDeviceType:type withGenerativeSuffix:suffixCopy withGMEChinaSuffix:0];
  }

  return v14;
}

- (id)_bestStringConsideringNetworkForKeyWithPrefix:(id)prefix language:(id)language preferredDeviceType:(unint64_t)type withGenerativeSuffix:(BOOL)suffix withGMEChinaSuffix:(BOOL)chinaSuffix
{
  chinaSuffixCopy = chinaSuffix;
  suffixCopy = suffix;
  prefixCopy = prefix;
  languageCopy = language;
  v14 = [(OBPrivacyFlow *)self _stringForKeyWithPrefix:prefixCopy language:languageCopy preferredDeviceType:type withGenerativeSuffix:suffixCopy withGMEChinaSuffix:chinaSuffixCopy withNetworkSuffix:1];
  if (!v14)
  {
    v14 = [(OBPrivacyFlow *)self _stringForKeyWithPrefix:prefixCopy language:languageCopy preferredDeviceType:type withGenerativeSuffix:suffixCopy withGMEChinaSuffix:chinaSuffixCopy withNetworkSuffix:0];
  }

  return v14;
}

- (id)_stringForKeyWithPrefix:(id)prefix language:(id)language preferredDeviceType:(unint64_t)type withGenerativeSuffix:(BOOL)suffix withGMEChinaSuffix:(BOOL)chinaSuffix withNetworkSuffix:(BOOL)networkSuffix
{
  networkSuffixCopy = networkSuffix;
  chinaSuffixCopy = chinaSuffix;
  suffixCopy = suffix;
  languageCopy = language;
  v15 = [(OBPrivacyFlow *)self _stringKeyWithCapabilitiesFromPrefix:prefix withNetwork:networkSuffixCopy withGenerative:suffixCopy withGMEChinaSuffix:chinaSuffixCopy];
  v16 = [(OBPrivacyFlow *)self _verifiedSplashLocalizedStringForKey:v15 language:languageCopy preferredDeviceType:type];

  return v16;
}

- (id)_stringKeyWithCapabilitiesFromPrefix:(id)prefix withNetwork:(BOOL)network withGenerative:(BOOL)generative withGMEChinaSuffix:(BOOL)suffix
{
  suffixCopy = suffix;
  generativeCopy = generative;
  networkCopy = network;
  prefixCopy = prefix;
  v10 = prefixCopy;
  if (networkCopy)
  {
    v13 = +[OBCapabilities sharedCapabilities];
    isWAPI = [v13 isWAPI];

    if (isWAPI)
    {
      v15 = @"_WLAN";
    }

    else
    {
      v15 = @"_WIFI";
    }

    v10 = [prefixCopy stringByAppendingString:v15];

    if (!suffixCopy)
    {
LABEL_3:
      if (!generativeCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!suffixCopy)
  {
    goto LABEL_3;
  }

  v16 = [v10 stringByAppendingString:@"_GMECHINA"];

  v10 = v16;
  if (generativeCopy)
  {
LABEL_4:
    v11 = [v10 stringByAppendingString:@"_GENERATIVE"];

    v10 = v11;
  }

LABEL_5:

  return v10;
}

- (BOOL)_conformsToRequirement:(id)requirement
{
  lowercaseString = [requirement lowercaseString];
  v7 = 0;
  if (([lowercaseString isEqualToString:@"wifi"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"wlan"))
  {
    v4 = +[OBCapabilities sharedCapabilities];
    isWAPI = [v4 isWAPI];

    v6 = (isWAPI & 1) != 0 ? @"wlan" : @"wifi";
    if ([lowercaseString isEqualToString:v6])
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)_conformsToRequirements:(id)requirements
{
  v18 = *MEMORY[0x1E69E9840];
  requirementsCopy = requirements;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v5) = [(OBPrivacyFlow *)self _conformsToRequirement:requirementsCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = requirementsCopy;
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v5 = 0;
        v9 = *v14;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v13 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v5 |= [(OBPrivacyFlow *)self _conformsToRequirement:v11, v13];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5 & 1;
}

- (id)_textForConditionalItem:(id)item language:(id)language preferredDeviceType:(unint64_t)type
{
  v34 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  languageCopy = language;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(OBPrivacyFlow *)self _splashLocalizedStringForKey:itemCopy language:languageCopy preferredDeviceType:type];
    if (![v10 length] || objc_msgSend(v10, "isEqualToString:", itemCopy))
    {
      v11 = +[OBCapabilities sharedCapabilities];
      isWAPI = [v11 isWAPI];

      if (isWAPI)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_WLAN", itemCopy];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_WIFI", itemCopy];
      }
      v23 = ;
      v24 = [(OBPrivacyFlow *)self _splashLocalizedStringForKey:v23 language:languageCopy preferredDeviceType:type];

      v10 = v24;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = itemCopy;
      v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v28 = itemCopy;
        typeCopy = type;
        v27 = languageCopy;
        v16 = *v30;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v29 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
              v20 = [v19 objectForKeyedSubscript:@"Text"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = [v19 objectForKeyedSubscript:@"Requirements"];
                v22 = [(OBPrivacyFlow *)self _conformsToRequirements:v21];

                if (v22)
                {
                  languageCopy = v27;
                  v10 = [(OBPrivacyFlow *)self _splashLocalizedStringForKey:v20 language:v27 preferredDeviceType:typeCopy];

                  itemCopy = v28;
                  goto LABEL_24;
                }
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

        v10 = 0;
        languageCopy = v27;
        itemCopy = v28;
      }

      else
      {
        v10 = 0;
      }

LABEL_24:
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)localizedButtonCaptionSymbolNameForLanguage:(id)language preferredDeviceType:(unint64_t)type
{
  if (self->_splashPListContainsLegacyStringKeys || ([(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_CAPTION_SYMBOL_NAME" language:language preferredDeviceType:type], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = [v4 stringByReplacingOccurrencesOfString:@" do not localize" withString:&stru_1F2CE9518];
  }

  return v6;
}

- (id)localizedButtonTitleForLanguage:(id)language preferredDeviceType:(unint64_t)type
{
  languageCopy = language;
  v7 = +[OBCapabilities sharedCapabilities];
  v8 = [v7 additionalDisplayLanguageForDisplayLanguage:languageCopy];

  if (v8)
  {
    if (self->_splashPListContainsLegacyStringKeys)
    {
      v9 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ButtonTitleForLanguageAddition"];
      v10 = [(OBPrivacyFlow *)self _textForConditionalItem:v9 language:languageCopy preferredDeviceType:type];

      if (v10)
      {
LABEL_4:
        if (self->_splashPListContainsLegacyStringKeys)
        {
          v11 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ButtonTitle"];
          v12 = [(OBPrivacyFlow *)self _textForConditionalItem:v11 language:v8 preferredDeviceType:type];
        }

        else
        {
          v12 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_TITLE" language:v8 preferredDeviceType:type];
        }

        v13 = [v10 stringByReplacingOccurrencesOfString:@"%@" withString:v12];

        goto LABEL_12;
      }
    }

    else
    {
      v10 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_TITLE_FOR_LANGUAGE_ADDITION" language:languageCopy preferredDeviceType:type];
      if (v10)
      {
        goto LABEL_4;
      }
    }
  }

  if (!self->_splashPListContainsLegacyStringKeys)
  {
    v13 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_TITLE" language:languageCopy preferredDeviceType:type];
    goto LABEL_13;
  }

  v10 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ButtonTitle"];
  v13 = [(OBPrivacyFlow *)self _textForConditionalItem:v10 language:languageCopy preferredDeviceType:type];
LABEL_12:

LABEL_13:

  return v13;
}

- (id)localizedButtonCaptionForLanguage:(id)language preferredDeviceType:(unint64_t)type
{
  languageCopy = language;
  v7 = +[OBCapabilities sharedCapabilities];
  v8 = [v7 additionalDisplayLanguageForDisplayLanguage:languageCopy];

  if (v8)
  {
    if (self->_splashPListContainsLegacyStringKeys)
    {
      v9 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ButtonCaptionForLanguageAddition"];
      v10 = [(OBPrivacyFlow *)self _textForConditionalItem:v9 language:languageCopy preferredDeviceType:type];

      if (v10)
      {
LABEL_4:
        if (self->_splashPListContainsLegacyStringKeys)
        {
          v11 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ButtonCaption"];
          v12 = [(OBPrivacyFlow *)self _textForConditionalItem:v11 language:v8 preferredDeviceType:type];
        }

        else
        {
          v12 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_CAPTION" language:v8 preferredDeviceType:type];
        }

        v13 = [v10 stringByReplacingOccurrencesOfString:@"%@" withString:v12];

        goto LABEL_12;
      }
    }

    else
    {
      v10 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_CAPTION_FOR_LANGUAGE_ADDITION" language:@"en" preferredDeviceType:type];
      if (v10)
      {
        goto LABEL_4;
      }
    }
  }

  if (!self->_splashPListContainsLegacyStringKeys)
  {
    v13 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"BUTTON_CAPTION" language:languageCopy preferredDeviceType:type];
    goto LABEL_13;
  }

  v10 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"ButtonCaption"];
  v13 = [(OBPrivacyFlow *)self _textForConditionalItem:v10 language:languageCopy preferredDeviceType:type];
LABEL_12:

LABEL_13:

  return v13;
}

- (id)localizedTitleForLanguage:(id)language preferredDeviceType:(unint64_t)type
{
  if (self->_splashPListContainsLegacyStringKeys)
  {
    splashPlist = self->_splashPlist;
    languageCopy = language;
    languageCopy2 = [(NSDictionary *)splashPlist objectForKeyedSubscript:@"Title"];
    v9 = [(OBPrivacyFlow *)self _textForConditionalItem:languageCopy2 language:languageCopy preferredDeviceType:type];
  }

  else
  {
    languageCopy2 = language;
    v9 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"SPLASH_TITLE" language:languageCopy2 preferredDeviceType:type];
  }

  return v9;
}

- (id)localizedShortTitleForLanguage:(id)language preferredDeviceType:(unint64_t)type
{
  if (self->_splashPListContainsLegacyStringKeys)
  {
    splashPlist = self->_splashPlist;
    languageCopy = language;
    languageCopy2 = [(NSDictionary *)splashPlist objectForKeyedSubscript:@"ShortTitle"];
    v9 = [(OBPrivacyFlow *)self _textForConditionalItem:languageCopy2 language:languageCopy preferredDeviceType:type];
  }

  else
  {
    languageCopy2 = language;
    v9 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"SPLASH_SHORT_TITLE" language:languageCopy2 preferredDeviceType:type];
  }

  return v9;
}

- (id)localizedCombinedHeaderForLanguage:(id)language preferredDeviceType:(unint64_t)type
{
  if (self->_splashPListContainsLegacyStringKeys)
  {
    splashPlist = self->_splashPlist;
    languageCopy = language;
    languageCopy2 = [(NSDictionary *)splashPlist objectForKeyedSubscript:@"CombinedHeader"];
    v9 = [(OBPrivacyFlow *)self _textForConditionalItem:languageCopy2 language:languageCopy preferredDeviceType:type];
  }

  else
  {
    languageCopy2 = language;
    v9 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"COMBINED_HEADER" language:languageCopy2 preferredDeviceType:type];
  }

  return v9;
}

- (id)localizedCombinedFooterForLanguage:(id)language preferredDeviceType:(unint64_t)type
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = [(OBPrivacyFlow *)self localizedCombinedFooterComponentsForLanguage:language preferredDeviceType:type];
  text = [v4 text];

  if (text)
  {
    v6 = objc_alloc(MEMORY[0x1E696AD40]);
    text2 = [v4 text];
    text = [v6 initWithString:text2];

    linkText = [v4 linkText];
    if (linkText)
    {
      v9 = linkText;
      linkURLString = [v4 linkURLString];

      if (linkURLString)
      {
        v11 = objc_alloc(MEMORY[0x1E696AAB0]);
        linkText2 = [v4 linkText];
        v21 = *MEMORY[0x1E69DB670];
        linkURLString2 = [v4 linkURLString];
        v22[0] = linkURLString2;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        v15 = [v11 initWithString:linkText2 attributes:v14];

        text3 = [v4 text];
        v17 = [text3 rangeOfString:@"%@"];
        v19 = v18;

        if (v19)
        {
          [text replaceCharactersInRange:v17 withAttributedString:{v19, v15}];
        }
      }
    }
  }

  return text;
}

- (id)localizedCombinedFooterComponentsForLanguage:(id)language preferredDeviceType:(unint64_t)type
{
  languageCopy = language;
  v7 = objc_alloc_init(OBPrivacyCombinedFooterComponents);
  if (self->_splashPListContainsLegacyStringKeys)
  {
    v8 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"CombinedFooter"];
    v9 = [(OBPrivacyFlow *)self _textForConditionalItem:v8 language:languageCopy preferredDeviceType:type];
    [(OBPrivacyCombinedFooterComponents *)v7 setText:v9];
  }

  else
  {
    v8 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"COMBINED_FOOTER" language:languageCopy preferredDeviceType:type];
    [(OBPrivacyCombinedFooterComponents *)v7 setText:v8];
  }

  text = [(OBPrivacyCombinedFooterComponents *)v7 text];

  if (text)
  {
    if (self->_splashPListContainsLegacyStringKeys)
    {
      v11 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"CombinedFooterButton"];
      v12 = [(OBPrivacyFlow *)self _textForConditionalItem:v11 language:languageCopy preferredDeviceType:type];

      v13 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"CombinedFooterButtonURL"];
      v14 = [(OBPrivacyFlow *)self _textForConditionalItem:v13 language:languageCopy preferredDeviceType:type];

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"COMBINED_FOOTER_BUTTON" language:languageCopy preferredDeviceType:type];
      v14 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"COMBINED_FOOTER_BUTTON_URL" language:languageCopy preferredDeviceType:type];
      if (!v12)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    if (v14)
    {
      [(OBPrivacyCombinedFooterComponents *)v7 setLinkText:v12];
      [(OBPrivacyCombinedFooterComponents *)v7 setLinkURLString:v14];
    }

    goto LABEL_11;
  }

LABEL_12:

  return v7;
}

- (id)localizedContentListForLanguage:(id)language preferredDeviceType:(unint64_t)type
{
  v32 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if (self->_splashPListContainsLegacyStringKeys)
  {
    v7 = [(OBPrivacyFlow *)self _legacyLocalizedContentListForLanguage:languageCopy preferredDeviceType:type];
  }

  else
  {
    v8 = objc_opt_new();
    v9 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"SPLASH_SUMMARY" language:languageCopy preferredDeviceType:type];
    if (v9)
    {
      v10 = objc_opt_new();
      [v10 setText:v9];
      [v8 addObject:v10];
    }

    v24 = v9;
    v26 = v8;
    v11 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = [&unk_1F2CF8730 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(&unk_1F2CF8730);
          }

          v16 = [*(*(&v27 + 1) + 8 * i) stringByAppendingString:{@"_BULLET", v24}];
          v17 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:v16 language:languageCopy preferredDeviceType:type];
          if (!v17)
          {

            goto LABEL_15;
          }

          v18 = v17;
          v19 = objc_opt_new();
          [v19 setText:v18];
          [v11 addObject:v19];
        }

        v13 = [&unk_1F2CF8730 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
    v7 = v26;
    if ([v11 count])
    {
      v20 = objc_opt_new();
      [v20 setBullets:v11];
      [v26 addObject:v20];
    }

    v21 = [(OBPrivacyFlow *)self _bestStringForKeyWithPrefix:@"FOOTER_TEXT" language:languageCopy preferredDeviceType:type];
    if (v21)
    {
      v22 = objc_opt_new();
      [v22 setText:v21];
      [v26 addObject:v22];
    }
  }

  return v7;
}

- (id)_legacyLocalizedContentListForLanguage:(id)language preferredDeviceType:(unint64_t)type
{
  v79 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v58 = objc_opt_new();
  v5 = [(NSDictionary *)self->_splashPlist objectForKeyedSubscript:@"Content"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v71 objects:v78 count:16];
    if (!v8)
    {
      goto LABEL_57;
    }

    v9 = v8;
    v54 = v5;
    v10 = 0x1E695D000uLL;
    v11 = *v72;
    selfCopy = self;
    v55 = *v72;
    v56 = v7;
    while (1)
    {
      v12 = 0;
      v57 = v9;
      do
      {
        if (*v72 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v71 + 1) + 8 * v12);
        objc_opt_class();
        v14 = objc_opt_isKindOfClass();
        if (v14)
        {
          v60 = v12;
          v15 = v13;
          v16 = [v15 objectForKeyedSubscript:@"Requirements"];
          v17 = [(OBPrivacyFlow *)self _conformsToRequirements:v16];

          if (!v17)
          {
            v12 = v60;
            goto LABEL_48;
          }

          v18 = objc_opt_new();
          v19 = [v15 objectForKeyedSubscript:@"Text"];
          objc_opt_class();
          v20 = objc_opt_isKindOfClass();

          v59 = v15;
          if (v20)
          {
            v21 = [v15 objectForKeyedSubscript:@"Text"];
            v22 = [(OBPrivacyFlow *)self _splashLocalizedStringForKey:v21 language:languageCopy preferredDeviceType:type];
            [v18 setText:v22];

            goto LABEL_41;
          }

          v65 = v18;
          v23 = [v15 objectForKeyedSubscript:@"Bullets"];
          objc_opt_class();
          v24 = objc_opt_isKindOfClass();

          if (v24)
          {
            v61 = objc_opt_new();
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            obj = [v15 objectForKeyedSubscript:@"Bullets"];
            v25 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
            v26 = v18;
            if (!v25)
            {
              goto LABEL_38;
            }

            v27 = v25;
            v28 = *v68;
            while (1)
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v68 != v28)
                {
                  objc_enumerationMutation(obj);
                }

                v30 = *(*(&v67 + 1) + 8 * i);
                objc_opt_class();
                v31 = objc_opt_isKindOfClass();
                if (v31)
                {
                  v32 = v10;
                  v33 = objc_opt_new();
                  v34 = v30;
                  v35 = [v34 objectForKeyedSubscript:@"Text"];
                  v36 = [v34 objectForKeyedSubscript:@"IconName"];
                  objc_opt_class();
                  v37 = objc_opt_isKindOfClass();
                  if (v37)
                  {
                    v38 = [v34 objectForKeyedSubscript:@"Requirements"];
                    v39 = [(OBPrivacyFlow *)selfCopy _conformsToRequirements:v38];

                    if (v39)
                    {
                      v40 = [(OBPrivacyFlow *)selfCopy _splashLocalizedStringForKey:v35 language:languageCopy preferredDeviceType:type];
                      [v33 setText:v40];

                      objc_opt_class();
                      v41 = objc_opt_isKindOfClass();
                      if (v41)
                      {
                        v42 = [(OBPrivacyFlow *)selfCopy _bundleImageNamed:v36];
                        [v33 setIcon:v42];
                        goto LABEL_33;
                      }

                      if (v36)
                      {
                        v42 = _OBLoggingFacility(v41);
                        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                        {
                          v46 = objc_opt_class();
                          *buf = 138412290;
                          v76 = v46;
                          v47 = v46;
                          _os_log_impl(&dword_1B4FB6000, v42, OS_LOG_TYPE_DEFAULT, "OBBundle: Bullet IconName must be a string, was %@", buf, 0xCu);
                        }

LABEL_33:
                      }

                      [v61 addObject:v33, v54];
                    }
                  }

                  else
                  {
                    v43 = _OBLoggingFacility(v37);
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                    {
                      v44 = objc_opt_class();
                      *buf = 138412290;
                      v76 = v44;
                      v45 = v44;
                      _os_log_impl(&dword_1B4FB6000, v43, OS_LOG_TYPE_DEFAULT, "OBBundle: Bullet Text must be a string, was %@", buf, 0xCu);
                    }
                  }

                  v10 = v32;
                  v26 = v65;
                  goto LABEL_36;
                }

                v33 = _OBLoggingFacility(v31);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1B4FB6000, v33, OS_LOG_TYPE_DEFAULT, "OBBundle: Bullet entries must be dictionaries", buf, 2u);
                }

LABEL_36:
              }

              v27 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
              if (!v27)
              {
LABEL_38:

                v21 = v61;
                if ([v61 count])
                {
                  [v26 setBullets:v61];
                }

                self = selfCopy;
                v18 = v65;
                v11 = v55;
                v7 = v56;
                v9 = v57;
LABEL_41:
                v12 = v60;
LABEL_42:

                goto LABEL_43;
              }
            }
          }

          v50 = [v15 objectForKeyedSubscript:@"Bullets"];

          v12 = v60;
          if (v50)
          {
            v21 = _OBLoggingFacility(v51);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1B4FB6000, v21, OS_LOG_TYPE_DEFAULT, "OBPrivacyBundle: Bullets must be an array", buf, 2u);
            }

            goto LABEL_42;
          }

LABEL_43:
          text = [v18 text];
          if (text)
          {

            v15 = v59;
            goto LABEL_46;
          }

          bullets = [v18 bullets];

          v15 = v59;
          if (bullets)
          {
LABEL_46:
            [v58 addObject:v18];
          }

          goto LABEL_48;
        }

        v15 = _OBLoggingFacility(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B4FB6000, v15, OS_LOG_TYPE_DEFAULT, "OBPrivacyBundle: Content entries must be dictionaries", buf, 2u);
        }

LABEL_48:

        ++v12;
      }

      while (v12 != v9);
      v52 = [v7 countByEnumeratingWithState:&v71 objects:v78 count:16];
      v9 = v52;
      if (!v52)
      {
        v5 = v54;
        goto LABEL_57;
      }
    }
  }

  v7 = _OBLoggingFacility(isKindOfClass);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4FB6000, v7, OS_LOG_TYPE_DEFAULT, "OBPrivacyBundle: Content must be an array", buf, 2u);
  }

LABEL_57:

  return v58;
}

@end