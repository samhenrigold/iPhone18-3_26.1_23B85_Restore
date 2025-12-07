@interface SBHIconStateUnarchiver
+ (void)_getFolderDisplayName:(id *)name defaultDisplayName:(id *)displayName uniqueIdentifier:(id *)identifier forRepresentation:(id)representation iconSource:(id)source;
- (BOOL)_canAddIconDataSource:(id)source toIcon:(id)icon withGridSizeClass:(id)class;
- (BOOL)_listsAllowRotatedLayoutForFolderClass:(Class)class;
- (BOOL)shouldLeaveGapForMissingIconWithIdentifier:(id)identifier;
- (Class)_folderClassForFolderType:(id)type context:(id)context;
- (SBHIconGridSize)_listGridSizeForFolderClass:(Class)class;
- (SBHIconGridSize)_listGridSizeForTodayList;
- (SBHIconGridSize)_listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)class;
- (SBHIconStateUnarchiver)initWithArchive:(id)archive;
- (SBHIconStateUnarchiver)initWithArchive:(id)archive iconModel:(id)model;
- (double)ignoredListProperties;
- (id)_allowedGridSizeClassesForDock;
- (id)_allowedGridSizeClassesForFolderClass:(Class)class;
- (id)_allowedGridSizeClassesForTodayList;
- (id)_applicationIconFromRepresentation:(id)representation context:(id)context;
- (id)_batteryElementWithIdentifier:(id)identifier;
- (id)_customIconElementFromRepresentation:(id)representation context:(id)context;
- (id)_fileStackIconFromRepresentation:(id)representation context:(id)context;
- (id)_folderFromRepresentation:(id)representation withContext:(id)context;
- (id)_gridSizeClassSizes;
- (id)_iconFromRepresentation:(id)representation withContext:(id)context;
- (id)_listFromRepresentation:(id)representation properties:(id)properties identifier:(id)identifier context:(id)context overflow:(id)overflow;
- (id)_listRotatedLayoutClusterGridSizeClass;
- (id)_listWithIcons:(id)icons properties:(id)properties identifier:(id)identifier folder:(id)folder overflow:(id)overflow;
- (id)_newFolderIconForFolder:(id)folder;
- (id)_nodeFromRepresentation:(id)representation context:(id)context;
- (id)_rotatedGridSizeClassSizes;
- (id)_sanitizedFixedIconLocationsFromDictionary:(id)dictionary iconIdentifiers:(id)identifiers;
- (id)_widgetIconFromRepresentation:(id)representation context:(id)context;
- (id)customGridSizeClassDomain;
- (id)dockListProperties;
- (id)dockUtilitiesListProperties;
- (id)effectiveDelegate;
- (id)effectiveGridSizeClassDomain;
- (id)gridSizeClassForString:(id)string;
- (id)ignoredListProperties;
- (id)propertiesForFolderClass:(Class)class;
- (id)supportedGridSizeClassesForWidgetWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier;
- (id)todayListProperties;
- (id)unarchive;
- (int64_t)_listsFixedIconLocationBehaviorForFolderClass:(Class)class;
- (int64_t)_listsIconDisplacementBehaviorForFolderClass:(Class)class;
- (int64_t)_suggestionSourceFromRepresentation:(id)representation;
- (unint64_t)_listsIconLayoutBehaviorForFolderClass:(Class)class;
- (unint64_t)_maxIconCountForDock;
- (unint64_t)_maxIconCountForDockUtilities;
- (unint64_t)_maxListCountForFolders;
- (void)_getFolderDisplayName:(id *)name defaultDisplayName:(id *)displayName uniqueIdentifier:(id *)identifier forRepresentation:(id)representation;
- (void)applyProperties:(id)properties asDefaultPropertiesToFolder:(id)folder;
- (void)dockListProperties;
- (void)todayListProperties;
@end

@implementation SBHIconStateUnarchiver

- (SBHIconStateUnarchiver)initWithArchive:(id)archive
{
  archiveCopy = archive;
  v9.receiver = self;
  v9.super_class = SBHIconStateUnarchiver;
  v6 = [(SBHIconStateUnarchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archive, archive);
    v7->_removesEmptyFolders = 1;
  }

  return v7;
}

- (SBHIconStateUnarchiver)initWithArchive:(id)archive iconModel:(id)model
{
  modelCopy = model;
  v8 = [(SBHIconStateUnarchiver *)self initWithArchive:archive];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_iconModel, model);
    objc_storeStrong(&v9->_iconSource, model);
  }

  return v9;
}

- (id)effectiveDelegate
{
  delegate = [(SBHIconStateUnarchiver *)self delegate];
  v4 = delegate;
  if (delegate)
  {
    iconModel = delegate;
  }

  else
  {
    iconModel = [(SBHIconStateUnarchiver *)self iconModel];
  }

  v6 = iconModel;

  return v6;
}

- (id)unarchive
{
  v3 = objc_alloc_init(SBIconStateUnarchiveResult);
  archive = [(SBHIconStateUnarchiver *)self archive];
  iconModel = [(SBHIconStateUnarchiver *)self iconModel];
  v6 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [archive objectForKeyedSubscript:@"metadata"];
    [(SBIconStateUnarchiveResult *)v3 _setMetadata:v7];

    delegate = [iconModel delegate];
    if (objc_opt_respondsToSelector())
    {
      metadata = [(SBIconStateUnarchiveResult *)v3 metadata];
      [delegate willUnarchiveIconModel:iconModel withMetadata:metadata];
    }
  }

  v10 = [(SBHIconStateUnarchiver *)self _nodeFromRepresentation:archive context:v3];
  [(SBIconStateUnarchiveResult *)v3 setRootNode:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SBIconStateUnarchiveResult *)v3 _setRootFolder:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    customGridSizeClassDomain = [(SBHIconStateUnarchiver *)self customGridSizeClassDomain];
    [v10 setGridSizeClassDomain:customGridSizeClassDomain];
  }

  objc_autoreleasePoolPop(v6);

  return v3;
}

- (id)_nodeFromRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [representationCopy objectForKeyedSubscript:@"widgetVersion"];
    self->_postNewsWidgetMigration = [v8 unsignedIntegerValue] != 0;

    v9 = [(SBHIconStateUnarchiver *)self _folderFromRepresentation:representationCopy withContext:contextCopy];
LABEL_3:
    v10 = v9;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _currentFolder = [contextCopy _currentFolder];
    v12 = objc_opt_class();

    v13 = [(SBHIconStateUnarchiver *)self propertiesForFolderClass:v12];
    v10 = [(SBHIconStateUnarchiver *)self _listFromRepresentation:representationCopy properties:v13 identifier:0 context:contextCopy overflow:0];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v9 = [(SBHIconStateUnarchiver *)self _iconFromRepresentation:representationCopy withContext:contextCopy];
      goto LABEL_3;
    }

    v15 = SBLogCommon(isKindOfClass);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBHIconStateUnarchiver _nodeFromRepresentation:context:];
    }

    [contextCopy _noteRepresentationIsCorrupted];
    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (id)_newFolderIconForFolder:(id)folder
{
  if (!folder)
  {
    return 0;
  }

  folderCopy = folder;
  v4 = [[SBFolderIcon alloc] initWithFolder:folderCopy];

  return v4;
}

- (id)_iconFromRepresentation:(id)representation withContext:(id)context
{
  v39 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  contextCopy = context;
  iconSource = [(SBHIconStateUnarchiver *)self iconSource];
  iconModel = [(SBHIconStateUnarchiver *)self iconModel];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = representationCopy;
    v11 = v10;
    if (iconModel)
    {
      v12 = [objc_opt_class() migratedIdentifierForLeafIdentifier:v10];
    }

    else
    {
      v12 = v10;
    }

    effectiveDelegate = v12;
    v19 = [v12 isEqualToString:v11];
    if ((v19 & 1) == 0)
    {
      v20 = SBLogIcon(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v35 = 138412546;
        v36 = v11;
        v37 = 2112;
        v38 = effectiveDelegate;
        _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_INFO, "Migrated identifier for %@ to %@", &v35, 0x16u);
      }

      [contextCopy _noteSignificantDeviation];
    }

    v21 = [iconSource leafIconForIdentifier:effectiveDelegate];
    v22 = v21;
    if (iconModel && v21)
    {
      if (([iconModel isIconVisible:v21] & 1) == 0)
      {

LABEL_22:
        v23 = SBLogCommon(v21);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v35 = 138412290;
          v36 = v11;
          _os_log_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_DEFAULT, "could not find icon for representation -> %@", &v35, 0xCu);
        }

        if ([(SBHIconStateUnarchiver *)self shouldLeaveGapForMissingIconWithIdentifier:effectiveDelegate])
        {
          v22 = [(SBLeafIcon *)[SBHIconStateUnarchivingSlugIcon alloc] initWithLeafIdentifier:effectiveDelegate applicationBundleID:0];
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else if (!v21)
    {
      goto LABEL_22;
    }

LABEL_32:

    goto LABEL_38;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v16 = SBLogCommon(isKindOfClass);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
    }

    goto LABEL_42;
  }

  v11 = [representationCopy objectForKey:@"iconType"];
  if (![v11 isEqual:@"custom"])
  {
    if ([v11 isEqual:@"app"])
    {
      v14 = [(SBHIconStateUnarchiver *)self _applicationIconFromRepresentation:representationCopy context:contextCopy];
      if (!v14)
      {
        v15 = SBLogCommon(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
        }

        goto LABEL_30;
      }

LABEL_35:
      v22 = v14;
      goto LABEL_38;
    }

    if ([v11 isEqual:@"fileStack"])
    {
      v14 = [(SBHIconStateUnarchiver *)self _fileStackIconFromRepresentation:representationCopy context:contextCopy];
      goto LABEL_35;
    }

    if (v11)
    {
      goto LABEL_37;
    }

    effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
    v30 = [representationCopy objectForKey:@"iconLists"];
    if (v30)
    {
    }

    else if (objc_opt_respondsToSelector())
    {
      v22 = [effectiveDelegate iconStateUnarchiver:self iconForRepresentation:representationCopy];
      if (v22)
      {
        goto LABEL_32;
      }
    }

    [contextCopy _noteEnteredNode];
    v31 = [(SBHIconStateUnarchiver *)self _folderFromRepresentation:representationCopy withContext:contextCopy];
    v32 = v31;
    if (!v31 || [v31 isEmpty] && -[SBHIconStateUnarchiver removesEmptyFolders](self, "removesEmptyFolders") && objc_msgSend(v32, "shouldRemoveWhenEmpty"))
    {
      _noteExitedNode = [contextCopy _noteExitedNode];
    }

    else
    {
      v22 = [(SBHIconStateUnarchiver *)self _newFolderIconForFolder:v32];
      _noteExitedNode = [contextCopy _noteExitedNode];
      if (v22)
      {
LABEL_68:

        goto LABEL_32;
      }
    }

    v34 = SBLogCommon(_noteExitedNode);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
    }

    v22 = 0;
    goto LABEL_68;
  }

  v14 = [(SBHIconStateUnarchiver *)self _widgetIconFromRepresentation:representationCopy context:contextCopy];
  if (v14)
  {
    goto LABEL_35;
  }

  v15 = SBLogCommon(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
  }

LABEL_30:

  [contextCopy _noteSignificantDeviation];
LABEL_37:
  v22 = 0;
LABEL_38:

  if (v22)
  {
    nodeIdentifier = [(SBLeafIcon *)v22 nodeIdentifier];
    v25 = [contextCopy _isNodeIdentifierAlreadyUnarchived:nodeIdentifier];
    if (v25)
    {
      v26 = SBLogCommon(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
      }
    }

    else
    {
      if (!iconModel || (v28 = [iconModel isIconVisible:v22], v28))
      {
        [contextCopy _noteNodeIdentifierWasUnarchived:nodeIdentifier];
LABEL_51:

        goto LABEL_52;
      }

      v26 = SBLogCommon(v28);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SBHIconStateUnarchiver _iconFromRepresentation:withContext:];
      }
    }

    [contextCopy _noteSignificantDeviation];
    v22 = 0;
    goto LABEL_51;
  }

LABEL_42:
  v27 = SBLogCommon(v17);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v35 = 138412290;
    v36 = representationCopy;
    _os_log_impl(&dword_1BEB18000, v27, OS_LOG_TYPE_INFO, "could not find icon for representation=%@", &v35, 0xCu);
  }

  [contextCopy _noteSignificantDeviation];
  v22 = 0;
LABEL_52:

  return v22;
}

- (Class)_folderClassForFolderType:(id)type context:(id)context
{
  contextCopy = context;
  if (([type isEqualToString:@"folder"] & 1) == 0)
  {
    [contextCopy _currentParseDepth];
  }

  v6 = objc_opt_class();

  return v6;
}

+ (void)_getFolderDisplayName:(id *)name defaultDisplayName:(id *)displayName uniqueIdentifier:(id *)identifier forRepresentation:(id)representation iconSource:(id)source
{
  representationCopy = representation;
  sourceCopy = source;
  v12 = [representationCopy objectForKey:@"defaultDisplayName"];
  if ([v12 isEqualToString:&stru_1F3D472A8])
  {

    goto LABEL_6;
  }

  if (!v12)
  {
LABEL_6:
    localizedDefaultFolderName = [representationCopy objectForKey:@"displayName"];
    v12 = 0;
    if (localizedDefaultFolderName)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  localizedDefaultFolderName = [sourceCopy localizedFolderNameForDefaultDisplayName:v12];
  if (localizedDefaultFolderName)
  {
    goto LABEL_8;
  }

LABEL_7:
  localizedDefaultFolderName = [sourceCopy localizedDefaultFolderName];
  unlocalizedDefaultFolderName = [sourceCopy unlocalizedDefaultFolderName];

  v12 = unlocalizedDefaultFolderName;
LABEL_8:
  if (name)
  {
    v15 = localizedDefaultFolderName;
    *name = localizedDefaultFolderName;
  }

  if (displayName)
  {
    v16 = v12;
    *displayName = v12;
  }

  if (identifier)
  {
    v17 = [representationCopy objectForKey:@"uniqueIdentifier"];
    v18 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {

      v17 = 0;
    }

    v20 = v17;
    *identifier = v17;
  }
}

- (void)_getFolderDisplayName:(id *)name defaultDisplayName:(id *)displayName uniqueIdentifier:(id *)identifier forRepresentation:(id)representation
{
  representationCopy = representation;
  v11 = objc_opt_class();
  iconModel = [(SBHIconStateUnarchiver *)self iconModel];
  [v11 _getFolderDisplayName:name defaultDisplayName:displayName uniqueIdentifier:identifier forRepresentation:representationCopy iconSource:iconModel];
}

- (SBHIconGridSize)_listGridSizeForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [effectiveDelegate iconStateUnarchiver:self listGridSizeForFolderClass:class];
    v7 = v6 & 0xFFFF0000;
    v8 = v6;
  }

  else
  {
    v7 = 196608;
    v8 = 3;
  }

  return (v7 | v8);
}

- (SBHIconGridSize)_listWithNonDefaultSizedIconsGridSizeForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [effectiveDelegate iconStateUnarchiver:self listWithNonDefaultSizedIconsGridSizeForFolderClass:class];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SBHIconGridSize)_listGridSizeForTodayList
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = ([effectiveDelegate maxColumnCountForTodayListForIconStateUnarchiver:self] | 0xFFFF0000);
  }

  else
  {
    v4 = -65532;
  }

  return v4;
}

- (unint64_t)_maxListCountForFolders
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate maxListCountForFoldersForIconStateUnarchiver:self];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (unint64_t)_maxIconCountForDock
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate maxIconCountForDockForIconStateUnarchiver:self];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (unint64_t)_maxIconCountForDockUtilities
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate maxIconCountForDockUtilitiesForIconStateUnarchiver:self];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (id)_gridSizeClassSizes
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate gridSizeClassSizesForIconStateUnarchiver:self];
  }

  else
  {
    v4 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
  }

  v5 = v4;

  return v5;
}

- (id)_rotatedGridSizeClassSizes
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate rotatedGridSizeClassSizesForIconStateUnarchiver:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_listRotatedLayoutClusterGridSizeClass
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate listRotatedLayoutClusterGridSizeClassForIconStateUnarchiver:self];
  }

  else
  {
    v4 = @"SBHIconGridSizeClassDefault";
  }

  v5 = v4;

  return v5;
}

- (BOOL)_listsAllowRotatedLayoutForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [effectiveDelegate iconStateUnarchiver:self listsAllowRotatedLayoutForFolderClass:class];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_allowedGridSizeClassesForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [effectiveDelegate iconStateUnarchiver:self allowedGridSizeClassesForFolderClass:class];
  }

  else
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForDefaultGridSizeClass];
  }
  v6 = ;

  return v6;
}

- (id)_allowedGridSizeClassesForDock
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [effectiveDelegate allowedGridSizeClassesForDockForIconStateUnarchiver:self];
  }

  else
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForDefaultGridSizeClass];
  }
  v4 = ;

  return v4;
}

- (id)_allowedGridSizeClassesForTodayList
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [effectiveDelegate allowedGridSizeClassesForTodayListForIconStateUnarchiver:self];
  }

  else
  {
    v5 = [SBHIconGridSizeClassSet alloc];
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{@"SBHIconGridSizeClassSmall", @"SBHIconGridSizeClassMedium", @"SBHIconGridSizeClassLarge", 0}];
    v4 = [(SBHIconGridSizeClassSet *)v5 initWithGridSizeClasses:v6];
  }

  return v4;
}

- (int64_t)_listsFixedIconLocationBehaviorForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [effectiveDelegate iconStateUnarchiver:self listsFixedIconLocationBehaviorForFolderClass:class];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int64_t)_listsIconDisplacementBehaviorForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [effectiveDelegate iconStateUnarchiver:self listsIconDisplacementBehaviorForFolderClass:class];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_listsIconLayoutBehaviorForFolderClass:(Class)class
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [effectiveDelegate iconStateUnarchiver:self listsIconLayoutBehaviorForFolderClass:class];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)customGridSizeClassDomain
{
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [effectiveDelegate iconGridSizeClassDomainForIconStateUnarchiver:self];
  }

  else
  {
    +[SBHIconGridSizeClassDomain globalDomain];
  }
  v4 = ;

  return v4;
}

- (id)effectiveGridSizeClassDomain
{
  customGridSizeClassDomain = [(SBHIconStateUnarchiver *)self customGridSizeClassDomain];
  if (!customGridSizeClassDomain)
  {
    customGridSizeClassDomain = +[SBHIconGridSizeClassDomain globalDomain];
  }

  return customGridSizeClassDomain;
}

- (BOOL)shouldLeaveGapForMissingIconWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(SBHIconStateUnarchiver *)self leavesGapsForMissingIcons])
  {
    effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
    v6 = (objc_opt_respondsToSelector() & 1) == 0 || [effectiveDelegate iconStateUnarchiver:self shouldLeaveGapForMissingIconWithIdentifier:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyProperties:(id)properties asDefaultPropertiesToFolder:(id)folder
{
  propertiesCopy = properties;
  folderCopy = folder;
  v6 = folderCopy;
  if (propertiesCopy)
  {
    [folderCopy setListRotatedLayoutClusterGridSizeClass:*(propertiesCopy + 7)];
    v7 = *(propertiesCopy + 5);
  }

  else
  {
    [SBHIconStateUnarchiver applyProperties:folderCopy asDefaultPropertiesToFolder:0];
    v7 = 0;
  }

  [v6 setListAllowedGridSizeClasses:v7];
  if (propertiesCopy)
  {
    [v6 setGridSizeClassDomain:*(propertiesCopy + 6)];
    [v6 setListsAllowRotatedLayout:propertiesCopy[8]];
    [v6 setListWithNonDefaultSizedIconsGridSize:*(propertiesCopy + 14)];
    [v6 setListsFixedIconLocationBehavior:*(propertiesCopy + 8)];
    [v6 setListsIconDisplacementBehavior:*(propertiesCopy + 9)];
    [v6 setListsIconLayoutBehavior:*(propertiesCopy + 10)];
    v8 = *(propertiesCopy + 4);
  }

  else
  {
    [SBHIconStateUnarchiver applyProperties:v6 asDefaultPropertiesToFolder:?];
    v8 = 0;
  }

  [v6 setRotatedIconGridSizeClassSizes:v8];
}

- (id)dockListProperties
{
  v3 = objc_alloc_init(SBHIconStateArchiverListProperties);
  _gridSizeClassSizes = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
  v6 = _gridSizeClassSizes;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v5, _gridSizeClassSizes, 24);

    v3->_listGridSize = ([(SBHIconStateUnarchiver *)self _maxIconCountForDock]| 0x10000);
    v3->_listWithNonDefaultSizedIconsGridSize = 0;
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
    objc_setProperty_nonatomic_copy(v3, v8, _listRotatedLayoutClusterGridSizeClass, 56);
  }

  else
  {

    [(SBHIconStateUnarchiver *)self _maxIconCountForDock];
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
  }

  _allowedGridSizeClassesForDock = [(SBHIconStateUnarchiver *)self _allowedGridSizeClassesForDock];
  if (v3)
  {
    [(SBHIconStateUnarchiver *)v3 dockListProperties];
  }

  else
  {
    [(SBHIconStateUnarchiver *)_allowedGridSizeClassesForDock dockListProperties];
  }

  return v3;
}

- (id)dockUtilitiesListProperties
{
  v3 = objc_alloc_init(SBHIconStateArchiverListProperties);
  _gridSizeClassSizes = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
  v6 = _gridSizeClassSizes;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v5, _gridSizeClassSizes, 24);

    v3->_listGridSize = ([(SBHIconStateUnarchiver *)self _maxIconCountForDockUtilities]| 0x10000);
    v3->_listWithNonDefaultSizedIconsGridSize = 0;
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
    objc_setProperty_nonatomic_copy(v3, v8, _listRotatedLayoutClusterGridSizeClass, 56);
  }

  else
  {

    [(SBHIconStateUnarchiver *)self _maxIconCountForDockUtilities];
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
  }

  _allowedGridSizeClassesForDock = [(SBHIconStateUnarchiver *)self _allowedGridSizeClassesForDock];
  if (v3)
  {
    [(SBHIconStateUnarchiver *)v3 dockListProperties];
  }

  else
  {
    [(SBHIconStateUnarchiver *)_allowedGridSizeClassesForDock dockListProperties];
  }

  return v3;
}

- (id)todayListProperties
{
  v3 = objc_alloc_init(SBHIconStateArchiverListProperties);
  _gridSizeClassSizes = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
  v6 = _gridSizeClassSizes;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v5, _gridSizeClassSizes, 24);

    v3->_listGridSize = [(SBHIconStateUnarchiver *)self _listGridSizeForTodayList];
    v3->_listWithNonDefaultSizedIconsGridSize = 0;
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
    objc_setProperty_nonatomic_copy(v3, v8, _listRotatedLayoutClusterGridSizeClass, 56);
  }

  else
  {

    [(SBHIconStateUnarchiver *)self _listGridSizeForTodayList];
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
  }

  _allowedGridSizeClassesForTodayList = [(SBHIconStateUnarchiver *)self _allowedGridSizeClassesForTodayList];
  if (v3)
  {
    [(SBHIconStateUnarchiver *)v3 todayListProperties];
  }

  else
  {
    [(SBHIconStateUnarchiver *)_allowedGridSizeClassesForTodayList dockListProperties];
  }

  return v3;
}

- (id)ignoredListProperties
{
  v3 = objc_alloc_init(SBHIconStateArchiverListProperties);
  v4 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
  v6 = v4;
  if (v3)
  {
    objc_setProperty_nonatomic_copy(v3, v5, v4, 24);

    v3->_listGridSize = -65535;
    v3->_listWithNonDefaultSizedIconsGridSize = 0;
    objc_setProperty_nonatomic_copy(v3, v7, @"SBHIconGridSizeClassDefault", 56);
  }

  else
  {
  }

  v8 = +[SBHIconGridSizeClassSet gridSizeClassSetForAllGridSizeClasses];
  if (v3)
  {
    [(SBHIconStateUnarchiver *)v3 ignoredListProperties];
  }

  else
  {
    [(SBHIconStateUnarchiver *)v8 dockListProperties];
  }

  return v3;
}

- (id)_folderFromRepresentation:(id)representation withContext:(id)context
{
  v95 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  contextCopy = context;
  v8 = [representationCopy objectForKey:@"listType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SBHIconStateUnarchiver *)self _folderClassForFolderType:v9 context:contextCopy];
  if (v10)
  {
    v11 = v10;
    v80 = contextCopy;
    v12 = v8;
    v13 = [(SBHIconStateUnarchiver *)self _listGridSizeForFolderClass:v10];
    _maxListCountForFolders = [(SBHIconStateUnarchiver *)self _maxListCountForFolders];
    _gridSizeClassSizes = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
    v91 = 0;
    v92 = 0;
    v90 = 0;
    v16 = representationCopy;
    [(SBHIconStateUnarchiver *)self _getFolderDisplayName:&v92 defaultDisplayName:&v91 uniqueIdentifier:&v90 forRepresentation:representationCopy];
    v17 = v92;
    v18 = v91;
    v19 = v90;
    v20 = [v11 alloc];
    v76 = v19;
    v77 = v17;
    v21 = _maxListCountForFolders;
    v22 = v18;
    v78 = _gridSizeClassSizes;
    v23 = [v20 initWithUniqueIdentifier:v19 displayName:v17 maxListCount:v21 listGridSize:*&v13 iconGridSizeClassSizes:_gridSizeClassSizes];
    v24 = v23;
    if (v18)
    {
      [v23 setDefaultDisplayName:v18];
    }

    v79 = [(SBHIconStateUnarchiver *)self propertiesForFolderClass:v11];
    [SBHIconStateUnarchiver applyProperties:"applyProperties:asDefaultPropertiesToFolder:" asDefaultPropertiesToFolder:?];
    v75 = [v24 startCoalescingContentChangesForReason:@"folderFromRepresentation"];
    [v80 _pushFolder:v24];
    representationCopy = v16;
    v25 = [v16 objectForKey:@"iconLists"];
    v8 = v12;
    if (v25)
    {
      v73 = v22;
      v26 = [representationCopy objectForKey:@"listUniqueIdentifiers"];
      v27 = [representationCopy objectForKey:@"listMetadata"];
      objc_opt_class();
      v28 = v25;
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass & 1) != 0 && (!v26 || (objc_opt_self(), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_opt_isKindOfClass(), v30, (v31)))
      {
        v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v28, "count")}];
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke;
        v82[3] = &unk_1E808A6A0;
        v83 = v26;
        v84 = v32;
        v33 = v24;
        v85 = v33;
        selfCopy = self;
        v87 = v79;
        contextCopy = v80;
        v88 = v80;
        v89 = v27;
        v34 = v32;
        [v28 enumerateObjectsUsingBlock:v82];
        v35 = v33;
        v25 = v28;
        [v35 _setLists:v34];
      }

      else
      {
        v37 = SBLogCommon(isKindOfClass);
        contextCopy = v80;
        v25 = v28;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _folderFromRepresentation:withContext:];
        }

        [v80 _noteRepresentationIsCorrupted];
      }

      v22 = v73;
    }

    else
    {
      v38 = SBLogCommon(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [SBHIconStateUnarchiver _folderFromRepresentation:withContext:];
      }

      contextCopy = v80;
      [v80 _noteRepresentationIsCorrupted];
    }

    v39 = objc_opt_self();
    v40 = objc_opt_isKindOfClass();

    if (v40)
    {
      v41 = v24;
      v42 = [representationCopy objectForKey:@"buttonBar"];
      v71 = v42;
      if (v42 && (objc_opt_class(), v43 = objc_opt_isKindOfClass(), (v43 & 1) == 0))
      {
        v46 = SBLogCommon(v43);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _folderFromRepresentation:withContext:];
        }

        [contextCopy _noteRepresentationIsCorrupted];
      }

      else
      {
        dockListProperties = [(SBHIconStateUnarchiver *)self dockListProperties];
        v45 = [(SBHIconStateUnarchiver *)self _listFromRepresentation:v42 properties:dockListProperties identifier:0 context:contextCopy overflow:0];
        [v41 _setDock:v45];
      }

      v81 = v41;
      effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [effectiveDelegate isDockUtilitiesSupportedForIconStateUnarchiver:self])
      {
        v47 = [representationCopy objectForKey:@"dockUtilities"];
        if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v70 = objc_alloc_init(MEMORY[0x1E695DEC8]);
          [(SBHIconStateUnarchiver *)self dockListProperties];
          v51 = v49 = v47;
          dockUtilitiesListProperties = [(SBHIconStateUnarchiver *)self _listFromRepresentation:v70 properties:v51 identifier:0 context:contextCopy overflow:0];

          [v81 _setDockUtilities:dockUtilitiesListProperties];
        }

        else
        {
          dockUtilitiesListProperties = [(SBHIconStateUnarchiver *)self dockUtilitiesListProperties];
          [(SBHIconStateUnarchiver *)self _listFromRepresentation:v47 properties:dockUtilitiesListProperties identifier:0 context:contextCopy overflow:0];
          v50 = v49 = v47;
          [v81 _setDockUtilities:v50];
        }
      }

      v52 = [representationCopy objectForKey:@"today"];
      v72 = v25;
      if (v52 && (objc_opt_self(), v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_opt_isKindOfClass(), v53, (v54 & 1) == 0))
      {
        v58 = SBLogCommon(v55);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _folderFromRepresentation:withContext:];
        }

        [contextCopy _noteRepresentationIsCorrupted];
      }

      else
      {
        todayListProperties = [(SBHIconStateUnarchiver *)self todayListProperties];
        v57 = [(SBHIconStateUnarchiver *)self _listFromRepresentation:v52 properties:todayListProperties identifier:0 context:contextCopy overflow:0];
        [v81 _setTodayList:v57];
      }

      v59 = [representationCopy objectForKey:@"ignored"];
      if (v59 && (objc_opt_self(), v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_opt_isKindOfClass(), v60, (v61 & 1) == 0))
      {
        v66 = SBLogCommon(v62);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _folderFromRepresentation:withContext:];
        }

        [contextCopy _noteRepresentationIsCorrupted];
        v25 = v72;
        v65 = v81;
      }

      else
      {
        ignoredListProperties = [(SBHIconStateUnarchiver *)self ignoredListProperties];
        v64 = [(SBHIconStateUnarchiver *)self _listFromRepresentation:v59 properties:ignoredListProperties identifier:0 context:contextCopy overflow:0];
        [v81 _setIgnoredList:v64];

        v65 = v81;
        v25 = v72;
      }
    }

    [v24 compactLists];
    if (![v24 visibleListCount])
    {
      firstList = [v24 firstList];
      [firstList setHidden:0];
    }

    _popFolder = [contextCopy _popFolder];
    [v75 invalidate];
    [v24 markIconStateClean];
  }

  else
  {
    v36 = SBLogCommon(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v94 = representationCopy;
      _os_log_impl(&dword_1BEB18000, v36, OS_LOG_TYPE_INFO, "could not construct folder for representation=%@", buf, 0xCu);
    }

    [contextCopy _noteSignificantDeviation];
    v24 = 0;
  }

  return v24;
}

void __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend_objectAtIndex_(*(a1 + 32));
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 && (!v6 || (objc_opt_self(), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_isKindOfClass(), v8, (v9)))
  {
    v10 = [*(a1 + 40) count];
    v11 = [*(a1 + 48) maxListCount];
    if (v10 < v11)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13 = [*(a1 + 56) _listFromRepresentation:v5 properties:*(a1 + 64) identifier:v6 context:*(a1 + 72) overflow:v12];
      if (v13)
      {
        [*(a1 + 40) addObject:v13];
      }

      if (!v6)
      {
        goto LABEL_47;
      }

      v14 = [*(a1 + 80) objectForKey:v6];
      if (!v14)
      {
        goto LABEL_47;
      }

      v15 = v14;
      v16 = [v14 objectForKey:@"hiddenDate"];
      v66 = v16;
      if (v16)
      {
        v17 = v16;
        v18 = v13;
        v19 = 1;
        v20 = v17;
      }

      else
      {
        v18 = v13;
        v19 = 0;
        v20 = 0;
      }

      [v18 setHidden:v19 byUser:1 hiddenDate:v20];
      v65 = [v15 objectForKey:@"focusModeIdentifiers"];
      v64 = [MEMORY[0x1E695DFD8] setWithArray:?];
      [v13 setFocusModeIdentifiers:?];
      v23 = [v15 objectForKey:@"overflowSlotCount"];
      v24 = v15;
      v25 = [v23 unsignedIntegerValue];

      [v13 setOverflowSlotCount:v25];
      v68 = v24;
      v26 = [v24 objectForKey:@"rotatedOrder"];
      v27 = objc_opt_self();
      v67 = v26;
      LOBYTE(v26) = objc_opt_isKindOfClass();

      if (v26)
      {
        v73 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v67, "count")}];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        obj = v67;
        v28 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
        if (v28)
        {
          v29 = v28;
          v71 = *v78;
LABEL_24:
          v30 = 0;
          while (1)
          {
            if (*v78 != v71)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v77 + 1) + 8 * v30);
            v32 = objc_opt_self();
            v33 = objc_opt_isKindOfClass();

            if ((v33 & 1) == 0)
            {
              break;
            }

            v34 = [v13 directlyContainedIconWithIdentifier:v31];
            if (!v34)
            {
              break;
            }

            v35 = v34;
            [v73 addObject:v34];

            if (v29 == ++v30)
            {
              v29 = [obj countByEnumeratingWithState:&v77 objects:v89 count:16];
              if (v29)
              {
                goto LABEL_24;
              }

              break;
            }
          }
        }

        v36 = [v73 count];
        if (v36 == [v13 numberOfIcons])
        {
          [v13 _setRotatedIcons:v73 clearRotatedFixedIconLocations:1];
        }
      }

      v37 = v68;
      v74 = [v68 objectForKey:@"fixedLocations"];
      v38 = [v68 objectForKey:@"fixedLocationsGridColumns"];
      v39 = [v68 objectForKey:@"fixedLocationsGridRows"];
      v40 = v39;
      v41 = *(a1 + 64);
      if (v41 && *(v41 + 64))
      {
        v72 = v39;
        v42 = objc_opt_self();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_45:

          v37 = v68;
          v40 = v72;
          goto LABEL_46;
        }

        v43 = objc_opt_self();
        v44 = v38;
        v45 = v43;
        obja = v44;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_44:
          v38 = obja;
          goto LABEL_45;
        }

        v46 = objc_opt_self();
        v40 = v72;
        v47 = objc_opt_isKindOfClass();

        v37 = v68;
        v38 = obja;
        if (v47)
        {
          v48 = [obja unsignedIntegerValue];
          v49 = [v72 unsignedIntegerValue];
          v50 = [v13 gridSize];
          v51 = SBHIconGridSizeEqualToIconGridSize(v48 | (v49 << 16), v50);
          if (v51)
          {
            v52 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v75[0] = MEMORY[0x1E69E9820];
            v75[1] = 3221225472;
            v75[2] = __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke_2;
            v75[3] = &unk_1E808A678;
            v42 = v52;
            v76 = v42;
            [v13 enumerateIconsUsingBlock:v75];
            v53 = [*(a1 + 56) _sanitizedFixedIconLocationsFromDictionary:v74 iconIdentifiers:v42];
            [v13 addFixedIconLocations:v53 options:0];
            [v13 removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:0];
            v54 = [v68 objectForKey:@"rotatedFixedLocations"];
            v55 = objc_opt_self();
            v56 = objc_opt_isKindOfClass();

            if (v56)
            {
              v57 = [*(a1 + 56) _sanitizedFixedIconLocationsFromDictionary:v54 iconIdentifiers:v42];
              [v13 setRotatedFixedIconLocations:v57];
              [v13 removeFixedIconLocationsIfPossibleWithGridCellInfoOptions:2];
            }
          }

          else
          {
            v42 = SBLogCommon(v51);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218752;
              v82 = v48;
              v83 = 2048;
              v84 = v49;
              v85 = 2048;
              v86 = v50;
              v87 = 2048;
              v88 = HIWORD(v50);
              _os_log_impl(&dword_1BEB18000, v42, OS_LOG_TYPE_DEFAULT, "Discarding fixed icon positions because archived grid size (%lu×%lu) does not match actual list size (%lu×%lu)", buf, 0x2Au);
            }
          }

          goto LABEL_44;
        }
      }

LABEL_46:

      do
      {
LABEL_47:
        v58 = v13;
        if (![v12 count])
        {
          break;
        }

        v59 = [*(a1 + 40) count];
        if (v59 >= [*(a1 + 48) maxListCount])
        {
          break;
        }

        v60 = [v12 copy];
        [v12 removeAllObjects];
        v13 = [*(a1 + 56) _listWithIcons:v60 properties:*(a1 + 64) identifier:0 folder:*(a1 + 48) overflow:v12];

        if (v13 && ([v13 isEmpty] & 1) == 0)
        {
          [*(a1 + 40) addObject:v13];
        }

        v61 = [v60 isEqualToArray:v12];
      }

      while (!v61);
      v62 = [v12 count];
      if (v62)
      {
        v63 = SBLogCommon(v62);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke_cold_3();
        }
      }

      goto LABEL_58;
    }

    v22 = SBLogCommon(v11);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke_cold_2();
    }
  }

  else
  {
    v21 = SBLogCommon(isKindOfClass);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke_cold_1();
    }

    [*(a1 + 72) _noteRepresentationIsCorrupted];
  }

LABEL_58:
}

uint64_t __64__SBHIconStateUnarchiver__folderFromRepresentation_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (id)_listFromRepresentation:(id)representation properties:(id)properties identifier:(id)identifier context:(id)context overflow:(id)overflow
{
  v37 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  propertiesCopy = properties;
  identifierCopy = identifier;
  contextCopy = context;
  overflowCopy = overflow;
  [contextCopy _noteEnteredNode];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(representationCopy, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = representationCopy;
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      v19 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v30 + 1) + 8 * v19);
        v21 = objc_autoreleasePoolPush();
        v22 = [(SBHIconStateUnarchiver *)self _iconFromRepresentation:v20 withContext:contextCopy];
        if (v22)
        {
          [v14 addObject:v22];
        }

        else
        {
          v23 = SBLogCommon(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v35 = v15;
            _os_log_error_impl(&dword_1BEB18000, v23, OS_LOG_TYPE_ERROR, "could not make icon from representation: %@", buf, 0xCu);
          }

          [contextCopy _noteSignificantDeviation];
        }

        objc_autoreleasePoolPop(v21);
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v17);
  }

  _currentFolder = [contextCopy _currentFolder];
  v25 = [(SBHIconStateUnarchiver *)self _listWithIcons:v14 properties:propertiesCopy identifier:identifierCopy folder:_currentFolder overflow:overflowCopy];
  if ([overflowCopy count])
  {
    [contextCopy _noteSignificantDeviation];
  }

  [contextCopy _noteExitedNode];

  return v25;
}

uint64_t __79__SBHIconStateUnarchiver__listWithIcons_properties_identifier_folder_overflow___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_applicationIconFromRepresentation:(id)representation context:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v6 = [representationCopy objectForKey:@"displayIdentifier"];
  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [representationCopy objectForKey:@"bundleIdentifier"];
    v10 = objc_opt_self();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      iconSource = [(SBHIconStateUnarchiver *)self iconSource];
      v13 = [iconSource applicationIconForBundleIdentifier:v9];
      if (v13)
      {
        iconModel = [(SBHIconStateUnarchiver *)self iconModel];
        v15 = iconModel;
        if (iconModel)
        {
          v16 = [iconModel iconClassForApplicationWithBundleIdentifier:v9];
        }

        else
        {
          v16 = objc_opt_self();
        }

        v17 = [[v16 alloc] initWithLeafIdentifier:v6 applicationBundleID:v9];
        iconDataSources = [v13 iconDataSources];
        [(SBLeafIcon *)v17 addIconDataSources:iconDataSources];
      }

      else
      {
        v18 = SBLogCommon(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = representationCopy;
          _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEFAULT, "could not find icon for representation -> %@", &v21, 0xCu);
        }

        if ([(SBHIconStateUnarchiver *)self shouldLeaveGapForMissingIconWithIdentifier:v6])
        {
          v17 = [(SBLeafIcon *)[SBHIconStateUnarchivingSlugIcon alloc] initWithLeafIdentifier:v6 applicationBundleID:0];
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_widgetIconFromRepresentation:(id)representation context:(id)context
{
  v87 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  contextCopy = context;
  v8 = [representationCopy objectForKey:@"displayIdentifier"];
  v9 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v8 = uUIDString;
  }

  v13 = [[SBWidgetIcon alloc] initWithLeafIdentifier:v8 applicationBundleID:0];
  v14 = [representationCopy objectForKey:@"gridSize"];
  v15 = objc_opt_self();
  v16 = objc_opt_isKindOfClass();

  v17 = 0;
  if (v16)
  {
    v17 = [(SBHIconStateUnarchiver *)self gridSizeClassForString:v14];
    v18 = [representationCopy objectForKey:@"bundleIdentifier"];
    if ([v18 isEqualToString:@"com.apple.news.widget"])
    {
      v19 = [representationCopy objectForKey:@"widgetIdentifier"];
      v76 = v13;
      v20 = representationCopy;
      v21 = v14;
      selfCopy = self;
      v23 = v17;
      v24 = [v19 isEqualToString:@"today"];

      v25 = v24 ^ 1;
      v17 = v23;
      self = selfCopy;
      v14 = v21;
      representationCopy = v20;
      v13 = v76;
    }

    else
    {
      v25 = 1;
    }

    postNewsWidgetMigration = [(SBHIconStateUnarchiver *)self postNewsWidgetMigration];
    if (v17 == @"SBHIconGridSizeClassExtraLarge")
    {
      if ((v25 | postNewsWidgetMigration))
      {
        goto LABEL_10;
      }
    }

    else if (v25 & 1 | (([(__CFString *)v17 isEqualToString:?]& 1) == 0) | postNewsWidgetMigration)
    {
LABEL_10:
      [(SBIcon *)v13 setGridSizeClass:v17];
      goto LABEL_11;
    }

    v27 = @"SBHIconGridSizeClassNewsLargeTall";

    v17 = v27;
    goto LABEL_10;
  }

LABEL_11:
  selfCopy2 = self;
  v28 = [(SBHIconStateUnarchiver *)self _customIconElementFromRepresentation:representationCopy context:contextCopy];
  v71 = v14;
  v72 = v28;
  if (!v28)
  {
    v75 = v17;
    v34 = [representationCopy objectForKey:@"elements"];
    v35 = objc_opt_self();
    v36 = objc_opt_isKindOfClass();

    if ((v36 & 1) == 0)
    {

      v68 = 0;
      v17 = v75;
      goto LABEL_73;
    }

    v70 = v8;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    uniqueIdentifier2 = v34;
    v37 = [uniqueIdentifier2 countByEnumeratingWithState:&v78 objects:v86 count:16];
    if (!v37)
    {

      v17 = v75;
      goto LABEL_56;
    }

    v38 = v37;
    v77 = v13;
    v39 = *v79;
    v74 = contextCopy;
LABEL_20:
    v40 = 0;
    while (1)
    {
      if (*v79 != v39)
      {
        objc_enumerationMutation(uniqueIdentifier2);
      }

      v41 = *(*(&v78 + 1) + 8 * v40);
      v42 = objc_opt_self();
      v43 = objc_opt_isKindOfClass();

      if ((v43 & 1) == 0)
      {
        goto LABEL_43;
      }

      v44 = [(SBHIconStateUnarchiver *)self _customIconElementFromRepresentation:v41 context:contextCopy];
      if (v44)
      {
        break;
      }

LABEL_42:

LABEL_43:
      if (v38 == ++v40)
      {
        v52 = [uniqueIdentifier2 countByEnumeratingWithState:&v78 objects:v86 count:16];
        v38 = v52;
        if (!v52)
        {

          v17 = v75;
          v13 = v77;
          goto LABEL_57;
        }

        goto LABEL_20;
      }
    }

    v45 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      uniqueIdentifier = [v44 uniqueIdentifier];

      if (uniqueIdentifier)
      {
        v47 = [contextCopy _isWidgetUniqueIdentifierAlreadyUnarchived:uniqueIdentifier];
        if (v47)
        {
          v48 = SBLogCommon(v47);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v83 = v44;
            v84 = 2112;
            v85 = v77;
            _os_log_error_impl(&dword_1BEB18000, v48, OS_LOG_TYPE_ERROR, "detected duplicate widget '%@' to icon '%@'", buf, 0x16u);
          }

          goto LABEL_39;
        }

        v49 = 0;
LABEL_33:
        v50 = [(SBHIconStateUnarchiver *)self _canAddIconDataSource:v44 toIcon:v77 withGridSizeClass:v75];
        if (v50)
        {
          [(SBLeafIcon *)v77 addIconDataSource:v44];
          contextCopy = v74;
          if ((v49 & 1) == 0)
          {
            [v74 _noteWidgetUniqueIdentifierWasUnarchived:uniqueIdentifier];
          }

          goto LABEL_41;
        }

        v51 = SBLogCommon(v50);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v83 = v44;
          v84 = 2112;
          v85 = v77;
          _os_log_error_impl(&dword_1BEB18000, v51, OS_LOG_TYPE_ERROR, "can't add widget '%@' to icon '%@'", buf, 0x16u);
        }

        contextCopy = v74;
LABEL_39:
        [contextCopy _noteSignificantDeviation];
LABEL_41:

        goto LABEL_42;
      }
    }

    else
    {

      uniqueIdentifier = 0;
    }

    v49 = 1;
    goto LABEL_33;
  }

  v29 = v28;
  v70 = v8;
  v30 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    uniqueIdentifier2 = [v29 uniqueIdentifier];

    if (uniqueIdentifier2)
    {
      v32 = [contextCopy _isWidgetUniqueIdentifierAlreadyUnarchived:uniqueIdentifier2];
      if (v32)
      {
        v33 = SBLogCommon(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [SBHIconStateUnarchiver _widgetIconFromRepresentation:context:];
        }

LABEL_55:

        [contextCopy _noteSignificantDeviation];
        goto LABEL_56;
      }

      v53 = 0;
      goto LABEL_50;
    }
  }

  else
  {

    uniqueIdentifier2 = 0;
  }

  v53 = 1;
LABEL_50:
  v54 = [(SBHIconStateUnarchiver *)selfCopy2 _canAddIconDataSource:v29 toIcon:v13 withGridSizeClass:v17];
  if (!v54)
  {
    v33 = SBLogCommon(v54);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [SBHIconStateUnarchiver _widgetIconFromRepresentation:context:];
    }

    goto LABEL_55;
  }

  [(SBLeafIcon *)v13 addIconDataSource:v29];
  if ((v53 & 1) == 0)
  {
    [contextCopy _noteWidgetUniqueIdentifierWasUnarchived:uniqueIdentifier2];
  }

LABEL_56:
  self = selfCopy2;
LABEL_57:

  v55 = [representationCopy objectForKey:@"userSelectedElementIdentifier"];
  if (v55)
  {
    v56 = [(SBLeafIcon *)v13 firstIconDataSourceWithUniqueIdentifier:v55];
    v57 = SBLogIcon(v56);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      [(SBIcon *)v13 uniqueIdentifier];
      v59 = v58 = v17;
      *buf = 138412546;
      v83 = v56;
      v84 = 2112;
      v85 = v59;
      _os_log_impl(&dword_1BEB18000, v57, OS_LOG_TYPE_DEFAULT, "Setting last user selected data source after unarchiving: %@ for: %@", buf, 0x16u);

      v17 = v58;
    }

    [(SBWidgetIcon *)v13 setLastUserSelectedDataSource:v56];
    [(SBLeafIcon *)v13 _updateActiveDataSource];
  }

  v60 = [representationCopy objectForKey:@"allowsSuggestions"];
  if (objc_opt_respondsToSelector())
  {
    -[SBWidgetIcon setAllowsSuggestions:](v13, "setAllowsSuggestions:", [v60 BOOLValue]);
  }

  v61 = [representationCopy objectForKey:@"allowsExternalSuggestions"];
  if (objc_opt_respondsToSelector())
  {
    -[SBWidgetIcon setAllowsExternalSuggestions:](v13, "setAllowsExternalSuggestions:", [v61 BOOLValue]);
  }

  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v63 = [effectiveDelegate iconStateUnarchiver:self didUnarchiveWidgetIcon:v13];
    v64 = v63;
    if (v63)
    {
      v65 = v17;
      v66 = v63;

      v13 = v66;
      v17 = v65;
    }
  }

  if ([(SBLeafIcon *)v13 iconDataSourceCount])
  {
    v67 = v13;
  }

  else
  {
    v67 = 0;
  }

  v68 = v67;

  v8 = v70;
  v14 = v71;
LABEL_73:

  return v68;
}

- (id)_fileStackIconFromRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  initWithUniqueLeafIdentifier = [[SBHFileStackIcon alloc] initWithUniqueLeafIdentifier];
  v7 = [representationCopy objectForKey:@"fileStackIconSortOrderIdentifier"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [representationCopy objectForKey:@"fileStackIconSortOrderIdentifier"];
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_alloc(MEMORY[0x1E699A420]) initWithSortOrderIdentifier:v9];
  [(SBHFileStackIcon *)initWithUniqueLeafIdentifier setSortOrder:v10];
  v11 = [representationCopy objectForKey:@"fileStackIconSortOrderAscending"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [representationCopy objectForKey:@"fileStackIconSortOrderAscending"];
    bOOLValue = [v13 BOOLValue];

    [(SBHFileStackIcon *)initWithUniqueLeafIdentifier setCurrentSortOrderAscending:bOOLValue];
  }

  v15 = [representationCopy objectForKey:@"fileStackIconDisplayModeIdentifier"];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = [representationCopy objectForKey:@"fileStackIconDisplayModeIdentifier"];
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_alloc(MEMORY[0x1E699A410]) initWithDisplayModeIdentifier:v17];
  [(SBHFileStackIcon *)initWithUniqueLeafIdentifier setDisplayMode:v18];
  v19 = [representationCopy objectForKey:@"fileStackIconDataSourceUniqueIdentifier"];
  objc_opt_class();
  v20 = objc_opt_isKindOfClass();

  if (v20)
  {
    v21 = [representationCopy objectForKey:@"fileStackIconDataSourceUniqueIdentifier"];
    v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v21];

    if (v22)
    {
      [(SBHFileStackIcon *)initWithUniqueLeafIdentifier setDataSourceUniqueIdentifier:v22];
    }
  }

  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v24 = [effectiveDelegate iconStateUnarchiver:self didUnarchiveFileStackIcon:initWithUniqueLeafIdentifier];

    initWithUniqueLeafIdentifier = v24;
  }

  return initWithUniqueLeafIdentifier;
}

- (BOOL)_canAddIconDataSource:(id)source toIcon:(id)icon withGridSizeClass:(id)class
{
  sourceCopy = source;
  iconCopy = icon;
  classCopy = class;
  v10 = classCopy;
  if (classCopy)
  {
    gridSizeClass = classCopy;
  }

  else
  {
    gridSizeClass = [iconCopy gridSizeClass];
  }

  v12 = gridSizeClass;
  if (objc_opt_respondsToSelector())
  {
    [sourceCopy supportedGridSizeClassesForIcon:iconCopy];
  }

  else
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForAllGridSizeClasses];
  }
  v13 = ;
  v14 = [v13 containsGridSizeClass:v12];

  return v14;
}

- (id)_customIconElementFromRepresentation:(id)representation context:(id)context
{
  v50 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  contextCopy = context;
  v8 = [representationCopy objectForKey:@"uniqueIdentifier"];
  v9 = [representationCopy objectForKey:@"elementType"];
  v10 = [representationCopy objectForKey:@"widgetSuggestionSource"];
  v11 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v8 = uUIDString;
  }

  if (v9)
  {
    v15 = objc_opt_self();
    v16 = objc_opt_isKindOfClass();

    if ((v16 & 1) == 0)
    {
      v26 = 0;
      goto LABEL_37;
    }
  }

  if ([v9 isEqualToString:@"widget"])
  {
    v17 = [representationCopy objectForKey:@"widgetIdentifier"];
    v18 = objc_opt_self();
    v19 = objc_opt_isKindOfClass();

    selfCopy = self;
    if ((v19 & 1) == 0)
    {

      v17 = 0;
    }

    v20 = [representationCopy objectForKey:@"bundleIdentifier"];
    v21 = objc_opt_self();
    v22 = objc_opt_isKindOfClass();

    v45 = contextCopy;
    if ((v22 & 1) == 0)
    {

      v20 = 0;
    }

    v23 = [representationCopy objectForKey:@"containerBundleIdentifier"];
    v24 = objc_opt_self();
    v25 = objc_opt_isKindOfClass();

    if ((v25 & 1) == 0)
    {
      [v45 _noteSignificantDeviation];

      v23 = 0;
    }

    v26 = 0;
    if (v8 && v17)
    {
      if ([v20 isEqualToString:*MEMORY[0x1E698E870]])
      {
        v26 = [(SBHIconStateUnarchiver *)selfCopy _batteryElementWithIdentifier:v8];
      }

      else
      {
        v28 = [(SBHIconStateUnarchiver *)selfCopy supportedGridSizeClassesForWidgetWithKind:v17 extensionBundleIdentifier:v20 containerBundleIdentifier:v23];
        v26 = [[SBHWidget alloc] initWithUniqueIdentifier:v8 kind:v17 extensionBundleIdentifier:v20 containerBundleIdentifier:v23 supportedGridSizeClasses:v28];
        v29 = SBLogWidgets(v26);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          extensionBundleIdentifier = [(SBHWidget *)v26 extensionBundleIdentifier];
          v43 = v28;
          [(SBHWidget *)v26 uniqueIdentifier];
          *buf = 138543618;
          v47 = extensionBundleIdentifier;
          v49 = v48 = 2114;
          v30 = v49;
          _os_log_impl(&dword_1BEB18000, v29, OS_LOG_TYPE_DEFAULT, "Widget %{public}@ %{public}@ created from arhive.", buf, 0x16u);

          v28 = v43;
        }
      }
    }

    self = selfCopy;
    contextCopy = v45;
    if (!v10)
    {
      goto LABEL_37;
    }

LABEL_34:
    v32 = [(SBHIconStateUnarchiver *)self _suggestionSourceFromRepresentation:v10];
    v33 = objc_opt_self();
    v34 = objc_opt_isKindOfClass();

    if (v34 & 1) != 0 || (objc_opt_self(), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_opt_isKindOfClass(), v35, (v36))
    {
      v37 = [(SBHWidget *)v26 copyWithSuggestionSource:v32];

      v26 = v37;
    }

    goto LABEL_37;
  }

  if ([v9 isEqualToString:@"siriSuggestions"])
  {
    v27 = SBHSiriSuggestionsElement;
LABEL_32:
    v31 = [[v27 alloc] initWithUniqueIdentifier:v8];
    goto LABEL_33;
  }

  if ([v9 isEqualToString:@"shortcuts"])
  {
    v27 = SBHShortcutsFolderElement;
    goto LABEL_32;
  }

  if ([v9 isEqualToString:@"shortcutsSingle"])
  {
    v27 = SBHShortcutsSingleElement;
    goto LABEL_32;
  }

  if ([v9 isEqualToString:@"files"])
  {
    v27 = SBHFilesElement;
    goto LABEL_32;
  }

  if ([v9 isEqualToString:@"appPredictions"])
  {
    v27 = SBHAppPredictionsElement;
    goto LABEL_32;
  }

  if ([v9 isEqualToString:@"batteries"])
  {
    v31 = [(SBHIconStateUnarchiver *)self _batteryElementWithIdentifier:v8];
LABEL_33:
    v26 = v31;
    if (!v10)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  v40 = objc_opt_respondsToSelector();
  if (v40)
  {
    v40 = [effectiveDelegate iconStateUnarchiver:self iconDataSourceForRepresentation:representationCopy];
    v26 = v40;
  }

  else
  {
    v26 = 0;
  }

  if (v9 && !v26)
  {
    v41 = SBLogCommon(v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [SBHIconStateUnarchiver _customIconElementFromRepresentation:context:];
    }

    [contextCopy _noteSignificantDeviation];
  }

  if (v10)
  {
    goto LABEL_34;
  }

LABEL_37:

  return v26;
}

- (id)_batteryElementWithIdentifier:(id)identifier
{
  v4 = *MEMORY[0x1E698E878];
  v5 = *MEMORY[0x1E698E870];
  v6 = *MEMORY[0x1E698E868];
  identifierCopy = identifier;
  v8 = [(SBHIconStateUnarchiver *)self supportedGridSizeClassesForWidgetWithKind:v4 extensionBundleIdentifier:v5 containerBundleIdentifier:v6];
  v9 = [[SBHWidget alloc] initWithUniqueIdentifier:identifierCopy kind:v4 extensionBundleIdentifier:v5 containerBundleIdentifier:v6 supportedGridSizeClasses:v8];

  return v9;
}

- (int64_t)_suggestionSourceFromRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy isEqualToString:@"onboarding"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [representationCopy isEqualToString:@"NPlus1"];
  }

  return v4;
}

- (id)_sanitizedFixedIconLocationsFromDictionary:(id)dictionary iconIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6 = MEMORY[0x1E695DF90];
  dictionaryCopy = dictionary;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__SBHIconStateUnarchiver__sanitizedFixedIconLocationsFromDictionary_iconIdentifiers___block_invoke;
  v14[3] = &unk_1E808A6E8;
  v15 = identifiersCopy;
  v9 = v8;
  v16 = v9;
  v10 = identifiersCopy;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __85__SBHIconStateUnarchiver__sanitizedFixedIconLocationsFromDictionary_iconIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v8 = [*(a1 + 32) containsObject:v9];

  if (v8)
  {
    [*(a1 + 40) setObject:v5 forKey:v9];
  }

LABEL_7:
}

- (id)supportedGridSizeClassesForWidgetWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier
{
  kindCopy = kind;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  effectiveDelegate = [(SBHIconStateUnarchiver *)self effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    [effectiveDelegate iconStateUnarchiver:self supportedGridSizeClassesForWidgetWithKind:kindCopy extensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy];
  }

  else
  {
    +[SBHIconGridSizeClassSet gridSizeClassSetForAllNonDefaultGridSizeClasses];
  }
  v12 = ;

  return v12;
}

- (id)gridSizeClassForString:(id)string
{
  stringCopy = string;
  effectiveGridSizeClassDomain = [(SBHIconStateUnarchiver *)self effectiveGridSizeClassDomain];
  v6 = [effectiveGridSizeClassDomain gridSizeClassForArchiveValue:stringCopy];

  if (!v6)
  {
    v6 = @"SBHIconGridSizeClassSmall";
  }

  return v6;
}

- (id)propertiesForFolderClass:(Class)class
{
  v4 = objc_alloc_init(SBHIconStateArchiverListProperties);
  _gridSizeClassSizes = [(SBHIconStateUnarchiver *)self _gridSizeClassSizes];
  v7 = _gridSizeClassSizes;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v6, _gridSizeClassSizes, 24);

    v4->_listGridSize = [OUTLINED_FUNCTION_3_0() _listGridSizeForFolderClass:?];
    v4->_listWithNonDefaultSizedIconsGridSize = [OUTLINED_FUNCTION_3_0() _listWithNonDefaultSizedIconsGridSizeForFolderClass:?];
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
    objc_setProperty_nonatomic_copy(v4, v9, _listRotatedLayoutClusterGridSizeClass, 56);
  }

  else
  {

    [OUTLINED_FUNCTION_3_0() _listGridSizeForFolderClass:?];
    [OUTLINED_FUNCTION_3_0() _listWithNonDefaultSizedIconsGridSizeForFolderClass:?];
    _listRotatedLayoutClusterGridSizeClass = [(SBHIconStateUnarchiver *)self _listRotatedLayoutClusterGridSizeClass];
  }

  v11 = [OUTLINED_FUNCTION_3_0() _allowedGridSizeClassesForFolderClass:?];
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v10, v11, 40);
  }

  customGridSizeClassDomain = [(SBHIconStateUnarchiver *)self customGridSizeClassDomain];
  [(SBHIconStateArchiverListProperties *)v4 setGridSizeClassDomain:customGridSizeClassDomain];

  v13 = [OUTLINED_FUNCTION_3_0() _listsAllowRotatedLayoutForFolderClass:?];
  if (v4)
  {
    v4->_allowRotatedLayout = v13;
    v4->_fixedIconLocationBehavior = [OUTLINED_FUNCTION_3_0() _listsFixedIconLocationBehaviorForFolderClass:?];
    v4->_iconDisplacementBehavior = [OUTLINED_FUNCTION_3_0() _listsIconDisplacementBehaviorForFolderClass:?];
    v4->_iconLayoutBehavior = [OUTLINED_FUNCTION_3_0() _listsIconLayoutBehaviorForFolderClass:?];
    _rotatedGridSizeClassSizes = [(SBHIconStateUnarchiver *)self _rotatedGridSizeClassSizes];
    objc_setProperty_nonatomic_copy(v4, v15, _rotatedGridSizeClassSizes, 32);
  }

  else
  {
    [OUTLINED_FUNCTION_3_0() _listsFixedIconLocationBehaviorForFolderClass:?];
    [OUTLINED_FUNCTION_3_0() _listsIconDisplacementBehaviorForFolderClass:?];
    [OUTLINED_FUNCTION_3_0() _listsIconLayoutBehaviorForFolderClass:?];
    _rotatedGridSizeClassSizes = [(SBHIconStateUnarchiver *)self _rotatedGridSizeClassSizes];
  }

  return v4;
}

- (id)_listWithIcons:(id)icons properties:(id)properties identifier:(id)identifier folder:(id)folder overflow:(id)overflow
{
  v81 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  propertiesCopy = properties;
  identifierCopy = identifier;
  folderCopy = folder;
  overflowCopy = overflow;
  if (propertiesCopy)
  {
    v15 = *(propertiesCopy + 10);
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc([folderCopy listModelClass]);
  if (propertiesCopy)
  {
    v17 = *(propertiesCopy + 3);
  }

  else
  {
    v17 = 0;
  }

  v67 = folderCopy;
  v68 = identifierCopy;
  v18 = [v16 initWithUniqueIdentifier:identifierCopy folder:folderCopy gridSize:v15 gridSizeClassSizes:v17];
  v19 = v18;
  if (propertiesCopy)
  {
    [v18 setAllowedGridSizeClasses:*(propertiesCopy + 5)];
    v20 = *(propertiesCopy + 6);
  }

  else
  {
    [OUTLINED_FUNCTION_9_0() setAllowedGridSizeClasses:?];
    v20 = 0;
  }

  [v19 setGridSizeClassDomain:v20];
  if (propertiesCopy)
  {
    [v19 setAllowsRotatedLayout:propertiesCopy[8]];
    v21 = *(propertiesCopy + 7);
  }

  else
  {
    [v19 setAllowsRotatedLayout:0];
    v21 = 0;
  }

  [v19 setRotatedLayoutClusterGridSizeClass:v21];
  if (propertiesCopy)
  {
    [v19 setFixedIconLocationBehavior:*(propertiesCopy + 8)];
    [v19 setIconLayoutBehavior:*(propertiesCopy + 10)];
    [v19 setGridSizeWhenDirectlyContainingNonDefaultSizedIcons:*(propertiesCopy + 14)];
    v22 = *(propertiesCopy + 4);
  }

  else
  {
    [OUTLINED_FUNCTION_9_0() setFixedIconLocationBehavior:?];
    [OUTLINED_FUNCTION_9_0() setIconLayoutBehavior:?];
    [OUTLINED_FUNCTION_9_0() setGridSizeWhenDirectlyContainingNonDefaultSizedIcons:?];
    v22 = 0;
  }

  [v19 setRotatedIconGridSizeClassSizes:v22];
  v69 = propertiesCopy;
  if (propertiesCopy)
  {
    v23 = *(propertiesCopy + 11);
  }

  else
  {
    v23 = 0;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v24 = iconsCopy;
  v25 = [v24 countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v76;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v76 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v75 + 1) + 8 * i);
        numberOfIcons = [v19 numberOfIcons];
        maxNumberOfIcons = [v19 maxNumberOfIcons];
        if (numberOfIcons >= maxNumberOfIcons)
        {
          v45 = SBLogCommon(maxNumberOfIcons);
          v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
          if (v46)
          {
            OUTLINED_FUNCTION_6_0(v46, v47, v48, v49, v50, v51, v52, v53, v54, v66, v67, v68, v69, v55);
            _os_log_impl(&dword_1BEB18000, v45, OS_LOG_TYPE_DEFAULT, "list is too small to add icon -> icon=%@ list=%@", v56, 0x16u);
          }

          [overflowCopy addObject:v29];
        }

        else
        {
          v32 = [v19 addIcon:v29 options:v23];
          v33 = [v32 containsObject:v29];
          if (v33)
          {
            v34 = SBLogCommon(v33);
            v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
            if (v35)
            {
              OUTLINED_FUNCTION_6_0(v35, v36, v37, v38, v39, v40, v41, v42, v43, v66, v67, v68, v69, v44);
              _os_log_error_impl(&dword_1BEB18000, v34, OS_LOG_TYPE_ERROR, "could not add icon to list -> icon=%@ list=%@", v57, 0x16u);
            }
          }
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v26);
  }

  v58 = [v19 directlyContainedIconsPassingTest:&__block_literal_global_16];
  if ([v58 count])
  {
    if ([v19 allowsFixedIconLocations])
    {
      v59 = [OUTLINED_FUNCTION_9_0() gridCellInfoWithOptions:?];
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v60 = v58;
      v61 = [v60 countByEnumeratingWithState:&v71 objects:v79 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v72;
        do
        {
          for (j = 0; j != v62; ++j)
          {
            if (*v72 != v63)
            {
              objc_enumerationMutation(v60);
            }

            [v59 setIconIndex:0x7FFFFFFFFFFFFFFFLL forGridCellIndex:{objc_msgSend(v19, "gridCellIndexForIcon:gridCellInfo:", *(*(&v71 + 1) + 8 * j), v59)}];
          }

          v62 = [v60 countByEnumeratingWithState:&v71 objects:v79 count:16];
        }

        while (v62);
      }

      [v19 addOrRemoveFixedIconLocationsIfNecessaryWithGridCellInfo:v59];
    }

    [v19 removeIcons:v58 options:0];
  }

  [v19 markIconStateClean];

  return v19;
}

- (uint64_t)applyProperties:(void *)a1 asDefaultPropertiesToFolder:.cold.2(void *a1)
{
  [a1 setGridSizeClassDomain:0];
  [a1 setListsAllowRotatedLayout:0];
  [OUTLINED_FUNCTION_10_0() setListWithNonDefaultSizedIconsGridSize:?];
  [OUTLINED_FUNCTION_10_0() setListsFixedIconLocationBehavior:?];
  [OUTLINED_FUNCTION_10_0() setListsIconDisplacementBehavior:?];
  v2 = OUTLINED_FUNCTION_10_0();

  return [v2 setListsIconLayoutBehavior:?];
}

- (void)dockListProperties
{
  customGridSizeClassDomain = [a2 customGridSizeClassDomain];
  v4 = OUTLINED_FUNCTION_4_0(customGridSizeClassDomain);
}

- (void)todayListProperties
{
  OUTLINED_FUNCTION_1_0(self, a2);

  customGridSizeClassDomain = [v2 customGridSizeClassDomain];
  OUTLINED_FUNCTION_7_0(customGridSizeClassDomain);
  OUTLINED_FUNCTION_11_0();
  *(v4 + 80) = 1;
}

- (double)ignoredListProperties
{
  OUTLINED_FUNCTION_1_0(self, a2);

  customGridSizeClassDomain = [v2 customGridSizeClassDomain];
  OUTLINED_FUNCTION_7_0(customGridSizeClassDomain);
  OUTLINED_FUNCTION_11_0();
  *&result = 1;
  *(v4 + 80) = xmmword_1BEE85780;
  return result;
}

@end