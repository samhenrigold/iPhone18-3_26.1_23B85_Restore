@interface LSApplicationRecord
+ (BOOL)isAnyRegisteredApplicationInstalledFromDistributorOrWeb;
+ (id)_alternateIconQueue;
+ (id)_propertyClasses;
+ (id)applicationRecordsForUserActivityDomainName:(id)name limit:(unint64_t)limit error:(id *)error;
+ (id)applicationRecordsForUserActivityType:(id)type limit:(unint64_t)limit error:(id *)error;
+ (id)displayOrderEnumeratorForViableDefaultAppsForCategory:(unint64_t)category options:(unint64_t)options;
+ (id)enumeratorForApplicationsOnSameVolumeWithinDirectoryAtURL:(id)l enumerationOptions:(unint64_t)options filteringOptions:(unint64_t)filteringOptions;
+ (id)enumeratorForViableDefaultAppsForCategory:(unint64_t)category options:(unint64_t)options;
+ (id)enumeratorOnVolumeAtURL:(id)l options:(unint64_t)options;
+ (id)enumeratorWithOptions:(unint64_t)options;
+ (id)personalPersonaAttributes;
+ (id)redactedProperties;
+ (id)remotePlaceholderEnumerator;
+ (id)systemPlaceholderEnumerator;
+ (void)setUpdateAvailabilityForApplicationsWithBundleIdentifiers:(id)identifiers completionHandler:(id)handler;
- (BOOL)canHandleWebAuthentication;
- (BOOL)getGenericTranslocationTargetURL:(id *)l error:(id *)error;
- (BOOL)isAppStoreVendableWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (BOOL)isDeletableSystemApplicationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (BOOL)isDeletableWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (BOOL)isEligibleMailClient;
- (BOOL)isEligibleWebBrowser;
- (BOOL)isInstalledFromDistributorOrWeb;
- (BOOL)mayBeBUIVisible;
- (BOOL)supportsMultiwindow;
- (LSApplicationRecord)initWithBundleIdentifierOfCompanionApplication:(id)application error:(id *)error;
- (LSApplicationRecord)initWithCoder:(id)coder;
- (LSApplicationRecord)initWithStoreItemIdentifier:(unint64_t)identifier error:(id *)error;
- (LSApplicationRecord)initWithURL:(id)l fetchingPlaceholder:(int64_t)placeholder error:(id *)error;
- (LSApplicationRecord)linkedParentApplication;
- (NSArray)identities;
- (NSArray)spotlightActions;
- (NSDictionary)additionalEnvironmentVariables;
- (NSNumber)eligibilityDeletionDomain;
- (NSNumber)supportsGameMode;
- (NSString)alternateIconName;
- (NSString)jobLabel;
- (NSString)journalNotificationURLFormatString;
- (NSUUID)deviceIdentifierForAdvertising;
- (NSUUID)deviceIdentifierForVendor;
- (id)VPNPluginsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)_compatibilityObjectWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes;
- (id)_defaultCategoryTypeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)_initWithBundleIdentifier:(id)identifier placeholder:(BOOL)placeholder error:(id *)error;
- (id)_initWithContext:(LSContext *)context bundleID:(unsigned int)d bundleData:(const LSBundleData *)data error:(id *)error;
- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length;
- (id)_initWithNode:(id)node bundleIdentifier:(id)identifier context:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD bundleBaseData:(const LSBundleBaseData *)data error:(id *)error;
- (id)_initWithNode:(id)node bundleIdentifier:(id)identifier placeholderBehavior:(int64_t)behavior systemPlaceholder:(BOOL)placeholder itemID:(unint64_t)d forceInBundleContainer:(BOOL)container context:(LSContext *)context error:(id *)self0;
- (id)_linkedParentApplicationBundleIDWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)_localizedNamesWithContextWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)_persistentIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes;
- (id)_personasWithAttributesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)appClipMetadataWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)appStoreToolsBuildVersionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)appTagsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)applicationExtensionRecordsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)applicationStateWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)associatedPersonas;
- (id)audioComponentsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)backgroundTaskSchedulerPermittedIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)bundleContainerURLWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)bundleMetadataReturningError:(id *)error;
- (id)bundleVersionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)carPlayInstrumentClusterURLSchemesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)categoryTypesWithError:(id *)error;
- (id)deviceFamiliesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)directionsModesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)diskUsageWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)exactBundleVersionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)extensionPointRecordForIdentifier:(id)identifier platform:(unsigned int)platform error:(id *)error;
- (id)externalAccessoryProtocolsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)getApplicationExtensionDiagnosticDescriptionWithError:(id *)error;
- (id)iTunesMetadataWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)iconDictionaryWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)installSessionIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)intentsRestrictedWhileLocked;
- (id)intentsRestrictedWhileProtectedDataUnavailable;
- (id)linkedChildApplicationRecordEnumeratorWithOptions:(unint64_t)options;
- (id)localizedNameWithContext:(id)context preferredLocalizations:(id)localizations;
- (id)managedPersonas;
- (id)managementDomainWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)maximumSystemVersionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)minimumSystemVersionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)recordForUnredactingWithContext:(LSContext *)context error:(id *)error;
- (id)regulatoryPrivacyDisclosureVersionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)requiredDeviceCapabilitiesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)sensitiveDataProxyWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)serializedPlaceholderURLWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)shortVersionStringWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)stashedAppMetadataWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)staticShortcutItemsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)supportedGameControllersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)supportedIntentMediaCategories;
- (id)supportedIntents;
- (id)typeForInstallMachineryWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)uniqueInstallIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (id)userActivityTypesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes;
- (unint64_t)applicationDSID;
- (unint64_t)applicationDownloaderDSID;
- (unint64_t)applicationFamilyID;
- (unint64_t)sequenceNumber;
- (unint64_t)supportedDefaultAppCategories;
- (void)_detachFromContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes;
- (void)additionalEnvironmentVariables;
- (void)clearAdvertisingIdentifier;
- (void)getDeviceManagementPolicyWithCompletionHandler:(id)handler;
- (void)setAlternateIconName:(id)name completionHandler:(id)handler;
- (void)setAlternateIconNameSilently:(id)silently completionHandler:(id)handler;
- (void)setUpdateAvailability:(unint64_t)availability completionHandler:(id)handler;
@end

@implementation LSApplicationRecord

- (NSString)alternateIconName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__132;
  v10 = __Block_byref_object_dispose__133;
  v11 = 0;
  if ([__LSDefaultsGetSharedInstance(self a2)] && -[LSApplicationRecord supportsAlternateIconNames](self, "supportsAlternateIconNames"))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke;
    v5[3] = &unk_1E6A19408;
    v5[4] = self;
    v5[5] = &v6;
    __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v5);
  }

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)identities
{
  v19[1] = *MEMORY[0x1E69E9840];
  _personasWithAttributes = [(LSApplicationRecord *)self _personasWithAttributes];
  if ([_personasWithAttributes count])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__LSApplicationRecord_Identities__identities__block_invoke;
    v17[3] = &unk_1E6A194A8;
    v17[4] = self;
    v5 = XNSArrayByMappingBlock(_personasWithAttributes, v17);
  }

  else
  {
    v6 = [__LSDefaultsGetSharedInstance(0 v4)];
    if (v6 & 1) != 0 || (v8 = [__LSDefaultsGetSharedInstance(v6 v7)], (v8))
    {
      v9 = [[LSApplicationIdentity alloc] initForRecord:self personaWithAttributes:0];
      v18 = v9;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    }

    else
    {
      v10 = _LSDefaultLog(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(LSApplicationRecord(Identities) *)v10 identities];
      }

      v11 = +[LSApplicationRecord personalPersonaAttributes];
      userPersonaUniqueString = [v11 userPersonaUniqueString];

      v13 = [LSApplicationIdentity alloc];
      v14 = [[_LSPersonaWithAttributes alloc] initWithPersonaType:userPersonaUniqueString personaUniqueString:?];
      v15 = [(LSApplicationIdentity *)v13 initForRecord:self personaWithAttributes:v14];
      v19[0] = v15;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    }
  }

  return v5;
}

id __45__LSApplicationRecord_Identities__identities__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [[LSApplicationIdentity alloc] initForRecord:*(a1 + 32) personaWithAttributes:a2];

  return v2;
}

- (NSString)jobLabel
{
  if (([(LSApplicationRecord *)self _rawPlistFlags]& 0x80) != 0)
  {
    infoDictionary = [(LSBundleRecord *)self infoDictionary];
    v3 = [infoDictionary objectForKey:@"LSLaunchDLabel" ofClass:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)additionalEnvironmentVariables
{
  isRedacted = [(LSBundleRecord *)self isRedacted];
  if (!isRedacted)
  {
    goto LABEL_4;
  }

  v23 = 0;
  v5 = [(LSBundleRecord *)self unredactWithError:&v23];
  v6 = v23;
  v7 = v6;
  if (v5)
  {

LABEL_4:
    v8 = [__LSDefaultsGetSharedInstance(isRedacted v4)];
    v22 = 0;
    _personasWithAttributes = [(LSApplicationRecord *)self _personasWithAttributes];
    v10 = _LSShouldFetchContainersFromContainermanagerForPersona(_personasWithAttributes, [(LSApplicationRecord *)self _usesSystemPersona], &v22);

    if (v8)
    {
      v12 = 1;
    }

    else if (v10)
    {
      v13 = _LSDefaultLog(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(LSApplicationRecord *)v10 additionalEnvironmentVariables];
      }

      v12 = 0;
    }

    else
    {
      v12 = v22;
    }

    active_platform = dyld_get_active_platform();
    if (v12)
    {
      v17 = active_platform;
      bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
      v19 = _LSCopyEnvironmentVariablesFromContainermanager(bundleIdentifier, [(LSApplicationRecord *)self _containerClass], v17);
    }

    else
    {
      _rawEnvironmentVariables = [(LSApplicationRecord *)self _rawEnvironmentVariables];
      bundleIdentifier = [(_LSLazyPropertyList *)_rawEnvironmentVariables propertyList];

      v19 = _LSCopyRationalizedEnvironmentVariablesDict(bundleIdentifier);
    }

    v15 = v19;

    goto LABEL_18;
  }

  v14 = _LSDefaultLog(v6);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    [LSApplicationRecord additionalEnvironmentVariables];
  }

  v15 = MEMORY[0x1E695E0F8];
LABEL_18:

  return v15;
}

- (id)managedPersonas
{
  _personasWithAttributes = [(LSApplicationRecord *)self _personasWithAttributes];
  if ([_personasWithAttributes count] == 1)
  {
    firstObject = [_personasWithAttributes firstObject];
    personaType = [(_LSPersonaWithAttributes *)firstObject personaType];

    if (personaType == 1)
    {

      _personasWithAttributes = MEMORY[0x1E695E0F0];
    }
  }

  v5 = XNSArrayByMappingBlock(_personasWithAttributes, &__block_literal_global_162);

  return v5;
}

- (id)supportedIntents
{
  if ((-[LSApplicationRecord _rawPlistFlags](self, "_rawPlistFlags") & 0x200000) == 0 || (-[LSBundleRecord infoDictionary](self, "infoDictionary"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_class(), [v3 objectForKey:@"INIntentsSupported" ofClass:v4 valuesOfClass:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), v3, !v5))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)intentsRestrictedWhileLocked
{
  if ((-[LSApplicationRecord _rawPlistFlags](self, "_rawPlistFlags") & 0x200000) == 0 || (-[LSBundleRecord infoDictionary](self, "infoDictionary"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_class(), [v3 objectForKey:@"INIntentsRestrictedWhileLocked" ofClass:v4 valuesOfClass:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), v3, !v5))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)intentsRestrictedWhileProtectedDataUnavailable
{
  if ((-[LSApplicationRecord _rawPlistFlags](self, "_rawPlistFlags") & 0x200000) == 0 || (-[LSBundleRecord infoDictionary](self, "infoDictionary"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_class(), [v3 objectForKey:@"INIntentsRestrictedWhileProtectedDataUnavailable" ofClass:v4 valuesOfClass:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), v3, !v5))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)supportedIntentMediaCategories
{
  if ((-[LSApplicationRecord _rawPlistFlags](self, "_rawPlistFlags") & 0x200000) == 0 || (-[LSBundleRecord infoDictionary](self, "infoDictionary"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_class(), [v3 objectForKey:@"INSupportedMediaCategories" ofClass:v4 valuesOfClass:objc_opt_class()], v5 = objc_claimAutoreleasedReturnValue(), v3, !v5))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (BOOL)supportsMultiwindow
{
  [(LSBundleRecord *)self platform];
  base_platform = dyld_get_base_platform();
  if ((base_platform - 2) < 2)
  {
LABEL_4:
    infoDictionary = [(LSBundleRecord *)self infoDictionary];
    v5 = [infoDictionary objectForKey:@"UIApplicationSceneManifest" ofClass:objc_opt_class()];

    if (v5)
    {
      v6 = [v5 objectForKeyedSubscript:@"UIApplicationSupportsMultipleScenes"];
      if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        bOOLValue = [v6 BOOLValue];
LABEL_17:

        return bOOLValue;
      }
    }

    else
    {
      infoDictionary2 = [(LSBundleRecord *)self infoDictionary];
      v6 = [infoDictionary2 objectForKey:@"UIApplicationInterfaceManifest" ofClass:objc_opt_class()];

      if (v6)
      {
        v9 = [v6 objectForKeyedSubscript:@"UIApplicationSupportsMultiwindow"];
        if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          bOOLValue = [v9 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        goto LABEL_17;
      }
    }

    bOOLValue = 0;
    goto LABEL_17;
  }

  if (base_platform == 1)
  {
    return 1;
  }

  if (base_platform == 11)
  {
    goto LABEL_4;
  }

  return 0;
}

+ (id)_propertyClasses
{
  v4[14] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v4[11] = objc_opt_class();
  v4[12] = objc_opt_class();
  v4[13] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:14];

  return v2;
}

void __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _alternateIconQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_2;
  v3[3] = &unk_1E6A19408;
  v4 = *(a1 + 32);
  dispatch_sync(v2, v3);
}

+ (id)_alternateIconQueue
{
  if (+[LSApplicationRecord(AlternateIcons) _alternateIconQueue]::once != -1)
  {
    +[LSApplicationRecord(AlternateIcons) _alternateIconQueue];
  }

  v3 = +[LSApplicationRecord(AlternateIcons) _alternateIconQueue]::result;

  return v3;
}

void __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifier];
  if ([__LSDefaultsGetSharedInstance(v2 v3)])
  {
    v4 = +[LSAltIconManager sharedInstance];
    v16 = 0;
    v5 = [v4 alternateIconNameForIdentifier:v2 error:&v16];
    v6 = v16;
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      if (_LSIconsLog(void)::onceToken != -1)
      {
        __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_1();
      }

      if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEBUG))
      {
        __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_2_cold_2();
      }
    }
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_642;
    v14[3] = &unk_1E6A192C8;
    v9 = v2;
    v15 = v9;
    v10 = [(_LSDService *)_LSDIconService synchronousXPCProxyWithErrorHandler:v14];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_643;
    v11[3] = &unk_1E6A193E0;
    v13 = *(a1 + 40);
    v12 = v9;
    [v10 getAlternateIconNameForIdentifier:v12 reply:v11];

    v6 = v15;
  }
}

+ (id)systemPlaceholderEnumerator
{
  v2 = [[_LSApplicationRecordEnumerator alloc] initWithContext:0 volumeURL:0 options:0];
  [(_LSApplicationRecordEnumerator *)v2 setBundleClass:14];

  return v2;
}

- (NSUUID)deviceIdentifierForVendor
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__132;
  v14 = __Block_byref_object_dispose__133;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__LSApplicationRecord_UniqueIdentifiers__deviceIdentifierForVendor__block_invoke;
  v9[3] = &unk_1E6A192C8;
  v9[4] = self;
  v3 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:v9];
  _deviceIdentifierVendorName = [(LSApplicationRecord *)self _deviceIdentifierVendorName];
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__LSApplicationRecord_UniqueIdentifiers__deviceIdentifierForVendor__block_invoke_511;
  v8[3] = &unk_1E6A192F0;
  v8[4] = &v10;
  [v3 getIdentifierOfType:0 vendorName:_deviceIdentifierVendorName bundleIdentifier:bundleIdentifier completionHandler:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (LSApplicationRecord)initWithURL:(id)l fetchingPlaceholder:(int64_t)placeholder error:(id *)error
{
  lCopy = l;
  if (l)
  {
    if ([l isFileURL])
    {
      v9 = MEMORY[0x1E695DFF8];
      absoluteString = [lCopy absoluteString];
      lCopy = [v9 URLWithString:absoluteString];
    }

    else
    {
      lCopy = 0;
    }
  }

  v11 = [[FSNode alloc] initWithURL:lCopy flags:0 error:0];
  v12 = [(LSApplicationRecord *)self _initWithNode:v11 bundleIdentifier:0 placeholderBehavior:placeholder systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:0 error:error];

  return v12;
}

- (LSApplicationRecord)initWithStoreItemIdentifier:(unint64_t)identifier error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    return [(LSApplicationRecord *)self _initWithNode:0 bundleIdentifier:0 placeholderBehavior:0 systemPlaceholder:1 itemID:identifier forceInBundleContainer:0 context:0 error:error];
  }

  if (error)
  {
    v7 = *MEMORY[0x1E696A278];
    v8[0] = @"Item ID 0 never exists.";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v6, "[LSApplicationRecord initWithStoreItemIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 136);
  }

  return 0;
}

- (id)extensionPointRecordForIdentifier:(id)identifier platform:(unsigned int)platform error:(id *)error
{
  v5 = [[LSExtensionPointRecord alloc] initWithIdentifier:identifier platform:*&platform parentAppRecord:self error:error];

  return v5;
}

- (id)minimumSystemVersionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = *&bytes->_minSystemVersion._opaque[12];
  v9[0] = *&bytes->minSystemVersionPlatform;
  v9[1] = v6;
  v7 = _LSVersionNumberGetStringRepresentation(v9);

  return v7;
}

- (id)maximumSystemVersionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = *&bytes->_maxSystemVersion._opaque[12];
  v9[0] = *&bytes->_minSystemVersion._opaque[28];
  v9[1] = v6;
  v7 = _LSVersionNumberGetStringRepresentation(v9);

  return v7;
}

- (id)exactBundleVersionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();

  return v6;
}

- (id)shortVersionStringWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();

  return v6;
}

- (void)setUpdateAvailability:(unint64_t)availability completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    Class = object_getClass(self);
    v13 = bundleIdentifier;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:availability];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [(objc_class *)Class setUpdateAvailabilityForApplicationsWithBundleIdentifiers:v10 completionHandler:handler];
LABEL_5:

    goto LABEL_6;
  }

  if (handler)
  {
    v11 = *MEMORY[0x1E696A278];
    v12 = @"This application does not have a bundle identifier and cannot have its updateAvailability property modified.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v9, "[LSApplicationRecord setUpdateAvailability:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 265);
    (*(handler + 2))(handler, 0, v10);
    goto LABEL_5;
  }

LABEL_6:
}

+ (void)setUpdateAvailabilityForApplicationsWithBundleIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!identifiers)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSApplicationRecord.mm" lineNumber:273 description:{@"Invalid parameter not satisfying: %@", @"updateAvailabilities != nil"}];
  }

  v7 = [identifiers count];
  if (v7)
  {
    v9 = [__LSDefaultsGetSharedInstance(v7 v8)];
    if ((v9 & 1) != 0 || ([__LSDefaultsGetSharedInstance(v9 v10)] & 1) == 0)
    {
      v12 = _LSServer_DatabaseExecutionContext();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke;
      v19[3] = &unk_1E6A19068;
      v19[4] = identifiers;
      v19[5] = handler;
      v19[6] = a2;
      [(LSDBExecutionContext *)v12 syncWrite:v19];
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke_40;
      v18[3] = &unk_1E6A19090;
      v18[4] = handler;
      v11 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:v18];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke_2;
      v17[3] = &unk_1E6A190B8;
      v17[4] = handler;
      [v11 setUpdateAvailabilities:identifiers completionHandler:v17];
    }
  }

  else if (handler)
  {
    v20 = *MEMORY[0x1E696A278];
    v21[0] = @"updateAvailabilities";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v13, "+[LSApplicationRecord setUpdateAvailabilityForApplicationsWithBundleIdentifiers:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 365);
    (*(handler + 2))(handler, 0, v14);
  }
}

void __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v34, v2, 0);

  if (v3)
  {
    v4 = [*(a1 + 32) count];
    v26 = 0;
    v27 = &v26;
    v28 = 0x5812000000;
    v29 = __Block_byref_object_copy__2;
    v30 = __Block_byref_object_dispose__2;
    v31 = &unk_1818533FF;
    memset(v32, 0, sizeof(v32));
    v33 = 1065353216;
    std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__rehash<true>(v32, v4);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke_36;
    v25[3] = &unk_1E6A19040;
    v25[5] = &v26;
    v25[6] = v3;
    v5 = *(a1 + 32);
    v25[4] = *(a1 + 40);
    [v5 enumerateKeysAndObjectsUsingBlock:v25];
    if (v27[9] == v4)
    {
      v7 = v27 + 8;
      while (1)
      {
        v7 = *v7;
        if (!v7)
        {
          break;
        }

        v8 = *(v7 + 4);
        v9 = v7[3];
        v10 = objc_autoreleasePoolPush();
        v11 = _LSBundleGet(*v3, v8);
        if (v11)
        {
          if (v9 > 1)
          {
            v13 = _LSDefaultLog(v11);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              Name = sel_getName(*(a1 + 48));
              *buf = 136446722;
              v39 = Name;
              v40 = 2048;
              v41 = v8;
              v42 = 1024;
              LODWORD(v43) = v9;
              _os_log_error_impl(&dword_18162D000, v13, OS_LOG_TYPE_ERROR, "%{public}s: Caller told us to set the update availability of bundle 0x%llx to invalid value %u. Ignoring.", buf, 0x1Cu);
            }
          }

          [(_LSDatabase *)*v3 store];
          [(_LSDatabase *)*v3 schema];
          v14 = _CSStoreWriteToUnit();
          if (!v14)
          {
            v15 = _LSDefaultLog(v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v17 = sel_getName(*(a1 + 48));
              *buf = 136446722;
              v39 = v17;
              v40 = 2048;
              v41 = v8;
              v42 = 2112;
              v43 = 0;
              _os_log_error_impl(&dword_18162D000, v15, OS_LOG_TYPE_ERROR, "%{public}s: Failed to write to bundle 0x%llx, ignoring: %@", buf, 0x20u);
            }
          }
        }

        else
        {
          v12 = _LSDefaultLog(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v16 = sel_getName(*(a1 + 48));
            *buf = 136446466;
            v39 = v16;
            v40 = 2048;
            v41 = v8;
            _os_log_error_impl(&dword_18162D000, v12, OS_LOG_TYPE_ERROR, "%{public}s: While enumerating bundles, lost track of bundle 0x%llx. Ignoring.", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v10);
      }

      _LSDatabaseCommit(*v3, v6);
      _LSArmSaveTimer(1);
      (*(*(a1 + 40) + 16))();
    }

    _Block_object_dispose(&v26, 8);
    std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v32);
  }

  else
  {
    v19 = *(a1 + 40);
    v20 = +[_LSDServiceDomain defaultServiceDomain];
    v21 = LaunchServices::Database::Context::_get(&v34, v20, 0);

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = v37;
    }

    (*(v19 + 16))(v19, 0, v22);
  }

  if (v34 && v36 == 1)
  {
    _LSContextDestroy(v34);
  }

  v23 = v35;
  v34 = 0;
  v35 = 0;

  v36 = 0;
  v24 = v37;
  v37 = 0;
}

void __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke_36(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v7 = a1[6];
  memset(v13, 0, sizeof(v13));
  v8 = _LSBundleFindWithInfo(v7, 0, a2, 0, v13, 2, 0, &v12, 0);
  if (v8)
  {
    v9 = a1[4];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v8, 0, "+[LSApplicationRecord setUpdateAvailabilityForApplicationsWithBundleIdentifiers:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 294);
    (*(v9 + 16))(v9, 0, v10);

    *a4 = 1;
  }

  else
  {
    v11 = *(a1[5] + 8);
    *&v13[0] = [a3 unsignedLongLongValue];
    std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::__emplace_unique_key_args<unsigned int,unsigned int &,LSApplicationRecordUpdateAvailability>((v11 + 48), &v12, &v12, v13);
  }
}

uint64_t __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke_40(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __99__LSApplicationRecord_setUpdateAvailabilityForApplicationsWithBundleIdentifiers_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)applicationStateWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v8 = [(LSApplicationRecord *)self _rawBundleFlags:context];
  v9 = 41;
  if ((v8 & 0x40000) != 0)
  {
    v9 = 12;
  }

  v10 = 32;
  if ((v8 & 0x40000) != 0)
  {
    v11 = 12;
  }

  else
  {
    v10 = 2;
    v11 = 20;
  }

  v12 = (v8 >> v9) & v10;
  shortVersionString = bytes->shortVersionString;
  v14 = [_LSApplicationState alloc];
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  v16 = [(_LSApplicationState *)v14 initWithBundleIdentifier:bundleIdentifier stateFlags:v12 | v11 ratingRank:bytes->appVariant installType:shortVersionString];

  return v16;
}

- (BOOL)isDeletableWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  if ((bytes->_bundleFlags & 0x100) == 0)
  {
    return 0;
  }

  vendorName = bytes->vendorName;
  if (!vendorName || _LSDatabaseGetStringForCFString(context->db, @"System", 0) != vendorName)
  {
    return 1;
  }

  v8 = +[LSApplicationRestrictionsManager sharedInstance];
  isSystemAppDeletionEnabled = [(LSApplicationRestrictionsManager *)v8 isSystemAppDeletionEnabled];

  return isSystemAppDeletionEnabled;
}

- (BOOL)isDeletableSystemApplicationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  if ((bytes->_bundleFlags & 0x100) == 0)
  {
    return 0;
  }

  vendorName = bytes->vendorName;
  return vendorName && _LSDatabaseGetStringForCFString(context->db, @"System", 0) == vendorName;
}

- (BOOL)isAppStoreVendableWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  [(_LSDatabase *)context->db store];
  v8 = _CSStringCopyCFString();
  if ([v8 isEqualToString:@"System"])
  {
    LOBYTE(self) = _LSFindBundleWithInfo(context, 7uLL, [(LSBundleRecord *)self bundleIdentifier], 0, 0, 0, 0) != 0;
  }

  else
  {
    iTunesMetadata = [(LSApplicationRecord *)self iTunesMetadata];
    if ([iTunesMetadata storeItemIdentifier] && (-[LSApplicationRecord _rawBundleFlags](self, "_rawBundleFlags") & 0x8000001200000) == 0)
    {
      LODWORD(self) = ![(LSBundleRecord *)self isProfileValidated];
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (BOOL)isInstalledFromDistributorOrWeb
{
  iTunesMetadata = [(LSApplicationRecord *)self iTunesMetadata];
  distributorInfo = [iTunesMetadata distributorInfo];
  distributorID = [distributorInfo distributorID];

  if (distributorID && ([distributorID isEqualToString:@"com.apple.AppStore"] & 1) == 0)
  {
    v5 = [distributorID isEqualToString:@"com.apple.TestFlight"] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)isAnyRegisteredApplicationInstalledFromDistributorOrWeb
{
  v14 = *MEMORY[0x1E69E9840];
  [self enumeratorWithOptions:192];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        LOBYTE(v6) = [v6 isInstalledFromDistributorOrWeb];
        objc_autoreleasePoolPop(v7);
        if (v6)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)appStoreToolsBuildVersionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1EEF65710;
  }

  v9 = v8;

  return v8;
}

- (id)userActivityTypesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v6 = _LSDatabaseGetStringArray(context->db, bytes->types);
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canHandleWebAuthentication
{
  entitlements = [(LSBundleRecord *)self entitlements];
  v3 = [entitlements objectForKey:@"com.apple.AuthenticationServices.canHandleASWebAuthenticationSessionRequest" ofClass:objc_opt_class()];

  return v3 != 0;
}

- (id)applicationExtensionRecordsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [(_LSDatabase *)context->db store];
  v10 = v7;
  _CSArrayEnumerateAllValues();
  v8 = [v10 copy];

  return v8;
}

void __87__LSApplicationRecord_applicationExtensionRecordsWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [LSApplicationExtensionRecord alloc];
  v6 = *(a1 + 48);
  v11 = 0;
  v7 = [(LSApplicationExtensionRecord *)v5 _initWithContext:v6 pluginID:a3 pluginData:0 error:&v11];
  v8 = v11;
  v9 = v8;
  if (v7)
  {
    objc_storeWeak(v7 + 10, *(a1 + 32));
    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v10 = _LSDefaultLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __87__LSApplicationRecord_applicationExtensionRecordsWithContext_tableID_unitID_unitBytes___block_invoke_cold_1();
    }
  }
}

- (id)diskUsageWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = [(LSBundleRecord *)self bundleIdentifier:context];
  v16 = @"static";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&bytes->appType];
  v17[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  if (v8 && [__LSDefaultsGetSharedInstance(v11 v12)])
  {
    v13 = [[_LSBundleIDValidationToken alloc] initWithBundleIdentifier:v8];
    [(_LSValidationToken *)v13 setOwner:?];
  }

  else
  {
    v13 = 0;
  }

  v14 = [[_LSDiskUsage alloc] _initWithBundleIdentifier:v8 alreadyKnownUsage:v10 validationToken:v13];

  return v14;
}

- (id)backgroundTaskSchedulerPermittedIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v6 = _LSDatabaseGetStringArray(context->db, bytes->driverExtensions);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = v8;

  return v8;
}

- (id)carPlayInstrumentClusterURLSchemesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v6 = _LSDatabaseGetStringArray(context->db, bytes->extensionPoints);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = v8;

  return v8;
}

- (void)getDeviceManagementPolicyWithCompletionHandler:(id)handler
{
  if (!handler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[LSApplicationRecord getDeviceManagementPolicyWithCompletionHandler:]"];
    [currentHandler handleFailureInFunction:v7 file:@"LSApplicationRecord.mm" lineNumber:759 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__LSApplicationRecord_getDeviceManagementPolicyWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E6A19108;
  v8[4] = handler;
  _LSGetDMFPolicyWithCompletionHandler(bundleIdentifier, v8);
}

- (id)appClipMetadataWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  if (([(LSApplicationRecord *)self _rawBundleFlags:context]& 0x1000000000000000) != 0)
  {
    v10 = _LSDatabaseGetStringArray(context->db, bytes->sandboxEnvironmentVariables);
    v12 = _LSPlistGetValueForKey(context->db, bytes->base.infoDictionary, &cfstr_Nsappclip.isa, v11);
    if (!v12 || (_NSIsNSDictionary() & 1) == 0)
    {

      v12 = MEMORY[0x1E695E0F8];
    }

    v9 = [[LSAppClipMetadata alloc] _initWithApplicationRecord:self parentApplicationIdentifiers:v10 appClipPlist:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEligibleWebBrowser
{
  IsBundleWithFlagsEligibleToBindAsBrowser = LaunchServices::BindingEvaluator::IsBundleWithFlagsEligibleToBindAsBrowser([(LSApplicationRecord *)self _rawBundleFlags], [(LSApplicationRecord *)self _rawMoreFlags], [(LSBundleRecord *)self _profileValidationState]);
  if (IsBundleWithFlagsEligibleToBindAsBrowser)
  {
    LOBYTE(IsBundleWithFlagsEligibleToBindAsBrowser) = ![(LSApplicationRecord *)self appProtectionHidden];
  }

  return IsBundleWithFlagsEligibleToBindAsBrowser;
}

- (BOOL)isEligibleMailClient
{
  isMailClient = [(LSApplicationRecord *)self isMailClient];
  if (isMailClient)
  {
    LOBYTE(isMailClient) = ![(LSApplicationRecord *)self appProtectionHidden];
  }

  return isMailClient;
}

- (NSArray)spotlightActions
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (([(LSApplicationRecord *)self _rawMoreFlags]& 0x10) != 0)
  {
    infoDictionary = [(LSBundleRecord *)self infoDictionary];
    v4 = [infoDictionary objectForKey:@"CoreSpotlightActions" ofClass:objc_opt_class()];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (!v5)
    {
      goto LABEL_30;
    }

    v6 = *v27;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = [v8 objectForKey:@"CoreSpotlightActionIdentifier"];
        v11 = v10;
        if (v9)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && (objc_opt_isKindOfClass() & 1) == 0)
        {

          v11 = 0;
        }

        v13 = objc_opt_class();
        v14 = [v8 objectForKey:@"CoreSpotlightActionTitle"];
        v15 = v14;
        if (v13 && v14 && (objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = v15;
          v15 = 0;
LABEL_27:

          goto LABEL_28;
        }

        if (v11)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v17 = [LSSpotlightAction alloc];
          v18 = objc_opt_class();
          v19 = [v8 objectForKey:@"CoreSpotlightActionSymbolImage"];
          v20 = v19;
          if (v18 && v19 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v20 = 0;
          }

          v21 = [(LSSpotlightAction *)v17 _initWithIdentifier:v11 unlocalizedTitle:v15 symbolImageName:v20];

          if (v21)
          {
            [v24 addObject:v21];
          }

          goto LABEL_27;
        }

LABEL_28:
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (!v5)
      {
LABEL_30:

        break;
      }
    }
  }

  v22 = [v24 copy];

  return v22;
}

- (id)managementDomainWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();
  if (!v6)
  {
    v6 = @"default";
  }

  return v6;
}

- (id)_linkedParentApplicationBundleIDWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();

  return v6;
}

- (LSApplicationRecord)linkedParentApplication
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__132;
  v23 = __Block_byref_object_dispose__133;
  v24 = 0;
  _linkedParentApplicationBundleID = [(LSApplicationRecord *)self _linkedParentApplicationBundleID];
  v4 = _linkedParentApplicationBundleID;
  if (_linkedParentApplicationBundleID)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__132;
    v17[4] = __Block_byref_object_dispose__133;
    v18 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__LSApplicationRecord_linkedParentApplication__block_invoke;
    v13[3] = &unk_1E6A19130;
    v15 = &v19;
    v14 = _linkedParentApplicationBundleID;
    v16 = v17;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __46__LSApplicationRecord_linkedParentApplication__block_invoke_2;
    v9[3] = &unk_1E6A19158;
    v11 = &v19;
    v10 = v14;
    v12 = v17;
    v5 = [(LSRecord *)self _ifAttached:v13 else:v9];
    if (!v20[5])
    {
      v6 = _LSDefaultLog(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [LSApplicationRecord linkedParentApplication];
      }
    }

    _Block_object_dispose(v17, 8);
  }

  v7 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v7;
}

void __46__LSApplicationRecord_linkedParentApplication__block_invoke(void *a1, uint64_t a2)
{
  v4 = [LSApplicationRecord alloc];
  v5 = a1[4];
  v12 = 0;
  v6 = [(LSApplicationRecord *)v4 _initWithNode:0 bundleIdentifier:v5 placeholderBehavior:0 systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:a2 error:&v12];
  v7 = v12;
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

void __46__LSApplicationRecord_linkedParentApplication__block_invoke_2(void *a1)
{
  v2 = [LSApplicationRecord alloc];
  v3 = a1[4];
  v10 = 0;
  v4 = [(LSApplicationRecord *)v2 initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v10];
  v5 = v10;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

- (id)_defaultCategoryTypeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_LSDatabase *)context->db store];
  v8 = _CSStringCopyCFString();
  if (v8)
  {
    [v7 addObject:v8];
  }

  [(_LSDatabase *)context->db store];
  v9 = _CSStringCopyCFString();
  if (v9)
  {
    [v7 addObject:v9];
  }

  v10 = [v7 copy];

  return v10;
}

- (id)categoryTypesWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  _node = [(LSBundleRecord *)self _node];
  v24[4] = self;
  theArray = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __46__LSApplicationRecord_categoryTypesWithError___block_invoke;
  v24[3] = &unk_1E6A19180;
  v6 = _LSCopyApplicationCategoriesForApplicationNode(_node, &theArray, v24);

  if (v6)
  {
    if (error)
    {
      v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v6, 0, "[LSApplicationRecord categoryTypesWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 997);
LABEL_4:
      v9 = 0;
      *error = v8;
      goto LABEL_24;
    }

LABEL_21:
    v9 = 0;
    goto LABEL_24;
  }

  v10 = _LSGetUTTypeClass(v7);
  if (!v10)
  {
    if (error)
    {
      v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 78, 0, "[LSApplicationRecord categoryTypesWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 994);
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  v11 = objc_alloc(MEMORY[0x1E695DF70]);
  v12 = [v11 initWithCapacity:CFArrayGetCount(theArray)];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = theArray;
  v14 = [(__CFArray *)v13 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v14)
  {
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [v10 typeWithIdentifier:{*(*(&v20 + 1) + 8 * i), v20}];
        if (!v17)
        {
          if (error)
          {
            *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], 2, 0, "[LSApplicationRecord categoryTypesWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 983);
          }

          goto LABEL_17;
        }

        [v12 addObject:v17];
      }

      v14 = [(__CFArray *)v13 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v18 = [v12 count];
  if (v18 == CFArrayGetCount(theArray))
  {
    v9 = [v12 copy];
  }

  else
  {
    v9 = 0;
  }

LABEL_24:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v9;
}

- (id)_initWithNode:(id)node bundleIdentifier:(id)identifier placeholderBehavior:(int64_t)behavior systemPlaceholder:(BOOL)placeholder itemID:(unint64_t)d forceInBundleContainer:(BOOL)container context:(LSContext *)context error:(id *)self0
{
  v50 = *MEMORY[0x1E69E9840];
  if (_LSLogAppRecordInitsForDataSeparation::onceToken != -1)
  {
    _LSLogAppRecordInitsForDataSeparation_cold_1();
  }

  if (_LSLogAppRecordInitsForDataSeparation::result == 1)
  {
    v17 = _LSDataSeparationLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = node;
      *&buf[12] = 2112;
      *&buf[14] = identifier;
      *&buf[22] = 2048;
      dCopy = d;
      _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_INFO, "application record search init. Node: %@ bundleID: %@ itemID: %llu", buf, 0x20u);
    }
  }

  p_db = &context->db;
  if (!context)
  {
    p_db = _LSDatabaseContextGetCurrentContext(0);
  }

  v40 = p_db;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v19 = +[_LSDServiceDomain defaultServiceDomain];
  v20 = LaunchServices::Database::Context::_get(&v40, v19, 0);

  if (v20)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    dCopy = __Block_byref_object_copy__132;
    v48 = __Block_byref_object_dispose__133;
    v49 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __136__LSApplicationRecord__initWithNode_bundleIdentifier_placeholderBehavior_systemPlaceholder_itemID_forceInBundleContainer_context_error___block_invoke;
    v33[3] = &unk_1E6A191C8;
    placeholderCopy = placeholder;
    v33[4] = identifier;
    v33[5] = node;
    v33[8] = v20;
    v33[9] = d;
    v33[6] = &v36;
    v33[7] = buf;
    v33[10] = behavior;
    containerCopy = container;
    __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v33);
    if (error)
    {
      *error = *(*&buf[8] + 40);
    }

    v21 = *(v37 + 6);
    if (v21)
    {
      v22 = _LSBundleGet(*v20, v21);
      if (v22)
      {
        schema = [(_LSDatabase *)*v20 schema];
        v24 = [(LSApplicationRecord *)self _initWithNode:node bundleIdentifier:identifier context:v20 tableID:*(schema + 4) unitID:*(v37 + 6) bundleBaseData:v22 error:error];
LABEL_21:
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v36, 8);
        goto LABEL_25;
      }

      if (error)
      {
        v44 = *MEMORY[0x1E696A278];
        v45 = @"Unable to find this application record in the Launch Services database.";
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, v28, "[LSApplicationRecord _initWithNode:bundleIdentifier:placeholderBehavior:systemPlaceholder:itemID:forceInBundleContainer:context:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 1168);
      }
    }

    v24 = 0;
    goto LABEL_21;
  }

  if (error)
  {
    v25 = +[_LSDServiceDomain defaultServiceDomain];
    v26 = LaunchServices::Database::Context::_get(&v40, v25, 0);

    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v43;
    }

    *error = v27;
  }

  v24 = 0;
LABEL_25:
  v29 = v24;
  if (v40 && v42 == 1)
  {
    _LSContextDestroy(v40);
  }

  v30 = v41;
  v40 = 0;
  v41 = 0;

  v42 = 0;
  v31 = v43;
  v43 = 0;

  return v29;
}

void __136__LSApplicationRecord__initWithNode_bundleIdentifier_placeholderBehavior_systemPlaceholder_itemID_forceInBundleContainer_context_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) URL];
    v5 = *(a1 + 72);
    v6 = *(*(a1 + 56) + 8);
    obj = *(v6 + 40);
    v7 = _LSFindBundleWithInfo(v2, 7uLL, v3, 0, v4, v5, &obj);
    objc_storeStrong((v6 + 40), obj);
    v8 = a1 + 48;
LABEL_23:
    *(*(*v8 + 8) + 24) = v7;

    return;
  }

  v9 = *(a1 + 80);
  v10 = 1;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v12 = 3;
      v10 = 3;
    }

    else
    {
      v12 = 1;
      if (v9 == 4)
      {
        v12 = 8;
        if (*(a1 + 89) != 1)
        {
          v13 = @"must be remote placeholder";
          v10 = 8;
          v14 = &__block_literal_global_151;
          goto LABEL_20;
        }

        v10 = 8;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v11 = 3;
    if (v9 != 2)
    {
      v11 = 1;
    }

    if (v9 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v11;
    }

    if (v9 == 1)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }
  }

  if ((*(a1 + 89) & 1) == 0)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_20;
  }

LABEL_18:
  v13 = @"must be in bundle container";
  v14 = &__block_literal_global_146;
LABEL_20:
  v15 = *(a1 + 64);
  v16 = *(a1 + 32);
  v17 = [*(a1 + 40) URL];
  v18 = *(a1 + 72);
  v19 = *(*(a1 + 56) + 8);
  v25 = *(v19 + 40);
  LODWORD(v15) = _LSFindBundleWithInfo_NoIOFiltered(v15, v10, v16, 0, v17, v18, v13, v14, &v25);
  objc_storeStrong((v19 + 40), v25);
  v8 = a1 + 48;
  *(*(*(a1 + 48) + 8) + 24) = v15;

  if (v10 != v12 && !*(*(*v8 + 8) + 24))
  {
    v20 = *(a1 + 64);
    v21 = *(a1 + 32);
    v4 = [*(a1 + 40) URL];
    v22 = *(a1 + 72);
    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    v7 = _LSFindBundleWithInfo_NoIOFiltered(v20, v12, v21, 0, v4, v22, v13, v14, &v24);
    objc_storeStrong((v23 + 40), v24);
    goto LABEL_23;
  }
}

- (id)_initWithBundleIdentifier:(id)identifier placeholder:(BOOL)placeholder error:(id *)error
{
  v5 = 3;
  if (!placeholder)
  {
    v5 = 0;
  }

  return [(LSApplicationRecord *)self _initWithNode:0 bundleIdentifier:identifier placeholderBehavior:v5 systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:0 error:error];
}

- (id)bundleVersionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();

  return v6;
}

- (id)associatedPersonas
{
  _personasWithAttributes = [(LSApplicationRecord *)self _personasWithAttributes];
  v3 = XNSArrayByMappingBlock(_personasWithAttributes, &__block_literal_global_164);

  return v3;
}

- (id)_initWithNode:(id)node bundleIdentifier:(id)identifier context:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD bundleBaseData:(const LSBundleBaseData *)data error:(id *)error
{
  v10 = *&iD;
  v11 = *&d;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__132;
  v31 = __Block_byref_object_dispose__133;
  nodeCopy = node;
  v15 = v28[5];
  if (v15)
  {
    goto LABEL_5;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__132;
  v25 = __Block_byref_object_dispose__133;
  v26 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98__LSApplicationRecord__initWithNode_bundleIdentifier_context_tableID_unitID_bundleBaseData_error___block_invoke;
  v19[3] = &unk_1E6A19210;
  v19[5] = &v21;
  v19[6] = context;
  v20 = v10;
  v19[4] = &v27;
  __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v19);
  if (error)
  {
    *error = v22[5];
  }

  _Block_object_dispose(&v21, 8);

  v15 = v28[5];
  if (v15)
  {
LABEL_5:
    v18.receiver = self;
    v18.super_class = LSApplicationRecord;
    v16 = [(LSBundleRecord *)&v18 _initWithNode:v15 bundleIdentifier:identifier context:context tableID:v11 unitID:v10 bundleBaseData:data error:error];
  }

  else
  {

    v16 = 0;
  }

  _Block_object_dispose(&v27, 8);

  return v16;
}

void __98__LSApplicationRecord__initWithNode_bundleIdentifier_context_tableID_unitID_bundleBaseData_error___block_invoke(uint64_t a1)
{
  v2 = _LSBundleCopyNode(**(a1 + 48), *(a1 + 56), 0, 0, (*(*(a1 + 32) + 8) + 40));
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  _LSGetNSErrorFromOSStatusImpl(v2, &obj, 0, "[LSApplicationRecord _initWithNode:bundleIdentifier:context:tableID:unitID:bundleBaseData:error:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 1274);
  objc_storeStrong((v3 + 40), obj);
}

- (id)_initWithContext:(LSContext *)context bundleID:(unsigned int)d bundleData:(const LSBundleData *)data error:(id *)error
{
  dataCopy = data;
  v8 = *&d;
  v14[1] = *MEMORY[0x1E69E9840];
  if (data)
  {
    return [(LSApplicationRecord *)self _initWithNode:0 bundleIdentifier:0 context:context tableID:*([(_LSDatabase *)context->db schema]+ 4) unitID:v8 bundleBaseData:dataCopy error:error];
  }

  dataCopy = _LSBundleGet(context->db, *&d);
  if (dataCopy)
  {
    return [(LSApplicationRecord *)self _initWithNode:0 bundleIdentifier:0 context:context tableID:*([(_LSDatabase *)context->db schema]+ 4) unitID:v8 bundleBaseData:dataCopy error:error];
  }

  if (error)
  {
    v13 = *MEMORY[0x1E696A278];
    v14[0] = @"Unable to find this application record in the Launch Services database.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, v12, "[LSApplicationRecord _initWithContext:bundleID:bundleData:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 1312);
  }

  return 0;
}

- (id)_personasWithAttributesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v9 = _LSDatabaseGetStringArray(context->db, bytes->appContainerAlias);
  __p = 0;
  v27 = 0;
  v28 = 0;
  [(_LSDatabase *)context->db store];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __83__LSApplicationRecord__personasWithAttributesWithContext_tableID_unitID_unitBytes___block_invoke;
  v24 = &__block_descriptor_40_e14_v24__0I8I12_16l;
  p_p = &__p;
  _CSArrayEnumerateAllValues();
  for (i = 0; ; ++i)
  {
    v12 = __p;
    v11 = v27;
    v13 = [v9 count];
    v14 = v13 >= (v11 - v12) >> 3 ? (v11 - v12) >> 3 : v13;
    if (v14 <= i)
    {
      break;
    }

    v15 = [_LSPersonaWithAttributes alloc];
    v16 = *(__p + i);
    v17 = [v9 objectAtIndexedSubscript:i];
    v18 = [(_LSPersonaWithAttributes *)v15 initWithPersonaType:v16 personaUniqueString:v17];
    [v8 addObject:v18];
  }

  allObjects = [v8 allObjects];
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  return allObjects;
}

void __83__LSApplicationRecord__personasWithAttributesWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v6 >= v5)
  {
    v8 = *v3;
    v9 = v6 - *v3;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v12 = v5 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      std::allocator<os_eligibility_answer_t>::allocate_at_least[abi:nn200100](*(a1 + 32), v14);
    }

    *(8 * v10) = v4;
    v7 = 8 * v10 + 8;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    *(v3 + 8) = v7;
    *(v3 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = a3;
    v7 = (v6 + 1);
  }

  *(v3 + 8) = v7;
}

- (id)_localizedNamesWithContextWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__132;
  v13 = __Block_byref_object_dispose__133;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__LSApplicationRecord__localizedNamesWithContextWithContext_tableID_unitID_unitBytes___block_invoke;
  v8[3] = &unk_1E6A19258;
  v8[4] = &v9;
  v8[5] = bytes;
  v8[6] = context;
  _LSBundleDisplayNameContextEnumerate(v8);
  v6 = [v10[5] copy];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __86__LSApplicationRecord__localizedNamesWithContextWithContext_tableID_unitID_unitBytes___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (!*(*(a1[4] + 8) + 40))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *(a1[4] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = [[_LSLocalizedStringRecord alloc] _initWithContext:a1[6] unitID:*(a1[5] + 4 * a2 + 520)];
  v10 = v9;
  if (v9)
  {
    [*(*(a1[4] + 8) + 40) setObject:v9 forKeyedSubscript:a3];
  }

  else
  {
    [*(*(a1[4] + 8) + 40) setObject:*MEMORY[0x1E695E738] forKeyedSubscript:a3];
  }
}

- (id)_compatibilityObjectWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes
{
  v6 = *&iD;
  v9 = [LSApplicationProxy alloc];
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  v11 = [(LSApplicationProxy *)v9 _initWithContext:context bundleUnit:v6 applicationRecord:self bundleID:bundleIdentifier resolveAndDetach:0];

  return v11;
}

- (id)_persistentIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes
{
  v11.receiver = self;
  v11.super_class = LSApplicationRecord;
  v7 = [(LSRecord *)&v11 _persistentIdentifierWithContext:context tableID:*&d unitID:*&iD unitBytes:?];
  v8 = [v7 mutableCopy];

  [v8 appendBytes:bytes + 276 length:8];
  v9 = [v8 copy];

  return v9;
}

- (id)_initWithContext:(LSContext *)context persistentIdentifierData:(const LSPersistentIdentifierData *)data length:(unint64_t)length
{
  var3 = data->var3;
  if (var3 != *([(_LSDatabase *)context->db schema]+ 4))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSApplicationRecord.mm" lineNumber:1530 description:{@"Invalid parameter not satisfying: %@", @"pi->tableID == ctx->db.schema->bundleTable"}];
  }

  v11 = _LSBundleGet(context->db, data->var2);
  if (v11 && length == 36 && *data->var5 == *(v11 + 276))
  {
    var2 = data->var2;

    return [(LSApplicationRecord *)self _initWithContext:context bundleID:var2 bundleData:v11 error:0];
  }

  else
  {

    return 0;
  }
}

- (void)_detachFromContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes
{
  v32 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = LSApplicationRecord;
  [(LSBundleRecord *)&v29 _detachFromContext:context tableID:*&d unitID:*&iD unitBytes:bytes];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel_applicationExtensionRecords];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v25 + 1) + 8 * v10++) detach];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v8);
  }

  v11 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel__rawEnvironmentVariables];
  v12 = v11;
  if (v11)
  {
    [v11 detach];
  }

  v13 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel__localizedNamesWithContext];
  v14 = v13;
  if (v13)
  {
    [v13 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_218];
  }

  v15 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel_supportedGameControllers];
  v16 = v15;
  if (v15)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v18)
    {
      v19 = *v22;
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v21 + 1) + 8 * v20++) detach];
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v18);
    }
  }
}

void *__67__LSApplicationRecord__detachFromContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (*MEMORY[0x1E695E738] != a3)
  {
    return [a3 detach];
  }

  return result;
}

- (LSApplicationRecord)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = LSApplicationRecord;
  v3 = [(LSBundleRecord *)&v14 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(LSRecord *)v3 _resolvedPropertyValueForGetter:sel_applicationExtensionRecords, 0];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          objc_storeWeak((*(*(&v10 + 1) + 8 * v8++) + 80), v4);
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }
  }

  return v4;
}

- (id)bundleContainerURLWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__132;
  v13 = __Block_byref_object_dispose__133;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__LSApplicationRecord_Containers__bundleContainerURLWithContext_tableID_unitID_unitBytes___block_invoke;
  v8[3] = &unk_1E6A192A0;
  v8[5] = context;
  v8[6] = bytes;
  v8[4] = &v9;
  __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __90__LSApplicationRecord_Containers__bundleContainerURLWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1)
{
  v2 = _LSAliasCopyResolvedNode(**(a1 + 40), *(*(a1 + 48) + 508), 0, 0, 0);
  if (v2)
  {
    v6 = v2;
    v3 = [v2 URL];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

- (id)iTunesMetadataWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v6 = [[LSiTunesMetadata alloc] _initWithContext:context bundleData:bytes];

  return v6;
}

void __67__LSApplicationRecord_UniqueIdentifiers__deviceIdentifierForVendor__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _LSRecordLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) bundleIdentifier];
    v6 = 138478083;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_ERROR, "Error getting identifier for vendor for %{private}@: %@", &v6, 0x16u);
  }
}

- (NSUUID)deviceIdentifierForAdvertising
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__132;
  v14 = __Block_byref_object_dispose__133;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__LSApplicationRecord_UniqueIdentifiers__deviceIdentifierForAdvertising__block_invoke;
  v9[3] = &unk_1E6A192C8;
  v9[4] = self;
  v3 = [(_LSDService *)_LSDDeviceIdentifierService synchronousXPCProxyWithErrorHandler:v9];
  _deviceIdentifierVendorName = [(LSApplicationRecord *)self _deviceIdentifierVendorName];
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__LSApplicationRecord_UniqueIdentifiers__deviceIdentifierForAdvertising__block_invoke_513;
  v8[3] = &unk_1E6A192F0;
  v8[4] = &v10;
  [v3 getIdentifierOfType:1 vendorName:_deviceIdentifierVendorName bundleIdentifier:bundleIdentifier completionHandler:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __72__LSApplicationRecord_UniqueIdentifiers__deviceIdentifierForAdvertising__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _LSRecordLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [*(a1 + 32) bundleIdentifier];
    v6 = 138478083;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_ERROR, "Error getting identifier for vendor for %{private}@: %@", &v6, 0x16u);
  }
}

- (void)clearAdvertisingIdentifier
{
  v2 = [(_LSDService *)_LSDDeviceIdentifierService XPCProxyWithErrorHandler:?];
  [v2 clearAllIdentifiersOfType:1];
}

- (id)directionsModesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  if ((bytes->_bundleFlags & 0x10000000000) == 0 || (-[LSBundleRecord infoDictionary](self, "infoDictionary", context, *&d, *&iD), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_class(), [v6 objectForKey:@"MKDirectionsApplicationSupportedModes" ofClass:v7 valuesOfClass:objc_opt_class()], v8 = objc_claimAutoreleasedReturnValue(), v6, !v8))
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)audioComponentsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  if ((bytes->_bundleFlags & 0x40000000000) == 0 || (-[LSBundleRecord infoDictionary](self, "infoDictionary", context, *&d, *&iD), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_class(), [v6 objectForKey:@"AudioComponents" ofClass:v7 valuesOfClass:objc_opt_class()], v8 = objc_claimAutoreleasedReturnValue(), v6, !v8))
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)externalAccessoryProtocolsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  if ((bytes->_bundleFlags & 0x800000000000) == 0 || (-[LSBundleRecord infoDictionary](self, "infoDictionary", context, *&d, *&iD), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_class(), [v6 objectForKey:@"UISupportedExternalAccessoryProtocols" ofClass:v7 valuesOfClass:objc_opt_class()], v8 = objc_claimAutoreleasedReturnValue(), v6, !v8))
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)staticShortcutItemsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v6 = [(LSBundleRecord *)self infoDictionary:context];
  v7 = objc_opt_class();
  v8 = [v6 objectForKey:@"UIApplicationShortcutItems" ofClass:v7 valuesOfClass:objc_opt_class()];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)VPNPluginsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v13[1] = *MEMORY[0x1E69E9840];
  if ((bytes->_bundleFlags & 0x100000000000) == 0 || (-[LSBundleRecord infoDictionary](self, "infoDictionary", context, *&d, *&iD), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_class(), [v8 objectForKey:@"UIVPNPlugin" ofClass:v9 valuesOfClass:objc_opt_class()], v6 = objc_claimAutoreleasedReturnValue(), v8, !v6) && ((-[LSBundleRecord infoDictionary](self, "infoDictionary"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:ofClass:", @"UIVPNPlugin", objc_opt_class()), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12) || (v13[0] = v12, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v13, 1), v6 = objc_claimAutoreleasedReturnValue(), v12, !v6)))
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (id)appTagsWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  if ((bytes->_bundleFlags & 0x80000000000) == 0 || (-[LSBundleRecord infoDictionary](self, "infoDictionary", context, *&d, *&iD), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_class(), [v6 objectForKey:@"SBAppTags" ofClass:v7 valuesOfClass:objc_opt_class()], v8 = objc_claimAutoreleasedReturnValue(), v6, !v8))
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)requiredDeviceCapabilitiesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v25 = *MEMORY[0x1E69E9840];
  if ((bytes->_bundleFlags & 0x200000000000) == 0)
  {
    goto LABEL_2;
  }

  v8 = [(LSBundleRecord *)self infoDictionary:context];
  v9 = objc_opt_class();
  v6 = [v8 objectForKey:@"UIRequiredDeviceCapabilities" ofClass:v9 valuesOfClass:objc_opt_class()];

  if (!v6)
  {
    infoDictionary = [(LSBundleRecord *)self infoDictionary];
    v12 = objc_opt_class();
    v13 = [infoDictionary objectForKey:@"UIRequiredDeviceCapabilities" ofClass:v12 valuesOfClass:objc_opt_class()];

    if (!v13)
    {
      goto LABEL_2;
    }

    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v13, "count")}];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v16)
    {
      v17 = *v21;
      v18 = MEMORY[0x1E695E118];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [v14 setObject:v18 forKeyedSubscript:*(*(&v20 + 1) + 8 * i)];
        }

        v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }

    v6 = [v14 copy];
    if (!v6)
    {
LABEL_2:
      v6 = MEMORY[0x1E695E0F8];
    }
  }

  return v6;
}

- (id)deviceFamiliesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_LSDatabase *)context->db store];
  v10 = v7;
  _CSArrayEnumerateAllValues();
  v8 = [v10 copy];

  return v8;
}

void __93__LSApplicationRecord_InfoPlistRarities__deviceFamiliesWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [v1 addObject:?];
}

- (id)regulatoryPrivacyDisclosureVersionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v6 = [(LSBundleRecord *)self infoDictionary:context];
  v7 = [v6 objectForKey:@"NSRegulatoryPrivacyDisclosure" ofClass:objc_opt_class()];

  v8 = [v7 objectForKey:@"NSRegulatoryPrivacyDisclosureVersion"];

  return v8;
}

- (id)localizedNameWithContext:(id)context preferredLocalizations:(id)localizations
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__132;
  v17 = __Block_byref_object_dispose__133;
  v18 = 0;
  if (context && (v6 = self, (self = [context length]) != 0))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__LSApplicationRecord_Localization__localizedNameWithContext_preferredLocalizations___block_invoke;
    v12[3] = &unk_1E6A19340;
    v12[4] = context;
    v12[5] = v6;
    v12[6] = localizations;
    v12[7] = &v13;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__LSApplicationRecord_Localization__localizedNameWithContext_preferredLocalizations___block_invoke_3;
    v11[3] = &unk_1E6A19368;
    v11[4] = v6;
    v11[5] = context;
    v11[6] = localizations;
    v11[7] = &v13;
    [(LSRecord *)v6 _ifAttached:v12 else:v11];
  }

  else
  {
    v7 = _LSRecordLog(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_FAULT, "You must pass a valid context string when using -localizedNameWithContext:. Did you want -localizedName?", v10, 2u);
    }
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __85__LSApplicationRecord_Localization__localizedNameWithContext_preferredLocalizations___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__LSApplicationRecord_Localization__localizedNameWithContext_preferredLocalizations___block_invoke_2;
  v6[3] = &unk_1E6A19318;
  v9 = a2;
  v10 = a4;
  v4 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = v4;
  return __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v6);
}

void __85__LSApplicationRecord_Localization__localizedNameWithContext_preferredLocalizations___block_invoke_2(uint64_t a1)
{
  v2 = **(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v8 = [*(a1 + 40) _node];
  v5 = _LSBundleGetLocalizedName(v2, v3, v4, v8, *(a1 + 48), 0);
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __85__LSApplicationRecord_Localization__localizedNameWithContext_preferredLocalizations___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _resolvedPropertyValueForGetter:sel__localizedNamesWithContext];
  v3 = v2;
  if (v2)
  {
    v8 = v2;
    v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];
    v3 = v8;
    if (v4 != *MEMORY[0x1E695E738])
    {
      v5 = [v4 stringValueWithPreferredLocalizations:*(a1 + 48)];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v3 = v8;
    }
  }
}

void __58__LSApplicationRecord_AlternateIcons___alternateIconQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS alternate icon queue", v2);
  v1 = +[LSApplicationRecord(AlternateIcons) _alternateIconQueue]::result;
  +[LSApplicationRecord(AlternateIcons) _alternateIconQueue]::result = v0;
}

- (void)setAlternateIconName:(id)name completionHandler:(id)handler
{
  _alternateIconQueue = [objc_opt_class() _alternateIconQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke;
  block[3] = &unk_1E6A193B8;
  block[4] = name;
  block[5] = self;
  block[6] = handler;
  dispatch_async(_alternateIconQueue, block);
}

void __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ([__LSDefaultsGetSharedInstance(a1 a2)])
  {
    if (_LSIconsLog(void)::onceToken != -1)
    {
      __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_3();
    }

    v3 = _LSIconsLog(void)::log;
    if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138412546;
      v30 = v4;
      v31 = 2112;
      v32 = v5;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Setting preferredIconName to %@ for %@", buf, 0x16u);
    }

    v6 = [*(a1 + 40) bundleIdentifier];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_633;
    v22 = &unk_1E6A19390;
    v7 = v6;
    v8 = *(a1 + 48);
    v23 = v7;
    v24 = v8;
    v9 = [(_LSDService *)_LSDIconService synchronousXPCProxyWithErrorHandler:?];
    if (_os_feature_enabled_impl() && ([MEMORY[0x1E696AAE8] mainBundle], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "bundleIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v7), v11, v10, v12))
    {
      [v9 setAlternateIconNameForCurrentApplication:*(a1 + 32) completionHandler:*(a1 + 48)];
    }

    else
    {
      v17 = [*(a1 + 40) _rawIconDictionary];
      v18 = [v17 _expensiveDictionaryRepresentation];

      [v9 setAlternateIconName:*(a1 + 32) forIdentifier:v7 iconsDictionary:v18 reply:*(a1 + 48)];
    }

    v16 = v23;
  }

  else
  {
    v27 = *MEMORY[0x1E696A578];
    v28 = @"alternateIcons not allowed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v14 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 110, v13, "[LSApplicationRecord(AlternateIcons) setAlternateIconName:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 2044);

    v25 = *MEMORY[0x1E696AA08];
    v26 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 3328, v15, "[LSApplicationRecord(AlternateIcons) setAlternateIconName:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 2046);

    if (_LSIconsLog(void)::onceToken != -1)
    {
      __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_1();
    }

    if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_ERROR))
    {
      __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_2();
    }

    (*(*(a1 + 48) + 16))();
    v7 = v14;
  }
}

uint64_t __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_633(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (_LSIconsLog(void)::onceToken != -1)
  {
    __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_3();
  }

  v4 = _LSIconsLog(void)::log;
  if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Failed to set alternate icon name for bundleID %@ with error: %@", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)setAlternateIconNameSilently:(id)silently completionHandler:(id)handler
{
  _alternateIconQueue = [objc_opt_class() _alternateIconQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__LSApplicationRecord_AlternateIcons__setAlternateIconNameSilently_completionHandler___block_invoke;
  block[3] = &unk_1E6A193B8;
  block[4] = silently;
  block[5] = self;
  block[6] = handler;
  dispatch_async(_alternateIconQueue, block);
}

void __86__LSApplicationRecord_AlternateIcons__setAlternateIconNameSilently_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if ([__LSDefaultsGetSharedInstance(a1 a2)])
  {
    if (_LSIconsLog(void)::onceToken != -1)
    {
      __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_3();
    }

    v3 = _LSIconsLog(void)::log;
    if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138412546;
      v27 = v4;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Setting preferredIconName silently to %@ for %@", buf, 0x16u);
    }

    v6 = [*(a1 + 40) bundleIdentifier];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __86__LSApplicationRecord_AlternateIcons__setAlternateIconNameSilently_completionHandler___block_invoke_640;
    v19 = &unk_1E6A19390;
    v7 = v6;
    v8 = *(a1 + 48);
    v20 = v7;
    v21 = v8;
    v9 = [(_LSDService *)_LSDIconService synchronousXPCProxyWithErrorHandler:?];
    v10 = [*(a1 + 40) _rawIconDictionary];
    v11 = [v10 _expensiveDictionaryRepresentation];

    [v9 setAlternateIconName:*(a1 + 32) forIdentifier:v7 iconsDictionary:v11 reply:*(a1 + 48)];
    v12 = v20;
  }

  else
  {
    v24 = *MEMORY[0x1E696A578];
    v25 = @"alternateIcons not allowed";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v14 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 110, v13, "[LSApplicationRecord(AlternateIcons) setAlternateIconNameSilently:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 2073);

    v22 = *MEMORY[0x1E696AA08];
    v23 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 3328, v15, "[LSApplicationRecord(AlternateIcons) setAlternateIconNameSilently:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 2075);

    if (_LSIconsLog(void)::onceToken != -1)
    {
      __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_1();
    }

    if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_ERROR))
    {
      __86__LSApplicationRecord_AlternateIcons__setAlternateIconNameSilently_completionHandler___block_invoke_cold_2();
    }

    (*(*(a1 + 48) + 16))();
    v7 = v14;
  }
}

uint64_t __86__LSApplicationRecord_AlternateIcons__setAlternateIconNameSilently_completionHandler___block_invoke_640(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (_LSIconsLog(void)::onceToken != -1)
  {
    __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_3();
  }

  v4 = _LSIconsLog(void)::log;
  if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Failed to set alternate icon name silently for bundleID %@ with error: %@", &v7, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

void __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_642(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (_LSIconsLog(void)::onceToken != -1)
  {
    __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_3();
  }

  v4 = _LSIconsLog(void)::log;
  if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Failed to retrieve alternate icon name for bundleID %@ with error: %@", &v6, 0x16u);
  }
}

void __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_643(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v3, a2);
  }

  else
  {
    if (_LSIconsLog(void)::onceToken != -1)
    {
      __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_3();
    }

    if (os_log_type_enabled(_LSIconsLog(void)::log, OS_LOG_TYPE_DEBUG))
    {
      __56__LSApplicationRecord_AlternateIcons__alternateIconName__block_invoke_643_cold_2();
    }
  }
}

- (id)iconDictionaryWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  genre = bytes->genre;
  if (genre)
  {
    v9 = [_LSLazyPropertyList lazyPropertyListWithContext:context unit:genre, *&iD];
    [(_LSDatabase *)context->db store];
    v10 = _CSStringCopyCFString();
    if (![(LSApplicationRecord *)self supportsAlternateIconNames])
    {
      goto LABEL_12;
    }

    alternateIconName = [(LSApplicationRecord *)self alternateIconName];
    v12 = alternateIconName;
    v13 = alternateIconName ? alternateIconName : v10;
    v14 = v13;

    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = [v9 objectForKey:@"CFBundleAlternateIcons" ofClass:objc_opt_class()];
    v16 = objc_opt_class();
    v17 = [v15 objectForKey:v14];
    v18 = v17;
    if (v16 && v17 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v18 = 0;
    }

    if (!v18)
    {
LABEL_12:
      v18 = [v9 objectForKey:@"CFBundlePrimaryIcon" ofClass:objc_opt_class()];
    }

    v19 = [v9 objectForKey:@"ISGraphicIconConfiguration" ofClass:objc_opt_class()];
    if (v19)
    {
      v20 = objc_opt_new();
      [v20 setObject:v19 forKey:@"ISGraphicIconConfiguration"];
      if (v18)
      {
        [v20 addEntriesFromDictionary:v18];
        v21 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v20];

        v18 = v21;
      }

      else
      {
        v18 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v20];
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)applicationRecordsForUserActivityType:(id)type limit:(unint64_t)limit error:(id *)error
{
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSApplicationRecord.mm" lineNumber:2245 description:{@"Invalid parameter not satisfying: %@", @"userActivityType != nil"}];
  }

  CurrentContext = _LSDatabaseContextGetCurrentContext(self);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v8 = +[_LSDServiceDomain defaultServiceDomain];
  v9 = LaunchServices::Database::Context::_get(&CurrentContext, v8, 0);

  v46 = v9;
  if (v9)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x4812000000;
    v40 = __Block_byref_object_copy__688;
    v41 = __Block_byref_object_dispose__689;
    v42 = &unk_1818533FF;
    v44 = 0;
    v45 = 0;
    __p = 0;
    StringForCFString = _LSDatabaseGetStringForCFString(*v9, type, 0);
    v11 = *v46;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __87__LSApplicationRecord_UserActivity__applicationRecordsForUserActivityType_limit_error___block_invoke;
    v36[3] = &unk_1E6A19430;
    v36[5] = &v37;
    v36[6] = v46;
    v36[4] = type;
    _LSDatabaseEnumeratingBindingMap(v11, 8, StringForCFString, v36);
    v12 = v38[6];
    v13 = v38[7];
    v14 = 126 - 2 * __clz(&v13[-v12] >> 4);
    v51 = &v46;
    if (v13 == v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    std::__introsort<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,false>(v12, v13, &v51, v15, 1);
    v16 = objc_alloc(MEMORY[0x1E695DF70]);
    v17 = [v16 initWithCapacity:(v38[7] - v38[6]) >> 4];
    v18 = v38[6];
    v19 = v38[7];
    if (v18 != v19)
    {
      v20 = 0;
      do
      {
        v21 = objc_autoreleasePoolPush();
        v22 = [LSApplicationRecord alloc];
        v23 = [(LSApplicationRecord *)v22 _initWithContext:v46 bundleID:*v18 bundleData:*(v18 + 1) error:0];
        v24 = 0;
        if (v23)
        {
          [v17 addObject:v23];
          if (++v20 >= limit)
          {
            v24 = 1;
          }
        }

        objc_autoreleasePoolPop(v21);
        v18 += 4;
        v25 = v18 == v19 || v24;
      }

      while ((v25 & 1) == 0);
    }

    v26 = [v17 copy];

    _Block_object_dispose(&v37, 8);
    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }
  }

  else if (error)
  {
    v27 = +[_LSDServiceDomain defaultServiceDomain];
    v28 = LaunchServices::Database::Context::_get(&CurrentContext, v27, 0);

    if (v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = v50;
    }

    v26 = 0;
    *error = v29;
  }

  else
  {
    v26 = 0;
  }

  if (CurrentContext && v49 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v30 = v48;
  CurrentContext = 0;
  v48 = 0;

  v49 = 0;
  v31 = v50;
  v50 = 0;

  return v26;
}

void __87__LSApplicationRecord_UserActivity__applicationRecordsForUserActivityType_limit_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = _LSBundleGet(**(a1 + 48), a3);
  if (v5)
  {
    v6 = v5;
    if (_LSBundleCouldBeSelectedForActivityContinuation(**(a1 + 48), v3, v5, *(a1 + 32)))
    {
      v7 = *(*(a1 + 40) + 8);
      v9 = v7[7];
      v8 = v7[8];
      if (v9 >= v8)
      {
        v11 = v7[6];
        v12 = v9 - v11;
        v13 = (v9 - v11) >> 4;
        v14 = v13 + 1;
        if ((v13 + 1) >> 60)
        {
          std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
        v17 = 0xFFFFFFFFFFFFFFFLL;
        if (!v16)
        {
          v17 = v14;
        }

        if (v17)
        {
          std::allocator<std::pair<unsigned int,LSBundleData const*>>::allocate_at_least[abi:nn200100]((v7 + 6), v17);
        }

        v18 = 16 * v13;
        *v18 = v3;
        *(v18 + 8) = v6;
        v10 = 16 * v13 + 16;
        memcpy(0, v11, v12);
        v19 = v7[6];
        v7[6] = 0;
        v7[7] = v10;
        v7[8] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v9 = v3;
        *(v9 + 8) = v6;
        v10 = v9 + 16;
      }

      v7[7] = v10;
    }
  }
}

+ (id)applicationRecordsForUserActivityDomainName:(id)name limit:(unint64_t)limit error:(id *)error
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSApplicationRecord.mm" lineNumber:2300 description:{@"Invalid parameter not satisfying: %@", @"domainName != nil"}];
  }

  lowercaseString = [nameCopy lowercaseString];

  CurrentContext = _LSDatabaseContextGetCurrentContext(v11);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v12 = +[_LSDServiceDomain defaultServiceDomain];
  v13 = LaunchServices::Database::Context::_get(&CurrentContext, v12, 0);

  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __93__LSApplicationRecord_UserActivity__applicationRecordsForUserActivityDomainName_limit_error___block_invoke;
    v24[3] = &unk_1E6A19458;
    v28 = v13;
    v25 = lowercaseString;
    v15 = v14;
    v26 = v15;
    v27 = v30;
    limitCopy = limit;
    _LSEnumerateViableBundlesOfClass(v13, 2, v24);
    v16 = [v15 copy];

    _Block_object_dispose(v30, 8);
  }

  else if (error)
  {
    v17 = +[_LSDServiceDomain defaultServiceDomain];
    v18 = LaunchServices::Database::Context::_get(&CurrentContext, v17, 0);

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v34;
    }

    v16 = 0;
    *error = v19;
  }

  else
  {
    v16 = 0;
  }

  if (CurrentContext && v33 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v20 = v32;
  CurrentContext = 0;
  v32 = 0;

  v33 = 0;
  v21 = v34;
  v34 = 0;

  return v16;
}

void __93__LSApplicationRecord_UserActivity__applicationRecordsForUserActivityDomainName_limit_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = _LSBundleCopyUserActivityDomainNames(**(a1 + 56), a2, a3);
  v10 = v9;
  if (v9)
  {
    v11 = [(__CFSet *)v9 member:*(a1 + 32)];

    if (v11)
    {
      v12 = [[LSApplicationRecord alloc] _initWithContext:*(a1 + 56) bundleID:a2 bundleData:a3 error:0];
      if (v12)
      {
        [*(a1 + 40) addObject:v12];
        if (++*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
        {
          *a4 = 1;
        }
      }
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (id)supportedGameControllersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_LSDatabase *)context->db store];
  v10 = MEMORY[0x1E69E9820];
  v11 = v7;
  _CSArrayEnumerateAllValues();
  v8 = [v11 copy];

  return v8;
}

void __92__LSApplicationRecord_Gaming__supportedGameControllersWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [_LSLazyPropertyList lazyPropertyListWithContext:*(a1 + 40) unit:a3];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (NSNumber)supportsGameMode
{
  _rawMoreFlags = [(LSApplicationRecord *)self _rawMoreFlags];
  if ((*&_rawMoreFlags & 0x800000) != 0)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:HIBYTE(*&_rawMoreFlags) & 1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)getGenericTranslocationTargetURL:(id *)l error:(id *)error
{
  if (error)
  {
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[LSApplicationRecord(AppWrappers) getGenericTranslocationTargetURL:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 2423);
  }

  return 0;
}

- (id)bundleMetadataReturningError:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  v13 = 0;
  v7 = softLinkMobileInstallationCopyAppMetadata(bundleIdentifier, &v13);
  v8 = v13;

  if (!v7)
  {
    v10 = _LSRecordLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_ERROR, "Failed to lookup metadata for app %@: %@", buf, 0x16u);
    }

    if (error)
    {
      v11 = v8;
      *error = v8;
    }
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)sensitiveDataProxyWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v6 = [[_LSApplicationSensitiveDataProxy alloc] initWithContext:context bundleUnit:*&iD bundleData:bytes];

  return v6;
}

- (unint64_t)applicationDSID
{
  sensitiveDataProxy = [(LSApplicationRecord(MobileInstall) *)self sensitiveDataProxy];
  applicationDSID = [sensitiveDataProxy applicationDSID];

  return applicationDSID;
}

- (unint64_t)applicationDownloaderDSID
{
  sensitiveDataProxy = [(LSApplicationRecord(MobileInstall) *)self sensitiveDataProxy];
  downloaderDSID = [sensitiveDataProxy downloaderDSID];

  return downloaderDSID;
}

- (unint64_t)applicationFamilyID
{
  sensitiveDataProxy = [(LSApplicationRecord(MobileInstall) *)self sensitiveDataProxy];
  familyID = [sensitiveDataProxy familyID];

  return familyID;
}

- (id)uniqueInstallIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v6 = _LSPlistGetValueForKey(context->db, bytes->bundlePersonaTypes, &cfstr_Uniqueinstalli.isa, *&d);
  if ((_NSIsNSData() & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

- (id)installSessionIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  v6 = _LSPlistGetValueForKey(context->db, bytes->bundlePersonaTypes, &cfstr_Installsession.isa, *&d);
  if ((_NSIsNSData() & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

- (id)stashedAppMetadataWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  if (bytes->recordModificationTime)
  {
    v7 = [[LSStashedAppMetadata alloc] initWithContext:context unitID:bytes->recordModificationTime];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)serializedPlaceholderURLWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();
  if (v6)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (LSApplicationRecord)initWithBundleIdentifierOfCompanionApplication:(id)application error:(id *)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v8 = *MEMORY[0x1E696A278];
    v9[0] = @"This platform does not support discovery of companion application identifiers.";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, v6, "[LSApplicationRecord(watchOS) initWithBundleIdentifierOfCompanionApplication:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 2819);
  }

  return 0;
}

- (id)typeForInstallMachineryWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const LSBundleData *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();

  return v6;
}

- (NSNumber)eligibilityDeletionDomain
{
  if (([(LSApplicationRecord *)self _rawPlistFlags]& 0x20) != 0)
  {
    infoDictionary = [(LSBundleRecord *)self infoDictionary];
    v3 = [infoDictionary objectForKey:@"LSEligibilityDeletionDomain" ofClass:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)sequenceNumber
{
  persistentIdentifier = [(LSRecord *)self persistentIdentifier];
  SequenceNumberInternal = _LSApplicationRecordPersistentIdentifierGetSequenceNumberInternal(persistentIdentifier);

  return SequenceNumberInternal;
}

+ (id)personalPersonaAttributes
{
  if (+[LSApplicationRecord(Identities) personalPersonaAttributes]::once != -1)
  {
    +[LSApplicationRecord(Identities) personalPersonaAttributes];
  }

  v3 = +[LSApplicationRecord(Identities) personalPersonaAttributes]::result;

  return v3;
}

void __60__LSApplicationRecord_Identities__personalPersonaAttributes__block_invoke()
{
  v0 = [(objc_class *)getUMUserPersonaAttributesClass() personaAttributesForPersonaType:0];
  v1 = +[LSApplicationRecord(Identities) personalPersonaAttributes]::result;
  +[LSApplicationRecord(Identities) personalPersonaAttributes]::result = v0;
}

- (unint64_t)supportedDefaultAppCategories
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  claimRecords = [(LSBundleRecord *)self claimRecords];
  v4 = [claimRecords countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v4)
  {
    v5 = *v24;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(claimRecords);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        if (([v7 _rawFlags] & 0x2000) != 0)
        {
          v18 = v7;
          goto LABEL_11;
        }
      }

      v4 = [claimRecords countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_11:

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  typeIdentifiers = [v18 typeIdentifiers];
  v9 = 0;
  v10 = [typeIdentifiers countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(typeIdentifiers);
        }

        v13 = *(*(&v19 + 1) + 8 * j);
        InfoFromTypeIdentifier = LSDefaultAppCategoryGetInfoFromTypeIdentifier(v13);
        if (InfoFromTypeIdentifier)
        {
          v9 |= LSDefaultAppCategoryMaskForCategory(*InfoFromTypeIdentifier);
        }

        else
        {
          v15 = _LSDefaultLog(0);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
            *buf = 138543618;
            v28 = v13;
            v29 = 2114;
            v30 = bundleIdentifier;
            _os_log_fault_impl(&dword_18162D000, v15, OS_LOG_TYPE_FAULT, "no category for type %{public}@ in default apps claim of bundle %{public}@!", buf, 0x16u);
          }
        }
      }

      v10 = [typeIdentifiers countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v10);
  }

  return v9;
}

- (BOOL)mayBeBUIVisible
{
  typeForInstallMachinery = [(LSApplicationRecord *)self typeForInstallMachinery];
  if ([typeForInstallMachinery isEqualToString:@"System"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [typeForInstallMachinery isEqualToString:@"User"];
  }

  return v3;
}

- (NSString)journalNotificationURLFormatString
{
  if (([(LSApplicationRecord *)self _rawPlistFlags]& 0x40) != 0)
  {
    infoDictionary = [(LSBundleRecord *)self infoDictionary];
    v3 = [infoDictionary objectForKey:@"JSNotificationURLFormat" ofClass:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)redactedProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__LSApplicationRecord_Redaction__redactedProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[LSApplicationRecord(Redaction) redactedProperties]::once != -1)
  {
    dispatch_once(&+[LSApplicationRecord(Redaction) redactedProperties]::once, block);
  }

  v2 = +[LSApplicationRecord(Redaction) redactedProperties]::properties;

  return v2;
}

void __52__LSApplicationRecord_Redaction__redactedProperties__block_invoke(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = &OBJC_METACLASS___LSApplicationRecord;
  v1 = objc_msgSendSuper2(&v4, sel_redactedProperties);
  v2 = [v1 arrayByAddingObject:@"_rawEnvironmentVariables"];
  v3 = +[LSApplicationRecord(Redaction) redactedProperties]::properties;
  +[LSApplicationRecord(Redaction) redactedProperties]::properties = v2;
}

- (id)recordForUnredactingWithContext:(LSContext *)context error:(id *)error
{
  v7 = [LSApplicationRecord alloc];
  _node = [(LSBundleRecord *)self _node];
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  isPlaceholder = [(LSApplicationRecord *)self isPlaceholder];
  isSystemPlaceholder = [(LSApplicationRecord *)self isSystemPlaceholder];
  if (isPlaceholder)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(LSApplicationRecord *)v7 _initWithNode:_node bundleIdentifier:bundleIdentifier placeholderBehavior:v12 systemPlaceholder:isSystemPlaceholder itemID:0 forceInBundleContainer:0 context:context error:error];

  return v13;
}

- (id)getApplicationExtensionDiagnosticDescriptionWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__132;
  v18 = __Block_byref_object_dispose__133;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__132;
  v12 = __Block_byref_object_dispose__133;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__LSApplicationRecord_Diagnostic__getApplicationExtensionDiagnosticDescriptionWithError___block_invoke;
  v7[3] = &unk_1E6A194F0;
  v7[4] = &v8;
  v7[5] = &v14;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__LSApplicationRecord_Diagnostic__getApplicationExtensionDiagnosticDescriptionWithError___block_invoke_2;
  v6[3] = &unk_1E6A19518;
  v6[4] = self;
  v6[5] = &v8;
  v6[6] = &v14;
  [(LSRecord *)self _ifAttached:v7 else:v6];
  if (error)
  {
    *error = v15[5];
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v4;
}

void __89__LSApplicationRecord_Diagnostic__getApplicationExtensionDiagnosticDescriptionWithError___block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  v8 = _LSGetApplicationExtensionDiagnosticDescriptionForBundle(a2, a4, a5);
  objc_storeStrong((v6 + 40), v7);
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __89__LSApplicationRecord_Diagnostic__getApplicationExtensionDiagnosticDescriptionWithError___block_invoke_2(uint64_t a1)
{
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v17, v2, 0);

  if (!v3)
  {
    v10 = +[_LSDServiceDomain defaultServiceDomain];
    v11 = LaunchServices::Database::Context::_get(&v17, v10, 0);

    if (v11)
    {
      v8 = 0;
LABEL_9:
      v9 = 48;
      goto LABEL_10;
    }

    v12 = v20;
LABEL_8:
    v8 = v12;
    goto LABEL_9;
  }

  v4 = _LSBundleGet(*v3, [*(a1 + 32) unitID]);
  if (!v4)
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[LSApplicationRecord(Diagnostic) getApplicationExtensionDiagnosticDescriptionWithError:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSApplicationRecord.mm", 3226);
    goto LABEL_8;
  }

  v5 = [*(a1 + 32) unitID];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  v8 = _LSGetApplicationExtensionDiagnosticDescriptionForBundle(v3, v5, v4);
  objc_storeStrong((v6 + 40), v7);
  v9 = 40;
LABEL_10:
  v13 = *(*(a1 + v9) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v8;

  if (v17 && v19 == 1)
  {
    _LSContextDestroy(v17);
  }

  v15 = v18;
  v17 = 0;
  v18 = 0;

  v19 = 0;
  v16 = v20;
  v20 = 0;
}

+ (id)enumeratorWithOptions:(unint64_t)options
{
  v3 = [[_LSApplicationRecordEnumerator alloc] initWithContext:0 volumeURL:0 options:options];

  return v3;
}

+ (id)enumeratorOnVolumeAtURL:(id)l options:(unint64_t)options
{
  if (!l)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSRecord+Enumeration.mm" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"volumeURL != nil"}];
  }

  if (([l isFileURL] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSRecord+Enumeration.mm" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"volumeURL.fileURL"}];
  }

  v8 = [[_LSApplicationRecordEnumerator alloc] initWithContext:0 volumeURL:l options:options];

  return v8;
}

+ (id)remotePlaceholderEnumerator
{
  v2 = [(_LSApplicationRecordEnumerator *)[_LSRemotePlaceholderEnumerator alloc] initWithContext:0 volumeURL:0 options:64];
  [(_LSApplicationRecordEnumerator *)v2 setBundleClass:16];

  return v2;
}

- (id)linkedChildApplicationRecordEnumeratorWithOptions:(unint64_t)options
{
  v5 = [_LSLinkedChildApplicationRecordEnumerator alloc];
  bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
  v7 = [(_LSLinkedChildApplicationRecordEnumerator *)v5 initWithContext:0 parentBundleID:bundleIdentifier options:options];

  return v7;
}

+ (id)enumeratorForViableDefaultAppsForCategory:(unint64_t)category options:(unint64_t)options
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v7 = LaunchServices::Database::Context::_get(&v19, v6, 0);

  if (v7)
  {
    bundleUnitsClaimingDefaultAppCategory(v7, category, buf);
    v9 = *buf;
    v10 = *&buf[8];
  }

  else
  {
    v11 = _LSDefaultLog(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = +[_LSDServiceDomain defaultServiceDomain];
      v17 = LaunchServices::Database::Context::_get(&v19, v16, 0);

      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v22;
      }

      *buf = 136315394;
      *&buf[4] = "+[LSApplicationRecord(Enumeration) enumeratorForViableDefaultAppsForCategory:options:]";
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_error_impl(&dword_18162D000, v11, OS_LOG_TYPE_ERROR, "couldn't get to database in %s: %@", buf, 0x16u);
    }

    v9 = 0;
    v10 = 0;
  }

  v12 = [[_LSApplicationRecordSpecificUnitsEnumerator alloc] initWithContext:v7 options:options unitIDs:v9 unitCount:(v10 - v9) >> 2];
  if (v19 && v21 == 1)
  {
    _LSContextDestroy(v19);
  }

  v13 = v20;
  v19 = 0;
  v20 = 0;

  v21 = 0;
  v14 = v22;
  v22 = 0;

  if (v9)
  {
    operator delete(v9);
  }

  return v12;
}

+ (id)displayOrderEnumeratorForViableDefaultAppsForCategory:(unint64_t)category options:(unint64_t)options
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v7 = LaunchServices::Database::Context::_get(&v22, v6, 0);

  if (v7)
  {
    bundleUnitsClaimingDefaultAppCategory(v7, category, buf);
    v9 = *buf;
    v10 = *&buf[8];
    if (*&buf[8] - *buf >= 5uLL)
    {
      v11 = (*buf + 4);
      v12 = 126 - 2 * __clz((*&buf[8] - (*buf + 4)) >> 2);
      *&buf[16] = 0;
      v28 = 0;
      *buf = v7;
      *&buf[8] = &buf[16];
      v26 = buf;
      if (v10 == (v9 + 4))
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      std::__introsort<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,false>(v11, v10, &v26, v13, 1);
      std::__tree<std::__value_type<unsigned int,NSString * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,NSString * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,NSString * {__strong}>>>::destroy(&buf[8], *&buf[16]);
    }
  }

  else
  {
    v14 = _LSDefaultLog(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = +[_LSDServiceDomain defaultServiceDomain];
      v20 = LaunchServices::Database::Context::_get(&v22, v19, 0);

      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v25;
      }

      *buf = 136315394;
      *&buf[4] = "+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]";
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_error_impl(&dword_18162D000, v14, OS_LOG_TYPE_ERROR, "couldn't get to database in %s: %@", buf, 0x16u);
    }

    v10 = 0;
    v9 = 0;
  }

  v15 = [[_LSApplicationRecordSpecificUnitsEnumerator alloc] initWithContext:v7 options:options unitIDs:v9 unitCount:(v10 - v9) >> 2];
  if (v22 && v24 == 1)
  {
    _LSContextDestroy(v22);
  }

  v16 = v23;
  v22 = 0;
  v23 = 0;

  v24 = 0;
  v17 = v25;
  v25 = 0;

  if (v9)
  {
    operator delete(v9);
  }

  return v15;
}

+ (id)enumeratorForApplicationsOnSameVolumeWithinDirectoryAtURL:(id)l enumerationOptions:(unint64_t)options filteringOptions:(unint64_t)filteringOptions
{
  v5 = [[_LSApplicationRecordsWithinDirectoryEnumerator alloc] initWithContext:0 directoryURL:l volumeURL:0 enumerationOptions:options filteringOptions:filteringOptions];

  return v5;
}

- (void)additionalEnvironmentVariables
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Error determining whether or not to fetch from container manager %@", &v2, 0xCu);
}

void __78__LSApplicationRecord_AlternateIcons__setAlternateIconName_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __86__LSApplicationRecord_AlternateIcons__setAlternateIconNameSilently_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end