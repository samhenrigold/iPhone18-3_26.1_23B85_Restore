@interface CPSUtilities
+ (BOOL)_associatedDomainIsApprovedForURL:(id)l applicationIdentifier:(id)identifier serviceType:(id)type;
+ (BOOL)deviceHasCapabilities:(id)capabilities;
+ (BOOL)deviceHasHomeButton;
+ (BOOL)deviceIsPad;
+ (BOOL)isBundleIdentifierBeingInstalled:(id)installed;
+ (BOOL)isNetworkConstrained;
+ (BOOL)shouldPlayHaptics;
+ (id)localizedDeviceName;
+ (id)lowercasedDeviceFamilyName;
+ (id)openURL:(id)l withOptions:(id)options;
+ (id)oppositeDeviceFamilyName;
+ (id)osVersion;
+ (id)poweredByCaptionForAppName:(id)name;
+ (id)productVariants;
+ (id)versionIdentifierForAppWithBundleIdentifier:(id)identifier isPlaceholder:(BOOL *)placeholder;
+ (int)_deviceClass;
+ (void)openAppWithBundleIdentifier:(id)identifier;
+ (void)openURL:(id)l inAppWithBundleIdentifier:(id)identifier promptForUnlock:(BOOL)unlock originIsControlCenter:(BOOL)center completionHandler:(id)handler;
+ (void)uninstallAppWithBundleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CPSUtilities

+ (id)openURL:(id)l withOptions:(id)options
{
  v5 = MEMORY[0x277CC1E80];
  optionsCopy = options;
  lCopy = l;
  defaultWorkspace = [v5 defaultWorkspace];
  v12 = 0;
  [defaultWorkspace openURL:lCopy withOptions:optionsCopy error:&v12];

  v9 = v12;
  v10 = v12;

  return v9;
}

+ (void)openURL:(id)l inAppWithBundleIdentifier:(id)identifier promptForUnlock:(BOOL)unlock originIsControlCenter:(BOOL)center completionHandler:(id)handler
{
  centerCopy = center;
  unlockCopy = unlock;
  lCopy = l;
  identifierCopy = identifier;
  handlerCopy = handler;
  v14 = objc_alloc(MEMORY[0x277CC1EF0]);
  v15 = [v14 initWithActivityType:*MEMORY[0x277CCA850]];
  [v15 setWebpageURL:lCopy];
  v16 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:identifierCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:unlockCopy];
  [dictionary setObject:v18 forKeyedSubscript:*MEMORY[0x277D0AC58]];

  if (centerCopy)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v19 = getCCUIAppLaunchOriginControlCenterSymbolLoc_ptr;
    v28 = getCCUIAppLaunchOriginControlCenterSymbolLoc_ptr;
    if (!getCCUIAppLaunchOriginControlCenterSymbolLoc_ptr)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __getCCUIAppLaunchOriginControlCenterSymbolLoc_block_invoke;
      v24[3] = &unk_278DCDC00;
      v24[4] = &v25;
      __getCCUIAppLaunchOriginControlCenterSymbolLoc_block_invoke(v24);
      v19 = v26[3];
    }

    _Block_object_dispose(&v25, 8);
    if (!v19)
    {
      +[CPSUtilities openURL:inAppWithBundleIdentifier:promptForUnlock:originIsControlCenter:completionHandler:];
    }

    [dictionary setObject:*v19 forKeyedSubscript:*MEMORY[0x277D0AC28]];
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __106__CPSUtilities_openURL_inAppWithBundleIdentifier_promptForUnlock_originIsControlCenter_completionHandler___block_invoke;
  v22[3] = &unk_278DCDB60;
  v23 = handlerCopy;
  v21 = handlerCopy;
  [defaultWorkspace openUserActivity:v15 withApplicationProxy:v16 options:dictionary completionHandler:v22];
}

+ (void)openAppWithBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CC1E80];
  identifierCopy = identifier;
  defaultWorkspace = [v3 defaultWorkspace];
  [defaultWorkspace openApplicationWithBundleID:identifierCopy];
}

+ (id)versionIdentifierForAppWithBundleIdentifier:(id)identifier isPlaceholder:(BOOL *)placeholder
{
  v5 = MEMORY[0x277CC1E70];
  identifierCopy = identifier;
  v7 = [[v5 alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];

  if (placeholder)
  {
    *placeholder = [v7 isPlaceholder];
  }

  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    iTunesMetadata = [v7 iTunesMetadata];
    v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "versionIdentifier")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)uninstallAppWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = CPS_LOG_CHANNEL_PREFIXClipServices(completionCopy, v7);
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UninstallClip", "start uninstall clip", buf, 2u);
  }

  v9 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];
  appClipMetadata = [v9 appClipMetadata];

  if (appClipMetadata)
  {
    v13 = MEMORY[0x277D1C148];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__CPSUtilities_uninstallAppWithBundleIdentifier_completion___block_invoke;
    v16[3] = &unk_278DCDBB0;
    v17 = identifierCopy;
    v18 = completionCopy;
    [v13 uninstallAppWithBundleID:v17 requestUserConfirmation:0 completion:v16];

    v14 = v17;
LABEL_8:

    goto LABEL_9;
  }

  v15 = CPS_LOG_CHANNEL_PREFIXClipServices(v11, v12);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [CPSUtilities uninstallAppWithBundleIdentifier:identifierCopy completion:v15];
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (completionCopy)
  {
LABEL_7:
    v14 = [MEMORY[0x277CCA9B8] cps_errorWithCode:1];
    (*(completionCopy + 2))(completionCopy, v14);
    goto LABEL_8;
  }

LABEL_9:
}

void __60__CPSUtilities_uninstallAppWithBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = CPS_LOG_CHANNEL_PREFIXClipServices(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __60__CPSUtilities_uninstallAppWithBundleIdentifier_completion___block_invoke_cold_1(a1, v6, v3);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v11 = 138477827;
    v12 = v8;
    _os_log_impl(&dword_2436ED000, v6, OS_LOG_TYPE_INFO, "CPSUtilities: successfully uninstalled app %{private}@", &v11, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v9 = (*(v9 + 16))(v9, v3);
  }

  v10 = CPS_LOG_CHANNEL_PREFIXClipServices(v9, v7);
  if (os_signpost_enabled(v10))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_2436ED000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "UninstallClip", "end uninstall clip", &v11, 2u);
  }
}

+ (id)poweredByCaptionForAppName:(id)name
{
  v3 = MEMORY[0x277CCACA8];
  nameCopy = name;
  v5 = _CPSLocalizedString(@"Powered by %@", &_CPSLocalizableStringsBundleOnceToken, &_CPSLocalizableStringsBundle);
  nameCopy = [v3 stringWithFormat:v5, nameCopy];

  return nameCopy;
}

+ (int)_deviceClass
{
  if (_deviceClass_onceToken != -1)
  {
    +[CPSUtilities _deviceClass];
  }

  return _deviceClass_deviceClass;
}

uint64_t __28__CPSUtilities__deviceClass__block_invoke()
{
  result = MGGetSInt32Answer();
  _deviceClass_deviceClass = result;
  return result;
}

+ (id)localizedDeviceName
{
  if (localizedDeviceName_onceToken != -1)
  {
    +[CPSUtilities localizedDeviceName];
  }

  v3 = localizedDeviceName_localizedDeviceName;

  return v3;
}

uint64_t __35__CPSUtilities_localizedDeviceName__block_invoke()
{
  localizedDeviceName_localizedDeviceName = MGGetStringAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (id)lowercasedDeviceFamilyName
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CPSUtilities_lowercasedDeviceFamilyName__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (lowercasedDeviceFamilyName_onceToken != -1)
  {
    dispatch_once(&lowercasedDeviceFamilyName_onceToken, block);
  }

  v2 = lowercasedDeviceFamilyName_lowercasedDeviceFamilyName;

  return v2;
}

void __42__CPSUtilities_lowercasedDeviceFamilyName__block_invoke(uint64_t a1)
{
  v1 = [objc_opt_class() _deviceClass];
  if (v1 == 1)
  {
    v2 = @"iphone";
  }

  else
  {
    if (v1 != 3)
    {
      return;
    }

    v2 = @"ipad";
  }

  v3 = lowercasedDeviceFamilyName_lowercasedDeviceFamilyName;
  lowercasedDeviceFamilyName_lowercasedDeviceFamilyName = v2;
}

+ (id)oppositeDeviceFamilyName
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CPSUtilities_oppositeDeviceFamilyName__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (oppositeDeviceFamilyName_onceToken != -1)
  {
    dispatch_once(&oppositeDeviceFamilyName_onceToken, block);
  }

  v2 = oppositeDeviceFamilyName_oppositeDeviceFamilyName;

  return v2;
}

void __40__CPSUtilities_oppositeDeviceFamilyName__block_invoke(uint64_t a1)
{
  v1 = [objc_opt_class() _deviceClass];
  if (v1 == 1)
  {
    v2 = @"iPad";
  }

  else
  {
    if (v1 != 3)
    {
      return;
    }

    v2 = @"iPhone";
  }

  v3 = oppositeDeviceFamilyName_oppositeDeviceFamilyName;
  oppositeDeviceFamilyName_oppositeDeviceFamilyName = v2;
}

+ (BOOL)deviceIsPad
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__CPSUtilities_deviceIsPad__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (deviceIsPad_onceToken != -1)
  {
    dispatch_once(&deviceIsPad_onceToken, block);
  }

  return deviceIsPad_isPad;
}

void *__27__CPSUtilities_deviceIsPad__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _deviceClass];
  deviceIsPad_isPad = result == 3;
  return result;
}

+ (BOOL)deviceHasHomeButton
{
  if (deviceHasHomeButton_onceToken != -1)
  {
    +[CPSUtilities deviceHasHomeButton];
  }

  return deviceHasHomeButton_hasHomeButton;
}

uint64_t __35__CPSUtilities_deviceHasHomeButton__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceHasHomeButton_hasHomeButton = result != 2;
  return result;
}

+ (BOOL)shouldPlayHaptics
{
  if (shouldPlayHaptics_onceToken != -1)
  {
    +[CPSUtilities shouldPlayHaptics];
  }

  if (shouldPlayHaptics_supportsHaptics != 1)
  {
    return 0;
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"effects-haptic", @"com.apple.preferences.sounds", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 0;
  }

  return !v3;
}

uint64_t __33__CPSUtilities_shouldPlayHaptics__block_invoke()
{
  result = MGGetBoolAnswer();
  shouldPlayHaptics_supportsHaptics = result;
  return result;
}

+ (BOOL)isBundleIdentifierBeingInstalled:(id)installed
{
  v3 = [MEMORY[0x277D1C148] existingCoordinatorForAppWithBundleID:installed error:0];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)isNetworkConstrained
{
  mEMORY[0x277CD9200] = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  path = [mEMORY[0x277CD9200] path];
  isConstrained = [path isConstrained];

  return isConstrained;
}

+ (BOOL)deviceHasCapabilities:(id)capabilities
{
  v15 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  if ([capabilitiesCopy count])
  {
    v4 = [capabilitiesCopy safari_filterObjectsUsingBlock:&__block_literal_global_51];

    v5 = MGCopyMultipleAnswers();
    v6 = [v5 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_55];
    v7 = [v6 count];
    v8 = [v4 count];
    v10 = v7 == v8;
    if (!v10)
    {
      v11 = CPS_LOG_CHANNEL_PREFIXClipServices(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_2436ED000, v11, OS_LOG_TYPE_INFO, "CPSUtilities: app clip requires capabilities that is not supported by this device [ %@].", &v13, 0xCu);
      }
    }
  }

  else
  {
    v10 = 1;
    v4 = capabilitiesCopy;
  }

  return v10;
}

uint64_t __38__CPSUtilities_deviceHasCapabilities___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB68];
  v3 = a2;
  v4 = [v2 null];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

void *__38__CPSUtilities_deviceHasCapabilities___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 BOOLValue])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (BOOL)_associatedDomainIsApprovedForURL:(id)l applicationIdentifier:(id)identifier serviceType:(id)type
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typeCopy = type;
  if (l)
  {
    v9 = [MEMORY[0x277CCACE0] componentsWithURL:l resolvingAgainstBaseURL:1];
    host = [v9 host];
    if (host)
    {
      v11 = [objc_alloc(MEMORY[0x277D547B0]) initWithServiceType:typeCopy applicationIdentifier:identifierCopy domain:0];
      [MEMORY[0x277D547A8] serviceDetailsWithServiceSpecifier:v11 error:0];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v24 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v20 = v11;
        v14 = *v22;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            if ([v16 isApproved])
            {
              serviceSpecifier = [v16 serviceSpecifier];
              v18 = [serviceSpecifier domainEncompassesDomain:host];

              if (v18)
              {
                LOBYTE(v13) = 1;
                goto LABEL_16;
              }
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

LABEL_16:
        v11 = v20;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

+ (id)productVariants
{
  if (productVariants_onceToken != -1)
  {
    +[CPSUtilities productVariants];
  }

  v3 = productVariants_productVariants;

  return v3;
}

uint64_t __31__CPSUtilities_productVariants__block_invoke()
{
  productVariants_productVariants = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (id)osVersion
{
  if (osVersion_onceToken != -1)
  {
    +[CPSUtilities osVersion];
  }

  v3 = osVersion_productVersion;

  return v3;
}

uint64_t __25__CPSUtilities_osVersion__block_invoke()
{
  osVersion_productVersion = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

+ (void)openURL:inAppWithBundleIdentifier:promptForUnlock:originIsControlCenter:completionHandler:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCCUIAppLaunchOriginControlCenter(void)"];
  [v0 handleFailureInFunction:v1 file:@"CPSUtilities.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)uninstallAppWithBundleIdentifier:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "CPSUtilities: Not an app clip (%{private}@). Skipping deletion.", &v2, 0xCu);
}

void __60__CPSUtilities_uninstallAppWithBundleIdentifier_completion___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  v7 = 138478083;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_2436ED000, v5, OS_LOG_TYPE_ERROR, "CPSUtilities: Error in uninstalling app %{private}@: %{public}@", &v7, 0x16u);
}

@end