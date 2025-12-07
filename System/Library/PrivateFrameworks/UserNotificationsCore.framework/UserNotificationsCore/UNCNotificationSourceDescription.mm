@interface UNCNotificationSourceDescription
+ (id)_validEnvironmentFromEnvironment:(id)environment;
+ (id)applicationSourceDescriptionWithApplication:(id)application;
+ (id)applicationSourceDescriptionWithBundleIdentifier:(id)identifier;
+ (id)descriptionWithBundleIdentifier:(id)identifier path:(id)path allowServiceExtensionFiltering:(BOOL)filtering;
+ (id)sourceDescriptionWithBundleIdentifier:(id)identifier;
+ (id)systemSourceDescriptionWithBundleIdentifier:(id)identifier;
+ (id)systemSourceDescriptionWithBundleURL:(id)l;
+ (id)systemSourceDirectoryURLs;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)setDefaultCategoriesFromArray:(id)array bundle:(id)bundle;
- (void)setDefaultTopicsFromArray:(id)array bundle:(id)bundle;
- (void)setIconFilesFromDictionary:(id)dictionary;
- (void)setSystemPropertiesFromDictionary:(id)dictionary bundle:(id)bundle;
@end

@implementation UNCNotificationSourceDescription

+ (id)systemSourceDirectoryURLs
{
  v10[3] = *MEMORY[0x1E69E9840];
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  if (UNIsInternalInstall())
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = BSSystemRootDirectory();
    v10[0] = v4;
    v10[1] = @"AppleInternal";
    v10[2] = @"Library";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
    v6 = [v3 pathWithComponents:v5];
    v7 = [v2 arrayByAddingObject:v6];

    v2 = v7;
  }

  v8 = [v2 bs_map:&__block_literal_global_9];

  return v8;
}

id __70__UNCNotificationSourceDescription_Factory__systemSourceDirectoryURLs__block_invoke(uint64_t a1, void *a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v3 = a2;
  v4 = BSSystemRootDirectory();
  v8[0] = v4;
  v8[1] = v3;
  v8[2] = @"UserNotifications";
  v8[3] = @"Bundles";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];
  v6 = [v2 fileURLWithPathComponents:v5];

  return v6;
}

+ (id)applicationSourceDescriptionWithBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:?];
    correspondingApplicationRecord = [v4 correspondingApplicationRecord];
    unc_isEligibleToDeliverNotifications = [correspondingApplicationRecord unc_isEligibleToDeliverNotifications];

    if (unc_isEligibleToDeliverNotifications)
    {
      v7 = [self applicationSourceDescriptionWithApplication:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)applicationSourceDescriptionWithApplication:(id)application
{
  v119 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  v5 = applicationCopy;
  if (!applicationCopy)
  {
    v10 = 0;
    goto LABEL_70;
  }

  selfCopy = self;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  bundleURL = [v5 bundleURL];
  dataContainerURL = [v5 dataContainerURL];
  groupContainerURLs = [v5 groupContainerURLs];
  v10 = objc_alloc_init(UNCNotificationSourceDescription);
  v92 = bundleIdentifier;
  [(UNCNotificationSourceDescription *)v10 setBundleIdentifier:bundleIdentifier];
  v91 = bundleURL;
  [(UNCNotificationSourceDescription *)v10 setBundleURL:bundleURL];
  v88 = dataContainerURL;
  [(UNCNotificationSourceDescription *)v10 setDataContainerURL:dataContainerURL];
  v87 = groupContainerURLs;
  [(UNCNotificationSourceDescription *)v10 setGroupContainerURLS:groupContainerURLs];
  appState = [v5 appState];
  -[UNCNotificationSourceDescription setRestricted:](v10, "setRestricted:", [appState isRestricted]);
  v11 = v5;
  mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
  LODWORD(bundleURL) = [mEMORY[0x1E698E730] deviceClass];

  v80 = bundleURL;
  v93 = v11;
  if (bundleURL == 4)
  {
    v104 = 0uLL;
    v105 = 0uLL;
    v102 = 0uLL;
    v103 = 0uLL;
    plugInKitPlugins = [v11 plugInKitPlugins];
    v21 = [plugInKitPlugins countByEnumeratingWithState:&v102 objects:v118 count:16];
    if (v21)
    {
      v22 = v21;
      v84 = v5;
      v23 = *v103;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v103 != v23)
          {
            objc_enumerationMutation(plugInKitPlugins);
          }

          v25 = *(*(&v102 + 1) + 8 * i);
          v26 = [v25 objectForInfoDictionaryKey:@"NSExtensionPointIdentifier" ofClass:objc_opt_class() inScope:1];
          v27 = [v26 isEqualToString:@"com.apple.watchkit"];

          if (v27)
          {
            v28 = v25;
            v11 = v93;
            v29 = v93;
LABEL_25:

            v5 = v84;
            goto LABEL_26;
          }
        }

        v22 = [plugInKitPlugins countByEnumeratingWithState:&v102 objects:v118 count:16];
        if (v22)
        {
          continue;
        }

        goto LABEL_21;
      }
    }

LABEL_22:
    v28 = v11;
    goto LABEL_26;
  }

  v100 = 0uLL;
  v101 = 0uLL;
  v98 = 0uLL;
  v99 = 0uLL;
  plugInKitPlugins = [v11 plugInKitPlugins];
  v14 = [plugInKitPlugins countByEnumeratingWithState:&v98 objects:v117 count:16];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  v84 = v5;
  v16 = *v99;
  while (2)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*v99 != v16)
      {
        objc_enumerationMutation(plugInKitPlugins);
      }

      v18 = *(*(&v98 + 1) + 8 * j);
      v19 = [v18 objectForInfoDictionaryKey:@"NSExtensionPointIdentifier" ofClass:objc_opt_class() inScope:1];
      v20 = [v19 isEqualToString:@"com.apple.usernotifications.service"];

      if (v20)
      {
        v29 = [v18 entitlementValueForKey:@"com.apple.developer.usernotifications.filtering" ofClass:objc_opt_class()];
        -[UNCNotificationSourceDescription setAllowServiceExtensionFiltering:](v10, "setAllowServiceExtensionFiltering:", [v29 BOOLValue]);
        v11 = v93;
        v28 = v93;
        goto LABEL_25;
      }
    }

    v15 = [plugInKitPlugins countByEnumeratingWithState:&v98 objects:v117 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_21:
  v11 = v93;
  v28 = v93;
  v5 = v84;
LABEL_26:

  correspondingApplicationRecord = [v11 correspondingApplicationRecord];
  v31 = correspondingApplicationRecord;
  if (correspondingApplicationRecord)
  {
    localizedName = [correspondingApplicationRecord localizedName];
    [(UNCNotificationSourceDescription *)v10 setDisplayName:localizedName];

    appClipMetadata = [v31 appClipMetadata];
    [(UNCNotificationSourceDescription *)v10 setIsAppClip:appClipMetadata != 0];

    appClipMetadata2 = [v31 appClipMetadata];
    -[UNCNotificationSourceDescription setWantsEphemeralNotifications:](v10, "setWantsEphemeralNotifications:", [appClipMetadata2 wantsEphemeralNotifications]);
  }

  v85 = v31;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v35 = objc_opt_class();
  v36 = [v28 entitlementValueForKey:@"com.apple.developer.icloud-services" ofClass:v35 valuesOfClass:objc_opt_class()];
  v37 = [v36 countByEnumeratingWithState:&v94 objects:v116 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v95;
    while (2)
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v95 != v39)
        {
          objc_enumerationMutation(v36);
        }

        if (![*(*(&v94 + 1) + 8 * k) caseInsensitiveCompare:@"cloudkit"])
        {
          v41 = 1;
          goto LABEL_38;
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v94 objects:v116 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }

    v41 = 0;
LABEL_38:
    v11 = v93;
  }

  else
  {
    v41 = 0;
  }

  [(UNCNotificationSourceDescription *)v10 setUsesCloudKit:v41];
  v83 = [v28 entitlementValueForKey:@"aps-environment" ofClass:objc_opt_class()];
  v82 = [selfCopy _validEnvironmentFromEnvironment:?];
  [(UNCNotificationSourceDescription *)v10 setPushEnvironment:?];
  v42 = [v28 entitlementValueForKey:@"com.apple.developer.usernotifications.critical-alerts" ofClass:objc_opt_class()];
  v44 = v80 != 4 || v28 == v11;
  if (!v42 && !v44)
  {
    v42 = [v11 entitlementValueForKey:@"com.apple.developer.usernotifications.critical-alerts" ofClass:objc_opt_class()];
  }

  v81 = v42;
  -[UNCNotificationSourceDescription setAllowCriticalAlerts:](v10, "setAllowCriticalAlerts:", [v42 BOOLValue]);
  v45 = [v28 entitlementValueForKey:@"com.apple.developer.usernotifications.time-sensitive" ofClass:objc_opt_class()];
  if (v45 == 0 && !v44)
  {
    v45 = [v11 entitlementValueForKey:@"com.apple.developer.usernotifications.time-sensitive" ofClass:objc_opt_class()];
  }

  v79 = v45;
  bOOLValue = [v45 BOOLValue];
  [(UNCNotificationSourceDescription *)v10 setAllowTimeSensitive:?];
  v46 = [v28 entitlementValueForKey:@"com.apple.developer.usernotifications.communication" ofClass:objc_opt_class()];
  if (v46 == 0 && !v44)
  {
    v46 = [v11 entitlementValueForKey:@"com.apple.developer.usernotifications.communication" ofClass:objc_opt_class()];
  }

  v78 = v46;
  bOOLValue2 = [v46 BOOLValue];
  un_isFirstPartyIdentifier = [v92 un_isFirstPartyIdentifier];
  v48 = *MEMORY[0x1E696E6A0];
  CanDonateIntent = INBundleProxyCanDonateIntent();
  v50 = *MEMORY[0x1E696E688];
  v51 = INBundleProxyCanDonateIntent();
  v52 = *MEMORY[0x1E696E6E8];
  v53 = INBundleProxyCanDonateIntent();
  v90 = [v28 entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];
  if ((v53 & 1) == 0 && (v51 & 1) == 0 && (CanDonateIntent & 1) == 0)
  {
    v53 = [v90 isEqualToString:@"com.apple.internal.suiautomation"] != 0;
    v51 = v53;
    CanDonateIntent = v53;
  }

  [(UNCNotificationSourceDescription *)v10 setAllowCalls:bOOLValue2 & v53];
  [(UNCNotificationSourceDescription *)v10 setAllowIntercom:bOOLValue2 & v51];
  [(UNCNotificationSourceDescription *)v10 setAllowMessages:bOOLValue2 & CanDonateIntent];
  if ((v53 & 1) == 0 && (v51 & 1) == 0 && (CanDonateIntent & 1) == 0 && ((bOOLValue2 ^ 1) & 1) == 0)
  {
    v54 = *MEMORY[0x1E6983350];
    if (os_log_type_enabled(*MEMORY[0x1E6983350], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544386;
      v72 = &stru_1F563BF08;
      v107 = v92;
      if (un_isFirstPartyIdentifier)
      {
        v72 = v50;
      }

      v108 = 2114;
      v109 = @"com.apple.developer.usernotifications.communication";
      v110 = 2114;
      v111 = v52;
      v112 = 2114;
      v113 = v72;
      v114 = 2114;
      v115 = v48;
      _os_log_error_impl(&dword_1DA7A9000, v54, OS_LOG_TYPE_ERROR, "[%{public}@] Error: App has '%{public}@' entitlement but does not support donating [%{public}@,%{public}@,%{public}@]. Communication API features will be denied to app.", buf, 0x34u);
    }
  }

  v55 = *MEMORY[0x1E69DDBE0];
  v56 = objc_opt_class();
  v57 = [v28 objectForInfoDictionaryKey:v55 ofClass:v56 valuesOfClass:objc_opt_class()];
  LOBYTE(v55) = [v57 containsObject:*MEMORY[0x1E69DDBD8]];
  activityTypes = [v93 activityTypes];
  v59 = [activityTypes copy];

  [(UNCNotificationSourceDescription *)v10 setActivityTypes:v59];
  -[UNCNotificationSourceDescription setSupportsContentAvailableRemoteNotifications:](v10, "setSupportsContentAvailableRemoteNotifications:", (v55 | ([v93 isNewsstandApp] & objc_msgSend(v57, "containsObject:", @"newsstand-content"))) & 1);
  applicationType = [v93 applicationType];
  v61 = [applicationType isEqualToString:@"System"];
  if (v61)
  {
    v62 = [v93 objectForInfoDictionaryKey:@"UNUserNotificationCenter" ofClass:objc_opt_class()];
    if (v91)
    {
      v63 = [objc_alloc(MEMORY[0x1E698E640]) initWithURL:v91];
      [(UNCNotificationSourceDescription *)v10 setSystemPropertiesFromDictionary:v62 bundle:v63];
    }

    v73 = v62;
    v76 = v28;
    if (bOOLValue)
    {
      defaultSettings = [(UNCNotificationSourceDescription *)v10 defaultSettings];
      [defaultSettings setSupportsTimeSensitive:1];
    }

    [(UNCNotificationSourceDescription *)v10 setAllowPrivateProperties:1, v73];
    v65 = [v93 objectForInfoDictionaryKey:@"SBAppUsesLocalNotifications" ofClass:0];
    un_safeBoolValue = [v65 un_safeBoolValue];

    v67 = [v93 objectForInfoDictionaryKey:@"BBDataProvider" ofClass:0];
    un_safeBoolValue2 = [v67 un_safeBoolValue];

    v69 = [v93 objectForInfoDictionaryKey:@"UNUserNotificationCenter" ofClass:0];
    LOBYTE(v67) = v69 != 0;

    [(UNCNotificationSourceDescription *)v10 setUseDefaultDataProvider:(v67 | un_safeBoolValue) & ~un_safeBoolValue2 & 1];
    v70 = v91;
    v28 = v76;
  }

  else
  {
    [(UNCNotificationSourceDescription *)v10 setUseDefaultDataProvider:1];
    v70 = v91;
  }

  -[UNCNotificationSourceDescription setAllowAlternateLaunchBundleIdentifiers:](v10, "setAllowAlternateLaunchBundleIdentifiers:", v61 | [v85 isWebApp]);

LABEL_70:

  return v10;
}

+ (id)sourceDescriptionWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self systemSourceDescriptionWithBundleIdentifier:identifierCopy];
  if (!v5)
  {
    v5 = [self applicationSourceDescriptionWithBundleIdentifier:identifierCopy];
  }

  return v5;
}

+ (id)systemSourceDescriptionWithBundleIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"com.apple."])
  {
    [self systemSourceDirectoryURLs];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) URLByAppendingPathComponent:{identifierCopy, v15}];
        systemSourcePathExtension = [self systemSourcePathExtension];
        v12 = [v10 URLByAppendingPathExtension:systemSourcePathExtension];

        v13 = [UNCNotificationSourceDescription systemSourceDescriptionWithBundleURL:v12];

        if (v13)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)systemSourceDescriptionWithBundleURL:(id)l
{
  lCopy = l;
  v4 = [objc_alloc(MEMORY[0x1E698E640]) initWithURL:lCopy];
  bundleIdentifier = [v4 bundleIdentifier];
  v6 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v7 = [bundleIdentifier stringByAppendingPathExtension:@"bundle"];
    lastPathComponent = [lCopy lastPathComponent];
    v9 = [v7 isEqualToString:lastPathComponent];

    if (v9)
    {
      localizedInfoDictionary = [v4 localizedInfoDictionary];
      v11 = [localizedInfoDictionary bs_safeObjectForKey:*MEMORY[0x1E695E120] ofType:objc_opt_class()];
      if (!v11)
      {
        v11 = [localizedInfoDictionary bs_safeObjectForKey:*MEMORY[0x1E695E4F8] ofType:objc_opt_class()];
      }

      infoDictionary = [v4 infoDictionary];
      v13 = [infoDictionary bs_safeObjectForKey:@"UNUserNotificationCenter" ofType:objc_opt_class()];
      v14 = objc_alloc_init(UNCNotificationSourceDescription);
      [(UNCNotificationSourceDescription *)v14 setAllowPrivateProperties:1];
      [(UNCNotificationSourceDescription *)v14 setBundleIdentifier:v6];
      [(UNCNotificationSourceDescription *)v14 setBundleURL:lCopy];
      [(UNCNotificationSourceDescription *)v14 setDisplayName:v11];
      [(UNCNotificationSourceDescription *)v14 setUseDefaultDataProvider:1];
      [(UNCNotificationSourceDescription *)v14 setSystemPropertiesFromDictionary:v13 bundle:v4];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_validEnvironmentFromEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = environmentCopy;
  if (!environmentCopy || (v5 = *MEMORY[0x1E698CF20], [environmentCopy caseInsensitiveCompare:*MEMORY[0x1E698CF20]]) && (v5 = *MEMORY[0x1E698CF18], objc_msgSend(v4, "caseInsensitiveCompare:", *MEMORY[0x1E698CF18])) && (v5 = *MEMORY[0x1E698CF10], objc_msgSend(v4, "caseInsensitiveCompare:", *MEMORY[0x1E698CF10])) && (v5 = *MEMORY[0x1E698CF28], objc_msgSend(v4, "caseInsensitiveCompare:", *MEMORY[0x1E698CF28])))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (void)setSystemPropertiesFromDictionary:(id)dictionary bundle:(id)bundle
{
  bundleCopy = bundle;
  dictionaryCopy = dictionary;
  v47 = [dictionaryCopy bs_safeObjectForKey:@"UNUniversalApplicationIdentifier" ofType:objc_opt_class()];
  v45 = [dictionaryCopy bs_safeObjectForKey:@"UNIntentsBundleIdentifier" ofType:objc_opt_class()];
  v43 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIcons" ofType:objc_opt_class()];
  v46 = [dictionaryCopy bs_safeObjectForKey:@"UNDefaultSettings" ofType:objc_opt_class()];
  v8 = [dictionaryCopy bs_safeObjectForKey:@"UNDefaultCategories" ofType:objc_opt_class()];
  v9 = [UNCNotificationSourceSettingsDescription notificationSourceSettingsDescriptionFromDictionary:v46];
  v40 = [dictionaryCopy bs_safeObjectForKey:@"UNDefaultTopics" ofType:objc_opt_class()];
  v44 = [dictionaryCopy bs_safeObjectForKey:@"UNCustomSettingsBundle" ofType:objc_opt_class()];
  v42 = [dictionaryCopy bs_safeObjectForKey:@"UNCustomSettingsDetailControllerClass" ofType:objc_opt_class()];
  v10 = [dictionaryCopy objectForKey:@"UNSuppressUserAuthorizationPrompt"];
  un_safeBoolValue = [v10 un_safeBoolValue];

  v11 = [dictionaryCopy objectForKey:@"UNSuppressDismissalSync"];
  un_safeBoolValue2 = [v11 un_safeBoolValue];

  v12 = [dictionaryCopy objectForKey:@"UNSuppressIconMask"];
  un_safeBoolValue3 = [v12 un_safeBoolValue];

  v13 = [dictionaryCopy objectForKey:@"UNAllowUnlimitedContentBody"];
  un_safeBoolValue4 = [v13 un_safeBoolValue];

  v14 = [dictionaryCopy objectForKey:@"UNAllowAlternateLaunchBundleIdentifiers"];
  un_safeBoolValue5 = [v14 un_safeBoolValue];

  v15 = [dictionaryCopy objectForKey:@"UNAutomaticallyShowSettings"];
  un_safeBoolValue6 = [v15 un_safeBoolValue];

  v16 = [dictionaryCopy objectForKey:@"UNHideSettings"];
  un_safeBoolValue7 = [v16 un_safeBoolValue];

  v18 = [dictionaryCopy objectForKey:@"UNDaemonShouldReceiveBackgroundResponses"];
  un_safeBoolValue8 = [v18 un_safeBoolValue];

  v19 = [dictionaryCopy objectForKey:@"UNDaemonShouldReceiveNotificationSettingsUpdates"];
  un_safeBoolValue9 = [v19 un_safeBoolValue];

  v20 = [dictionaryCopy objectForKey:@"UNDaemonShouldReceiveApplicationEvents"];
  un_safeBoolValue10 = [v20 un_safeBoolValue];

  v21 = [dictionaryCopy objectForKey:@"UNRequiresTopics"];
  un_safeBoolValue11 = [v21 un_safeBoolValue];

  v22 = [dictionaryCopy objectForKey:@"UNAllowCriticalAlerts"];
  un_safeBoolValue12 = [v22 un_safeBoolValue];

  v23 = [dictionaryCopy objectForKey:@"UNAllowCalls"];
  un_safeBoolValue13 = [v23 un_safeBoolValue];

  v24 = [dictionaryCopy objectForKey:@"UNAllowIntercom"];
  un_safeBoolValue14 = [v24 un_safeBoolValue];

  v25 = [dictionaryCopy objectForKey:@"UNAllowMessages"];
  LOBYTE(v24) = [v25 un_safeBoolValue];

  v26 = [dictionaryCopy objectForKey:@"UNSupportsProvisionalAlerts"];

  un_safeBoolValue15 = [v26 un_safeBoolValue];
  [(UNCNotificationSourceDescription *)self setDefaultCategoriesFromArray:v8 bundle:bundleCopy];
  [(UNCNotificationSourceDescription *)self setDefaultSettings:v9];
  [(UNCNotificationSourceDescription *)self setDefaultTopicsFromArray:v40 bundle:bundleCopy];

  [(UNCNotificationSourceDescription *)self setIconFilesFromDictionary:v43];
  [(UNCNotificationSourceDescription *)self setAutomaticallyShowSettings:un_safeBoolValue6];
  [(UNCNotificationSourceDescription *)self setHideSettings:un_safeBoolValue7];
  [(UNCNotificationSourceDescription *)self setUniversalApplicationIdentifier:v47];
  [(UNCNotificationSourceDescription *)self setIntentsBundleIdentifier:v45];
  [(UNCNotificationSourceDescription *)self setSuppressDismissalSync:un_safeBoolValue2];
  [(UNCNotificationSourceDescription *)self setSuppressIconMask:un_safeBoolValue3];
  [(UNCNotificationSourceDescription *)self setSuppressUserAuthorizationPrompt:un_safeBoolValue];
  [(UNCNotificationSourceDescription *)self setAllowUnlimitedContentBody:un_safeBoolValue4];
  [(UNCNotificationSourceDescription *)self setAllowAlternateLaunchBundleIdentifiers:un_safeBoolValue5];
  [(UNCNotificationSourceDescription *)self setDaemonShouldReceiveBackgroundResponses:un_safeBoolValue8];
  [(UNCNotificationSourceDescription *)self setDaemonShouldReceiveNotificationSettingsUpdates:un_safeBoolValue9];
  [(UNCNotificationSourceDescription *)self setDaemonShouldReceiveApplicationEvents:un_safeBoolValue10];
  [(UNCNotificationSourceDescription *)self setRequiresTopics:un_safeBoolValue11];
  [(UNCNotificationSourceDescription *)self setCustomSettingsBundle:v44];
  [(UNCNotificationSourceDescription *)self setCustomSettingsDetailControllerClass:v42];
  [(UNCNotificationSourceDescription *)self setAllowCriticalAlerts:un_safeBoolValue12];
  [(UNCNotificationSourceDescription *)self setAllowCalls:un_safeBoolValue13];
  [(UNCNotificationSourceDescription *)self setAllowIntercom:([(UNCNotificationSourceDescription *)self allowIntercom]| un_safeBoolValue14) & 1];
  [(UNCNotificationSourceDescription *)self setAllowMessages:([(UNCNotificationSourceDescription *)self allowMessages]| v24) & 1];
  [(UNCNotificationSourceDescription *)self setSupportsProvisionalAlerts:un_safeBoolValue15];
}

- (void)setIconFilesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconApplicationIdentifier" ofType:objc_opt_class()];
  v15 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconUTI" ofType:objc_opt_class()];
  [(UNCNotificationSourceDescription *)self setIconApplicationIdentifier:v23];
  [(UNCNotificationSourceDescription *)self setIconUTI:v15];
  v20 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconCarPlay" ofType:objc_opt_class()];
  v22 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconDefault" ofType:objc_opt_class()];
  v21 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconSettings" ofType:objc_opt_class()];
  v19 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconSettingsSheet" ofType:objc_opt_class()];
  v18 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconSubordinate" ofType:objc_opt_class()];
  v17 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLookSmall" ofType:objc_opt_class()];
  v16 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLookLarge" ofType:objc_opt_class()];
  v5 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchListSmall" ofType:objc_opt_class()];
  v6 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchListLarge" ofType:objc_opt_class()];
  v7 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLook394h" ofType:objc_opt_class()];
  v14 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLook448h" ofType:objc_opt_class()];
  v13 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchList394h" ofType:objc_opt_class()];
  v8 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchList448h" ofType:objc_opt_class()];
  v12 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLook430h" ofType:objc_opt_class()];
  v11 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLook484h" ofType:objc_opt_class()];
  v10 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLook430h" ofType:objc_opt_class()];
  v9 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLook484h" ofType:objc_opt_class()];

  [(UNCNotificationSourceDescription *)self setDefaultIconFile:v22];
  [(UNCNotificationSourceDescription *)self setSettingsIconFile:v21];
  [(UNCNotificationSourceDescription *)self setSettingsSheetIconFile:v19];
  [(UNCNotificationSourceDescription *)self setSubordinateIconFile:v18];
  [(UNCNotificationSourceDescription *)self setCarPlayIconFile:v20];
  [(UNCNotificationSourceDescription *)self setWatchQuickLookSmallIconFile:v17];
  [(UNCNotificationSourceDescription *)self setWatchQuickLookLargeIconFile:v16];
  [(UNCNotificationSourceDescription *)self setWatchListSmallIconFile:v5];
  [(UNCNotificationSourceDescription *)self setWatchListLargeIconFile:v6];
  [(UNCNotificationSourceDescription *)self setWatchQuickLook394hIconFile:v7];
  [(UNCNotificationSourceDescription *)self setWatchQuickLook448hIconFile:v14];
  [(UNCNotificationSourceDescription *)self setWatchList394hIconFile:v13];
  [(UNCNotificationSourceDescription *)self setWatchList448hIconFile:v8];
  [(UNCNotificationSourceDescription *)self setWatchQuickLook430hIconFile:v12];
  [(UNCNotificationSourceDescription *)self setWatchQuickLook484hIconFile:v11];
  [(UNCNotificationSourceDescription *)self setWatchList430hIconFile:v10];
  [(UNCNotificationSourceDescription *)self setWatchList484hIconFile:v9];
}

- (void)setDefaultCategoriesFromArray:(id)array bundle:(id)bundle
{
  arrayCopy = array;
  bundleCopy = bundle;
  if ([arrayCopy count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__UNCNotificationSourceDescription_Factory__setDefaultCategoriesFromArray_bundle___block_invoke;
    v9[3] = &unk_1E85D7528;
    v10 = bundleCopy;
    v8 = [arrayCopy bs_map:v9];
    [(UNCNotificationSourceDescription *)self setDefaultCategories:v8];
  }

  else
  {
    [(UNCNotificationSourceDescription *)self setDefaultCategories:0];
  }
}

UNCNotificationCategoryRecord *__82__UNCNotificationSourceDescription_Factory__setDefaultCategoriesFromArray_bundle___block_invoke(uint64_t a1, void *a2)
{
  v102 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v59 = [v3 bs_safeObjectForKey:@"UNCategoryIdentifier" ofType:objc_opt_class()];
  v4 = [*(a1 + 32) localizedInfoDictionary];
  v56 = [v3 bs_safeObjectForKey:@"UNCategoryHiddenPreviewsBodyPlaceholder" ofType:objc_opt_class()];
  v55 = [v4 bs_safeObjectForKey:v56 ofType:objc_opt_class()];
  [v3 bs_safeObjectForKey:@"UNCategorySummaryFormat" ofType:objc_opt_class()];
  v54 = v90 = v4;
  v53 = [v4 bs_safeObjectForKey:v54 ofType:objc_opt_class()];
  v52 = [v3 bs_safeObjectForKey:@"UNCategoryBackgroundStyle" ofType:objc_opt_class()];
  v51 = [v3 bs_safeObjectForKey:@"UNCategoryListPriority" ofType:objc_opt_class()];
  v50 = [v3 bs_safeObjectForKey:@"UNCategoryIntentIdentifiers" ofType:objc_opt_class()];
  v57 = v3;
  v5 = [v3 bs_safeObjectForKey:@"UNCategoryActions" ofType:objc_opt_class()];
  v65 = [MEMORY[0x1E695DF70] array];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v5;
  v66 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
  if (v66)
  {
    v63 = *v92;
    do
    {
      v6 = 0;
      do
      {
        if (*v92 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v70 = v6;
        v7 = *(*(&v91 + 1) + 8 * v6);
        v8 = [v7 bs_safeObjectForKey:@"UNActionIdentifier" ofType:objc_opt_class()];
        v9 = [v7 bs_safeObjectForKey:@"UNActionTitle" ofType:objc_opt_class()];
        v10 = [v90 bs_safeObjectForKey:v9 ofType:objc_opt_class()];
        v86 = v10;
        if (v9)
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          v12 = *MEMORY[0x1E6983348];
          if (os_log_type_enabled(*MEMORY[0x1E6983348], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v96 = v59;
            v97 = 2114;
            v98 = v8;
            v99 = 2114;
            v100 = v9;
            _os_log_error_impl(&dword_1DA7A9000, v12, OS_LOG_TYPE_ERROR, "Error: Category (%{public}@) has an action (%{public}@) whose title key (%{public}@) is mapped to a missing localized string.", buf, 0x20u);
          }
        }

        v84 = [v7 bs_safeObjectForKey:@"UNActionTextInputButtonTitle" ofType:objc_opt_class()];
        v82 = [v90 bs_safeObjectForKey:v84 ofType:objc_opt_class()];
        v80 = [v7 bs_safeObjectForKey:@"UNActionTextInputPlaceholder" ofType:objc_opt_class()];
        v78 = [v90 bs_safeObjectForKey:v80 ofType:objc_opt_class()];
        v76 = [v7 bs_safeObjectForKey:@"UNActionSystemIconName" ofType:objc_opt_class()];
        v74 = [v7 bs_safeObjectForKey:@"UNActionTemplateIconName" ofType:objc_opt_class()];
        v13 = [v7 bs_safeObjectForKey:@"UNActionURL" ofType:objc_opt_class()];
        v72 = v13;
        if (v13)
        {
          v14 = [MEMORY[0x1E695DFF8] URLWithString:v13];
        }

        else
        {
          v14 = 0;
        }

        v15 = [v7 bs_safeObjectForKey:@"UNActionAuthenticationRequired" ofType:objc_opt_class()];
        v68 = [v15 un_safeBoolValue];

        v16 = [v7 bs_safeObjectForKey:@"UNActionDestructive" ofType:objc_opt_class()];
        v17 = [v16 un_safeBoolValue];

        v18 = [v7 objectForKey:@"UNActionForeground"];
        if (v18)
        {
          v19 = [v7 bs_safeObjectForKey:@"UNActionForeground" ofType:objc_opt_class()];
          v20 = [v19 un_safeBoolValue];
        }

        else
        {
          v20 = v14 != 0;
        }

        v21 = [v7 bs_safeObjectForKey:@"UNActionPreventNotificationDismissal" ofType:objc_opt_class()];
        v22 = [v21 un_safeBoolValue];

        v23 = [v7 bs_safeObjectForKey:@"UNActionTextInput" ofType:objc_opt_class()];
        LODWORD(v21) = [v23 un_safeBoolValue];

        v24 = objc_alloc_init(UNCNotificationActionRecord);
        [(UNCNotificationActionRecord *)v24 setIdentifier:v8];
        [(UNCNotificationActionRecord *)v24 setTitle:v86];
        [(UNCNotificationActionRecord *)v24 setTextInputButtonTitle:v82];
        [(UNCNotificationActionRecord *)v24 setTextInputPlaceholder:v78];
        [(UNCNotificationActionRecord *)v24 setUrl:v14];
        [(UNCNotificationActionRecord *)v24 setAuthenticationRequired:v68];
        [(UNCNotificationActionRecord *)v24 setDestructive:v17];
        [(UNCNotificationActionRecord *)v24 setForeground:v20];
        [(UNCNotificationActionRecord *)v24 setShouldPreventNotificationDismiss:v22];
        if (v21)
        {
          v25 = @"TextInput";
        }

        else
        {
          v25 = @"Default";
        }

        [(UNCNotificationActionRecord *)v24 setActionType:v25];
        if (v76)
        {
          v26 = v76;
        }

        else
        {
          v26 = v74;
        }

        [(UNCNotificationActionRecord *)v24 setHasSystemIcon:v76 != 0];
        [(UNCNotificationActionRecord *)v24 setIconImageName:v26];
        [v65 addObject:v24];

        v6 = v70 + 1;
      }

      while (v66 != v70 + 1);
      v66 = [obj countByEnumeratingWithState:&v91 objects:v101 count:16];
    }

    while (v66);
  }

  v27 = [v57 objectForKey:@"UNCategoryAllowInCarPlay"];
  v89 = [v27 un_safeBoolValue];

  v28 = [v57 objectForKey:@"UNCategoryCustomDismissAction"];
  v88 = [v28 un_safeBoolValue];

  v29 = [v57 objectForKey:@"UNCategoryFollowActivityAction"];
  v87 = [v29 un_safeBoolValue];

  v30 = [v57 objectForKey:@"UNCategoryCustomSilenceAction"];
  v85 = [v30 un_safeBoolValue];

  v31 = [v57 objectForKey:@"UNCategoryHiddenPreviewsShowSubtitle"];
  v83 = [v31 un_safeBoolValue];

  v32 = [v57 objectForKey:@"UNCategoryHiddenPreviewsShowTitle"];
  v81 = [v32 un_safeBoolValue];

  v33 = [v57 objectForKey:@"UNCategoryPresentFullScreenAlertOverList"];
  v79 = [v33 un_safeBoolValue];

  v34 = [v57 objectForKey:@"UNCategoryPreventAutomaticLock"];
  v77 = [v34 un_safeBoolValue];

  v35 = [v57 objectForKey:@"UNCategoryPreventAutomaticRemovalFromRecents"];
  v75 = [v35 un_safeBoolValue];

  v36 = [v57 objectForKey:@"UNCategoryPreventDismissWhenClosed"];
  v73 = [v36 un_safeBoolValue];

  v37 = [v57 objectForKey:@"UNCategoryRevealAdditionalContentWhenPresented"];
  v71 = [v37 un_safeBoolValue];

  v38 = [v57 objectForKey:@"UNCategoryAllowActionsInCarPlay"];
  v69 = [v38 un_safeBoolValue];

  v39 = [v57 objectForKey:@"UNCategoryAllowPersistentBannersInCarPlay"];
  v67 = [v39 un_safeBoolValue];

  v40 = [v57 objectForKey:@"UNCategoryPlayMediaWhenRaised"];
  v64 = [v40 un_safeBoolValue];

  v41 = [v57 objectForKey:@"UNCategoryPreventClearFromList"];
  v62 = [v41 un_safeBoolValue];

  v42 = [v57 objectForKey:@"UNCategoryAlwaysDisplayNotificationsIndicator"];
  v61 = [v42 un_safeBoolValue];

  v43 = [v57 objectForKey:@"UNCategorySuppressDelayForForwardedNotifications"];
  v58 = [v43 un_safeBoolValue];

  v44 = [v57 objectForKey:@"UNCategorySuppressDismissActionInCarPlay"];
  v49 = [v44 un_safeBoolValue];

  v45 = [v57 objectForKey:@"UNCategorySuppressPresentationInAmbient"];
  v46 = [v45 un_safeBoolValue];

  v47 = objc_alloc_init(UNCNotificationCategoryRecord);
  [(UNCNotificationCategoryRecord *)v47 setIdentifier:v59];
  [(UNCNotificationCategoryRecord *)v47 setPrivateBody:v55];
  [(UNCNotificationCategoryRecord *)v47 setSummaryFormat:v53];
  [(UNCNotificationCategoryRecord *)v47 setBackgroundStyle:v52];
  [(UNCNotificationCategoryRecord *)v47 setListPriority:v51];
  [(UNCNotificationCategoryRecord *)v47 setActions:v65];
  [(UNCNotificationCategoryRecord *)v47 setShouldAllowInCarPlay:v89];
  [(UNCNotificationCategoryRecord *)v47 setHasCustomDismissAction:v88];
  [(UNCNotificationCategoryRecord *)v47 setHasFollowActivityAction:v87];
  [(UNCNotificationCategoryRecord *)v47 setHasCustomSilenceAction:v85];
  [(UNCNotificationCategoryRecord *)v47 setIntentIdentifiers:v50];
  [(UNCNotificationCategoryRecord *)v47 setPrivacyOptionShowSubtitle:v83];
  [(UNCNotificationCategoryRecord *)v47 setPrivacyOptionShowTitle:v81];
  [(UNCNotificationCategoryRecord *)v47 setPresentFullScreenAlertOverList:v79];
  [(UNCNotificationCategoryRecord *)v47 setPreventAutomaticLock:v77];
  [(UNCNotificationCategoryRecord *)v47 setPreventAutomaticRemovalFromRecent:v75];
  [(UNCNotificationCategoryRecord *)v47 setPreventDismissWhenClosed:v73];
  [(UNCNotificationCategoryRecord *)v47 setRevealAdditionalContentWhenPresented:v71];
  [(UNCNotificationCategoryRecord *)v47 setShouldAllowActionsInCarPlay:v69];
  [(UNCNotificationCategoryRecord *)v47 setShouldAllowPersistentBannersInCarPlay:v67];
  [(UNCNotificationCategoryRecord *)v47 setPlayMediaWhenRaised:v64];
  [(UNCNotificationCategoryRecord *)v47 setPreventClearFromList:v62];
  [(UNCNotificationCategoryRecord *)v47 setAlwaysDisplayNotificationsIndicator:v61];
  [(UNCNotificationCategoryRecord *)v47 setSuppressDelayForForwardedNotifications:v58];
  [(UNCNotificationCategoryRecord *)v47 setSuppressDismissActionInCarPlay:v49];
  [(UNCNotificationCategoryRecord *)v47 setSuppressPresentationInAmbient:v46];

  return v47;
}

- (void)setDefaultTopicsFromArray:(id)array bundle:(id)bundle
{
  arrayCopy = array;
  bundleCopy = bundle;
  if ([arrayCopy count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__UNCNotificationSourceDescription_Factory__setDefaultTopicsFromArray_bundle___block_invoke;
    v9[3] = &unk_1E85D7528;
    v10 = bundleCopy;
    v8 = [arrayCopy bs_map:v9];
    [(UNCNotificationSourceDescription *)self setDefaultTopics:v8];
  }

  else
  {
    [(UNCNotificationSourceDescription *)self setDefaultTopics:0];
  }
}

UNCNotificationTopicRecord *__78__UNCNotificationSourceDescription_Factory__setDefaultTopicsFromArray_bundle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bs_safeObjectForKey:@"UNTopicIdentifier" ofType:objc_opt_class()];
  v5 = [v3 bs_safeObjectForKey:@"UNTopicDisplayName" ofType:objc_opt_class()];
  v6 = [*(a1 + 32) localizedInfoDictionary];
  v7 = [v6 bs_safeObjectForKey:v5 ofType:objc_opt_class()];
  v8 = [v3 bs_safeObjectForKey:@"UNTopicDefaultSettings" ofType:objc_opt_class()];

  v9 = [UNCNotificationSourceSettingsDescription notificationSourceSettingsDescriptionFromDictionary:v8];
  v10 = objc_alloc_init(UNCNotificationTopicRecord);
  [(UNCNotificationTopicRecord *)v10 setIdentifier:v4];
  [(UNCNotificationTopicRecord *)v10 setDisplayName:v7];
  -[UNCNotificationTopicRecord setSupportsAlerts:](v10, "setSupportsAlerts:", [v9 supportsAlerts]);
  -[UNCNotificationTopicRecord setSupportsBadges:](v10, "setSupportsBadges:", [v9 supportsBadges]);
  -[UNCNotificationTopicRecord setSupportsSounds:](v10, "setSupportsSounds:", [v9 supportsSounds]);
  -[UNCNotificationTopicRecord setSupportsLockScreen:](v10, "setSupportsLockScreen:", [v9 supportsLockScreen]);
  -[UNCNotificationTopicRecord setSupportsNotificationCenter:](v10, "setSupportsNotificationCenter:", [v9 supportsNotificationCenter]);
  -[UNCNotificationTopicRecord setSupportsCarPlay:](v10, "setSupportsCarPlay:", [v9 supportsCarPlay]);
  -[UNCNotificationTopicRecord setEnablesAlerts:](v10, "setEnablesAlerts:", [v9 supportsAlerts]);
  -[UNCNotificationTopicRecord setEnablesBadges:](v10, "setEnablesBadges:", [v9 supportsBadges]);
  -[UNCNotificationTopicRecord setEnablesSounds:](v10, "setEnablesSounds:", [v9 supportsSounds]);
  -[UNCNotificationTopicRecord setEnablesLockScreen:](v10, "setEnablesLockScreen:", [v9 supportsLockScreen]);
  -[UNCNotificationTopicRecord setEnablesNotificationCenter:](v10, "setEnablesNotificationCenter:", [v9 supportsNotificationCenter]);
  -[UNCNotificationTopicRecord setEnablesCarPlay:](v10, "setEnablesCarPlay:", [v9 supportsCarPlay]);
  -[UNCNotificationTopicRecord setModalAlertStyle:](v10, "setModalAlertStyle:", [v9 modalAlertStyle]);
  -[UNCNotificationTopicRecord setSupportsTimeSensitive:](v10, "setSupportsTimeSensitive:", [v9 supportsTimeSensitive]);

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  bundleIdentifier = [(UNCNotificationSourceDescription *)self bundleIdentifier];
  v290[0] = MEMORY[0x1E69E9820];
  v290[1] = 3221225472;
  v290[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke;
  v290[3] = &unk_1E85D7AD0;
  v7 = equalCopy;
  v291 = v7;
  v8 = [v5 appendString:bundleIdentifier counterpart:v290];

  intentsBundleIdentifier = [(UNCNotificationSourceDescription *)self intentsBundleIdentifier];
  v288[0] = MEMORY[0x1E69E9820];
  v288[1] = 3221225472;
  v288[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_2;
  v288[3] = &unk_1E85D7AD0;
  v10 = v7;
  v289 = v10;
  v11 = [v5 appendString:intentsBundleIdentifier counterpart:v288];

  universalApplicationIdentifier = [(UNCNotificationSourceDescription *)self universalApplicationIdentifier];
  v286[0] = MEMORY[0x1E69E9820];
  v286[1] = 3221225472;
  v286[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_3;
  v286[3] = &unk_1E85D7AD0;
  v13 = v10;
  v287 = v13;
  v14 = [v5 appendString:universalApplicationIdentifier counterpart:v286];

  displayName = [(UNCNotificationSourceDescription *)self displayName];
  v284[0] = MEMORY[0x1E69E9820];
  v284[1] = 3221225472;
  v284[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_4;
  v284[3] = &unk_1E85D7AD0;
  v16 = v13;
  v285 = v16;
  v17 = [v5 appendString:displayName counterpart:v284];

  pushEnvironment = [(UNCNotificationSourceDescription *)self pushEnvironment];
  v282[0] = MEMORY[0x1E69E9820];
  v282[1] = 3221225472;
  v282[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_5;
  v282[3] = &unk_1E85D7AD0;
  v19 = v16;
  v283 = v19;
  v20 = [v5 appendString:pushEnvironment counterpart:v282];

  defaultIconFile = [(UNCNotificationSourceDescription *)self defaultIconFile];
  v280[0] = MEMORY[0x1E69E9820];
  v280[1] = 3221225472;
  v280[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_6;
  v280[3] = &unk_1E85D7AD0;
  v22 = v19;
  v281 = v22;
  v23 = [v5 appendString:defaultIconFile counterpart:v280];

  subordinateIconFile = [(UNCNotificationSourceDescription *)self subordinateIconFile];
  v278[0] = MEMORY[0x1E69E9820];
  v278[1] = 3221225472;
  v278[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_7;
  v278[3] = &unk_1E85D7AD0;
  v25 = v22;
  v279 = v25;
  v26 = [v5 appendString:subordinateIconFile counterpart:v278];

  settingsIconFile = [(UNCNotificationSourceDescription *)self settingsIconFile];
  v276[0] = MEMORY[0x1E69E9820];
  v276[1] = 3221225472;
  v276[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_8;
  v276[3] = &unk_1E85D7AD0;
  v28 = v25;
  v277 = v28;
  v29 = [v5 appendString:settingsIconFile counterpart:v276];

  settingsSheetIconFile = [(UNCNotificationSourceDescription *)self settingsSheetIconFile];
  v274[0] = MEMORY[0x1E69E9820];
  v274[1] = 3221225472;
  v274[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_9;
  v274[3] = &unk_1E85D7AD0;
  v31 = v28;
  v275 = v31;
  v32 = [v5 appendString:settingsSheetIconFile counterpart:v274];

  carPlayIconFile = [(UNCNotificationSourceDescription *)self carPlayIconFile];
  v272[0] = MEMORY[0x1E69E9820];
  v272[1] = 3221225472;
  v272[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_10;
  v272[3] = &unk_1E85D7AD0;
  v34 = v31;
  v273 = v34;
  v35 = [v5 appendString:carPlayIconFile counterpart:v272];

  watchQuickLookSmallIconFile = [(UNCNotificationSourceDescription *)self watchQuickLookSmallIconFile];
  v270[0] = MEMORY[0x1E69E9820];
  v270[1] = 3221225472;
  v270[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_11;
  v270[3] = &unk_1E85D7AD0;
  v37 = v34;
  v271 = v37;
  v38 = [v5 appendString:watchQuickLookSmallIconFile counterpart:v270];

  watchQuickLookLargeIconFile = [(UNCNotificationSourceDescription *)self watchQuickLookLargeIconFile];
  v268[0] = MEMORY[0x1E69E9820];
  v268[1] = 3221225472;
  v268[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_12;
  v268[3] = &unk_1E85D7AD0;
  v40 = v37;
  v269 = v40;
  v41 = [v5 appendString:watchQuickLookLargeIconFile counterpart:v268];

  watchListSmallIconFile = [(UNCNotificationSourceDescription *)self watchListSmallIconFile];
  v266[0] = MEMORY[0x1E69E9820];
  v266[1] = 3221225472;
  v266[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_13;
  v266[3] = &unk_1E85D7AD0;
  v43 = v40;
  v267 = v43;
  v44 = [v5 appendString:watchListSmallIconFile counterpart:v266];

  watchListLargeIconFile = [(UNCNotificationSourceDescription *)self watchListLargeIconFile];
  v264[0] = MEMORY[0x1E69E9820];
  v264[1] = 3221225472;
  v264[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_14;
  v264[3] = &unk_1E85D7AD0;
  v46 = v43;
  v265 = v46;
  v47 = [v5 appendString:watchListLargeIconFile counterpart:v264];

  watchQuickLook394hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook394hIconFile];
  v262[0] = MEMORY[0x1E69E9820];
  v262[1] = 3221225472;
  v262[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_15;
  v262[3] = &unk_1E85D7AD0;
  v49 = v46;
  v263 = v49;
  v50 = [v5 appendString:watchQuickLook394hIconFile counterpart:v262];

  watchQuickLook448hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook448hIconFile];
  v260[0] = MEMORY[0x1E69E9820];
  v260[1] = 3221225472;
  v260[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_16;
  v260[3] = &unk_1E85D7AD0;
  v52 = v49;
  v261 = v52;
  v53 = [v5 appendString:watchQuickLook448hIconFile counterpart:v260];

  watchList394hIconFile = [(UNCNotificationSourceDescription *)self watchList394hIconFile];
  v258[0] = MEMORY[0x1E69E9820];
  v258[1] = 3221225472;
  v258[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_17;
  v258[3] = &unk_1E85D7AD0;
  v55 = v52;
  v259 = v55;
  v56 = [v5 appendString:watchList394hIconFile counterpart:v258];

  watchList448hIconFile = [(UNCNotificationSourceDescription *)self watchList448hIconFile];
  v256[0] = MEMORY[0x1E69E9820];
  v256[1] = 3221225472;
  v256[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_18;
  v256[3] = &unk_1E85D7AD0;
  v58 = v55;
  v257 = v58;
  v59 = [v5 appendString:watchList448hIconFile counterpart:v256];

  watchQuickLook430hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook430hIconFile];
  v254[0] = MEMORY[0x1E69E9820];
  v254[1] = 3221225472;
  v254[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_19;
  v254[3] = &unk_1E85D7AD0;
  v61 = v58;
  v255 = v61;
  v62 = [v5 appendString:watchQuickLook430hIconFile counterpart:v254];

  watchQuickLook484hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook484hIconFile];
  v252[0] = MEMORY[0x1E69E9820];
  v252[1] = 3221225472;
  v252[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_20;
  v252[3] = &unk_1E85D7AD0;
  v64 = v61;
  v253 = v64;
  v65 = [v5 appendString:watchQuickLook484hIconFile counterpart:v252];

  watchList430hIconFile = [(UNCNotificationSourceDescription *)self watchList430hIconFile];
  v250[0] = MEMORY[0x1E69E9820];
  v250[1] = 3221225472;
  v250[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_21;
  v250[3] = &unk_1E85D7AD0;
  v67 = v64;
  v251 = v67;
  v68 = [v5 appendString:watchList430hIconFile counterpart:v250];

  watchList484hIconFile = [(UNCNotificationSourceDescription *)self watchList484hIconFile];
  v248[0] = MEMORY[0x1E69E9820];
  v248[1] = 3221225472;
  v248[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_22;
  v248[3] = &unk_1E85D7AD0;
  v70 = v67;
  v249 = v70;
  v71 = [v5 appendString:watchList484hIconFile counterpart:v248];

  customSettingsBundle = [(UNCNotificationSourceDescription *)self customSettingsBundle];
  v246[0] = MEMORY[0x1E69E9820];
  v246[1] = 3221225472;
  v246[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_23;
  v246[3] = &unk_1E85D7AD0;
  v73 = v70;
  v247 = v73;
  v74 = [v5 appendString:customSettingsBundle counterpart:v246];

  customSettingsDetailControllerClass = [(UNCNotificationSourceDescription *)self customSettingsDetailControllerClass];
  v244[0] = MEMORY[0x1E69E9820];
  v244[1] = 3221225472;
  v244[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_24;
  v244[3] = &unk_1E85D7AD0;
  v76 = v73;
  v245 = v76;
  v77 = [v5 appendString:customSettingsDetailControllerClass counterpart:v244];

  bundleURL = [(UNCNotificationSourceDescription *)self bundleURL];
  v242[0] = MEMORY[0x1E69E9820];
  v242[1] = 3221225472;
  v242[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_25;
  v242[3] = &unk_1E85D7AF8;
  v79 = v76;
  v243 = v79;
  v80 = [v5 appendObject:bundleURL counterpart:v242];

  dataContainerURL = [(UNCNotificationSourceDescription *)self dataContainerURL];
  v240[0] = MEMORY[0x1E69E9820];
  v240[1] = 3221225472;
  v240[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_26;
  v240[3] = &unk_1E85D7AF8;
  v82 = v79;
  v241 = v82;
  v83 = [v5 appendObject:dataContainerURL counterpart:v240];

  groupContainerURLS = [(UNCNotificationSourceDescription *)self groupContainerURLS];
  v238[0] = MEMORY[0x1E69E9820];
  v238[1] = 3221225472;
  v238[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_27;
  v238[3] = &unk_1E85D7AF8;
  v85 = v82;
  v239 = v85;
  v86 = [v5 appendObject:groupContainerURLS counterpart:v238];

  defaultCategories = [(UNCNotificationSourceDescription *)self defaultCategories];
  v236[0] = MEMORY[0x1E69E9820];
  v236[1] = 3221225472;
  v236[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_28;
  v236[3] = &unk_1E85D7AF8;
  v88 = v85;
  v237 = v88;
  v89 = [v5 appendObject:defaultCategories counterpart:v236];

  defaultSettings = [(UNCNotificationSourceDescription *)self defaultSettings];
  v234[0] = MEMORY[0x1E69E9820];
  v234[1] = 3221225472;
  v234[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_29;
  v234[3] = &unk_1E85D7AF8;
  v91 = v88;
  v235 = v91;
  v92 = [v5 appendObject:defaultSettings counterpart:v234];

  defaultTopics = [(UNCNotificationSourceDescription *)self defaultTopics];
  v232[0] = MEMORY[0x1E69E9820];
  v232[1] = 3221225472;
  v232[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_30;
  v232[3] = &unk_1E85D7AF8;
  v94 = v91;
  v233 = v94;
  v95 = [v5 appendObject:defaultTopics counterpart:v232];

  activityTypes = [(UNCNotificationSourceDescription *)self activityTypes];
  v230[0] = MEMORY[0x1E69E9820];
  v230[1] = 3221225472;
  v230[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_31;
  v230[3] = &unk_1E85D7AF8;
  v97 = v94;
  v231 = v97;
  v98 = [v5 appendObject:activityTypes counterpart:v230];

  allowCriticalAlerts = [(UNCNotificationSourceDescription *)self allowCriticalAlerts];
  v228[0] = MEMORY[0x1E69E9820];
  v228[1] = 3221225472;
  v228[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_32;
  v228[3] = &unk_1E85D7AA8;
  v100 = v97;
  v229 = v100;
  v101 = [v5 appendBool:allowCriticalAlerts counterpart:v228];
  allowTimeSensitive = [(UNCNotificationSourceDescription *)self allowTimeSensitive];
  v226[0] = MEMORY[0x1E69E9820];
  v226[1] = 3221225472;
  v226[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_33;
  v226[3] = &unk_1E85D7AA8;
  v103 = v100;
  v227 = v103;
  v104 = [v5 appendBool:allowTimeSensitive counterpart:v226];
  allowTimeSensitive2 = [(UNCNotificationSourceDescription *)self allowTimeSensitive];
  v224[0] = MEMORY[0x1E69E9820];
  v224[1] = 3221225472;
  v224[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_34;
  v224[3] = &unk_1E85D7AA8;
  v106 = v103;
  v225 = v106;
  v107 = [v5 appendBool:allowTimeSensitive2 counterpart:v224];
  allowCalls = [(UNCNotificationSourceDescription *)self allowCalls];
  v222[0] = MEMORY[0x1E69E9820];
  v222[1] = 3221225472;
  v222[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_35;
  v222[3] = &unk_1E85D7AA8;
  v109 = v106;
  v223 = v109;
  v110 = [v5 appendBool:allowCalls counterpart:v222];
  allowIntercom = [(UNCNotificationSourceDescription *)self allowIntercom];
  v220[0] = MEMORY[0x1E69E9820];
  v220[1] = 3221225472;
  v220[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_36;
  v220[3] = &unk_1E85D7AA8;
  v112 = v109;
  v221 = v112;
  v113 = [v5 appendBool:allowIntercom counterpart:v220];
  allowMessages = [(UNCNotificationSourceDescription *)self allowMessages];
  v218[0] = MEMORY[0x1E69E9820];
  v218[1] = 3221225472;
  v218[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_37;
  v218[3] = &unk_1E85D7AA8;
  v115 = v112;
  v219 = v115;
  v116 = [v5 appendBool:allowMessages counterpart:v218];
  allowPrivateProperties = [(UNCNotificationSourceDescription *)self allowPrivateProperties];
  v216[0] = MEMORY[0x1E69E9820];
  v216[1] = 3221225472;
  v216[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_38;
  v216[3] = &unk_1E85D7AA8;
  v118 = v115;
  v217 = v118;
  v119 = [v5 appendBool:allowPrivateProperties counterpart:v216];
  allowUnlimitedContentBody = [(UNCNotificationSourceDescription *)self allowUnlimitedContentBody];
  v214[0] = MEMORY[0x1E69E9820];
  v214[1] = 3221225472;
  v214[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_39;
  v214[3] = &unk_1E85D7AA8;
  v121 = v118;
  v215 = v121;
  v122 = [v5 appendBool:allowUnlimitedContentBody counterpart:v214];
  allowAlternateLaunchBundleIdentifiers = [(UNCNotificationSourceDescription *)self allowAlternateLaunchBundleIdentifiers];
  v212[0] = MEMORY[0x1E69E9820];
  v212[1] = 3221225472;
  v212[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_40;
  v212[3] = &unk_1E85D7AA8;
  v124 = v121;
  v213 = v124;
  v125 = [v5 appendBool:allowAlternateLaunchBundleIdentifiers counterpart:v212];
  allowServiceExtensionFiltering = [(UNCNotificationSourceDescription *)self allowServiceExtensionFiltering];
  v210[0] = MEMORY[0x1E69E9820];
  v210[1] = 3221225472;
  v210[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_41;
  v210[3] = &unk_1E85D7AA8;
  v127 = v124;
  v211 = v127;
  v128 = [v5 appendBool:allowServiceExtensionFiltering counterpart:v210];
  hideSettings = [(UNCNotificationSourceDescription *)self hideSettings];
  v208[0] = MEMORY[0x1E69E9820];
  v208[1] = 3221225472;
  v208[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_42;
  v208[3] = &unk_1E85D7AA8;
  v130 = v127;
  v209 = v130;
  v131 = [v5 appendBool:hideSettings counterpart:v208];
  automaticallyShowSettings = [(UNCNotificationSourceDescription *)self automaticallyShowSettings];
  v206[0] = MEMORY[0x1E69E9820];
  v206[1] = 3221225472;
  v206[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_43;
  v206[3] = &unk_1E85D7AA8;
  v133 = v130;
  v207 = v133;
  v134 = [v5 appendBool:automaticallyShowSettings counterpart:v206];
  suppressDismissalSync = [(UNCNotificationSourceDescription *)self suppressDismissalSync];
  v204[0] = MEMORY[0x1E69E9820];
  v204[1] = 3221225472;
  v204[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_44;
  v204[3] = &unk_1E85D7AA8;
  v136 = v133;
  v205 = v136;
  v137 = [v5 appendBool:suppressDismissalSync counterpart:v204];
  suppressIconMask = [(UNCNotificationSourceDescription *)self suppressIconMask];
  v202[0] = MEMORY[0x1E69E9820];
  v202[1] = 3221225472;
  v202[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_45;
  v202[3] = &unk_1E85D7AA8;
  v139 = v136;
  v203 = v139;
  v140 = [v5 appendBool:suppressIconMask counterpart:v202];
  suppressUserAuthorizationPrompt = [(UNCNotificationSourceDescription *)self suppressUserAuthorizationPrompt];
  v200[0] = MEMORY[0x1E69E9820];
  v200[1] = 3221225472;
  v200[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_46;
  v200[3] = &unk_1E85D7AA8;
  v142 = v139;
  v201 = v142;
  v143 = [v5 appendBool:suppressUserAuthorizationPrompt counterpart:v200];
  useDefaultDataProvider = [(UNCNotificationSourceDescription *)self useDefaultDataProvider];
  v198[0] = MEMORY[0x1E69E9820];
  v198[1] = 3221225472;
  v198[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_47;
  v198[3] = &unk_1E85D7AA8;
  v145 = v142;
  v199 = v145;
  v146 = [v5 appendBool:useDefaultDataProvider counterpart:v198];
  usesCloudKit = [(UNCNotificationSourceDescription *)self usesCloudKit];
  v196[0] = MEMORY[0x1E69E9820];
  v196[1] = 3221225472;
  v196[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_48;
  v196[3] = &unk_1E85D7AA8;
  v148 = v145;
  v197 = v148;
  v149 = [v5 appendBool:usesCloudKit counterpart:v196];
  requiresTopics = [(UNCNotificationSourceDescription *)self requiresTopics];
  v194[0] = MEMORY[0x1E69E9820];
  v194[1] = 3221225472;
  v194[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_49;
  v194[3] = &unk_1E85D7AA8;
  v151 = v148;
  v195 = v151;
  v152 = [v5 appendBool:requiresTopics counterpart:v194];
  supportsContentAvailableRemoteNotifications = [(UNCNotificationSourceDescription *)self supportsContentAvailableRemoteNotifications];
  v192[0] = MEMORY[0x1E69E9820];
  v192[1] = 3221225472;
  v192[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_50;
  v192[3] = &unk_1E85D7AA8;
  v154 = v151;
  v193 = v154;
  v155 = [v5 appendBool:supportsContentAvailableRemoteNotifications counterpart:v192];
  isRestricted = [(UNCNotificationSourceDescription *)self isRestricted];
  v190[0] = MEMORY[0x1E69E9820];
  v190[1] = 3221225472;
  v190[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_51;
  v190[3] = &unk_1E85D7AA8;
  v157 = v154;
  v191 = v157;
  v158 = [v5 appendBool:isRestricted counterpart:v190];
  daemonShouldReceiveBackgroundResponses = [(UNCNotificationSourceDescription *)self daemonShouldReceiveBackgroundResponses];
  v188[0] = MEMORY[0x1E69E9820];
  v188[1] = 3221225472;
  v188[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_52;
  v188[3] = &unk_1E85D7AA8;
  v160 = v157;
  v189 = v160;
  v161 = [v5 appendBool:daemonShouldReceiveBackgroundResponses counterpart:v188];
  daemonShouldReceiveNotificationSettingsUpdates = [(UNCNotificationSourceDescription *)self daemonShouldReceiveNotificationSettingsUpdates];
  v186[0] = MEMORY[0x1E69E9820];
  v186[1] = 3221225472;
  v186[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_53;
  v186[3] = &unk_1E85D7AA8;
  v163 = v160;
  v187 = v163;
  v164 = [v5 appendBool:daemonShouldReceiveNotificationSettingsUpdates counterpart:v186];
  daemonShouldReceiveApplicationEvents = [(UNCNotificationSourceDescription *)self daemonShouldReceiveApplicationEvents];
  v184[0] = MEMORY[0x1E69E9820];
  v184[1] = 3221225472;
  v184[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_54;
  v184[3] = &unk_1E85D7AA8;
  v166 = v163;
  v185 = v166;
  v167 = [v5 appendBool:daemonShouldReceiveApplicationEvents counterpart:v184];
  isAppClip = [(UNCNotificationSourceDescription *)self isAppClip];
  v182[0] = MEMORY[0x1E69E9820];
  v182[1] = 3221225472;
  v182[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_55;
  v182[3] = &unk_1E85D7AA8;
  v169 = v166;
  v183 = v169;
  v170 = [v5 appendBool:isAppClip counterpart:v182];
  wantsEphemeralNotifications = [(UNCNotificationSourceDescription *)self wantsEphemeralNotifications];
  v180[0] = MEMORY[0x1E69E9820];
  v180[1] = 3221225472;
  v180[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_56;
  v180[3] = &unk_1E85D7AA8;
  v172 = v169;
  v181 = v172;
  v173 = [v5 appendBool:wantsEphemeralNotifications counterpart:v180];
  supportsProvisionalAlerts = [(UNCNotificationSourceDescription *)self supportsProvisionalAlerts];
  v178[0] = MEMORY[0x1E69E9820];
  v178[1] = 3221225472;
  v178[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_57;
  v178[3] = &unk_1E85D7AA8;
  v179 = v172;
  v175 = v172;
  v176 = [v5 appendBool:supportsProvisionalAlerts counterpart:v178];
  LOBYTE(v172) = [v5 isEqual];

  return v172;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  bundleIdentifier = [(UNCNotificationSourceDescription *)self bundleIdentifier];
  v5 = [builder appendString:bundleIdentifier];

  intentsBundleIdentifier = [(UNCNotificationSourceDescription *)self intentsBundleIdentifier];
  v7 = [builder appendString:intentsBundleIdentifier];

  universalApplicationIdentifier = [(UNCNotificationSourceDescription *)self universalApplicationIdentifier];
  v9 = [builder appendString:universalApplicationIdentifier];

  displayName = [(UNCNotificationSourceDescription *)self displayName];
  v11 = [builder appendString:displayName];

  pushEnvironment = [(UNCNotificationSourceDescription *)self pushEnvironment];
  v13 = [builder appendString:pushEnvironment];

  defaultIconFile = [(UNCNotificationSourceDescription *)self defaultIconFile];
  v15 = [builder appendString:defaultIconFile];

  subordinateIconFile = [(UNCNotificationSourceDescription *)self subordinateIconFile];
  v17 = [builder appendString:subordinateIconFile];

  settingsIconFile = [(UNCNotificationSourceDescription *)self settingsIconFile];
  v19 = [builder appendString:settingsIconFile];

  settingsSheetIconFile = [(UNCNotificationSourceDescription *)self settingsSheetIconFile];
  v21 = [builder appendString:settingsSheetIconFile];

  carPlayIconFile = [(UNCNotificationSourceDescription *)self carPlayIconFile];
  v23 = [builder appendString:carPlayIconFile];

  watchQuickLookSmallIconFile = [(UNCNotificationSourceDescription *)self watchQuickLookSmallIconFile];
  v25 = [builder appendString:watchQuickLookSmallIconFile];

  watchQuickLookLargeIconFile = [(UNCNotificationSourceDescription *)self watchQuickLookLargeIconFile];
  v27 = [builder appendString:watchQuickLookLargeIconFile];

  watchListSmallIconFile = [(UNCNotificationSourceDescription *)self watchListSmallIconFile];
  v29 = [builder appendString:watchListSmallIconFile];

  watchListLargeIconFile = [(UNCNotificationSourceDescription *)self watchListLargeIconFile];
  v31 = [builder appendString:watchListLargeIconFile];

  watchQuickLook394hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook394hIconFile];
  v33 = [builder appendString:watchQuickLook394hIconFile];

  watchQuickLook448hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook448hIconFile];
  v35 = [builder appendString:watchQuickLook448hIconFile];

  watchList394hIconFile = [(UNCNotificationSourceDescription *)self watchList394hIconFile];
  v37 = [builder appendString:watchList394hIconFile];

  watchList448hIconFile = [(UNCNotificationSourceDescription *)self watchList448hIconFile];
  v39 = [builder appendString:watchList448hIconFile];

  watchQuickLook430hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook430hIconFile];
  v41 = [builder appendString:watchQuickLook430hIconFile];

  watchQuickLook484hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook484hIconFile];
  v43 = [builder appendString:watchQuickLook484hIconFile];

  watchList430hIconFile = [(UNCNotificationSourceDescription *)self watchList430hIconFile];
  v45 = [builder appendString:watchList430hIconFile];

  watchList484hIconFile = [(UNCNotificationSourceDescription *)self watchList484hIconFile];
  v47 = [builder appendString:watchList484hIconFile];

  customSettingsBundle = [(UNCNotificationSourceDescription *)self customSettingsBundle];
  v49 = [builder appendString:customSettingsBundle];

  customSettingsDetailControllerClass = [(UNCNotificationSourceDescription *)self customSettingsDetailControllerClass];
  v51 = [builder appendString:customSettingsDetailControllerClass];

  bundleURL = [(UNCNotificationSourceDescription *)self bundleURL];
  v53 = [builder appendObject:bundleURL];

  dataContainerURL = [(UNCNotificationSourceDescription *)self dataContainerURL];
  v55 = [builder appendObject:dataContainerURL];

  groupContainerURLS = [(UNCNotificationSourceDescription *)self groupContainerURLS];
  v57 = [builder appendObject:groupContainerURLS];

  defaultCategories = [(UNCNotificationSourceDescription *)self defaultCategories];
  v59 = [builder appendObject:defaultCategories];

  defaultSettings = [(UNCNotificationSourceDescription *)self defaultSettings];
  v61 = [builder appendObject:defaultSettings];

  defaultTopics = [(UNCNotificationSourceDescription *)self defaultTopics];
  v63 = [builder appendObject:defaultTopics];

  activityTypes = [(UNCNotificationSourceDescription *)self activityTypes];
  v65 = [builder appendObject:activityTypes];

  v66 = [builder appendBool:{-[UNCNotificationSourceDescription allowCriticalAlerts](self, "allowCriticalAlerts")}];
  v67 = [builder appendBool:{-[UNCNotificationSourceDescription allowTimeSensitive](self, "allowTimeSensitive")}];
  v68 = [builder appendBool:{-[UNCNotificationSourceDescription allowCalls](self, "allowCalls")}];
  v69 = [builder appendBool:{-[UNCNotificationSourceDescription allowIntercom](self, "allowIntercom")}];
  v70 = [builder appendBool:{-[UNCNotificationSourceDescription allowMessages](self, "allowMessages")}];
  v71 = [builder appendBool:{-[UNCNotificationSourceDescription allowPrivateProperties](self, "allowPrivateProperties")}];
  v72 = [builder appendBool:{-[UNCNotificationSourceDescription allowUnlimitedContentBody](self, "allowUnlimitedContentBody")}];
  v73 = [builder appendBool:{-[UNCNotificationSourceDescription allowAlternateLaunchBundleIdentifiers](self, "allowAlternateLaunchBundleIdentifiers")}];
  v74 = [builder appendBool:{-[UNCNotificationSourceDescription allowServiceExtensionFiltering](self, "allowServiceExtensionFiltering")}];
  v75 = [builder appendBool:{-[UNCNotificationSourceDescription hideSettings](self, "hideSettings")}];
  v76 = [builder appendBool:{-[UNCNotificationSourceDescription automaticallyShowSettings](self, "automaticallyShowSettings")}];
  v77 = [builder appendBool:{-[UNCNotificationSourceDescription suppressDismissalSync](self, "suppressDismissalSync")}];
  v78 = [builder appendBool:{-[UNCNotificationSourceDescription suppressIconMask](self, "suppressIconMask")}];
  v79 = [builder appendBool:{-[UNCNotificationSourceDescription suppressUserAuthorizationPrompt](self, "suppressUserAuthorizationPrompt")}];
  v80 = [builder appendBool:{-[UNCNotificationSourceDescription useDefaultDataProvider](self, "useDefaultDataProvider")}];
  v81 = [builder appendBool:{-[UNCNotificationSourceDescription usesCloudKit](self, "usesCloudKit")}];
  v82 = [builder appendBool:{-[UNCNotificationSourceDescription requiresTopics](self, "requiresTopics")}];
  v83 = [builder appendBool:{-[UNCNotificationSourceDescription supportsContentAvailableRemoteNotifications](self, "supportsContentAvailableRemoteNotifications")}];
  v84 = [builder appendBool:{-[UNCNotificationSourceDescription isRestricted](self, "isRestricted")}];
  v85 = [builder appendBool:{-[UNCNotificationSourceDescription daemonShouldReceiveBackgroundResponses](self, "daemonShouldReceiveBackgroundResponses")}];
  v86 = [builder appendBool:{-[UNCNotificationSourceDescription daemonShouldReceiveNotificationSettingsUpdates](self, "daemonShouldReceiveNotificationSettingsUpdates")}];
  v87 = [builder appendBool:{-[UNCNotificationSourceDescription daemonShouldReceiveApplicationEvents](self, "daemonShouldReceiveApplicationEvents")}];
  v88 = [builder appendBool:{-[UNCNotificationSourceDescription isAppClip](self, "isAppClip")}];
  v89 = [builder appendBool:{-[UNCNotificationSourceDescription wantsEphemeralNotifications](self, "wantsEphemeralNotifications")}];
  v90 = [builder appendBool:{-[UNCNotificationSourceDescription supportsProvisionalAlerts](self, "supportsProvisionalAlerts")}];
  v91 = [builder hash];

  return v91;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  bundleIdentifier = [(UNCNotificationSourceDescription *)self bundleIdentifier];
  [v3 appendString:bundleIdentifier withName:@"bundleIdentifier"];

  intentsBundleIdentifier = [(UNCNotificationSourceDescription *)self intentsBundleIdentifier];
  [v3 appendString:intentsBundleIdentifier withName:@"intentsBundleIdentifier"];

  universalApplicationIdentifier = [(UNCNotificationSourceDescription *)self universalApplicationIdentifier];
  [v3 appendString:universalApplicationIdentifier withName:@"universalApplicationIdentifier"];

  displayName = [(UNCNotificationSourceDescription *)self displayName];
  [v3 appendString:displayName withName:@"displayName"];

  pushEnvironment = [(UNCNotificationSourceDescription *)self pushEnvironment];
  [v3 appendString:pushEnvironment withName:@"pushEnvironment"];

  defaultIconFile = [(UNCNotificationSourceDescription *)self defaultIconFile];
  [v3 appendString:defaultIconFile withName:@"defaultIconFile"];

  subordinateIconFile = [(UNCNotificationSourceDescription *)self subordinateIconFile];
  [v3 appendString:subordinateIconFile withName:@"subordinateIconFile"];

  settingsIconFile = [(UNCNotificationSourceDescription *)self settingsIconFile];
  [v3 appendString:settingsIconFile withName:@"settingsIconFile"];

  settingsSheetIconFile = [(UNCNotificationSourceDescription *)self settingsSheetIconFile];
  [v3 appendString:settingsSheetIconFile withName:@"settingsSheetIconFile"];

  carPlayIconFile = [(UNCNotificationSourceDescription *)self carPlayIconFile];
  [v3 appendString:carPlayIconFile withName:@"carPlayIconFile"];

  watchQuickLookSmallIconFile = [(UNCNotificationSourceDescription *)self watchQuickLookSmallIconFile];
  [v3 appendString:watchQuickLookSmallIconFile withName:@"watchQuickLookSmallIconFile"];

  watchQuickLookLargeIconFile = [(UNCNotificationSourceDescription *)self watchQuickLookLargeIconFile];
  [v3 appendString:watchQuickLookLargeIconFile withName:@"watchQuickLookLargeIconFile"];

  watchListSmallIconFile = [(UNCNotificationSourceDescription *)self watchListSmallIconFile];
  [v3 appendString:watchListSmallIconFile withName:@"watchListSmallIconFile"];

  watchListLargeIconFile = [(UNCNotificationSourceDescription *)self watchListLargeIconFile];
  [v3 appendString:watchListLargeIconFile withName:@"watchListLargeIconFile"];

  watchQuickLook394hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook394hIconFile];
  [v3 appendString:watchQuickLook394hIconFile withName:@"watchQuickLook394hIconFile"];

  watchQuickLook448hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook448hIconFile];
  [v3 appendString:watchQuickLook448hIconFile withName:@"watchQuickLook448hIconFile"];

  watchList394hIconFile = [(UNCNotificationSourceDescription *)self watchList394hIconFile];
  [v3 appendString:watchList394hIconFile withName:@"watchList394hIconFile"];

  watchList448hIconFile = [(UNCNotificationSourceDescription *)self watchList448hIconFile];
  [v3 appendString:watchList448hIconFile withName:@"watchList448hIconFile"];

  watchQuickLook430hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook430hIconFile];
  [v3 appendString:watchQuickLook430hIconFile withName:@"watchQuickLook430hIconFile"];

  watchQuickLook484hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook484hIconFile];
  [v3 appendString:watchQuickLook484hIconFile withName:@"watchQuickLook484hIconFile"];

  watchList430hIconFile = [(UNCNotificationSourceDescription *)self watchList430hIconFile];
  [v3 appendString:watchList430hIconFile withName:@"watchList430hIconFile"];

  watchList484hIconFile = [(UNCNotificationSourceDescription *)self watchList484hIconFile];
  [v3 appendString:watchList484hIconFile withName:@"watchList484hIconFile"];

  customSettingsBundle = [(UNCNotificationSourceDescription *)self customSettingsBundle];
  [v3 appendString:customSettingsBundle withName:@"customSettingsBundle"];

  customSettingsDetailControllerClass = [(UNCNotificationSourceDescription *)self customSettingsDetailControllerClass];
  [v3 appendString:customSettingsDetailControllerClass withName:@"customSettingsDetailControllerClass"];

  bundleURL = [(UNCNotificationSourceDescription *)self bundleURL];
  v29 = [v3 appendObject:bundleURL withName:@"bundleURL"];

  dataContainerURL = [(UNCNotificationSourceDescription *)self dataContainerURL];
  v31 = [v3 appendObject:dataContainerURL withName:@"dataContainerURL"];

  groupContainerURLS = [(UNCNotificationSourceDescription *)self groupContainerURLS];
  v33 = [v3 appendObject:groupContainerURLS withName:@"groupContainerURLS"];

  defaultCategories = [(UNCNotificationSourceDescription *)self defaultCategories];
  v35 = [v3 appendObject:defaultCategories withName:@"defaultCategories"];

  defaultSettings = [(UNCNotificationSourceDescription *)self defaultSettings];
  v37 = [v3 appendObject:defaultSettings withName:@"defaultSettings"];

  defaultTopics = [(UNCNotificationSourceDescription *)self defaultTopics];
  v39 = [v3 appendObject:defaultTopics withName:@"defaultTopics"];

  activityTypes = [(UNCNotificationSourceDescription *)self activityTypes];
  v41 = [v3 appendObject:activityTypes withName:@"activityTypes"];

  v42 = [v3 appendBool:-[UNCNotificationSourceDescription allowCriticalAlerts](self withName:{"allowCriticalAlerts"), @"allowCriticalAlerts"}];
  v43 = [v3 appendBool:-[UNCNotificationSourceDescription allowTimeSensitive](self withName:{"allowTimeSensitive"), @"allowTimeSensitive"}];
  v44 = [v3 appendBool:-[UNCNotificationSourceDescription allowCalls](self withName:{"allowCalls"), @"allowCalls"}];
  v45 = [v3 appendBool:-[UNCNotificationSourceDescription allowIntercom](self withName:{"allowIntercom"), @"allowIntercom"}];
  v46 = [v3 appendBool:-[UNCNotificationSourceDescription allowMessages](self withName:{"allowMessages"), @"allowMessages"}];
  v47 = [v3 appendBool:-[UNCNotificationSourceDescription allowPrivateProperties](self withName:{"allowPrivateProperties"), @"allowPrivateProperties"}];
  v48 = [v3 appendBool:-[UNCNotificationSourceDescription allowUnlimitedContentBody](self withName:{"allowUnlimitedContentBody"), @"allowUnlimitedContentBody"}];
  v49 = [v3 appendBool:-[UNCNotificationSourceDescription allowAlternateLaunchBundleIdentifiers](self withName:{"allowAlternateLaunchBundleIdentifiers"), @"allowAlternateLaunchBundleIdentifiers"}];
  v50 = [v3 appendBool:-[UNCNotificationSourceDescription allowServiceExtensionFiltering](self withName:{"allowServiceExtensionFiltering"), @"allowServiceExtensionFiltering"}];
  v51 = [v3 appendBool:-[UNCNotificationSourceDescription hideSettings](self withName:{"hideSettings"), @"hideSettings"}];
  v52 = [v3 appendBool:-[UNCNotificationSourceDescription automaticallyShowSettings](self withName:{"automaticallyShowSettings"), @"automaticallyShowSettings"}];
  v53 = [v3 appendBool:-[UNCNotificationSourceDescription suppressDismissalSync](self withName:{"suppressDismissalSync"), @"suppressDismissalSync"}];
  v54 = [v3 appendBool:-[UNCNotificationSourceDescription suppressIconMask](self withName:{"suppressIconMask"), @"suppressIconMask"}];
  v55 = [v3 appendBool:-[UNCNotificationSourceDescription suppressUserAuthorizationPrompt](self withName:{"suppressUserAuthorizationPrompt"), @"suppressUserAuthorizationPrompt"}];
  v56 = [v3 appendBool:-[UNCNotificationSourceDescription useDefaultDataProvider](self withName:{"useDefaultDataProvider"), @"useDefaultDataProvider"}];
  v57 = [v3 appendBool:-[UNCNotificationSourceDescription usesCloudKit](self withName:{"usesCloudKit"), @"usesCloudKit"}];
  v58 = [v3 appendBool:-[UNCNotificationSourceDescription requiresTopics](self withName:{"requiresTopics"), @"requiresTopics"}];
  v59 = [v3 appendBool:-[UNCNotificationSourceDescription supportsContentAvailableRemoteNotifications](self withName:{"supportsContentAvailableRemoteNotifications"), @"supportsContentAvailableRemoteNotifications"}];
  v60 = [v3 appendBool:-[UNCNotificationSourceDescription isRestricted](self withName:{"isRestricted"), @"restricted"}];
  v61 = [v3 appendBool:-[UNCNotificationSourceDescription daemonShouldReceiveBackgroundResponses](self withName:{"daemonShouldReceiveBackgroundResponses"), @"daemonShouldReceiveBackgroundResponses"}];
  v62 = [v3 appendBool:-[UNCNotificationSourceDescription daemonShouldReceiveNotificationSettingsUpdates](self withName:{"daemonShouldReceiveNotificationSettingsUpdates"), @"daemonShouldReceiveNotificationSettingsUpdates"}];
  v63 = [v3 appendBool:-[UNCNotificationSourceDescription daemonShouldReceiveApplicationEvents](self withName:{"daemonShouldReceiveApplicationEvents"), @"daemonShouldReceiveApplicationEvents"}];
  v64 = [v3 appendBool:-[UNCNotificationSourceDescription isAppClip](self withName:{"isAppClip"), @"isAppClip"}];
  v65 = [v3 appendBool:-[UNCNotificationSourceDescription wantsEphemeralNotifications](self withName:{"wantsEphemeralNotifications"), @"wantsEphemeralNotifications"}];
  v66 = [v3 appendBool:-[UNCNotificationSourceDescription supportsProvisionalAlerts](self withName:{"supportsProvisionalAlerts"), @"supportsProvisionalAlerts"}];
  build = [v3 build];

  return build;
}

+ (id)descriptionWithBundleIdentifier:(id)identifier path:(id)path allowServiceExtensionFiltering:(BOOL)filtering
{
  filteringCopy = filtering;
  pathCopy = path;
  identifierCopy = identifier;
  v9 = objc_alloc_init(UNCNotificationSourceDescription);
  [(UNCNotificationSourceDescription *)v9 setBundleIdentifier:identifierCopy];

  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];

  [(UNCNotificationSourceDescription *)v9 setBundleURL:v10];
  [(UNCNotificationSourceDescription *)v9 setAllowServiceExtensionFiltering:filteringCopy];

  return v9;
}

@end