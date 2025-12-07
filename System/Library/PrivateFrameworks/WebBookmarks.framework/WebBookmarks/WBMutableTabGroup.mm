@interface WBMutableTabGroup
+ (id)localTabGroup;
+ (id)localTabGroupWithUUID:(id)d;
+ (id)privateTabGroup;
+ (id)unnamedTabGroupWithDeviceIdentifier:(id)identifier;
+ (id)unnamedTabGroupWithUUID:(id)d profileIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier;
- (NSArray)deletedTabs;
- (WBMutableTabGroup)initWithBookmark:(id)bookmark tabs:(id)tabs lastSelectedTabUUID:(id)d kind:(int64_t)kind;
- (WBMutableTabGroup)initWithTitle:(id)title deviceIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier;
- (WBSCRDTPosition)syncPosition;
- (id)duplicateTabs:(id)tabs;
- (void)_fixLastSelectedTabIfNeeded;
- (void)_performWithMutableTabs:(id)tabs;
- (void)appendTabs:(id)tabs;
- (void)clearDeletedTabs;
- (void)deleteTabs:(id)tabs;
- (void)insertTabs:(id)tabs afterTab:(id)tab;
- (void)markBackgroundImageAsModified;
- (void)mergeWithTabGroup:(id)group;
- (void)removeTab:(id)tab;
- (void)reorderTab:(id)tab afterTab:(id)afterTab;
- (void)setDeletedTabs:(id)tabs;
- (void)setDisplayTitleProvider:(id)provider;
- (void)setHidden:(BOOL)hidden;
- (void)setIdentifier:(int)identifier;
- (void)setKind:(int64_t)kind;
- (void)setLastSelectedTabUUID:(id)d;
- (void)setProfileIdentifier:(id)identifier;
- (void)setSyncPosition:(id)position;
- (void)setSyncable:(BOOL)syncable;
- (void)setTabs:(id)tabs;
- (void)setTitle:(id)title;
- (void)truncateToNumberOfTabs:(unint64_t)tabs;
- (void)updateLastSelectedTab;
@end

@implementation WBMutableTabGroup

- (void)_fixLastSelectedTabIfNeeded
{
  v5 = [(NSArray *)self->super._tabs safari_setByApplyingBlock:&__block_literal_global_12];
  if (([v5 containsObject:self->super._lastSelectedTabUUID] & 1) == 0)
  {
    lastObject = [(NSArray *)self->super._tabs lastObject];
    uuid = [lastObject uuid];
    [(WBMutableTabGroup *)self setLastSelectedTabUUID:uuid];
  }
}

- (void)updateLastSelectedTab
{
  [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
  lastSelectedTabUUID = self->super._lastSelectedTabUUID;
  if (lastSelectedTabUUID)
  {
    v6 = [(WBTabGroup *)self tabWithUUID:self->super._lastSelectedTabUUID];
    identifier = [v6 identifier];
  }

  else
  {
    identifier = 0x7FFFFFFFLL;
  }

  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [value setLastSelectedChildID:identifier];

  if (lastSelectedTabUUID)
  {
  }
}

- (NSArray)deletedTabs
{
  v2 = [(NSMutableArray *)self->super._deletedTabs copy];

  return v2;
}

- (void)clearDeletedTabs
{
  v3 = WBS_LOG_CHANNEL_PREFIXTabGroup(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_272C20000, v3, OS_LOG_TYPE_INFO, "Clearing deleted tabs", v4, 2u);
  }

  [(NSMutableArray *)self->super._deletedTabs removeAllObjects];
}

- (WBMutableTabGroup)initWithBookmark:(id)bookmark tabs:(id)tabs lastSelectedTabUUID:(id)d kind:(int64_t)kind
{
  v26 = *MEMORY[0x277D85DE8];
  tabsCopy = tabs;
  v11 = [(WBTabGroup *)self initWithBookmark:bookmark lastSelectedTabUUID:d kind:kind];
  if (v11)
  {
    v12 = [tabsCopy mutableCopy];
    tabs = v11->super._tabs;
    v11->super._tabs = v12;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v11->super._tabs;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v21 + 1) + 8 * v18++) _setPropertiesFromTabGroup:{v11, v21}];
        }

        while (v16 != v18);
        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [(WBTabGroup *)v11 _tabsDidChange];
    v19 = v11;
  }

  return v11;
}

+ (id)localTabGroup
{
  v2 = objc_opt_class();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 localTabGroupWithUUID:uUIDString];

  return v5;
}

+ (id)localTabGroupWithUUID:(id)d
{
  dCopy = d;
  v4 = [[WebBookmark alloc] initFolderWithParentID:0x7FFFFFFFLL collectionType:1];
  [v4 setTitle:@"Local"];
  [v4 _setUUID:dCopy];

  v5 = [(WBTabGroup *)[WBMutableTabGroup alloc] initWithBookmark:v4];
  [(WBMutableTabGroup *)v5 setHidden:1];
  [(WBMutableTabGroup *)v5 setSyncable:0];
  [(WBMutableTabGroup *)v5 setKind:0];

  return v5;
}

+ (id)privateTabGroup
{
  v2 = [[WebBookmark alloc] initFolderWithParentID:0x7FFFFFFFLL collectionType:1];
  [v2 setTitle:@"Private"];
  v3 = [(WBTabGroup *)[WBMutableTabGroup alloc] initWithBookmark:v2];
  [(WBMutableTabGroup *)v3 setHidden:1];
  [(WBMutableTabGroup *)v3 setSyncable:0];
  [(WBMutableTabGroup *)v3 setKind:1];

  return v3;
}

+ (id)unnamedTabGroupWithUUID:(id)d profileIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier
{
  deviceIdentifierCopy = deviceIdentifier;
  identifierCopy = identifier;
  dCopy = d;
  v11 = [[WebBookmark alloc] initFolderWithParentID:0 deviceIdentifier:deviceIdentifierCopy collectionType:1];

  [v11 setTitle:@"Unnamed"];
  [v11 _setUUID:dCopy];

  v12 = [[self alloc] initWithBookmark:v11];
  [v12 setKind:3];
  [v12 setSyncable:1];
  v13 = [identifierCopy copy];

  [v12 setProfileIdentifier:v13];

  return v12;
}

+ (id)unnamedTabGroupWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithDeviceIdentifier:identifierCopy];

  [v5 setKind:3];

  return v5;
}

- (WBMutableTabGroup)initWithTitle:(id)title deviceIdentifier:(id)identifier profileIdentifier:(id)profileIdentifier
{
  profileIdentifierCopy = profileIdentifier;
  v9 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  titleCopy = title;
  uUID = [v9 UUID];
  uUIDString = [uUID UUIDString];
  v14 = [(WBTabGroup *)self initWithTitle:titleCopy uuid:uUIDString deviceIdentifier:identifierCopy];

  if (v14)
  {
    [(WBMutableTabGroup *)v14 setProfileIdentifier:profileIdentifierCopy];
    v15 = v14;
  }

  return v14;
}

- (void)setDisplayTitleProvider:(id)provider
{
  v4 = [provider copy];
  displayTitleProvider = self->super._displayTitleProvider;
  self->super._displayTitleProvider = v4;

  MEMORY[0x2821F96F8](v4, displayTitleProvider);
}

- (void)setIdentifier:(int)identifier
{
  v3 = *&identifier;
  [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [value _setID:v3];
}

- (void)setLastSelectedTabUUID:(id)d
{
  dCopy = d;
  if (([dCopy isEqualToString:self->super._lastSelectedTabUUID] & 1) == 0)
  {
    v4 = [dCopy copy];
    lastSelectedTabUUID = self->super._lastSelectedTabUUID;
    self->super._lastSelectedTabUUID = v4;

    [(WBMutableTabGroup *)self updateLastSelectedTab];
  }
}

- (void)setTabs:(id)tabs
{
  tabsCopy = tabs;
  if (([tabsCopy isEqual:self->super._tabs] & 1) == 0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __29__WBMutableTabGroup_setTabs___block_invoke;
    v5[3] = &unk_279E756B0;
    v6 = tabsCopy;
    selfCopy = self;
    [(WBMutableTabGroup *)self _performWithMutableTabs:v5];
  }
}

void __29__WBMutableTabGroup_setTabs___block_invoke(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) differenceFromArray:a2 withOptions:4];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [v3 insertions];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v9 object];
        if ([v9 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v10 didInsertIntoTabGroup:*(a1 + 40)];
        }

        else
        {
          [v10 setMoved:1];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v6);
  }

  v11 = [v3 removals];
  v12 = [v11 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_5];

  v13 = [v12 count];
  if (v13)
  {
    v14 = v13;
    v15 = a1 + 40;
    v16 = [*(a1 + 40) _fixLastSelectedTabIfNeeded];
    v18 = WBS_LOG_CHANNEL_PREFIXTabGroup(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *v15;
      v20 = v18;
      v21 = [v19 privacyPreservingDescription];
      *buf = 134349314;
      v33 = v14;
      v34 = 2114;
      v35 = v21;
      _os_log_impl(&dword_272C20000, v20, OS_LOG_TYPE_DEFAULT, "Deleting %{public}zu tabs from tab group after set: %{public}@", buf, 0x16u);
    }

    v22 = [*(*v15 + 8) count];
    if (v14 == v22)
    {
      v24 = WBS_LOG_CHANNEL_PREFIXTabGroup(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __29__WBMutableTabGroup_setTabs___block_invoke_cold_1((a1 + 40), v24);
      }
    }
  }

  [*(*(a1 + 40) + 24) addObjectsFromArray:v12];
  [v12 makeObjectsPerformSelector:sel_markClean];
  v25 = [*(a1 + 32) mutableCopy];
  v26 = *(a1 + 40);
  v27 = *(v26 + 8);
  *(v26 + 8) = v25;
}

id __29__WBMutableTabGroup_setTabs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v2 object];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSyncable:(BOOL)syncable
{
  syncableCopy = syncable;
  [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [value _setSyncable:syncableCopy];
}

- (void)setKind:(int64_t)kind
{
  if (self->super._kind != kind)
  {
    self->super._kind = kind;
    isPrivateBrowsing = [(WBTabGroup *)self isLocal]|| [(WBTabGroup *)self isPrivateBrowsing];
    [(WBMutableTabGroup *)self setHidden:isPrivateBrowsing];
    [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
    value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    v9 = value;
    if (kind == 3)
    {
      v8 = MEMORY[0x277CBEC38];
    }

    else
    {
      v8 = 0;
    }

    [value setExtraAttributesValue:v8 forKey:@"IsUnnamed"];
  }
}

- (void)setTitle:(id)title
{
  bookmarkStorage = self->super._bookmarkStorage;
  titleCopy = title;
  [(WBSCopyOnWriteValue *)bookmarkStorage willModify];
  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [value setTitle:titleCopy];
}

- (void)setDeletedTabs:(id)tabs
{
  tabsCopy = tabs;
  if (([tabsCopy isEqualToArray:self->super._deletedTabs] & 1) == 0)
  {
    v4 = [tabsCopy mutableCopy];
    deletedTabs = self->super._deletedTabs;
    self->super._deletedTabs = v4;
  }
}

- (void)setProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [identifierCopy copy];
    profileIdentifier = self->super._profileIdentifier;
    self->super._profileIdentifier = v4;
  }
}

- (void)setHidden:(BOOL)hidden
{
  if ([(WBTabGroup *)self isHidden]!= hidden)
  {
    value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    extraAttributes = [value extraAttributes];
    if (extraAttributes)
    {
      value2 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
      extraAttributes2 = [value2 extraAttributes];
      dictionary = [extraAttributes2 mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"com.apple.bookmarks.OmitFromUI"];
    [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
    value3 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    [value3 setExtraAttributes:dictionary];
  }
}

- (void)markBackgroundImageAsModified
{
  [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
  v3 = MEMORY[0x277CCABB0];
  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  backgroundImageModifiedState = [value backgroundImageModifiedState];
  v5 = [v3 numberWithInt:{objc_msgSend(backgroundImageModifiedState, "BOOLValue") ^ 1}];
  value2 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [value2 setBackgroundImageModifiedState:v5];
}

- (WBSCRDTPosition)syncPosition
{
  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  syncPosition = [value syncPosition];

  return syncPosition;
}

- (void)setSyncPosition:(id)position
{
  bookmarkStorage = self->super._bookmarkStorage;
  positionCopy = position;
  [(WBSCopyOnWriteValue *)bookmarkStorage willModify];
  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [value setSyncPosition:positionCopy];
}

- (void)appendTabs:(id)tabs
{
  tabs = self->super._tabs;
  tabsCopy = tabs;
  lastObject = [(NSArray *)tabs lastObject];
  [(WBMutableTabGroup *)self insertTabs:tabsCopy afterTab:lastObject];
}

- (void)_performWithMutableTabs:(id)tabs
{
  (*(tabs + 2))(tabs, self->super._tabs);

  [(WBTabGroup *)self _tabsDidChange];
}

- (void)insertTabs:(id)tabs afterTab:(id)tab
{
  v34 = *MEMORY[0x277D85DE8];
  tabsCopy = tabs;
  tabCopy = tab;
  v8 = WBS_LOG_CHANNEL_PREFIXTabGroup(tabCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    *buf = 134217984;
    v33 = [tabsCopy count];
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Inserting %zu tabs", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = tabsCopy;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        v17 = WBS_LOG_CHANNEL_PREFIXTabGroup(v11, v12);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = v17;
          privacyPreservingDescription = [v16 privacyPreservingDescription];
          *buf = 138543362;
          v33 = privacyPreservingDescription;
          _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_INFO, "Tab marked as added: %{public}@", buf, 0xCu);
        }

        v11 = [v16 didInsertIntoTabGroup:self];
        ++v15;
      }

      while (v13 != v15);
      v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v13 = v11;
    }

    while (v11);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __41__WBMutableTabGroup_insertTabs_afterTab___block_invoke;
  v23[3] = &unk_279E756D8;
  v24 = v10;
  selfCopy = self;
  v26 = tabCopy;
  v20 = tabCopy;
  v21 = v10;
  [(WBMutableTabGroup *)self _performWithMutableTabs:v23];
}

void __41__WBMutableTabGroup_insertTabs_afterTab___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v7 = [v4 uuid];
  v6 = [v3 mutableTabWithUUID:v7];
  [v5 safari_insertObjects:v2 afterObject:v6];
}

- (id)duplicateTabs:(id)tabs
{
  v19 = *MEMORY[0x277D85DE8];
  tabsCopy = tabs;
  v6 = WBS_LOG_CHANNEL_PREFIXTabGroup(tabsCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    *buf = 134217984;
    v18 = [tabsCopy count];
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "Duplicating %zu tabs", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEB18] array];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __35__WBMutableTabGroup_duplicateTabs___block_invoke;
  v13[3] = &unk_279E756D8;
  v14 = tabsCopy;
  selfCopy = self;
  v16 = array;
  v9 = array;
  v10 = tabsCopy;
  [(WBMutableTabGroup *)self _performWithMutableTabs:v13];
  v11 = [v9 copy];

  return v11;
}

void __35__WBMutableTabGroup_duplicateTabs___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v3 indexOfObject:{v9, v15}];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v10;
          v12 = [v9 mutableDuplicate];
          [v12 didInsertIntoTabGroup:*(a1 + 40)];
          [v3 insertObject:v12 atIndex:v11 + 1];
          v13 = *(a1 + 48);
          v14 = [v12 copy];
          [v13 addObject:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)deleteTabs:(id)tabs
{
  v19 = *MEMORY[0x277D85DE8];
  tabsCopy = tabs;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __32__WBMutableTabGroup_deleteTabs___block_invoke;
  v16[3] = &unk_279E75700;
  v16[4] = self;
  v5 = [tabsCopy safari_mapObjectsUsingBlock:v16];
  v7 = WBS_LOG_CHANNEL_PREFIXTabGroup(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [tabsCopy count];
    *buf = 134217984;
    v18 = v9;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "%zu tabs deleted", buf, 0xCu);
  }

  [v5 makeObjectsPerformSelector:sel_markClean];
  [(NSMutableArray *)self->super._deletedTabs addObjectsFromArray:v5];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __32__WBMutableTabGroup_deleteTabs___block_invoke_9;
  v14 = &unk_279E75728;
  v15 = v5;
  v10 = v5;
  [(WBMutableTabGroup *)self _performWithMutableTabs:&v11];
  [(WBMutableTabGroup *)self _fixLastSelectedTabIfNeeded:v11];
}

id __32__WBMutableTabGroup_deleteTabs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 mutableTabWithUUID:v3];

  return v4;
}

- (void)removeTab:(id)tab
{
  v16 = *MEMORY[0x277D85DE8];
  tabCopy = tab;
  v6 = WBS_LOG_CHANNEL_PREFIXTabGroup(tabCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    privacyPreservingDescription = [tabCopy privacyPreservingDescription];
    *buf = 138543362;
    v15 = privacyPreservingDescription;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "Removing tab %{public}@", buf, 0xCu);
  }

  uuid = [tabCopy uuid];
  v10 = [(WBMutableTabGroup *)self mutableTabWithUUID:uuid];

  [v10 didRemoveFromTabGroup];
  [v10 markClean];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__WBMutableTabGroup_removeTab___block_invoke;
  v12[3] = &unk_279E75728;
  v13 = v10;
  v11 = v10;
  [(WBMutableTabGroup *)self _performWithMutableTabs:v12];
}

- (void)reorderTab:(id)tab afterTab:(id)afterTab
{
  v25 = *MEMORY[0x277D85DE8];
  tabCopy = tab;
  afterTabCopy = afterTab;
  v9 = WBS_LOG_CHANNEL_PREFIXTabGroup(afterTabCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    privacyPreservingDescription = [tabCopy privacyPreservingDescription];
    privacyPreservingDescription2 = [afterTabCopy privacyPreservingDescription];
    *buf = 138543618;
    v22 = privacyPreservingDescription;
    v23 = 2114;
    v24 = privacyPreservingDescription2;
    _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "Reordering tab %{public}@ after tab %{public}@", buf, 0x16u);
  }

  uuid = [tabCopy uuid];
  v14 = [(WBMutableTabGroup *)self mutableTabWithUUID:uuid];

  if (v14)
  {
    if (afterTabCopy)
    {
      uuid2 = [afterTabCopy uuid];
      v16 = [(WBMutableTabGroup *)self mutableTabWithUUID:uuid2];
    }

    else
    {
      v16 = 0;
    }

    [v14 setMoved:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__WBMutableTabGroup_reorderTab_afterTab___block_invoke;
    v18[3] = &unk_279E756B0;
    v19 = v14;
    v20 = v16;
    v17 = v16;
    [(WBMutableTabGroup *)self _performWithMutableTabs:v18];
  }
}

void __41__WBMutableTabGroup_reorderTab_afterTab___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 removeObject:v3];
  [v4 safari_insertObject:*(a1 + 32) afterObject:*(a1 + 40)];
}

- (void)truncateToNumberOfTabs:(unint64_t)tabs
{
  if ([(NSArray *)self->super._tabs count]>= tabs && [(WBTabGroup *)self isSyncable])
  {
    tabs = [(NSArray *)self->super._tabs subarrayWithRange:0, tabs];
    tabs2 = [(NSArray *)self->super._tabs subarrayWithRange:tabs, [(NSArray *)self->super._tabs count]- tabs];
    overflowRemoteTabs = self->super._overflowRemoteTabs;
    self->super._overflowRemoteTabs = tabs2;

    v7 = [tabs mutableCopy];
    tabs = self->super._tabs;
    self->super._tabs = v7;

    [(WBTabGroup *)self _tabsDidChange];
  }
}

- (void)mergeWithTabGroup:(id)group
{
  bookmarkStorage = self->super._bookmarkStorage;
  groupCopy = group;
  [(WBSCopyOnWriteValue *)bookmarkStorage willModify];
  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  value2 = [groupCopy[5] value];
  [value mergeWithBookmark:value2];

  displayTitleProvider = [groupCopy displayTitleProvider];

  displayTitleProvider = displayTitleProvider;
  if (!displayTitleProvider)
  {
    displayTitleProvider = self->super._displayTitleProvider;
  }

  v9 = MEMORY[0x2743D6830](displayTitleProvider);
  v10 = self->super._displayTitleProvider;
  self->super._displayTitleProvider = v9;
}

void __29__WBMutableTabGroup_setTabs___block_invoke_cold_1(void **a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_272C20000, v3, OS_LOG_TYPE_ERROR, "Deleted all previous tabs from tab group after set: %{public}@", &v5, 0xCu);
}

@end