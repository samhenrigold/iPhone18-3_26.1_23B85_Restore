@interface IXPlaceholderAttributes
- (BOOL)isEqual:(id)equal;
- (IXPlaceholderAttributes)init;
- (IXPlaceholderAttributes)initWithCoder:(id)coder;
- (IXPlaceholderAttributes)initWithInfoPlistDictionary:(id)dictionary;
- (IXPlaceholderAttributes)initWithInfoPlistFromBundle:(__CFBundle *)bundle error:(id *)error;
- (IXPlaceholderAttributes)initWithInfoPlistFromBundleURL:(id)l error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)infoPlistContent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setRequiredDeviceCapabilitiesWithArray:(id)array;
@end

@implementation IXPlaceholderAttributes

- (IXPlaceholderAttributes)init
{
  v3.receiver = self;
  v3.super_class = IXPlaceholderAttributes;
  return [(IXPlaceholderAttributes *)&v3 init];
}

- (IXPlaceholderAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v51.receiver = self;
  v51.super_class = IXPlaceholderAttributes;
  v5 = [(IXPlaceholderAttributes *)&v51 init];
  if (v5)
  {
    v5->_launchProhibited = [coderCopy decodeBoolForKey:@"launchProhibited"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleShortVersionString"];
    bundleShortVersionString = v5->_bundleShortVersionString;
    v5->_bundleShortVersionString = v8;

    v10 = [coderCopy decodePropertyListForKey:@"extensionDictionary"];
    extensionDictionary = v5->_extensionDictionary;
    v5->_extensionDictionary = v10;

    v12 = [coderCopy decodePropertyListForKey:@"exAppExtensionAttributes"];
    exAppExtensionAttributes = v5->_exAppExtensionAttributes;
    v5->_exAppExtensionAttributes = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumOSVersion"];
    minimumOSVersion = v5->_minimumOSVersion;
    v5->_minimumOSVersion = v14;

    v16 = [coderCopy decodePropertyListForKey:@"requiredDeviceCapabilities"];
    requiredDeviceCapabilities = v5->_requiredDeviceCapabilities;
    v5->_requiredDeviceCapabilities = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"sbAppTags"];
    sbAppTags = v5->_sbAppTags;
    v5->_sbAppTags = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"lsCounterpartIdentifiers"];
    lsCounterpartIdentifiers = v5->_lsCounterpartIdentifiers;
    v5->_lsCounterpartIdentifiers = v26;

    v5->_lsRequiresPostProcessing = [coderCopy decodeBoolForKey:@"lsRequiresPostProcessing"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sbIconMasqueradeIdentifier"];
    sbIconMasqueradeIdentifier = v5->_sbIconMasqueradeIdentifier;
    v5->_sbIconMasqueradeIdentifier = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionBundleIdentifierForWatchApp"];
    companionBundleIdentifierForWatchApp = v5->_companionBundleIdentifierForWatchApp;
    v5->_companionBundleIdentifierForWatchApp = v30;

    v5->_watchOnlyApp = [coderCopy decodeBoolForKey:@"watchOnlyApp"];
    v5->_runsIndependentlyOfCompanionApp = [coderCopy decodeBoolForKey:@"runsIndependentlyOfCompanionApp"];
    v5->_arcadeApp = [coderCopy decodeBoolForKey:@"arcadeApp"];
    v32 = [coderCopy decodePropertyListForKey:@"webKitPushBundleMetadata"];
    webKitPushBundleMetadata = v5->_webKitPushBundleMetadata;
    v5->_webKitPushBundleMetadata = v32;

    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"uiDeviceFamily"];
    uiDeviceFamily = v5->_uiDeviceFamily;
    v5->_uiDeviceFamily = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accentColorName"];
    accentColorName = v5->_accentColorName;
    v5->_accentColorName = v39;

    v41 = [coderCopy decodePropertyListForKey:@"uiLaunchScreen"];
    uiLaunchScreen = v5->_uiLaunchScreen;
    v5->_uiLaunchScreen = v41;

    v5->_lsRequiresIPhoneOS = [coderCopy decodeBoolForKey:@"lsRequiresIPhoneOS"];
    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"cfBundleSupportedPlatforms"];
    cfBundleSupportedPlatforms = v5->_cfBundleSupportedPlatforms;
    v5->_cfBundleSupportedPlatforms = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dtPlatformName"];
    dtPlatformName = v5->_dtPlatformName;
    v5->_dtPlatformName = v48;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[IXPlaceholderAttributes launchProhibited](self forKey:{"launchProhibited"), @"launchProhibited"}];
  bundleVersion = [(IXPlaceholderAttributes *)self bundleVersion];
  [coderCopy encodeObject:bundleVersion forKey:@"bundleVersion"];

  bundleShortVersionString = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  [coderCopy encodeObject:bundleShortVersionString forKey:@"bundleShortVersionString"];

  extensionDictionary = [(IXPlaceholderAttributes *)self extensionDictionary];
  [coderCopy encodeObject:extensionDictionary forKey:@"extensionDictionary"];

  exAppExtensionAttributes = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
  [coderCopy encodeObject:exAppExtensionAttributes forKey:@"exAppExtensionAttributes"];

  minimumOSVersion = [(IXPlaceholderAttributes *)self minimumOSVersion];
  [coderCopy encodeObject:minimumOSVersion forKey:@"minimumOSVersion"];

  requiredDeviceCapabilities = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
  [coderCopy encodeObject:requiredDeviceCapabilities forKey:@"requiredDeviceCapabilities"];

  sbAppTags = [(IXPlaceholderAttributes *)self sbAppTags];
  [coderCopy encodeObject:sbAppTags forKey:@"sbAppTags"];

  lsCounterpartIdentifiers = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
  [coderCopy encodeObject:lsCounterpartIdentifiers forKey:@"lsCounterpartIdentifiers"];

  [coderCopy encodeBool:-[IXPlaceholderAttributes lsRequiresPostProcessing](self forKey:{"lsRequiresPostProcessing"), @"lsRequiresPostProcessing"}];
  sbIconMasqueradeIdentifier = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
  [coderCopy encodeObject:sbIconMasqueradeIdentifier forKey:@"sbIconMasqueradeIdentifier"];

  companionBundleIdentifierForWatchApp = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
  [coderCopy encodeObject:companionBundleIdentifierForWatchApp forKey:@"companionBundleIdentifierForWatchApp"];

  [coderCopy encodeBool:-[IXPlaceholderAttributes watchOnlyApp](self forKey:{"watchOnlyApp"), @"watchOnlyApp"}];
  [coderCopy encodeBool:-[IXPlaceholderAttributes runsIndependentlyOfCompanionApp](self forKey:{"runsIndependentlyOfCompanionApp"), @"runsIndependentlyOfCompanionApp"}];
  [coderCopy encodeBool:-[IXPlaceholderAttributes arcadeApp](self forKey:{"arcadeApp"), @"arcadeApp"}];
  webKitPushBundleMetadata = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
  [coderCopy encodeObject:webKitPushBundleMetadata forKey:@"webKitPushBundleMetadata"];

  uiDeviceFamily = [(IXPlaceholderAttributes *)self uiDeviceFamily];
  [coderCopy encodeObject:uiDeviceFamily forKey:@"uiDeviceFamily"];

  accentColorName = [(IXPlaceholderAttributes *)self accentColorName];
  [coderCopy encodeObject:accentColorName forKey:@"accentColorName"];

  uiLaunchScreen = [(IXPlaceholderAttributes *)self uiLaunchScreen];
  [coderCopy encodeObject:uiLaunchScreen forKey:@"uiLaunchScreen"];

  [coderCopy encodeBool:-[IXPlaceholderAttributes lsRequiresIPhoneOS](self forKey:{"lsRequiresIPhoneOS"), @"lsRequiresIPhoneOS"}];
  cfBundleSupportedPlatforms = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  [coderCopy encodeObject:cfBundleSupportedPlatforms forKey:@"cfBundleSupportedPlatforms"];

  dtPlatformName = [(IXPlaceholderAttributes *)self dtPlatformName];
  [coderCopy encodeObject:dtPlatformName forKey:@"dtPlatformName"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    launchProhibited = [(IXPlaceholderAttributes *)self launchProhibited];
    if (launchProhibited != [v5 launchProhibited])
    {
LABEL_3:
      v7 = 0;
LABEL_20:

      goto LABEL_21;
    }

    bundleVersion = [(IXPlaceholderAttributes *)self bundleVersion];
    bundleVersion2 = [v5 bundleVersion];
    dtPlatformName = bundleVersion;
    v11 = bundleVersion2;
    dtPlatformName2 = v11;
    if ((dtPlatformName != 0) != (v11 != 0) || dtPlatformName && v11 && ![dtPlatformName isEqual:v11] || (dtPlatformName2, dtPlatformName, dtPlatformName2, dtPlatformName, -[IXPlaceholderAttributes bundleShortVersionString](self, "bundleShortVersionString"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "bundleShortVersionString"), v14 = objc_claimAutoreleasedReturnValue(), dtPlatformName = v13, v15 = v14, dtPlatformName2 = v15, (dtPlatformName != 0) ^ (v15 != 0)) || dtPlatformName && v15 && !objc_msgSend(dtPlatformName, "isEqual:", v15) || (dtPlatformName2, dtPlatformName, dtPlatformName2, dtPlatformName, -[IXPlaceholderAttributes extensionDictionary](self, "extensionDictionary"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "extensionDictionary"), v17 = objc_claimAutoreleasedReturnValue(), dtPlatformName = v16, v18 = v17, dtPlatformName2 = v18, (dtPlatformName != 0) ^ (v18 != 0)) || dtPlatformName && v18 && !objc_msgSend(dtPlatformName, "isEqual:", v18) || (dtPlatformName2, dtPlatformName, dtPlatformName2, dtPlatformName, -[IXPlaceholderAttributes exAppExtensionAttributes](self, "exAppExtensionAttributes"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "exAppExtensionAttributes"), v20 = objc_claimAutoreleasedReturnValue(), dtPlatformName = v19, v21 = v20, dtPlatformName2 = v21, (dtPlatformName != 0) ^ (v21 != 0)) || dtPlatformName && v21 && !objc_msgSend(dtPlatformName, "isEqual:", v21))
    {

      v7 = 0;
    }

    else
    {

      minimumOSVersion = [(IXPlaceholderAttributes *)self minimumOSVersion];
      minimumOSVersion2 = [v5 minimumOSVersion];
      v25 = _CompareObjects(minimumOSVersion, minimumOSVersion2);

      if (!v25)
      {
        goto LABEL_3;
      }

      requiredDeviceCapabilities = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
      requiredDeviceCapabilities2 = [v5 requiredDeviceCapabilities];
      v28 = _CompareObjects(requiredDeviceCapabilities, requiredDeviceCapabilities2);

      if (!v28)
      {
        goto LABEL_3;
      }

      sbAppTags = [(IXPlaceholderAttributes *)self sbAppTags];
      sbAppTags2 = [v5 sbAppTags];
      v31 = _CompareObjects(sbAppTags, sbAppTags2);

      if (!v31)
      {
        goto LABEL_3;
      }

      lsCounterpartIdentifiers = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
      lsCounterpartIdentifiers2 = [v5 lsCounterpartIdentifiers];
      v34 = _CompareObjects(lsCounterpartIdentifiers, lsCounterpartIdentifiers2);

      if (!v34)
      {
        goto LABEL_3;
      }

      lsRequiresPostProcessing = [(IXPlaceholderAttributes *)self lsRequiresPostProcessing];
      if (lsRequiresPostProcessing != [v5 lsRequiresPostProcessing])
      {
        goto LABEL_3;
      }

      sbIconMasqueradeIdentifier = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
      sbIconMasqueradeIdentifier2 = [v5 sbIconMasqueradeIdentifier];
      v38 = _CompareObjects(sbIconMasqueradeIdentifier, sbIconMasqueradeIdentifier2);

      if (!v38)
      {
        goto LABEL_3;
      }

      companionBundleIdentifierForWatchApp = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
      companionBundleIdentifierForWatchApp2 = [v5 companionBundleIdentifierForWatchApp];
      v41 = _CompareObjects(companionBundleIdentifierForWatchApp, companionBundleIdentifierForWatchApp2);

      if (!v41)
      {
        goto LABEL_3;
      }

      watchOnlyApp = [(IXPlaceholderAttributes *)self watchOnlyApp];
      if (watchOnlyApp != [v5 watchOnlyApp])
      {
        goto LABEL_3;
      }

      runsIndependentlyOfCompanionApp = [(IXPlaceholderAttributes *)self runsIndependentlyOfCompanionApp];
      if (runsIndependentlyOfCompanionApp != [v5 runsIndependentlyOfCompanionApp])
      {
        goto LABEL_3;
      }

      arcadeApp = [(IXPlaceholderAttributes *)self arcadeApp];
      if (arcadeApp != [v5 arcadeApp])
      {
        goto LABEL_3;
      }

      webKitPushBundleMetadata = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
      webKitPushBundleMetadata2 = [v5 webKitPushBundleMetadata];
      v47 = _CompareObjects(webKitPushBundleMetadata, webKitPushBundleMetadata2);

      if (!v47)
      {
        goto LABEL_3;
      }

      uiDeviceFamily = [(IXPlaceholderAttributes *)self uiDeviceFamily];
      uiDeviceFamily2 = [v5 uiDeviceFamily];
      v50 = _CompareObjects(uiDeviceFamily, uiDeviceFamily2);

      if (!v50)
      {
        goto LABEL_3;
      }

      accentColorName = [(IXPlaceholderAttributes *)self accentColorName];
      accentColorName2 = [v5 accentColorName];
      v53 = _CompareObjects(accentColorName, accentColorName2);

      if (!v53)
      {
        goto LABEL_3;
      }

      uiLaunchScreen = [(IXPlaceholderAttributes *)self uiLaunchScreen];
      uiLaunchScreen2 = [v5 uiLaunchScreen];
      v56 = _CompareObjects(uiLaunchScreen, uiLaunchScreen2);

      if (!v56)
      {
        goto LABEL_3;
      }

      lsRequiresIPhoneOS = [(IXPlaceholderAttributes *)self lsRequiresIPhoneOS];
      if (lsRequiresIPhoneOS != [v5 lsRequiresIPhoneOS])
      {
        goto LABEL_3;
      }

      cfBundleSupportedPlatforms = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
      cfBundleSupportedPlatforms2 = [v5 cfBundleSupportedPlatforms];
      v60 = _CompareObjects(cfBundleSupportedPlatforms, cfBundleSupportedPlatforms2);

      if (!v60)
      {
        goto LABEL_3;
      }

      dtPlatformName = [(IXPlaceholderAttributes *)self dtPlatformName];
      dtPlatformName2 = [v5 dtPlatformName];
      v7 = _CompareObjects(dtPlatformName, dtPlatformName2);
    }

    goto LABEL_20;
  }

  v7 = 0;
LABEL_21:

  return v7;
}

- (unint64_t)hash
{
  launchProhibited = [(IXPlaceholderAttributes *)self launchProhibited];
  bundleVersion = [(IXPlaceholderAttributes *)self bundleVersion];
  v5 = [bundleVersion hash];

  bundleShortVersionString = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  v7 = v5 | [bundleShortVersionString hash] | launchProhibited;

  extensionDictionary = [(IXPlaceholderAttributes *)self extensionDictionary];
  v9 = [extensionDictionary hash];

  exAppExtensionAttributes = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
  v11 = v9 | [exAppExtensionAttributes hash];

  minimumOSVersion = [(IXPlaceholderAttributes *)self minimumOSVersion];
  v13 = v7 | v11 | [minimumOSVersion hash];

  requiredDeviceCapabilities = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
  v15 = [requiredDeviceCapabilities hash];

  sbAppTags = [(IXPlaceholderAttributes *)self sbAppTags];
  v17 = v15 | [sbAppTags hash];

  lsCounterpartIdentifiers = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
  v19 = v17 | [lsCounterpartIdentifiers hash];

  v20 = v13 | v19 | [(IXPlaceholderAttributes *)self lsRequiresPostProcessing];
  sbIconMasqueradeIdentifier = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
  v22 = [sbIconMasqueradeIdentifier hash];

  companionBundleIdentifierForWatchApp = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
  v24 = v22 | [companionBundleIdentifierForWatchApp hash];

  v25 = v24 | [(IXPlaceholderAttributes *)self watchOnlyApp];
  v26 = v25 | [(IXPlaceholderAttributes *)self runsIndependentlyOfCompanionApp];
  v27 = v20 | v26 | [(IXPlaceholderAttributes *)self arcadeApp];
  webKitPushBundleMetadata = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
  v29 = [webKitPushBundleMetadata hash];

  uiDeviceFamily = [(IXPlaceholderAttributes *)self uiDeviceFamily];
  v31 = v29 | [uiDeviceFamily hash];

  accentColorName = [(IXPlaceholderAttributes *)self accentColorName];
  v33 = v31 | [accentColorName hash];

  uiLaunchScreen = [(IXPlaceholderAttributes *)self uiLaunchScreen];
  v35 = v33 | [uiLaunchScreen hash];

  v36 = v35 | [(IXPlaceholderAttributes *)self lsRequiresIPhoneOS];
  cfBundleSupportedPlatforms = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  v38 = v27 | v36 | [cfBundleSupportedPlatforms hash];

  dtPlatformName = [(IXPlaceholderAttributes *)self dtPlatformName];
  v40 = [dtPlatformName hash];

  return v38 | v40;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setLaunchProhibited:{-[IXPlaceholderAttributes launchProhibited](self, "launchProhibited")}];
  bundleVersion = [(IXPlaceholderAttributes *)self bundleVersion];
  [v4 setBundleVersion:bundleVersion];

  bundleShortVersionString = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  [v4 setBundleShortVersionString:bundleShortVersionString];

  extensionDictionary = [(IXPlaceholderAttributes *)self extensionDictionary];
  [v4 setExtensionDictionary:extensionDictionary];

  exAppExtensionAttributes = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
  [v4 setExAppExtensionAttributes:exAppExtensionAttributes];

  minimumOSVersion = [(IXPlaceholderAttributes *)self minimumOSVersion];
  [v4 setMinimumOSVersion:minimumOSVersion];

  requiredDeviceCapabilities = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
  [v4 setRequiredDeviceCapabilities:requiredDeviceCapabilities];

  sbAppTags = [(IXPlaceholderAttributes *)self sbAppTags];
  [v4 setSbAppTags:sbAppTags];

  lsCounterpartIdentifiers = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
  [v4 setLsCounterpartIdentifiers:lsCounterpartIdentifiers];

  [v4 setLsRequiresPostProcessing:{-[IXPlaceholderAttributes lsRequiresPostProcessing](self, "lsRequiresPostProcessing")}];
  sbIconMasqueradeIdentifier = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
  [v4 setSbIconMasqueradeIdentifier:sbIconMasqueradeIdentifier];

  companionBundleIdentifierForWatchApp = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
  [v4 setCompanionBundleIdentifierForWatchApp:companionBundleIdentifierForWatchApp];

  [v4 setWatchOnlyApp:{-[IXPlaceholderAttributes watchOnlyApp](self, "watchOnlyApp")}];
  [v4 setRunsIndependentlyOfCompanionApp:{-[IXPlaceholderAttributes runsIndependentlyOfCompanionApp](self, "runsIndependentlyOfCompanionApp")}];
  [v4 setArcadeApp:{-[IXPlaceholderAttributes arcadeApp](self, "arcadeApp")}];
  webKitPushBundleMetadata = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
  [v4 setWebKitPushBundleMetadata:webKitPushBundleMetadata];

  uiDeviceFamily = [(IXPlaceholderAttributes *)self uiDeviceFamily];
  [v4 setUiDeviceFamily:uiDeviceFamily];

  accentColorName = [(IXPlaceholderAttributes *)self accentColorName];
  [v4 setAccentColorName:accentColorName];

  uiLaunchScreen = [(IXPlaceholderAttributes *)self uiLaunchScreen];
  [v4 setUiLaunchScreen:uiLaunchScreen];

  [v4 setLsRequiresIPhoneOS:{-[IXPlaceholderAttributes lsRequiresIPhoneOS](self, "lsRequiresIPhoneOS")}];
  cfBundleSupportedPlatforms = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  [v4 setCfBundleSupportedPlatforms:cfBundleSupportedPlatforms];

  dtPlatformName = [(IXPlaceholderAttributes *)self dtPlatformName];
  [v4 setDtPlatformName:dtPlatformName];

  return v4;
}

- (IXPlaceholderAttributes)initWithInfoPlistFromBundleURL:(id)l error:(id *)error
{
  lCopy = l;
  _plistKeys = [(IXPlaceholderAttributes *)self _plistKeys];
  v8 = LoadInfoPlistFromBundleAtURL(lCopy, _plistKeys, error);

  if (v8)
  {
    self = [(IXPlaceholderAttributes *)self initWithInfoPlistDictionary:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IXPlaceholderAttributes)initWithInfoPlistFromBundle:(__CFBundle *)bundle error:(id *)error
{
  selfCopy = self;
  _plistKeys = [(IXPlaceholderAttributes *)self _plistKeys];
  v8 = LoadInfoPlistFromBundle(bundle, _plistKeys, error);

  if (v8)
  {
    selfCopy = [(IXPlaceholderAttributes *)selfCopy initWithInfoPlistDictionary:v8];
    v9 = selfCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (IXPlaceholderAttributes)initWithInfoPlistDictionary:(id)dictionary
{
  v95 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [(IXPlaceholderAttributes *)self init];
  if (!v5)
  {
    goto LABEL_77;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"LSApplicationLaunchProhibited"];
  [(IXPlaceholderAttributes *)v5 setLaunchProhibited:IXBooleanValue(v6, 0)];

  v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E695E500]];
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setBundleVersion:v9];
  v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E695E148]];
  objc_opt_class();
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setBundleShortVersionString:v12];
  v13 = [dictionaryCopy objectForKeyedSubscript:@"NSExtension"];
  objc_opt_class();
  v14 = v13;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setExtensionDictionary:v15];
  v16 = [dictionaryCopy objectForKeyedSubscript:@"EXAppExtensionAttributes"];
  objc_opt_class();
  v17 = v16;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setExAppExtensionAttributes:v18];
  v19 = [dictionaryCopy objectForKeyedSubscript:@"MinimumOSVersion"];
  objc_opt_class();
  v20 = v19;
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setMinimumOSVersion:v21];
  v22 = [dictionaryCopy objectForKeyedSubscript:@"SBAppTags"];
  objc_opt_class();
  v23 = v22;
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_opt_class();
  v26 = IXFilterArrayForClass(v24, v25);
  [(IXPlaceholderAttributes *)v5 setSbAppTags:v26];

  v27 = [dictionaryCopy objectForKeyedSubscript:@"LSCounterpartIdentifiers"];
  objc_opt_class();
  v28 = v27;
  if (objc_opt_isKindOfClass())
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_opt_class();
  v31 = IXFilterArrayForClass(v29, v30);
  [(IXPlaceholderAttributes *)v5 setLsCounterpartIdentifiers:v31];

  v32 = [dictionaryCopy objectForKeyedSubscript:@"LSRequiresPostProcessing"];
  [(IXPlaceholderAttributes *)v5 setLsRequiresPostProcessing:IXBooleanValue(v32, 0)];

  v33 = [dictionaryCopy objectForKeyedSubscript:@"SBIconMasqueradeIdentifier"];
  objc_opt_class();
  v34 = v33;
  if (objc_opt_isKindOfClass())
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setSbIconMasqueradeIdentifier:v35];
  v36 = [dictionaryCopy objectForKeyedSubscript:@"WKCompanionAppBundleIdentifier"];
  objc_opt_class();
  v37 = v36;
  if (objc_opt_isKindOfClass())
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setCompanionBundleIdentifierForWatchApp:v38];
  v39 = [dictionaryCopy objectForKeyedSubscript:@"UIRequiredDeviceCapabilities"];
  objc_opt_class();
  v40 = v39;
  if (objc_opt_isKindOfClass())
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (v41)
  {
    v42 = v40;
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = IXFilterDictionaryForClass(v42, v43, v44);

    [(IXPlaceholderAttributes *)v5 setRequiredDeviceCapabilities:v45];
  }

  else
  {
    objc_opt_class();
    v46 = v40;
    if (objc_opt_isKindOfClass())
    {
      v47 = v46;
    }

    else
    {
      v47 = 0;
    }

    if (v47)
    {
      [(IXPlaceholderAttributes *)v5 setRequiredDeviceCapabilitiesWithArray:v46];
    }
  }

  v48 = [dictionaryCopy objectForKeyedSubscript:@"WKWatchOnly"];
  [(IXPlaceholderAttributes *)v5 setWatchOnlyApp:IXBooleanValue(v48, 0)];

  v49 = [dictionaryCopy objectForKeyedSubscript:@"WKRunsIndependentlyOfCompanionApp"];
  [(IXPlaceholderAttributes *)v5 setRunsIndependentlyOfCompanionApp:IXBooleanValue(v49, 0)];

  v50 = [dictionaryCopy objectForKeyedSubscript:@"NSApplicationRequiresArcade"];
  [(IXPlaceholderAttributes *)v5 setArcadeApp:IXBooleanValue(v50, 0)];

  v51 = [dictionaryCopy objectForKeyedSubscript:@"WKPushBundleMetadata"];
  objc_opt_class();
  v52 = v51;
  if (objc_opt_isKindOfClass())
  {
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setWebKitPushBundleMetadata:v53];
  v54 = [dictionaryCopy objectForKeyedSubscript:@"NSAccentColorName"];
  objc_opt_class();
  v55 = v54;
  if (objc_opt_isKindOfClass())
  {
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setAccentColorName:v56];
  v57 = [dictionaryCopy objectForKeyedSubscript:@"UILaunchScreen"];
  objc_opt_class();
  v58 = v57;
  if (objc_opt_isKindOfClass())
  {
    v59 = v58;
  }

  else
  {
    v59 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setUiLaunchScreen:v59];
  v60 = [dictionaryCopy objectForKeyedSubscript:@"UIDeviceFamily"];
  objc_opt_class();
  v61 = v60;
  if (objc_opt_isKindOfClass())
  {
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  if (v62)
  {
    v87 = v40;
    v88 = dictionaryCopy;
    v63 = objc_opt_new();
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v64 = v62;
    v65 = [v64 countByEnumeratingWithState:&v89 objects:v94 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v90;
      do
      {
        for (i = 0; i != v66; ++i)
        {
          if (*v90 != v67)
          {
            objc_enumerationMutation(v64);
          }

          v69 = *(*(&v89 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            intValue = [v69 intValue];
            v71 = [MEMORY[0x1E696AD98] numberWithInt:intValue];
            [v63 addObject:v71];
          }
        }

        v66 = [v64 countByEnumeratingWithState:&v89 objects:v94 count:16];
      }

      while (v66);
    }

    v72 = [v63 copy];
    [(IXPlaceholderAttributes *)v5 setUiDeviceFamily:v72];

    v40 = v87;
    dictionaryCopy = v88;
  }

  v73 = [dictionaryCopy objectForKeyedSubscript:@"LSRequiresIPhoneOS"];
  [(IXPlaceholderAttributes *)v5 setLsRequiresIPhoneOS:IXBooleanValue(v73, 0)];

  v74 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E695E158]];
  objc_opt_class();
  v75 = v74;
  if (objc_opt_isKindOfClass())
  {
    v76 = v75;
  }

  else
  {
    v76 = 0;
  }

  v77 = objc_opt_class();
  if (v76)
  {
    v78 = IXFilterArrayForClass(v75, v77);
  }

  else
  {
    v79 = v75;
    if (objc_opt_isKindOfClass())
    {
      v80 = v79;
    }

    else
    {
      v80 = 0;
    }

    if (!v80)
    {
      goto LABEL_73;
    }

    v93 = v79;
    v81 = MEMORY[0x1E695DEC8];
    v82 = v79;
    v78 = [v81 arrayWithObjects:&v93 count:1];
  }

  [(IXPlaceholderAttributes *)v5 setCfBundleSupportedPlatforms:v78];

LABEL_73:
  v83 = [dictionaryCopy objectForKeyedSubscript:@"DTPlatformName"];
  objc_opt_class();
  v84 = v83;
  if (objc_opt_isKindOfClass())
  {
    v85 = v84;
  }

  else
  {
    v85 = 0;
  }

  [(IXPlaceholderAttributes *)v5 setDtPlatformName:v85];
LABEL_77:

  return v5;
}

- (void)setRequiredDeviceCapabilitiesWithArray:(id)array
{
  v21 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = MEMORY[0x1E695E118];
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        objc_opt_class();
        v13 = v12;
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          [v5 setObject:v10 forKeyedSubscript:{v13, v16}];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v15 = [v5 copy];
    [(IXPlaceholderAttributes *)self setRequiredDeviceCapabilities:v15];
  }
}

- (id)infoPlistContent
{
  v3 = objc_opt_new();
  if ([(IXPlaceholderAttributes *)self launchProhibited])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSApplicationLaunchProhibited"];
  }

  bundleVersion = [(IXPlaceholderAttributes *)self bundleVersion];
  [v3 setObject:bundleVersion forKeyedSubscript:*MEMORY[0x1E695E500]];

  bundleShortVersionString = [(IXPlaceholderAttributes *)self bundleShortVersionString];
  [v3 setObject:bundleShortVersionString forKeyedSubscript:*MEMORY[0x1E695E148]];

  extensionDictionary = [(IXPlaceholderAttributes *)self extensionDictionary];
  [v3 setObject:extensionDictionary forKeyedSubscript:@"NSExtension"];

  exAppExtensionAttributes = [(IXPlaceholderAttributes *)self exAppExtensionAttributes];
  [v3 setObject:exAppExtensionAttributes forKeyedSubscript:@"EXAppExtensionAttributes"];

  minimumOSVersion = [(IXPlaceholderAttributes *)self minimumOSVersion];
  [v3 setObject:minimumOSVersion forKeyedSubscript:@"MinimumOSVersion"];

  requiredDeviceCapabilities = [(IXPlaceholderAttributes *)self requiredDeviceCapabilities];
  [v3 setObject:requiredDeviceCapabilities forKeyedSubscript:@"UIRequiredDeviceCapabilities"];

  sbAppTags = [(IXPlaceholderAttributes *)self sbAppTags];
  [v3 setObject:sbAppTags forKeyedSubscript:@"SBAppTags"];

  lsCounterpartIdentifiers = [(IXPlaceholderAttributes *)self lsCounterpartIdentifiers];
  [v3 setObject:lsCounterpartIdentifiers forKeyedSubscript:@"LSCounterpartIdentifiers"];

  sbIconMasqueradeIdentifier = [(IXPlaceholderAttributes *)self sbIconMasqueradeIdentifier];
  [v3 setObject:sbIconMasqueradeIdentifier forKeyedSubscript:@"SBIconMasqueradeIdentifier"];

  companionBundleIdentifierForWatchApp = [(IXPlaceholderAttributes *)self companionBundleIdentifierForWatchApp];
  [v3 setObject:companionBundleIdentifierForWatchApp forKeyedSubscript:@"WKCompanionAppBundleIdentifier"];

  webKitPushBundleMetadata = [(IXPlaceholderAttributes *)self webKitPushBundleMetadata];
  [v3 setObject:webKitPushBundleMetadata forKeyedSubscript:@"WKPushBundleMetadata"];

  uiDeviceFamily = [(IXPlaceholderAttributes *)self uiDeviceFamily];
  [v3 setObject:uiDeviceFamily forKeyedSubscript:@"UIDeviceFamily"];

  accentColorName = [(IXPlaceholderAttributes *)self accentColorName];
  [v3 setObject:accentColorName forKeyedSubscript:@"NSAccentColorName"];

  uiLaunchScreen = [(IXPlaceholderAttributes *)self uiLaunchScreen];
  [v3 setObject:uiLaunchScreen forKeyedSubscript:@"UILaunchScreen"];

  if ([(IXPlaceholderAttributes *)self watchOnlyApp])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WKWatchOnly"];
  }

  if ([(IXPlaceholderAttributes *)self runsIndependentlyOfCompanionApp])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WKRunsIndependentlyOfCompanionApp"];
  }

  if ([(IXPlaceholderAttributes *)self arcadeApp])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"NSApplicationRequiresArcade"];
  }

  if ([(IXPlaceholderAttributes *)self lsRequiresPostProcessing])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSRequiresPostProcessing"];
  }

  if ([(IXPlaceholderAttributes *)self lsRequiresIPhoneOS])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"LSRequiresIPhoneOS"];
  }

  cfBundleSupportedPlatforms = [(IXPlaceholderAttributes *)self cfBundleSupportedPlatforms];
  [v3 setObject:cfBundleSupportedPlatforms forKeyedSubscript:*MEMORY[0x1E695E158]];

  dtPlatformName = [(IXPlaceholderAttributes *)self dtPlatformName];
  [v3 setObject:dtPlatformName forKeyedSubscript:@"DTPlatformName"];

  v20 = [v3 copy];

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  infoPlistContent = [(IXPlaceholderAttributes *)self infoPlistContent];
  v7 = [v3 stringWithFormat:@"<%@<%p> : %@>", v5, self, infoPlistContent];

  return v7;
}

@end