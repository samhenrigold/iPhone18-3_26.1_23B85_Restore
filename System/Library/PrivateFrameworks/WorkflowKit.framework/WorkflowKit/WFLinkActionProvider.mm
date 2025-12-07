@interface WFLinkActionProvider
+ (BOOL)approvedForPublicDrawerToDisplayActionIdentifier:(id)identifier;
+ (BOOL)shouldAuditAction:(id)action forBundleIdentifier:(id)identifier;
+ (id)sharedProvider;
+ (id)shortcutsPublicActionIdentifierHashes;
- (BOOL)isDiscontinuedWithAvailability:(id)availability;
- (BOOL)serializedAppIntentDescriptorIsValid:(id)valid;
- (WFLinkActionProvider)initWithMetadataProvider:(id)provider;
- (id)actionMetadataByUpdatingWithEnumAndEntityMetadata:(id)metadata bundleIdentifier:(id)identifier;
- (id)appDescriptorForActionRequest:(id)request fullyQualifiedIdentifier:(id *)identifier forceLocalActionsOnly:(BOOL)only;
- (id)availabilityWithAvailabilityAnnotations:(id)annotations;
- (id)availableActionIdentifiers;
- (id)createActionsForBundleIdentifier:(id)identifier;
- (id)createAllAvailableActions;
- (id)customIntentMigratedActionIdentifierWithLaunchId:(id)id className:(id)name;
- (id)definitionForMissingActionWithSerializedParameters:(id)parameters;
- (id)disabledOnPlatformsWithAvailability:(id)availability;
- (id)getAppSettingActionForRequest:(id)request fullyQualifiedActionIdentifier:(id)identifier localActionsOnly:(BOOL)only;
- (id)linkActionWithActionRequest:(id)request fullyQualifiedActionIdentifier:(id)identifier forceLocalActionsOnly:(BOOL)only;
- (id)linkContentItemFilterActionWithActionRequest:(id)request fullyQualifiedActionIdentifier:(id)identifier entityMetadata:(id)metadata queryMetadata:(id)queryMetadata;
- (id)linkCurrentPlatformName;
- (id)resolvedActionIdentifiersForActionRequests:(id)requests forceLocalActionsOnly:(BOOL)only;
- (id)settingUpdaterActionForActionRequest:(id)request fullyQualifiedActionIdentifier:(id)identifier localActionsOnly:(BOOL)only;
- (id)targetedEntityUpdaterActionForRequest:(id)request fullyQualifiedActionIdentifier:(id)identifier localActionsOnly:(BOOL)only;
- (void)createActionsForRequests:(id)requests allowsActionInDenyList:(BOOL)list forceLocalActionsOnly:(BOOL)only;
- (void)registerAllAvailableTypes;
@end

@implementation WFLinkActionProvider

+ (id)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, &__block_literal_global_258);
  }

  v3 = sharedProvider_sharedProvider;

  return v3;
}

- (id)linkCurrentPlatformName
{
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  platform = [currentDevice platform];

  if (platform <= 2)
  {
    v4 = **(&unk_1E8380678 + platform);
  }

  return v4;
}

void __38__WFLinkActionProvider_sharedProvider__block_invoke()
{
  v0 = [WFLinkActionProvider alloc];
  v3 = [objc_alloc(MEMORY[0x1E69ACF58]) initWithOptions:2];
  v1 = [(WFLinkActionProvider *)v0 initWithMetadataProvider:v3];
  v2 = sharedProvider_sharedProvider;
  sharedProvider_sharedProvider = v1;
}

+ (id)shortcutsPublicActionIdentifierHashes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__WFLinkActionProvider_Hiding__shortcutsPublicActionIdentifierHashes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shortcutsPublicActionIdentifierHashes_onceToken != -1)
  {
    dispatch_once(&shortcutsPublicActionIdentifierHashes_onceToken, block);
  }

  v2 = shortcutsPublicActionIdentifierHashes_shortcutsPublicActionIdentifiers;

  return v2;
}

void __69__WFLinkActionProvider_Hiding__shortcutsPublicActionIdentifierHashes__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E69E0A90] currentDevice];
  v2 = [v1 idiom];

  if (v2 >= 6)
  {
    v4 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = [MEMORY[0x1E69E0A90] currentDevice];
      *buf = 136315394;
      v17 = "+[WFLinkActionProvider(Hiding) shortcutsPublicActionIdentifierHashes]_block_invoke";
      v18 = 2048;
      v19 = [v5 idiom];
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_FAULT, "%s Unexpected WFDeviceIdiom %ld", buf, 0x16u);
    }

    v3 = 0;
  }

  else
  {
    v3 = off_1E837C3F0[v2];
  }

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:v3 withExtension:@"metadata"];

  v15 = 0;
  v8 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:v7 encoding:4 error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = getWFActionsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v17 = "+[WFLinkActionProvider(Hiding) shortcutsPublicActionIdentifierHashes]_block_invoke";
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Failed to open file. %@", buf, 0x16u);
    }
  }

  v11 = MEMORY[0x1E695DFD8];
  v12 = [v8 componentsSeparatedByString:@"\n"];
  v13 = [v11 setWithArray:v12];
  v14 = shortcutsPublicActionIdentifierHashes_shortcutsPublicActionIdentifiers;
  shortcutsPublicActionIdentifierHashes_shortcutsPublicActionIdentifiers = v13;
}

+ (BOOL)shouldAuditAction:(id)action forBundleIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  identifierCopy = identifier;
  v7 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:identifierCopy];
  if (![v7 isThirdParty])
  {
    if (![v7 isProbablySecondParty])
    {
      v12 = 1;
      goto LABEL_12;
    }

    v8 = getWFAppIntentsLogObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v14 = 136315650;
    v15 = "+[WFLinkActionProvider(Hiding) shouldAuditAction:forBundleIdentifier:]";
    v16 = 2112;
    v17 = actionCopy;
    v18 = 2112;
    v19 = identifierCopy;
    v9 = "%s %@ in %@ is probably second party, allowing.";
    v10 = v8;
    v11 = 32;
    goto LABEL_8;
  }

  if ([identifierCopy hasPrefix:@"com.apple."])
  {
    v8 = getWFAppIntentsLogObject();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:

      goto LABEL_10;
    }

    v14 = 136315394;
    v15 = "+[WFLinkActionProvider(Hiding) shouldAuditAction:forBundleIdentifier:]";
    v16 = 2112;
    v17 = actionCopy;
    v9 = "%s %@ seems to be third party but uses 'com.apple'.";
    v10 = v8;
    v11 = 22;
LABEL_8:
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, v9, &v14, v11);
    goto LABEL_9;
  }

LABEL_10:
  v12 = 0;
LABEL_12:

  return v12;
}

+ (BOOL)approvedForPublicDrawerToDisplayActionIdentifier:(id)identifier
{
  v32[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v31 = @"com.apple.SafariTechnologyPreview";
  v32[0] = *MEMORY[0x1E69E0F10];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  bundleIdentifier = [identifierCopy bundleIdentifier];
  v7 = [v5 objectForKeyedSubscript:bundleIdentifier];
  v8 = v7;
  if (v7)
  {
    bundleIdentifier2 = v7;
  }

  else
  {
    bundleIdentifier2 = [identifierCopy bundleIdentifier];
  }

  v10 = bundleIdentifier2;

  actionIdentifier = [identifierCopy actionIdentifier];
  v12 = [self shouldAuditAction:actionIdentifier forBundleIdentifier:v10];

  if (v12)
  {
    actionIdentifier2 = [identifierCopy actionIdentifier];
    v14 = WFShortcutsActionIdentifierFromLinkIdentifiers(v10, actionIdentifier2);

    v15 = [v14 dataUsingEncoding:4];
    bytes = [MEMORY[0x1EEE9AC00](v15) bytes];
    CC_MD5(bytes, [v15 length], v24);
    v17 = objc_opt_new();
    for (i = 0; i != 16; ++i)
    {
      [v17 appendFormat:@"%02x", v24[i]];
    }

    v19 = +[WFLinkActionProvider shortcutsPublicActionIdentifierHashes];
    v20 = [v19 containsObject:v17];

    v21 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = @"Unreviewed";
      *buf = 136315650;
      v26 = "+[WFLinkActionProvider(Hiding) approvedForPublicDrawerToDisplayActionIdentifier:]";
      v27 = 2112;
      if (v20)
      {
        v22 = @"Approved";
      }

      v28 = v22;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_DEBUG, "%s %@: %@", buf, 0x20u);
    }
  }

  else
  {
    LOBYTE(v20) = 1;
  }

  return v20;
}

- (id)customIntentMigratedActionIdentifierWithLaunchId:(id)id className:(id)name
{
  v40 = *MEMORY[0x1E69E9840];
  idCopy = id;
  nameCopy = name;
  v33 = 0;
  v8 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:idCopy allowPlaceholder:0 error:&v33];
  v9 = v33;
  if (v8)
  {
    v10 = v8;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (isKindOfClass)
    {
      v14 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v35 = "[WFLinkActionProvider customIntentMigratedActionIdentifierWithLaunchId:className:]";
        v36 = 2114;
        v37 = idCopy;
        _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEFAULT, "%s The provided launchId (%{public}@) is an extension, getting its container", buf, 0x16u);
      }

      containingBundleRecord = [v10 containingBundleRecord];
      if (containingBundleRecord)
      {
        v16 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [containingBundleRecord bundleIdentifier];
          *buf = 136315650;
          v35 = "[WFLinkActionProvider customIntentMigratedActionIdentifierWithLaunchId:className:]";
          v36 = 2114;
          v37 = idCopy;
          v38 = 2114;
          v39 = bundleIdentifier;
          _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_DEFAULT, "%s The container for %{public}@ is %{public}@; Using it", buf, 0x20u);
        }

        containingBundleRecord2 = [v10 containingBundleRecord];

        v10 = containingBundleRecord2;
      }
    }

    bundleIdentifier2 = [v10 bundleIdentifier];
    v20 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "[WFLinkActionProvider customIntentMigratedActionIdentifierWithLaunchId:className:]";
      v36 = 2114;
      v37 = bundleIdentifier2;
      _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_DEFAULT, "%s Getting metadata for app intents from %{public}@)", buf, 0x16u);
    }

    metadataProvider = [(WFLinkActionProvider *)self metadataProvider];
    v22 = [metadataProvider actionsForBundleIdentifier:bundleIdentifier2];

    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __83__WFLinkActionProvider_customIntentMigratedActionIdentifierWithLaunchId_className___block_invoke;
    v31 = &unk_1E83802E8;
    v32 = nameCopy;
    v23 = [v22 if_firstObjectPassingTest:&v28];
    v24 = v23;
    if (v23)
    {
      identifier = [v23 identifier];
      v26 = WFShortcutsActionIdentifierFromLinkIdentifiers(bundleIdentifier2, identifier);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v10 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v35 = "[WFLinkActionProvider customIntentMigratedActionIdentifierWithLaunchId:className:]";
      v36 = 2114;
      v37 = idCopy;
      v38 = 2114;
      v39 = v9;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Unable to get bundle record for %{public}@: %{public}@", buf, 0x20u);
    }

    v26 = 0;
  }

  return v26;
}

uint64_t __83__WFLinkActionProvider_customIntentMigratedActionIdentifierWithLaunchId_className___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 customIntentClassName];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString;
}

- (BOOL)isDiscontinuedWithAvailability:(id)availability
{
  v4 = [(WFLinkActionProvider *)self availabilityWithAvailabilityAnnotations:availability];
  linkCurrentPlatformName = [(WFLinkActionProvider *)self linkCurrentPlatformName];
  v6 = [v4 objectForKeyedSubscript:linkCurrentPlatformName];

  LOBYTE(linkCurrentPlatformName) = v6 == *MEMORY[0x1E69ACB48];
  return linkCurrentPlatformName;
}

- (id)disabledOnPlatformsWithAvailability:(id)availability
{
  availabilityCopy = availability;
  v6 = objc_opt_new();
  v7 = [(WFLinkActionProvider *)self availabilityWithAvailabilityAnnotations:availabilityCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__WFLinkActionProvider_disabledOnPlatformsWithAvailability___block_invoke;
  v11[3] = &unk_1E83802C0;
  v8 = v6;
  selfCopy = self;
  v14 = a2;
  v12 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

  v9 = v8;
  return v8;
}

void __60__WFLinkActionProvider_disabledOnPlatformsWithAvailability___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (*MEMORY[0x1E69ACB50] == v5)
  {
    if (*MEMORY[0x1E69AC210] == v9)
    {
      [*(a1 + 32) addObject:@"Pad"];
      v7 = *(a1 + 32);
      v8 = @"Phone";
    }

    else if (*MEMORY[0x1E69AC220] == v9)
    {
      v7 = *(a1 + 32);
      v8 = @"Desktop";
    }

    else if (*MEMORY[0x1E69AC248] == v9)
    {
      v7 = *(a1 + 32);
      v8 = @"Watch";
    }

    else
    {
      if (*MEMORY[0x1E69AC230] == v9)
      {
        goto LABEL_13;
      }

      if (*MEMORY[0x1E69AC240] != v9)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"WFLinkActionProvider.m" lineNumber:1209 description:{@"Unknown OS Execution Platform: %@", v9}];

        goto LABEL_13;
      }

      v7 = *(a1 + 32);
      v8 = @"XR";
    }

    [v7 addObject:v8];
  }

LABEL_13:
}

- (id)availabilityWithAvailabilityAnnotations:(id)annotations
{
  v4 = MEMORY[0x1E69ACDD0];
  annotationsCopy = annotations;
  v6 = [[v4 alloc] initWithAvailabilityAnnotations:annotationsCopy];

  linkCurrentPlatformName = [(WFLinkActionProvider *)self linkCurrentPlatformName];
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  systemVersion = [currentDevice systemVersion];
  v10 = [v6 availabilityWithPlatform:linkCurrentPlatformName platformVersion:systemVersion];

  return v10;
}

- (id)getAppSettingActionForRequest:(id)request fullyQualifiedActionIdentifier:(id)identifier localActionsOnly:(BOOL)only
{
  v80 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  identifierCopy = identifier;
  bundleIdentifier = [identifierCopy bundleIdentifier];
  v67 = objc_opt_new();
  selfCopy = self;
  metadataProvider = [(WFLinkActionProvider *)self metadataProvider];
  v9 = [metadataProvider entitiesForBundleIdentifier:bundleIdentifier];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v69 objects:v79 count:16];
  v68 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = *v70;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v70 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v69 + 1) + 8 * i);
        if (WFISEligibleForSettingsUpdaterAction(v15, bundleIdentifier) && [v15 visibleForUse:0])
        {
          v16 = objc_alloc(MEMORY[0x1E69AC860]);
          identifier = [v15 identifier];
          v18 = [v16 initWithActionIdentifier:identifier bundleIdentifier:bundleIdentifier];

          if (+[WFLinkActionProvider approvedForPublicDrawerToDisplayActionIdentifier:](WFLinkActionProvider, "approvedForPublicDrawerToDisplayActionIdentifier:", v18) || ([MEMORY[0x1E695E000] systemShortcutsUserDefaults], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "BOOLForKey:", @"WFDrawerShowInternalApps"), v19, v20))
          {
            identifier2 = [v15 identifier];
            [v67 setObject:v15 forKey:identifier2];
          }

          v10 = v68;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v69 objects:v79 count:16];
    }

    while (v12);
  }

  if ([v67 count])
  {
    v22 = identifierCopy;
    actionIdentifier = [identifierCopy actionIdentifier];
    v24 = WFShortcutsActionIdentifierFromLinkIdentifiers(bundleIdentifier, actionIdentifier);

    if ([v24 length])
    {
      v25 = objc_opt_new();
      v26 = WFLinkActionBundleIdentifierOverrides(v24);
      v27 = MEMORY[0x1E69E0908];
      if (v26 || (v26 = bundleIdentifier) != 0)
      {
        v77 = *v27;
        v78 = v26;
        v61 = v26;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        [v25 setObject:v28 forKeyedSubscript:@"LinkActionDisplayedAppDescriptor"];
      }

      else
      {
        v61 = 0;
      }

      firstObject = [v10 firstObject];
      effectiveBundleIdentifiers = [firstObject effectiveBundleIdentifiers];
      v62 = v25;
      v63 = firstObject;
      if ([effectiveBundleIdentifiers count] == 1)
      {
        effectiveBundleIdentifiers2 = [firstObject effectiveBundleIdentifiers];
        firstObject2 = [effectiveBundleIdentifiers2 firstObject];
        if ([firstObject2 type] == 2)
        {
          effectiveBundleIdentifiers3 = [firstObject effectiveBundleIdentifiers];
          firstObject3 = [effectiveBundleIdentifiers3 firstObject];
          bundleIdentifier2 = [firstObject3 bundleIdentifier];
          isEqualToString = objc_msgSend_isEqualToString_(bundleIdentifier2);

          firstObject = v63;
        }

        else
        {
          isEqualToString = 0;
        }

        v10 = v68;
      }

      else
      {
        isEqualToString = 0;
      }

      effectiveBundleIdentifiers4 = [firstObject effectiveBundleIdentifiers];
      if ([effectiveBundleIdentifiers4 count] == 1)
      {
        effectiveBundleIdentifiers5 = [firstObject effectiveBundleIdentifiers];
        firstObject4 = [effectiveBundleIdentifiers5 firstObject];
        if ([firstObject4 type] == 3)
        {
          [firstObject effectiveBundleIdentifiers];
          v41 = v60 = isEqualToString;
          firstObject5 = [v41 firstObject];
          [firstObject5 bundleIdentifier];
          v44 = v43 = v24;
          v45 = objc_msgSend_isEqualToString_(v44);

          v24 = v43;
          v22 = identifierCopy;

          isEqualToString = v60;
        }

        else
        {
          v45 = 0;
        }

        v10 = v68;
      }

      else
      {
        v45 = 0;
      }

      if (((isEqualToString | v45) & 1) == 0)
      {
        v46 = v24;
        v47 = [(WFLinkActionProvider *)selfCopy appDescriptorForActionRequest:requestCopy fullyQualifiedIdentifier:0 forceLocalActionsOnly:0];
        if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v48 = v47;

          serializedRepresentation = [v48 serializedRepresentation];
          v50 = *MEMORY[0x1E69E0908];
        }

        else
        {

          v50 = *MEMORY[0x1E69E0908];
          v75 = *MEMORY[0x1E69E0908];
          v76 = bundleIdentifier;
          serializedRepresentation = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v48 = 0;
        }

        v51 = [serializedRepresentation objectForKeyedSubscript:v50];

        if (v51)
        {
          v73 = @"ActionRequiresAppInstallation";
          v74 = MEMORY[0x1E695E118];
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          v53 = [serializedRepresentation if_dictionaryByAddingEntriesFromDictionary:v52];

          [v62 setObject:v53 forKeyedSubscript:@"AppDefinition"];
          serializedRepresentation = v53;
        }

        v24 = v46;
      }

      defaultActionDefinition = [(WFActionProvider *)selfCopy defaultActionDefinition];
      v55 = [defaultActionDefinition definitionByAddingEntriesInDictionary:v62];

      v56 = objc_opt_class();
      if (objc_msgSend_isEqualToString_(bundleIdentifier))
      {
        v56 = objc_opt_class();
      }

      v57 = [v56 alloc];
      serializedParameters = [requestCopy serializedParameters];
      v37 = [v57 initWithIdentifier:v24 definition:v55 entityByEntityIdentifier:v67 serializedParameters:serializedParameters fullyQualifiedActionIdentifier:v22];
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
    v22 = identifierCopy;
  }

  return v37;
}

- (id)settingUpdaterActionForActionRequest:(id)request fullyQualifiedActionIdentifier:(id)identifier localActionsOnly:(BOOL)only
{
  onlyCopy = only;
  v107 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  identifierCopy = identifier;
  bundleIdentifier = [identifierCopy bundleIdentifier];
  v89 = objc_opt_new();
  selfCopy = self;
  metadataProvider = [(WFLinkActionProvider *)self metadataProvider];
  v92 = bundleIdentifier;
  v9 = [metadataProvider actionsForBundleIdentifier:bundleIdentifier];

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v99 objects:v106 count:16];
  v85 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = *v100;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v100 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v99 + 1) + 8 * i);
        v16 = WFUpdatableEntityValueTypeFromEntityUpdaterAction(v15);
        identifier = [v16 identifier];
        if (identifier)
        {
          metadataProvider2 = [(WFLinkActionProvider *)selfCopy metadataProvider];
          v19 = [metadataProvider2 entityWithIdentifier:identifier fromBundleIdentifier:v92];

          if (WFISEligibleForSettingsUpdaterAction(v19, v92) && [v15 visibleForUse:0])
          {
            v20 = objc_alloc(MEMORY[0x1E69AC860]);
            identifier2 = [v15 identifier];
            v22 = [v20 initWithActionIdentifier:identifier2 bundleIdentifier:v92];

            if (+[WFLinkActionProvider approvedForPublicDrawerToDisplayActionIdentifier:](WFLinkActionProvider, "approvedForPublicDrawerToDisplayActionIdentifier:", v22) || ([MEMORY[0x1E695E000] systemShortcutsUserDefaults], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "BOOLForKey:", @"WFDrawerShowInternalApps"), v23, v24))
            {
              [v89 setObject:v15 forKey:identifier];
            }

            v10 = v85;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v99 objects:v106 count:16];
    }

    while (v12);
  }

  v25 = v89;
  if ([v89 count])
  {
    v88 = objc_opt_new();
    v26 = objc_opt_new();
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = [v89 allKeys];
    v27 = [obj countByEnumeratingWithState:&v95 objects:v105 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v96;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v96 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v95 + 1) + 8 * j);
          metadataProvider3 = [(WFLinkActionProvider *)selfCopy metadataProvider];
          v33 = [metadataProvider3 entityWithIdentifier:v31 fromBundleIdentifier:v92];

          v34 = [v25 objectForKeyedSubscript:v31];
          [v88 setObject:v33 forKey:v31];
          parameters = [v34 parameters];
          v36 = [parameters if_firstObjectPassingTest:&__block_literal_global_312_76570];

          v25 = v89;
          [v26 setObject:v36 forKey:v31];
        }

        v28 = [obj countByEnumeratingWithState:&v95 objects:v105 count:16];
      }

      while (v28);
    }

    allKeys = [v26 allKeys];
    v38 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __109__WFLinkActionProvider_settingUpdaterActionForActionRequest_fullyQualifiedActionIdentifier_localActionsOnly___block_invoke_2;
    v93[3] = &unk_1E8380270;
    v79 = v26;
    v80 = v38;
    v94 = v79;
    v39 = [v38 if_compactMap:v93];
    allValues = [v25 allValues];
    firstObject = [allValues firstObject];
    v42 = [firstObject actionMetadataWithParameters:v39];

    obja = [(WFLinkActionProvider *)selfCopy actionMetadataByUpdatingWithEnumAndEntityMetadata:v42 bundleIdentifier:v92];

    actionIdentifier = [identifierCopy actionIdentifier];
    v44 = WFShortcutsActionIdentifierFromLinkIdentifiers(v92, actionIdentifier);

    v82 = objc_opt_class();
    if (objc_msgSend_isEqualToString_(v92))
    {
      v82 = objc_opt_class();
    }

    v45 = objc_opt_new();
    v78 = v44;
    v46 = WFLinkActionBundleIdentifierOverrides(v44);
    if (v46 || (v46 = v92) != 0)
    {
      v103 = *MEMORY[0x1E69E0908];
      v104 = v46;
      v77 = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      [v45 setObject:v47 forKeyedSubscript:@"LinkActionDisplayedAppDescriptor"];
    }

    else
    {
      v77 = 0;
    }

    effectiveBundleIdentifiers = [obja effectiveBundleIdentifiers];
    if ([effectiveBundleIdentifiers count] == 1)
    {
      effectiveBundleIdentifiers2 = [obja effectiveBundleIdentifiers];
      firstObject2 = [effectiveBundleIdentifiers2 firstObject];
      if ([firstObject2 type] == 2)
      {
        effectiveBundleIdentifiers3 = [obja effectiveBundleIdentifiers];
        firstObject3 = [effectiveBundleIdentifiers3 firstObject];
        bundleIdentifier2 = [firstObject3 bundleIdentifier];
        isEqualToString = objc_msgSend_isEqualToString_(bundleIdentifier2);
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }

    effectiveBundleIdentifiers4 = [obja effectiveBundleIdentifiers];
    if ([effectiveBundleIdentifiers4 count] == 1)
    {
      effectiveBundleIdentifiers5 = [obja effectiveBundleIdentifiers];
      firstObject4 = [effectiveBundleIdentifiers5 firstObject];
      if ([firstObject4 type] == 3)
      {
        [obja effectiveBundleIdentifiers];
        v60 = v76 = isEqualToString;
        firstObject5 = [v60 firstObject];
        bundleIdentifier3 = [firstObject5 bundleIdentifier];
        v63 = objc_msgSend_isEqualToString_(bundleIdentifier3);

        isEqualToString = v76;
      }

      else
      {
        v63 = 0;
      }
    }

    else
    {
      v63 = 0;
    }

    if ((isEqualToString | v63))
    {
      v64 = 0;
      v65 = requestCopy;
    }

    else
    {
      v65 = requestCopy;
      v66 = [(WFLinkActionProvider *)selfCopy appDescriptorForActionRequest:requestCopy fullyQualifiedIdentifier:0 forceLocalActionsOnly:onlyCopy];
      if (v66)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v67 = v66;
        }

        else
        {
          v67 = 0;
        }
      }

      else
      {
        v67 = 0;
      }

      v64 = v67;
    }

    v68 = [v82 alloc];
    v69 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v89];
    v70 = v45;
    v71 = [[WFActionDefinition alloc] initWithDictionary:v45];
    defaultActionDefinition = [(WFActionProvider *)selfCopy defaultActionDefinition];
    v73 = [(WFActionDefinition *)v71 definitionByMergingWithDefinition:defaultActionDefinition];
    serializedParameters = [v65 serializedParameters];
    v56 = identifierCopy;
    v91 = [v68 initWithIdentifier:v78 actionMetadata:obja entityMetadataForParameterIdentifier:v88 metadataForParameterIdentifier:v69 definition:v73 serializedParameters:serializedParameters appIntentDescriptor:v64 fullyQualifiedActionIdentifier:identifierCopy];

    v25 = v89;
    v55 = requestCopy;

    v10 = v85;
  }

  else
  {
    v91 = 0;
    v56 = identifierCopy;
    v55 = requestCopy;
  }

  return v91;
}

id __109__WFLinkActionProvider_settingUpdaterActionForActionRequest_fullyQualifiedActionIdentifier_localActionsOnly___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = objc_alloc(MEMORY[0x1E69AC680]);
  v6 = [v4 valueType];
  v7 = [v4 isOptional];
  v8 = [v4 title];
  v9 = [v4 parameterDescription];
  v10 = [v4 resolvableInputTypes];
  v11 = [v4 typeSpecificMetadata];
  v12 = [v5 initWithName:v3 valueType:v6 optional:v7 title:v8 description:v9 resolvableInputTypes:v10 typeSpecificMetadata:v11 dynamicOptionsSupport:objc_msgSend(v4 inputConnectionBehavior:{"dynamicOptionsSupport"), objc_msgSend(v4, "inputConnectionBehavior")}];

  return v12;
}

uint64_t __109__WFLinkActionProvider_settingUpdaterActionForActionRequest_fullyQualifiedActionIdentifier_localActionsOnly___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString;
}

- (id)targetedEntityUpdaterActionForRequest:(id)request fullyQualifiedActionIdentifier:(id)identifier localActionsOnly:(BOOL)only
{
  onlyCopy = only;
  v129 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  identifierCopy = identifier;
  bundleIdentifier = [identifierCopy bundleIdentifier];
  actionIdentifier = [requestCopy actionIdentifier];
  v12 = [actionIdentifier componentsSeparatedByString:@"-"];
  v13 = [v12 mutableCopy];

  lastObject = [v13 lastObject];
  LODWORD(v12) = objc_msgSend_isEqualToString_(lastObject);

  v94 = bundleIdentifier;
  if (!v12)
  {
    v68 = 0;
    goto LABEL_55;
  }

  [v13 removeLastObject];
  v15 = [v13 componentsJoinedByString:@"-"];
  v16 = [v15 componentsSeparatedByString:@"."];
  lastObject2 = [v16 lastObject];

  metadataProvider = [(WFLinkActionProvider *)self metadataProvider];
  v19 = [metadataProvider entityWithIdentifier:lastObject2 fromBundleIdentifier:bundleIdentifier];

  v93 = v19;
  if (v19)
  {
    v85 = onlyCopy;
    v95 = lastObject2;
    v87 = v13;
    v88 = requestCopy;
    v92 = identifierCopy;
    v103 = objc_opt_new();
    selfCopy = self;
    metadataProvider2 = [(WFLinkActionProvider *)self metadataProvider];
    v21 = [metadataProvider2 actionsForBundleIdentifier:bundleIdentifier];

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    obj = v21;
    v22 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v121;
      v25 = *MEMORY[0x1E69AC438];
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v121 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v120 + 1) + 8 * i);
          systemProtocolMetadata = [v27 systemProtocolMetadata];
          v29 = [systemProtocolMetadata objectForKeyedSubscript:v25];

          if (v29)
          {
            v30 = v29;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }

            v33 = v32;

            if (isKindOfClass)
            {
              entityIdentifier = [v30 entityIdentifier];
              isEqualToString = objc_msgSend_isEqualToString_(entityIdentifier);

              if (isEqualToString)
              {
                entityProperty = [v30 entityProperty];
                [v103 setObject:v27 forKey:entityProperty];
              }
            }
          }
        }

        v23 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
      }

      while (v23);
    }

    v106 = objc_opt_new();
    v37 = objc_opt_new();
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    properties = [v93 properties];
    v101 = [properties countByEnumeratingWithState:&v116 objects:v127 count:16];
    if (v101)
    {
      v99 = *v117;
      do
      {
        for (j = 0; j != v101; ++j)
        {
          if (*v117 != v99)
          {
            objc_enumerationMutation(properties);
          }

          v39 = *(*(&v116 + 1) + 8 * j);
          identifier = [v39 identifier];
          v41 = [v103 objectForKeyedSubscript:identifier];

          if (v41)
          {
            v104 = j;
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v107 = v41;
            parameters = [v41 parameters];
            v43 = [parameters countByEnumeratingWithState:&v112 objects:v126 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v113;
              do
              {
                for (k = 0; k != v44; ++k)
                {
                  if (*v113 != v45)
                  {
                    objc_enumerationMutation(parameters);
                  }

                  v47 = *(*(&v112 + 1) + 8 * k);
                  name = [v47 name];
                  v49 = +[_TtC11WorkflowKit22WFEntityUpdatingAction entityParameterName];
                  v50 = objc_msgSend_isEqualToString_(name);

                  if (v50)
                  {
                    [v47 name];
                  }

                  else
                  {
                    identifier2 = [v39 identifier];
                    [v106 setObject:v107 forKey:identifier2];

                    [v39 identifier];
                  }
                  v52 = ;
                  [v37 setObject:v47 forKey:v52];
                }

                v44 = [parameters countByEnumeratingWithState:&v112 objects:v126 count:16];
              }

              while (v44);
            }

            j = v104;
            v41 = v107;
          }
        }

        v101 = [properties countByEnumeratingWithState:&v116 objects:v127 count:16];
      }

      while (v101);
    }

    allKeys = [v37 allKeys];
    v54 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 3221225472;
    v109[2] = __110__WFLinkActionProvider_targetedEntityUpdaterActionForRequest_fullyQualifiedActionIdentifier_localActionsOnly___block_invoke;
    v109[3] = &unk_1E8380240;
    v102 = v37;
    v110 = v102;
    v111 = v93;
    v55 = [v54 if_compactMap:v109];
    allValues = [v106 allValues];
    firstObject = [allValues firstObject];
    v100 = v55;
    v58 = [firstObject actionMetadataWithParameters:v55];

    v59 = [(WFLinkActionProvider *)selfCopy actionMetadataByUpdatingWithEnumAndEntityMetadata:v58 bundleIdentifier:v94];

    v60 = WFUpdatableEntityValueTypeFromEntityUpdaterAction(v59);
    v61 = [v59 wf_actionMetadataWithOutputType:v60];

    actionIdentifier2 = [v92 actionIdentifier];
    v63 = WFShortcutsActionIdentifierFromLinkIdentifiers(v94, actionIdentifier2);

    v64 = objc_opt_new();
    v83 = v63;
    attributionBundleIdentifier = WFLinkActionBundleIdentifierOverrides(v63);
    v105 = v54;
    v97 = v60;
    if (attributionBundleIdentifier)
    {
      requestCopy = v88;
      v66 = v95;
      v67 = v85;
    }

    else
    {
      attributionBundleIdentifier = [v61 attributionBundleIdentifier];
      requestCopy = v88;
      v67 = v85;
      if (!attributionBundleIdentifier)
      {
        v84 = 0;
        v66 = v95;
        goto LABEL_44;
      }

      v66 = v95;
    }

    v124 = *MEMORY[0x1E69E0908];
    v125 = attributionBundleIdentifier;
    v84 = attributionBundleIdentifier;
    v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
    [v64 setObject:v69 forKeyedSubscript:@"LinkActionDisplayedAppDescriptor"];

LABEL_44:
    systemProtocolMetadata2 = [v61 systemProtocolMetadata];
    v71 = [systemProtocolMetadata2 objectForKeyedSubscript:*MEMORY[0x1E69AC508]];

    v108 = v61;
    if (v71)
    {
      v72 = 0;
      v73 = selfCopy;
    }

    else
    {
      v73 = selfCopy;
      v74 = [(WFLinkActionProvider *)selfCopy appDescriptorForActionRequest:requestCopy fullyQualifiedIdentifier:0 forceLocalActionsOnly:v67];
      if (v74)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v75 = v74;
        }

        else
        {
          v75 = 0;
        }
      }

      else
      {
        v75 = 0;
      }

      v72 = v75;
    }

    v76 = [_TtC11WorkflowKit29WFTargetedEntityUpdaterAction alloc];
    metadataProvider3 = [(WFLinkActionProvider *)v73 metadataProvider];
    v86 = [metadataProvider3 entityWithIdentifier:v66 fromBundleIdentifier:v94];
    v77 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v106];
    v89 = v64;
    v78 = [[WFActionDefinition alloc] initWithDictionary:v64];
    defaultActionDefinition = [(WFActionProvider *)v73 defaultActionDefinition];
    v80 = [(WFActionDefinition *)v78 definitionByMergingWithDefinition:defaultActionDefinition];
    serializedParameters = [requestCopy serializedParameters];
    identifierCopy = v92;
    v68 = [(WFTargetedEntityUpdaterAction *)v76 initWithIdentifier:v83 actionMetadata:v108 entityMetadata:v86 metadataForParameterIdentifier:v77 definition:v80 serializedParameters:serializedParameters appIntentDescriptor:v72 fullyQualifiedActionIdentifier:v92];

    lastObject2 = v95;
    v13 = v87;
    goto LABEL_54;
  }

  v68 = 0;
LABEL_54:

LABEL_55:

  return v68;
}

id __110__WFLinkActionProvider_targetedEntityUpdaterActionForRequest_fullyQualifiedActionIdentifier_localActionsOnly___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = [v4 dynamicOptionsSupport];
  v6 = +[_TtC11WorkflowKit22WFEntityUpdatingAction entityParameterName];
  if (objc_msgSend_isEqualToString_(v3))
  {
    v7 = [*(a1 + 40) systemProtocolMetadata];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69AC2D8]];

    if (v8)
    {
      v5 = 0;
    }
  }

  else
  {
  }

  v9 = objc_alloc(MEMORY[0x1E69AC680]);
  v10 = [v4 valueType];
  v11 = [v4 isOptional];
  v12 = [v4 title];
  v13 = [v4 parameterDescription];
  v14 = [v4 resolvableInputTypes];
  v15 = [v4 typeSpecificMetadata];
  v16 = [v9 initWithName:v3 valueType:v10 optional:v11 title:v12 description:v13 resolvableInputTypes:v14 typeSpecificMetadata:v15 dynamicOptionsSupport:v5 inputConnectionBehavior:objc_msgSend(v4 capabilities:{"inputConnectionBehavior"), objc_msgSend(v4, "capabilities")}];

  return v16;
}

- (id)linkContentItemFilterActionWithActionRequest:(id)request fullyQualifiedActionIdentifier:(id)identifier entityMetadata:(id)metadata queryMetadata:(id)queryMetadata
{
  v101 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  identifierCopy = identifier;
  metadataCopy = metadata;
  queryMetadataCopy = queryMetadata;
  v88 = identifierCopy;
  bundleIdentifier = [identifierCopy bundleIdentifier];
  if (metadataCopy)
  {
    v87 = queryMetadataCopy;
    actionIdentifier = [identifierCopy actionIdentifier];
    v16 = WFShortcutsActionIdentifierForClassOverrideSearch(bundleIdentifier, actionIdentifier);

    v17 = [WFLinkAction classForLinkActionWithIdentifier:v16 metadata:0];
    if (!v17)
    {
      v17 = objc_opt_class();
    }

    v79 = v17;
    effectiveBundleIdentifiers = [metadataCopy effectiveBundleIdentifiers];
    v84 = v16;
    v85 = bundleIdentifier;
    if ([effectiveBundleIdentifiers count] == 1)
    {
      effectiveBundleIdentifiers2 = [metadataCopy effectiveBundleIdentifiers];
      firstObject = [effectiveBundleIdentifiers2 firstObject];
      if ([firstObject type] == 2)
      {
        effectiveBundleIdentifiers3 = [metadataCopy effectiveBundleIdentifiers];
        firstObject2 = [effectiveBundleIdentifiers3 firstObject];
        [firstObject2 bundleIdentifier];
        v24 = v23 = self;
        isEqualToString = objc_msgSend_isEqualToString_(v24);

        self = v23;
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }

    effectiveBundleIdentifiers4 = [metadataCopy effectiveBundleIdentifiers];
    selfCopy = self;
    if ([effectiveBundleIdentifiers4 count] == 1)
    {
      effectiveBundleIdentifiers5 = [metadataCopy effectiveBundleIdentifiers];
      firstObject3 = [effectiveBundleIdentifiers5 firstObject];
      if ([firstObject3 type] == 3)
      {
        effectiveBundleIdentifiers6 = [metadataCopy effectiveBundleIdentifiers];
        firstObject4 = [effectiveBundleIdentifiers6 firstObject];
        [firstObject4 bundleIdentifier];
        v34 = isEqualToString;
        v36 = v35 = requestCopy;
        v37 = objc_msgSend_isEqualToString_(v36);

        requestCopy = v35;
        isEqualToString = v34;

        self = selfCopy;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }

    v38 = isEqualToString | v37;
    if (v38)
    {
      v81 = 0;
    }

    else
    {
      v39 = [(WFLinkActionProvider *)self appDescriptorForActionRequest:requestCopy fullyQualifiedIdentifier:0 forceLocalActionsOnly:0];
      if (v39)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }
      }

      else
      {
        v40 = 0;
      }

      v81 = v40;
    }

    v86 = requestCopy;
    v41 = objc_opt_new();
    requiredCapabilities = [metadataCopy requiredCapabilities];

    if (requiredCapabilities)
    {
      requiredCapabilities2 = [metadataCopy requiredCapabilities];
      v44 = WFResourceDefinitionsForRequiredCapabilities(requiredCapabilities2);
      [v41 setObject:v44 forKeyedSubscript:@"RequiredResources"];
    }

    v95[0] = @"DisabledOnPlatforms";
    availabilityAnnotations = [metadataCopy availabilityAnnotations];
    v46 = [(WFLinkActionProvider *)self disabledOnPlatformsWithAvailability:availabilityAnnotations];
    v96[0] = v46;
    v95[1] = @"Discontinued";
    v47 = MEMORY[0x1E696AD98];
    availabilityAnnotations2 = [metadataCopy availabilityAnnotations];
    selfCopy2 = self;
    v50 = availabilityAnnotations2;
    v51 = [v47 numberWithBool:{-[WFLinkActionProvider isDiscontinuedWithAvailability:](selfCopy2, "isDiscontinuedWithAvailability:", availabilityAnnotations2)}];
    v96[1] = v51;
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:2];
    [v41 addEntriesFromDictionary:v52];

    attributionBundleIdentifier = [metadataCopy attributionBundleIdentifier];
    v54 = attributionBundleIdentifier;
    if (attributionBundleIdentifier)
    {
      v93 = *MEMORY[0x1E69E0908];
      v94 = attributionBundleIdentifier;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      [v41 setObject:v55 forKeyedSubscript:@"LinkActionDisplayedAppDescriptor"];
    }

    v83 = v54;
    shortcutsActionMetadata = [metadataCopy shortcutsActionMetadata];
    v82 = shortcutsActionMetadata;
    if (shortcutsActionMetadata)
    {
      dictionaryRepresentation = [shortcutsActionMetadata dictionaryRepresentation];
      [v41 addEntriesFromDictionary:dictionaryRepresentation];
      v58 = v81;
    }

    else
    {
      v58 = v81;
      if (v38)
      {
        goto LABEL_34;
      }

      if (v81)
      {
        dictionaryRepresentation = [v81 serializedRepresentation];
        v73 = *MEMORY[0x1E69E0908];
      }

      else
      {
        v73 = *MEMORY[0x1E69E0908];
        v91 = *MEMORY[0x1E69E0908];
        v92 = v85;
        dictionaryRepresentation = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      }

      v76 = [dictionaryRepresentation objectForKeyedSubscript:v73];

      if (v76)
      {
        v89 = @"ActionRequiresAppInstallation";
        v90 = MEMORY[0x1E695E118];
        v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v78 = [dictionaryRepresentation if_dictionaryByAddingEntriesFromDictionary:v77];

        [v41 setObject:v78 forKeyedSubscript:@"AppDefinition"];
        dictionaryRepresentation = v78;
      }
    }

LABEL_34:
    attributionBundleIdentifier2 = [metadataCopy attributionBundleIdentifier];
    shortcutsActionMetadata2 = [metadataCopy shortcutsActionMetadata];

    if (shortcutsActionMetadata2)
    {
      shortcutsActionMetadata3 = [metadataCopy shortcutsActionMetadata];
      v62 = [shortcutsActionMetadata3 attributionBundleIdentifierWithDefaultValue:attributionBundleIdentifier2];

      attributionBundleIdentifier2 = v62;
    }

    bundleIdentifier2 = [v88 bundleIdentifier];
    v64 = [metadataCopy wf_contentItemClassWithQueryMetadata:v87 appBundleIdentifier:bundleIdentifier2 displayedAppBundleIdentifier:attributionBundleIdentifier2];

    v65 = NSStringFromClass(v64);
    [v41 setObject:v65 forKeyedSubscript:@"WFContentItemClass"];

    bundleIdentifier3 = [v88 bundleIdentifier];
    actionIdentifier2 = [v88 actionIdentifier];
    v68 = WFShortcutsActionIdentifierFromLinkIdentifiers(bundleIdentifier3, actionIdentifier2);

    if ([v68 length])
    {
      defaultActionDefinition = [(WFActionProvider *)selfCopy defaultActionDefinition];
      v70 = [defaultActionDefinition definitionByAddingEntriesInDictionary:v41];

      v71 = [v79 alloc];
      serializedParameters = [v86 serializedParameters];
      v28 = [v71 initWithIdentifier:v68 queryMetadata:v87 entityMetadata:metadataCopy definition:v70 serializedParameters:serializedParameters appIntentDescriptor:v58 fullyQualifiedActionIdentifier:v88];
    }

    else
    {
      v70 = getWFAppIntentsLogObject();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        actionIdentifier3 = [v88 actionIdentifier];
        *buf = 136315394;
        v98 = "[WFLinkActionProvider linkContentItemFilterActionWithActionRequest:fullyQualifiedActionIdentifier:entityMetadata:queryMetadata:]";
        v99 = 2112;
        v100 = actionIdentifier3;
        _os_log_impl(&dword_1CA256000, v70, OS_LOG_TYPE_DEFAULT, "%s Couldn't create a filter action from Link ID %@", buf, 0x16u);
      }

      v28 = 0;
    }

    v26 = v84;

    requestCopy = v86;
    queryMetadataCopy = v87;
    bundleIdentifier = v85;
    goto LABEL_45;
  }

  v26 = getWFGeneralLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    actionIdentifier4 = [identifierCopy actionIdentifier];
    *buf = 136315394;
    v98 = "[WFLinkActionProvider linkContentItemFilterActionWithActionRequest:fullyQualifiedActionIdentifier:entityMetadata:queryMetadata:]";
    v99 = 2112;
    v100 = actionIdentifier4;
    _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_ERROR, "%s Could not find entity metadata for query: %@", buf, 0x16u);
  }

  v28 = 0;
LABEL_45:

  return v28;
}

- (id)linkActionWithActionRequest:(id)request fullyQualifiedActionIdentifier:(id)identifier forceLocalActionsOnly:(BOOL)only
{
  onlyCopy = only;
  v92[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  identifierCopy = identifier;
  bundleIdentifier = [identifierCopy bundleIdentifier];
  metadataProvider = [(WFLinkActionProvider *)self metadataProvider];
  v84 = identifierCopy;
  actionIdentifier = [identifierCopy actionIdentifier];
  v13 = [metadataProvider actionWithIdentifier:actionIdentifier fromBundleIdentifier:bundleIdentifier];

  v14 = [(WFLinkActionProvider *)self actionMetadataByUpdatingWithEnumAndEntityMetadata:v13 bundleIdentifier:bundleIdentifier];

  if (!v14)
  {
    v22 = 0;
    goto LABEL_47;
  }

  effectiveBundleIdentifiers = [v14 effectiveBundleIdentifiers];
  selfCopy = self;
  v83 = bundleIdentifier;
  v80 = onlyCopy;
  if ([effectiveBundleIdentifiers count] == 1)
  {
    effectiveBundleIdentifiers2 = [v14 effectiveBundleIdentifiers];
    firstObject = [effectiveBundleIdentifiers2 firstObject];
    if ([firstObject type] == 2)
    {
      effectiveBundleIdentifiers3 = [v14 effectiveBundleIdentifiers];
      firstObject2 = [effectiveBundleIdentifiers3 firstObject];
      bundleIdentifier2 = [firstObject2 bundleIdentifier];
      isEqualToString = objc_msgSend_isEqualToString_(bundleIdentifier2);

      self = selfCopy;
    }

    else
    {
      isEqualToString = 0;
    }

    bundleIdentifier = v83;
  }

  else
  {
    isEqualToString = 0;
  }

  effectiveBundleIdentifiers4 = [v14 effectiveBundleIdentifiers];
  if ([effectiveBundleIdentifiers4 count] == 1)
  {
    effectiveBundleIdentifiers5 = [v14 effectiveBundleIdentifiers];
    firstObject3 = [effectiveBundleIdentifiers5 firstObject];
    if ([firstObject3 type] == 3)
    {
      effectiveBundleIdentifiers6 = [v14 effectiveBundleIdentifiers];
      firstObject4 = [effectiveBundleIdentifiers6 firstObject];
      bundleIdentifier3 = [firstObject4 bundleIdentifier];
      v29 = objc_msgSend_isEqualToString_(bundleIdentifier3);

      self = selfCopy;
    }

    else
    {
      v29 = 0;
    }

    bundleIdentifier = v83;
  }

  else
  {
    v29 = 0;
  }

  v30 = isEqualToString | v29;
  if ((isEqualToString | v29))
  {
    v31 = 0;
  }

  else
  {
    v32 = [(WFLinkActionProvider *)self appDescriptorForActionRequest:requestCopy fullyQualifiedIdentifier:0 forceLocalActionsOnly:v80];
    if (v32)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v31 = v33;
  }

  actionIdentifier2 = [v84 actionIdentifier];
  v35 = WFShortcutsActionIdentifierForClassOverrideSearch(bundleIdentifier, actionIdentifier2);

  v36 = [WFLinkAction classForLinkActionWithIdentifier:v35 metadata:v14];
  if (!v36)
  {
    v36 = objc_opt_class();
  }

  v78 = v36;
  v37 = objc_opt_new();
  requiredCapabilities = [v14 requiredCapabilities];

  if (requiredCapabilities)
  {
    requiredCapabilities2 = [v14 requiredCapabilities];
    v40 = WFResourceDefinitionsForRequiredCapabilities(requiredCapabilities2);
    [v37 setObject:v40 forKeyedSubscript:@"RequiredResources"];
  }

  actionIdentifier3 = [v84 actionIdentifier];
  v42 = WFShortcutsActionIdentifierFromLinkIdentifiers(bundleIdentifier, actionIdentifier3);

  v81 = v42;
  if (v42)
  {
    v74 = v30;
    v76 = requestCopy;
    v77 = v31;
    deprecationMetadata = [v14 deprecationMetadata];
    replacedByIntentIdentifier = [deprecationMetadata replacedByIntentIdentifier];

    v79 = replacedByIntentIdentifier;
    if (replacedByIntentIdentifier)
    {
      metadataProvider2 = [(WFLinkActionProvider *)self metadataProvider];
      v46 = [metadataProvider2 actionWithIdentifier:replacedByIntentIdentifier fromBundleIdentifier:bundleIdentifier];
      title = [v46 title];

      [v37 setObject:title forKeyedSubscript:@"DiscontinuedReplacementTitle"];
      self = selfCopy;
    }

    v91[0] = @"DisabledOnPlatforms";
    availabilityAnnotations = [v14 availabilityAnnotations];
    v49 = [(WFLinkActionProvider *)self disabledOnPlatformsWithAvailability:availabilityAnnotations];
    v91[1] = @"Discontinued";
    v92[0] = v49;
    v50 = MEMORY[0x1E696AD98];
    deprecationMetadata2 = [v14 deprecationMetadata];
    if (deprecationMetadata2)
    {
      v52 = 1;
    }

    else
    {
      requestCopy = [v14 availabilityAnnotations];
      v52 = [(WFLinkActionProvider *)self isDiscontinuedWithAvailability:?];
    }

    v54 = [v50 numberWithInt:v52];
    v92[1] = v54;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
    [v37 addEntriesFromDictionary:v55];

    if (!deprecationMetadata2)
    {
    }

    systemProtocols = [v14 systemProtocols];
    audioRecordingProtocol = [MEMORY[0x1E69ACA50] audioRecordingProtocol];
    v58 = [systemProtocols containsObject:audioRecordingProtocol];

    if (v58)
    {
      [v37 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"MightStartAudioRecording"];
    }

    v53 = v81;
    v59 = WFLinkActionBundleIdentifierOverrides(v81);
    if (v59)
    {
      attributionBundleIdentifier = v59;
      v61 = selfCopy;
    }

    else
    {
      attributionBundleIdentifier = [v14 attributionBundleIdentifier];
      v61 = selfCopy;
      if (!attributionBundleIdentifier)
      {
        goto LABEL_42;
      }
    }

    v89 = *MEMORY[0x1E69E0908];
    v90 = attributionBundleIdentifier;
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    [v37 setObject:v62 forKeyedSubscript:@"LinkActionDisplayedAppDescriptor"];

LABEL_42:
    shortcutsActionMetadata = [v14 shortcutsActionMetadata];
    v75 = shortcutsActionMetadata;
    if (shortcutsActionMetadata)
    {
      dictionaryRepresentation = [shortcutsActionMetadata dictionaryRepresentation];
      [v37 addEntriesFromDictionary:dictionaryRepresentation];
    }

    else
    {
      if (v74)
      {
        goto LABEL_45;
      }

      if (v77)
      {
        dictionaryRepresentation = [v77 serializedRepresentation];
        v70 = *MEMORY[0x1E69E0908];
      }

      else
      {
        v70 = *MEMORY[0x1E69E0908];
        v87 = *MEMORY[0x1E69E0908];
        v88 = v83;
        dictionaryRepresentation = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      }

      v71 = [dictionaryRepresentation objectForKeyedSubscript:v70];

      if (v71)
      {
        v85 = @"ActionRequiresAppInstallation";
        v86 = MEMORY[0x1E695E118];
        v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v73 = [dictionaryRepresentation if_dictionaryByAddingEntriesFromDictionary:v72];

        [v37 setObject:v73 forKeyedSubscript:@"AppDefinition"];
        dictionaryRepresentation = v73;
        v61 = selfCopy;
      }
    }

LABEL_45:
    defaultActionDefinition = [(WFActionProvider *)v61 defaultActionDefinition];
    v66 = [defaultActionDefinition definitionByAddingEntriesInDictionary:v37];

    v67 = [v78 alloc];
    requestCopy = v76;
    serializedParameters = [v76 serializedParameters];
    v22 = [v67 initWithIdentifier:v81 metadata:v14 definition:v66 serializedParameters:serializedParameters appIntentDescriptor:v77 fullyQualifiedActionIdentifier:v84];

    v31 = v77;
    bundleIdentifier = v83;
    goto LABEL_46;
  }

  v22 = 0;
  v53 = 0;
LABEL_46:

LABEL_47:

  return v22;
}

- (id)availableActionIdentifiers
{
  metadataProvider = [(WFLinkActionProvider *)self metadataProvider];
  enumerations = [metadataProvider enumerations];

  metadataProvider2 = [(WFLinkActionProvider *)self metadataProvider];
  queries = [metadataProvider2 queries];

  metadataProvider3 = [(WFLinkActionProvider *)self metadataProvider];
  actions = [metadataProvider3 actions];

  metadataProvider4 = [(WFLinkActionProvider *)self metadataProvider];
  entities = [metadataProvider4 entities];

  v11 = objc_opt_new();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke;
  v25[3] = &unk_1E83801B8;
  v25[4] = self;
  v26 = v11;
  v12 = v11;
  [actions enumerateKeysAndObjectsUsingBlock:v25];
  v13 = objc_opt_new();
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_4;
  v22 = &unk_1E83801B8;
  selfCopy = self;
  v24 = v13;
  v14 = v13;
  [entities enumerateKeysAndObjectsUsingBlock:&v19];
  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v16 = [v12 arrayByAddingObjectsFromArray:{v14, v19, v20, v21, v22, selfCopy}];
  v17 = [v15 initWithArray:v16];

  return v17;
}

void __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_2;
  v9[3] = &unk_1E8380190;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
}

void __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_5;
  v9[3] = &unk_1E83801E0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
}

void __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_5(void **a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = a1[4];
  v5 = [v10 identifier];
  v6 = WFShortcutsActionIdentifierFromLinkIdentifiers(v4, v5);

  v7 = [a1[5] metadataProvider];
  v8 = [v10 identifier];
  v9 = [v7 defaultQueryForEntityIdentifier:v8 fromBundleIdentifier:a1[4]];

  if ([v6 length] && v9 && WFEntityQueryTypeForQueryMetadata(v9, v10, a1[4]))
  {
    [a1[6] addObject:v6];
  }
}

void __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 metadataProvider];
  v8 = WFEffectiveActionIdentifiersForActionMetadata(v6, v4, v7);

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_3;
  v9[3] = &unk_1E8380168;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  [v8 enumerateObjectsUsingBlock:v9];
}

void __50__WFLinkActionProvider_availableActionIdentifiers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = WFShortcutsActionIdentifierFromLinkIdentifiers(*(a1 + 32), a2);
  if ([v3 length])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (id)createAllAvailableActions
{
  [(WFLinkActionProvider *)self registerAllAvailableTypes];
  v5.receiver = self;
  v5.super_class = WFLinkActionProvider;
  createAllAvailableActions = [(WFActionProvider *)&v5 createAllAvailableActions];

  return createAllAvailableActions;
}

- (void)registerAllAvailableTypes
{
  metadataProvider = [(WFLinkActionProvider *)self metadataProvider];
  entities = [metadataProvider entities];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__WFLinkActionProvider_registerAllAvailableTypes__block_invoke;
  v5[3] = &unk_1E8380140;
  v5[4] = self;
  [entities enumerateKeysAndObjectsUsingBlock:v5];
}

void __49__WFLinkActionProvider_registerAllAvailableTypes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__WFLinkActionProvider_registerAllAvailableTypes__block_invoke_2;
  v7[3] = &unk_1E8380118;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __49__WFLinkActionProvider_registerAllAvailableTypes__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v4 = [v13 attributionBundleIdentifier];
  v5 = [v13 shortcutsActionMetadata];

  if (v5)
  {
    v6 = [v13 shortcutsActionMetadata];
    v7 = [v6 attributionBundleIdentifierWithDefaultValue:v4];

    v4 = v7;
  }

  v8 = [*(a1 + 32) metadataProvider];
  v9 = [v13 identifier];
  v10 = [v8 defaultQueryForEntityIdentifier:v9 fromBundleIdentifier:*(a1 + 40)];
  v11 = [v13 wf_contentItemClassWithQueryMetadata:v10 appBundleIdentifier:*(a1 + 40) displayedAppBundleIdentifier:v4];

  v12 = [MEMORY[0x1E6996D68] sharedRegistry];
  [v12 registerContentItemClass:v11];
}

- (id)actionMetadataByUpdatingWithEnumAndEntityMetadata:(id)metadata bundleIdentifier:(id)identifier
{
  v32 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  identifierCopy = identifier;
  v8 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = metadataCopy;
  obj = [metadataCopy parameters];
  v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        metadataProvider = [(WFLinkActionProvider *)self metadataProvider];
        valueType = [v13 valueType];
        v16 = _WFTypeSpecificAnnotationsForType(metadataProvider, valueType, identifierCopy);

        if (v16)
        {
          typeSpecificMetadata = [v13 typeSpecificMetadata];

          if (typeSpecificMetadata)
          {
            typeSpecificMetadata2 = [v13 typeSpecificMetadata];
            v19 = [typeSpecificMetadata2 if_dictionaryByAddingEntriesFromDictionary:v16];

            v16 = v19;
          }

          v20 = [v16 copy];
          v21 = [v13 wf_parameterMetadataWithTypeSpecificMetadata:v20];

          [v8 addObject:v21];
        }

        else
        {
          [v8 addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v22 = [v8 copy];
  v23 = [v25 actionMetadataWithParameters:v22];

  return v23;
}

- (id)createActionsForBundleIdentifier:(id)identifier
{
  v56 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = objc_opt_new();
  metadataProvider = [(WFLinkActionProvider *)self metadataProvider];
  v7 = [metadataProvider entitiesForBundleIdentifier:identifierCopy];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v51;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v50 + 1) + 8 * i);
        metadataProvider2 = [(WFLinkActionProvider *)self metadataProvider];
        identifier = [v12 identifier];
        v15 = [metadataProvider2 defaultQueryForEntityIdentifier:identifier fromBundleIdentifier:identifierCopy];

        if (v15 && WFEntityQueryTypeForQueryMetadata(v15, v12, identifierCopy))
        {
          identifier2 = [v12 identifier];
          [v5 addObject:identifier2];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v9);
  }

  metadataProvider3 = [(WFLinkActionProvider *)self metadataProvider];
  v18 = [metadataProvider3 actionsForBundleIdentifier:identifierCopy];

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __57__WFLinkActionProvider_createActionsForBundleIdentifier___block_invoke;
  v46[3] = &unk_1E83800D0;
  v19 = identifierCopy;
  v47 = v19;
  selfCopy = self;
  v20 = v5;
  v49 = v20;
  v40 = v18;
  [v18 enumerateObjectsUsingBlock:v46];
  v21 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = v20;
  v22 = [v20 copy];
  v23 = [v22 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v43;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = WFShortcutsActionIdentifierFromLinkIdentifiers(v19, *(*(&v42 + 1) + 8 * j));
        if (v27)
        {
          v28 = [v21 objectForKeyedSubscript:v27];

          if (!v28)
          {
            v29 = [[WFActionRequest alloc] initWithActionIdentifier:v27 serializedParameters:0];
            actionIdentifier = [(WFActionRequest *)v29 actionIdentifier];
            [v21 setObject:v29 forKeyedSubscript:actionIdentifier];
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v24);
  }

  allValues = [v21 allValues];
  [(WFLinkActionProvider *)self createActionsForRequests:allValues forceLocalActionsOnly:0];

  allValues2 = [v21 allValues];
  v33 = [allValues2 if_compactMap:&__block_literal_global_295];

  v34 = [MEMORY[0x1E695DFD8] setWithArray:v33];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = objc_opt_new();
  }

  v37 = v36;

  return v37;
}

void __57__WFLinkActionProvider_createActionsForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 metadataProvider];
  v7 = WFEffectiveActionIdentifiersForActionMetadata(v5, v3, v6);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__WFLinkActionProvider_createActionsForBundleIdentifier___block_invoke_2;
  v8[3] = &unk_1E83800A8;
  v9 = *(a1 + 48);
  [v7 enumerateObjectsUsingBlock:v8];
}

- (id)definitionForMissingActionWithSerializedParameters:(id)parameters
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [parameters objectForKey:@"AppIntentDescriptor"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [WFActionDefinition alloc];
    v8 = @"AppDefinition";
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [(WFActionDefinition *)v4 initWithDictionary:v5];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)createActionsForRequests:(id)requests allowsActionInDenyList:(BOOL)list forceLocalActionsOnly:(BOOL)only
{
  v86 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  onlyCopy = only;
  v7 = [WFLinkActionProvider resolvedActionIdentifiersForActionRequests:"resolvedActionIdentifiersForActionRequests:forceLocalActionsOnly:" forceLocalActionsOnly:?];
  v8 = MEMORY[0x1E695DFD8];
  v9 = [v7 if_compactMap:&__block_literal_global_267];
  v10 = [v8 setWithArray:v9];

  selfCopy = self;
  metadataProvider = [(WFLinkActionProvider *)self metadataProvider];
  v50 = v7;
  v49 = [metadataProvider actionsWithFullyQualifiedIdentifiers:v7];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v10;
  v55 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
  if (v55)
  {
    v54 = *v74;
    v12 = 0x1E6996000uLL;
    do
    {
      v13 = 0;
      do
      {
        if (*v74 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v57 = v13;
        v14 = *(*(&v73 + 1) + 8 * v13);
        metadataProvider2 = [(WFLinkActionProvider *)selfCopy metadataProvider];
        v16 = [metadataProvider2 enumerationsForBundleIdentifier:v14];

        v71 = 0u;
        v72 = 0u;
        v70 = 0u;
        v69 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v69 objects:v84 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v70;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v70 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [*(*(&v69 + 1) + 8 * i) wf_contentItemClassWithAppBundleIdentifier:v14];
              sharedRegistry = [*(v12 + 3432) sharedRegistry];
              [sharedRegistry registerContentItemClass:v22];
            }

            v19 = [v17 countByEnumeratingWithState:&v69 objects:v84 count:16];
          }

          while (v19);
        }

        v56 = v17;

        metadataProvider3 = [(WFLinkActionProvider *)selfCopy metadataProvider];
        v25 = [metadataProvider3 entitiesForBundleIdentifier:v14];

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v58 = v25;
        v26 = [v58 countByEnumeratingWithState:&v65 objects:v83 count:16];
        if (v26)
        {
          v27 = v26;
          v59 = *v66;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v66 != v59)
              {
                objc_enumerationMutation(v58);
              }

              v29 = v12;
              v30 = *(*(&v65 + 1) + 8 * j);
              attributionBundleIdentifier = [v30 attributionBundleIdentifier];
              fullyQualifiedTypeName = [v30 fullyQualifiedTypeName];
              if ([fullyQualifiedTypeName length])
              {
                fullyQualifiedTypeName2 = [v30 fullyQualifiedTypeName];
                v34 = [&unk_1F4A9A040 objectForKey:fullyQualifiedTypeName2];

                if (v34)
                {
                  v35 = getWFAppIntentsLogObject();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                  {
                    fullyQualifiedTypeName3 = [v30 fullyQualifiedTypeName];
                    fullyQualifiedTypeName4 = [v30 fullyQualifiedTypeName];
                    v38 = [&unk_1F4A9A040 objectForKey:fullyQualifiedTypeName4];
                    *buf = 136315650;
                    v78 = "[WFLinkActionProvider createActionsForRequests:allowsActionInDenyList:forceLocalActionsOnly:]";
                    v79 = 2112;
                    v80 = fullyQualifiedTypeName3;
                    v81 = 2112;
                    v82 = v38;
                    _os_log_impl(&dword_1CA256000, v35, OS_LOG_TYPE_DEBUG, "%s Overriding entity attribution bundle identifier for '%@' with '%@'", buf, 0x20u);
                  }

                  fullyQualifiedTypeName5 = [v30 fullyQualifiedTypeName];
                  v40 = [&unk_1F4A9A040 objectForKey:fullyQualifiedTypeName5];
                  goto LABEL_26;
                }
              }

              else
              {
              }

              shortcutsActionMetadata = [v30 shortcutsActionMetadata];

              if (!shortcutsActionMetadata)
              {
                goto LABEL_27;
              }

              fullyQualifiedTypeName5 = [v30 shortcutsActionMetadata];
              v40 = [fullyQualifiedTypeName5 attributionBundleIdentifierWithDefaultValue:attributionBundleIdentifier];
LABEL_26:
              v42 = v40;

              attributionBundleIdentifier = v42;
LABEL_27:
              metadataProvider4 = [(WFLinkActionProvider *)selfCopy metadataProvider];
              identifier = [v30 identifier];
              v45 = [metadataProvider4 defaultQueryForEntityIdentifier:identifier fromBundleIdentifier:v14];
              v46 = [v30 wf_contentItemClassWithQueryMetadata:v45 appBundleIdentifier:v14 displayedAppBundleIdentifier:attributionBundleIdentifier];

              v12 = v29;
              sharedRegistry2 = [*(v29 + 3432) sharedRegistry];
              [sharedRegistry2 registerContentItemClass:v46];
            }

            v27 = [v58 countByEnumeratingWithState:&v65 objects:v83 count:16];
          }

          while (v27);
        }

        v13 = v57 + 1;
      }

      while (v57 + 1 != v55);
      v55 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
    }

    while (v55);
  }

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __94__WFLinkActionProvider_createActionsForRequests_allowsActionInDenyList_forceLocalActionsOnly___block_invoke_282;
  v61[3] = &unk_1E8380078;
  v62 = v50;
  v63 = selfCopy;
  v64 = onlyCopy;
  v48 = v50;
  [requestsCopy enumerateObjectsUsingBlock:v61];
}

void __94__WFLinkActionProvider_createActionsForRequests_allowsActionInDenyList_forceLocalActionsOnly___block_invoke_282(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  context = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v7 = [v6 bundleIdentifier];
  v8 = [v6 actionIdentifier];
  v9 = [*(a1 + 40) metadataProvider];
  v10 = [v6 actionIdentifier];
  v11 = [v9 actionWithIdentifier:v10 fromBundleIdentifier:v7];

  v12 = *(a1 + 40);
  if (!v11)
  {
    v14 = [v12 metadataProvider];
    v15 = [v14 defaultQueryForEntityIdentifier:v8 fromBundleIdentifier:v7];

    v16 = [*(a1 + 40) metadataProvider];
    v25 = [v16 entityWithIdentifier:v8 fromBundleIdentifier:v7];

    if (v15 && WFEntityQueryTypeForQueryMetadata(v15, v25, v7))
    {
      v17 = [*(a1 + 40) linkContentItemFilterActionWithActionRequest:v5 fullyQualifiedActionIdentifier:v6 entityMetadata:v25 queryMetadata:v15];
      v18 = getWFActionsLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "[WFLinkActionProvider createActionsForRequests:allowsActionInDenyList:forceLocalActionsOnly:]_block_invoke";
        v29 = 2112;
        v30 = v17;
        _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_DEFAULT, "%s Created WFLinkContentItemFilterAction: %@", buf, 0x16u);
      }

      if (v17)
      {
        [v5 setResult:v17];
      }
    }

    if (objc_msgSend_isEqualToString_(v8))
    {
      v19 = [*(a1 + 40) settingUpdaterActionForActionRequest:v5 fullyQualifiedActionIdentifier:v6 localActionsOnly:*(a1 + 48)];
    }

    else if (objc_msgSend_isEqualToString_(v8))
    {
      v19 = [*(a1 + 40) getAppSettingActionForRequest:v5 fullyQualifiedActionIdentifier:v6 localActionsOnly:*(a1 + 48)];
    }

    else
    {
      v24 = [v5 actionIdentifier];
      v20 = [v24 componentsSeparatedByString:@"-"];
      v21 = [v20 lastObject];
      isEqualToString = objc_msgSend_isEqualToString_(v21);

      if (!isEqualToString)
      {
LABEL_20:

        goto LABEL_21;
      }

      v19 = [*(a1 + 40) targetedEntityUpdaterActionForRequest:v5 fullyQualifiedActionIdentifier:v6 localActionsOnly:*(a1 + 48)];
    }

    v23 = v19;
    if (v19)
    {
      [v5 setResult:v19];
    }

    goto LABEL_20;
  }

  v13 = [v12 linkActionWithActionRequest:v5 fullyQualifiedActionIdentifier:v6 forceLocalActionsOnly:*(a1 + 48)];
  if (v13)
  {
    [v5 setResult:v13];
  }

LABEL_21:

  objc_autoreleasePoolPop(context);
}

- (id)appDescriptorForActionRequest:(id)request fullyQualifiedIdentifier:(id *)identifier forceLocalActionsOnly:(BOOL)only
{
  if (only)
  {
    requestCopy = request;
    actionIdentifier = [requestCopy actionIdentifier];

    v8 = WFLinkActionIdentifierFromShortcutsActionIdentifier(actionIdentifier);

    if (identifier)
    {
      v9 = v8;
      *identifier = v8;
    }

    v10 = [objc_alloc(MEMORY[0x1E696E740]) initWithFullyQualifiedActionIdentifier:v8];
  }

  else
  {
    requestCopy2 = request;
    os_unfair_lock_lock(&self->_actionRequestsLock);
    actionIdentifier2 = [requestCopy2 actionIdentifier];
    v8 = WFLinkActionIdentifierFromShortcutsActionIdentifier(actionIdentifier2);

    serializedParameters = [requestCopy2 serializedParameters];

    v15 = [serializedParameters objectForKey:@"AppIntentDescriptor"];

    if (v15 && [(WFLinkActionProvider *)self serializedAppIntentDescriptorIsValid:v15])
    {
      v16 = [objc_alloc(MEMORY[0x1E696E740]) initWithSerializedRepresentation:v15];
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x1E696E740]) initWithFullyQualifiedActionIdentifier:v8];
    }

    v17 = v16;
    mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
    metadataProvider = [(WFLinkActionProvider *)self metadataProvider];
    allActionsIfAvailable = [metadataProvider allActionsIfAvailable];
    metadataProvider2 = [(WFLinkActionProvider *)self metadataProvider];
    allEntitiesIfAvailable = [metadataProvider2 allEntitiesIfAvailable];
    v23 = [mEMORY[0x1E696E748] resolvedAppIntentMatchingDescriptor:v17 availableActions:allActionsIfAvailable availableEntities:allEntitiesIfAvailable];

    if (v23 && ([v23 intentIdentifier], (v24 = objc_claimAutoreleasedReturnValue()) != 0) && (v25 = v24, objc_msgSend(v23, "bundleIdentifier"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26))
    {
      v27 = objc_alloc(MEMORY[0x1E69AC860]);
      intentIdentifier = [v23 intentIdentifier];
      bundleIdentifier = [v23 bundleIdentifier];
      v30 = [v27 initWithActionIdentifier:intentIdentifier bundleIdentifier:bundleIdentifier];
    }

    else
    {
      v30 = v8;
    }

    if (identifier)
    {
      v31 = v30;
      *identifier = v30;
    }

    os_unfair_lock_unlock(&self->_actionRequestsLock);
    if (v23)
    {
      v32 = v23;
    }

    else
    {
      v32 = v17;
    }

    v10 = v32;
  }

  return v10;
}

- (id)resolvedActionIdentifiersForActionRequests:(id)requests forceLocalActionsOnly:(BOOL)only
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__WFLinkActionProvider_resolvedActionIdentifiersForActionRequests_forceLocalActionsOnly___block_invoke;
  v6[3] = &unk_1E8380028;
  v6[4] = self;
  onlyCopy = only;
  v4 = [requests if_compactMap:v6];

  return v4;
}

id __89__WFLinkActionProvider_resolvedActionIdentifiersForActionRequests_forceLocalActionsOnly___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v9 = 0;
  v6 = [v5 appDescriptorForActionRequest:v3 fullyQualifiedIdentifier:&v9 forceLocalActionsOnly:*(a1 + 40)];
  v7 = v9;
  objc_autoreleasePoolPop(v4);

  return v7;
}

- (BOOL)serializedAppIntentDescriptorIsValid:(id)valid
{
  v3 = *MEMORY[0x1E69E0908];
  validCopy = valid;
  v5 = [validCopy objectForKey:v3];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [validCopy objectForKey:*MEMORY[0x1E69E08F8]];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  LOBYTE(v8) = 0;
  if (v7 && v10)
  {
    v11 = [&unk_1F4A9A068 objectForKeyedSubscript:v7];
    LODWORD(v8) = [v11 containsObject:v10] ^ 1;
  }

  return v8;
}

- (WFLinkActionProvider)initWithMetadataProvider:(id)provider
{
  v28 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = WFLinkActionProvider;
  v3 = [(WFLinkActionProvider *)&v25 init];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_get_global_queue(21, 0);
    v6 = dispatch_queue_create_with_target_V2("com.apple.shortcuts.WFLinkActionProvider", v4, v5);
    queue = v3->_queue;
    v3->_queue = v6;

    v8 = objc_opt_new();
    systemAppMapper = v3->_systemAppMapper;
    v3->_systemAppMapper = v8;

    v3->_actionRequestsLock._os_unfair_lock_opaque = 0;
    mEMORY[0x1E69E0970] = [MEMORY[0x1E69E0970] sharedProvider];
    metadataProvider = v3->_metadataProvider;
    v3->_metadataProvider = mEMORY[0x1E69E0970];

    v12 = NSClassFromString(&cfstr_Wfactionkitsta.isa);
    v13 = MEMORY[0x1E69E0FB0];
    if (v12)
    {
      v14 = [MEMORY[0x1E696AAE8] bundleForClass:v12];
      v15 = *v13;
      v24 = 0;
      [WFLinkMetadataRegistrationHelper registerWithBundle:v14 forBundleIdentifier:v15 error:&v24];
      if (v24)
      {
        v16 = getWFActionsLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v27 = "[WFLinkActionProvider initWithMetadataProvider:]";
          _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Failed to register ActionKit metadata for built-in actions", buf, 0xCu);
        }
      }
    }

    v17 = NSClassFromString(&cfstr_Vcvoiceshortcu_10.isa);
    if (v17)
    {
      v18 = [MEMORY[0x1E696AAE8] bundleForClass:v17];
      v19 = *v13;
      v23 = 0;
      [WFLinkMetadataRegistrationHelper registerWithBundle:v18 forBundleIdentifier:v19 error:&v23];
      if (v23)
      {
        v20 = getWFActionsLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v27 = "[WFLinkActionProvider initWithMetadataProvider:]";
          _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s Failed to register VoiceShortcutClient metadata for built-in actions", buf, 0xCu);
        }
      }
    }

    v21 = v3;
  }

  return v3;
}

@end