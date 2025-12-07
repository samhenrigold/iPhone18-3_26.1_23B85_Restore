@interface FPDProviderDescriptor
+ (id)personaFromExtensionRecord:(id)record managedPersona:(BOOL *)persona;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPersonaLegit;
- (FPDProviderDescriptor)initWithCoder:(id)coder;
- (FPDProviderDescriptor)initWithExtensionRecord:(id)record;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPDProviderDescriptor

- (FPDProviderDescriptor)initWithCoder:(id)coder
{
  v72[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v68.receiver = self;
  v68.super_class = FPDProviderDescriptor;
  v5 = [(FPDProviderDescriptor *)&v68 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_topLevelBundleIdentifier"];
    topLevelBundleIdentifier = v5->_topLevelBundleIdentifier;
    v5->_topLevelBundleIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_topLevelBundleURL"];
    topLevelBundleURL = v5->_topLevelBundleURL;
    v5->_topLevelBundleURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_extensionPointVersion"];
    extensionPointVersion = v5->_extensionPointVersion;
    v5->_extensionPointVersion = v16;

    v5->_readonly = [coderCopy decodeBoolForKey:@"_readonly"];
    v5->_enabledByDefault = [coderCopy decodeBoolForKey:@"_enabledByDefault"];
    v5->_supportsEnumeration = [coderCopy decodeBoolForKey:@"_supportsEnumeration"];
    v5->_defaultDomainVisible = [coderCopy decodeBoolForKey:@"_defaultDomainVisible"];
    v5->_shouldHideExtensionName = [coderCopy decodeBoolForKey:@"_shouldHideExtensionName"];
    v5->_canToggleDomainVisibility = [coderCopy decodeBoolForKey:@"_canToggleDomainVisibility"];
    v5->_isAvailableSystemWide = [coderCopy decodeBoolForKey:@"_isAvailableSystemWide"];
    v5->_supportsUnzippedPackages = [coderCopy decodeBoolForKey:@"_supportsUnzippedPackages"];
    v5->_supportsPickingFolders = [coderCopy decodeBoolForKey:@"_supportsPickingFolders"];
    v5->_wantsFlattenedPackages = [coderCopy decodeBoolForKey:@"_wantsFlattenedPackages"];
    v5->_allowsUserControlledEviction = [coderCopy decodeBoolForKey:@"_allowsUserControlledEviction"];
    v5->_allowsSystemDeleteAlerts = [coderCopy decodeBoolForKey:@"_allowsSystemDeleteAlerts"];
    v5->_allowsContextualMenuDownloadEntry = [coderCopy decodeBoolForKey:@"_allowsContextualMenuDownloadEntry"];
    v5->_appliesChangesAtomically = [coderCopy decodeBoolForKey:@"_appliesChangesAtomically"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_downloadPipelineDepth"];
    downloadPipelineDepth = v5->_downloadPipelineDepth;
    v5->_downloadPipelineDepth = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_uploadPipelineDepth"];
    uploadPipelineDepth = v5->_uploadPipelineDepth;
    v5->_uploadPipelineDepth = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_metadataOnlyUploadPipelineDepth"];
    metadataOnlyUploadPipelineDepth = v5->_metadataOnlyUploadPipelineDepth;
    v5->_metadataOnlyUploadPipelineDepth = v22;

    v5->_owningApplicationIsManaged = [coderCopy decodeBoolForKey:@"_owningApplicationIsManaged"];
    v5->_owningApplicationIsHidden = [coderCopy decodeBoolForKey:@"_owningApplicationIsHidden"];
    v5->_usesUniqueItemIdentifiersAcrossDevices = [coderCopy decodeBoolForKey:@"_usesUniqueItemIdentifiersAcrossDevices"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_extensionBundleURL"];
    extensionBundleURL = v5->_extensionBundleURL;
    v5->_extensionBundleURL = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_purposeIdentifier"];
    purposeIdentifier = v5->_purposeIdentifier;
    v5->_purposeIdentifier = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifierForPushes"];
    bundleIdentifierForPushes = v5->_bundleIdentifierForPushes;
    v5->_bundleIdentifierForPushes = v28;

    v30 = MEMORY[0x1E695DFD8];
    v72[0] = objc_opt_class();
    v72[1] = objc_opt_class();
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
    v32 = [v30 setWithArray:v31];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"_supportedFileTypes"];
    supportedFileTypes = v5->_supportedFileTypes;
    v5->_supportedFileTypes = v33;

    v35 = MEMORY[0x1E695DFD8];
    v71[0] = objc_opt_class();
    v71[1] = objc_opt_class();
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
    v37 = [v35 setWithArray:v36];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"_supportedSearchFilters"];
    supportedSearchFilters = v5->_supportedSearchFilters;
    v5->_supportedSearchFilters = v38;

    v40 = MEMORY[0x1E695DFD8];
    v70[0] = objc_opt_class();
    v70[1] = objc_opt_class();
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
    v42 = [v40 setWithArray:v41];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"_requestedExtendedAttributes"];
    requestedExtendedAttributes = v5->_requestedExtendedAttributes;
    v5->_requestedExtendedAttributes = v43;

    v45 = MEMORY[0x1E695DFD8];
    v69[0] = objc_opt_class();
    v69[1] = objc_opt_class();
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
    v47 = [v45 setWithArray:v46];
    v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"_extensionStorageURLs"];
    extensionStorageURLs = v5->_extensionStorageURLs;
    v5->_extensionStorageURLs = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_extensionUUID"];
    extensionUUID = v5->_extensionUUID;
    v5->_extensionUUID = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_documentGroupName"];
    documentGroupName = v5->_documentGroupName;
    v5->_documentGroupName = v52;

    v5->_managedPersona = [coderCopy decodeBoolForKey:@"_managedPersona"];
    if ([(NSString *)v5->_identifier isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"]|| v5->_managedPersona)
    {
      v54 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
      userPersonaUniqueString = [v54 userPersonaUniqueString];
      personaIdentifier = v5->_personaIdentifier;
      v5->_personaIdentifier = userPersonaUniqueString;

      v5->_managedPersona = 1;
    }

    else
    {
      v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_personaIdentifier"];
      if (v57)
      {
        v58 = [MEMORY[0x1E69DF088] personaAttributesForPersonaUniqueString:v57];
        v59 = v58;
        if (v58 && [v58 isEnterprisePersona])
        {
          v60 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
          userPersonaUniqueString2 = [v60 userPersonaUniqueString];
          v62 = v5->_personaIdentifier;
          v5->_personaIdentifier = userPersonaUniqueString2;

          v5->_managedPersona = 1;
        }
      }

      if (!v5->_managedPersona)
      {
        v63 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
        userPersonaUniqueString3 = [v63 userPersonaUniqueString];
        v65 = v5->_personaIdentifier;
        v5->_personaIdentifier = userPersonaUniqueString3;
      }
    }

    if (![(FPDProviderDescriptor *)v5 isPersonaLegit])
    {
      v66 = 0;
      goto LABEL_17;
    }

    v5->_wantsBundleBitOnlyPackageDetection = [coderCopy decodeBoolForKey:@"_wantsBundleBitOnlyPackageDetection"];
    v5->_allowsExternalVolumes = [coderCopy decodeBoolForKey:@"_allowsExternalVolumes"];
    v5->_supportsFailingUploadOnConflict = [coderCopy decodeBoolForKey:@"_supportsFailingUploadOnConflict"];
  }

  v66 = v5;
LABEL_17:

  return v66;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_localizedName forKey:@"_localizedName"];
  [coderCopy encodeObject:self->_topLevelBundleIdentifier forKey:@"_topLevelBundleIdentifier"];
  [coderCopy encodeObject:self->_topLevelBundleURL forKey:@"_topLevelBundleURL"];
  [coderCopy encodeObject:self->_bundleVersion forKey:@"_bundleVersion"];
  [coderCopy encodeObject:self->_extensionPointVersion forKey:@"_extensionPointVersion"];
  [coderCopy encodeBool:self->_readonly forKey:@"_readonly"];
  [coderCopy encodeBool:self->_enabledByDefault forKey:@"_enabledByDefault"];
  [coderCopy encodeBool:self->_supportsEnumeration forKey:@"_supportsEnumeration"];
  [coderCopy encodeBool:self->_defaultDomainVisible forKey:@"_defaultDomainVisible"];
  [coderCopy encodeBool:self->_shouldHideExtensionName forKey:@"_shouldHideExtensionName"];
  [coderCopy encodeBool:self->_canToggleDomainVisibility forKey:@"_canToggleDomainVisibility"];
  [coderCopy encodeBool:self->_isAvailableSystemWide forKey:@"_isAvailableSystemWide"];
  [coderCopy encodeBool:self->_supportsUnzippedPackages forKey:@"_supportsUnzippedPackages"];
  [coderCopy encodeBool:self->_usesUniqueItemIdentifiersAcrossDevices forKey:@"_usesUniqueItemIdentifiersAcrossDevices"];
  [coderCopy encodeBool:self->_supportsPickingFolders forKey:@"_supportsPickingFolders"];
  [coderCopy encodeBool:self->_wantsFlattenedPackages forKey:@"_wantsFlattenedPackages"];
  [coderCopy encodeBool:self->_allowsUserControlledEviction forKey:@"_allowsUserControlledEviction"];
  [coderCopy encodeBool:self->_allowsSystemDeleteAlerts forKey:@"_allowsSystemDeleteAlerts"];
  [coderCopy encodeBool:self->_allowsContextualMenuDownloadEntry forKey:@"_allowsContextualMenuDownloadEntry"];
  [coderCopy encodeBool:self->_appliesChangesAtomically forKey:@"_appliesChangesAtomically"];
  [coderCopy encodeObject:self->_downloadPipelineDepth forKey:@"_downloadPipelineDepth"];
  [coderCopy encodeObject:self->_uploadPipelineDepth forKey:@"_uploadPipelineDepth"];
  [coderCopy encodeObject:self->_metadataOnlyUploadPipelineDepth forKey:@"_metadataOnlyUploadPipelineDepth"];
  [coderCopy encodeBool:self->_owningApplicationIsManaged forKey:@"_owningApplicationIsManaged"];
  [coderCopy encodeBool:self->_owningApplicationIsHidden forKey:@"_owningApplicationIsHidden"];
  [coderCopy encodeObject:self->_extensionBundleURL forKey:@"_extensionBundleURL"];
  [coderCopy encodeObject:self->_purposeIdentifier forKey:@"_purposeIdentifier"];
  [coderCopy encodeObject:self->_bundleIdentifierForPushes forKey:@"_bundleIdentifierForPushes"];
  [coderCopy encodeObject:self->_supportedFileTypes forKey:@"_supportedFileTypes"];
  [coderCopy encodeObject:self->_supportedSearchFilters forKey:@"_supportedSearchFilters"];
  [coderCopy encodeObject:self->_requestedExtendedAttributes forKey:@"_requestedExtendedAttributes"];
  [coderCopy encodeObject:self->_extensionStorageURLs forKey:@"_extensionStorageURLs"];
  [coderCopy encodeObject:self->_extensionUUID forKey:@"_extensionUUID"];
  [coderCopy encodeObject:self->_documentGroupName forKey:@"_documentGroupName"];
  [coderCopy encodeBool:self->_managedPersona forKey:@"_managedPersona"];
  [coderCopy encodeBool:self->_wantsBundleBitOnlyPackageDetection forKey:@"_wantsBundleBitOnlyPackageDetection"];
  [coderCopy encodeBool:self->_allowsExternalVolumes forKey:@"_allowsExternalVolumes"];
  [coderCopy encodeBool:self->_supportsFailingUploadOnConflict forKey:@"_supportsFailingUploadOnConflict"];
}

- (FPDProviderDescriptor)initWithExtensionRecord:(id)record
{
  v206[3] = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v198.receiver = self;
  v198.super_class = FPDProviderDescriptor;
  v181 = [(FPDProviderDescriptor *)&v198 init];

  v4 = v181;
  if (!v181)
  {
LABEL_206:
    v61 = v4;
    goto LABEL_207;
  }

  v5 = [recordCopy URL];
  [(FPDProviderDescriptor *)v181 setExtensionBundleURL:v5];

  uniqueIdentifier = [recordCopy uniqueIdentifier];
  if (!uniqueIdentifier)
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FPDProviderDescriptor initWithExtensionRecord:v181];
    }

    goto LABEL_61;
  }

  bundleVersion = [recordCopy bundleVersion];
  [(FPDProviderDescriptor *)v181 setBundleVersion:bundleVersion];

  [(FPDProviderDescriptor *)v181 setExtensionUUID:uniqueIdentifier];
  bundleIdentifier = [recordCopy bundleIdentifier];
  [(FPDProviderDescriptor *)v181 setIdentifier:bundleIdentifier];

  identifier = [(FPDProviderDescriptor *)v181 identifier];
  v9 = [identifier hasPrefix:@"com.apple."];

  v10 = *MEMORY[0x1E6967128];
  v11 = MEMORY[0x1E6967130];
  if (v9)
  {
    v12 = MEMORY[0x1E695DFD8];
    v206[0] = *MEMORY[0x1E6967150];
    v206[1] = v10;
    v206[2] = *MEMORY[0x1E6967130];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v206 count:3];
    v14 = [v12 setWithArray:v13];

    entitlements = [recordCopy entitlements];
  }

  else
  {
    entitlements = 0;
  }

  v16 = [entitlements objectForKey:v10 ofClass:objc_opt_class()];
  if (v16)
  {
    [(FPDProviderDescriptor *)v181 setPurposeIdentifier:v16];
  }

  else
  {
    identifier2 = [(FPDProviderDescriptor *)v181 identifier];
    [(FPDProviderDescriptor *)v181 setPurposeIdentifier:identifier2];
  }

  containingBundleRecord = [recordCopy containingBundleRecord];
  v178 = containingBundleRecord;
  if (containingBundleRecord)
  {
    bundleIdentifier2 = [containingBundleRecord bundleIdentifier];
    [(FPDProviderDescriptor *)v181 setTopLevelBundleIdentifier:bundleIdentifier2];

    v20 = [v178 URL];
    [(FPDProviderDescriptor *)v181 setTopLevelBundleURL:v20];

    if (v9)
    {
      infoDictionary = [recordCopy infoDictionary];
      localizedName2 = [infoDictionary objectForKey:@"CFBundleDisplayName" ofClass:objc_opt_class()];

      if (localizedName2)
      {
        [(FPDProviderDescriptor *)v181 setLocalizedName:localizedName2];
      }

      else
      {
        localizedName = [v178 localizedName];
        [(FPDProviderDescriptor *)v181 setLocalizedName:localizedName];
      }
    }

    else
    {
      localizedName2 = [v178 localizedName];
      [(FPDProviderDescriptor *)v181 setLocalizedName:localizedName2];
    }

    localizedName3 = [(FPDProviderDescriptor *)v181 localizedName];
    v31 = [localizedName3 length] == 0;

    if (v31)
    {
      v32 = fp_current_or_default_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [(FPDProviderDescriptor *)v178 initWithExtensionRecord:v181];
      }
    }

    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    topLevelBundleIdentifier = [(FPDProviderDescriptor *)v181 topLevelBundleIdentifier];
    v181->_owningApplicationIsManaged = [mEMORY[0x1E69ADFB8] isAppManaged:topLevelBundleIdentifier];

    v35 = MEMORY[0x1E698B0D0];
    topLevelBundleIdentifier2 = [(FPDProviderDescriptor *)v181 topLevelBundleIdentifier];
    v36 = [v35 applicationWithBundleIdentifier:topLevelBundleIdentifier2];
    v181->_owningApplicationIsHidden = [v36 isHidden];
  }

  else
  {
    localizedName4 = [recordCopy localizedName];
    [(FPDProviderDescriptor *)v181 setLocalizedName:localizedName4];

    localizedName5 = [(FPDProviderDescriptor *)v181 localizedName];
    v25 = localizedName5 == 0;

    if (v25)
    {
      v26 = fp_current_or_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [FPDProviderDescriptor initWithExtensionRecord:v181];
      }
    }

    identifier3 = [(FPDProviderDescriptor *)v181 identifier];
    [(FPDProviderDescriptor *)v181 setTopLevelBundleIdentifier:identifier3];

    topLevelBundleIdentifier2 = [(FPDProviderDescriptor *)v181 extensionBundleURL];
    [(FPDProviderDescriptor *)v181 setTopLevelBundleURL:topLevelBundleIdentifier2];
  }

  v37 = [entitlements objectForKey:*v11 ofClass:objc_opt_class()];
  if (v37)
  {
    [(FPDProviderDescriptor *)v181 setBundleIdentifierForPushes:v37];
  }

  else
  {
    topLevelBundleIdentifier3 = [(FPDProviderDescriptor *)v181 topLevelBundleIdentifier];
    [(FPDProviderDescriptor *)v181 setBundleIdentifierForPushes:topLevelBundleIdentifier3];
  }

  v197 = 0;
  v39 = [FPDProviderDescriptor personaFromExtensionRecord:recordCopy managedPersona:&v197];
  [(FPDProviderDescriptor *)v181 setPersonaIdentifier:v39];

  [(FPDProviderDescriptor *)v181 setManagedPersona:v197];
  v40 = fp_current_or_default_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    [FPDProviderDescriptor initWithExtensionRecord:v181];
  }

  if (v9)
  {
    personaIdentifier = [(FPDProviderDescriptor *)v181 personaIdentifier];
    v42 = personaIdentifier == 0;

    if (v42)
    {
      bundleIdentifier3 = [recordCopy bundleIdentifier];
      v44 = [bundleIdentifier3 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];

      if (v44)
      {
        v45 = fp_current_or_default_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          identifier4 = [(FPDProviderDescriptor *)v181 identifier];
          *buf = 138543362;
          v201 = identifier4;
          _os_log_impl(&dword_1CEFC7000, v45, OS_LOG_TYPE_DEFAULT, "[NOTICE] No enterprise enrolment, dropping %{public}@ registration", buf, 0xCu);
        }

LABEL_43:

        goto LABEL_44;
      }
    }
  }

  if ([(FPDProviderDescriptor *)v181 isPersonaLegit])
  {
    if (fpfs_supports_local_storage_less())
    {
      bundleIdentifier4 = [recordCopy bundleIdentifier];
      v48 = [bundleIdentifier4 isEqualToString:@"com.apple.FileProvider.LocalStorage"];

      if (v48)
      {
        v45 = fp_current_or_default_log();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEFC7000, v45, OS_LOG_TYPE_DEFAULT, "[WARNING] Disabling LocalStorage extension due to feature flag", buf, 2u);
        }

        goto LABEL_43;
      }
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    infoDictionary2 = [recordCopy infoDictionary];
    v176 = [infoDictionary2 objectForKey:@"NSExtension" ofClass:objc_opt_class()];

    if (v176)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v173 = [v176 objectForKeyedSubscript:@"NSExtensionAttributes"];
        if (v173)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_53;
          }

          v50 = fp_current_or_default_log();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            [FPDProviderDescriptor initWithExtensionRecord:v173];
          }
        }

        v173 = 0;
LABEL_53:
        v51 = objc_opt_class();
        v52 = objectForKeyOfClass(v176, @"NSExtensionFileProviderSupportsEnumeration", v51);
        -[FPDProviderDescriptor setSupportsEnumeration:](v181, "setSupportsEnumeration:", [v52 BOOLValue]);

        v53 = objc_opt_class();
        v54 = objectForKeyOfClass(v176, @"NSExtensionFileProviderOnlyVisibleInParentApplication", v53);
        -[FPDProviderDescriptor setIsAvailableSystemWide:](v181, "setIsAvailableSystemWide:", [v54 BOOLValue] ^ 1);

        v55 = objc_opt_class();
        v56 = objectForKeyOfClass(v176, @"NSExtensionFileProviderReadOnly", v55);
        -[FPDProviderDescriptor setReadonly:](v181, "setReadonly:", [v56 BOOLValue]);

        v57 = objc_opt_class();
        v58 = objectForKeyOfClass(v176, @"NSExtensionFileProviderEnabledByDefault", v57);
        v169 = v58;
        if (v58)
        {
          bOOLValue = [v58 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        [(FPDProviderDescriptor *)v181 setEnabledByDefault:bOOLValue];
        v62 = objc_opt_class();
        v63 = objectForKeyOfClass(v176, @"NSExtensionFileProviderWantsFlattenedPackages", v62);
        v168 = v63;
        if (v63)
        {
          bOOLValue2 = [v63 BOOLValue];
        }

        else
        {
          bOOLValue2 = 0;
        }

        [(FPDProviderDescriptor *)v181 setWantsFlattenedPackages:bOOLValue2];
        v65 = objc_opt_class();
        v66 = objectForKeyOfClass(v176, @"NSExtensionFileProviderAllowsUserControlledEviction", v65);
        v167 = v66;
        if (v66)
        {
          bOOLValue3 = [v66 BOOLValue];
        }

        else
        {
          bOOLValue3 = 1;
        }

        [(FPDProviderDescriptor *)v181 setAllowsUserControlledEviction:bOOLValue3];
        v68 = objc_opt_class();
        v69 = objectForKeyOfClass(v176, @"NSExtensionFileProviderAllowsSystemDeleteAlerts", v68);
        v166 = v69;
        if (v69)
        {
          bOOLValue4 = [v69 BOOLValue];
        }

        else
        {
          bOOLValue4 = 1;
        }

        [(FPDProviderDescriptor *)v181 setAllowsSystemDeleteAlerts:bOOLValue4];
        v71 = objc_opt_class();
        v72 = objectForKeyOfClass(v176, @"NSExtensionFileProviderAllowsContextualMenuDownloadEntry", v71);
        v165 = v72;
        if (v72)
        {
          bOOLValue5 = [v72 BOOLValue];
        }

        else
        {
          bOOLValue5 = 1;
        }

        [(FPDProviderDescriptor *)v181 setAllowsContextualMenuDownloadEntry:bOOLValue5];
        v74 = objc_opt_class();
        v164 = objectForKeyOfClass(v176, @"NSExtensionFileProviderAppliesChangesAtomically", v74);
        -[FPDProviderDescriptor setAppliesChangesAtomically:](v181, "setAppliesChangesAtomically:", [v164 BOOLValue]);
        v75 = objc_opt_class();
        v171 = objectForKeyOfClass(v176, @"NSFileProviderDefaultDomainVisible", v75);
        if (!v171)
        {
          v76 = objc_opt_class();
          v171 = objectForKeyOfClass(v176, @"NSFileProviderDefaultDomainEnabled", v76);
        }

        identifier5 = [(FPDProviderDescriptor *)v181 identifier];
        v78 = [identifier5 isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"];

        if (v78)
        {
          v79 = MEMORY[0x1E695E118];
        }

        else
        {
          v79 = v171;
          if (!v171)
          {
            bOOLValue12 = 1;
LABEL_81:
            [(FPDProviderDescriptor *)v181 setDefaultDomainVisible:bOOLValue12];
            v81 = objc_opt_class();
            v82 = objectForKeyOfClass(v176, @"NSFileProviderHideExtensionName", v81);
            -[FPDProviderDescriptor setShouldHideExtensionName:](v181, "setShouldHideExtensionName:", [v82 BOOLValue]);

            v83 = objc_opt_class();
            v84 = objectForKeyOfClass(v176, @"NSFileProviderCanToggleDomainVisibility", v83);
            v163 = v84;
            if (v84)
            {
              bOOLValue6 = [v84 BOOLValue];
            }

            else
            {
              bOOLValue6 = 1;
            }

            [(FPDProviderDescriptor *)v181 setCanToggleDomainVisibility:bOOLValue6];
            v86 = objc_opt_class();
            v162 = objectForKeyOfClass(v176, @"NSExtensionPointVersion", v86);
            if ([v162 isEqualToString:@"2.0"])
            {
              [(FPDProviderDescriptor *)v181 setSupportsEnumeration:1];
              [(FPDProviderDescriptor *)v181 setIsAvailableSystemWide:1];
            }

            v87 = objc_opt_class();
            v88 = objectForKeyOfClass(v176, @"NSExtensionFileProviderSupportsUnzippedPackages", v87);
            v161 = v88;
            if (v88)
            {
              bOOLValue7 = [v88 BOOLValue];
            }

            else
            {
              bOOLValue7 = 0;
            }

            [(FPDProviderDescriptor *)v181 setSupportsUnzippedPackages:bOOLValue7];
            v90 = objc_opt_class();
            v91 = objectForKeyOfClass(v176, @"NSExtensionFileProviderSupportsPickingFolders", v90);
            v160 = v91;
            if (v91)
            {
              bOOLValue8 = [v91 BOOLValue];
            }

            else
            {
              bOOLValue8 = 0;
            }

            [(FPDProviderDescriptor *)v181 setSupportsPickingFolders:bOOLValue8];
            v93 = objc_opt_class();
            v170 = objectForKeyOfClass(v176, @"NSExtensionWantsBundleBitOnlyPackageDetection", v93);
            if (v170 && ([recordCopy bundleIdentifier], v94 = objc_claimAutoreleasedReturnValue(), v95 = objc_msgSend(v94, "hasPrefix:", @"com.apple."), v94, v95))
            {
              bOOLValue9 = [v170 BOOLValue];
            }

            else
            {
              bOOLValue9 = 0;
            }

            [(FPDProviderDescriptor *)v181 setWantsBundleBitOnlyPackageDetection:bOOLValue9];
            v97 = objc_opt_class();
            v98 = objectForKeyOfClass(v176, @"NSExtensionFileProviderAllowsExternalVolumes", v97);
            v159 = v98;
            if (v98)
            {
              bOOLValue10 = [v98 BOOLValue];
            }

            else
            {
              bOOLValue10 = 0;
            }

            [(FPDProviderDescriptor *)v181 setAllowsExternalVolumes:bOOLValue10];
            v100 = objc_opt_class();
            v101 = objectForKeyOfClass(v176, @"NSExtensionFileProviderSupportsFailingUploadOnConflict", v100);
            v158 = v101;
            if (v101)
            {
              bOOLValue11 = [v101 BOOLValue];
            }

            else
            {
              bOOLValue11 = 0;
            }

            [(FPDProviderDescriptor *)v181 setSupportsFailingUploadOnConflict:bOOLValue11];
            v103 = objc_opt_class();
            v104 = objectForKeyOfClass(v176, @"NSExtensionFileProviderAdditionalSyncableExtendedAttributes", v103);
            [(FPDProviderDescriptor *)v181 setRequestedExtendedAttributes:v104];

            requestedExtendedAttributes = [(FPDProviderDescriptor *)v181 requestedExtendedAttributes];

            if (requestedExtendedAttributes)
            {
              v195 = 0u;
              v196 = 0u;
              v193 = 0u;
              v194 = 0u;
              requestedExtendedAttributes2 = [(FPDProviderDescriptor *)v181 requestedExtendedAttributes];
              v107 = [requestedExtendedAttributes2 countByEnumeratingWithState:&v193 objects:v205 count:16];
              if (v107)
              {
                v108 = *v194;
                while (2)
                {
                  for (i = 0; i != v107; ++i)
                  {
                    if (*v194 != v108)
                    {
                      objc_enumerationMutation(requestedExtendedAttributes2);
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v110 = fp_current_or_default_log();
                      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                      {
                        [FPDProviderDescriptor initWithExtensionRecord:];
                      }

                      [(FPDProviderDescriptor *)v181 setRequestedExtendedAttributes:0];
                      goto LABEL_115;
                    }
                  }

                  v107 = [requestedExtendedAttributes2 countByEnumeratingWithState:&v193 objects:v205 count:16];
                  if (v107)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_115:
            }

            obj = [v173 objectForKeyedSubscript:@"NSFileProviderSupportedFileTypes"];
            if (obj)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v191 = 0u;
                v192 = 0u;
                v189 = 0u;
                v190 = 0u;
                obj = obj;
                v111 = [obj countByEnumeratingWithState:&v189 objects:v204 count:16];
                if (v111)
                {
                  v112 = *v190;
                  while (2)
                  {
                    for (j = 0; j != v111; ++j)
                    {
                      if (*v190 != v112)
                      {
                        objc_enumerationMutation(obj);
                      }

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v115 = fp_current_or_default_log();
                        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
                        {
                          [FPDProviderDescriptor initWithExtensionRecord:];
                        }

                        identifier6 = [*MEMORY[0x1E6982E48] identifier];
                        v203 = identifier6;
                        v117 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v203 count:1];
                        [(FPDProviderDescriptor *)v181 setSupportedFileTypes:v117];

                        goto LABEL_133;
                      }
                    }

                    v111 = [obj countByEnumeratingWithState:&v189 objects:v204 count:16];
                    if (v111)
                    {
                      continue;
                    }

                    break;
                  }
                }

                [(FPDProviderDescriptor *)v181 setSupportedFileTypes:obj];
              }

              else
              {
                v114 = fp_current_or_default_log();
                if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                {
                  [(FPDProviderDescriptor *)obj initWithExtensionRecord:v181];
                }
              }
            }

            else
            {
LABEL_133:
              obj = 0;
            }

            v156 = objc_opt_new();
            v118 = [entitlements objectForKey:*MEMORY[0x1E6967150] ofClass:objc_opt_class()];
            v157 = v118;
            if (v118)
            {
              memset(v188, 0, sizeof(v188));
              v172 = v118;
              if (![v172 countByEnumeratingWithState:v188 objects:v202 count:16])
              {
LABEL_140:

                [(FPDProviderDescriptor *)v181 setHasExplicitExtensionStorageURLs:1];
                goto LABEL_160;
              }

              v161 = **(&v188[0] + 1);
              if ([v161 hasPrefix:@"/"])
              {
                v120 = [v161 substringFromIndex:1];

                v161 = v120;
              }

              fp_homeDirectory = [MEMORY[0x1E695DFF8] fp_homeDirectory];
              v122 = [fp_homeDirectory URLByAppendingPathComponent:v161 isDirectory:1];

              if (v122)
              {
                [v156 addObject:v122];

                goto LABEL_140;
              }

              currentPersona = fp_current_or_default_log();
              if (os_log_type_enabled(currentPersona, OS_LOG_TYPE_FAULT))
              {
                [FPDProviderDescriptor initWithExtensionRecord:];
              }

LABEL_201:
              v149 = 0;
              goto LABEL_202;
            }

            v172 = [v176 objectForKeyedSubscript:@"NSExtensionFileProviderDocumentGroup"];
            mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
            currentPersona = [mEMORY[0x1E69DF068] currentPersona];

            v187 = 0;
            userPersonaUniqueString = [currentPersona userPersonaUniqueString];
            v126 = userPersonaUniqueString;
            if (userPersonaUniqueString == v181->_personaIdentifier || [(NSString *)userPersonaUniqueString isEqualToString:?]|| !voucher_process_can_use_arbitrary_personas())
            {
              v161 = 0;
            }

            else
            {
              v186 = 0;
              v127 = [currentPersona copyCurrentPersonaContextWithError:&v186];
              v128 = v186;
              v129 = v187;
              v187 = v127;

              if (v128)
              {
                v130 = fp_current_or_default_log();
                if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                {
                  [FPDProviderDescriptor initWithExtensionRecord:];
                }
              }

              v161 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:v181->_personaIdentifier, v156, 0, v158, v159, v160, v161];

              if (v161)
              {
                v131 = fp_current_or_default_log();
                if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                {
                  [FPDProviderDescriptor initWithExtensionRecord:];
                }
              }
            }

            if (v172)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v132 = [MEMORY[0x1E695DFF8] fp_uncachedContainerURLForSecurityApplicationGroupIdentifier:v172];
                if (v132)
                {
                  groupContainerURLs = [recordCopy groupContainerURLs];
                  v134 = [groupContainerURLs objectForKeyedSubscript:v172];

                  if (v134)
                  {
                    v135 = [v132 URLByAppendingPathComponent:@"File Provider Storage" isDirectory:1];
                    if (v135)
                    {
                      [v156 addObject:v135];
                      [(FPDProviderDescriptor *)v181 setDocumentGroupName:v172];

                      goto LABEL_159;
                    }

                    v153 = fp_current_or_default_log();
                    if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                    {
                      [FPDProviderDescriptor initWithExtensionRecord:];
                    }
                  }

                  else
                  {
                    v152 = fp_current_or_default_log();
                    if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
                    {
                      [FPDProviderDescriptor initWithExtensionRecord:];
                    }
                  }
                }

                else
                {
                  v132 = fp_current_or_default_log();
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
                  {
                    [FPDProviderDescriptor initWithExtensionRecord:];
                  }
                }
              }

              else
              {
                v132 = fp_current_or_default_log();
                if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
                {
                  v150 = objc_opt_class();
                  identifier7 = [(FPDProviderDescriptor *)v181 identifier];
                  [(FPDProviderDescriptor *)v150 initWithExtensionRecord:identifier7, buf, v132];
                }
              }

              _FPRestorePersona();
              goto LABEL_201;
            }

LABEL_159:

            _FPRestorePersona();
LABEL_160:
            [(FPDProviderDescriptor *)v181 setExtensionStorageURLs:v156, v156];
            v172 = [v176 objectForKeyedSubscript:@"NSExtensionFileProviderSupportedSearchCapabilities"];
            if (v172)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                array = [MEMORY[0x1E695DF70] array];
                [array addObject:*MEMORY[0x1E6967268]];
                v184 = 0u;
                v185 = 0u;
                v182 = 0u;
                v183 = 0u;
                v137 = v172;
                v138 = [v137 countByEnumeratingWithState:&v182 objects:v199 count:16];
                if (v138)
                {
                  v139 = *v183;
                  v140 = MEMORY[0x1E6967260];
                  v141 = MEMORY[0x1E6967270];
                  do
                  {
                    for (k = 0; k != v138; ++k)
                    {
                      if (*v183 != v139)
                      {
                        objc_enumerationMutation(v137);
                      }

                      v143 = *(*(&v182 + 1) + 8 * k);
                      v144 = [v143 isEqualToString:@"NSExtensionFileProviderSearchByContentType"];
                      v145 = v140;
                      if ((v144 & 1) == 0)
                      {
                        v146 = [v143 isEqualToString:@"NSExtensionFileProviderSearchScopedToDirectory"];
                        v145 = v141;
                        if (!v146)
                        {
                          continue;
                        }
                      }

                      [array addObject:*v145];
                    }

                    v138 = [v137 countByEnumeratingWithState:&v182 objects:v199 count:16];
                  }

                  while (v138);
                }

                [(FPDProviderDescriptor *)v181 setSupportedSearchFilters:array];
              }
            }

            v161 = [v176 objectForKeyedSubscript:@"NSFileProviderUsesUniqueItemIdentifiersAcrossDevices"];
            if (v161)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                -[FPDProviderDescriptor setUsesUniqueItemIdentifiersAcrossDevices:](v181, "setUsesUniqueItemIdentifiersAcrossDevices:", [v161 BOOLValue]);
              }
            }

            currentPersona = [v176 objectForKeyedSubscript:@"NSExtensionFileProviderDownloadPipelineDepth"];
            if (currentPersona)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(FPDProviderDescriptor *)v181 setDownloadPipelineDepth:currentPersona];
              }
            }

            v147 = [v176 objectForKeyedSubscript:@"NSExtensionFileProviderUploadPipelineDepth"];
            if (v147)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(FPDProviderDescriptor *)v181 setUploadPipelineDepth:v147];
              }
            }

            v148 = [v176 objectForKeyedSubscript:@"NSExtensionFileProviderMetadataOnlyUploadPipelineDepth"];
            if (v148)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(FPDProviderDescriptor *)v181 setMetadataOnlyUploadPipelineDepth:v148];
              }
            }

            v149 = 1;
LABEL_202:

            if (v149)
            {
              v154 = fp_current_or_default_log();
              if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
              {
                [FPDProviderDescriptor initWithExtensionRecord:v181];
              }

              v4 = v181;
              goto LABEL_206;
            }

LABEL_60:

            goto LABEL_61;
          }
        }

        bOOLValue12 = [v79 BOOLValue];
        goto LABEL_81;
      }

      v60 = fp_current_or_default_log();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        [(FPDProviderDescriptor *)v176 initWithExtensionRecord:v181];
      }
    }

    else
    {
      v60 = fp_current_or_default_log();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        [FPDProviderDescriptor initWithExtensionRecord:v181];
      }
    }

    goto LABEL_60;
  }

LABEL_44:

LABEL_61:
  v61 = 0;
LABEL_207:

  return v61;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_14;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    extensionUUID = self->_extensionUUID;
    extensionUUID = [(FPDProviderDescriptor *)v7 extensionUUID];
    LODWORD(extensionUUID) = [(NSUUID *)extensionUUID isEqual:extensionUUID];

    if (extensionUUID)
    {
      personaIdentifier = [(FPDProviderDescriptor *)self personaIdentifier];
      if (!personaIdentifier)
      {
        extensionUUID = [(FPDProviderDescriptor *)v7 personaIdentifier];
        if (!extensionUUID)
        {
          goto LABEL_10;
        }
      }

      personaIdentifier2 = [(FPDProviderDescriptor *)self personaIdentifier];
      personaIdentifier3 = [(FPDProviderDescriptor *)v7 personaIdentifier];
      v13 = [personaIdentifier2 isEqual:personaIdentifier3];

      if (personaIdentifier)
      {

        if (v13)
        {
LABEL_10:
          owningApplicationIsHidden = self->_owningApplicationIsHidden;
          v6 = owningApplicationIsHidden == [(FPDProviderDescriptor *)v7 owningApplicationIsHidden];
LABEL_13:

          goto LABEL_14;
        }
      }

      else
      {

        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    v6 = 0;
    goto LABEL_13;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)personaFromExtensionRecord:(id)record managedPersona:(BOOL *)persona
{
  v28 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  *persona = 0;
  bundleIdentifier = [recordCopy bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];

  if (v7)
  {
    v8 = MEMORY[0x1E69DF088];
    v9 = 2;
LABEL_14:
    v20 = [v8 personaAttributesForPersonaType:v9];
    userPersonaUniqueString = [v20 userPersonaUniqueString];

    goto LABEL_15;
  }

  managedPersonas = [recordCopy managedPersonas];
  v11 = [managedPersonas count];

  v8 = MEMORY[0x1E69DF088];
  if (!v11)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v12 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:2];
  userPersonaUniqueString2 = [v12 userPersonaUniqueString];

  managedPersonas2 = [recordCopy managedPersonas];
  userPersonaUniqueString = [managedPersonas2 firstObject];

  managedPersonas3 = [recordCopy managedPersonas];
  v17 = [managedPersonas3 count];

  if (v17 >= 2)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [FPDProviderDescriptor personaFromExtensionRecord:recordCopy managedPersona:v18];
    }
  }

  if (([userPersonaUniqueString isEqualToString:userPersonaUniqueString2] & 1) == 0)
  {
    v19 = fp_current_or_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v22 = 138412802;
      v23 = recordCopy;
      v24 = 2112;
      v25 = userPersonaUniqueString;
      v26 = 2112;
      v27 = userPersonaUniqueString2;
      _os_log_fault_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_FAULT, "[CRIT] extension record %@ has a persona %@ not matching the managed persona %@", &v22, 0x20u);
    }
  }

  *persona = 1;

LABEL_15:

  return userPersonaUniqueString;
}

- (BOOL)isPersonaLegit
{
  v11 = *MEMORY[0x1E69E9840];
  personaIdentifier = [(FPDProviderDescriptor *)self personaIdentifier];
  if (personaIdentifier)
  {

    return 1;
  }

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  isSharedIPad = [mEMORY[0x1E69DF068] isSharedIPad];

  if (isSharedIPad)
  {
    return 1;
  }

  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(FPDProviderDescriptor *)self identifier];
    v9 = 138543362;
    v10 = identifier;
    _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Extension without persona out of the EDU case, dropping %{public}@ registration", &v9, 0xCu);
  }

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(FPDProviderDescriptor *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p, %@>", v4, self, identifier];

  return v6;
}

- (void)initWithExtensionRecord:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 extensionBundleURL];
  v7 = [v2 fp_shortDescription];
  OUTLINED_FUNCTION_4_2();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x16u);
}

- (void)initWithExtensionRecord:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 extensionBundleURL];
  v2 = [v1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_5_0(v3, v4, v5, v6, v7);
}

- (void)initWithExtensionRecord:(void *)a1 .cold.3(void *a1)
{
  v2 = [a1 identifier];
  v3 = [a1 personaIdentifier];
  [a1 managedPersona];
  OUTLINED_FUNCTION_4_2();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x20u);
}

- (void)initWithExtensionRecord:(uint64_t)a1 .cold.4(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)initWithExtensionRecord:(uint64_t)a1 .cold.5(uint64_t a1)
{
  v1 = objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithExtensionRecord:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithExtensionRecord:(uint64_t)a1 .cold.7(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)initWithExtensionRecord:.cold.8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithExtensionRecord:.cold.9()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_FAULT, "[CRIT] got nil URL for directory at path %@", v1, 0xCu);
}

- (void)initWithExtensionRecord:.cold.10()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v0, v1, "[ERROR] won't restore persona: %@", v2);
}

- (void)initWithExtensionRecord:.cold.11()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithExtensionRecord:(uint8_t *)buf .cold.12(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543874;
  *(buf + 4) = @"NSExtensionFileProviderDocumentGroup";
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  *(buf + 11) = 2114;
  *(buf + 3) = a2;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] invalid type for key %{public}@ (expected: NSString, actual: %{public}@) -- extension identifier: %{public}@", buf, 0x20u);
}

- (void)initWithExtensionRecord:.cold.13()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v0, v1, "[ERROR] Cannot deduce the provider storage URL for %@", v2);
}

- (void)initWithExtensionRecord:.cold.14()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)initWithExtensionRecord:.cold.15()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v0, v1, "[ERROR] Cannot deduce the provided items URL for %@", v2);
}

- (void)initWithExtensionRecord:(void *)a1 .cold.16(void *a1)
{
  v2 = [a1 identifier];
  v3 = [a1 extensionBundleURL];
  v8 = [v3 fp_shortDescription];
  OUTLINED_FUNCTION_4_2();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

- (void)initWithExtensionRecord:(void *)a1 .cold.17(void *a1)
{
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithExtensionRecord:(void *)a1 .cold.18(void *a1)
{
  v1 = [a1 extensionBundleURL];
  v2 = [v1 fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_5_0(v3, v4, v5, v6, v7);
}

+ (void)personaFromExtensionRecord:(void *)a1 managedPersona:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 managedPersonas];
  v6 = 138412546;
  v7 = a1;
  OUTLINED_FUNCTION_3_1();
  v8 = v5;
  _os_log_fault_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_FAULT, "[CRIT] extension record %@ has more than one persona associated (%@)", &v6, 0x16u);
}

@end