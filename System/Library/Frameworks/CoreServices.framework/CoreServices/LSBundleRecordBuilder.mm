@interface LSBundleRecordBuilder
- (BOOL)parseInfoPlist:(id)plist;
- (BOOL)parseInstallationInfo:(id)info;
- (LSBundleData)buildBundleData:(SEL)data error:(id)error;
- (id)_LSBundleFlagMap;
- (id)_LSKeyTypeMap;
- (id)_LSPlistRaritiesMap;
- (id)iconsDictionaryFromDict:(id)dict;
- (id)truncate:(BOOL *)truncate queriableSchemesIfNeeded:(id)needed;
- (int)activateBindings:(id)bindings unitID:(unsigned int)d bundleData:(const LSBundleData *)data;
- (int)registerQueriableSchemes:(id)schemes bundleData:(LSBundleData *)data;
- (unsigned)registerBundleRecord:(id)record error:(id *)error;
- (void)parseActivityTypesFromDictionary:(id)dictionary;
- (void)parseArchitecturesFromDict:(id)dict;
- (void)parseDeviceFamilyFromDict:(id)dict;
- (void)parseDocumentClaimsFromDict:(id)dict;
- (void)parseIconFilenamesFromDict:(id)dict forPlatform:(unsigned int)platform;
- (void)parseNSExtensionSDKDefinitionsFromDictionary:(id)dictionary;
- (void)parseURLClaimsFromDict:(id)dict;
- (void)setCommonInfoPlistKeysFromDictionary:(id)dictionary;
- (void)setFlagsFromDictionary:(id)dictionary;
- (void)setRaritiesFromDictionary:(id)dictionary;
- (void)setRegistrationInfo:(id)info alias:(id)alias;
@end

@implementation LSBundleRecordBuilder

- (void)setRegistrationInfo:(id)info alias:(id)alias
{
  infoCopy = info;
  aliasCopy = alias;
  if (infoCopy)
  {
    v7 = [infoCopy mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(LSRegistrationInfo);
  }

  registrationInfo = self->_registrationInfo;
  self->_registrationInfo = v7;

  self->_bundleClass = self->_registrationInfo->bundleClass;
  self->_itemFlags = self->_registrationInfo->itemFlags;
  if (aliasCopy)
  {
    objc_storeStrong(&self->_bundleAlias, alias);
  }

  self->_inode = self->_registrationInfo->inoExec;
}

- (int)registerQueriableSchemes:(id)schemes bundleData:(LSBundleData *)data
{
  v31 = *MEMORY[0x1E69E9840];
  schemesCopy = schemes;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  context = v5;
  v29 = 0;
  v7 = self->_queriableSchemes;
  if (v7)
  {
    v8 = v7;
    v9 = [(LSBundleRecordBuilder *)self truncate:&v29 queriableSchemesIfNeeded:v7];

    [v6 addObjectsFromArray:v9];
  }

  else
  {
    v9 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = self->_URLClaims;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v11)
  {
    v12 = *v26;
    v13 = *MEMORY[0x1E695E190];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        if (_NSIsNSDictionary())
        {
          v16 = objc_opt_class();
          v17 = [v15 objectForKey:v13];
          v18 = v17;
          if (v16 && v17)
          {
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v18 = 0;
LABEL_16:

              continue;
            }
          }

          else if (!v17)
          {
            goto LABEL_16;
          }

          [v6 addObjectsFromArray:v18];
          goto LABEL_16;
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  if (v6 && [v6 count])
  {
    allObjects = [v6 allObjects];
    data->plugins = _LSDatabaseCreateStringArray(schemesCopy, allObjects, 1, 0);

    if (!data->plugins)
    {
      v20 = -9493;
      goto LABEL_26;
    }
  }

  else
  {
    data->plugins = 0;
  }

  v20 = 0;
  if (v29 == 1)
  {
    *&self->_moreFlags |= 0x40u;
  }

LABEL_26:

  objc_autoreleasePoolPop(context);
  return v20;
}

- (id)truncate:(BOOL *)truncate queriableSchemesIfNeeded:(id)needed
{
  v23 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v20 = 0u;
  v21 = 0u;
  _LSMakeVersionNumber(15, 0, 0, &v20);
  v7 = +[_LSCanOpenURLManager sharedManager];
  schemeQueryLimit = [v7 schemeQueryLimit];

  v9 = *&self->_sdkVersionNumber._opaque[16];
  *v17 = *self->_sdkVersionNumber._opaque;
  *&v17[16] = v9;
  v22[0] = v20;
  v22[1] = v21;
  if (_LSVersionNumberCompare(v17, v22) > 1 || (v10 = [neededCopy count], v10 <= schemeQueryLimit))
  {
    v13 = 0;
  }

  else
  {
    v11 = _LSInstallLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      identifier = self->_identifier;
      if (!identifier)
      {
        identifier = self->_bundleName;
      }

      v16 = [neededCopy count];
      *v17 = 138413058;
      *&v17[4] = identifier;
      *&v17[12] = 2048;
      *&v17[14] = v16;
      *&v17[22] = 2048;
      *&v17[24] = schemeQueryLimit;
      v18 = 2048;
      v19 = schemeQueryLimit;
      _os_log_error_impl(&dword_18162D000, v11, OS_LOG_TYPE_ERROR, "Application %@ has requested permission to query %llu URL schemes, but the maximum queriable is %llu. Limiting to the first %llu listed in its Info.plist.", v17, 0x2Au);
    }

    v12 = [neededCopy subarrayWithRange:{0, schemeQueryLimit}];
    v13 = 1;
    if (v12)
    {
      if (!truncate)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v12 = neededCopy;
  if (truncate)
  {
LABEL_6:
    *truncate = v13;
  }

LABEL_7:

  return v12;
}

- (id)_LSBundleFlagMap
{
  if ([LSBundleRecordBuilder _LSBundleFlagMap]::onceToken != -1)
  {
    [LSBundleRecordBuilder _LSBundleFlagMap];
  }

  v3 = [LSBundleRecordBuilder _LSBundleFlagMap]::bundleFlagMap;

  return v3;
}

void __41__LSBundleRecordBuilder__LSBundleFlagMap__block_invoke()
{
  v3[47] = *MEMORY[0x1E69E9840];
  v2[0] = *MEMORY[0x1E695E120];
  v2[1] = @"LSHasLocalizedDisplayName";
  v3[0] = &unk_1EEF8E9D8;
  v3[1] = &unk_1EEF8E9D8;
  v2[2] = *MEMORY[0x1E695E4F8];
  v2[3] = @"LSUIElement";
  v3[2] = &unk_1EEF8E9D8;
  v3[3] = &unk_1EEF8E9F0;
  v2[4] = @"NSUIElement";
  v2[5] = @"UINewsstandApp";
  v3[4] = &unk_1EEF8E9F0;
  v3[5] = &unk_1EEF8EA08;
  v2[6] = @"LSBackgroundOnly";
  v2[7] = @"NSBGOnly";
  v3[6] = &unk_1EEF8EA20;
  v3[7] = &unk_1EEF8EA20;
  v2[8] = @"LSMultipleInstancesProhibited";
  v2[9] = @"_LSIsExecutableForParentBundle";
  v3[8] = &unk_1EEF8EA38;
  v3[9] = &unk_1EEF8EA50;
  v2[10] = @"_LSInfoPlistIsMissing";
  v2[11] = @"_LSNoExecutableInfo";
  v3[10] = &unk_1EEF8EA68;
  v3[11] = &unk_1EEF8EA80;
  v2[12] = @"LSFileQuarantineEnabled";
  v2[13] = @"_LSRequiresOldJavaStub";
  v3[12] = &unk_1EEF8EA98;
  v3[13] = &unk_1EEF8EAB0;
  v2[14] = @"_LSRequiresJavaRuntime";
  v2[15] = @"_LSRequiresIPhoneSimulator";
  v3[14] = &unk_1EEF8EAC8;
  v3[15] = &unk_1EEF8EAE0;
  v2[16] = @"LSRequiresIPhoneOS";
  v2[17] = @"_LSBundleVersionTooLow";
  v3[16] = &unk_1EEF8EAF8;
  v3[17] = &unk_1EEF8EB10;
  v2[18] = @"ASAccountAuthenticationModificationOptOutOfSecurityPromptsOnSignIn";
  v2[19] = @"is-purchased-redownload";
  v3[18] = &unk_1EEF8EB28;
  v3[19] = &unk_1EEF8EB40;
  v2[20] = @"DeviceBasedVPP";
  v2[21] = @"IsPlaceholder";
  v3[20] = &unk_1EEF8EB58;
  v3[21] = &unk_1EEF8EB70;
  v2[22] = @"HasMIDBasedSINF";
  v2[23] = @"MissingSINF";
  v3[22] = &unk_1EEF8EB88;
  v3[23] = &unk_1EEF8EBA0;
  v2[24] = @"RestrictedDownload";
  v2[25] = @"IsParallelPlaceholder";
  v3[24] = &unk_1EEF8EBB8;
  v3[25] = &unk_1EEF8EBD0;
  v2[26] = @"IsUpdatedSystemApp";
  v2[27] = @"IsDeletable";
  v3[26] = &unk_1EEF8EBD0;
  v3[27] = &unk_1EEF8EBE8;
  v2[28] = @"IsAdHocSigned";
  v2[29] = @"HasSettingsBundle";
  v3[28] = &unk_1EEF8EC00;
  v3[29] = &unk_1EEF8EC18;
  v2[30] = @"NSSupportsPurgeableLocalStorage";
  v2[31] = @"HasCustomNotificationKey";
  v3[30] = &unk_1EEF8EC30;
  v3[31] = &unk_1EEF8EC48;
  v2[32] = @"HasWatchGlance";
  v2[33] = @"SkipWatchAppInstall";
  v3[32] = &unk_1EEF8EC60;
  v3[33] = &unk_1EEF8EC78;
  v2[34] = @"SupportsAudiobooks";
  v2[35] = @"MPSupportsExternallyPlayableContent";
  v3[34] = &unk_1EEF8EC90;
  v3[35] = &unk_1EEF8ECA8;
  v2[36] = @"UIFileSharingEnabled";
  v2[37] = @"LSSupportsOpeningDocumentsInPlace";
  v3[36] = &unk_1EEF8ECC0;
  v3[37] = &unk_1EEF8ECD8;
  v2[38] = @"UISupportsDocumentBrowser";
  v2[39] = @"_LSBundleIsInGenerationalStorage";
  v3[38] = &unk_1EEF8ECD8;
  v3[39] = &unk_1EEF8ECF0;
  v2[40] = @"_LSBundleIsApplet";
  v2[41] = @"LSApplicationIsStickerProvider";
  v3[40] = &unk_1EEF8ED08;
  v3[41] = &unk_1EEF8ED20;
  v2[42] = @"LSApplicationLaunchProhibited";
  v2[43] = @"initialODRSize";
  v3[42] = &unk_1EEF8ED20;
  v3[43] = &unk_1EEF8ED38;
  v2[44] = @"gameCenterEnabled";
  v2[45] = @"gameCenterEverEnabled";
  v3[44] = &unk_1EEF8ED50;
  v3[45] = &unk_1EEF8ED68;
  v2[46] = @"NSApplicationRequiresArcade";
  v3[46] = &unk_1EEF8ED80;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:47];
  v1 = [LSBundleRecordBuilder _LSBundleFlagMap]::bundleFlagMap;
  [LSBundleRecordBuilder _LSBundleFlagMap]::bundleFlagMap = v0;
}

- (id)_LSPlistRaritiesMap
{
  if ([LSBundleRecordBuilder _LSPlistRaritiesMap]::onceToken != -1)
  {
    [LSBundleRecordBuilder _LSPlistRaritiesMap];
  }

  v3 = [LSBundleRecordBuilder _LSPlistRaritiesMap]::plistMap;

  return v3;
}

void __44__LSBundleRecordBuilder__LSPlistRaritiesMap__block_invoke()
{
  v3[19] = *MEMORY[0x1E69E9840];
  v2[0] = @"LSLaunchDLabel";
  v2[1] = @"LSFileQuarantineExcludedPathPatterns";
  v3[0] = &unk_1EEF8ED98;
  v3[1] = &unk_1EEF8EDB0;
  v2[2] = @"MKDirectionsApplicationSupportedModes";
  v2[3] = @"UIBackgroundModes";
  v3[2] = &unk_1EEF8EDC8;
  v3[3] = &unk_1EEF8EDE0;
  v2[4] = @"AudioComponents";
  v2[5] = @"UIVPNPlugin";
  v3[4] = &unk_1EEF8EDF8;
  v3[5] = &unk_1EEF8EE10;
  v2[6] = @"SBAppTags";
  v2[7] = @"UIRequiredDeviceCapabilities";
  v3[6] = &unk_1EEF8EE28;
  v3[7] = &unk_1EEF8EE40;
  v2[8] = @"UISupportedExternalAccessoryProtocols";
  v2[9] = @"LSMinimumSystemVersionByArchitecture";
  v3[8] = &unk_1EEF8EE58;
  v3[9] = &unk_1EEF8EE70;
  v2[10] = @"LSEnvironment";
  v2[11] = @"storeCohort";
  v3[10] = &unk_1EEF8EE88;
  v3[11] = &unk_1EEF8EEA0;
  v2[12] = @"subgenres";
  v2[13] = @"INIntentsSupported";
  v3[12] = &unk_1EEF8EEB8;
  v3[13] = &unk_1EEF8EED0;
  v2[14] = @"INIntentsRestrictedWhileLocked";
  v2[15] = @"INIntentsRestrictedWhileProtectedDataUnavailable";
  v3[14] = &unk_1EEF8EED0;
  v3[15] = &unk_1EEF8EED0;
  v2[16] = @"INSupportedMediaCategories";
  v2[17] = @"LSEligibilityDeletionDomain";
  v3[16] = &unk_1EEF8EED0;
  v3[17] = &unk_1EEF8EEE8;
  v2[18] = @"JSNotificationURLFormat";
  v3[18] = &unk_1EEF8EF00;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:19];
  v1 = [LSBundleRecordBuilder _LSPlistRaritiesMap]::plistMap;
  [LSBundleRecordBuilder _LSPlistRaritiesMap]::plistMap = v0;
}

- (id)_LSKeyTypeMap
{
  if ([LSBundleRecordBuilder _LSKeyTypeMap]::onceToken != -1)
  {
    [LSBundleRecordBuilder _LSKeyTypeMap];
  }

  v3 = [LSBundleRecordBuilder _LSKeyTypeMap]::typeMap;

  return v3;
}

void __38__LSBundleRecordBuilder__LSKeyTypeMap__block_invoke()
{
  v3[14] = *MEMORY[0x1E69E9840];
  v2[0] = @"LSLaunchDLabel";
  v3[0] = objc_opt_class();
  v2[1] = @"LSFileQuarantineExcludedPathPatterns";
  v3[1] = objc_opt_class();
  v2[2] = @"MKDirectionsApplicationSupportedModes";
  v3[2] = objc_opt_class();
  v2[3] = @"UIBackgroundModes";
  v3[3] = objc_opt_class();
  v2[4] = @"AudioComponents";
  v3[4] = objc_opt_class();
  v2[5] = @"SBAppTags";
  v3[5] = objc_opt_class();
  v2[6] = @"UIRequiredDeviceCapabilities";
  v3[6] = objc_opt_class();
  v2[7] = @"UISupportedExternalAccessoryProtocols";
  v3[7] = objc_opt_class();
  v2[8] = @"LSMinimumSystemVersionByArchitecture";
  v3[8] = objc_opt_class();
  v2[9] = @"LSEnvironment";
  v3[9] = objc_opt_class();
  v2[10] = @"storeCohort";
  v3[10] = objc_opt_class();
  v2[11] = @"subgenres";
  v3[11] = objc_opt_class();
  v2[12] = @"LSEligibilityDeletionDomain";
  v3[12] = objc_opt_class();
  v2[13] = @"JSNotificationURLFormat";
  v3[13] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:14];
  v1 = [LSBundleRecordBuilder _LSKeyTypeMap]::typeMap;
  [LSBundleRecordBuilder _LSKeyTypeMap]::typeMap = v0;
}

- (void)setFlagsFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  _LSBundleFlagMap = [(LSBundleRecordBuilder *)self _LSBundleFlagMap];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__LSBundleRecordBuilder_setFlagsFromDictionary___block_invoke;
  v14[3] = &unk_1E6A1B008;
  v6 = dictionaryCopy;
  v15 = v6;
  selfCopy = self;
  [_LSBundleFlagMap enumerateKeysAndObjectsUsingBlock:v14];

  v7 = [v6 objectForKey:*MEMORY[0x1E695E120]];

  if (v7)
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:2];
  }

  v8 = [v6 objectForKey:@"Java"];

  if (v8)
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:0x2000];
  }

  v9 = objc_opt_class();
  v10 = [v6 objectForKey:@"UIApplicationSceneManifest"];
  v11 = v10;
  if (v9 && v10)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = 0;
      goto LABEL_14;
    }
  }

  else if (!v10)
  {
    goto LABEL_14;
  }

  if ([v11 _LS_BoolForKey:@"CPSupportsDashboardNavigationScene"])
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:0x4000000000000000];
  }

  if ([v11 _LS_BoolForKey:@"CPSupportsInstrumentClusterNavigationScene"])
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:0x8000000000000000];
  }

LABEL_14:

  registrationInfo = self->_registrationInfo;
  if (registrationInfo)
  {
    if (registrationInfo->bundleClass == 2)
    {
      v13 = 0;
      [(LSBundleRecordBuilder *)self addItemInfoFlag:_LSGetApplicationFlagsFromPlist(v6, 0, (LOBYTE(registrationInfo->itemFlags) >> 3) & 1, 0, 0, &v13)];
      if (v13)
      {
        [(LSBundleRecordBuilder *)self addBundleFlag:0x2000000000];
      }
    }
  }
}

void __48__LSBundleRecordBuilder_setFlagsFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) _LS_BoolForKey:v6])
  {
    [*(a1 + 40) addBundleFlag:{objc_msgSend(v5, "unsignedLongLongValue")}];
  }
}

- (void)setRaritiesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  _LSPlistRaritiesMap = [(LSBundleRecordBuilder *)self _LSPlistRaritiesMap];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__LSBundleRecordBuilder_setRaritiesFromDictionary___block_invoke;
  v7[3] = &unk_1E6A1B008;
  v7[4] = self;
  v6 = dictionaryCopy;
  v8 = v6;
  [_LSPlistRaritiesMap enumerateKeysAndObjectsUsingBlock:v7];
}

void __51__LSBundleRecordBuilder_setRaritiesFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) _LSKeyTypeMap];
  v7 = [v6 objectForKey:v14];

  v8 = [*(a1 + 40) objectForKey:v14];
  v9 = v8;
  if (v7 && v8)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v9 = 0;
      goto LABEL_9;
    }
  }

  else if (!v8)
  {
    goto LABEL_9;
  }

  v10 = *(a1 + 32);
  if (!v10[15])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    v12 = *(a1 + 32);
    v13 = *(v12 + 120);
    *(v12 + 120) = v11;

    v10 = *(a1 + 32);
  }

  [v10 addPlistFlag:{objc_msgSend(v5, "unsignedLongLongValue")}];
  [*(*(a1 + 32) + 120) setObject:v9 forKey:v14];
LABEL_9:
}

- (void)setCommonInfoPlistKeysFromDictionary:(id)dictionary
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__LSBundleRecordBuilder_setCommonInfoPlistKeysFromDictionary___block_invoke;
  v3[3] = &unk_1E6A1B030;
  v3[4] = self;
  [dictionary enumerateKeysAndObjectsUsingBlock:v3];
}

void __62__LSBundleRecordBuilder_setCommonInfoPlistKeysFromDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (_NSIsNSString() && _LSBundleInfoPlistKeyIsCommon(v10))
  {
    v6 = *(*(a1 + 32) + 128);
    if (!v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
      v8 = *(a1 + 32);
      v9 = *(v8 + 128);
      *(v8 + 128) = v7;

      v6 = *(*(a1 + 32) + 128);
    }

    [v6 setObject:v5 forKey:v10];
  }
}

- (void)parseArchitecturesFromDict:(id)dict
{
  dictCopy = dict;
  v4 = [dictCopy objectForKey:@"_LSSliceInfosKey"];
  slices = self->_slices;
  self->_slices = v4;
}

- (id)iconsDictionaryFromDict:(id)dict
{
  v32[1] = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v5 = objc_opt_class();
  v6 = [dictCopy objectForKey:@"CFBundleIcons"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
  }

  v9 = [dictCopy _LS_BoolForKey:@"UIPrerenderedIcon"];
  if (v9)
  {
    [(LSBundleRecordBuilder *)self addIconFlag:2];
  }

  v10 = objc_opt_class();
  v11 = [v7 objectForKey:@"CFBundlePrimaryIcon"];
  v12 = v11;
  if (!v10 || !v11)
  {
    if (!v11)
    {
      goto LABEL_15;
    }

LABEL_14:
    v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v7];
    v31 = @"CFBundleIconName";
    v32[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    [v13 setObject:v14 forKeyedSubscript:@"CFBundlePrimaryIcon"];

    v15 = [v13 copy];
    v7 = v15;
    goto LABEL_15;
  }

  if (objc_opt_isKindOfClass())
  {
    goto LABEL_14;
  }

  v12 = 0;
LABEL_15:
  if (!v7 || ![v7 count])
  {
    v16 = [dictCopy objectForKey:@"CFBundleIconFiles"];
    if (_NSIsNSArray())
    {
      v17 = v16;
      v18 = 0;
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }

    if (_NSIsNSString())
    {
      v18 = v16;
      if (v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v22 = objc_opt_class();
      v23 = [dictCopy objectForKey:*MEMORY[0x1E695E130]];
      v24 = v23;
      if (v22 && v23 && (objc_opt_isKindOfClass() & 1) == 0)
      {

        v18 = 0;
      }

      else
      {
        v18 = v24;
        if (v24)
        {
LABEL_22:
          v30 = v18;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
          if (!v17)
          {
LABEL_29:

            goto LABEL_30;
          }

LABEL_23:
          v28 = @"CFBundlePrimaryIcon";
          v19 = [MEMORY[0x1E696AD98] numberWithBool:{v9, @"CFBundleIconFiles", @"UIPrerenderedIcon", v17}];
          v27[1] = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:2];
          v29 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

          v7 = v21;
          goto LABEL_29;
        }
      }
    }

    v17 = 0;
    goto LABEL_29;
  }

LABEL_30:

  return v7;
}

- (void)parseIconFilenamesFromDict:(id)dict forPlatform:(unsigned int)platform
{
  dictCopy = dict;
  v6 = [(LSBundleRecordBuilder *)self iconsDictionaryFromDict:?];
  iconsDict = self->_iconsDict;
  self->_iconsDict = v6;

  if (_LSIconDictionarySupportsAssetCatalogs(self->_iconsDict))
  {
    [(LSBundleRecordBuilder *)self addIconFlag:4];
    v8 = _LSIconDictionaryGetPrimaryIconName(self->_iconsDict);
    primaryIconName = self->_primaryIconName;
    self->_primaryIconName = v8;
  }

  if (platform - 13 <= 0xFFFFFFFD && _LSIconDictionarySupportsAlternateIcons(self->_iconsDict))
  {
    [(LSBundleRecordBuilder *)self addIconFlag:8];
  }
}

- (void)parseDeviceFamilyFromDict:(id)dict
{
  v8[1] = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v5 = [dictCopy objectForKey:@"UIDeviceFamily"];
  if (!v5)
  {
    v5 = [dictCopy objectForKey:@"DeviceFamily"];
    if (!v5)
    {
      v5 = [dictCopy objectForKey:@"ProductType"];
    }
  }

  if (_NSIsNSArray())
  {
    objc_storeStrong(&self->_deviceFamily, v5);
  }

  else if ((_NSIsNSString() & 1) != 0 || _NSIsNSNumber())
  {
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    deviceFamily = self->_deviceFamily;
    self->_deviceFamily = v6;
  }
}

- (void)parseDocumentClaimsFromDict:(id)dict
{
  v27 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v4 = objc_opt_class();
  v5 = [dictCopy objectForKey:*MEMORY[0x1E695E128]];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  documentClaims = self->_documentClaims;
  self->_documentClaims = v6;

  v9 = LSCopyClaimListWithoutClaimsClaimingDefaultAppTypes(self->_documentClaims);
  v10 = self->_documentClaims;
  self->_documentClaims = v9;

  v11 = self->_documentClaims;
  if (!v11)
  {
    goto LABEL_26;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v11;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v13)
  {
    goto LABEL_25;
  }

  v14 = *v23;
  v15 = *MEMORY[0x1E695E178];
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v23 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v22 + 1) + 8 * i);
      if (_NSIsNSDictionary())
      {
        v18 = objc_opt_class();
        v19 = [v17 objectForKey:v15];
        v20 = v19;
        if (v18 && v19)
        {
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v20 = 0;
LABEL_20:

            continue;
          }
        }

        else if (!v19)
        {
          goto LABEL_20;
        }

        if (![v20 caseInsensitiveCompare:@"Shell"])
        {
          *&self->_moreFlags |= 0x4000u;

          goto LABEL_25;
        }

        goto LABEL_20;
      }
    }

    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_25:

LABEL_26:
}

- (void)parseURLClaimsFromDict:(id)dict
{
  v16[2] = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v5 = objc_opt_class();
  v6 = [dictCopy objectForKey:@"PrivateURLSchemes"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
  }

  v9 = objc_opt_class();
  v10 = [dictCopy objectForKey:*MEMORY[0x1E695E198]];
  v11 = v10;
  if (v9 && v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    if (v7)
    {
      goto LABEL_14;
    }

    v11 = 0;
LABEL_17:
    objc_storeStrong(&self->_URLClaims, v11);
    goto LABEL_18;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  if (!v11)
  {
LABEL_14:
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v11 = 0;
    goto LABEL_15;
  }

  v12 = [v11 mutableCopy];
LABEL_15:
  v15[0] = *MEMORY[0x1E695E190];
  v15[1] = @"CFBundleURLIsPrivate";
  v16[0] = v7;
  v16[1] = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [(NSArray *)v12 addObject:v13];
  URLClaims = self->_URLClaims;
  self->_URLClaims = v12;

LABEL_18:
}

- (BOOL)parseInfoPlist:(id)plist
{
  v299 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  if ((_NSIsNSDictionary() & 1) == 0)
  {
    goto LABEL_38;
  }

  v5 = objc_opt_class();
  v6 = [plistCopy objectForKey:*MEMORY[0x1E695E4F0]];
  v7 = v6;
  if (v5 && v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
  }

  identifier = self->_identifier;
  self->_identifier = v7;

  if (!self->_identifier)
  {
LABEL_38:
    v24 = 0;
    goto LABEL_368;
  }

  v9 = objc_opt_class();
  v10 = [plistCopy objectForKey:@"LSExecutableSDKVersion"];
  v11 = v10;
  if (v9 && v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
  }

  sdkVersion = self->_sdkVersion;
  self->_sdkVersion = v11;

  if (self->_sdkVersion)
  {
    _LSVersionNumberMakeWithString();
    v13 = v298;
    *self->_sdkVersionNumber._opaque = *buf;
    *&self->_sdkVersionNumber._opaque[16] = v13;
  }

  [(LSBundleRecordBuilder *)self setFlagsFromDictionary:plistCopy];
  [(LSBundleRecordBuilder *)self setRaritiesFromDictionary:plistCopy];
  [(LSBundleRecordBuilder *)self setCommonInfoPlistKeysFromDictionary:plistCopy];
  v14 = [plistCopy valueForKey:@"LSIsSecuredSystemContent"];
  if ([v14 BOOLValue])
  {
    v15 = 16;
  }

  else
  {
    v15 = 0;
  }

  *&self->_baseFlags = *&self->_baseFlags & 0xEF | v15;

  v286 = [plistCopy objectForKey:@"UIApplicationSupportsAlwaysOnDisplay"];
  if (v286 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ([v286 BOOLValue])
    {
      v16 = 512;
    }

    else
    {
      v16 = 0;
    }

    self->_moreFlags = (*&self->_moreFlags & 0xFFFFFDFF | v16);
  }

  if ([plistCopy _LS_BoolForKey:@"UIDefaultsToPrivateAlwaysOnDisplayTreatment"])
  {
    v17 = 1024;
  }

  else
  {
    v17 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFFFBFF | v17);
  if ([plistCopy _LS_BoolForKey:@"LSRequiresPostProcessing"])
  {
    v18 = 0x2000;
  }

  else
  {
    v18 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFFDFFF | v18);
  if ([plistCopy _LS_BoolForKey:@"NSSupportsLiveActivities"])
  {
    v19 = 2048;
  }

  else
  {
    v19 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFFF7FF | v19);
  if ([plistCopy _LS_BoolForKey:@"NSSupportsLiveActivitiesFrequentUpdates"])
  {
    v20 = 4096;
  }

  else
  {
    v20 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFFEFFF | v20);
  v21 = objc_opt_class();
  v22 = [plistCopy objectForKey:@"_LSIsLinkEnabled"];
  v23 = v22;
  if (!v21 || !v22)
  {
    if (!v22)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (objc_opt_isKindOfClass())
  {
LABEL_40:
    if ([v23 BOOLValue])
    {
      v25 = 8;
    }

    else
    {
      v25 = 0;
    }

    *&self->_baseFlags = *&self->_baseFlags & 0xF7 | v25;
  }

LABEL_45:
  v26 = [plistCopy objectForKey:@"_LSIsLinkEnabled"];
  if ([v26 BOOLValue])
  {
    v27 = 8;
  }

  else
  {
    v27 = 0;
  }

  *&self->_baseFlags = *&self->_baseFlags & 0xF7 | v27;

  v28 = objc_opt_class();
  v29 = [plistCopy objectForKey:@"PurchaserID"];
  v30 = v29;
  if (v28 && v29 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v30 = 0;
  }

  purchaserDSID = self->_purchaserDSID;
  self->_purchaserDSID = v30;

  self->_hfsType = _LSGetRawOSTypeForPossibleString([plistCopy objectForKey:*MEMORY[0x1E695E138]]);
  self->_platform = 0;
  v32 = objc_opt_class();
  v33 = [plistCopy objectForKey:@"LSExecutablePlatformKey"];
  v34 = v33;
  if (v32 && v33)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (v33)
  {
LABEL_57:
    self->_platform = [v34 unsignedLongLongValue];
LABEL_58:
  }

  v35 = objc_opt_class();
  v36 = [plistCopy objectForKey:@"DTAppStoreToolsBuild"];
  v37 = v36;
  if (v35 && v36 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v37 = 0;
  }

  appStoreToolsBuildVersion = self->_appStoreToolsBuildVersion;
  self->_appStoreToolsBuildVersion = v37;

  v39 = objc_opt_class();
  v40 = [plistCopy objectForKey:*MEMORY[0x1E695E500]];
  v41 = v40;
  if (v39 && v40 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v41 = 0;
  }

  version = self->_version;
  self->_version = v41;

  platform = self->_platform;
  _LSVersionNumberMakeWithString();
  _LSGetMinimumOSVersionStringAndReferencePlatformForPlatformSDKLinkage(plistCopy, platform, buf, &self->_minSystemVersion, &self->_minSystemVersionPlatform);
  v44 = objc_opt_class();
  v45 = [plistCopy objectForKey:@"LSMaximumSystemVersion"];
  v46 = v45;
  if (v44 && v45 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v46 = 0;
  }

  maxSystemVersion = self->_maxSystemVersion;
  self->_maxSystemVersion = v46;

  v48 = objc_opt_class();
  v49 = [plistCopy objectForKey:*MEMORY[0x1E695E148]];
  v50 = v49;
  if (v48 && v49 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v50 = 0;
  }

  shortVersionString = self->_shortVersionString;
  self->_shortVersionString = v50;

  v52 = objc_opt_class();
  v284 = *MEMORY[0x1E695E4F8];
  v53 = [plistCopy objectForKey:?];
  v54 = v53;
  if (v52 && v53 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v54 = 0;
  }

  bundleName = self->_bundleName;
  self->_bundleName = v54;

  v56 = objc_opt_class();
  v283 = *MEMORY[0x1E695E120];
  v57 = [plistCopy objectForKey:?];
  v58 = v57;
  if (v56 && v57 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v58 = 0;
  }

  displayName = self->_displayName;
  self->_displayName = v58;

  v60 = objc_opt_class();
  v61 = [plistCopy objectForKey:v284];
  v62 = v61;
  if (v60 && v61 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v62 = 0;
  }

  shortDisplayName = self->_shortDisplayName;
  self->_shortDisplayName = v62;

  v64 = objc_opt_class();
  v65 = [plistCopy objectForKey:@"NSMicrophoneUsageDescription"];
  v66 = v65;
  if (v64 && v65 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v66 = 0;
  }

  microphoneUsageDescription = self->_microphoneUsageDescription;
  self->_microphoneUsageDescription = v66;

  v68 = objc_opt_class();
  v69 = [plistCopy objectForKey:@"NSIdentityUsageDescription"];
  v70 = v69;
  if (v68 && v69 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v70 = 0;
  }

  identityUsageDescription = self->_identityUsageDescription;
  self->_identityUsageDescription = v70;

  v72 = objc_opt_class();
  v73 = [plistCopy objectForKey:@"artistName"];
  v74 = v73;
  if (v72 && v73 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v74 = 0;
  }

  vendorName = self->_vendorName;
  self->_vendorName = v74;

  v76 = objc_opt_class();
  v77 = [plistCopy objectForKey:@"itemName"];
  v78 = v77;
  if (v76 && v77 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v78 = 0;
  }

  itemName = self->_itemName;
  self->_itemName = v78;

  v80 = objc_opt_class();
  v81 = [plistCopy objectForKey:@"s"];
  v82 = v81;
  if (v80 && v81 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v82 = 0;
  }

  storefront = self->_storefront;
  self->_storefront = v82;

  v84 = objc_opt_class();
  v85 = [plistCopy objectForKey:@"softwareVersionExternalIdentifier"];
  v86 = v85;
  if (v84 && v85 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v86 = 0;
  }

  versionID = self->_versionID;
  self->_versionID = v86;

  if (!self->_versionID)
  {
    v88 = objc_opt_class();
    v89 = [plistCopy objectForKey:@"betaExternalVersionIdentifier"];
    v90 = v89;
    if (v88 && v89 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v90 = 0;
    }

    v91 = self->_versionID;
    self->_versionID = v90;
  }

  v92 = objc_opt_class();
  v93 = [plistCopy objectForKey:@"sourceApp"];
  v94 = v93;
  if (v92 && v93 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v94 = 0;
  }

  sourceAppBundleID = self->_sourceAppBundleID;
  self->_sourceAppBundleID = v94;

  v96 = objc_opt_class();
  v97 = [plistCopy objectForKey:@"variantID"];
  v98 = v97;
  if (v96 && v97 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v98 = 0;
  }

  appVariant = self->_appVariant;
  self->_appVariant = v98;

  v100 = objc_opt_class();
  v101 = [plistCopy objectForKey:@"_LSExecutablePath"];
  v102 = v101;
  if (v100 && v101 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v102 = 0;
  }

  execPath = self->_execPath;
  self->_execPath = v102;

  v104 = objc_opt_class();
  v105 = [plistCopy objectForKey:@"genre"];
  v106 = v105;
  if (v104 && v105 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v106 = 0;
  }

  genre = self->_genre;
  self->_genre = v106;

  v108 = objc_opt_class();
  v109 = [plistCopy objectForKey:@"distributorInfo"];
  v110 = v109;
  if (v108 && v109 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v110 = 0;
  }

  distributorInfo = self->_distributorInfo;
  self->_distributorInfo = v110;

  v112 = objc_opt_class();
  v113 = [plistCopy objectForKey:@"managementDeclarationIdentifier"];
  v114 = v113;
  if (v112 && v113 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v114 = 0;
  }

  managementDeclarationIdentifier = self->_managementDeclarationIdentifier;
  self->_managementDeclarationIdentifier = v114;

  v116 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  equivalentBundleIDs = self->_equivalentBundleIDs;
  self->_equivalentBundleIDs = v116;

  v118 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  counterpartAppBundleIDs = self->_counterpartAppBundleIDs;
  self->_counterpartAppBundleIDs = v118;

  v120 = objc_opt_class();
  v121 = [plistCopy objectForKey:@"LSCounterpartIdentifiers"];
  v285 = v121;
  v122 = v121;
  if (v120 && v121)
  {
    v122 = v121;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_147:
      v285 = 0;
      goto LABEL_148;
    }
  }

  else if (!v121)
  {
    goto LABEL_147;
  }

  [(NSMutableSet *)self->_counterpartAppBundleIDs addObjectsFromArray:v122];
  [(NSMutableSet *)self->_equivalentBundleIDs addObjectsFromArray:v122];
LABEL_148:
  v123 = objc_opt_class();
  v124 = [plistCopy objectForKey:@"NSEquivalentBundleIdentifiers"];
  v287 = v124;
  v125 = v124;
  if (v123 && v124)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    v125 = v287;
    if ((isKindOfClass & 1) == 0)
    {

LABEL_154:
      v287 = 0;
      goto LABEL_155;
    }
  }

  else if (!v124)
  {
    goto LABEL_154;
  }

  [(NSMutableSet *)self->_equivalentBundleIDs addObjectsFromArray:v125];
LABEL_155:
  v127 = objc_opt_class();
  v128 = [plistCopy objectForKey:@"label"];
  v129 = v128;
  if (v127 && v128 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v129 = 0;
  }

  ratingLabel = self->_ratingLabel;
  self->_ratingLabel = v129;

  v131 = objc_opt_class();
  v132 = [plistCopy objectForKey:@"itemId"];
  v133 = v132;
  if (v131 && v132 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v133 = 0;
  }

  itemID = self->_itemID;
  self->_itemID = v133;

  v135 = objc_opt_class();
  v136 = [plistCopy objectForKey:@"rank"];
  v137 = v136;
  if (v135 && v136 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v137 = 0;
  }

  ratingRank = self->_ratingRank;
  self->_ratingRank = v137;

  v139 = objc_opt_class();
  v140 = [plistCopy objectForKey:@"genreId"];
  v141 = v140;
  if (v139 && v140 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v141 = 0;
  }

  genreID = self->_genreID;
  self->_genreID = v141;

  v143 = objc_opt_class();
  v144 = [plistCopy objectForKey:@"LSApplicationCategoryType"];
  v145 = v144;
  if (v143 && v144 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v145 = 0;
  }

  categoryType = self->_categoryType;
  self->_categoryType = v145;

  v147 = objc_opt_class();
  v148 = [plistCopy objectForKey:@"LSApplicationSecondaryCategoryType"];
  v149 = v148;
  if (v147 && v148 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v149 = 0;
  }

  secondCategoryType = self->_secondCategoryType;
  self->_secondCategoryType = v149;

  if (!self->_categoryType && !self->_secondCategoryType)
  {
    v151 = objc_opt_class();
    v152 = [plistCopy objectForKey:@"categories"];
    v153 = v152;
    if (v151 && v152 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v153 = 0;
    }

    firstObject = [v153 firstObject];
    objc_opt_class();
    v155 = objc_opt_isKindOfClass();

    if (v155)
    {
      firstObject2 = [v153 firstObject];
      v157 = self->_categoryType;
      self->_categoryType = firstObject2;

      if ([v153 count] >= 2)
      {
        v158 = [v153 objectAtIndex:1];
        objc_opt_class();
        v159 = objc_opt_isKindOfClass();

        if (v159)
        {
          v160 = [v153 objectAtIndex:1];
          v161 = self->_secondCategoryType;
          self->_secondCategoryType = v160;
        }
      }
    }
  }

  v162 = objc_opt_class();
  v163 = [plistCopy objectForKey:@"MachOUUIDs"];
  v164 = v163;
  if (v162 && v163 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v164 = 0;
  }

  machOUUIDs = self->_machOUUIDs;
  self->_machOUUIDs = v164;

  v166 = objc_opt_class();
  v167 = [plistCopy objectForKey:@"LSApplicationQueriesSchemes"];
  v168 = v167;
  if (v166 && v167 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v168 = 0;
  }

  queriableSchemes = self->_queriableSchemes;
  self->_queriableSchemes = v168;

  v170 = objc_opt_class();
  v171 = [plistCopy objectForKey:@"_LSBundleLibraryPath"];
  v172 = v171;
  if (v170 && v171 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v172 = 0;
  }

  libraryPath = self->_libraryPath;
  self->_libraryPath = v172;

  v174 = objc_opt_class();
  v175 = [plistCopy objectForKey:@"_LSBundleLibraryItems"];
  v176 = v175;
  if (v174 && v175 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v176 = 0;
  }

  libraryItems = self->_libraryItems;
  self->_libraryItems = v176;

  v178 = objc_opt_class();
  v179 = [plistCopy objectForKey:@"UTExportedTypeDeclarations"];
  v180 = v179;
  if (v178 && v179 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v180 = 0;
  }

  exportedTypes = self->_exportedTypes;
  self->_exportedTypes = v180;

  v182 = objc_opt_class();
  v183 = [plistCopy objectForKey:@"UTImportedTypeDeclarations"];
  v184 = v183;
  if (v182 && v183 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v184 = 0;
  }

  importedTypes = self->_importedTypes;
  self->_importedTypes = v184;

  [(LSBundleRecordBuilder *)self parseDocumentClaimsFromDict:plistCopy];
  v186 = objc_opt_class();
  v187 = [plistCopy objectForKey:@"_LSBundlePlugins"];
  v188 = v187;
  if (v186 && v187 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v188 = 0;
  }

  pluginPlists = self->_pluginPlists;
  self->_pluginPlists = v188;

  v190 = objc_opt_class();
  v191 = [plistCopy objectForKey:@"_LSIntentDefinitionURLs"];
  v192 = v191;
  if (v190 && v191 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v192 = 0;
  }

  intentDefinitionURLs = self->_intentDefinitionURLs;
  self->_intentDefinitionURLs = v192;

  v194 = objc_opt_class();
  v195 = [plistCopy objectForKey:@"BGTaskSchedulerPermittedIdentifiers"];
  v196 = v195;
  if (v194 && v195 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v196 = 0;
  }

  bgPermittedIdentifiers = self->_bgPermittedIdentifiers;
  self->_bgPermittedIdentifiers = v196;

  v198 = objc_opt_class();
  v199 = [plistCopy objectForKey:@"CARInstrumentClusterURLSchemes"];
  v200 = v199;
  if (v198 && v199 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v200 = 0;
  }

  carPlayInstrumentClusterURLSchemes = self->_carPlayInstrumentClusterURLSchemes;
  self->_carPlayInstrumentClusterURLSchemes = v200;

  v202 = objc_opt_class();
  v203 = [plistCopy objectForKey:@"GCSupportsControllerUserInteraction"];
  v204 = v203;
  if (v202 && v203)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_239:

      goto LABEL_240;
    }

LABEL_235:
    if ([v204 BOOLValue])
    {
      v205 = 4;
    }

    else
    {
      v205 = 0;
    }

    self->_moreFlags = (*&self->_moreFlags & 0xFFFFFFFB | v205);
    goto LABEL_239;
  }

  if (v203)
  {
    goto LABEL_235;
  }

LABEL_240:
  v206 = objc_opt_class();
  v207 = [plistCopy objectForKey:@"GCSupportedGameControllers"];
  v208 = v207;
  if (v206 && v207 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v208 = 0;
  }

  supportedGameControllers = self->_supportedGameControllers;
  self->_supportedGameControllers = v208;

  v210 = objc_opt_class();
  v211 = [plistCopy objectForKey:@"CoreSpotlightContinuation"];
  v212 = v211;
  if (v210 && v211)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_253:

      goto LABEL_254;
    }

LABEL_249:
    if ([v212 BOOLValue])
    {
      v213 = 8;
    }

    else
    {
      v213 = 0;
    }

    self->_moreFlags = (*&self->_moreFlags & 0xFFFFFFF7 | v213);
    goto LABEL_253;
  }

  if (v211)
  {
    goto LABEL_249;
  }

LABEL_254:
  v214 = objc_opt_class();
  v215 = [plistCopy objectForKey:@"CoreSpotlightActions"];
  v216 = v215;
  if (v214 && v215)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_260;
    }
  }

  else if (!v215)
  {
    goto LABEL_261;
  }

  *&self->_moreFlags |= 0x10u;
LABEL_260:

LABEL_261:
  v217 = [plistCopy objectForKey:@"GCSupportsGameMode"];
  v218 = v217 == 0;

  if (!v218)
  {
    *&self->_moreFlags |= 0x800000u;
    if ([plistCopy _LS_BoolForKey:@"GCSupportsGameMode"])
    {
      v219 = 0x1000000;
    }

    else
    {
      v219 = 0;
    }

    self->_moreFlags = (*&self->_moreFlags & 0xFEFFFFFF | v219);
  }

  v220 = [plistCopy objectForKey:@"LSSupportsGameMode"];
  v221 = v220 == 0;

  if (!v221)
  {
    *&self->_moreFlags |= 0x800000u;
    if ([plistCopy _LS_BoolForKey:@"LSSupportsGameMode"])
    {
      v222 = 0x1000000;
    }

    else
    {
      v222 = 0;
    }

    self->_moreFlags = (*&self->_moreFlags & 0xFEFFFFFF | v222);
  }

  if ([plistCopy _LS_BoolForKey:@"_LSIsOnCryptex"])
  {
    v223 = 0x2000000;
  }

  else
  {
    v223 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFDFFFFFF | v223);
  v224 = objc_opt_class();
  v225 = [plistCopy objectForKey:@"_LSLocalizedStringsDictionary"];
  v226 = v225;
  if (v224 && v225)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v226 = 0;
      goto LABEL_295;
    }
  }

  else if (!v225)
  {
    goto LABEL_295;
  }

  v227 = objc_opt_class();
  v228 = objc_opt_class();
  if (_LSIsDictionaryWithKeysAndValuesOfClass(v226, v227, v228))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&v298 = 0x2020000000;
    BYTE8(v298) = 1;
    v295[0] = MEMORY[0x1E69E9820];
    v295[1] = 3221225472;
    v295[2] = __40__LSBundleRecordBuilder_parseInfoPlist___block_invoke;
    v295[3] = &unk_1E6A1B058;
    v295[4] = buf;
    [v226 enumerateKeysAndObjectsUsingBlock:v295];
    if (*(*&buf[8] + 24) == 1)
    {
      objc_storeStrong(&self->_localizedStrings, v226);
      v229 = [v226 objectForKeyedSubscript:v283];
      v230 = v229;
      if (v229 && [v229 count])
      {
        objc_storeStrong(&self->_localizedNames, v230);
      }

      v231 = [v226 objectForKeyedSubscript:v284];
      v232 = v231;
      if (v231 && [v231 count])
      {
        objc_storeStrong(&self->_localizedShortNames, v232);
      }

      v233 = [v226 objectForKeyedSubscript:@"NSMicrophoneUsageDescription"];
      v234 = v233;
      if (v233 && [v233 count])
      {
        objc_storeStrong(&self->_localizedMicrophoneUsageDescription, v234);
      }

      v235 = [v226 objectForKeyedSubscript:@"NSIdentityUsageDescription"];
      v236 = v235;
      if (v235 && [v235 count])
      {
        objc_storeStrong(&self->_localizedIdentityUsageDescription, v236);
      }

      v237 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v292[0] = MEMORY[0x1E69E9820];
      v292[1] = 3221225472;
      v292[2] = __40__LSBundleRecordBuilder_parseInfoPlist___block_invoke_2;
      v292[3] = &unk_1E6A1B080;
      v238 = v237;
      v293 = v238;
      v294 = plistCopy;
      _LSBundleDisplayNameContextEnumerate(v292);
      v239 = [v238 copy];
      unlocalizedNamesWithContext = self->_unlocalizedNamesWithContext;
      self->_unlocalizedNamesWithContext = v239;
    }

    _Block_object_dispose(buf, 8);
  }

LABEL_295:

  *&self->_baseFlags = (2 * *&self->_baseFlags) & 0x20 | *&self->_baseFlags & 0xDF;
  v241 = objc_opt_class();
  v242 = [plistCopy objectForKey:@"bundlePersonas"];
  v243 = v242;
  if (v241 && v242 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v243 = 0;
  }

  bundlePersonas = self->_bundlePersonas;
  self->_bundlePersonas = v243;

  v245 = [plistCopy objectForKey:@"_LSUsesSystemPersona"];
  bOOLValue = [v245 BOOLValue];

  if (bOOLValue)
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:0x100000000000000];
  }

  v290 = 0u;
  v291 = 0u;
  v288 = 0u;
  v289 = 0u;
  v247 = self->_bundlePersonas;
  v248 = [(NSArray *)v247 countByEnumeratingWithState:&v288 objects:v296 count:16];
  if (v248)
  {
    v249 = *v289;
    do
    {
      for (i = 0; i != v248; ++i)
      {
        if (*v289 != v249)
        {
          objc_enumerationMutation(v247);
        }

        v251 = *(*(&v288 + 1) + 8 * i);
        if ([(_LSPersonaWithAttributes *)v251 personaType]!= 1 && [(_LSPersonaWithAttributes *)v251 personaType]!= 3)
        {
          *&self->_baseFlags &= ~0x20u;
        }
      }

      v248 = [(NSArray *)v247 countByEnumeratingWithState:&v288 objects:v296 count:16];
    }

    while (v248);
  }

  v252 = objc_opt_class();
  v253 = [plistCopy objectForKey:@"_LSDirectoryClass"];
  v254 = v253;
  if (v252 && v253 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v254 = 0;
  }

  directoryClass = self->_directoryClass;
  self->_directoryClass = v254;

  [(LSBundleRecordBuilder *)self parseURLClaimsFromDict:plistCopy];
  [(LSBundleRecordBuilder *)self parseIconFilenamesFromDict:plistCopy forPlatform:self->_platform];
  [(LSBundleRecordBuilder *)self parseDeviceFamilyFromDict:plistCopy];
  [(LSBundleRecordBuilder *)self parseArchitecturesFromDict:plistCopy];
  v256 = objc_opt_class();
  v257 = [plistCopy objectForKey:@"_LSRequiresGarbageCollection"];
  v258 = v257;
  if (v256 && v257)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_324:

      goto LABEL_325;
    }

LABEL_320:
    if ([v258 BOOLValue])
    {
      v259 = 2;
    }

    else
    {
      v259 = 0;
    }

    *&self->_baseFlags = *&self->_baseFlags & 0xFD | v259;
    goto LABEL_324;
  }

  if (v257)
  {
    goto LABEL_320;
  }

LABEL_325:
  v260 = objc_opt_class();
  v261 = [plistCopy objectForKey:@"NSBuiltWithThreadSanitizer"];
  v262 = v261;
  if (v260 && v261)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_334:

      goto LABEL_335;
    }

LABEL_330:
    if ([v262 BOOLValue])
    {
      v263 = 4;
    }

    else
    {
      v263 = 0;
    }

    *&self->_baseFlags = *&self->_baseFlags & 0xFB | v263;
    goto LABEL_334;
  }

  if (v261)
  {
    goto LABEL_330;
  }

LABEL_335:
  v264 = objc_opt_class();
  v265 = [plistCopy objectForKey:@"LSExecutableFormat"];
  v266 = v265;
  if (v264 && v265)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v266 = 0;
      goto LABEL_342;
    }
  }

  else if (!v265)
  {
    goto LABEL_342;
  }

  if ([v266 isEqualToString:@"LSExecutable#!Format"])
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:16];
  }

LABEL_342:
  if (self->_inode)
  {
    v267 = 0;
  }

  else
  {
    v268 = [plistCopy objectForKey:*MEMORY[0x1E695E4E8]];
    v267 = v268 != 0;
  }

  v269 = objc_opt_class();
  v270 = [plistCopy objectForKey:@"LSEligibilityInstallPredicate"];
  v271 = v270;
  if (!v269 || !v270)
  {
    if (!v270)
    {
      goto LABEL_351;
    }

LABEL_350:

LABEL_356:
    [(LSBundleRecordBuilder *)self addPlistFlag:0x2000000];
    goto LABEL_357;
  }

  if (objc_opt_isKindOfClass())
  {
    goto LABEL_350;
  }

LABEL_351:
  v272 = objc_opt_class();
  v273 = [plistCopy objectForKey:@"LSEligibilityUninstallPredicate"];
  v274 = v273;
  if (v272 && v273 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v274 = 0;
  }

  if (v274)
  {
    goto LABEL_356;
  }

LABEL_357:
  v275 = objc_opt_class();
  v276 = [plistCopy objectForKey:@"LSRequiredFeatureFlags"];
  v277 = v276;
  if (v275 && v276)
  {
    v278 = objc_opt_isKindOfClass();

    if ((v278 & 1) == 0)
    {
      goto LABEL_363;
    }

    goto LABEL_362;
  }

  v279 = v276 == 0;

  if (!v279)
  {
LABEL_362:
    [(LSBundleRecordBuilder *)self addPlistFlag:0x4000000];
  }

LABEL_363:
  if (v267)
  {
    v280 = _LSInstallLog([(LSBundleRecordBuilder *)self addBundleFlag:512]);
    if (os_log_type_enabled(v280, OS_LOG_TYPE_DEFAULT))
    {
      v281 = self->_identifier;
      *buf = 138412290;
      *&buf[4] = v281;
      _os_log_impl(&dword_18162D000, v280, OS_LOG_TYPE_DEFAULT, "Placeholder detected - Flagging bundle %@ incomplete", buf, 0xCu);
    }
  }

  v24 = 1;
LABEL_368:

  return v24;
}

void __40__LSBundleRecordBuilder_parseInfoPlist___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  if ((_LSIsDictionaryWithKeysAndValuesOfClass(v8, v6, v7) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __40__LSBundleRecordBuilder_parseInfoPlist___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = objc_opt_class();
  v8 = [v6 objectForKey:a4];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v8;
    if (objc_opt_isKindOfClass())
    {
      v9 = v11;
    }

    else
    {

      v9 = 0;
    }
  }

  v12 = v9;
  [*(a1 + 32) setObject:v9 forKeyedSubscript:a4];
}

- (BOOL)parseInstallationInfo:(id)info
{
  v152 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = _NSIsNSDictionary();
  if ((v5 & 1) == 0)
  {
    goto LABEL_170;
  }

  v6 = objc_opt_class();
  v7 = [infoCopy objectForKey:@"Entitlements"];
  v8 = v7;
  if (v6 && v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  entitlements = self->_entitlements;
  self->_entitlements = v8;

  v10 = self->_entitlements;
  if (v10 && (*(&self->_moreFlags + 1) & 0x80) == 0)
  {
    [(NSDictionary *)v10 enumerateKeysAndObjectsWithOptions:0 usingBlock:&__block_literal_global_554];
  }

  v11 = objc_opt_class();
  v12 = [infoCopy objectForKey:@"BundleContainer"];
  v13 = v12;
  if (v11 && v12)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v12)
  {
LABEL_14:
    v14 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v13 isDirectory:1];
    bundleContainerURL = self->_bundleContainerURL;
    self->_bundleContainerURL = v14;

LABEL_15:
  }

  [(LSBundleRecordBuilder *)self setFlagsFromDictionary:infoCopy];
  [(LSBundleRecordBuilder *)self setRaritiesFromDictionary:infoCopy];
  v16 = objc_opt_class();
  v17 = [infoCopy objectForKey:@"CompatibilityState"];
  v18 = v17;
  if (v16 && v17 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v18 = 0;
  }

  compatibilityState = self->_compatibilityState;
  self->_compatibilityState = v18;

  v20 = objc_opt_class();
  v21 = [infoCopy objectForKey:@"PlaceholderFailureReason"];
  v22 = v21;
  if (v20 && v21 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v22 = 0;
  }

  installFailureReason = self->_installFailureReason;
  self->_installFailureReason = v22;

  v24 = objc_opt_class();
  v25 = [infoCopy objectForKey:@"LSInstallType"];
  v26 = v25;
  if (v24 && v25 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v26 = 0;
  }

  installType = self->_installType;
  self->_installType = v26;

  v28 = [infoCopy _LS_BoolForKey:@"IsContainerized"];
  self->_containerized = v28;
  if (v28)
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:0x4000000000];
    v29 = objc_opt_class();
    v30 = [infoCopy objectForKey:@"Container"];
    v31 = v30;
    if (v29 && v30)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (v30)
    {
LABEL_34:
      v32 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v31 isDirectory:1];
      dataContainerURL = self->_dataContainerURL;
      self->_dataContainerURL = v32;

LABEL_35:
    }
  }

  v34 = objc_opt_class();
  v35 = [infoCopy objectForKey:@"StashedVersionInfo"];
  v36 = v35;
  if (v34 && v35 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v36 = 0;
  }

  stashedAppInfo = self->_stashedAppInfo;
  self->_stashedAppInfo = v36;

  v38 = [infoCopy objectForKey:@"ApplicationDSID"];

  if (v38)
  {
    purchaserDSID = self->_purchaserDSID;
    if (purchaserDSID)
    {
      self->_purchaserDSID = 0;
    }

    v40 = objc_opt_class();
    v41 = [infoCopy objectForKey:@"ApplicationDSID"];
    v42 = v41;
    if (v40 && v41 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v42 = 0;
    }

    v43 = self->_purchaserDSID;
    self->_purchaserDSID = v42;
  }

  v44 = objc_opt_class();
  v45 = [infoCopy objectForKey:@"DownloaderDSID"];
  v46 = v45;
  if (v44 && v45 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v46 = 0;
  }

  downloaderDSID = self->_downloaderDSID;
  self->_downloaderDSID = v46;

  v48 = objc_opt_class();
  v49 = [infoCopy objectForKey:@"FamilyID"];
  v50 = v49;
  if (v48 && v49 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v50 = 0;
  }

  familyID = self->_familyID;
  self->_familyID = v50;

  v52 = objc_opt_class();
  v53 = [infoCopy objectForKey:@"SignerIdentity"];
  v54 = v53;
  if (v52 && v53 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v54 = 0;
  }

  signerIdentity = self->_signerIdentity;
  self->_signerIdentity = v54;

  v56 = objc_opt_class();
  v57 = [infoCopy objectForKey:@"CodeInfoIdentifier"];
  v58 = v57;
  if (v56 && v57 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v58 = 0;
  }

  codeInfoIdentifier = self->_codeInfoIdentifier;
  self->_codeInfoIdentifier = v58;

  v60 = objc_opt_class();
  v61 = [infoCopy objectForKey:@"SignerOrganization"];
  v62 = v61;
  if (v60 && v61 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v62 = 0;
  }

  signerOrganization = self->_signerOrganization;
  self->_signerOrganization = v62;

  v64 = objc_opt_class();
  v65 = [infoCopy objectForKey:@"ApplicationType"];
  v66 = v65;
  if (v64 && v65 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v66 = 0;
  }

  appType = self->_appType;
  self->_appType = v66;

  v68 = objc_opt_class();
  v69 = [infoCopy objectForKey:@"SerializedPlaceholderPath"];
  v70 = v69;
  if (v68 && v69 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v70 = 0;
  }

  serializedPlaceholderPath = self->_serializedPlaceholderPath;
  self->_serializedPlaceholderPath = v70;

  v72 = [(NSString *)self->_appType isEqualToString:@"SystemAppPlaceholder"];
  if (v72)
  {
    self->_bundleClass = 14;
    v73 = _LSRegistrationLog(v72);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v150 = 138412290;
      v151 = identifier;
      _os_log_impl(&dword_18162D000, v73, OS_LOG_TYPE_DEBUG, "Setting LSBundleClassSystemPlaceholder for app %@", &v150, 0xCu);
    }
  }

  v75 = objc_opt_class();
  v76 = [infoCopy objectForKey:@"WatchKitVersion"];
  v77 = v76;
  if (v75 && v76 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v77 = 0;
  }

  watchKitVersion = self->_watchKitVersion;
  self->_watchKitVersion = v77;

  v79 = objc_opt_class();
  v80 = [infoCopy objectForKey:@"ComplicationPrincipalClass"];
  v81 = v80;
  if (v79 && v80 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v81 = 0;
  }

  complicationPrincipalClass = self->_complicationPrincipalClass;
  self->_complicationPrincipalClass = v81;

  v83 = objc_opt_class();
  v84 = [infoCopy objectForKey:@"StaticDiskUsage"];
  v85 = v84;
  if (v83 && v84 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v85 = 0;
  }

  staticDiskUsage = self->_staticDiskUsage;
  self->_staticDiskUsage = v85;

  v87 = objc_opt_class();
  v88 = [infoCopy objectForKey:@"SupportedComplicationFamilies"];
  v89 = v88;
  if (v87 && v88 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v89 = 0;
  }

  supportedComplicationFamilies = self->_supportedComplicationFamilies;
  self->_supportedComplicationFamilies = v89;

  v91 = objc_opt_class();
  v92 = [infoCopy objectForKey:@"LSCounterpartIdentifiers"];
  v93 = v92;
  if (v91 && v92)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v93 = 0;
      goto LABEL_102;
    }
  }

  else if (!v92)
  {
    goto LABEL_102;
  }

  [(NSMutableSet *)self->_counterpartAppBundleIDs addObjectsFromArray:v93];
  [(NSMutableSet *)self->_equivalentBundleIDs addObjectsFromArray:v93];
LABEL_102:
  v94 = objc_opt_class();
  v95 = [infoCopy objectForKey:@"GroupContainers"];
  v96 = v95;
  if (v94 && v95 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v96 = 0;
  }

  groupContainers = self->_groupContainers;
  self->_groupContainers = v96;

  v98 = objc_opt_class();
  v99 = [infoCopy objectForKey:@"EnvironmentVariables"];
  v100 = v99;
  if (v98 && v99 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v100 = 0;
  }

  sandboxEnvironmentVariables = self->_sandboxEnvironmentVariables;
  self->_sandboxEnvironmentVariables = v100;

  v102 = objc_opt_class();
  v103 = [infoCopy objectForKey:@"_LSBundlePlugins"];
  v104 = v103;
  if (v102 && v103 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v104 = 0;
  }

  pluginMIDicts = self->_pluginMIDicts;
  self->_pluginMIDicts = v104;

  v106 = objc_opt_class();
  v107 = [infoCopy objectForKey:@"DriverKitExtensionPaths"];
  v108 = v107;
  if (v106 && v107 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v108 = 0;
  }

  driverExtensionPaths = self->_driverExtensionPaths;
  self->_driverExtensionPaths = v108;

  v110 = _LSGetTeamIdentifierFromInstallDict(infoCopy);
  teamID = self->_teamID;
  self->_teamID = v110;

  v112 = objc_opt_class();
  v113 = [infoCopy objectForKey:@"IsOnDemandInstallCapable"];
  v114 = v113;
  if (v112 && v113 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v114 = 0;
  }

  if ([v114 BOOLValue])
  {
    [(LSBundleRecordBuilder *)self addBundleFlag:0x1000000000000000];
    v115 = objc_opt_class();
    v116 = [infoCopy objectForKey:@"ParentIdentifiers"];
    v117 = v116;
    if (v115 && v116 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v117 = 0;
    }

    parentApplicationIdentifiers = self->_parentApplicationIdentifiers;
    self->_parentApplicationIdentifiers = v117;
  }

  [(LSBundleRecordBuilder *)self setProfileValidationState:_LSGetProfileValidationStateFromInstallDictionary(infoCopy)];
  v119 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v120 = objc_opt_class();
  v121 = [infoCopy objectForKey:@"UniqueInstallID"];
  v122 = v121;
  if (v120 && v121 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v122 = 0;
  }

  [v119 setObject:v122 forKeyedSubscript:@"UniqueInstallID"];

  v123 = objc_opt_class();
  v124 = [infoCopy objectForKey:@"InstallSessionID"];
  v125 = v124;
  if (v123 && v124 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v125 = 0;
  }

  [v119 setObject:v125 forKeyedSubscript:@"InstallSessionID"];

  if ([v119 count])
  {
    v126 = [v119 copy];
    mobileInstallIDs = self->_mobileInstallIDs;
    self->_mobileInstallIDs = v126;
  }

  if ([infoCopy _LS_BoolForKey:@"CodeSigningInfoNotAuthoritative"])
  {
    v128 = 32;
  }

  else
  {
    v128 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFFFFDF | v128);
  if ([infoCopy _LS_BoolForKey:@"IsSwiftPlaygroundsApp"])
  {
    v129 = 256;
  }

  else
  {
    v129 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFFFEFF | v129);
  v130 = objc_opt_class();
  v131 = [infoCopy objectForKey:@"AppManagementDomain"];
  v132 = v131;
  if (v130 && v131 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v132 = 0;
  }

  applicationManagementDomain = self->_applicationManagementDomain;
  self->_applicationManagementDomain = v132;

  v134 = objc_opt_class();
  v135 = [infoCopy objectForKey:@"LinkedParentBundleID"];
  v136 = v135;
  if (v134 && v135 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v136 = 0;
  }

  linkedParentBundleID = self->_linkedParentBundleID;
  self->_linkedParentBundleID = v136;

  v138 = objc_opt_class();
  v139 = [infoCopy objectForKey:@"SignatureVersion"];
  v140 = v139;
  if (v138 && v139 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v140 = 0;
  }

  signatureVersion = self->_signatureVersion;
  self->_signatureVersion = v140;

  v142 = objc_opt_class();
  v143 = [infoCopy objectForKey:@"AlternateIconName"];
  v144 = v143;
  if (v142 && v143 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v144 = 0;
  }

  alternatePrimaryIconName = self->_alternatePrimaryIconName;
  self->_alternatePrimaryIconName = v144;

  self->_webNotificationPlaceholder = [infoCopy _LS_BoolForKey:@"IsWebNotificationBundle"];
  if ([infoCopy _LS_BoolForKey:@"IsEligibleForWatchAppInstall"])
  {
    v146 = 0x10000;
  }

  else
  {
    v146 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFFEFFFF | v146);
  if ([infoCopy _LS_BoolForKey:@"IsMarketplace"])
  {
    v147 = 0x80000;
  }

  else
  {
    v147 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFF7FFFF | v147);
  if ([infoCopy _LS_BoolForKey:@"SupportsAppMigration"])
  {
    v148 = 0x400000;
  }

  else
  {
    v148 = 0;
  }

  self->_moreFlags = (*&self->_moreFlags & 0xFFBFFFFF | v148);

LABEL_170:
  return v5;
}

- (void)parseActivityTypesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21 = 0;
  entitlements = self->_entitlements;
  if (entitlements)
  {
    v6 = objc_opt_class();
    v7 = [(NSDictionary *)entitlements objectForKey:@"useractivity-team-identifier"];
    teamID = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (v7)
      {
LABEL_12:
        v21 = teamID;
LABEL_19:
        identifier = self->_identifier;
        goto LABEL_20;
      }
    }

    else
    {
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        goto LABEL_12;
      }
    }

    v12 = self->_entitlements;
    v13 = objc_opt_class();
    v14 = [(NSDictionary *)v12 objectForKey:@"com.apple.developer.team-identifier"];
    teamID = v14;
    if (v13 && v14 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      teamID = 0;
    }

    v21 = teamID;
    if (teamID)
    {
      goto LABEL_19;
    }

    v17 = self->_entitlements;
    v18 = objc_opt_class();
    v19 = [(NSDictionary *)v17 objectForKey:@"application-identifier"];
    v20 = v19;
    if (v18 && v19)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v20 = 0;
        goto LABEL_30;
      }
    }

    else if (!v19)
    {
      goto LABEL_30;
    }

    _LSSplitApplicationIdentifier(v20, &v21, 0);
LABEL_30:

    teamID = v21;
    identifier = self->_identifier;
    if (v21)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  identifier = self->_identifier;
LABEL_10:
  teamID = self->_teamID;
LABEL_20:
  v15 = _LSCopyActivityTypesClaimedHashedAdvertisingStrings(identifier, teamID, dictionaryCopy, self->_entitlements);
  v16 = v15;
  if (v15 && [(__CFArray *)v15 count])
  {
    objc_storeStrong(&self->_activityTypes, v16);
  }
}

- (void)parseNSExtensionSDKDefinitionsFromDictionary:(id)dictionary
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  context = objc_autoreleasePoolPush();
  v28 = objc_opt_new();
  selfCopy = self;
  entitlements = self->_entitlements;
  if (entitlements)
  {
    v5 = [(NSDictionary *)entitlements objectForKey:@"com.apple.private.coreservices.definesExtensionPoint"];

    if (v5)
    {
      v6 = objc_opt_class();
      v7 = [dictionaryCopy objectForKey:@"NSExtensionSDK"];
      v8 = v7;
      if (v6 && v7 && (objc_opt_isKindOfClass() & 1) == 0)
      {

        v8 = 0;
      }

      [v28 addEntriesFromDictionary:v8];
    }
  }

  v9 = objc_opt_class();
  v10 = [dictionaryCopy objectForKey:@"_LSBundleExtensionPoints"];
  v11 = v10;
  if (v9 && v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v13)
  {
    v14 = *v30;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          v20 = _LSExtensionsLog(isKindOfClass);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            [(LSBundleRecordBuilder *)v22 parseNSExtensionSDKDefinitionsFromDictionary:buf, v20];
          }

          goto LABEL_28;
        }

        v18 = _LSExtensionsLog(isKindOfClass);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v16;
          _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "Registering extension point definition: %@", buf, 0xCu);
        }

        v19 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v16];
        if (v19)
        {
          [v28 addEntriesFromDictionary:v19];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  if ([v28 count])
  {
    v23 = [v28 copy];
    extensionSDK = selfCopy->_extensionSDK;
    selfCopy->_extensionSDK = v23;
  }

  objc_autoreleasePoolPop(context);
}

- (LSBundleData)buildBundleData:(SEL)data error:(id)error
{
  v219 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  bzero(retstr, 0x238uLL);
  retries = self->_retries;
  LOBYTE(retstr->queriableSchemes) = 11;
  BYTE1(retstr->queriableSchemes) = retries;
  __src = retstr;
  retstr->_clas = self->_bundleClass;
  bundleAlias = self->_bundleAlias;
  v206 = 0;
  v180 = errorCopy;
  obj = _LSAliasAdd(errorCopy, bundleAlias, &v206);
  v10 = v206;
  v11 = obj;
  v174 = v10;
  if (!obj)
  {
    v12 = _LSGetOSStatusFromNSError(v10);
    v11 = 0;
    if (v12)
    {
      v29 = v174;
LABEL_116:
      if (a5)
      {
        *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v12, 0, "[LSBundleRecordBuilder buildBundleData:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSBundleRecordBuilder.mm", 2226);
      }

      goto LABEL_277;
    }
  }

  retstr->base.bookmark = v11;
  registrationInfo = self->_registrationInfo;
  if (registrationInfo)
  {
    retstr->base.container = registrationInfo->containerUnit;
    _LSBundleDataSetModTime(retstr, registrationInfo->contentModDate);
  }

  else
  {
    retstr->base.container = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  _LSBundleDataSetRegTime(retstr, Current);
  v16 = CFAbsoluteTimeGetCurrent();
  p_appStoreToolsBuildVersion = &retstr->appStoreToolsBuildVersion;
  hfsType = self->_hfsType;
  retstr->localizedNameWithContext[0] = v16;
  retstr->moreFlags = hfsType;
  retstr->base.platform = self->_platform;
  compatibilityState = self->_compatibilityState;
  selfCopy = self;
  if (compatibilityState)
  {
    unsignedLongLongValue = [(NSNumber *)compatibilityState unsignedLongLongValue];
    v21 = unsignedLongLongValue;
    *(&retstr->sequenceNumber + 4) = unsignedLongLongValue;
    if (unsignedLongLongValue)
    {
      v22 = _LSRegistrationLog(unsignedLongLongValue);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        identifier = self->_identifier;
        *buf = 138412546;
        *&buf[4] = identifier;
        *&buf[12] = 2048;
        *&buf[14] = v21;
        _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_DEBUG, "Registering app %@ with compatibility state %llu", buf, 0x16u);
      }
    }
  }

  installFailureReason = self->_installFailureReason;
  if (installFailureReason)
  {
    installFailureReason = [(NSNumber *)installFailureReason unsignedLongLongValue];
    v25 = installFailureReason;
    *(p_appStoreToolsBuildVersion + 8) = installFailureReason;
    if (installFailureReason)
    {
      v26 = _LSRegistrationLog(installFailureReason);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = self->_identifier;
        *buf = 138412546;
        *&buf[4] = v27;
        *&buf[12] = 2048;
        *&buf[14] = v25;
        _os_log_impl(&dword_18162D000, v26, OS_LOG_TYPE_ERROR, "Registering app %@ with install failure reason %llu", buf, 0x16u);
      }
    }
  }

  if (([__LSDefaultsGetSharedInstance(installFailureReason v15)] & 1) != 0 || (dataContainerURL = self->_dataContainerURL) == 0)
  {
    v172 = 0;
    v29 = v174;
  }

  else
  {
    v205 = v174;
    v172 = _LSAliasAddURL(errorCopy, dataContainerURL, &v205);
    v29 = v205;

    if (!v172)
    {
      v12 = _LSGetOSStatusFromNSError(v29);
      v172 = 0;
      v171 = 0;
      if (v12)
      {
        goto LABEL_110;
      }
    }
  }

  __src->base.dataContainerAlias = v172;
  bundleContainerURL = self->_bundleContainerURL;
  if (bundleContainerURL)
  {
    v204 = v29;
    v31 = _LSAliasAddURL(errorCopy, bundleContainerURL, &v204);
    v175 = v204;

    if (!v31)
    {
      v12 = _LSGetOSStatusFromNSError(v175);
      v31 = 0;
      if (v12)
      {
        v171 = 0;
        goto LABEL_109;
      }
    }
  }

  else
  {
    v31 = 0;
    v175 = v29;
  }

  v171 = v31;
  __src->activityTypes = v31;
  if (self->_version || self->_shortVersionString)
  {
    _LSVersionNumberMakeWithString();
    v32 = *buf;
    v33 = *&buf[16];
  }

  else
  {
    v32 = kLSVersionNumberNull;
    v33 = unk_1817E90C0;
  }

  *__src->base.version._opaque = v32;
  *&__src->base.version._opaque[16] = v33;
  if (self->_minSystemVersion)
  {
    _LSVersionNumberMakeWithString();
    v34 = *buf;
    v35 = *&buf[16];
  }

  else
  {
    v34 = kLSVersionNumberNull;
    v35 = unk_1817E90C0;
  }

  v36 = __src;
  *&__src->minSystemVersionPlatform = v34;
  *&__src->_minSystemVersion._opaque[12] = v35;
  __src->_mtime = self->_minSystemVersionPlatform;
  if (self->_maxSystemVersion)
  {
    _LSVersionNumberMakeWithString();
    v37 = *buf;
    v38 = *&buf[16];
    v36 = __src;
  }

  else
  {
    v37 = kLSVersionNumberNull;
    v38 = unk_1817E90C0;
  }

  *&v36->_minSystemVersion._opaque[28] = v37;
  *&v36->_maxSystemVersion._opaque[12] = v38;
  v39 = *&self->_sdkVersionNumber._opaque[16];
  *v36->base.execSDKVersion._opaque = *self->_sdkVersionNumber._opaque;
  *&v36->base.execSDKVersion._opaque[16] = v39;
  *&__src->_maxSystemVersion._opaque[28] = _LSDatabaseCreateStringForCFString(v180, self->_appStoreToolsBuildVersion, 0);
  installType = self->_installType;
  if (installType && [(NSNumber *)installType unsignedLongLongValue])
  {
    previousInstallType = [(NSNumber *)self->_installType unsignedLongLongValue];
    v42 = v180;
  }

  else
  {
    previousInstallType = self->_previousInstallType;
    v42 = v180;
    if (!previousInstallType)
    {
      goto LABEL_40;
    }
  }

  __src->shortVersionString = previousInstallType;
LABEL_40:
  *p_appStoreToolsBuildVersion = self->_sequenceNumber;
  downloaderDSID = self->_downloaderDSID;
  if (downloaderDSID)
  {
    *(p_appStoreToolsBuildVersion + 12) = [(NSNumber *)downloaderDSID unsignedLongLongValue];
  }

  purchaserDSID = self->_purchaserDSID;
  if (purchaserDSID)
  {
    *(p_appStoreToolsBuildVersion + 11) = [(NSNumber *)purchaserDSID unsignedLongLongValue];
  }

  familyID = self->_familyID;
  if (familyID)
  {
    *(p_appStoreToolsBuildVersion + 13) = [(NSNumber *)familyID unsignedLongLongValue];
  }

  ratingRank = self->_ratingRank;
  if (ratingRank)
  {
    *(p_appStoreToolsBuildVersion + 18) = [(NSNumber *)ratingRank unsignedLongLongValue];
  }

  genreID = self->_genreID;
  if (genreID)
  {
    __src->ratingRank = [(NSNumber *)genreID unsignedLongLongValue];
  }

  itemID = self->_itemID;
  if (itemID)
  {
    *(p_appStoreToolsBuildVersion + 2) = [(NSNumber *)itemID unsignedLongLongValue];
  }

  staticDiskUsage = self->_staticDiskUsage;
  if (staticDiskUsage)
  {
    *(p_appStoreToolsBuildVersion + 10) = [(NSNumber *)staticDiskUsage unsignedLongLongValue];
  }

  storefront = self->_storefront;
  if (storefront)
  {
    *&__src->itemName = [(NSNumber *)storefront unsignedLongLongValue];
  }

  versionID = self->_versionID;
  if (versionID)
  {
    __src->storefront = [(NSNumber *)versionID unsignedLongLongValue];
  }

  LODWORD(__src->versionIdentifier) = _LSDatabaseCreateStringForCFString(v42, self->_sourceAppBundleID, 0);
  __src->deviceFamilies = _LSDatabaseCreateStringForCFString(v180, self->_identifier, 1);
  __src->base.exactIdentifier = _LSDatabaseCreateStringForCFString(v180, self->_identifier, 0);
  __src->base.bundleName = _LSDatabaseCreateStringForCFString(v180, self->_bundleName, 0);
  __src->base.execPath = _LSDatabaseCreateStringForCFString(v180, self->_execPath, 0);
  __src->base.displayName = _LSDatabaseCreateStringForCFString(v180, self->_displayName, 0);
  __src->filename = _LSDatabaseCreateStringForCFString(v180, self->_version, 0);
  __src->bundleVersion = _LSDatabaseCreateStringForCFString(v180, self->_shortVersionString, 0);
  HIDWORD(__src->installFailureReason) = _LSDatabaseCreateStringForCFString(v180, self->_vendorName, 0);
  appType = self->_appType;
  if (appType)
  {
    if ([(NSString *)appType isEqualToString:@"CoreServices"])
    {
      StringForCFString = _LSDatabaseCreateStringForCFString(v180, @"Hidden", 0);
      goto LABEL_64;
    }

    v54 = self->_appType;
  }

  else
  {
    v54 = 0;
  }

  StringForCFString = _LSDatabaseCreateStringForCFString(v180, v54, 0);
LABEL_64:
  __src->vendorName = StringForCFString;
  HIDWORD(__src->familyID) = _LSDatabaseCreateStringForCFString(v180, self->_itemName, 0);
  HIDWORD(__src->versionIdentifier) = _LSDatabaseCreateStringForCFString(v180, self->_appVariant, 0);
  __src->sourceAppBundleID = _LSDatabaseCreateStringForCFString(v180, self->_managementDeclarationIdentifier, 0);
  counterpartAppBundleIDs = self->_counterpartAppBundleIDs;
  if (counterpartAppBundleIDs)
  {
    allObjects = [(NSMutableSet *)counterpartAppBundleIDs allObjects];
    __src->identifier = _LSDatabaseCreateStringArray(v180, allObjects, 0, 0);
  }

  equivalentBundleIDs = self->_equivalentBundleIDs;
  if (equivalentBundleIDs)
  {
    allObjects2 = [(NSMutableSet *)equivalentBundleIDs allObjects];
    __src->counterpartIdentifiers = _LSDatabaseCreateStringArray(v180, allObjects2, 0, 0);
  }

  parentApplicationIdentifiers = self->_parentApplicationIdentifiers;
  if (parentApplicationIdentifiers)
  {
    __src->sandboxEnvironmentVariables = _LSDatabaseCreateStringArray(v180, parentApplicationIdentifiers, 0, 0);
  }

  if ([(NSArray *)self->_bundlePersonas count])
  {
    v60 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_bundlePersonas, "count")}];
    memset(buf, 0, 24);
    std::vector<unsigned int>::reserve(buf, [(NSArray *)self->_bundlePersonas count]);
    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v61 = self->_bundlePersonas;
    v62 = [(NSArray *)v61 countByEnumeratingWithState:&v200 objects:v218 count:16];
    if (v62)
    {
      v63 = *v201;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v201 != v63)
          {
            objc_enumerationMutation(v61);
          }

          v65 = *(*(&v200 + 1) + 8 * i);
          personaUniqueString = [(_LSPersonaWithAttributes *)v65 personaUniqueString];
          [v60 addObject:personaUniqueString];

          *v215 = [(_LSPersonaWithAttributes *)v65 personaType];
          std::vector<unsigned int>::push_back[abi:nn200100](buf, v215);
        }

        v62 = [(NSArray *)v61 countByEnumeratingWithState:&v200 objects:v218 count:16];
      }

      while (v62);
    }

    p_appStoreToolsBuildVersion[62] = _LSDatabaseCreateStringArray(v180, v60, 0, 0);
    v67 = v180;
    [(_LSDatabase *)v180 store];
    v68 = _CSArrayCreate();
    *&__src->revision = v68;
    if (!__src->appContainerAlias || !v68)
    {
      v69 = _LSRegistrationLog(v68);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        appContainerAlias = __src->appContainerAlias;
        v71 = *&__src->revision;
        *v215 = 134218240;
        *&v215[4] = appContainerAlias;
        v216 = 2048;
        v217 = v71;
        _os_log_impl(&dword_18162D000, v69, OS_LOG_TYPE_ERROR, "failed to allocate personas (%llx) or persona types (%llx) CSArray", v215, 0x16u);
      }

      *(p_appStoreToolsBuildVersion + 31) = 0;
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    self = selfCopy;
  }

  directoryClass = self->_directoryClass;
  if (directoryClass)
  {
    unsignedLongLongValue2 = [(NSNumber *)directoryClass unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue2 = -1;
  }

  __src->base.containingDirectoryClass = unsignedLongLongValue2;
  __src->base.profileValidationState = [(LSBundleRecordBuilder *)self profileValidationState];
  *(&__src->managementDeclarationIdentifier + 1) = _LSDatabaseCreateStringForCFString(v180, self->_ratingLabel, 0);
  __src->ratingLabel = _LSDatabaseCreateStringForCFString(v180, self->_genre, 0);
  *(&__src->ratingLabel + 1) = _LSPlistAdd(v180, self->_distributorInfo);
  v74 = [FSNode nameForBookmarkData:self->_bundleAlias error:0];
  if (v74)
  {
    __src->secondaryCategoryType = _LSDatabaseCreateStringForCFString(v180, v74, 1);
  }

  if (!__src->secondaryCategoryType)
  {
    v12 = -10817;
    goto LABEL_109;
  }

  v75 = selfCopy;
  __src->equivalentBundleIdentifiers = _LSDatabaseCreateStringForCFString(v180, selfCopy->_categoryType, 0);
  __src->categoryType = _LSDatabaseCreateStringForCFString(v180, selfCopy->_secondCategoryType, 0);
  deviceFamily = selfCopy->_deviceFamily;
  if (deviceFamily)
  {
    memset(buf, 0, 24);
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v77 = deviceFamily;
    v78 = [(NSArray *)v77 countByEnumeratingWithState:&v196 objects:v214 count:16];
    if (v78)
    {
      v79 = *v197;
      do
      {
        for (j = 0; j != v78; ++j)
        {
          if (*v197 != v79)
          {
            objc_enumerationMutation(v77);
          }

          v81 = *(*(&v196 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            intValue = [v81 intValue];
            if (intValue >= 1)
            {
              *v215 = intValue;
              std::vector<unsigned int>::push_back[abi:nn200100](buf, v215);
            }
          }
        }

        v78 = [(NSArray *)v77 countByEnumeratingWithState:&v196 objects:v214 count:16];
      }

      while (v78);
    }

    *v215 = 0;
    v83 = v180;
    [(_LSDatabase *)v180 store];
    v84 = _CSArrayCreate();
    HIDWORD(__src->itemID) = v84;
    if (v84)
    {
      v12 = 0;
    }

    else
    {
      v12 = _LSGetOSStatusFromNSError(*v215);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    v75 = selfCopy;
    if (v12)
    {
      goto LABEL_109;
    }
  }

  machOUUIDs = v75->_machOUUIDs;
  if (machOUUIDs)
  {
    __src->base.machOUUIDs = _LSDatabaseCreateStringArray(v180, machOUUIDs, 0, 0);
  }

  v12 = [(LSBundleRecordBuilder *)v75 registerQueriableSchemes:v180 bundleData:?];
  if (v12)
  {
    goto LABEL_109;
  }

  LODWORD(__src->genreID) = _LSDatabaseCreateStringForCFString(v180, v75->_primaryIconName, 0);
  HIDWORD(__src->genreID) = _LSDatabaseCreateStringForCFString(v180, v75->_alternatePrimaryIconName, 0);
  __src->genre = _LSPlistAdd(v180, v75->_iconsDict);
  iconFileNames = v75->_iconFileNames;
  if (iconFileNames)
  {
    StringArray = _LSDatabaseCreateStringArray(v180, iconFileNames, 0, 0);
    __src->distributorInfo = StringArray;
    if (!StringArray)
    {
      goto LABEL_282;
    }
  }

  if ([(NSMutableDictionary *)v75->_plistRarities count]|| [(NSMutableDictionary *)v75->_commonInfoPlistEntries count])
  {
    v88 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v89 = v88;
    if (v75->_plistRarities)
    {
      [v88 addEntriesFromDictionary:?];
    }

    if (selfCopy->_commonInfoPlistEntries)
    {
      [v89 addEntriesFromDictionary:?];
    }

    __src->base.infoDictionary = _LSPlistAdd(v180, v89);

    v75 = selfCopy;
  }

  else
  {
    __src->base.infoDictionary = 0;
  }

  __src->base.groupContainers = _LSPlistAdd(v180, v75->_groupContainers);
  __src->base.entitlements = _LSPlistAdd(v180, v75->_entitlements);
  __src->bgPermittedIDs = _LSPlistAdd(v180, v75->_sandboxEnvironmentVariables);
  __src->base.intentDefinitionURLs = _LSPlistAdd(v180, v75->_intentDefinitionURLs);
  __src->driverExtensions = _LSDatabaseCreateStringArray(v180, v75->_bgPermittedIdentifiers, 0, 0);
  __src->extensionPoints = _LSDatabaseCreateStringArray(v180, v75->_carPlayInstrumentClusterURLSchemes, 0, 0);
  context = objc_autoreleasePoolPush();
  memset(buf, 0, 24);
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v90 = selfCopy->_supportedGameControllers;
  v91 = [(NSArray *)v90 countByEnumeratingWithState:&v192 objects:v213 count:16];
  v92 = v180;
  if (v91)
  {
    v93 = *v193;
    do
    {
      for (k = 0; k != v91; ++k)
      {
        if (*v193 != v93)
        {
          objc_enumerationMutation(v90);
        }

        v95 = _LSPlistAdd(v92, *(*(&v192 + 1) + 8 * k));
        if (v95)
        {
          v96 = *&buf[8];
          if (*&buf[8] >= *&buf[16])
          {
            v98 = *buf;
            v99 = *&buf[8] - *buf;
            v100 = (*&buf[8] - *buf) >> 2;
            v101 = v100 + 1;
            if ((v100 + 1) >> 62)
            {
              std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
            }

            v102 = *&buf[16] - *buf;
            if ((*&buf[16] - *buf) >> 1 > v101)
            {
              v101 = v102 >> 1;
            }

            if (v102 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v103 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v103 = v101;
            }

            if (v103)
            {
              std::allocator<unsigned int>::allocate_at_least[abi:nn200100](buf, v103);
            }

            *(4 * v100) = v95;
            v97 = 4 * v100 + 4;
            memcpy(0, v98, v99);
            v104 = *buf;
            *buf = 0;
            *&buf[8] = v97;
            *&buf[16] = 0;
            if (v104)
            {
              operator delete(v104);
            }

            v92 = v180;
          }

          else
          {
            **&buf[8] = v95;
            v97 = v96 + 4;
          }

          *&buf[8] = v97;
        }
      }

      v91 = [(NSArray *)v90 countByEnumeratingWithState:&v192 objects:v213 count:16];
    }

    while (v91);
  }

  v105 = *buf;
  if (*buf != *&buf[8])
  {
    v106 = v180;
    [(_LSDatabase *)v180 store];
    __src->bundlePersonas = _CSArrayCreate();
    v105 = *buf;
  }

  if (v105)
  {
    *&buf[8] = v105;
    operator delete(v105);
  }

  objc_autoreleasePoolPop(context);
  __src->base.localizedDisplayName = LaunchServices::LocalizedString::Add(v180, selfCopy->_localizedNames, selfCopy->_displayName);
  __src->base.localizedShortDisplayName = LaunchServices::LocalizedString::Add(v180, selfCopy->_localizedShortNames, selfCopy->_shortDisplayName);
  __src->base.localizedMicrophoneUsageDescription = LaunchServices::LocalizedString::Add(v180, selfCopy->_localizedMicrophoneUsageDescription, selfCopy->_microphoneUsageDescription);
  __src->base.localizedIdentityUsageDescription = LaunchServices::LocalizedString::Add(v180, selfCopy->_localizedIdentityUsageDescription, selfCopy->_identityUsageDescription);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x26812000000;
  *&buf[24] = __Block_byref_object_copy__10;
  v210 = __Block_byref_object_dispose__10;
  v211 = &unk_1818533FF;
  memcpy(v212, __src, sizeof(v212));
  v189[0] = MEMORY[0x1E69E9820];
  v189[1] = 3221225472;
  v189[2] = __47__LSBundleRecordBuilder_buildBundleData_error___block_invoke;
  v189[3] = &unk_1E6A1B0C8;
  v189[4] = selfCopy;
  v191 = buf;
  v173 = v180;
  v190 = v173;
  _LSBundleDisplayNameContextEnumerate(v189);
  memcpy(__src, (*&buf[8] + 48), 0x238uLL);

  _Block_object_dispose(buf, 8);
  v107 = selfCopy;
  v108 = v173;
  __src->primaryIconName = _LSDatabaseCreateStringForCFString(v173, selfCopy->_libraryPath, 0);
  libraryItems = selfCopy->_libraryItems;
  if (libraryItems)
  {
    v110 = _LSDatabaseCreateStringArray(v173, libraryItems, 0, 0);
    __src->alternatePrimaryIconName = v110;
    if (!v110)
    {
      goto LABEL_282;
    }
  }

  if ((selfCopy->_bundleFlags & 0x100) != 0)
  {
    goto LABEL_185;
  }

  if (selfCopy->_exportedTypes || selfCopy->_importedTypes)
  {
    *buf = 0;
    v111 = v173;
    [(_LSDatabase *)v173 store];
    [(NSArray *)selfCopy->_exportedTypes count];
    [(NSArray *)selfCopy->_importedTypes count];
    v112 = _CSArrayCreateWithCapacity();
    __src->iconFileNames = v112;
    if (!v112)
    {
      v12 = _LSGetOSStatusFromNSError(*buf);
      if (v12)
      {
        goto LABEL_284;
      }
    }

    exportedTypes = selfCopy->_exportedTypes;
    if (exportedTypes && [(NSArray *)exportedTypes count]|| (importedTypes = selfCopy->_importedTypes) != 0 && [(NSArray *)importedTypes count])
    {
      [(LSBundleRecordBuilder *)selfCopy addPlistFlag:0x10000];
    }

    v108 = v173;
  }

  if (!selfCopy->_URLClaims && !selfCopy->_documentClaims)
  {
    goto LABEL_179;
  }

  *buf = 0;
  v115 = v108;
  [(_LSDatabase *)v173 store];
  [(NSArray *)selfCopy->_URLClaims count];
  [(NSArray *)selfCopy->_documentClaims count];
  v116 = _CSArrayCreateWithCapacity();
  __src->iconsDict = v116;
  if (!v116)
  {
    v12 = _LSGetOSStatusFromNSError(*buf);
    if (v12)
    {
LABEL_284:

      goto LABEL_109;
    }
  }

  URLClaims = selfCopy->_URLClaims;
  if (URLClaims && [(NSArray *)URLClaims count]|| (documentClaims = selfCopy->_documentClaims) != 0 && [(NSArray *)documentClaims count])
  {
    [(LSBundleRecordBuilder *)selfCopy addPlistFlag:0x10000];
  }

  v108 = v173;
LABEL_179:
  v107 = selfCopy;
  if (selfCopy->_pluginPlists)
  {
    *buf = 0;
    v119 = v108;
    [(_LSDatabase *)v173 store];
    [(NSDictionary *)selfCopy->_pluginPlists count];
    v120 = _CSArrayCreateWithCapacity();
    __src->libraryPath = v120;
    if (v120)
    {

      v107 = selfCopy;
      v108 = v173;
    }

    else
    {
      v12 = _LSGetOSStatusFromNSError(*buf);

      v107 = selfCopy;
      v108 = v173;
      if (v12)
      {
        goto LABEL_109;
      }
    }
  }

  if (v107->_extensionSDK)
  {
    *buf = 0;
    v121 = v108;
    [(_LSDatabase *)v173 store];
    [(NSDictionary *)selfCopy->_extensionSDK count];
    v122 = _CSArrayCreateWithCapacity();
    __src->claims = v122;
    if (v122)
    {

      v107 = selfCopy;
      v108 = v173;
      goto LABEL_185;
    }

    v12 = _LSGetOSStatusFromNSError(*buf);

    v107 = selfCopy;
    v108 = v173;
    if (!v12)
    {
      goto LABEL_185;
    }

LABEL_109:
    v29 = v175;
LABEL_110:
    if (obj)
    {
      _LSAliasRemove(v180, obj);
    }

    if (v171)
    {
      _LSAliasRemove(v180, v171);
    }

    if (v172)
    {
      _LSAliasRemove(v180, v172);
    }

    goto LABEL_116;
  }

LABEL_185:
  driverExtensionPaths = v107->_driverExtensionPaths;
  if (driverExtensionPaths)
  {
    __src->libraryItems = _LSDatabaseCreateStringArray(v108, driverExtensionPaths, 0, 0);
  }

  v124 = v107->_identifier;
  if (v124 && [(NSString *)v124 hasPrefix:@"com.apple."])
  {
    goto LABEL_195;
  }

  v125 = v107->_appType;
  if (!v125)
  {
    goto LABEL_216;
  }

  if ([(NSString *)v125 isEqualToString:@"Internal"]|| [(NSString *)v107->_appType isEqualToString:@"System"]|| [(NSString *)v107->_appType isEqualToString:@"SystemAppPlaceholder"]|| [(NSString *)v107->_appType isEqualToString:@"CoreServices"]|| [(NSString *)v107->_appType isEqualToString:@"Hidden"])
  {
LABEL_195:
    *&v107->_baseFlags |= 1u;
  }

  v126 = v107->_appType;
  if (v126 && ![(NSString *)v126 isEqualToString:@"User"])
  {
    if ((v107->_plistContentFlags & 0x800) != 0)
    {
      plistRarities = v107->_plistRarities;
      v129 = objc_opt_class();
      v130 = [(NSMutableDictionary *)plistRarities objectForKey:@"SBAppTags"];
      v131 = v130;
      if (v129 && v130 && (objc_opt_isKindOfClass() & 1) == 0)
      {

        v131 = 0;
        v107 = selfCopy;
      }

      if ([v131 containsObject:@"hidden"])
      {
        [(LSBundleRecordBuilder *)v107 addBundleFlag:0x40000000000];
      }

      v107 = selfCopy;
      v108 = v173;
    }

    else if ([(NSString *)v107->_appType isEqualToString:@"CoreServices"]|| (v127 = v107->_identifier) != 0 && [(NSString *)v127 isEqualToString:@"com.apple.purplebuddy"])
    {
      [(LSBundleRecordBuilder *)v107 addBundleFlag:0x40000000000];
    }
  }

LABEL_216:
  teamID = v107->_teamID;
  if (teamID)
  {
LABEL_219:
    __src->base.teamID = _LSDatabaseCreateStringForCFString(v108, teamID, 0);
    goto LABEL_220;
  }

  if (*&v107->_baseFlags)
  {
    teamID = @"0000000000";
    goto LABEL_219;
  }

LABEL_220:
  if ((v107->_bundleFlags & 0x1000000000000000) != 0)
  {
    v133 = [(NSArray *)v107->_activityTypes count];
    if (v133)
    {
      v134 = _LSInstallLog(v133);
      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
      {
        v135 = v107->_identifier;
        *buf = 138412290;
        *&buf[4] = v135;
        _os_log_impl(&dword_18162D000, v134, OS_LOG_TYPE_DEFAULT, "App %@ is an app clip; ignoring its activity types.", buf, 0xCu);
      }

      v107 = selfCopy;
      v108 = v173;
      goto LABEL_227;
    }
  }

  activityTypes = v107->_activityTypes;
  if (activityTypes)
  {
    v137 = _LSDatabaseCreateStringArray(v108, activityTypes, 0, 0);
    __src->types = v137;
    if (!v137)
    {
LABEL_282:
      v12 = -9493;
      goto LABEL_109;
    }
  }

LABEL_227:
  __src->base.signerIdentity = _LSDatabaseCreateStringForCFString(v108, v107->_signerIdentity, 0);
  __src->base.codeInfoIdentifier = _LSDatabaseCreateStringForCFString(v108, v107->_codeInfoIdentifier, 0);
  __src->base.signerOrganization = _LSDatabaseCreateStringForCFString(v108, v107->_signerOrganization, 0);
  __src->base.signatureVersion = [(NSNumber *)v107->_signatureVersion unsignedLongLongValue];
  __src->bundlePersonaTypes = _LSPlistAdd(v108, v107->_mobileInstallIDs);
  __src->appClipFields.parentAppIDs = _LSDatabaseCreateStringForCFString(v108, v107->_applicationManagementDomain, 0);
  __src->supportedGameControllers = _LSDatabaseCreateStringForCFString(v108, v107->_linkedParentBundleID, 0);
  if (v107->_URLClaims)
  {
    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    obja = v107->_URLClaims;
    v138 = [(NSArray *)obja countByEnumeratingWithState:&v185 objects:v208 count:16];
    if (v138)
    {
      v139 = *v186;
      v140 = *MEMORY[0x1E695E190];
      do
      {
        for (m = 0; m != v138; ++m)
        {
          if (*v186 != v139)
          {
            objc_enumerationMutation(obja);
          }

          v142 = *(*(&v185 + 1) + 8 * m);
          if (_NSIsNSDictionary())
          {
            v143 = objc_opt_class();
            v144 = [v142 objectForKey:v140];
            v145 = v144;
            if (v143 && v144 && (objc_opt_isKindOfClass() & 1) == 0)
            {

              v145 = 0;
            }

            v183 = 0u;
            v184 = 0u;
            v181 = 0u;
            v182 = 0u;
            v146 = v145;
            v147 = [v146 countByEnumeratingWithState:&v181 objects:v207 count:16];
            if (v147)
            {
              v148 = *v182;
              while (2)
              {
                for (n = 0; n != v147; ++n)
                {
                  if (*v182 != v148)
                  {
                    objc_enumerationMutation(v146);
                  }

                  v150 = *(*(&v181 + 1) + 8 * n);
                  if (_NSIsNSString() && ![v150 caseInsensitiveCompare:@"file"])
                  {
                    [(LSBundleRecordBuilder *)selfCopy addBundleFlag:0x8000000];
                    goto LABEL_249;
                  }
                }

                v147 = [v146 countByEnumeratingWithState:&v181 objects:v207 count:16];
                if (v147)
                {
                  continue;
                }

                break;
              }
            }

LABEL_249:
          }
        }

        v138 = [(NSArray *)obja countByEnumeratingWithState:&v185 objects:v208 count:16];
      }

      while (v138);
    }

    v107 = selfCopy;
    v108 = v173;
  }

  entitlements = v107->_entitlements;
  if (entitlements)
  {
    v152 = [(NSDictionary *)entitlements objectForKey:@"beta-reports-active"];
    v153 = v152 == 0;

    v107 = selfCopy;
    v108 = v173;
    if (!v153)
    {
      [(LSBundleRecordBuilder *)selfCopy addBundleFlag:0x200000];
    }

    if ((([(NSString *)selfCopy->_appType isEqualToString:@"System"]| ((*&selfCopy->_baseFlags & 0x10) >> 4)) & 1) == 0)
    {
      v154 = [(NSDictionary *)selfCopy->_entitlements objectForKey:@"com.apple.developer.web-browser-engine.host"];
      v155 = v154 == 0;

      if (!v155)
      {
        *&selfCopy->_moreFlags |= 0x20000u;
      }

      v156 = [(NSDictionary *)selfCopy->_entitlements objectForKey:@"com.apple.developer.embedded-web-browser-engine"];
      v157 = v156 == 0;

      v107 = selfCopy;
      v108 = v173;
      if (!v157)
      {
        *&selfCopy->_moreFlags |= 0x40000u;
      }
    }

    if ([(NSDictionary *)v107->_entitlements _LS_BoolForKey:@"com.apple.developer.game-center"])
    {
      [(LSBundleRecordBuilder *)v107 addBundleFlag:0x2000000000000];
    }
  }

  __src->recordModificationTime = _LSPlistAdd(v108, v107->_stashedAppInfo);
  __src->base._sliceMask = _LSSliceMaskForSliceArray(v107->_slices);
  if (v107->_webNotificationPlaceholder)
  {
    [(LSBundleRecordBuilder *)v107 addBundleFlag:0x8000000000];
  }

  v158 = v107->_registrationInfo;
  if ((v158->options & 0x40) != 0 || v158->bundleClass == 16)
  {
    [(LSBundleRecordBuilder *)v107 addBundleFlag:0x40000];
  }

  plistContentFlags = v107->_plistContentFlags;
  iconFlags = v107->_iconFlags;
  *(&__src->_clas + 1) = v107->_bundleFlags;
  LOBYTE(__src->_itemFlags) = iconFlags;
  itemFlags = v107->_itemFlags;
  HIDWORD(__src->_bundleFlags) = plistContentFlags;
  __src->_plistContentFlags = itemFlags;
  moreFlags = v107->_moreFlags;
  *(&__src->_itemFlags + 1) = moreFlags;
  *&__src->base.flags = v107->_baseFlags;
  v163 = +[_LSDAppProtectionClient hiddenApplicationsForLSDUseOnly];
  if ([v163 ls_caseInsensitiveContainsString:v107->_identifier])
  {
    v164 = 0x100000;
  }

  else
  {
    v164 = 0;
  }

  v165 = +[_LSDAppProtectionClient lockedApplicationsForLSDUseOnly];
  if ([v165 ls_caseInsensitiveContainsString:selfCopy->_identifier])
  {
    v166 = 0x200000;
  }

  else
  {
    v166 = 0;
  }

  *(&__src->_itemFlags + 1) = v164 | moreFlags & 0xFFCFFFFF | v166;
  serializedPlaceholderPath = selfCopy->_serializedPlaceholderPath;
  if (serializedPlaceholderPath)
  {
    __src->mobileInstallIDs = _LSDatabaseCreateStringForCFString(v173, serializedPlaceholderPath, 0);
  }

  v29 = v175;
LABEL_277:

  return result;
}

void __47__LSBundleRecordBuilder_buildBundleData_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [*(a1[4] + 816) objectForKeyedSubscript:a4];
  v7 = [*(a1[4] + 808) objectForKeyedSubscript:a4];
  *(*(a1[6] + 8) + 4 * a2 + 568) = LaunchServices::LocalizedString::Add(a1[5], v7, v8);
}

- (int)activateBindings:(id)bindings unitID:(unsigned int)d bundleData:(const LSBundleData *)data
{
  v6 = *&d;
  bindingsCopy = bindings;
  v8 = _LSBindableActivate(bindingsCopy, v6, 6u, data->base.exactIdentifier, 0, 0);
  if (!v8)
  {
    v8 = _LSBindableActivate(bindingsCopy, v6, 7u, data->secondaryCategoryType, 0, 0);
    if (!v8)
    {
      bundleName = data->base.bundleName;
      if (!bundleName || (v8 = _LSBindableActivate(bindingsCopy, v6, 7u, bundleName, 0, 0)) == 0)
      {
        supportedGameControllers = data->supportedGameControllers;
        if (supportedGameControllers)
        {
          v8 = _LSBindableActivate(bindingsCopy, v6, 0xDu, supportedGameControllers, 0, 0);
        }

        else
        {
          v8 = 0;
        }
      }
    }
  }

  return v8;
}

- (unsigned)registerBundleRecord:(id)record error:(id *)error
{
  *&__src.stashedAppDict = *MEMORY[0x1E69E9840];
  v43 = 0;
  memset(&__src, 0, 512);
  recordCopy = record;
  errorCopy = error;
  objc_msgSend_buildBundleData_error_(self);
  memcpy(__dst, &__src, 0x238uLL);
  v5 = _LSBundleAdd(recordCopy, __dst, &v43);
  v36 = v5;
  if (v5)
  {
    v43 = 0;
  }

  else
  {
    v5 = [(LSBundleRecordBuilder *)self activateBindings:recordCopy unitID:v43 bundleData:&__src];
    v36 = v5;
    if (!v5)
    {
      if (*&self->_baseFlags)
      {
        v7 = 4;
      }

      else
      {
        v7 = 0;
      }

      registrationInfo = self->_registrationInfo;
      if (registrationInfo)
      {
        LODWORD(registrationInfo) = (registrationInfo->options >> 23) & 0x20;
      }

      v9 = (registrationInfo | v7 | (LODWORD(self->_bundleFlags) >> 1) & 0x40) ^ 0x40;
      exportedTypes = self->_exportedTypes;
      iconFileNames = __src.iconFileNames;
      if (exportedTypes && __src.iconFileNames)
      {
        _LSRegisterTypeDeclarationsForBundle(recordCopy, v43, &__src, exportedTypes, self->_localizedStrings, v9 | 0x10);
        iconFileNames = __src.iconFileNames;
      }

      importedTypes = self->_importedTypes;
      if (importedTypes && iconFileNames)
      {
        _LSRegisterTypeDeclarationsForBundle(recordCopy, v43, &__src, importedTypes, self->_localizedStrings, v9);
      }

      iconsDict = __src.iconsDict;
      if (self->_documentClaims && __src.iconsDict)
      {
        _LSRegisterDocumentTypes(recordCopy);
        iconsDict = __src.iconsDict;
      }

      if (self->_URLClaims && iconsDict)
      {
        _LSRegisterURLTypes(recordCopy);
      }

      UnsupportedFormatFlag = _LSRegisterDefaultAppsClaims(recordCopy, v43, &__src, self->_entitlements);
      v36 = UnsupportedFormatFlag;
      if (__src.types)
      {
        UnsupportedFormatFlag = _LSBundleActivateBindingsForUserActivityTypes(recordCopy, v43, &__src);
        v36 = UnsupportedFormatFlag;
      }

      if (!self->_registrationInfo || !self->_pluginPlists || !__src.libraryPath || (UnsupportedFormatFlag = _LSBundleDataIsInUnsupportedLocation(recordCopy, &__src), UnsupportedFormatFlag) || (UnsupportedFormatFlag = _LSBundleDataGetUnsupportedFormatFlag(), UnsupportedFormatFlag) || (*(&__src._clas + 1) & 0x80) != 0)
      {
        v16 = _LSExtensionsLog(UnsupportedFormatFlag);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [LSBundleRecordBuilder registerBundleRecord:v16 error:?];
        }
      }

      else
      {
        v15 = _LSExtensionsLog(UnsupportedFormatFlag);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [LSBundleRecordBuilder registerBundleRecord:v15 error:?];
        }

        v36 = _LSRegisterPlugins(recordCopy, self->_registrationInfo->containerUnit, v43, self->_pluginPlists, self->_pluginMIDicts, 0);
      }

      if (self->_identifier && self->_extensionSDK && __src.claims)
      {
        v17 = [objc_alloc(get_EXAppExtensionPointEnumeratorClass()) initWithBundleIdentifier:self->_identifier sdkDictionary:self->_extensionSDK entitlements:self->_entitlements];
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v19)
        {
          v20 = *v40;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v40 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v39 + 1) + 8 * i);
              identifier = [v22 identifier];
              platform = [v22 platform];
              sDKDictionary = [v22 SDKDictionary];
              v26 = [v22 url];
              v27 = _LSExtensionsLog(v26);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                __dst[0] = 136315394;
                *&__dst[1] = "[LSBundleRecordBuilder registerBundleRecord:error:]";
                LOWORD(__dst[3]) = 2112;
                *(&__dst[3] + 2) = v22;
                _os_log_debug_impl(&dword_18162D000, v27, OS_LOG_TYPE_DEBUG, "%s Registering extension point: %@", __dst, 0x16u);
              }

              _LSRegisterExtensionPoint(recordCopy, v43, identifier, platform, sDKDictionary, v26);
            }

            v19 = [v18 countByEnumeratingWithState:&v39 objects:v44 count:16];
          }

          while (v19);
        }
      }

      _LSBundleSetLegacySpecialApplicationTypes(recordCopy, v43, 0, 0);
    }
  }

  v28 = v36;
  if (v36 && (v6 = v43) != 0)
  {
    v5 = _LSBundleRemove(recordCopy, v43, 0);
    v43 = 0;
    v28 = v36;
  }

  else if (!v36)
  {
    self->_registerChildItemsTrusted = (*(&__src._clas + 1) & 0x80) == 0;
    goto LABEL_54;
  }

  if (errorCopy)
  {
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v28, 0, "[LSBundleRecordBuilder registerBundleRecord:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSBundleRecordBuilder.mm", 2399);
    *errorCopy = v5;
  }

LABEL_54:
  if (self->_identifier)
  {
    if ([__LSDefaultsGetSharedInstance(v5 v6)])
    {
      v29 = (self->_bundleFlags & 0x40000) == 0;
    }

    else
    {
      v29 = 0;
    }

    v30 = objc_autoreleasePoolPush();
    if (([__LSDefaultsGetSharedInstance(v30 v31)] & 1) == 0 && (IconServicesLibrary(void)::frameworkLibrary || (IconServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0))
    {
      softLink_ISInvalidateCacheEntriesForBundleIdentifier(self->_identifier);
    }

    if (v29)
    {
      v32 = +[LSAltIconManager sharedInstance];
      [v32 clearAlternateNameForBundleIdentifier:self->_identifier validationDictionary:self->_iconsDict];
    }

    objc_autoreleasePoolPop(v30);
  }

  v33 = v43;

  return v33;
}

- (void)parseNSExtensionSDKDefinitionsFromDictionary:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "[LSBundleRecordBuilder parseNSExtensionSDKDefinitionsFromDictionary:]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = @"_LSBundleExtensionPoints";
}

- (void)registerBundleRecord:(os_log_t)log error:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[LSBundleRecordBuilder registerBundleRecord:error:]";
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "%s Registering extensions", &v1, 0xCu);
}

- (void)registerBundleRecord:(os_log_t)log error:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[LSBundleRecordBuilder registerBundleRecord:error:]";
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "%s Skipped registering extensions", &v1, 0xCu);
}

@end