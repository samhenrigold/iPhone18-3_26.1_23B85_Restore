@interface BRContainer
+ (BOOL)canMoveFilesWithoutDownloadingFromContainer:(id)container toContainer:(id)toContainer;
+ (BOOL)isDocumentScopePublicWithProperties:(id)properties mangledID:(id)d;
+ (BOOL)versionOfBundle:(id)bundle changedFromVersion:(id)version;
+ (id)_URLForPlistOfMangledID:(id)d;
+ (id)_bundleIDVersionsWithProperties:(id)properties mangledID:(id)d;
+ (id)_bundleIDsWithProperties:(id)properties;
+ (id)_containerRepositoryURLForMangledID:(id)d;
+ (id)_documentsTypesWithProperties:(id)properties;
+ (id)_exportedTypesWithProperties:(id)properties;
+ (id)_iconGeneratorVersionWithProperties:(id)properties;
+ (id)_iconMetadataWithProperties:(id)properties;
+ (id)_iconURLsWithProperties:(id)properties mangledID:(id)d;
+ (id)_importedTypesWithProperties:(id)properties;
+ (id)_isDocumentScopePublicAsNumberWithProperties:(id)properties mangledID:(id)d;
+ (id)_localizedNameWithProperties:(id)properties mangledID:(id)d preferredLanguages:(id)languages;
+ (id)_pathForIconName:(id)name mangledID:(id)d;
+ (id)_sanitizedContainerFallbackNameForMangledID:(id)d;
+ (id)allContainersBlockIfNeeded:(BOOL)needed;
+ (id)allContainersByContainerID;
+ (id)bundleIdentifiersEnumeratorForProperties:(id)properties;
+ (id)bundlePropertyEnumerator:(id)enumerator valuesOfClass:(Class)class forProperties:(id)properties;
+ (id)classesForDecoding;
+ (id)containerForItemAtURL:(id)l error:(id *)error;
+ (id)containerForMangledID:(id)d;
+ (id)containerInRepositoryURL:(id)l createIfMissing:(BOOL)missing error:(id *)error;
+ (id)containersRepositoryURL;
+ (id)documentContainers;
+ (id)documentsContainersInBackupHomeAtURL:(id)l error:(id *)error;
+ (id)localizedNameForDefaultCloudDocsContainer;
+ (id)localizedNameForDesktopContainer;
+ (id)localizedNameForDocumentsContainer;
+ (id)propertiesForMangledID:(id)d usingBundle:(__CFBundle *)bundle minimumBundleVersion:(id)version bundleIcons:(id *)icons;
+ (void)_generateiOSIconsForMangledID:(id)d usingBundle:(__CFBundle *)bundle generatedIcons:(id)icons;
+ (void)forceRefreshAllContainersWithCompletion:(id)completion;
+ (void)forceRefreshContainers:(id)containers completion:(id)completion;
+ (void)initialize;
+ (void)postContainerListUpdateNotification;
+ (void)postContainerStatusChangeNotificationWithID:(id)d key:(id)key value:(id)value;
+ (void)unregisterCurrentProcessAsPriorityHint;
- (BOOL)_updateMetadataOnDiskWithProperties:(id)properties;
- (BOOL)containsExcludedDocumentsOnTheFSWithExcludedButPreservedFilename:(id)filename excludedButPreservedExtensions:(id)extensions andStampUploadedAppWithXattr:(BOOL)xattr;
- (BOOL)deleteAllContentsOnClientAndServer:(BOOL)server error:(id *)error;
- (BOOL)hasIconWithName:(id)name;
- (BOOL)isDocumentScopePublic;
- (BOOL)registerCurrentProcessAsPriorityHintWithError:(id *)error;
- (BOOL)updateMetadataWithExtractorProperties:(id)properties iconPaths:(id)paths bundleID:(id)d;
- (BOOL)updateMetadataWithRecordData:(id)data iconPaths:(id)paths;
- (BRContainer)initWithCoder:(id)coder;
- (BRContainer)initWithDocsOrDesktopContainerID:(id)d;
- (BRContainer)initWithMangledID:(id)d;
- (BRContainer)initWithMangledID:(id)d dataRepresentation:(id)representation;
- (NSDate)lastServerUpdate;
- (NSSet)bundleIdentifiers;
- (NSSet)documentsTypes;
- (NSSet)exportedTypes;
- (NSSet)importedTypes;
- (NSString)localizedName;
- (NSURL)documentsURL;
- (NSURL)trashURL;
- (NSURL)url;
- (id)_containerRepositoryURL;
- (id)_imageDataForSize:(CGSize)size scale:(int64_t)scale isiOSIcon:(BOOL *)icon shouldTransformToAppIcon:(BOOL *)appIcon;
- (id)_pathForIconName:(id)name;
- (id)_pathForPlist;
- (id)bestFittingImageDataForSize:(CGSize)size shouldTransformToAppIcon:(BOOL *)icon;
- (id)bundleIDVersions;
- (id)computedProperties;
- (id)copyDataRepresentation;
- (id)description;
- (id)iconGeneratorVersion;
- (id)iconMetadata;
- (id)iconURLs;
- (id)imageRepresentationsAvailable;
- (id)localizedNameWithPreferredLanguages:(id)languages;
- (id)shortDescription;
- (id)trashRestoreStringForURL:(id)l;
- (id)versionNumberForBundleIdentifier:(id)identifier;
- (unsigned)currentStatus;
- (void)_performWhileAccessingSecurityScopedContainer:(id)container;
- (void)_replaceDataRepresentationWithData:(id)data;
- (void)accessDataRepresentationInBlock:(id)block;
- (void)accessPropertiesInBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
- (void)forceRefreshWithCompletion:(id)completion;
- (void)setCurrentStatus:(unsigned int)status;
- (void)setLastServerUpdate:(id)update;
- (void)setUrlRoot:(id)root;
@end

@implementation BRContainer

+ (void)initialize
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___BRContainer;
  objc_msgSendSuper2(&v4, sel_initialize);
  v2 = BRContainerFormatVersionNumberValue;
  BRContainerFormatVersionNumberValue = &unk_1F23E6898;

  v3 = BRContainerIconGeneratorVersionNumberValue;
  BRContainerIconGeneratorVersionNumberValue = &unk_1F23E68B0;
}

+ (id)classesForDecoding
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, objc_opt_class(), 0}];
}

+ (id)localizedNameForDefaultCloudDocsContainer
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat(@"iCloud Drive", @"Localizable", v2, v3, v4, v5, v6, v7, v10);

  return v8;
}

- (BOOL)isDocumentScopePublic
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isDocumentScopePublicAsNumber = selfCopy->_isDocumentScopePublicAsNumber;
  if (!isDocumentScopePublicAsNumber)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__BRContainer_isDocumentScopePublic__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = selfCopy;
    [(BRContainer *)selfCopy accessPropertiesInBlock:v6];
    isDocumentScopePublicAsNumber = selfCopy->_isDocumentScopePublicAsNumber;
  }

  bOOLValue = [(NSNumber *)isDocumentScopePublicAsNumber BOOLValue];
  objc_sync_exit(selfCopy);

  return bOOLValue;
}

- (NSString)localizedName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  localizedName = selfCopy->_localizedName;
  if (!localizedName)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28__BRContainer_localizedName__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = selfCopy;
    [(BRContainer *)selfCopy accessPropertiesInBlock:v6];
    localizedName = selfCopy->_localizedName;
  }

  v4 = localizedName;
  objc_sync_exit(selfCopy);

  return v4;
}

- (BRContainer)initWithMangledID:(id)d
{
  dCopy = d;
  v21.receiver = self;
  v21.super_class = BRContainer;
  v6 = [(BRContainer *)&v21 init];
  if (v6)
  {
    if (initWithMangledID__onceToken != -1)
    {
      [BRContainer initWithMangledID:];
    }

    objc_storeStrong(&v6->_mangledID, d);
    v6->_shouldUsePurgeableData = 1;
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v8 = containerWorkloop;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create_with_target_V2("clouddocs.container.default", v9, v8);

    observationSetupQueueForDefaultConnection = v6->_observationSetupQueueForDefaultConnection;
    v6->_observationSetupQueueForDefaultConnection = v10;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v13 = containerWorkloop;
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(v12, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create_with_target_V2("clouddocs.container.secondary", v14, v13);

    observationSetupQueueForSecondaryConnection = v6->_observationSetupQueueForSecondaryConnection;
    v6->_observationSetupQueueForSecondaryConnection = v15;

    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    br_currentPersonaID = [mEMORY[0x1E69DF068] br_currentPersonaID];
    personaID = v6->_personaID;
    v6->_personaID = br_currentPersonaID;
  }

  return v6;
}

uint64_t __33__BRContainer_initWithMangledID___block_invoke()
{
  containerWorkloop = dispatch_workloop_create("cloudocs.container.workloop");

  return MEMORY[0x1EEE66BB8]();
}

- (BRContainer)initWithDocsOrDesktopContainerID:(id)d
{
  dCopy = d;
  v5 = [[BRMangledID alloc] initWithAppLibraryName:dCopy];

  v6 = [(BRContainer *)self initWithMangledID:v5];
  v7 = v6;
  if (v6)
  {
    isDocumentScopePublicAsNumber = v6->_isDocumentScopePublicAsNumber;
    v6->_isDocumentScopePublicAsNumber = MEMORY[0x1E695E118];

    v7->_isInCloudDocsZone = 1;
  }

  return v7;
}

- (BRContainer)initWithMangledID:(id)d dataRepresentation:(id)representation
{
  dCopy = d;
  representationCopy = representation;
  if (!dCopy)
  {
    [BRContainer initWithMangledID:dataRepresentation:];
  }

  v8 = [(BRContainer *)self initWithMangledID:dCopy];
  v9 = v8;
  if (v8)
  {
    v8->_shouldUsePurgeableData = 0;
    if (!representationCopy)
    {
      v10 = brc_bread_crumbs("[BRContainer initWithMangledID:dataRepresentation:]", 325);
      v11 = brc_default_log(1, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [BRContainer initWithMangledID:dataRepresentation:];
      }
    }

    [(BRContainer *)v9 _replaceDataRepresentationWithData:representationCopy];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  mangledID = self->_mangledID;
  shortDescription = [(BRContainer *)self shortDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p id:%@ %@>", v4, self, mangledID, shortDescription];

  return v7;
}

- (BRContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [[BRMangledID alloc] initWithAppLibraryName:v5];
  v7 = [(BRContainer *)self initWithMangledID:v6];
  if (v7)
  {
    v7->_isCloudSyncTCCDisabled = [coderCopy decodeBoolForKey:@"BRContainerIsCloudSyncTCCDisabledKey"];
    v7->_isInInitialState = [coderCopy decodeBoolForKey:@"BRContainerIsInInitialState"];
    v7->_isInCloudDocsZone = [coderCopy decodeBoolForKey:@"BRContainerIsInCloudDocsZone"];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(coderCopy, "decodeBoolForKey:", @"BRContainerIsDocumentScopePublic"}];
    isDocumentScopePublicAsNumber = v7->_isDocumentScopePublicAsNumber;
    v7->_isDocumentScopePublicAsNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BRContainerDataKey"];
    dataRepresentation = v7->_dataRepresentation;
    v7->_dataRepresentation = v10;

    v7->_shouldUsePurgeableData = [coderCopy decodeBoolForKey:@"BRContainerShouldUsePurgeableDataKey"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BRContainerPersonaID"];
    personaID = v7->_personaID;
    v7->_personaID = v12;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appLibraryOrZoneName = [(BRMangledID *)self->_mangledID appLibraryOrZoneName];
  [coderCopy encodeObject:appLibraryOrZoneName forKey:@"identifier"];

  [coderCopy encodeBool:self->_isCloudSyncTCCDisabled forKey:@"BRContainerIsCloudSyncTCCDisabledKey"];
  [coderCopy encodeBool:self->_isInInitialState forKey:@"BRContainerIsInInitialState"];
  [coderCopy encodeBool:self->_isInCloudDocsZone forKey:@"BRContainerIsInCloudDocsZone"];
  [coderCopy encodeBool:-[BRContainer isDocumentScopePublic](self forKey:{"isDocumentScopePublic"), @"BRContainerIsDocumentScopePublic"}];
  [coderCopy encodeObject:self->_personaID forKey:@"BRContainerPersonaID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = coderCopy;
    userInfo = [v6 userInfo];
    NSClassFromString(@"BRCClientPrivilegesDescriptor");
    if (objc_opt_isKindOfClass())
    {
      userInfo2 = [v6 userInfo];
    }

    else
    {
      userInfo2 = 0;
    }

    if (([userInfo2 hasAuditToken] & 1) == 0)
    {
      goto LABEL_12;
    }

    if (userInfo2)
    {
      objc_msgSend_auditToken(userInfo2);
      goto LABEL_11;
    }
  }

  else
  {
    userInfo2 = 0;
    if (![0 hasAuditToken])
    {
      goto LABEL_12;
    }
  }

  userInfo2 = 0;
  v14 = 0u;
  v15 = 0u;
LABEL_11:
  _pathForPlist = [(BRContainer *)self _pathForPlist];
  fileSystemRepresentation = [_pathForPlist fileSystemRepresentation];
  v10 = sandbox_check_by_audit_token();

  if (!v10)
  {
    [coderCopy encodeBool:1 forKey:{@"BRContainerShouldUsePurgeableDataKey", fileSystemRepresentation}];
    goto LABEL_13;
  }

LABEL_12:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __31__BRContainer_encodeWithCoder___block_invoke;
  v12[3] = &unk_1E7A164B8;
  v13 = coderCopy;
  [(BRContainer *)self accessDataRepresentationInBlock:v12];

LABEL_13:
}

id *__31__BRContainer_encodeWithCoder___block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] encodeObject:a2 forKey:@"BRContainerDataKey"];
  }

  return result;
}

- (void)accessPropertiesInBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__BRContainer_accessPropertiesInBlock___block_invoke;
  v6[3] = &unk_1E7A164E0;
  v7 = blockCopy;
  v5 = blockCopy;
  [(BRContainer *)self accessDataRepresentationInBlock:v6];
}

void __39__BRContainer_accessPropertiesInBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v7 = 0;
    v3 = [MEMORY[0x1E696AE40] propertyListWithData:a2 options:0 format:0 error:&v7];
    v4 = v7;
    if (!v3)
    {
      v5 = brc_bread_crumbs("[BRContainer accessPropertiesInBlock:]_block_invoke", 456);
      v6 = brc_default_log(0, 0);
      if (os_log_type_enabled(v6, 0x90u))
      {
        __39__BRContainer_accessPropertiesInBlock___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (id)computedProperties
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__BRContainer_computedProperties__block_invoke;
  v4[3] = &unk_1E7A16508;
  v4[4] = &v5;
  [(BRContainer *)self accessPropertiesInBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __36__BRContainer_isDocumentScopePublic__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _isDocumentScopePublicAsNumberWithProperties:v3 mangledID:*(*(a1 + 32) + 8)];

  v5 = *(a1 + 32);
  v6 = *(v5 + 104);
  *(v5 + 104) = v4;
}

- (id)bundleIDVersions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bundleIDVersions = selfCopy->_bundleIDVersions;
  if (!bundleIDVersions)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __31__BRContainer_bundleIDVersions__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = selfCopy;
    [(BRContainer *)selfCopy accessPropertiesInBlock:v6];
    bundleIDVersions = selfCopy->_bundleIDVersions;
  }

  v4 = bundleIDVersions;
  objc_sync_exit(selfCopy);

  return v4;
}

void __31__BRContainer_bundleIDVersions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _bundleIDVersionsWithProperties:v3 mangledID:*(*(a1 + 32) + 8)];

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = v4;
}

- (NSSet)bundleIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bundleIDs = selfCopy->_bundleIDs;
  if (!bundleIDs)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__BRContainer_bundleIdentifiers__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = selfCopy;
    [(BRContainer *)selfCopy accessPropertiesInBlock:v6];
    bundleIDs = selfCopy->_bundleIDs;
  }

  v4 = bundleIDs;
  objc_sync_exit(selfCopy);

  return v4;
}

void __32__BRContainer_bundleIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _bundleIDsWithProperties:v3];

  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;
}

void __28__BRContainer_localizedName__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _localizedNameWithProperties:v3 mangledID:*(*(a1 + 32) + 8)];

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (id)localizedNameForDesktopContainer
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat(@"Desktop", @"Localizable", v2, v3, v4, v5, v6, v7, v10);

  return v8;
}

+ (id)localizedNameForDocumentsContainer
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = _BRLocalizedStringWithFormat(@"Documents", @"Localizable", v2, v3, v4, v5, v6, v7, v10);

  return v8;
}

- (id)localizedNameWithPreferredLanguages:(id)languages
{
  v20 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  computedProperties = [(BRContainer *)self computedProperties];
  v6 = [computedProperties mutableCopy];

  if (v6 || ([MEMORY[0x1E696ABC0] brc_errorInvalidParameter:@"purgeableData" value:0], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [objc_opt_class() _localizedNameWithProperties:v6 mangledID:self->_mangledID preferredLanguages:languagesCopy];
  }

  else
  {
    v9 = v8;
    v10 = brc_bread_crumbs("[BRContainer localizedNameWithPreferredLanguages:]", 550);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      mangledID = self->_mangledID;
      v14 = 138412802;
      v15 = mangledID;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_debug_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] failed parsing plist for container %@: %@%@", &v14, 0x20u);
    }

    v7 = 0;
  }

  return v7;
}

- (NSSet)documentsTypes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  documentsTypes = selfCopy->_documentsTypes;
  if (!documentsTypes)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__BRContainer_documentsTypes__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = selfCopy;
    [(BRContainer *)selfCopy accessPropertiesInBlock:v6];
    documentsTypes = selfCopy->_documentsTypes;
  }

  v4 = documentsTypes;
  objc_sync_exit(selfCopy);

  return v4;
}

void __29__BRContainer_documentsTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _documentsTypesWithProperties:v3];

  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = v4;
}

- (NSSet)exportedTypes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  exportedTypes = selfCopy->_exportedTypes;
  if (!exportedTypes)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28__BRContainer_exportedTypes__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = selfCopy;
    [(BRContainer *)selfCopy accessPropertiesInBlock:v6];
    exportedTypes = selfCopy->_exportedTypes;
  }

  v4 = exportedTypes;
  objc_sync_exit(selfCopy);

  return v4;
}

void __28__BRContainer_exportedTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _exportedTypesWithProperties:v3];

  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;
}

- (NSSet)importedTypes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  importedTypes = selfCopy->_importedTypes;
  if (!importedTypes)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __28__BRContainer_importedTypes__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = selfCopy;
    [(BRContainer *)selfCopy accessPropertiesInBlock:v6];
    importedTypes = selfCopy->_importedTypes;
  }

  v4 = importedTypes;
  objc_sync_exit(selfCopy);

  return v4;
}

void __28__BRContainer_importedTypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _importedTypesWithProperties:v3];

  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  *(v5 + 64) = v4;
}

- (id)iconMetadata
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  iconMetadata = selfCopy->_iconMetadata;
  if (!iconMetadata)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __27__BRContainer_iconMetadata__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = selfCopy;
    [(BRContainer *)selfCopy accessPropertiesInBlock:v6];
    iconMetadata = selfCopy->_iconMetadata;
  }

  v4 = iconMetadata;
  objc_sync_exit(selfCopy);

  return v4;
}

void __27__BRContainer_iconMetadata__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _iconMetadataWithProperties:v3];

  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  *(v5 + 72) = v4;
}

- (id)iconGeneratorVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  iconGeneratorVersion = selfCopy->_iconGeneratorVersion;
  if (!iconGeneratorVersion)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__BRContainer_iconGeneratorVersion__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = selfCopy;
    [(BRContainer *)selfCopy accessPropertiesInBlock:v6];
    iconGeneratorVersion = selfCopy->_iconGeneratorVersion;
  }

  v4 = iconGeneratorVersion;
  objc_sync_exit(selfCopy);

  return v4;
}

void __35__BRContainer_iconGeneratorVersion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _iconGeneratorVersionWithProperties:v3];

  v5 = *(a1 + 32);
  v6 = *(v5 + 88);
  *(v5 + 88) = v4;
}

- (id)imageRepresentationsAvailable
{
  iconMetadata = [(BRContainer *)self iconMetadata];
  allValues = [iconMetadata allValues];

  return allValues;
}

- (void)setUrlRoot:(id)root
{
  rootCopy = root;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mangledIDString = [(BRMangledID *)selfCopy->_mangledID mangledIDString];
  v6 = [rootCopy URLByAppendingPathComponent:mangledIDString isDirectory:1];
  url = selfCopy->_url;
  selfCopy->_url = v6;

  objc_sync_exit(selfCopy);
}

- (NSURL)url
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  url = selfCopy->_url;
  if (!url)
  {
    personaID = selfCopy->_personaID;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __18__BRContainer_url__block_invoke;
    v7[3] = &unk_1E7A14830;
    v7[4] = selfCopy;
    BRPerformWithPersonaAndError(personaID, v7);
    url = selfCopy->_url;
  }

  v5 = url;
  objc_sync_exit(selfCopy);

  return v5;
}

void __18__BRContainer_url__block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [BRDaemonConnection mobileDocumentsURLForPersonaID:*(*(a1 + 32) + 184) needsPersonaSwitch:a2 != 0];
  v3 = [*(*(a1 + 32) + 8) mangledIDString];
  v4 = [v7 URLByAppendingPathComponent:v3 isDirectory:1];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
}

- (NSURL)documentsURL
{
  isCloudDocsMangledID = [(BRMangledID *)self->_mangledID isCloudDocsMangledID];
  v4 = [(BRContainer *)self url];
  v5 = v4;
  if (!isCloudDocsMangledID)
  {
    v6 = [v4 URLByAppendingPathComponent:@"Documents" isDirectory:1];

    v5 = v6;
  }

  return v5;
}

- (NSURL)trashURL
{
  if (![(BRMangledID *)self->_mangledID isDesktopMangledID])
  {
    [(BRMangledID *)self->_mangledID isDocumentsMangledID];
  }

  documentsURL = [(BRContainer *)self documentsURL];
  v4 = [documentsURL URLByAppendingPathComponent:@".Trash" isDirectory:1];

  return v4;
}

- (id)trashRestoreStringForURL:(id)l
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  documentsURL = [(BRContainer *)self documentsURL];
  path = [documentsURL path];

  if (path)
  {
    path2 = [lCopy path];
    br_realpath = [path2 br_realpath];
    br_realpath2 = [path br_realpath];
    v10 = [br_realpath br_pathRelativeToPath:br_realpath2];

    if (v10)
    {
      goto LABEL_9;
    }

    v11 = brc_bread_crumbs("[BRContainer trashRestoreStringForURL:]", 675);
    v12 = brc_default_log(1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      path3 = [lCopy path];
      v18 = 138412802;
      v19 = path3;
      v20 = 2112;
      v21 = path;
      v22 = 2112;
      v23 = v11;
      v14 = "[WARNING] Can't find the put back relative URL of %@ to %@%@";
      v15 = v12;
      v16 = 32;
LABEL_7:
      _os_log_impl(&dword_1AE2A9000, v15, OS_LOG_TYPE_DEFAULT, v14, &v18, v16);
    }
  }

  else
  {
    v11 = brc_bread_crumbs("[BRContainer trashRestoreStringForURL:]", 670);
    v12 = brc_default_log(1, 0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      path3 = [lCopy path];
      v18 = 138412546;
      v19 = path3;
      v20 = 2112;
      v21 = v11;
      v14 = "[WARNING] Can't find the put back relative URL of %@%@";
      v15 = v12;
      v16 = 22;
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)containersRepositoryURL
{
  v2 = +[BRDaemonConnection cloudDocsAppSupportURL];
  v3 = [v2 URLByAppendingPathComponent:@"session/containers" isDirectory:1];

  return v3;
}

+ (id)allContainersByContainerID
{
  v2 = +[BRContainerCache containerCache];
  allContainersByID = [v2 allContainersByID];

  return allContainersByID;
}

+ (id)allContainersBlockIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v4 = +[BRContainerCache containerCache];
  v5 = [v4 allContainersBlockIfNeeded:neededCopy];

  return v5;
}

+ (id)documentContainers
{
  v2 = +[BRContainerCache containerCache];
  documentContainers = [v2 documentContainers];

  return documentContainers;
}

- (id)_imageDataForSize:(CGSize)size scale:(int64_t)scale isiOSIcon:(BOOL *)icon shouldTransformToAppIcon:(BOOL *)appIcon
{
  height = size.height;
  width = size.width;
  v43 = *MEMORY[0x1E69E9840];
  memset(v30, 0, sizeof(v30));
  __brc_create_section(0, "[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 741, 0, v30);
  v11 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 741);
  v12 = brc_default_log(1, 0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    mangledID = self->_mangledID;
    *buf = 134219266;
    v32 = v30[0];
    v33 = 2112;
    v34 = mangledID;
    v35 = 2048;
    v36 = width;
    v37 = 2048;
    v38 = height;
    v39 = 2048;
    scaleCopy = scale;
    v41 = 2112;
    v42 = v11;
    _os_log_debug_impl(&dword_1AE2A9000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx requesting image for %@ (size:%.1fx%.1f@%ld)%@", buf, 0x3Eu);
  }

  v13 = BRContainerIconNameForSizeAndScale(width, height, scale);
  if (v13)
  {
    v14 = [(BRContainer *)self _pathForIconName:v13];
    if (!v14)
    {
      v15 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 751);
      v18 = brc_default_log(1, 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v32 = v13;
        v33 = 2112;
        v34 = v15;
        _os_log_impl(&dword_1AE2A9000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] can't construct a path for imageName=%@%@", buf, 0x16u);
      }

      v16 = 0;
      goto LABEL_26;
    }

    v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
    v29 = 0;
    v16 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v15 options:0 error:&v29];
    v17 = v29;
    v18 = v17;
    if (v16)
    {
      v19 = [v13 hasSuffix:@"iOS"];
      v20 = v19;
      if (icon)
      {
        *icon = v19;
        v21 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 767);
        v22 = brc_default_log(1, 0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:];
        }
      }

      if (!appIcon)
      {
        goto LABEL_26;
      }

      iconGeneratorVersion = [(BRContainer *)self iconGeneratorVersion];
      *appIcon = ([iconGeneratorVersion longLongValue] < 1) & v20;

      v24 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 771);
      v25 = brc_default_log(1, 0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:];
      }
    }

    else if (([v17 br_isCocoaErrorCode:4]& 1) != 0 || [v18 br_isCocoaErrorCode:260])
    {
      v24 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 759);
      v25 = brc_default_log(1, 0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:];
      }
    }

    else
    {
      v24 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 761);
      v25 = brc_default_log(1, 0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v32 = v15;
        v33 = 2112;
        v34 = v18;
        v35 = 2112;
        v36 = *&v24;
        _os_log_impl(&dword_1AE2A9000, v25, OS_LOG_TYPE_DEFAULT, "[WARNING] can't create NSData with contents of '%@'; %@%@", buf, 0x20u);
      }
    }

LABEL_26:
    goto LABEL_27;
  }

  v14 = brc_bread_crumbs("[BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:]", 744);
  v15 = brc_default_log(1, 0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BRContainer _imageDataForSize:scale:isiOSIcon:shouldTransformToAppIcon:];
  }

  v16 = 0;
LABEL_27:

  __brc_leave_section(v30);

  return v16;
}

+ (BOOL)canMoveFilesWithoutDownloadingFromContainer:(id)container toContainer:(id)toContainer
{
  containerCopy = container;
  toContainerCopy = toContainer;
  v7 = toContainerCopy;
  v12 = 1;
  if (containerCopy)
  {
    if (!toContainerCopy || (v8 = containerCopy[23], v8 | v7[23]) && ![v8 isEqualToString:?] || (objc_msgSend(containerCopy, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, (v11 & 1) == 0) && (!objc_msgSend(containerCopy, "isInCloudDocsZone") || (objc_msgSend(v7, "isInCloudDocsZone") & 1) == 0))
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)forceRefreshWithCompletion:(id)completion
{
  completionCopy = completion;
  personaID = self->_personaID;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__BRContainer_forceRefreshWithCompletion___block_invoke;
  v7[3] = &unk_1E7A15590;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  BRPerformWithPersonaAndError(personaID, v7);
}

void __42__BRContainer_forceRefreshWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = +[BRDaemonConnection defaultConnection];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__BRContainer_forceRefreshWithCompletion___block_invoke_2;
    v9[3] = &unk_1E7A148D0;
    v10 = *(a1 + 40);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v9];
    v6 = [*(a1 + 32) identifier];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__BRContainer_forceRefreshWithCompletion___block_invoke_3;
    v7[3] = &unk_1E7A148D0;
    v8 = *(a1 + 40);
    [v5 forceSyncWithBarrierContainerID:v6 timeout:0 reply:v7];
  }
}

+ (void)forceRefreshAllContainersWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [BRContainer allContainersBlockIfNeeded:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__BRContainer_forceRefreshAllContainersWithCompletion___block_invoke;
  v7[3] = &unk_1E7A148D0;
  v8 = completionCopy;
  v6 = completionCopy;
  [self forceRefreshContainers:v5 completion:v7];
}

void __55__BRContainer_forceRefreshAllContainersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs("+[BRContainer forceRefreshAllContainersWithCompletion:]_block_invoke", 863);
    v5 = brc_default_log(0, 0);
    if (os_log_type_enabled(v5, 0x90u))
    {
      __55__BRContainer_forceRefreshAllContainersWithCompletion___block_invoke_cold_1();
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

+ (id)bundleIdentifiersEnumeratorForProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [[BRContainerBundleIdentifiersEnumerator alloc] initWithContainerPlist:propertiesCopy];

  return v4;
}

+ (id)bundlePropertyEnumerator:(id)enumerator valuesOfClass:(Class)class forProperties:(id)properties
{
  propertiesCopy = properties;
  enumeratorCopy = enumerator;
  v9 = [[BRContainerBundlePropertyEnumerator alloc] initWithContainerPlist:propertiesCopy propertyKey:enumeratorCopy valuesOfClass:class];

  return v9;
}

- (void)_replaceDataRepresentationWithData:(id)data
{
  v35 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  memset(v26, 0, sizeof(v26));
  __brc_create_section(0, "[BRContainer _replaceDataRepresentationWithData:]", 884, 0, v26);
  v6 = brc_bread_crumbs("[BRContainer _replaceDataRepresentationWithData:]", 884);
  v7 = brc_default_log(1, 0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    mangledID = self->_mangledID;
    if (self->_shouldUsePurgeableData)
    {
      v24 = "YES";
    }

    else
    {
      v24 = "NO";
    }

    *buf = 134218754;
    v28 = v26[0];
    v29 = 2112;
    v30 = mangledID;
    v31 = 2080;
    v32 = v24;
    v33 = 2112;
    v34 = v6;
    _os_log_debug_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Replace data for container %@. Use purgeable data [%s].%@", buf, 0x2Au);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_shouldUsePurgeableData)
  {
    objc_storeStrong(&selfCopy->_dataRepresentation, data);
    if (dataCopy)
    {
      v25 = 0;
      v9 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:2 format:0 error:&v25];
      v10 = v25;

      if (!v9)
      {
        v11 = brc_bread_crumbs("[BRContainer _replaceDataRepresentationWithData:]", 893);
        v12 = brc_default_log(0, 0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          [BRContainer _replaceDataRepresentationWithData:];
        }
      }
    }
  }

  purgeableDataRepresentation = selfCopy->_purgeableDataRepresentation;
  selfCopy->_purgeableDataRepresentation = 0;

  bundleIDs = selfCopy->_bundleIDs;
  selfCopy->_bundleIDs = 0;

  bundleIDVersions = selfCopy->_bundleIDVersions;
  selfCopy->_bundleIDVersions = 0;

  localizedName = selfCopy->_localizedName;
  selfCopy->_localizedName = 0;

  isDocumentScopePublicAsNumber = selfCopy->_isDocumentScopePublicAsNumber;
  selfCopy->_isDocumentScopePublicAsNumber = 0;

  documentsTypes = selfCopy->_documentsTypes;
  selfCopy->_documentsTypes = 0;

  exportedTypes = selfCopy->_exportedTypes;
  selfCopy->_exportedTypes = 0;

  importedTypes = selfCopy->_importedTypes;
  selfCopy->_importedTypes = 0;

  iconMetadata = selfCopy->_iconMetadata;
  selfCopy->_iconMetadata = 0;

  iconURLs = selfCopy->_iconURLs;
  selfCopy->_iconURLs = 0;

  objc_sync_exit(selfCopy);
  if (+[BRContainerCache hasDaemonicParts])
  {
    +[BRContainer postContainerListUpdateNotification];
  }

  __brc_leave_section(v26);
}

- (id)_containerRepositoryURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  personaID = self->_personaID;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__BRContainer__containerRepositoryURL__block_invoke;
  v5[3] = &unk_1E7A15CA0;
  v5[4] = self;
  v5[5] = &v6;
  BRPerformWithPersonaAndError(personaID, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __38__BRContainer__containerRepositoryURL__block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v3 = result;
    *(*(*(v3 + 40) + 8) + 40) = [BRContainer _containerRepositoryURLForMangledID:*(*(result + 32) + 8)];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)_containerRepositoryURLForMangledID:(id)d
{
  dCopy = d;
  containersRepositoryURL = [self containersRepositoryURL];
  appLibraryOrZoneName = [dCopy appLibraryOrZoneName];

  v7 = [containersRepositoryURL URLByAppendingPathComponent:appLibraryOrZoneName];

  return v7;
}

- (id)_pathForPlist
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  personaID = self->_personaID;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__BRContainer__pathForPlist__block_invoke;
  v5[3] = &unk_1E7A15CA0;
  v5[4] = self;
  v5[5] = &v6;
  BRPerformWithPersonaAndError(personaID, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__BRContainer__pathForPlist__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v7 = [BRContainer _URLForPlistOfMangledID:*(*(a1 + 32) + 8)];
    v4 = [v7 path];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)_pathForIconName:(id)name
{
  nameCopy = name;
  _containerRepositoryURL = [(BRContainer *)self _containerRepositoryURL];
  v6 = [nameCopy stringByAppendingPathExtension:@"png"];

  v7 = [_containerRepositoryURL URLByAppendingPathComponent:v6];
  path = [v7 path];

  return path;
}

+ (id)_pathForIconName:(id)name mangledID:(id)d
{
  nameCopy = name;
  v7 = [self _containerRepositoryURLForMangledID:d];
  v8 = [nameCopy stringByAppendingPathExtension:@"png"];

  v9 = [v7 URLByAppendingPathComponent:v8];
  path = [v9 path];

  return path;
}

+ (id)_URLForPlistOfMangledID:(id)d
{
  v3 = [BRContainer _containerRepositoryURLForMangledID:d];
  v4 = [v3 URLByAppendingPathExtension:@"plist"];

  return v4;
}

- (void)_performWhileAccessingSecurityScopedContainer:(id)container
{
  v16 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  imageSandboxExtension = self->_imageSandboxExtension;
  if (!imageSandboxExtension)
  {
LABEL_7:
    containerCopy[2](containerCopy);
    goto LABEL_8;
  }

  [(NSData *)imageSandboxExtension bytes];
  if (sandbox_extension_consume() < 0)
  {
    v6 = *__error();
    v7 = brc_bread_crumbs("[BRContainer _performWhileAccessingSecurityScopedContainer:]", 970);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v9 = self->_imageSandboxExtension;
      v10 = 138412802;
      v11 = v9;
      v12 = 1024;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] Failed to consume extension %@ %{errno}d%@", &v10, 0x1Cu);
    }

    *__error() = v6;
    goto LABEL_7;
  }

  containerCopy[2](containerCopy);
  sandbox_extension_release();
LABEL_8:
}

+ (id)_bundleIDsWithProperties:(id)properties
{
  v17 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v5 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [self bundleIdentifiersEnumeratorForProperties:{propertiesCopy, 0}];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObject:*(*(&v12 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_isDocumentScopePublicAsNumberWithProperties:(id)properties mangledID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  dCopy = d;
  if ([dCopy isCloudDocsMangledID])
  {
    v8 = MEMORY[0x1E695E118];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [standardUserDefaults persistentDomainForName:@"com.apple.bird"];

    appLibraryOrZoneName = [dCopy appLibraryOrZoneName];
    v12 = [v10 objectForKey:appLibraryOrZoneName];
    v13 = [v12 objectForKey:@"BRContainerIsDocumentScopePublic"];
    bOOLValue = [v13 BOOLValue];

    if (bOOLValue)
    {
      v8 = MEMORY[0x1E695E118];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v15 = [self bundlePropertyEnumerator:@"BRContainerIsDocumentScopePublic" valuesOfClass:objc_opt_class() forProperties:{propertiesCopy, 0}];
      v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v16)
      {
        v17 = 0;
        v18 = *v22;
        while (2)
        {
          v19 = 0;
          v17 += v16;
          do
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(v15);
            }

            if (![*(*(&v21 + 1) + 8 * v19) BOOLValue])
            {

              v8 = MEMORY[0x1E695E110];
              goto LABEL_16;
            }

            ++v19;
          }

          while (v16 != v19);
          v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

        v16 = v17 > 0;
      }

      v8 = [MEMORY[0x1E696AD98] numberWithInt:v16];
    }

LABEL_16:
  }

  return v8;
}

+ (id)_bundleIDVersionsWithProperties:(id)properties mangledID:(id)d
{
  v41 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = [self bundleIdentifiersEnumeratorForProperties:propertiesCopy];
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (!v7)
    {
      goto LABEL_24;
    }

    v8 = v7;
    v9 = *v29;
    v26 = *v29;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [propertiesCopy objectForKeyedSubscript:{v11, v26}];
        if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v13 = brc_bread_crumbs("+[BRContainer _bundleIDVersionsWithProperties:mangledID:]", 1039);
          v14 = brc_default_log(1, 0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = objc_opt_class();
            *buf = 138412802;
            v35 = v11;
            v36 = 2112;
            v37 = v16;
            v38 = 2112;
            v39 = v13;
            v17 = v16;
            _os_log_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] failed retrieving bundle properties for %@: unexpected kind of class (expected: NSDictionary, actual: %@)%@", buf, 0x20u);
          }
        }

        else
        {
          v13 = [v12 objectForKeyedSubscript:@"BRContainerFormatVersionNumber"];
          if (!v13)
          {
            goto LABEL_22;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v12 objectForKeyedSubscript:@"BRContainerVersionNumber"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32[0] = @"BRContainerFormatVersionNumber";
              v32[1] = @"BRContainerVersionNumber";
              v33[0] = v13;
              v33[1] = v14;
              v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
              [dictionary setObject:v15 forKeyedSubscript:v11];
            }

            else
            {
              v20 = propertiesCopy;
              v21 = v6;
              v15 = brc_bread_crumbs("+[BRContainer _bundleIDVersionsWithProperties:mangledID:]", 1060);
              v22 = brc_default_log(1, 0);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = objc_opt_class();
                *buf = 138412802;
                v35 = v11;
                v36 = 2112;
                v37 = v23;
                v38 = 2112;
                v39 = v15;
                v24 = v23;
                _os_log_impl(&dword_1AE2A9000, v22, OS_LOG_TYPE_DEFAULT, "[WARNING] failed retrieving bundle version for %@: unexpected kind of class (expected: NSString, actual: %@)%@", buf, 0x20u);
              }

              v6 = v21;
              propertiesCopy = v20;
              v9 = v26;
            }
          }

          else
          {
            v14 = brc_bread_crumbs("+[BRContainer _bundleIDVersionsWithProperties:mangledID:]", 1053);
            v15 = brc_default_log(1, 0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v18 = objc_opt_class();
              *buf = 138412802;
              v35 = v11;
              v36 = 2112;
              v37 = v18;
              v38 = 2112;
              v39 = v14;
              v19 = v18;
              _os_log_impl(&dword_1AE2A9000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] failed retrieving format version for %@: unexpected kind of class (expected: NSNumber, actual: %@)%@", buf, 0x20u);
            }
          }
        }

LABEL_22:
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (!v8)
      {
LABEL_24:

        goto LABEL_26;
      }
    }
  }

  dictionary = 0;
LABEL_26:

  return dictionary;
}

+ (id)_localizedNameWithProperties:(id)properties mangledID:(id)d preferredLanguages:(id)languages
{
  v77 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  dCopy = d;
  languagesCopy = languages;
  if ([dCopy isCloudDocsMangledID])
  {
    localizedNameForDefaultCloudDocsContainer = [objc_opt_class() localizedNameForDefaultCloudDocsContainer];
    goto LABEL_62;
  }

  if ([dCopy isDesktopMangledID])
  {
    localizedNameForDefaultCloudDocsContainer = [objc_opt_class() localizedNameForDesktopContainer];
    goto LABEL_62;
  }

  if ([dCopy isDocumentsMangledID])
  {
    localizedNameForDefaultCloudDocsContainer = [objc_opt_class() localizedNameForDocumentsContainer];
    goto LABEL_62;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v12 = [self bundleIdentifiersEnumeratorForProperties:propertiesCopy];
  v13 = [v12 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (!v13)
  {

    goto LABEL_61;
  }

  v14 = v13;
  selfCopy = self;
  v54 = dCopy;
  v15 = 0;
  v16 = *v68;
  v59 = *v68;
  v56 = languagesCopy;
  v57 = propertiesCopy;
  v55 = v12;
  do
  {
    v17 = 0;
    v60 = v14;
    do
    {
      if (*v68 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v18 = [propertiesCopy objectForKeyedSubscript:{*(*(&v67 + 1) + 8 * v17), selfCopy}];
      if (v18)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v41 = v18;
          v42 = brc_bread_crumbs("+[BRContainer _localizedNameWithProperties:mangledID:preferredLanguages:]", 1099);
          v43 = brc_default_log(1, 0);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = objc_opt_class();
            *buf = 138412546;
            v73 = v44;
            v74 = 2112;
            v75 = v42;
            v45 = v44;
            _os_log_impl(&dword_1AE2A9000, v43, OS_LOG_TYPE_DEFAULT, "[WARNING] bundleProperties should be a dictionary (kind: %@)%@", buf, 0x16u);
          }

LABEL_50:

          v16 = v59;
          v14 = v60;
LABEL_51:

          goto LABEL_52;
        }
      }

      v62 = v15;
      v19 = [v18 objectForKeyedSubscript:@"BRContainerLocalizedNames"];
      if (v19)
      {
        v20 = v19;
        objc_opt_class();
        v61 = v18;
        if (objc_opt_isKindOfClass())
        {
          v21 = [v18 objectForKeyedSubscript:@"BRContainerFormatVersionNumber"];
          objc_opt_class();
          v58 = v21;
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 intValue]<= 6)
          {
            v22 = [v20 objectForKeyedSubscript:@"en"];
            if (v22)
            {
              goto LABEL_21;
            }

            v23 = [v18 objectForKeyedSubscript:@"BRContainerName"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v25 = [v20 mutableCopy];
              v26 = [v18 objectForKeyedSubscript:@"BRContainerName"];
              [v25 setObject:v26 forKeyedSubscript:@"en"];

              v22 = v20;
              v20 = v25;
LABEL_21:
            }
          }

          v27 = MEMORY[0x1E696AAE8];
          allKeys = [v20 allKeys];
          v29 = [v27 preferredLocalizationsFromArray:allKeys forPreferences:languagesCopy];

          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v30 = v29;
          v31 = [v30 countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v64;
            do
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v64 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = [v20 objectForKeyedSubscript:*(*(&v63 + 1) + 8 * i)];
                if (v35)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if ([v35 length])
                    {

                      v15 = v35;
                      languagesCopy = v56;
                      propertiesCopy = v57;
                      dCopy = v54;
                      goto LABEL_63;
                    }
                  }

                  else
                  {
                    v36 = brc_bread_crumbs("+[BRContainer _localizedNameWithProperties:mangledID:preferredLanguages:]", 1154);
                    v37 = brc_default_log(1, 0);
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                    {
                      v38 = objc_opt_class();
                      *buf = 138412546;
                      v73 = v38;
                      v74 = 2112;
                      v75 = v36;
                      v39 = v38;
                      _os_log_impl(&dword_1AE2A9000, v37, OS_LOG_TYPE_DEFAULT, "[WARNING] localizedName should be a string (kind: %@)%@", buf, 0x16u);
                    }
                  }
                }
              }

              v32 = [v30 countByEnumeratingWithState:&v63 objects:v71 count:16];
            }

            while (v32);
          }

          languagesCopy = v56;
          propertiesCopy = v57;
          v12 = v55;
          v16 = v59;
          v14 = v60;
          v40 = v58;
        }

        else
        {
          v40 = brc_bread_crumbs("+[BRContainer _localizedNameWithProperties:mangledID:preferredLanguages:]", 1159);
          v30 = brc_default_log(1, 0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v46 = objc_opt_class();
            *buf = 138412546;
            v73 = v46;
            v74 = 2112;
            v75 = v40;
            v47 = v46;
            _os_log_impl(&dword_1AE2A9000, v30, OS_LOG_TYPE_DEFAULT, "[WARNING] localizedNames should be a dictionary (kind: %@)%@", buf, 0x16u);
          }
        }

        v18 = v61;
      }

      v15 = v62;
      if (v62)
      {
        goto LABEL_53;
      }

      v41 = v18;
      v42 = [v18 objectForKeyedSubscript:@"BRContainerName"];
      if (v42)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v43 = brc_bread_crumbs("+[BRContainer _localizedNameWithProperties:mangledID:preferredLanguages:]", 1168);
          v48 = brc_default_log(1, 0);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = objc_opt_class();
            *buf = 138412546;
            v73 = v49;
            v74 = 2112;
            v75 = v43;
            v50 = v49;
            _os_log_impl(&dword_1AE2A9000, v48, OS_LOG_TYPE_DEFAULT, "[WARNING] fallbackName should be a string (kind: %@)%@", buf, 0x16u);
          }

          v15 = 0;
          goto LABEL_50;
        }
      }

      if (![v42 length])
      {
        v15 = 0;
        goto LABEL_51;
      }

      v15 = v42;
LABEL_52:
      v18 = v41;
LABEL_53:

      ++v17;
    }

    while (v17 != v14);
    v51 = [v12 countByEnumeratingWithState:&v67 objects:v76 count:16];
    v14 = v51;
  }

  while (v51);

  self = selfCopy;
  dCopy = v54;
  if (!v15)
  {
LABEL_61:
    localizedNameForDefaultCloudDocsContainer = [self _sanitizedContainerFallbackNameForMangledID:dCopy];
LABEL_62:
    v15 = localizedNameForDefaultCloudDocsContainer;
  }

LABEL_63:

  return v15;
}

+ (id)_sanitizedContainerFallbackNameForMangledID:(id)d
{
  dCopy = d;
  aliasTargetContainerString = [dCopy aliasTargetContainerString];
  br_pathExtension = [aliasTargetContainerString br_pathExtension];

  LODWORD(aliasTargetContainerString) = [dCopy isPassbookMangledID];
  if (aliasTargetContainerString)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = _BRLocalizedStringWithFormat(@"PASSBOOK_APP", @"Localizable", v6, v7, v8, v9, v10, v11, v17);
  }

  else
  {
    if ([br_pathExtension length])
    {
      v13 = [br_pathExtension characterAtIndex:0];
      if (v13 > 0x7F)
      {
        v14 = __maskrune(v13, 0x1000uLL);
      }

      else
      {
        v14 = *(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x1000;
      }

      if (v14)
      {
        +[BRContainer _sanitizedContainerFallbackNameForMangledID:];
        br_pathExtension = v18;
      }

      v15 = br_pathExtension;
      br_pathExtension = v15;
    }

    else
    {
      v15 = @"Documents";
    }

    v12 = v15;
  }

  return v12;
}

+ (id)_documentsTypesWithProperties:(id)properties
{
  v18 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [self bundlePropertyEnumerator:@"BRContainerDocumentTypes" valuesOfClass:objc_opt_class() forProperties:{propertiesCopy, 0}];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObjectsFromArray:*(*(&v13 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_exportedTypesWithProperties:(id)properties
{
  v18 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [self bundlePropertyEnumerator:@"BRContainerExportedTypes" valuesOfClass:objc_opt_class() forProperties:{propertiesCopy, 0}];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObjectsFromArray:*(*(&v13 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_importedTypesWithProperties:(id)properties
{
  v18 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [self bundlePropertyEnumerator:@"BRContainerImportedTypes" valuesOfClass:objc_opt_class() forProperties:{propertiesCopy, 0}];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObjectsFromArray:*(*(&v13 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_iconMetadataWithProperties:(id)properties
{
  v26 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  dictionary = [propertiesCopy objectForKeyedSubscript:@"BRContainerIcons"];

  if (dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = propertiesCopy;
    obj = [propertiesCopy objectForKeyedSubscript:@"BRContainerIcons"];
    v5 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          v17 = 0.0;
          v18 = 0;
          v17 = BRContainerIconSizeForName(v9);
          v18 = v10;
          v23[0] = @"size";
          v11 = [MEMORY[0x1E696B098] valueWithBytes:&v17 objCType:"{CGSize=dd}"];
          v23[1] = @"scale";
          v24[0] = v11;
          v12 = [MEMORY[0x1E696AD98] numberWithDouble:BRContainerIconScaleForName(v9)];
          v24[1] = v12;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
          [dictionary setObject:v13 forKeyedSubscript:v9];
        }

        v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v6);
    }

    propertiesCopy = v15;
  }

  return dictionary;
}

+ (id)_iconGeneratorVersionWithProperties:(id)properties
{
  v20 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [self bundlePropertyEnumerator:@"BRContainerIconGeneratorVersionNumber" valuesOfClass:objc_opt_class() forProperties:{propertiesCopy, 0}];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      v9 = &unk_1F23E68C8;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          longLongValue = [v11 longLongValue];
          if (longLongValue > [v9 longLongValue])
          {
            v13 = v11;

            v9 = v13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = &unk_1F23E68C8;
    }
  }

  else
  {
    v9 = &unk_1F23E68C8;
  }

  return v9;
}

+ (id)_iconURLsWithProperties:(id)properties mangledID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  dCopy = d;
  dictionary = [propertiesCopy objectForKeyedSubscript:@"BRContainerIcons"];

  if (dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [propertiesCopy objectForKeyedSubscript:@"BRContainerIcons"];
    v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [self _pathForIconName:v13 mangledID:dCopy];
          v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
          [dictionary setObject:v15 forKeyedSubscript:v13];
        }

        v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  return dictionary;
}

- (NSDate)lastServerUpdate
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  observationSetupQueueForSecondaryConnection = self->_observationSetupQueueForSecondaryConnection;
  p_isObservingLastServerUpdate = &self->_isObservingLastServerUpdate;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__BRContainer_BRXcodeAdditions__lastServerUpdate__block_invoke;
  v10[3] = &unk_1E7A16580;
  v10[4] = self;
  v10[5] = &v11;
  v5 = v10;
  block = MEMORY[0x1E69E9820];
  p_block = 3221225472;
  v19 = __brc_block_perform_once_and_set_block_invoke;
  v20 = &unk_1E7A167F0;
  v21 = v5;
  v22 = p_isObservingLastServerUpdate;
  v6 = observationSetupQueueForSecondaryConnection;
  dispatch_sync(v6, &block);

  if (v12[5])
  {
    [(BRContainer *)self setLastServerUpdate:?];
    v7 = v12[5];
  }

  else
  {
    block = 0;
    p_block = &block;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__9;
    v21 = __Block_byref_object_dispose__9;
    v22 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__BRContainer_BRXcodeAdditions__lastServerUpdate__block_invoke_369;
    v9[3] = &unk_1E7A15518;
    v9[4] = self;
    v9[5] = &block;
    dispatch_async_and_wait(containerWorkloop, v9);
    v7 = *(p_block + 40);
    _Block_object_dispose(&block, 8);
  }

  _Block_object_dispose(&v11, 8);

  return v7;
}

void __49__BRContainer_BRXcodeAdditions__lastServerUpdate__block_invoke(uint64_t a1)
{
  v2 = +[BRContainerCache containerCache];
  [v2 subscribeToContainerStatusUpdate];

  v3 = +[BRDaemonConnection secondaryConnection];
  v4 = [v3 newSyncProxy];

  v5 = [*(*(a1 + 32) + 8) aliasTargetContainerString];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __49__BRContainer_BRXcodeAdditions__lastServerUpdate__block_invoke_2;
  v13 = &unk_1E7A16558;
  v14 = *(a1 + 32);
  v15 = v4;
  v6 = v4;
  [v6 getContainerLastServerUpdateWithID:v5 reply:&v10];

  v7 = [v6 result];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __49__BRContainer_BRXcodeAdditions__lastServerUpdate__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs("[BRContainer(BRXcodeAdditions) lastServerUpdate]_block_invoke_2", 1324);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, 0x90u))
    {
      v9 = *(*(a1 + 32) + 8);
      v10 = 138412802;
      v11 = v9;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&dword_1AE2A9000, v8, 0x90u, "[ERROR] unable to retrieve last server updated for container %@; %@%@", &v10, 0x20u);
    }
  }

  [*(a1 + 40) setObjResult:v5 error:v6];
}

- (unsigned)currentStatus
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  observationSetupQueueForSecondaryConnection = self->_observationSetupQueueForSecondaryConnection;
  p_isObservingCurrentStatus = &self->_isObservingCurrentStatus;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__BRContainer_BRXcodeAdditions__currentStatus__block_invoke;
  v11[3] = &unk_1E7A16580;
  v11[4] = self;
  v11[5] = &v12;
  v5 = v11;
  block = MEMORY[0x1E69E9820];
  p_block = 3221225472;
  v20 = __brc_block_perform_once_and_set_block_invoke;
  v21 = &unk_1E7A167F0;
  v22 = v5;
  v23 = p_isObservingCurrentStatus;
  v6 = observationSetupQueueForSecondaryConnection;
  dispatch_sync(v6, &block);

  v7 = v13[5];
  if (v7)
  {
    -[BRContainer setCurrentStatus:](self, "setCurrentStatus:", [v7 unsignedIntegerValue]);
    unsignedIntegerValue = [v13[5] unsignedIntegerValue];
  }

  else
  {
    block = 0;
    p_block = &block;
    v20 = 0x2020000000;
    LODWORD(v21) = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__BRContainer_BRXcodeAdditions__currentStatus__block_invoke_371;
    v10[3] = &unk_1E7A15518;
    v10[4] = self;
    v10[5] = &block;
    dispatch_async_and_wait(containerWorkloop, v10);
    unsignedIntegerValue = *(p_block + 24);
    _Block_object_dispose(&block, 8);
  }

  _Block_object_dispose(&v12, 8);

  return unsignedIntegerValue;
}

void __46__BRContainer_BRXcodeAdditions__currentStatus__block_invoke(uint64_t a1)
{
  v2 = +[BRContainerCache containerCache];
  [v2 subscribeToContainerStatusUpdate];

  v3 = +[BRDaemonConnection secondaryConnection];
  v4 = [v3 newSyncProxy];

  v5 = [*(*(a1 + 32) + 8) aliasTargetContainerString];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __46__BRContainer_BRXcodeAdditions__currentStatus__block_invoke_2;
  v13 = &unk_1E7A165A8;
  v14 = *(a1 + 32);
  v15 = v4;
  v6 = v4;
  [v6 getContainerStatusWithID:v5 reply:&v10];

  v7 = [v6 result];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __46__BRContainer_BRXcodeAdditions__currentStatus__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = brc_bread_crumbs("[BRContainer(BRXcodeAdditions) currentStatus]_block_invoke_2", 1358);
    v7 = brc_default_log(0, 0);
    if (os_log_type_enabled(v7, 0x90u))
    {
      v10 = *(*(a1 + 32) + 8);
      v11 = 138412802;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_1AE2A9000, v7, 0x90u, "[ERROR] unable to retrieve status for container %@; %@%@", &v11, 0x20u);
    }
  }

  v8 = *(a1 + 40);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v8 setObjResult:v9 error:v5];
}

- (void)setLastServerUpdate:(id)update
{
  updateCopy = update;
  [(BRContainer *)self willChangeValueForKey:@"lastServerUpdate"];
  v5 = containerWorkloop;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __61__BRContainer_BRXcodeInternalAdditions__setLastServerUpdate___block_invoke;
  v10 = &unk_1E7A14A08;
  selfCopy = self;
  v12 = updateCopy;
  v6 = updateCopy;
  dispatch_async_and_wait(v5, &v7);
  [(BRContainer *)self didChangeValueForKey:@"lastServerUpdate", v7, v8, v9, v10, selfCopy];
}

- (void)setCurrentStatus:(unsigned int)status
{
  [(BRContainer *)self willChangeValueForKey:@"currentStatus"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__BRContainer_BRXcodeInternalAdditions__setCurrentStatus___block_invoke;
  v5[3] = &unk_1E7A165D0;
  v5[4] = self;
  statusCopy = status;
  dispatch_async_and_wait(containerWorkloop, v5);
  [(BRContainer *)self didChangeValueForKey:@"currentStatus"];
}

+ (id)documentsContainersInBackupHomeAtURL:(id)l error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = [lCopy URLByAppendingPathComponent:@"Library/Application Support/CloudDocs"];
  v6 = [v5 URLByAppendingPathComponent:@"session/containers"];

  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [MEMORY[0x1E696AC08] defaultManager];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = v36 = 0u;
  v29 = v6;
  v7 = [v28 enumeratorAtURL:v6 includingPropertiesForKeys:0 options:5 errorHandler:0];
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        pathExtension = [v12 pathExtension];
        v14 = [pathExtension isEqualToString:@"plist"];

        if (v14)
        {
          v32 = 0;
          v15 = [self containerInRepositoryURL:v12 createIfMissing:0 error:&v32];
          v16 = v32;
          if (v15)
          {
            if ([v15 isDocumentScopePublic])
            {
              documentsURL = [v15 documentsURL];

              if (documentsURL)
              {
                [v31 addObject:v15];
              }
            }
          }

          else
          {
            v18 = v7;
            selfCopy = self;
            v20 = brc_bread_crumbs("+[BRContainer(BRFinderAdditions) documentsContainersInBackupHomeAtURL:error:]", 1438);
            v21 = brc_default_log(0, 0);
            if (os_log_type_enabled(v21, 0x90u))
            {
              path = [v12 path];
              *buf = 138412802;
              v38 = path;
              v39 = 2112;
              v40 = v16;
              v41 = 2112;
              v42 = v20;
              _os_log_error_impl(&dword_1AE2A9000, v21, 0x90u, "[ERROR] can't extract container at %@: %@%@", buf, 0x20u);
            }

            self = selfCopy;
            v7 = v18;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v9);
  }

  v23 = BRContainerIfDirectoryInHomeURLIsSynced(lCopy, @"Documents", @"com.apple.Documents");
  if (v23)
  {
    [v31 addObject:v23];
  }

  v24 = BRContainerIfDirectoryInHomeURLIsSynced(lCopy, @"Desktop", @"com.apple.Desktop");

  if (v24)
  {
    [v31 addObject:v24];
  }

  v25 = [[BRMangledID alloc] initWithAppLibraryName:@"com.apple.CloudDocs"];
  v26 = [[BRContainer alloc] initWithMangledID:v25];
  [v31 addObject:v26];

  return v31;
}

+ (id)containerInRepositoryURL:(id)l createIfMissing:(BOOL)missing error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  brc_stringByDeletingPathExtension = [lastPathComponent brc_stringByDeletingPathExtension];

  v10 = [[BRMangledID alloc] initWithAppLibraryName:brc_stringByDeletingPathExtension];
  v24 = 0;
  v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:1 error:&v24];
  v12 = v24;
  v13 = v12;
  if (!v12)
  {
    goto LABEL_4;
  }

  if ([v12 br_isCocoaErrorCode:260])
  {
    if (missing)
    {
LABEL_4:
      v14 = [[BRContainer alloc] initWithMangledID:v10 dataRepresentation:v11];
      goto LABEL_5;
    }

    [BRContainer(BRFinderAdditions) containerInRepositoryURL:brc_stringByDeletingPathExtension createIfMissing:error error:?];
  }

  else
  {
    v16 = brc_bread_crumbs("+[BRContainer(BRFinderAdditions) containerInRepositoryURL:createIfMissing:error:]", 1478);
    v17 = brc_default_log(1, 0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      path = [lCopy path];
      *buf = 138413058;
      v26 = v10;
      v27 = 2112;
      v28 = path;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v16;
      _os_log_debug_impl(&dword_1AE2A9000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] failed reading data for container %@ at '%@': %@%@", buf, 0x2Au);
    }

    v18 = v13;
    v19 = brc_bread_crumbs("+[BRContainer(BRFinderAdditions) containerInRepositoryURL:createIfMissing:error:]", 1479);
    v20 = brc_default_log(0, 0);
    if (os_log_type_enabled(v20, 0x90u))
    {
      v23 = "(passed to caller)";
      *buf = 136315906;
      v26 = "+[BRContainer(BRFinderAdditions) containerInRepositoryURL:createIfMissing:error:]";
      v27 = 2080;
      if (!error)
      {
        v23 = "(ignored by caller)";
      }

      v28 = v23;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      _os_log_error_impl(&dword_1AE2A9000, v20, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }

    if (error)
    {
      v21 = v18;
      *error = v18;
    }
  }

  v14 = 0;
LABEL_5:

  return v14;
}

+ (id)containerForItemAtURL:(id)l error:(id *)error
{
  lCopy = l;
  br_cloudDocsContainer = [lCopy br_cloudDocsContainer];
  v7 = br_cloudDocsContainer;
  if (br_cloudDocsContainer)
  {
    v8 = br_cloudDocsContainer;
  }

  else if (error)
  {
    *error = [MEMORY[0x1E696ABC0] brc_errorPathOutsideAnyCloudDocsAppLibraryAtURL:lCopy];
  }

  return v7;
}

- (BOOL)deleteAllContentsOnClientAndServer:(BOOL)server error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = 0;
  personaID = self->_personaID;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__BRContainer_BRFinderInternalAdditions__deleteAllContentsOnClientAndServer_error___block_invoke;
  v13[3] = &unk_1E7A165F8;
  v13[4] = self;
  v13[5] = &v15;
  v13[6] = &v21;
  serverCopy = server;
  BRPerformWithPersonaAndError(personaID, v13);
  if (v22[3])
  {
    v6 = 1;
  }

  else
  {
    v7 = v16[5];
    if (v7)
    {
      v8 = brc_bread_crumbs("[BRContainer(BRFinderInternalAdditions) deleteAllContentsOnClientAndServer:error:]", 1546);
      v9 = brc_default_log(0, 0);
      if (os_log_type_enabled(v9, 0x90u))
      {
        v12 = "(passed to caller)";
        *buf = 136315906;
        v26 = "[BRContainer(BRFinderInternalAdditions) deleteAllContentsOnClientAndServer:error:]";
        v27 = 2080;
        if (!error)
        {
          v12 = "(ignored by caller)";
        }

        v28 = v12;
        v29 = 2112;
        v30 = v7;
        v31 = 2112;
        v32 = v8;
        _os_log_error_impl(&dword_1AE2A9000, v9, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v10 = v7;
      *error = v7;
    }

    v6 = *(v22 + 24);
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v6 & 1;
}

void __83__BRContainer_BRFinderInternalAdditions__deleteAllContentsOnClientAndServer_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v5 = brc_bread_crumbs("[BRContainer(BRFinderInternalAdditions) deleteAllContentsOnClientAndServer:error:]_block_invoke", 1526);
    v6 = brc_default_log(0, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __83__BRContainer_BRFinderInternalAdditions__deleteAllContentsOnClientAndServer_error___block_invoke_cold_1();
    }

    if ([*(a1 + 32) isInCloudDocsZone] && (objc_msgSend(*(a1 + 32), "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.CloudDocs"), v7, (v8 & 1) == 0))
    {
      v18 = brc_bread_crumbs("[BRContainer(BRFinderInternalAdditions) deleteAllContentsOnClientAndServer:error:]_block_invoke", 1529);
      v19 = brc_default_log(1, 0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __83__BRContainer_BRFinderInternalAdditions__deleteAllContentsOnClientAndServer_error___block_invoke_cold_2((a1 + 32), v18, v19);
      }

      v13 = [MEMORY[0x1E696AC08] defaultManager];
      v20 = [*(a1 + 32) documentsURL];
      v21 = *(*(a1 + 40) + 8);
      obj = *(v21 + 40);
      v22 = [v13 removeItemAtURL:v20 error:&obj];
      objc_storeStrong((v21 + 40), obj);
      *(*(*(a1 + 48) + 8) + 24) = v22;
    }

    else
    {
      v9 = +[BRDaemonConnection defaultConnection];
      v10 = [v9 newSyncProxy];

      v11 = [*(*(a1 + 32) + 8) appLibraryOrZoneName];
      v12 = *(a1 + 56);
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __83__BRContainer_BRFinderInternalAdditions__deleteAllContentsOnClientAndServer_error___block_invoke_405;
      v26 = &unk_1E7A14830;
      v27 = v10;
      v13 = v10;
      [v13 deleteAllContentsOfContainerID:v11 onClient:1 onServer:1 wait:v12 reply:&v23];

      v14 = [v13 result];
      v15 = [v13 error];
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 40) + 8) + 40) == 0;
    }
  }
}

- (BOOL)hasIconWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    iconMetadata = [(BRContainer *)selfCopy iconMetadata];
    v7 = [iconMetadata objectForKeyedSubscript:nameCopy];
    v8 = v7 != 0;

    objc_sync_exit(selfCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)iconURLs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  iconURLs = selfCopy->_iconURLs;
  if (!iconURLs)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__BRContainer_BRInternalAdditions__iconURLs__block_invoke;
    v6[3] = &unk_1E7A16530;
    v6[4] = selfCopy;
    [(BRContainer *)selfCopy accessPropertiesInBlock:v6];
    iconURLs = selfCopy->_iconURLs;
  }

  v4 = iconURLs;
  objc_sync_exit(selfCopy);

  return v4;
}

void __44__BRContainer_BRInternalAdditions__iconURLs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _iconURLsWithProperties:v3 mangledID:*(*(a1 + 32) + 8)];

  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;
}

- (id)bestFittingImageDataForSize:(CGSize)size shouldTransformToAppIcon:(BOOL *)icon
{
  width = size.width;
  v25 = *MEMORY[0x1E69E9840];
  v7 = [(BRContainer *)self imageDataForSize:1 scale:icon shouldTransformToAppIcon:size.width, size.height];
  if (!v7)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    imageRepresentationsAvailable = [(BRContainer *)self imageRepresentationsAvailable];
    v9 = [imageRepresentationsAvailable countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(imageRepresentationsAvailable);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v19 = 0.0;
          v14 = [v13 objectForKey:{@"size", 0}];
          [v14 getValue:&v18];

          v15 = [v13 objectForKey:@"scale"];
          integerValue = [v15 integerValue];

          if (v18 * integerValue >= width)
          {
            v7 = [(BRContainer *)self imageDataForSize:integerValue scale:icon shouldTransformToAppIcon:v18, v19];
            goto LABEL_12;
          }
        }

        v10 = [imageRepresentationsAvailable countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_12:
  }

  return v7;
}

- (id)copyDataRepresentation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__BRContainer_BRInternalAdditions__copyDataRepresentation__block_invoke;
  v4[3] = &unk_1E7A16620;
  v4[4] = &v5;
  [(BRContainer *)self accessDataRepresentationInBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __58__BRContainer_BRInternalAdditions__copyDataRepresentation__block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [MEMORY[0x1E695DEF0] dataWithData:a2];

  return MEMORY[0x1EEE66BB8]();
}

- (void)accessDataRepresentationInBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_shouldUsePurgeableData)
  {
    v9 = selfCopy->_dataRepresentation;
    v8 = 0;
    v10 = 0;
    goto LABEL_21;
  }

  purgeableDataRepresentation = selfCopy->_purgeableDataRepresentation;
  if (!purgeableDataRepresentation)
  {
    v11 = 0;
LABEL_8:
    selfCopy->_purgeableDataRepresentation = 0;

    _pathForPlist = [(BRContainer *)selfCopy _pathForPlist];
    v13 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) accessDataRepresentationInBlock:]", 1669);
    v14 = brc_default_log(1, 0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRContainer(BRInternalAdditions) accessDataRepresentationInBlock:];
    }

    if (_pathForPlist)
    {
      v20 = 0;
      v15 = [MEMORY[0x1E696AE58] dataWithContentsOfFile:_pathForPlist options:8 error:&v20];
      v7 = v20;
      v16 = selfCopy->_purgeableDataRepresentation;
      selfCopy->_purgeableDataRepresentation = v15;
    }

    else
    {
      v7 = 0;
    }

    if (!selfCopy->_purgeableDataRepresentation && ([v7 br_isCocoaErrorCode:4] & 1) == 0 && (objc_msgSend(v7, "br_isCocoaErrorCode:", 260) & 1) == 0)
    {
      v17 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) accessDataRepresentationInBlock:]", 1674);
      v18 = brc_default_log(1, 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v22 = v7;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_1AE2A9000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] can't open plist path: %@%@", buf, 0x16u);
      }
    }

    v8 = 1;
    goto LABEL_20;
  }

  if (([(NSPurgeableData *)purgeableDataRepresentation beginContentAccess]& 1) == 0)
  {
    v11 = selfCopy->_purgeableDataRepresentation;
    goto LABEL_8;
  }

  v7 = 0;
  v8 = 0;
LABEL_20:
  v9 = selfCopy->_purgeableDataRepresentation;
  v10 = selfCopy->_purgeableDataRepresentation;

LABEL_21:
  objc_sync_exit(selfCopy);

  if (selfCopy->_shouldUsePurgeableData)
  {
    if (v8)
    {
      [(BRContainer *)selfCopy _accessRebuiltPurgeableDataRepresentation:v9 inBlock:blockCopy];
    }

    else
    {
      [(BRContainer *)selfCopy _accessPurgeableDataRepresentation:v9 inBlock:blockCopy];
    }
  }

  else
  {
    [(BRContainer *)selfCopy _accessDataRepresentation:v9 inBlock:blockCopy];
  }

  v19 = selfCopy;
  objc_sync_enter(v19);
  [(NSPurgeableData *)v10 endContentAccess];
  [(NSPurgeableData *)v10 discardContentIfPossible];
  objc_sync_exit(v19);
}

- (id)shortDescription
{
  v23 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AD60] stringWithString:@"apps:{"];
  v17 = v16 = self;
  bundleIDVersions = [(BRContainer *)self bundleIDVersions];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [bundleIDVersions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = "";
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(bundleIDVersions);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [bundleIDVersions objectForKeyedSubscript:v9];
        fp_obfuscatedDotSeparatedComponents = [v9 fp_obfuscatedDotSeparatedComponents];
        v12 = [v10 objectForKeyedSubscript:@"BRContainerVersionNumber"];
        [v17 appendFormat:@"%s%@:%@", v7, fp_obfuscatedDotSeparatedComponents, v12];

        v7 = "; ";
      }

      v5 = [bundleIDVersions countByEnumeratingWithState:&v18 objects:v22 count:16];
      v7 = "; ";
    }

    while (v5);
  }

  [v17 appendString:@"}"];
  personaID = v16->_personaID;
  if (personaID && ![(NSString *)personaID isEqualToString:@"__defaultPersonaID__"])
  {
    [v17 appendFormat:@"%spersona:%@", " ", v16->_personaID];
  }

  v14 = " ";
  if ([(BRContainer *)v16 isDocumentScopePublic])
  {
    [v17 appendFormat:@"%sDocumentScopePublic", " "];
    v14 = "|";
    if ([(BRContainer *)v16 isInInitialState])
    {
      [v17 appendFormat:@"%sInInitialState", "|"];
    }
  }

  if ([(BRContainer *)v16 isInCloudDocsZone])
  {
    [v17 appendFormat:@"%sInCloudDocsZone", v14];
    v14 = "|";
  }

  if ([(BRContainer *)v16 isCloudSyncTCCDisabled])
  {
    [v17 appendFormat:@"%sTCCDisabled", v14];
  }

  return v17;
}

+ (id)containerForMangledID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v4 = [BRContainer _URLForPlistOfMangledID:dCopy];
    v5 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) containerForMangledID:]", 1750);
    v6 = brc_default_log(1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412802;
      v10 = v4;
      v11 = 2112;
      v12 = dCopy;
      v13 = 2112;
      v14 = v5;
      _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Found plistURL: %@ for mangledID: %@%@", &v9, 0x20u);
    }

    if (v4)
    {
      v7 = [BRContainer containerInRepositoryURL:v4 createIfMissing:1 error:0];
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

+ (BOOL)versionOfBundle:(id)bundle changedFromVersion:(id)version
{
  v27 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  versionCopy = version;
  if (!bundleCopy)
  {
    v8 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) versionOfBundle:changedFromVersion:]", 1767);
    v10 = brc_default_log(0, 0);
    if (os_log_type_enabled(v10, 0x90u))
    {
      +[BRContainer(BRInternalAdditions) versionOfBundle:changedFromVersion:];
    }

    goto LABEL_12;
  }

  infoDictionary = [bundleCopy infoDictionary];
  v8 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E695E500]];

  bundleIdentifier = [bundleCopy bundleIdentifier];
  v10 = bundleIdentifier;
  if (v8)
  {
    v11 = bundleIdentifier == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) versionOfBundle:changedFromVersion:]", 1775);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412802;
      v20 = v8;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1AE2A9000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] invalid version '%@' or identifier '%@'%@", &v19, 0x20u);
    }

LABEL_12:
    v14 = 0;
    goto LABEL_18;
  }

  v15 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) versionOfBundle:changedFromVersion:]", 1780);
  v16 = brc_default_log(1, 0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138413058;
    v20 = v10;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = versionCopy;
    v25 = 2112;
    v26 = v15;
    _os_log_debug_impl(&dword_1AE2A9000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] bundle %@ has version %@, minimum version is %@%@", &v19, 0x2Au);
  }

  if (versionCopy)
  {
    v14 = [versionCopy compare:v8 options:64] == -1;
  }

  else
  {
    v14 = 1;
  }

LABEL_18:

  return v14;
}

+ (BOOL)isDocumentScopePublicWithProperties:(id)properties mangledID:(id)d
{
  v4 = [self _isDocumentScopePublicAsNumberWithProperties:properties mangledID:d];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (void)forceRefreshContainers:(id)containers completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  containersCopy = containers;
  completionCopy = completion;
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(containersCopy, "count")}];
  v7 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = containersCopy;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);
        dispatch_group_enter(v7);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __70__BRContainer_BRInternalAdditions__forceRefreshContainers_completion___block_invoke;
        v23[3] = &unk_1E7A16648;
        v24 = v6;
        v25 = v13;
        v26 = v7;
        [v13 forceRefreshWithCompletion:v23];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create("force-refresh-container", v15);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__BRContainer_BRInternalAdditions__forceRefreshContainers_completion___block_invoke_2;
  block[3] = &unk_1E7A16670;
  v21 = v6;
  v22 = completionCopy;
  v17 = completionCopy;
  v18 = v6;
  dispatch_group_notify(v7, v16, block);
}

void __70__BRContainer_BRInternalAdditions__forceRefreshContainers_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) identifier];
    [v4 setObject:v6 forKeyedSubscript:v5];

    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __70__BRContainer_BRInternalAdditions__forceRefreshContainers_completion___block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *(a1 + 32);
    v7 = @"BRPartialErrorsByContainerIDKey";
    v8[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [v2 errorWithDomain:@"BRCloudDocsErrorDomain" code:21 userInfo:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

+ (void)postContainerListUpdateNotification
{
  if (!+[BRContainerCache hasDaemonicParts])
  {
    +[BRContainer(BRInternalAdditions) postContainerListUpdateNotification];
  }

  v2 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) postContainerListUpdateNotification]", 1824);
  v3 = brc_default_log(1, 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[BRContainer(BRInternalAdditions) postContainerListUpdateNotification];
  }

  if (postContainerListUpdateNotification_once != -1)
  {
    +[BRContainer(BRInternalAdditions) postContainerListUpdateNotification];
  }

  br_pacer_signal(postContainerListUpdateNotification_pacer);
}

void __71__BRContainer_BRInternalAdditions__postContainerListUpdateNotification__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("container-update", v0);

  v2 = postContainerListUpdateNotification_queue;
  postContainerListUpdateNotification_queue = v1;

  v3 = br_pacer_create("container-update", postContainerListUpdateNotification_queue, 1.0);
  v4 = postContainerListUpdateNotification_pacer;
  postContainerListUpdateNotification_pacer = v3;

  br_pacer_set_event_handler(postContainerListUpdateNotification_pacer, &__block_literal_global_448);
  v5 = postContainerListUpdateNotification_pacer;

  br_pacer_resume(v5);
}

void __71__BRContainer_BRInternalAdditions__postContainerListUpdateNotification__block_invoke_2()
{
  v1 = [@"BRContainerCacheDidChangeDistributedNotification" br_libnotifyPerUserNotificationName];
  v0 = v1;
  brc_notify_post([v1 UTF8String]);
}

+ (void)postContainerStatusChangeNotificationWithID:(id)d key:(id)key value:(id)value
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  keyCopy = key;
  valueCopy = value;
  v10 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) postContainerStatusChangeNotificationWithID:key:value:]", 1847);
  v11 = brc_default_log(1, 0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    *&buf[4] = dCopy;
    v18 = 2112;
    v19 = keyCopy;
    v20 = 2112;
    v21 = valueCopy;
    v22 = 2112;
    v23 = v10;
    _os_log_debug_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] broadcasting to framework clients container %@ change %@=%@%@", buf, 0x2Au);
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  if (valueCopy)
  {
    appLibraryOrZoneName = [dCopy appLibraryOrZoneName];
    v15[1] = keyCopy;
    v16[0] = appLibraryOrZoneName;
    v16[1] = valueCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

    [defaultCenter postNotificationName:BRContainerDidChangeStatusDistributedNotification object:0 userInfo:v14];
  }

  else
  {
    [BRContainer(BRInternalAdditions) postContainerStatusChangeNotificationWithID:buf key:? value:?];
    v14 = *buf;
  }
}

- (BOOL)_updateMetadataOnDiskWithProperties:(id)properties
{
  v31 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v18 = 0;
  v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:propertiesCopy format:200 options:0 error:&v18];
  v6 = v18;
  if (v6)
  {
    _pathForPlist = brc_bread_crumbs("[BRContainer(BRInternalAdditions) _updateMetadataOnDiskWithProperties:]", 1868);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      mangledID = self->_mangledID;
      *buf = 138412802;
      v20 = mangledID;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = _pathForPlist;
      _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] failed plist serialization for container %@: %@%@", buf, 0x20u);
    }

    v9 = 0;
  }

  else
  {
    _pathForPlist = [(BRContainer *)self _pathForPlist];
    if ([(BRMangledID *)self->_mangledID isCloudDocsMangledID])
    {
      [BRContainer(BRInternalAdditions) _updateMetadataOnDiskWithProperties:];
    }

    v9 = [v5 writeToFile:_pathForPlist atomically:1];
    if (v9)
    {
      v10 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) _updateMetadataOnDiskWithProperties:]", 1886);
      v11 = brc_default_log(1, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v16 = self->_mangledID;
        *buf = 138413570;
        v20 = propertiesCopy;
        v21 = 2112;
        v22 = v16;
        v23 = 2112;
        v24 = _pathForPlist;
        v25 = 2112;
        v26 = BRContainerFormatVersionNumberValue;
        v27 = 2112;
        v28 = BRContainerIconGeneratorVersionNumberValue;
        v29 = 2112;
        v30 = v10;
        _os_log_debug_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] wrote plist %@ for container %@ at '%@' {\n  formatVersion = %@,\n  iconGenerationVersion = %@\n}%@", buf, 0x3Eu);
      }

      [(BRContainer *)self _replaceDataRepresentationWithData:v5];
    }

    else
    {
      v12 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) _updateMetadataOnDiskWithProperties:]", 1878);
      v13 = brc_default_log(0, 0);
      if (os_log_type_enabled(v13, 0x90u))
      {
        v17 = self->_mangledID;
        *buf = 138412802;
        v20 = v17;
        v21 = 2112;
        v22 = _pathForPlist;
        v23 = 2112;
        v24 = v12;
        _os_log_error_impl(&dword_1AE2A9000, v13, 0x90u, "[ERROR] can't write metadata for container %@ at '%@'%@", buf, 0x20u);
      }
    }
  }

  return v9;
}

- (BOOL)updateMetadataWithExtractorProperties:(id)properties iconPaths:(id)paths bundleID:(id)d
{
  v137 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  pathsCopy = paths;
  dCopy = d;
  v104 = propertiesCopy;
  if (!propertiesCopy)
  {
    v88 = dCopy;
    [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:];
    dCopy = v88;
  }

  v105 = dCopy;
  if (!dCopy)
  {
    [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:];
  }

  memset(v124, 0, sizeof(v124));
  __brc_create_section(0, "[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1896, 0, v124);
  v9 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1896);
  v10 = brc_default_log(1, 0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    mangledID = self->_mangledID;
    *v134 = 134218754;
    *&v134[4] = v124[0];
    *&v134[12] = 2112;
    *&v134[14] = mangledID;
    *&v134[22] = 2112;
    v135 = v105;
    LOWORD(v136) = 2112;
    *(&v136 + 2) = v9;
    _os_log_debug_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Update metadata with extractor properties %@ for %@%@", v134, 0x2Au);
  }

  _containerRepositoryURL = [(BRContainer *)self _containerRepositoryURL];
  path = [_containerRepositoryURL path];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([v105 isEqualToString:@"com.apple.bird"])
  {
    v89 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1905);
    v90 = brc_default_log(0, 0);
    if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
    {
      [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:];
    }
  }

  *v134 = 0;
  *&v134[8] = v134;
  *&v134[16] = 0x3032000000;
  v135 = __Block_byref_object_copy__9;
  *&v136 = __Block_byref_object_dispose__9;
  *(&v136 + 1) = 0;
  v123[0] = MEMORY[0x1E69E9820];
  v123[1] = 3221225472;
  v123[2] = __93__BRContainer_BRInternalAdditions__updateMetadataWithExtractorProperties_iconPaths_bundleID___block_invoke;
  v123[3] = &unk_1E7A16698;
  v123[4] = self;
  v123[5] = v134;
  [(BRContainer *)self accessDataRepresentationInBlock:v123];
  v12 = 0;
  v100 = 0;
  v95 = 1;
  if (!v105)
  {
    goto LABEL_100;
  }

  v13 = *(*&v134[8] + 40);
  if (!v13)
  {
    goto LABEL_100;
  }

  if (pathsCopy)
  {
    v14 = [v13 objectForKeyedSubscript:@"BRContainerIcons"];
    if (v14)
    {
      v15 = [MEMORY[0x1E695DFA8] setWithArray:v14];
      allKeys = [pathsCopy allKeys];
      [v15 addObjectsFromArray:allKeys];

      allObjects = [v15 allObjects];
    }

    else
    {
      allObjects = [pathsCopy allKeys];
    }

    [*(*&v134[8] + 40) setObject:allObjects forKeyedSubscript:@"BRContainerIcons"];

    v13 = *(*&v134[8] + 40);
  }

  v18 = [v13 objectForKeyedSubscript:v105];

  if (v18)
  {
    v19 = MEMORY[0x1E695DFD8];
    v20 = [*(*&v134[8] + 40) objectForKeyedSubscript:v105];
    allKeys2 = [v20 allKeys];
    v22 = [v19 setWithArray:allKeys2];

    v23 = MEMORY[0x1E695DFD8];
    allKeys3 = [v104 allKeys];
    v94 = [v23 setWithArray:allKeys3];

    if (([v22 isEqualToSet:v94] & 1) == 0)
    {
      v25 = [v22 setByAddingObject:@"BRContainerIconGeneratorVersionNumber"];
      v26 = [v25 isEqualToSet:v94];

      if (!v26)
      {
        goto LABEL_71;
      }
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v27 = [*(*&v134[8] + 40) objectForKeyedSubscript:v105];
    v28 = 0;
    v29 = [v27 countByEnumeratingWithState:&v119 objects:v133 count:16];
    if (v29)
    {
      v30 = *v120;
      v31 = 1;
      do
      {
        v32 = 0;
        do
        {
          if (*v120 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v119 + 1) + 8 * v32);
          v34 = [*(*&v134[8] + 40) objectForKeyedSubscript:v105];
          v35 = [v34 objectForKeyedSubscript:v33];

          v36 = [v104 objectForKeyedSubscript:v33];
          if (([v33 isEqual:@"BRContainerVersionNumber"] & 1) != 0 || objc_msgSend(v33, "isEqual:", @"BRContainerIconGeneratorVersionNumber"))
          {
            v37 = [v36 isEqual:v35];
            v31 &= v37;
            v28 |= v37 ^ 1;
          }

          else if (v35 && !v36 || v36 && (!v35 || ([v36 isEqual:v35] & 1) == 0))
          {

            v31 = 0;
            v28 = 0;
            goto LABEL_39;
          }

          ++v32;
        }

        while (v29 != v32);
        v38 = [v27 countByEnumeratingWithState:&v119 objects:v133 count:16];
        v29 = v38;
      }

      while (v38);
    }

    else
    {
      v31 = 1;
    }

LABEL_39:

    if (((v31 | v28) & 1) != 0 && ((v31 ^ v28) & 1) == 0)
    {
      v91 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1973);
      v92 = brc_default_log(0, 0);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
        [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:];
      }
    }

    if (v31)
    {
      v39 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1976);
      v40 = brc_default_log(1, 0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:];
      }

      v100 = 0;
      v12 = 0;
      v95 = 1;
LABEL_98:

      goto LABEL_100;
    }

    if ((v28 & 1) == 0)
    {
LABEL_71:
      v95 = 1;
LABEL_77:

      goto LABEL_78;
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    obj = pathsCopy;
    v41 = [obj countByEnumeratingWithState:&v115 objects:v132 count:16];
    if (v41)
    {
      v43 = 0;
      v101 = *v116;
      v96 = 1;
      v97 = v41;
      *&v42 = 138412802;
      v93 = v42;
LABEL_48:
      v44 = 0;
      while (1)
      {
        if (*v116 != v101)
        {
          objc_enumerationMutation(obj);
        }

        v45 = *(*(&v115 + 1) + 8 * v44);
        v46 = objc_autoreleasePoolPush();
        v47 = [obj objectForKeyedSubscript:v45];
        v114 = v43;
        v48 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v47 options:1 error:&v114];
        v49 = v114;

        if (v48 && v49 == 0)
        {
          v51 = [(BRContainer *)self _pathForIconName:v45];
          v113 = 0;
          v52 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v51 options:1 error:&v113];
          v54 = v113;
          if (!v52 || v54)
          {
            v43 = v54;
            v55 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1994);
            v56 = brc_default_log(1, 0);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v93;
              v126 = v51;
              v127 = 2112;
              v128 = v43;
              v129 = 2112;
              v130[0] = v55;
              _os_log_impl(&dword_1AE2A9000, v56, OS_LOG_TYPE_DEFAULT, "[WARNING] can't read content of file at '%@'; %@%@", buf, 0x20u);
            }

            v53 = 0;
          }

          else
          {
            v43 = 0;
            v53 = [v48 isEqualToData:v52];
            v96 &= v53;
          }
        }

        else
        {
          v51 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 1987);
          v52 = brc_default_log(1, 0);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v93;
            v126 = v47;
            v127 = 2112;
            v128 = v49;
            v129 = 2112;
            v130[0] = v51;
            _os_log_impl(&dword_1AE2A9000, v52, OS_LOG_TYPE_DEFAULT, "[WARNING] can't read content of file at '%@'; %@%@", buf, 0x20u);
          }

          v53 = 0;
          v43 = v49;
        }

        objc_autoreleasePoolPop(v46);
        if (!v53)
        {
          break;
        }

        if (v97 == ++v44)
        {
          v97 = [obj countByEnumeratingWithState:&v115 objects:v132 count:16];
          if (v97)
          {
            goto LABEL_48;
          }

          break;
        }
      }

      if ((v96 & 1) == 0)
      {
        v57 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2009);
        v58 = brc_default_log(1, 0);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:];
        }

        v95 = 1;
LABEL_76:

        goto LABEL_77;
      }
    }

    else
    {
    }

    v57 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2006);
    v58 = brc_default_log(1, 0);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
    {
      [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:];
    }

    v95 = 0;
    goto LABEL_76;
  }

  v95 = 1;
LABEL_78:
  [*(*&v134[8] + 40) setObject:v104 forKeyedSubscript:{v105, v93}];
  v112 = 0;
  v60 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v112];
  v100 = v112;
  if ((v60 & 1) == 0)
  {
    v61 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2018);
    v62 = brc_default_log(0, 0);
    if (os_log_type_enabled(v62, 0x90u))
    {
      *buf = 138412802;
      v126 = path;
      v127 = 2112;
      v128 = v100;
      v129 = 2112;
      v130[0] = v61;
      _os_log_error_impl(&dword_1AE2A9000, v62, 0x90u, "[ERROR] unable to create directory at '%@'; %@%@", buf, 0x20u);
    }
  }

  if ([(BRContainer *)self _updateMetadataOnDiskWithProperties:*(*&v134[8] + 40)])
  {
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v22 = pathsCopy;
    v63 = [v22 countByEnumeratingWithState:&v108 objects:v131 count:16];
    if (v63)
    {
      v64 = *v109;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v109 != v64)
          {
            objc_enumerationMutation(v22);
          }

          v66 = *(*(&v108 + 1) + 8 * i);
          v67 = [v22 objectForKeyedSubscript:v66];
          v68 = [(BRContainer *)self _pathForIconName:v66];
          v69 = v67;
          fileSystemRepresentation = [v67 fileSystemRepresentation];
          v71 = v68;
          fileSystemRepresentation2 = [v68 fileSystemRepresentation];
          rename(fileSystemRepresentation, fileSystemRepresentation2, v73);
          if (v74 < 0)
          {
            v77 = *__error();
            v78 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2029);
            v79 = brc_default_log(0, 0);
            if (os_log_type_enabled(v79, 0x90u))
            {
              *buf = 138413058;
              v126 = v67;
              v127 = 2112;
              v128 = v68;
              v129 = 1024;
              LODWORD(v130[0]) = v77;
              WORD2(v130[0]) = 2112;
              *(v130 + 6) = v78;
              _os_log_error_impl(&dword_1AE2A9000, v79, 0x90u, "[ERROR] failed renaming from '%@' to '%@' %{errno}d%@", buf, 0x26u);
            }

            *__error() = v77;
          }

          else
          {
            v75 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2031);
            v76 = brc_default_log(1, 0);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v126 = v67;
              v127 = 2112;
              v128 = v68;
              v129 = 2112;
              v130[0] = v75;
              _os_log_debug_impl(&dword_1AE2A9000, v76, OS_LOG_TYPE_DEBUG, "[DEBUG] renamed icon from '%@' to '%@'%@", buf, 0x20u);
            }
          }
        }

        v63 = [v22 countByEnumeratingWithState:&v108 objects:v131 count:16];
      }

      while (v63);
    }

    v12 = 1;
    goto LABEL_98;
  }

  v12 = 0;
LABEL_100:
  allValues = [pathsCopy allValues];
  firstObject = [allValues firstObject];
  stringByDeletingLastPathComponent = [firstObject stringByDeletingLastPathComponent];

  if (stringByDeletingLastPathComponent)
  {
    v107 = v100;
    v83 = [defaultManager removeItemAtPath:stringByDeletingLastPathComponent error:&v107];
    v84 = v107;

    if ((v83 & 1) == 0)
    {
      v85 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2041);
      v86 = brc_default_log(1, 0);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v126 = path;
        v127 = 2112;
        v128 = v84;
        v129 = 2112;
        v130[0] = v85;
        _os_log_impl(&dword_1AE2A9000, v86, OS_LOG_TYPE_DEFAULT, "[WARNING] failed removing temporary path at '%@'; %@%@", buf, 0x20u);
      }

      goto LABEL_107;
    }
  }

  else
  {
    v84 = v100;
  }

  v85 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]", 2043);
  v86 = brc_default_log(1, 0);
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
  {
    [BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:];
  }

LABEL_107:

  _Block_object_dispose(v134, 8);
  __brc_leave_section(v124);

  return v95 & v12;
}

void __93__BRContainer_BRInternalAdditions__updateMetadataWithExtractorProperties_iconPaths_bundleID___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v19 = 0;
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:2 format:0 error:&v19];
    v5 = v19;
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v8 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]_block_invoke", 1915);
      v9 = brc_default_log(1, 0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v3 length];
        v18 = *(*(a1 + 32) + 8);
        *buf = 134218754;
        v21 = v17;
        v22 = 2112;
        v23 = v18;
        v24 = 2112;
        v25 = v5;
        v26 = 2112;
        v27 = v8;
        _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] failed parsing %lu-byte plist for container %@: %@%@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v10 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]_block_invoke", 1922);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v3 length];
      v13 = *(*(a1 + 32) + 8);
      *buf = 134218498;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v10;
      _os_log_debug_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] read %lu-byte plist for container %@%@", buf, 0x20u);
    }
  }

  else
  {
    v14 = [MEMORY[0x1E695DF90] dictionary];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v10 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithExtractorProperties:iconPaths:bundleID:]_block_invoke", 1920);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __93__BRContainer_BRInternalAdditions__updateMetadataWithExtractorProperties_iconPaths_bundleID___block_invoke_cold_1();
    }
  }
}

- (BOOL)updateMetadataWithRecordData:(id)data iconPaths:(id)paths
{
  v62 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  pathsCopy = paths;
  v45 = dataCopy;
  if (!dataCopy)
  {
    [BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:];
  }

  memset(v54, 0, sizeof(v54));
  __brc_create_section(0, "[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2052, 0, v54);
  v7 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2052);
  v8 = brc_default_log(1, 0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    mangledID = self->_mangledID;
    *buf = 134218498;
    v56 = v54[0];
    v57 = 2112;
    v58 = mangledID;
    v59 = 2112;
    *v60 = v7;
    _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Update metadata with record data %@%@", buf, 0x20u);
  }

  _containerRepositoryURL = [(BRContainer *)self _containerRepositoryURL];
  path = [_containerRepositoryURL path];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v53 = 0;
  LOBYTE(_containerRepositoryURL) = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v53];
  v42 = defaultManager;
  v44 = v53;
  if ((_containerRepositoryURL & 1) == 0)
  {
    v11 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2060);
    v12 = brc_default_log(0, 0);
    if (os_log_type_enabled(v12, 0x90u))
    {
      *buf = 138412802;
      v56 = path;
      v57 = 2112;
      v58 = v44;
      v59 = 2112;
      *v60 = v11;
      _os_log_error_impl(&dword_1AE2A9000, v12, 0x90u, "[ERROR] unable to create directory at '%@'; %@%@", buf, 0x20u);
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v13 = pathsCopy;
  v14 = [v13 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v14)
  {
    v15 = *v50;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        v18 = [v13 objectForKeyedSubscript:{v17, v42}];
        v19 = [(BRContainer *)self _pathForIconName:v17];
        v20 = v18;
        fileSystemRepresentation = [v18 fileSystemRepresentation];
        v22 = v19;
        fileSystemRepresentation2 = [(BRMangledID *)v19 fileSystemRepresentation];
        rename(fileSystemRepresentation, fileSystemRepresentation2, v24);
        if (v25 < 0)
        {
          v28 = *__error();
          v29 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2068);
          v30 = brc_default_log(0, 0);
          if (os_log_type_enabled(v30, 0x90u))
          {
            *buf = 138413058;
            v56 = v18;
            v57 = 2112;
            v58 = v19;
            v59 = 1024;
            *v60 = v28;
            *&v60[4] = 2112;
            *&v60[6] = v29;
            _os_log_error_impl(&dword_1AE2A9000, v30, 0x90u, "[ERROR] failed renaming from '%@' to '%@' %{errno}d%@", buf, 0x26u);
          }

          *__error() = v28;
        }

        else
        {
          v26 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2070);
          v27 = brc_default_log(1, 0);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v56 = v18;
            v57 = 2112;
            v58 = v19;
            v59 = 2112;
            *v60 = v26;
            _os_log_debug_impl(&dword_1AE2A9000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] renamed icon from '%@' to '%@'%@", buf, 0x20u);
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v14);
  }

  v48 = 0;
  v31 = [MEMORY[0x1E696AE40] propertyListWithData:v45 options:2 format:0 error:&v48];
  v32 = v48;

  if (!v31)
  {
    v33 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2076);
    v34 = brc_default_log(1, 0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v40 = [v45 length];
      v41 = self->_mangledID;
      *buf = 134218754;
      v56 = v40;
      v57 = 2112;
      v58 = v41;
      v59 = 2112;
      *v60 = v32;
      *&v60[8] = 2112;
      *&v60[10] = v33;
      _os_log_debug_impl(&dword_1AE2A9000, v34, OS_LOG_TYPE_DEBUG, "[DEBUG] failed parsing %lu-byte plist for container %@: %@%@", buf, 0x2Au);
    }
  }

  if (!v13)
  {
    [v31 removeObjectForKey:@"BRContainerIcons"];
    v35 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:]", 2086);
    v36 = brc_default_log(1, 0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [BRContainer(BRInternalAdditions) updateMetadataWithRecordData:iconPaths:];
    }
  }

  v37 = [(BRContainer *)self _updateMetadataOnDiskWithProperties:v31, v42];

  __brc_leave_section(v54);
  return v37;
}

+ (void)_generateiOSIconsForMangledID:(id)d usingBundle:(__CFBundle *)bundle generatedIcons:(id)icons
{
  v152 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iconsCopy = icons;
  memset(v136, 0, sizeof(v136));
  __brc_create_section(0, "+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2186, 0, v136);
  v6 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2186);
  v7 = brc_default_log(1, 0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    +[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:];
  }

  v99 = CFBundleGetInfoDictionary(bundle);
  v8 = [v99 objectForKeyedSubscript:@"CFBundleIcons"];
  v9 = [v8 objectForKeyedSubscript:@"CFBundlePrimaryIcon"];
  v101 = [v9 objectForKeyedSubscript:@"CFBundleIconFiles"];

  if (![v101 count])
  {
    v10 = [v99 objectForKeyedSubscript:@"CFBundleIconFiles"];

    if (![v10 count])
    {
      v93 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2202);
      v94 = brc_default_log(1, 0);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
      {
        +[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:];
      }

      goto LABEL_98;
    }

    v101 = v10;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = CFBundleCopyResourcesDirectoryURL(bundle);
  path = [(__CFURL *)v11 path];

  v135 = 0;
  v12 = [defaultManager contentsOfDirectoryAtPath:path error:&v135];
  v105 = v135;
  v118 = v12;
  if (![v12 count])
  {
    v119 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2214);
    v91 = brc_default_log(1, 0);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v138 = path;
      v139 = 2112;
      v140 = v105;
      v141 = 2112;
      v142 = v119;
      _os_log_impl(&dword_1AE2A9000, v91, OS_LOG_TYPE_DEFAULT, "[WARNING] unable to list contents of directory at '%@'; %@%@", buf, 0x20u);
    }

    goto LABEL_97;
  }

  v119 = [MEMORY[0x1E695DFA8] set];
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v13 = v101;
  v14 = [v13 countByEnumeratingWithState:&v131 objects:v151 count:16];
  if (v14)
  {
    v15 = *v132;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v132 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v131 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self BEGINSWITH %@ AND self ENDSWITH[c] '.png'", v17];
        v20 = [v118 filteredArrayUsingPredicate:v19];
        [v119 addObjectsFromArray:v20];

        objc_autoreleasePoolPop(v18);
      }

      v14 = [v13 countByEnumeratingWithState:&v131 objects:v151 count:16];
    }

    while (v14);
  }

  if (![v119 count])
  {
    v92 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2231);
    brc_default_log(1, 0);
    path2 = v112 = v92;
    if (os_log_type_enabled(path2, OS_LOG_TYPE_DEBUG))
    {
      +[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:];
    }

    goto LABEL_96;
  }

  v112 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSObject count](v119, "count")}];
  v130 = 0u;
  v128 = 0u;
  v129 = 0u;
  v127 = 0u;
  obj = v119;
  v21 = [obj countByEnumeratingWithState:&v127 objects:v150 count:16];
  if (!v21)
  {
    goto LABEL_39;
  }

  v113 = *v128;
  do
  {
    v22 = 0;
    context = v21;
    do
    {
      if (*v128 != v113)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v127 + 1) + 8 * v22);
      v24 = objc_autoreleasePoolPush();
      v25 = [path stringByAppendingPathComponent:v23];
      v26 = [MEMORY[0x1E695DFF8] fileURLWithPath:v25];
      v27 = v26;
      if (!v26)
      {
        v31 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2243);
        v34 = brc_default_log(0, 0);
        if (os_log_type_enabled(v34, 0x90u))
        {
          *buf = 138412546;
          v138 = v23;
          v139 = 2112;
          v140 = v31;
          v36 = v34;
          v37 = "[ERROR] can't find URL for resource %@%@";
          goto LABEL_29;
        }

LABEL_36:

        goto LABEL_37;
      }

      v28 = softLinkCGImageSourceCreateWithURL(v26, 0);
      if (!v28)
      {
        v31 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2250);
        v34 = brc_default_log(0, 0);
        if (os_log_type_enabled(v34, 0x90u))
        {
          *buf = 138412546;
          v138 = v27;
          v139 = 2112;
          v140 = v31;
          v36 = v34;
          v37 = "[ERROR] can't create image source for %@%@";
LABEL_29:
          _os_log_error_impl(&dword_1AE2A9000, v36, 0x90u, v37, buf, 0x16u);
        }

        goto LABEL_36;
      }

      v29 = getkCGImageSourceShouldCache();
      v148[0] = v29;
      v149[0] = MEMORY[0x1E695E110];
      v30 = getkCGImageSourceSkipMetadata();
      v148[1] = v30;
      v149[1] = MEMORY[0x1E695E118];
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v149 forKeys:v148 count:2];

      ImageAtIndex = softLinkCGImageSourceCreateImageAtIndex(v28, 0, v31);
      v33 = ImageAtIndex;
      if (ImageAtIndex)
      {
        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:softLinkCGImageGetWidth(ImageAtIndex)];
        if ([v34 integerValue]<= 0)
        {
          v40 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2267);
          v41 = brc_default_log(0, 0);
          if (os_log_type_enabled(v41, 0x90u))
          {
            *buf = 138412546;
            v138 = v27;
            v139 = 2112;
            v140 = v40;
            _os_log_error_impl(&dword_1AE2A9000, v41, 0x90u, "[ERROR] can't use image with a width smaller than 1; %@%@", buf, 0x16u);
          }

          CFRelease(v33);
          CFRelease(v28);
        }

        else
        {
          v146[0] = @"BRIconURL";
          v146[1] = @"BRIconWidth";
          v147[0] = v27;
          v147[1] = v34;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:v146 count:2];
          [v112 insertObject:v35 atIndex:[v112 indexOfObject:v35 inSortedRange:0 options:[v112 count] usingComparator:1024, &__block_literal_global_465]];
          CFRelease(v33);
          CFRelease(v28);
        }

        goto LABEL_36;
      }

      v38 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2259);
      v39 = brc_default_log(0, 0);
      if (os_log_type_enabled(v39, 0x90u))
      {
        *buf = 138412546;
        v138 = v27;
        v139 = 2112;
        v140 = v38;
        _os_log_error_impl(&dword_1AE2A9000, v39, 0x90u, "[ERROR] can't create image for %@%@", buf, 0x16u);
      }

      CFRelease(v28);
LABEL_37:

      objc_autoreleasePoolPop(v24);
      v22 = v22 + 1;
    }

    while (context != v22);
    v21 = [obj countByEnumeratingWithState:&v127 objects:v150 count:16];
  }

  while (v21);
LABEL_39:

  if ([v112 count])
  {
    v42 = [self _containerRepositoryURLForMangledID:dCopy];
    path2 = [v42 path];

    v126 = v105;
    v43 = [defaultManager createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v126];
    v44 = v126;

    if (v43)
    {
      v125 = v44;
      v104 = [defaultManager brc_createTemporarySubdirectoryOfItem:path2 withTemplate:@".XXXXXX" error:&v125];
      v45 = v125;

      if (v104)
      {
        log = BRContainerIconCKAssetKeys(v46);
        v95 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self ENDSWITH %@", @"iOS"];
        [log filteredSetUsingPredicate:?];
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        bundlea = v122 = 0u;
        v47 = [(__CFBundle *)bundlea countByEnumeratingWithState:&v121 objects:v145 count:16];
        if (!v47)
        {
          goto LABEL_77;
        }

        v109 = *v122;
        while (1)
        {
          v48 = 0;
          obja = v47;
          do
          {
            if (*v122 != v109)
            {
              objc_enumerationMutation(bundlea);
            }

            v49 = *(*(&v121 + 1) + 8 * v48);
            contexta = objc_autoreleasePoolPush();
            v50 = BRContainerIconNameForCKAssetKey(v49);
            if (v50)
            {
              v51 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2322);
              v52 = brc_default_log(1, 0);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v138 = v50;
                v139 = 2112;
                v140 = v51;
                _os_log_debug_impl(&dword_1AE2A9000, v52, OS_LOG_TYPE_DEBUG, "[DEBUG] generating %@%@", buf, 0x16u);
              }

              v53 = [@"AppIconMask" stringByAppendingString:v50];
              mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
              v55 = [mainBundle pathForResource:v53 ofType:@"png"];

              v114 = [(objc_class *)getUIImageClass() imageWithContentsOfFile:v55];
              if (v114)
              {
                v56 = BRContainerIconSizeForName(v50);
                v58 = v57;
                v59 = [MEMORY[0x1E696AD98] numberWithInteger:v56];
                v60 = [v112 indexOfObject:v59 inSortedRange:0 options:[v112 count] usingComparator:1280, &__block_literal_global_478];

                v61 = [v112 objectAtIndexedSubscript:v60 - (v60 == [v112 count])];
                UIImageClass = getUIImageClass();
                v63 = [v61 objectForKeyedSubscript:@"BRIconURL"];
                path3 = [v63 path];
                v65 = [(objc_class *)UIImageClass imageWithContentsOfFile:path3];

                if (!v65)
                {
                  v73 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2385);
                  v74 = brc_default_log(0, 0);
                  if (os_log_type_enabled(v74, 0x90u))
                  {
                    v79 = [v61 objectForKeyedSubscript:@"BRIconURL"];
                    *buf = 138412546;
                    v138 = v79;
                    v139 = 2112;
                    v140 = v73;
                    _os_log_error_impl(&dword_1AE2A9000, v74, 0x90u, "[ERROR] unable to create an image with the contents of %@.%@", buf, 0x16u);
                  }

                  goto LABEL_73;
                }

                v66 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2390);
                v67 = brc_default_log(1, 0);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                {
                  [v65 size];
                  v83 = v82;
                  [v65 scale];
                  v85 = v84;
                  [v65 size];
                  v87 = v86;
                  [v65 scale];
                  *buf = 134218498;
                  v138 = (v83 * v85);
                  v139 = 2048;
                  v140 = (v87 * v88);
                  v141 = 2112;
                  v142 = v66;
                  _os_log_debug_impl(&dword_1AE2A9000, v67, OS_LOG_TYPE_DEBUG, "[DEBUG] best candidate has a size of {%ld, %ld}%@", buf, 0x20u);
                }

                v68 = softLinkUIGraphicsBeginImageContextWithOptions(0, v56, v58, 1.0);
                CurrentContext = softLinkUIGraphicsGetCurrentContext(v68);
                v70 = v114;
                cGImage = [v114 CGImage];
                softLinkCGContextClipToMask(CurrentContext, cGImage, 0.0, 0.0, v56, v58);
                v72 = [v65 drawInRect:{0.0, 0.0, v56, v58}];
                v73 = softLinkUIGraphicsGetImageFromCurrentImageContext(v72);

                softLinkUIGraphicsEndImageContext();
                v74 = softLinkUIImagePNGRepresentation(v73);
                if (v74)
                {
                  v75 = [v50 stringByAppendingPathExtension:@"png"];
                  v76 = [v104 stringByAppendingPathComponent:v75];

                  v120 = v45;
                  LOBYTE(v75) = [v74 writeToFile:v76 options:1 error:&v120];
                  v106 = v120;

                  if (v75)
                  {
                    v77 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2406);
                    v78 = brc_default_log(1, 0);
                    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412802;
                      v138 = v50;
                      v139 = 2112;
                      v140 = v76;
                      v141 = 2112;
                      v142 = v77;
                      _os_log_debug_impl(&dword_1AE2A9000, v78, OS_LOG_TYPE_DEBUG, "[DEBUG] wrote icon data for '%@' to '%@'%@", buf, 0x20u);
                    }

                    [iconsCopy setObject:v76 forKeyedSubscript:v50];
LABEL_72:

                    v45 = v106;
LABEL_73:

LABEL_74:
                    goto LABEL_75;
                  }

                  v80 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2404);
                  v81 = brc_default_log(0, 0);
                  if (os_log_type_enabled(v81, 0x90u))
                  {
                    *buf = 138413058;
                    v138 = v50;
                    v139 = 2112;
                    v140 = v76;
                    v141 = 2112;
                    v142 = v106;
                    v143 = 2112;
                    v144 = v80;
                    _os_log_error_impl(&dword_1AE2A9000, v81, 0x90u, "[ERROR] failed writing icon data for '%@' to '%@', error: '%@'%@", buf, 0x2Au);
                  }
                }

                else
                {
                  v76 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2410);
                  v80 = brc_default_log(1, 0);
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v138 = v73;
                    v139 = 2112;
                    v140 = v76;
                    _os_log_impl(&dword_1AE2A9000, v80, OS_LOG_TYPE_DEFAULT, "[WARNING] unable to compute the PNG representation of %@%@", buf, 0x16u);
                  }

                  v106 = v45;
                }

                goto LABEL_72;
              }

              v61 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2328);
              v73 = brc_default_log(1, 0);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v138 = v53;
                v139 = 2112;
                v140 = v61;
                _os_log_debug_impl(&dword_1AE2A9000, v73, OS_LOG_TYPE_DEBUG, "[DEBUG] unable to find icon mask for %@%@", buf, 0x16u);
              }

              goto LABEL_74;
            }

            v53 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2319);
            v55 = brc_default_log(1, 0);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v138 = v49;
              v139 = 2112;
              v140 = v53;
              _os_log_debug_impl(&dword_1AE2A9000, v55, OS_LOG_TYPE_DEBUG, "[DEBUG] unable to retrieve icon name from asset key '%@'%@", buf, 0x16u);
            }

LABEL_75:

            objc_autoreleasePoolPop(contexta);
            v48 = v48 + 1;
          }

          while (obja != v48);
          v47 = [(__CFBundle *)bundlea countByEnumeratingWithState:&v121 objects:v145 count:16];
          if (!v47)
          {
LABEL_77:

            v89 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2413);
            v90 = brc_default_log(1, 0);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              +[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:];
            }

            goto LABEL_93;
          }
        }
      }

      log = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2308);
      v95 = brc_default_log(0, 0);
      if (os_log_type_enabled(v95, 0x90u))
      {
        *buf = 138412802;
        v138 = path2;
        v139 = 2112;
        v140 = v45;
        v141 = 2112;
        v142 = log;
        _os_log_error_impl(&dword_1AE2A9000, v95, 0x90u, "[ERROR] unable to create directory at '%@.XXXXXX'; %@%@", buf, 0x20u);
      }

LABEL_93:

      v44 = v45;
    }

    else
    {
      v104 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2302);
      log = brc_default_log(0, 0);
      if (os_log_type_enabled(log, 0x90u))
      {
        *buf = 138412802;
        v138 = path2;
        v139 = 2112;
        v140 = v44;
        v141 = 2112;
        v142 = v104;
        _os_log_error_impl(&dword_1AE2A9000, log, 0x90u, "[ERROR] unable to create directory at '%@'; %@%@", buf, 0x20u);
      }
    }

    v105 = v44;
  }

  else
  {
    path2 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:]", 2295);
    v104 = brc_default_log(0, 0);
    if (os_log_type_enabled(v104, 0x90u))
    {
      +[BRContainer(BRInternalAdditions) _generateiOSIconsForMangledID:usingBundle:generatedIcons:];
    }
  }

LABEL_96:
  v91 = v112;
LABEL_97:

LABEL_98:
  __brc_leave_section(v136);
}

uint64_t __93__BRContainer_BRInternalAdditions___generateiOSIconsForMangledID_usingBundle_generatedIcons___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"BRIconWidth"];
  v6 = [v5 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"BRIconWidth"];

  v8 = [v7 integerValue];
  if (v6 < v8)
  {
    return -1;
  }

  else
  {
    return v6 != v8;
  }
}

uint64_t __93__BRContainer_BRInternalAdditions___generateiOSIconsForMangledID_usingBundle_generatedIcons___block_invoke_475(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v4 integerValue];
    v8 = [v6 objectForKeyedSubscript:@"BRIconWidth"];

    v9 = [v8 integerValue];
  }

  else
  {
    v10 = [v4 objectForKeyedSubscript:@"BRIconWidth"];
    v7 = [v10 integerValue];

    v9 = [v5 integerValue];
  }

  if (v7 < v9)
  {
    v11 = -1;
  }

  else
  {
    v11 = v7 != v9;
  }

  return v11;
}

+ (id)propertiesForMangledID:(id)d usingBundle:(__CFBundle *)bundle minimumBundleVersion:(id)version bundleIcons:(id *)icons
{
  v100 = *MEMORY[0x1E69E9840];
  dCopy = d;
  versionCopy = version;
  if (bundle)
  {
    v12 = CFBundleGetInfoDictionary(bundle);
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695E500]];
    v81 = v12;
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
    v15 = v14;
    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v17 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) propertiesForMangledID:usingBundle:minimumBundleVersion:bundleIcons:]", 2433);
      v18 = brc_default_log(1, 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *&buf[4] = v15;
        v94 = 2112;
        v95 = v13;
        v96 = 2112;
        v97 = v17;
        _os_log_impl(&dword_1AE2A9000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] invalid version %@ or identifier %@%@", buf, 0x20u);
      }

      v19 = 0;
    }

    else
    {
      selfCopy = self;
      v20 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) propertiesForMangledID:usingBundle:minimumBundleVersion:bundleIcons:]", 2440);
      v21 = brc_default_log(1, 0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        *&buf[4] = v15;
        v94 = 2112;
        v95 = v13;
        v96 = 2112;
        v97 = versionCopy;
        v98 = 2112;
        v99 = v20;
        _os_log_debug_impl(&dword_1AE2A9000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] bundle %@ has version %@, minimum version is %@%@", buf, 0x2Au);
      }

      if (versionCopy && [versionCopy compare:v13 options:64] != -1)
      {
        v19 = 0;
LABEL_76:

        goto LABEL_77;
      }

      v23 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) propertiesForMangledID:usingBundle:minimumBundleVersion:bundleIcons:]", 2446);
      v24 = brc_default_log(1, 0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        *&buf[4] = v15;
        v94 = 2112;
        v95 = dCopy;
        v96 = 2112;
        v97 = v23;
        _os_log_debug_impl(&dword_1AE2A9000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] metadata for %@ client of %@ is out of date%@", buf, 0x20u);
      }

      v25 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:9];
      [v25 setObject:v13 forKeyedSubscript:@"BRContainerVersionNumber"];
      [v25 setObject:BRContainerFormatVersionNumberValue forKeyedSubscript:@"BRContainerFormatVersionNumber"];
      v26 = [v81 objectForKeyedSubscript:*MEMORY[0x1E695E128]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v25 setObject:v26 forKeyedSubscript:@"BRContainerDocumentTypes"];
      }

      v27 = [v81 objectForKeyedSubscript:@"UTExportedTypeDeclarations"];
      objc_opt_class();
      v80 = v27;
      if (objc_opt_isKindOfClass())
      {
        [v25 setObject:v27 forKeyedSubscript:@"BRContainerExportedTypes"];
      }

      v28 = [v81 objectForKeyedSubscript:@"UTImportedTypeDeclarations"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v25 setObject:v28 forKeyedSubscript:@"BRContainerImportedTypes"];
      }

      v76 = v28;
      v79 = v25;
      v29 = [v81 objectForKeyedSubscript:@"NSUbiquitousContainers"];
      if (v29)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v29 = 0;
        }
      }

      appLibraryOrZoneName = [dCopy appLibraryOrZoneName];
      v75 = v29;
      v31 = [v29 objectForKeyedSubscript:appLibraryOrZoneName];

      bundleCopy = bundle;
      if (v31)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v31 = 0;
        }
      }

      v32 = [v31 objectForKeyedSubscript:@"NSUbiquitousContainerName"];
      objc_opt_class();
      v77 = v26;
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v32 length])
      {
        v33 = @"NSUbiquitousContainerName";
      }

      else
      {
        iconsCopy = icons;
        v34 = *MEMORY[0x1E695E4F8];
        v92[0] = *MEMORY[0x1E695E120];
        v92[1] = v34;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v35 = v89 = 0u;
        v36 = [v35 countByEnumeratingWithState:&v86 objects:v91 count:16];
        if (v36)
        {
          v37 = v36;
          v70 = v31;
          v65 = v15;
          v67 = v13;
          v38 = *v87;
          while (2)
          {
            v39 = 0;
            v40 = v32;
            do
            {
              if (*v87 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v41 = *(*(&v86 + 1) + 8 * v39);
              v32 = [v81 objectForKeyedSubscript:v41];

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v32 length])
              {
                v33 = v41;
                goto LABEL_46;
              }

              ++v39;
              v40 = v32;
            }

            while (v37 != v39);
            v37 = [v35 countByEnumeratingWithState:&v86 objects:v91 count:16];
            if (v37)
            {
              continue;
            }

            break;
          }

          v33 = 0;
LABEL_46:
          v15 = v65;
          v13 = v67;
          v31 = v70;
        }

        else
        {
          v33 = 0;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v32 length])
        {
          v42 = [selfCopy _sanitizedContainerFallbackNameForMangledID:dCopy];

          v32 = v42;
        }

        icons = iconsCopy;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v32 length])
      {
        v19 = v79;
        [v79 setObject:v32 forKeyedSubscript:@"BRContainerName"];
        if (v33)
        {
          v71 = v31;
          iconsCopy2 = icons;
          v66 = v15;
          v68 = v13;
          v63 = versionCopy;
          v64 = dCopy;
          context = objc_autoreleasePoolPush();
          *buf = v33;
          v43 = CFSetCreate(*MEMORY[0x1E695E4A8], buf, 1, MEMORY[0x1E695E9F8]);
          v44 = _CFBundleCopyFilteredLocalizedStringsForAllLocalizations();
          CFRelease(v43);
          v45 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v44, "count")}];
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v46 = v44;
          v47 = [v46 countByEnumeratingWithState:&v82 objects:v90 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v83;
            do
            {
              for (i = 0; i != v48; ++i)
              {
                if (*v83 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = *(*(&v82 + 1) + 8 * i);
                v52 = [v46 objectForKeyedSubscript:v51];
                v53 = [v52 objectForKeyedSubscript:v33];
                if (v53)
                {
                  [v45 setObject:v53 forKeyedSubscript:v51];
                }
              }

              v48 = [v46 countByEnumeratingWithState:&v82 objects:v90 count:16];
            }

            while (v48);
          }

          v15 = v66;
          v19 = v79;
          if ([v45 count])
          {
            [v79 setObject:v45 forKeyedSubscript:@"BRContainerLocalizedNames"];
          }

          objc_autoreleasePoolPop(context);
          versionCopy = v63;
          dCopy = v64;
          v13 = v68;
          v31 = v71;
          icons = iconsCopy2;
        }
      }

      else
      {

        v33 = 0;
        v19 = v79;
      }

      v54 = [v31 objectForKeyedSubscript:@"NSUbiquitousContainerIsDocumentScopePublic"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v19 setObject:v54 forKeyedSubscript:@"BRContainerIsDocumentScopePublic"];
        bOOLValue = [v54 BOOLValue];
        if (icons)
        {
          if (bOOLValue)
          {
            v72 = v31;
            v56 = v15;
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            v58 = objc_autoreleasePoolPush();
            [selfCopy _generateiOSIconsForMangledID:dCopy usingBundle:bundleCopy generatedIcons:dictionary];
            v59 = v58;
            v19 = v79;
            objc_autoreleasePoolPop(v59);
            v60 = dictionary;
            *icons = dictionary;
            if ([v60 count])
            {
              [v79 setObject:BRContainerIconGeneratorVersionNumberValue forKeyedSubscript:@"BRContainerIconGeneratorVersionNumber"];
            }

            v15 = v56;
            v31 = v72;
          }
        }
      }

      v17 = v77;
      v18 = v80;
    }

    goto LABEL_76;
  }

  v81 = brc_bread_crumbs("+[BRContainer(BRInternalAdditions) propertiesForMangledID:usingBundle:minimumBundleVersion:bundleIcons:]", 2423);
  v13 = brc_default_log(0, 0);
  if (os_log_type_enabled(v13, 0x90u))
  {
    +[BRContainer(BRInternalAdditions) versionOfBundle:changedFromVersion:];
  }

  v19 = 0;
LABEL_77:

  return v19;
}

- (BOOL)containsExcludedDocumentsOnTheFSWithExcludedButPreservedFilename:(id)filename excludedButPreservedExtensions:(id)extensions andStampUploadedAppWithXattr:(BOOL)xattr
{
  xattrCopy = xattr;
  v60[1] = *MEMORY[0x1E69E9840];
  filenameCopy = filename;
  extensionsCopy = extensions;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  documentsURL = [(BRContainer *)self documentsURL];
  v43 = *MEMORY[0x1E695DBD8];
  v60[0] = *MEMORY[0x1E695DBD8];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
  v10 = [defaultManager enumeratorAtURL:documentsURL includingPropertiesForKeys:v9 options:2 errorHandler:0];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v50;
    v39 = *MEMORY[0x1E695DCD8];
    v15 = filenameCopy;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        v47 = 0;
        v48 = 0;
        v18 = [v17 getResourceValue:&v48 forKey:v43 error:&v47];
        v19 = v48;
        v20 = v47;
        if (v18 && [v19 BOOLValue])
        {
          if (xattrCopy)
          {
            lastPathComponent = [v17 lastPathComponent];
            br_pathExtension = [lastPathComponent br_pathExtension];
            v23 = [br_pathExtension isEqualToString:@"app"];

            if (v23)
            {
              v45 = 0;
              v46 = 0;
              v24 = [v17 getResourceValue:&v46 forKey:v39 error:&v45];
              v25 = v46;
              v26 = v45;

              if (v24)
              {
                if ([v25 BOOLValue])
                {
                  value = 7562617;
                  path = [v17 path];
                  v28 = setxattr([path fileSystemRepresentation], "com.apple.clouddocs.app-uploaded", &value, 4uLL, 0, 0);

                  if (v28 < 0)
                  {
                    v29 = *__error();
                    v38 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) containsExcludedDocumentsOnTheFSWithExcludedButPreservedFilename:excludedButPreservedExtensions:andStampUploadedAppWithXattr:]", 2594);
                    v30 = brc_default_log(0, 0);
                    if (os_log_type_enabled(v30, 0x90u))
                    {
                      path2 = [v17 path];
                      *buf = 138412802;
                      v54 = path2;
                      v55 = 1024;
                      v56 = v29;
                      v57 = 2112;
                      v58 = v38;
                      _os_log_error_impl(&dword_1AE2A9000, v30, 0x90u, "[ERROR] can't set uploaded xattr on %@ %{errno}d%@", buf, 0x1Cu);
                    }

                    *__error() = v29;
                  }
                }
              }

              v20 = v26;
            }

            v15 = filenameCopy;
          }
        }

        else
        {
          path3 = [v17 path];
          v32 = [path3 br_isExcludedButPreservedAtLogOutWithFilenames:v15 extensions:extensionsCopy];

          if (v32)
          {
            v35 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) containsExcludedDocumentsOnTheFSWithExcludedButPreservedFilename:excludedButPreservedExtensions:andStampUploadedAppWithXattr:]", 2605);
            v36 = brc_default_log(1, 0);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              [BRContainer(BRInternalAdditions) containsExcludedDocumentsOnTheFSWithExcludedButPreservedFilename:excludedButPreservedExtensions:andStampUploadedAppWithXattr:];
            }

            v34 = 1;
            goto LABEL_27;
          }

          [v11 skipDescendants];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v34 = 0;
  }

  else
  {
    v34 = 0;
    v15 = filenameCopy;
  }

LABEL_27:

  return v34;
}

- (BOOL)registerCurrentProcessAsPriorityHintWithError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  __brc_create_section(0, "[BRContainer(BRPriorityHinting) registerCurrentProcessAsPriorityHintWithError:]", 2977, 0, v20);
  v5 = brc_bread_crumbs("[BRContainer(BRPriorityHinting) registerCurrentProcessAsPriorityHintWithError:]", 2977);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13 = v20[0];
    identifier = [(BRContainer *)self identifier];
    *buf = 134218498;
    v22 = v13;
    v23 = 2112;
    v24 = identifier;
    v25 = 2112;
    v26 = v5;
    _os_log_debug_impl(&dword_1AE2A9000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx registering current process as a priority hint for %@%@", buf, 0x20u);
  }

  v7 = +[BRDaemonConnection defaultConnection];
  newSyncProxy = [v7 newSyncProxy];

  identifier2 = [(BRContainer *)self identifier];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __80__BRContainer_BRPriorityHinting__registerCurrentProcessAsPriorityHintWithError___block_invoke;
  v18 = &unk_1E7A16750;
  v10 = newSyncProxy;
  v19 = v10;
  [v10 getContainerURLForID:identifier2 reply:&v15];

  error = [v10 error];

  if (error && error)
  {
    *error = [v10 error];
  }

  __brc_leave_section(v20);
  return error == 0;
}

+ (void)unregisterCurrentProcessAsPriorityHint
{
  v2 = +[BRDaemonConnection defaultConnection];
  [v2 invalidate];
}

- (id)versionNumberForBundleIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    bundleIDVersions = [(BRContainer *)self bundleIDVersions];
    v6 = [bundleIDVersions objectForKeyedSubscript:identifierCopy];
    v7 = [v6 objectForKeyedSubscript:@"BRContainerFormatVersionNumber"];

    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) versionNumberForBundleIdentifier:]", 1568);
      v10 = brc_default_log(1, 0);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

        v12 = 0;
        goto LABEL_16;
      }

      objc_opt_class();
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_15();
      v23 = v9;
      v14 = v13;
      _os_log_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] failed retrieving format version for %@: unexpected kind of class (expected: NSNumber, actual: %@)%@", &v18, 0x20u);
    }

    else
    {
      intValue = [v7 intValue];
      if (intValue < [BRContainerFormatVersionNumberValue intValue])
      {
        v9 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) versionNumberForBundleIdentifier:]", 1572);
        v10 = brc_default_log(1, 0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v18 = 138413058;
          v19 = v7;
          v20 = 2112;
          v21 = BRContainerFormatVersionNumberValue;
          v22 = 2112;
          v23 = identifierCopy;
          v24 = 2112;
          v25 = v9;
          _os_log_debug_impl(&dword_1AE2A9000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] overwriting old plist from version %@ to %@ for %@%@", &v18, 0x2Au);
        }

        goto LABEL_15;
      }

      v11 = [bundleIDVersions objectForKeyedSubscript:identifierCopy];
      v9 = [v11 objectForKeyedSubscript:@"BRContainerVersionNumber"];

      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v9 = v9;
        v12 = v9;
LABEL_16:

        goto LABEL_17;
      }

      v10 = brc_bread_crumbs("[BRContainer(BRInternalAdditions) versionNumberForBundleIdentifier:]", 1579);
      v14 = brc_default_log(1, 0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        objc_opt_class();
        OUTLINED_FUNCTION_3_1();
        OUTLINED_FUNCTION_15();
        v23 = v10;
        v16 = v15;
        _os_log_impl(&dword_1AE2A9000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] failed retrieving  version for %@: unexpected kind of class (expected: NSString, actual: %@)%@", &v18, 0x20u);
      }
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (void)initWithMangledID:dataRepresentation:.cold.1()
{
  brc_bread_crumbs("[BRContainer initWithMangledID:dataRepresentation:]", 320);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v5, v6, "[CRIT] Assertion failed: mangledID%@", v7, v8, v9, v10);
  }
}

void __39__BRContainer_accessPropertiesInBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __55__BRContainer_forceRefreshAllContainersWithCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)_sanitizedContainerFallbackNameForMangledID:.cold.1()
{
  OUTLINED_FUNCTION_10_1();
  v3 = [v2 substringToIndex:1];
  v4 = [v3 uppercaseString];

  *v0 = [v1 stringByReplacingCharactersInRange:0 withString:{1, v4}];
}

void __83__BRContainer_BRFinderInternalAdditions__deleteAllContentsOnClientAndServer_error___block_invoke_cold_2(id *a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [*a1 documentsURL];
  v5 = [v4 path];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1AE2A9000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] this container has been moved to CloudDocs, unlinking the folder at %@%@", v6, 0x16u);
}

@end