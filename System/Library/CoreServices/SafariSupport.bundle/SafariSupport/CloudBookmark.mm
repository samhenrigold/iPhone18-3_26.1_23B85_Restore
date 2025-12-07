@interface CloudBookmark
+ (id)_decodedSyncDataInData:(id)data;
+ (id)cloudBookmarkForReparentedItemWithRecordName:(id)name inDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater;
+ (id)cloudBookmarkToMigrateItemWithRecordName:(id)name inDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater;
+ (id)cloudBookmarkWithAddedRecord:(id)record configuration:(id)configuration inDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater;
+ (id)cloudBookmarkWithChange:(void *)change databaseAccessor:(id)accessor updater:(id)updater;
+ (id)cloudBookmarkWithRecordName:(id)name inDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater;
+ (id)positionForItemWithRecordName:(id)name inDatabase:(void *)database databaseAccessor:(id)accessor;
+ (void)applyPendingReferences:(id)references toItemWithRecordName:(id)name inDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater;
+ (void)updateSyncDataGenerationsWithChange:(void *)change databaseAccessor:(id)accessor updater:(id)updater;
- (BOOL)_canApplyValue:(id)value withGeneration:(id)generation toAttribute:(id)attribute updater:(id)updater;
- (BOOL)_updateRecordWithChange:(void *)change updater:(id)updater;
- (BOOL)_updateRecordWithMissingAttributesWithUpdater:(id)updater;
- (BOOL)isDuplicateOfBookmark:(id)bookmark;
- (id)_createParentFolderReferenceWithRecordName:(id)name updater:(id)updater;
- (id)_createRecordIDWithName:(id)name updater:(id)updater;
- (id)_createRecordWithRecordName:(id)name updater:(id)updater;
- (id)_generateIdentityHashUsingUpdater:(id)updater;
- (id)_initWithAddedRecord:(id)record configuration:(id)configuration forItem:(void *)item databaseAccessor:(id)accessor updater:(id)updater;
- (id)_initWithChange:(void *)change databaseAccessor:(id)accessor updater:(id)updater;
- (id)_initWithConfiguration:(id)configuration deleteChange:(void *)change databaseAccessor:(id)accessor updater:(id)updater;
- (id)_initWithItem:(void *)item configuration:(id)configuration databaseAccessor:(id)accessor;
- (id)_initWithItem:(void *)item configuration:(id)configuration syncData:(id)data databaseAccessor:(id)accessor;
- (id)_initWithItemToMigrate:(void *)migrate configuration:(id)configuration databaseAccessor:(id)accessor updater:(id)updater;
- (id)_initWithReparentedItem:(void *)item configuration:(id)configuration databaseAccessor:(id)accessor updater:(id)updater;
- (id)_modifiedOrLocalIdentityHashWithUpdater:(id)updater;
- (id)_modifiedOrLocalParentReferenceWithUpdater:(id)updater;
- (id)_transformedModifiedOrLocalValueForKey:(id)key isEncrypted:(BOOL *)encrypted;
- (id)modifiedOrLocalValueForKey:(id)key;
- (unint64_t)_resultByMergingMinimumAPIVersionWithRecord:(id)record;
- (unint64_t)_resultByMergingParentAndPositionWithRecord:(id)record usingUpdater:(id)updater;
- (unint64_t)_resultByMergingStateWithRecord:(id)record shouldContinueMerge:(BOOL *)merge;
- (unint64_t)duplicateHash;
- (unint64_t)resultFromMergingRecord:(id)record usingUpdater:(id)updater isLocalUpdateOnly:(BOOL)only;
- (void)_applyPendingReferences:(id)references;
- (void)_loadAttributesForKnownKeysIntoEmptyItemUsingRemoteRecord:(id)record updater:(id)updater;
- (void)_updateGenerationsForAttributeKeys:(id)keys withDeviceIdentifier:(id)identifier;
- (void)_updateGenerationsForChange:(void *)change withDeviceIdentifier:(id)identifier;
- (void)_updateRecordParentAndPositionWithUpdater:(id)updater;
- (void)_updateRecordWithModifiedAttributes:(id)attributes updater:(id)updater;
- (void)dealloc;
- (void)saveAssetsIfNeededWithUpdater:(id)updater;
- (void)updateLocalItemWithUpdater:(id)updater;
@end

@implementation CloudBookmark

+ (id)positionForItemWithRecordName:(id)name inDatabase:(void *)database databaseAccessor:(id)accessor
{
  nameCopy = name;
  accessorCopy = accessor;
  v9 = objc_autoreleasePoolPush();
  v10 = [nameCopy isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark];
  if (v10)
  {
    v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10002284C();
    }
  }

  else
  {
    v13 = [accessorCopy copyItemWithServerId:nameCopy database:database];
    if (v13)
    {
      v14 = v13;
      v15 = [accessorCopy copySyncDataWithItem:v13];
      v16 = [WBBookmarkSyncData positionFromContentsOfData:v15];

      CFRelease(v14);
      goto LABEL_7;
    }
  }

  v16 = 0;
LABEL_7:
  objc_autoreleasePoolPop(v9);

  return v16;
}

+ (id)cloudBookmarkWithRecordName:(id)name inDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater
{
  nameCopy = name;
  accessorCopy = accessor;
  updaterCopy = updater;
  v13 = [accessorCopy copyItemWithServerId:nameCopy database:database];
  if (v13)
  {
    v15 = v13;
    v16 = objc_alloc_init(WBSScopeExitHandler);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10001C5BC;
    v45[3] = &unk_1001321B8;
    v45[4] = v15;
    [v16 setHandler:v45];
    v17 = [accessorCopy copySyncDataWithItem:v15];
    v18 = [WBBookmarkSyncData syncDataWithContentsOfData:v17];

    if (v18)
    {
      itemConfigurations = [updaterCopy itemConfigurations];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10001C5C4;
      v42[3] = &unk_1001321E0;
      v44 = v15;
      v22 = accessorCopy;
      v43 = v22;
      v23 = [itemConfigurations safari_firstObjectPassingTest:v42];

      v26 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v24, v25);
      v27 = v26;
      if (v23)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          selfCopy = self;
          v29 = [v22 copyServerIdWithItem:v15];
          *buf = 138543362;
          v47 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Creating CloudBookmark to update locally with record name: %{public}@", buf, 0xCu);

          self = selfCopy;
        }

        v30 = [[self alloc] _initWithItem:v15 configuration:v23 syncData:v18 databaseAccessor:v22];
      }

      else
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100022888(v27, v33, v34, v35, v36, v37, v38, v39);
        }

        v30 = 0;
      }
    }

    else
    {
      v32 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v19, v20);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v47 = nameCopy;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Item with record name does not have sync data: %{public}@", buf, 0xCu);
      }

      v30 = 0;
    }
  }

  else
  {
    v31 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v14);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v47 = nameCopy;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Unknown item with record name: %{public}@", buf, 0xCu);
    }

    v30 = 0;
  }

  return v30;
}

+ (id)cloudBookmarkForReparentedItemWithRecordName:(id)name inDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater
{
  nameCopy = name;
  accessorCopy = accessor;
  updaterCopy = updater;
  v13 = [accessorCopy copyItemWithServerId:nameCopy database:database];
  if (v13)
  {
    v15 = v13;
    v16 = objc_alloc_init(WBSScopeExitHandler);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001C7E0;
    v29[3] = &unk_1001321B8;
    v29[4] = v15;
    [v16 setHandler:v29];
    itemConfigurations = [updaterCopy itemConfigurations];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10001C7E8;
    v26[3] = &unk_1001321E0;
    v28 = v15;
    v18 = accessorCopy;
    v27 = v18;
    v19 = [itemConfigurations safari_firstObjectPassingTest:v26];

    if (v19)
    {
      v22 = [[self alloc] _initWithReparentedItem:v15 configuration:v19 databaseAccessor:v18 updater:updaterCopy];
    }

    else
    {
      v24 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v20, v21);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100022900();
      }

      v22 = 0;
    }
  }

  else
  {
    v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v14);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10002299C();
    }

    v22 = 0;
  }

  return v22;
}

+ (id)cloudBookmarkToMigrateItemWithRecordName:(id)name inDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater
{
  nameCopy = name;
  accessorCopy = accessor;
  updaterCopy = updater;
  v13 = [accessorCopy copyItemWithServerId:nameCopy database:database];
  if (v13)
  {
    v15 = v13;
    v16 = objc_alloc_init(WBSScopeExitHandler);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001CA04;
    v29[3] = &unk_1001321B8;
    v29[4] = v15;
    [v16 setHandler:v29];
    itemConfigurations = [updaterCopy itemConfigurations];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10001CA0C;
    v26[3] = &unk_1001321E0;
    v28 = v15;
    v18 = accessorCopy;
    v27 = v18;
    v19 = [itemConfigurations safari_firstObjectPassingTest:v26];

    if (v19)
    {
      v22 = [[self alloc] _initWithItemToMigrate:v15 configuration:v19 databaseAccessor:v18 updater:updaterCopy];
    }

    else
    {
      v24 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v20, v21);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100022A04();
      }

      v22 = 0;
    }
  }

  else
  {
    v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v14);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100022AA8();
    }

    v22 = 0;
  }

  return v22;
}

+ (void)updateSyncDataGenerationsWithChange:(void *)change databaseAccessor:(id)accessor updater:(id)updater
{
  accessorCopy = accessor;
  updaterCopy = updater;
  v10 = [accessorCopy changeTypeForChange:change];
  deviceIdentifier = [updaterCopy deviceIdentifier];
  v13 = deviceIdentifier;
  if (v10 == 2)
  {
    v14 = [accessorCopy copyServerIdWithChange:change];
    if ([v14 length])
    {
      v16 = [accessorCopy copyDeletedBookmarkSyncDataWithChange:change];
      v17 = [WBBookmarkSyncData syncDataWithContentsOfData:v16];

      if (v17)
      {
        record = [v17 record];

        if (record)
        {
          [v17 clearAllGenerationsExceptState];
          v23 = [v17 incrementGenerationForKey:@"Deleted" withDeviceIdentifier:v13];
          v25 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v23, v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v25;
            v27 = [v17 generationForKey:@"Deleted"];
            *buf = 138543618;
            v51 = v14;
            v52 = 2114;
            v53 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Updating state generation of deleted record with name: %{public}@, generation: %{public}@", buf, 0x16u);
          }

          encodedBookmarkSyncData = [v17 encodedBookmarkSyncData];
          [accessorCopy setDeletedBookmarkSyncData:encodedBookmarkSyncData change:change];
        }

        else
        {
          v42 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v21, v22);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_100022D1C();
          }
        }
      }

      else
      {
        v40 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v18, v19);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_100022D88();
        }
      }
    }

    else
    {
      v39 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v15);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_100022DF4();
      }
    }
  }

  else if (v10 >= 2)
  {
    v29 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(deviceIdentifier, v12);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100022CA4();
    }
  }

  else
  {
    itemConfigurations = [updaterCopy itemConfigurations];
    v44 = _NSConcreteStackBlock;
    v45 = 3221225472;
    v46 = sub_10001CDD4;
    v47 = &unk_1001321E0;
    changeCopy = change;
    v31 = accessorCopy;
    v48 = v31;
    v32 = [itemConfigurations safari_firstObjectPassingTest:&v44];

    if (v32)
    {
      v35 = [v31 copyChangedItemWithChange:{change, v44, v45, v46, v47}];
      if (v35)
      {
        v37 = v35;
        v38 = [[self alloc] _initWithItem:v35 configuration:v32 databaseAccessor:v31];
        [v38 _updateGenerationsForChange:change withDeviceIdentifier:v13];
        [v38 updateLocalItemWithUpdater:updaterCopy];
        CFRelease(v37);
      }

      else
      {
        v43 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v36);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_100022B10(v43, change, v31);
        }
      }
    }

    else
    {
      v41 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v33, v34);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_100022BE0();
      }
    }
  }
}

+ (id)cloudBookmarkWithChange:(void *)change databaseAccessor:(id)accessor updater:(id)updater
{
  updaterCopy = updater;
  accessorCopy = accessor;
  v10 = [[self alloc] _initWithChange:change databaseAccessor:accessorCopy updater:updaterCopy];

  return v10;
}

+ (id)cloudBookmarkWithAddedRecord:(id)record configuration:(id)configuration inDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater
{
  recordCopy = record;
  configurationCopy = configuration;
  accessorCopy = accessor;
  updaterCopy = updater;
  safari_recordName = [recordCopy safari_recordName];
  v17 = [accessorCopy copyItemWithServerId:safari_recordName database:database];
  v18 = v17;
  if (v17)
  {
    CFAutorelease(v17);
  }

  itemType = [configurationCopy itemType];
  if (itemType == 1)
  {
    itemSubtype = [configurationCopy itemSubtype];
    if (v18)
    {
      v40 = [accessorCopy itemTypeWithItem:v18];
      if (v40 != 1)
      {
        v42 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v40, v41);
        v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
        if (v43)
        {
          sub_100022EC4();
        }

        v45 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v43, v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          sub_100022F4C();
        }
      }

      v46 = [accessorCopy folderTypeWithFolder:v18];
      if (v46 == itemSubtype)
      {
        goto LABEL_34;
      }

      v48 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v46, v47);
      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
      if (v49)
      {
        v59 = v48;
        v60 = sub_10001D49C(itemSubtype);
        v61 = 138543874;
        v62 = v60;
        v63 = 2048;
        v64 = v18;
        v65 = 2048;
        v66 = [accessorCopy bookmarkTypeWithBookmark:v18];
        _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Expecting %{public}@ folder type for local folder item %p, but got %ld", &v61, 0x20u);
      }

      v51 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v49, v50);
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_34;
      }

      v35 = v51;
      v36 = sub_10001D49C(itemSubtype);
      v52 = [accessorCopy bookmarkTypeWithBookmark:v18];
      v61 = 138543875;
      v62 = v36;
      v63 = 2113;
      v64 = v18;
      v65 = 2048;
      v66 = v52;
      v38 = "Expecting %{public}@ folder type for local folder item %{private}@, but got %ld";
LABEL_27:
      _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, v38, &v61, 0x20u);

LABEL_34:
      v54 = [[self alloc] _initWithAddedRecord:recordCopy configuration:configurationCopy forItem:v18 databaseAccessor:accessorCopy updater:updaterCopy];
      goto LABEL_35;
    }

    v55 = [accessorCopy createFolderWithType:itemSubtype database:database];
LABEL_33:
    v18 = CFAutorelease(v55);
    goto LABEL_34;
  }

  if (!itemType)
  {
    itemSubtype2 = [configurationCopy itemSubtype];
    if (v18)
    {
      v22 = [accessorCopy itemTypeWithItem:v18];
      if (v22)
      {
        v24 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v22, v23);
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
        if (v25)
        {
          sub_100022FD4();
        }

        v27 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v25, v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          sub_10002305C();
        }
      }

      v28 = [accessorCopy bookmarkTypeWithBookmark:v18];
      itemSubtype3 = [configurationCopy itemSubtype];
      if (v28 == itemSubtype3)
      {
        goto LABEL_34;
      }

      v31 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(itemSubtype3, v30);
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
      if (v32)
      {
        v57 = v31;
        v58 = sub_10001D42C(itemSubtype2);
        v61 = 138543874;
        v62 = v58;
        v63 = 2048;
        v64 = v18;
        v65 = 2048;
        v66 = [accessorCopy bookmarkTypeWithBookmark:v18];
        _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Expecting %{public}@ type for local bookmark item %p, but got %ld", &v61, 0x20u);
      }

      v34 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v32, v33);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_34;
      }

      v35 = v34;
      v36 = sub_10001D42C(itemSubtype2);
      v37 = [accessorCopy bookmarkTypeWithBookmark:v18];
      v61 = 138543875;
      v62 = v36;
      v63 = 2113;
      v64 = v18;
      v65 = 2048;
      v66 = v37;
      v38 = "Expecting %{public}@ type for local bookmark item %{private}@, but got %ld";
      goto LABEL_27;
    }

    v55 = [accessorCopy createBookmarkWithType:itemSubtype2 database:database];
    goto LABEL_33;
  }

  v53 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(itemType, v20);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    sub_1000230E4(v53);
  }

  v54 = 0;
LABEL_35:

  return v54;
}

+ (void)applyPendingReferences:(id)references toItemWithRecordName:(id)name inDatabase:(void *)database databaseAccessor:(id)accessor updater:(id)updater
{
  referencesCopy = references;
  nameCopy = name;
  accessorCopy = accessor;
  updaterCopy = updater;
  v16 = objc_autoreleasePoolPush();
  v17 = [nameCopy isEqualToString:WBSCloudBookmarkListRecordNameTopBookmark];
  if (v17)
  {
    v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100023264();
    }
  }

  else
  {
    v20 = [accessorCopy copyItemWithServerId:nameCopy database:database];
    if (v20)
    {
      v22 = v20;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10001D770;
      v35[3] = &unk_1001321B8;
      v35[4] = v20;
      v31 = objc_alloc_init(WBSScopeExitHandler);
      [v31 setHandler:v35];
      itemConfigurations = [updaterCopy itemConfigurations];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10001D778;
      v32[3] = &unk_1001321E0;
      v34 = v22;
      v24 = accessorCopy;
      v33 = v24;
      v25 = [itemConfigurations safari_firstObjectPassingTest:v32];

      if (v25)
      {
        v28 = [[self alloc] _initWithItem:v22 configuration:v25 databaseAccessor:v24];
        [v28 _applyPendingReferences:referencesCopy];
        [v28 updateLocalItemWithUpdater:updaterCopy];
      }

      else
      {
        v30 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v26, v27);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10002318C();
        }
      }
    }

    else
    {
      v29 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v21);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000231F8();
      }
    }
  }

  objc_autoreleasePoolPop(v16);
}

- (id)_initWithItem:(void *)item configuration:(id)configuration databaseAccessor:(id)accessor
{
  accessorCopy = accessor;
  configurationCopy = configuration;
  v10 = objc_opt_class();
  v11 = [accessorCopy copySyncDataWithItem:item];
  v12 = [v10 _decodedSyncDataInData:v11];
  v13 = [(CloudBookmark *)self _initWithItem:item configuration:configurationCopy syncData:v12 databaseAccessor:accessorCopy];

  return v13;
}

- (id)_initWithReparentedItem:(void *)item configuration:(id)configuration databaseAccessor:(id)accessor updater:(id)updater
{
  updaterCopy = updater;
  accessorCopy = accessor;
  configurationCopy = configuration;
  v13 = objc_opt_class();
  v14 = [accessorCopy copySyncDataWithItem:item];
  v15 = [v13 _decodedSyncDataInData:v14];
  v16 = [(CloudBookmark *)self _initWithItem:item configuration:configurationCopy syncData:v15 databaseAccessor:accessorCopy];

  if (!v16)
  {
LABEL_8:
    v25 = 0;
    goto LABEL_9;
  }

  v19 = v16[5];
  v20 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v17, v18);
  v21 = v20;
  if (!v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000232A0();
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v16[8];
    v27 = 138543362;
    v28 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Reparenting record with record name: %{public}@", &v27, 0xCu);
  }

  v23 = v16[1];
  deviceIdentifier = [updaterCopy deviceIdentifier];
  [v23 incrementGenerationForKey:@"ParentAndPosition" withDeviceIdentifier:deviceIdentifier];

  [v16 _updateRecordParentAndPositionWithUpdater:updaterCopy];
  v25 = v16;
LABEL_9:

  return v25;
}

- (id)_initWithChange:(void *)change databaseAccessor:(id)accessor updater:(id)updater
{
  accessorCopy = accessor;
  updaterCopy = updater;
  itemConfigurations = [updaterCopy itemConfigurations];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10001DD94;
  v40[3] = &unk_1001321E0;
  changeCopy = change;
  v11 = accessorCopy;
  v41 = v11;
  v12 = [itemConfigurations safari_firstObjectPassingTest:v40];

  if (v12)
  {
    v15 = [v11 changeTypeForChange:change];
    if (v15 == 2)
    {
      v16 = [v11 copyServerIdWithChange:change];
      if ([v16 length])
      {
        v18 = [(CloudBookmark *)self _initWithConfiguration:v12 deleteChange:change databaseAccessor:v11 updater:updaterCopy];
        self = v18;
LABEL_25:
        v34 = v18;
        goto LABEL_26;
      }

      v33 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v17);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_100023384(v33);
      }

      goto LABEL_15;
    }

    v20 = v15;
    v21 = [v11 copyChangedItemWithChange:change];
    if (v21)
    {
      v23 = v21;
      v16 = objc_alloc_init(WBSScopeExitHandler);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10001DDA0;
      v39[3] = &unk_1001321B8;
      v39[4] = v23;
      [v16 setHandler:v39];
      v24 = objc_opt_class();
      v25 = [v11 copySyncDataWithItem:v23];
      v26 = [v24 _decodedSyncDataInData:v25];
      self = [(CloudBookmark *)self _initWithItem:v23 configuration:v12 syncData:v26 databaseAccessor:v11];

      if (self)
      {
        if (!self->_record)
        {
          v27 = [(CloudBookmark *)self _createRecordWithRecordName:self->_recordName updater:updaterCopy];
          record = self->_record;
          self->_record = v27;

          v29 = [(WBBookmarkSyncData *)self->_syncData setRecord:self->_record];
          v31 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v29, v30);
          v32 = v31;
          if (v20 == 1)
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              sub_10002331C();
            }
          }

          else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            recordName = self->_recordName;
            *buf = 138543362;
            v44 = recordName;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Assigning new record with record name %{public}@ to locally added item", buf, 0xCu);
          }
        }

        if ([(CloudBookmark *)self _updateRecordWithChange:change updater:updaterCopy])
        {
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }

        v18 = selfCopy;
        goto LABEL_25;
      }

LABEL_15:
      v34 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v35 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v22);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_100022B10(v35, change, v11);
    }
  }

  else
  {
    v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v13, v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100023410();
    }
  }

  v34 = 0;
LABEL_27:

  return v34;
}

- (id)_initWithConfiguration:(id)configuration deleteChange:(void *)change databaseAccessor:(id)accessor updater:(id)updater
{
  configurationCopy = configuration;
  accessorCopy = accessor;
  v11 = [accessorCopy copyServerIdWithChange:change];
  p_recordName = &self->_recordName;
  recordName = self->_recordName;
  self->_recordName = v11;

  if (![(NSString *)self->_recordName length])
  {
    v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10002357C();
    }

    goto LABEL_7;
  }

  v15 = [CKRecord safari_folderTypeForRecordName:*p_recordName];
  if (!v15)
  {
    v21 = [accessorCopy copyDeletedBookmarkSyncDataWithChange:change];
    v22 = [WBBookmarkSyncData syncDataWithContentsOfData:v21];

    record = [v22 record];

    if (!record)
    {
      v36 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v24, v25);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_100023514();
      }

      selfCopy = 0;
      goto LABEL_21;
    }

    record2 = [v22 record];
    safari_recordName = [record2 safari_recordName];

    v28 = [safari_recordName isEqualToString:*p_recordName];
    if (v28)
    {
      v30 = [(CloudBookmark *)self _initWithItem:0 configuration:configurationCopy syncData:v22 databaseAccessor:accessorCopy];
      self = v30;
      if (v30)
      {
        [(CloudBookmark *)v30 setState:1];
        [(CKRecord *)self->_record safari_setState:1];
        v31 = [(WBBookmarkSyncData *)self->_syncData generationForKey:@"Deleted"];
        v32 = [(CKRecord *)self->_record safari_setGeneration:v31 forKey:@"Deleted"];
        v34 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v32, v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = self->_recordName;
          v39 = 138543618;
          v40 = v35;
          v41 = 2114;
          v42 = v31;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Preparing record with name %{public}@ to mark as deleted on the server with generation: %{public}@", &v39, 0x16u);
        }

        self = self;

        selfCopy = self;
        goto LABEL_20;
      }
    }

    else
    {
      v37 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v28, v29);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1000234AC();
      }
    }

    selfCopy = 0;
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v15, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *p_recordName;
    v39 = 138543362;
    v40 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Ignoring Delete Change object for built-in record with name: %{public}@.", &v39, 0xCu);
  }

LABEL_7:
  selfCopy = 0;
LABEL_22:

  return selfCopy;
}

- (id)_initWithItem:(void *)item configuration:(id)configuration syncData:(id)data databaseAccessor:(id)accessor
{
  configurationCopy = configuration;
  dataCopy = data;
  accessorCopy = accessor;
  v33.receiver = self;
  v33.super_class = CloudBookmark;
  v14 = [(CloudBookmark *)&v33 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_11;
  }

  objc_storeStrong(&v14->_configuration, configuration);
  objc_storeStrong(&v15->_databaseAccessor, accessor);
  if (item)
  {
    v16 = [accessorCopy copyServerIdWithItem:item];
    recordName = v15->_recordName;
    v15->_recordName = v16;

    if ([(NSString *)v15->_recordName length])
    {
      v19 = CFRetain(item);
      v15->_item = v19;
      v20 = [accessorCopy copyParentServerIdWithItem:v19];
      v21 = [v20 copy];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = WBSCloudBookmarkListRecordNameTopBookmark;
      }

      objc_storeStrong(&v15->_parentRecordName, v23);

      goto LABEL_8;
    }

    v31 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v18);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1000235E4();
    }

LABEL_11:
    v30 = 0;
    goto LABEL_12;
  }

LABEL_8:
  objc_storeStrong(&v15->_syncData, data);
  record = [dataCopy record];
  record = v15->_record;
  v15->_record = record;

  v26 = +[NSMutableDictionary dictionary];
  remotelyModifiedAttributes = v15->_remotelyModifiedAttributes;
  v15->_remotelyModifiedAttributes = v26;

  v28 = +[NSMutableDictionary dictionary];
  remotelyModifiedAssetAttributes = v15->_remotelyModifiedAssetAttributes;
  v15->_remotelyModifiedAssetAttributes = v28;

  v30 = v15;
LABEL_12:

  return v30;
}

- (id)_initWithAddedRecord:(id)record configuration:(id)configuration forItem:(void *)item databaseAccessor:(id)accessor updater:(id)updater
{
  recordCopy = record;
  configurationCopy = configuration;
  accessorCopy = accessor;
  updaterCopy = updater;
  v69.receiver = self;
  v69.super_class = CloudBookmark;
  v17 = [(CloudBookmark *)&v69 init];
  v18 = v17;
  if (!v17)
  {
LABEL_8:
    v50 = 0;
    goto LABEL_21;
  }

  objc_storeStrong(&v17->_configuration, configuration);
  objc_storeStrong(&v18->_databaseAccessor, accessor);
  objc_storeStrong(&v18->_record, record);
  safari_recordName = [(CKRecord *)v18->_record safari_recordName];
  v20 = [safari_recordName copy];
  recordName = v18->_recordName;
  v18->_recordName = v20;

  if (![(NSString *)v18->_recordName length])
  {
    v49 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v22);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_10002365C();
    }

    goto LABEL_8;
  }

  v18->_item = CFRetain(item);
  [(WBSBookmarkDBAccess *)v18->_databaseAccessor setServerId:v18->_recordName item:item];
  v23 = +[NSMutableDictionary dictionary];
  remotelyModifiedAttributes = v18->_remotelyModifiedAttributes;
  v18->_remotelyModifiedAttributes = v23;

  v25 = +[NSMutableDictionary dictionary];
  remotelyModifiedAssetAttributes = v18->_remotelyModifiedAssetAttributes;
  v18->_remotelyModifiedAssetAttributes = v25;

  v27 = objc_alloc_init(WBBookmarkSyncData);
  syncData = v18->_syncData;
  v18->_syncData = v27;

  [(WBBookmarkSyncData *)v18->_syncData setRecord:v18->_record];
  v29 = [(CKRecord *)v18->_record safari_generationForKey:@"ParentAndPosition"];
  if ([v29 isValid])
  {
    v30 = [(CKRecord *)v18->_record objectForKeyedSubscript:@"ParentFolder"];
    recordID = [v30 recordID];
    recordName = [recordID recordName];
    v33 = [recordName copy];
    parentRecordName = v18->_parentRecordName;
    v18->_parentRecordName = v33;

    record = v18->_record;
    v36 = [configurationCopy valueTransformerForAttributeKey:@"Position"];
    v37 = [(CKRecord *)record safari_positionDictionaryRepresentationUsingValueTransformer:v36];
    [(WBBookmarkSyncData *)v18->_syncData setPositionDictionaryRepresentation:v37];

    v38 = [(WBBookmarkSyncData *)v18->_syncData setGeneration:v29 forKey:@"ParentAndPosition"];
    v40 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v38, v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      log = v40;
      v41 = objc_opt_class();
      v42 = configurationCopy;
      v43 = accessorCopy;
      v44 = v29;
      v45 = recordCopy;
      v47 = v18->_recordName;
      v46 = v18->_parentRecordName;
      position = [(CloudBookmark *)v18 position];
      *buf = 138544130;
      v71 = v41;
      v72 = 2114;
      v73 = v47;
      v74 = 2114;
      v75 = v46;
      recordCopy = v45;
      v29 = v44;
      accessorCopy = v43;
      configurationCopy = v42;
      v76 = 2114;
      v77 = position;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Creating %{public}@ record with name %{public}@ to add locally with parent: %{public}@ and position: %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v51 = [(WBSBookmarkDBAccess *)v18->_databaseAccessor copyParentServerIdWithItem:v18->_item];
    v52 = [v51 copy];
    v53 = v52;
    if (v52)
    {
      v54 = v52;
    }

    else
    {
      v54 = WBSCloudBookmarkListRecordNameTopBookmark;
    }

    objc_storeStrong(&v18->_parentRecordName, v54);

    v57 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v55, v56);
    v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
    if (v58)
    {
      v60 = v57;
      v61 = objc_opt_class();
      v62 = v18->_recordName;
      v63 = v18->_parentRecordName;
      *buf = 138543874;
      v71 = v61;
      v72 = 2114;
      v73 = v62;
      v74 = 2114;
      v75 = v63;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Creating %{public}@ record with name %{public}@ to add locally with parent: %{public}@", buf, 0x20u);
    }

    v64 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v58, v59);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_100023620();
    }
  }

  v65 = [(CKRecord *)v18->_record safari_generationForKey:@"Deleted"];
  if ([v65 isValid])
  {
    [(WBBookmarkSyncData *)v18->_syncData setState:[(CKRecord *)v18->_record safari_state]];
    [(WBBookmarkSyncData *)v18->_syncData setGeneration:v65 forKey:@"Deleted"];
  }

  v66 = [(CKRecord *)v18->_record safari_generationForKey:@"MinimumAPIVersion"];
  if ([v66 isValid])
  {
    [(WBBookmarkSyncData *)v18->_syncData setMinimumAPIVersion:[(CKRecord *)v18->_record safari_minimumAPIVersion]];
    [(WBBookmarkSyncData *)v18->_syncData setGeneration:v66 forKey:@"MinimumAPIVersion"];
  }

  [(CloudBookmark *)v18 _loadAttributesForKnownKeysIntoEmptyItemUsingRemoteRecord:v18->_record updater:updaterCopy];
  [(CloudBookmark *)v18 updateLocalItemWithUpdater:updaterCopy];
  v50 = v18;

LABEL_21:
  return v50;
}

- (id)_initWithItemToMigrate:(void *)migrate configuration:(id)configuration databaseAccessor:(id)accessor updater:(id)updater
{
  configurationCopy = configuration;
  accessorCopy = accessor;
  updaterCopy = updater;
  v62.receiver = self;
  v62.super_class = CloudBookmark;
  v14 = [(CloudBookmark *)&v62 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_configuration, configuration);
    objc_storeStrong(&v15->_databaseAccessor, accessor);
    v16 = [(WBSBookmarkDBAccess *)v15->_databaseAccessor copyServerIdWithItem:migrate];
    recordName = v15->_recordName;
    v15->_recordName = v16;

    if ([(NSString *)v15->_recordName length])
    {
      v19 = CFRetain(migrate);
      v15->_item = v19;
      v20 = [(WBSBookmarkDBAccess *)v15->_databaseAccessor copyParentServerIdWithItem:v19];
      v21 = [v20 copy];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = WBSCloudBookmarkListRecordNameTopBookmark;
      }

      objc_storeStrong(&v15->_parentRecordName, v23);

      v24 = +[NSMutableDictionary dictionary];
      remotelyModifiedAttributes = v15->_remotelyModifiedAttributes;
      v15->_remotelyModifiedAttributes = v24;

      v26 = +[NSMutableDictionary dictionary];
      remotelyModifiedAssetAttributes = v15->_remotelyModifiedAssetAttributes;
      v15->_remotelyModifiedAssetAttributes = v26;

      v28 = [(WBSBookmarkDBAccess *)v15->_databaseAccessor copySyncDataWithItem:migrate];
      v29 = [WBBookmarkSyncData syncDataWithContentsOfData:v28];
      syncData = v15->_syncData;
      v15->_syncData = v29;

      record = [(WBBookmarkSyncData *)v15->_syncData record];
      record = v15->_record;
      v15->_record = record;

      v33 = v15->_record;
      v36 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v34, v35);
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      if (!v33)
      {
        if (v37)
        {
          v49 = v36;
          v50 = objc_opt_class();
          v51 = v15->_recordName;
          *buf = 138543618;
          v64 = v50;
          v65 = 2114;
          v66 = v51;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Creating %{public}@ to migrate record unknown to the server with name: %{public}@", buf, 0x16u);
        }

        v52 = [(CloudBookmark *)v15 _createRecordWithRecordName:v15->_recordName updater:updaterCopy];
        v53 = v15->_record;
        v15->_record = v52;

        v54 = objc_alloc_init(WBBookmarkSyncData);
        v55 = v15->_syncData;
        v15->_syncData = v54;

        [(WBBookmarkSyncData *)v15->_syncData setRecord:v15->_record];
        deviceIdentifier2 = [accessorCopy copyAttributesWithItem:migrate];
        deviceIdentifier = [updaterCopy deviceIdentifier];
        [(WBBookmarkSyncData *)v15->_syncData incrementGenerationForKey:@"ParentAndPosition" withDeviceIdentifier:deviceIdentifier];
        allKeys = [deviceIdentifier2 allKeys];
        [(CloudBookmark *)v15 _updateGenerationsForAttributeKeys:allKeys withDeviceIdentifier:deviceIdentifier];

        [(CloudBookmark *)v15 _updateRecordParentAndPositionWithUpdater:updaterCopy];
        [(CloudBookmark *)v15 _updateRecordWithModifiedAttributes:deviceIdentifier2 updater:updaterCopy];
        v48 = v15;

        goto LABEL_24;
      }

      if (v37)
      {
        v38 = v36;
        v39 = objc_opt_class();
        v40 = v15->_recordName;
        *buf = 138543618;
        v64 = v39;
        v65 = 2114;
        v66 = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Creating %{public}@ to complement saved record with name: %{public}@", buf, 0x16u);
      }

      deviceIdentifier2 = [updaterCopy deviceIdentifier];
      v42 = [(CloudBookmark *)v15 _updateRecordWithMissingAttributesWithUpdater:updaterCopy];
      position = [(WBBookmarkSyncData *)v15->_syncData position];
      if (position)
      {
      }

      else if (![CKRecord safari_folderTypeForRecordName:v15->_recordName])
      {
        v61 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v58);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          sub_1000236C4();
        }

        [(WBBookmarkSyncData *)v15->_syncData incrementGenerationForKey:@"ParentAndPosition" withDeviceIdentifier:deviceIdentifier2];
        [(CloudBookmark *)v15 _updateRecordParentAndPositionWithUpdater:updaterCopy];
        v59 = v15;
        goto LABEL_23;
      }

      if (v42)
      {
        v59 = v15;
      }

      else
      {
        v59 = 0;
      }

LABEL_23:
      v48 = v59;
LABEL_24:

      goto LABEL_25;
    }

    v44 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v18);
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
    if (v45)
    {
      sub_10002372C();
    }

    v47 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v45, v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      sub_100023794();
    }
  }

  v48 = 0;
LABEL_25:

  return v48;
}

- (void)dealloc
{
  item = self->_item;
  if (item)
  {
    CFRelease(item);
  }

  v4.receiver = self;
  v4.super_class = CloudBookmark;
  [(CloudBookmark *)&v4 dealloc];
}

- (BOOL)_updateRecordWithChange:(void *)change updater:(id)updater
{
  updaterCopy = updater;
  if ([(WBSBookmarkDBAccess *)self->_databaseAccessor changeTypeForChange:change])
  {
    v7 = [(WBSBookmarkDBAccess *)self->_databaseAccessor changeIsMoveChange:change];
  }

  else
  {
    v7 = 1;
  }

  v8 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyModifiedAttributesWithChange:change];
  v9 = WBBookmarkSyncModifiedAttributesForKeys();
  v10 = v9 | v7 & 1;
  v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v9, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = objc_opt_class();
    recordName = self->_recordName;
    v16 = sub_10001CE58(change, self->_databaseAccessor);
    v17 = WBDescriptionForBookmarkSyncModifiedAttributes();
    v25 = 138544130;
    v26 = v14;
    v27 = 2114;
    v28 = recordName;
    v29 = 2114;
    v30 = v16;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Preparing %{public}@ record with name: %{public}@ for change of type %{public}@ to save to the server with updated keys: <%{public}@>", &v25, 0x2Au);
  }

  modifiedAttributeMask = [(WBBookmarkSyncData *)self->_syncData modifiedAttributeMask];
  if (v10 != modifiedAttributeMask)
  {
    v20 = modifiedAttributeMask ^ v10;
    v21 = (modifiedAttributeMask ^ v10) & v10;
    if ((v20 & modifiedAttributeMask) != 0 && (v22 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(modifiedAttributeMask, v19), modifiedAttributeMask = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR), modifiedAttributeMask))
    {
      sub_100023804(v22);
      if (!v21)
      {
        goto LABEL_12;
      }
    }

    else if (!v21)
    {
      goto LABEL_12;
    }

    v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(modifiedAttributeMask, v19);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10002389C(v23);
    }
  }

LABEL_12:
  if (v7)
  {
    [(CloudBookmark *)self _updateRecordParentAndPositionWithUpdater:updaterCopy];
  }

  if ([v8 count])
  {
    [(CloudBookmark *)self _updateRecordWithModifiedAttributes:v8 updater:updaterCopy];
    v7 = 1;
  }

  return v7 & 1;
}

- (id)_createRecordIDWithName:(id)name updater:(id)updater
{
  updaterCopy = updater;
  nameCopy = name;
  v7 = [CKRecordID alloc];
  bookmarksRecordZoneID = [updaterCopy bookmarksRecordZoneID];

  v9 = [v7 initWithRecordName:nameCopy zoneID:bookmarksRecordZoneID];

  return v9;
}

- (id)_createRecordWithRecordName:(id)name updater:(id)updater
{
  updaterCopy = updater;
  nameCopy = name;
  v8 = [CKRecord alloc];
  recordType = [(CloudBookmarkItemConfiguration *)self->_configuration recordType];
  v10 = [(CloudBookmark *)self _createRecordIDWithName:nameCopy updater:updaterCopy];

  v11 = [v8 initWithRecordType:recordType recordID:v10];

  return v11;
}

- (id)_createParentFolderReferenceWithRecordName:(id)name updater:(id)updater
{
  updaterCopy = updater;
  v6 = [CKReference alloc];
  v7 = [(CloudBookmark *)self _createRecordIDWithName:self->_parentRecordName updater:updaterCopy];

  v8 = [v6 initWithRecordID:v7 action:0];

  return v8;
}

- (unint64_t)duplicateHash
{
  parentRecordName = [(CloudBookmark *)self parentRecordName];
  v4 = [parentRecordName hash];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  identityHashKeys = [(CloudBookmarkItemConfiguration *)self->_configuration identityHashKeys];
  v6 = [identityHashKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(identityHashKeys);
        }

        v10 = [(CloudBookmark *)self modifiedOrLocalValueForKey:*(*(&v12 + 1) + 8 * v9)];
        v4 ^= [v10 hash];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [identityHashKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isDuplicateOfBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  configuration = self->_configuration;
  configuration = [bookmarkCopy configuration];
  LODWORD(configuration) = [(CloudBookmarkItemConfiguration *)configuration isEqual:configuration];

  if (configuration && (-[CloudBookmark parentRecordName](self, "parentRecordName"), v7 = objc_claimAutoreleasedReturnValue(), [bookmarkCopy parentRecordName], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    identityHashKeys = [(CloudBookmarkItemConfiguration *)self->_configuration identityHashKeys];
    v11 = [identityHashKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(identityHashKeys);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [(CloudBookmark *)self modifiedOrLocalValueForKey:v15];
          v17 = [bookmarkCopy modifiedOrLocalValueForKey:v15];
          v18 = [v16 isEqual:v17];

          if (!v18)
          {
            v19 = 0;
            goto LABEL_14;
          }
        }

        v12 = [identityHashKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v19 = 1;
LABEL_14:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)modifiedOrLocalValueForKey:(id)key
{
  keyCopy = key;
  changedKeys = [(CKRecord *)self->_record changedKeys];
  v6 = [changedKeys containsObject:keyCopy];

  if (v6)
  {
    v9 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:keyCopy];
    attributeRequiresEncryption = [v9 attributeRequiresEncryption];
    record = self->_record;
    if (attributeRequiresEncryption)
    {
      safari_encryptedValues = [(CKRecord *)record safari_encryptedValues];
      v13 = [safari_encryptedValues objectForKeyedSubscript:keyCopy];
      v14 = [v9 reverseTransformedValue:v13];
    }

    else
    {
      safari_encryptedValues = [(CKRecord *)record objectForKeyedSubscript:keyCopy];
      v14 = [v9 reverseTransformedValue:safari_encryptedValues];
    }
  }

  else
  {
    item = self->_item;
    v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v7, v8);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (item)
    {
      if (v17)
      {
        sub_100023934();
      }

      v14 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyValueForKey:keyCopy item:self->_item];
    }

    else
    {
      if (v17)
      {
        sub_10002399C();
      }

      v14 = 0;
    }
  }

  return v14;
}

- (id)_transformedModifiedOrLocalValueForKey:(id)key isEncrypted:(BOOL *)encrypted
{
  keyCopy = key;
  v7 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:keyCopy];
  *encrypted = [v7 attributeRequiresEncryption];
  changedKeys = [(CKRecord *)self->_record changedKeys];
  v9 = [changedKeys containsObject:keyCopy];

  if (v9)
  {
    record = self->_record;
    if (*encrypted)
    {
      safari_encryptedValues = [(CKRecord *)record safari_encryptedValues];
      v14 = [safari_encryptedValues objectForKeyedSubscript:keyCopy];
LABEL_8:
      v18 = v14;

      goto LABEL_13;
    }

    v18 = [(CKRecord *)record objectForKeyedSubscript:keyCopy];
  }

  else
  {
    item = self->_item;
    v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v10, v11);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (item)
    {
      if (v17)
      {
        sub_100023A04();
      }

      safari_encryptedValues = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyValueForKey:keyCopy item:self->_item];
      v14 = [v7 transformedValue:safari_encryptedValues];
      goto LABEL_8;
    }

    if (v17)
    {
      sub_100023A6C();
    }

    v18 = 0;
  }

LABEL_13:

  return v18;
}

- (id)_modifiedOrLocalParentReferenceWithUpdater:(id)updater
{
  updaterCopy = updater;
  changedKeys = [(CKRecord *)self->_record changedKeys];
  v6 = [changedKeys containsObject:@"Position"];

  if (v6)
  {
    v9 = [(CKRecord *)self->_record objectForKeyedSubscript:@"ParentFolder"];
LABEL_7:
    v13 = v9;
    goto LABEL_8;
  }

  item = self->_item;
  v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v7, v8);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (item)
  {
    if (v12)
    {
      sub_100023AD4();
    }

    v9 = [(CloudBookmark *)self _createParentFolderReferenceWithRecordName:self->_parentRecordName updater:updaterCopy];
    goto LABEL_7;
  }

  if (v12)
  {
    sub_100023B3C();
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)_modifiedOrLocalIdentityHashWithUpdater:(id)updater
{
  updaterCopy = updater;
  changedKeys = [(CKRecord *)self->_record changedKeys];
  v6 = [changedKeys containsObject:@"IdentityHash"];

  if (v6)
  {
    v9 = [(CKRecord *)self->_record objectForKeyedSubscript:@"IdentityHash"];
LABEL_7:
    v13 = v9;
    goto LABEL_8;
  }

  item = self->_item;
  v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v7, v8);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (item)
  {
    if (v12)
    {
      sub_100023BA4();
    }

    v9 = [(CloudBookmark *)self _generateIdentityHashUsingUpdater:updaterCopy];
    goto LABEL_7;
  }

  if (v12)
  {
    sub_100023C0C();
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)_generateIdentityHashUsingUpdater:(id)updater
{
  updaterCopy = updater;
  v4 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  identityHashKeys = [(CloudBookmarkItemConfiguration *)self->_configuration identityHashKeys];
  v6 = [identityHashKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(identityHashKeys);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(CloudBookmark *)self modifiedOrLocalValueForKey:v10];
        v12 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForIdentityHashKey:v10];
        if ([v12 isEmptyValue:v11])
        {
          [v4 addObject:&stru_100137BA8];
        }

        else
        {
          v13 = [v12 transformedValue:v11];
          [v4 addObject:v13];
        }
      }

      v7 = [identityHashKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [updaterCopy generateIdentityHashWithComponents:v4];

  return v14;
}

+ (id)_decodedSyncDataInData:(id)data
{
  v3 = [WBBookmarkSyncData syncDataWithContentsOfData:data];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(WBBookmarkSyncData);
  }

  v6 = v5;

  return v6;
}

- (void)updateLocalItemWithUpdater:(id)updater
{
  updaterCopy = updater;
  v6 = updaterCopy;
  if (self->_item)
  {
    v7 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(updaterCopy, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      recordName = self->_recordName;
      v9 = 138543362;
      v10 = recordName;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Saving record with name %{public}@ locally", &v9, 0xCu);
    }

    [(WBSBookmarkDBAccess *)self->_databaseAccessor setSyncData:[(WBBookmarkSyncData *)self->_syncData encodedBookmarkSyncData] item:self->_item];
    if ([(NSMutableDictionary *)self->_remotelyModifiedAttributes count])
    {
      [(WBSBookmarkDBAccess *)self->_databaseAccessor setModifiedAttributes:self->_remotelyModifiedAttributes item:self->_item];
    }

    [(NSMutableDictionary *)self->_remotelyModifiedAttributes removeAllObjects];
    if (![(CloudBookmarkItemConfiguration *)self->_configuration itemType]&& [(CloudBookmarkItemConfiguration *)self->_configuration itemSubtype]== 1)
    {
      [v6 readingListBookmarkDidUpdate];
    }
  }
}

- (void)saveAssetsIfNeededWithUpdater:(id)updater
{
  updaterCopy = updater;
  remotelyModifiedAssetAttributes = self->_remotelyModifiedAssetAttributes;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001FB54;
  v7[3] = &unk_100132230;
  v7[4] = self;
  v8 = updaterCopy;
  v6 = updaterCopy;
  [(NSMutableDictionary *)remotelyModifiedAssetAttributes enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)_loadAttributesForKnownKeysIntoEmptyItemUsingRemoteRecord:(id)record updater:(id)updater
{
  recordCopy = record;
  updaterCopy = updater;
  knownKeys = [(CloudBookmarkItemConfiguration *)self->_configuration knownKeys];
  v8 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(knownKeys, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    allObjects = [knownKeys allObjects];
    v11 = [allObjects componentsJoinedByString:{@", "}];
    recordName = self->_recordName;
    *buf = 138543618;
    v37 = v11;
    v38 = 2114;
    v39 = recordName;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Loading known keys <%{public}@> from remote record with name: %{public}@", buf, 0x16u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = knownKeys;
  v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  v14 = recordCopy;
  if (v13)
  {
    v15 = v13;
    v16 = *v32;
    v28 = *v32;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        recordCopy = [(CloudBookmarkItemConfiguration *)self->_configuration generationKeyForKey:v18, recordCopy];
        v20 = [v14 safari_generationForKey:recordCopy];
        if ([v20 isValid])
        {
          v21 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:v18];
          if ([v21 attributeRequiresEncryption])
          {
            safari_encryptedValues = [v14 safari_encryptedValues];
            v23 = [safari_encryptedValues objectForKeyedSubscript:v18];

            v16 = v28;
          }

          else
          {
            v23 = [v14 objectForKeyedSubscript:v18];
          }

          if ([(CloudBookmark *)self _canApplyValue:v23 withGeneration:v20 toAttribute:v18 updater:updaterCopy])
          {
            transformedValueClass = [objc_opt_class() transformedValueClass];
            v25 = [transformedValueClass isEqual:objc_opt_class()];
            v26 = [v21 reverseTransformedValueOrNull:v23];
            if (v25)
            {
              [(NSMutableDictionary *)self->_remotelyModifiedAssetAttributes setObject:v26 forKeyedSubscript:v18];
            }

            else
            {
              [(NSMutableDictionary *)self->_remotelyModifiedAttributes setObject:v26 forKeyedSubscript:v18];

              [(WBBookmarkSyncData *)self->_syncData setGeneration:v20 forKey:recordCopy];
            }

            v14 = recordCopy;
            v16 = v28;
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }
}

- (void)_updateGenerationsForChange:(void *)change withDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(WBSBookmarkDBAccess *)self->_databaseAccessor changeTypeForChange:change];
  v8 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyModifiedAttributesWithChange:change];
  allKeys = [v8 allKeys];

  v10 = WBBookmarkSyncModifiedAttributesForKeys();
  modifiedAttributeMask = [(WBBookmarkSyncData *)self->_syncData modifiedAttributeMask];
  if (!v7 || (v12 = [(WBSBookmarkDBAccess *)self->_databaseAccessor changeIsMoveChange:change], v12))
  {
    v10 |= 1uLL;
    v12 = [(WBBookmarkSyncData *)self->_syncData incrementGenerationForKey:@"ParentAndPosition" withDeviceIdentifier:identifierCopy];
  }

  v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v12, v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    databaseAccessor = self->_databaseAccessor;
    recordName = self->_recordName;
    v19 = v14;
    v20 = sub_10001CE58(change, databaseAccessor);
    v21 = WBDescriptionForBookmarkSyncModifiedAttributes();
    v23 = 138543874;
    v24 = recordName;
    v25 = 2114;
    v26 = v20;
    v27 = 2114;
    v28 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Update generations of record %{public}@ with change of type %{public}@, updated keys <%{public}@>", &v23, 0x20u);
  }

  if ((modifiedAttributeMask & ~v10) != 0)
  {
    v22 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v15, v16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100023D0C(v22);
    }
  }

  [(WBBookmarkSyncData *)self->_syncData setModifiedAttributeMask:v10 | modifiedAttributeMask];
  [(CloudBookmark *)self _updateGenerationsForAttributeKeys:allKeys withDeviceIdentifier:identifierCopy];
}

- (void)_updateGenerationsForAttributeKeys:(id)keys withDeviceIdentifier:(id)identifier
{
  keysCopy = keys;
  identifierCopy = identifier;
  v8 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = keysCopy;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(CloudBookmarkItemConfiguration *)self->_configuration generationKeyForKey:*(*(&v15 + 1) + 8 * v13), v15];
        if (([v8 containsObject:v14] & 1) == 0)
        {
          [v8 addObject:v14];
          [(WBBookmarkSyncData *)self->_syncData incrementGenerationForKey:v14 withDeviceIdentifier:identifierCopy];
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)_updateRecordParentAndPositionWithUpdater:(id)updater
{
  parentRecordName = self->_parentRecordName;
  updaterCopy = updater;
  v6 = [(CloudBookmark *)self _createParentFolderReferenceWithRecordName:parentRecordName updater:updaterCopy];
  [(CKRecord *)self->_record setObject:v6 forKeyedSubscript:@"ParentFolder"];

  v7 = [updaterCopy positionForCloudBookmarkWithRecordName:self->_recordName];

  [(WBBookmarkSyncData *)self->_syncData setPosition:v7];
  positionDictionaryRepresentation = [(WBBookmarkSyncData *)self->_syncData positionDictionaryRepresentation];
  record = self->_record;
  v10 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:@"Position"];
  [(CKRecord *)record safari_setPositionDictionaryRepresentation:positionDictionaryRepresentation usingValueTransformer:v10];

  v11 = [(WBBookmarkSyncData *)self->_syncData generationForKey:@"ParentAndPosition"];
  v12 = [(CKRecord *)self->_record safari_setGeneration:v11 forKey:@"ParentAndPosition"];
  v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    recordName = self->_recordName;
    v16 = self->_parentRecordName;
    v19 = 138544130;
    v20 = recordName;
    v21 = 2114;
    v22 = v16;
    v23 = 2114;
    v24 = v11;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Record name: %{public}@, setting parent: %{public}@, generation: %{public}@, position: %{public}@", &v19, 0x2Au);
  }

  if (!v7 && ![CKRecord safari_folderTypeForRecordName:self->_recordName])
  {
    v18 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100023DA4();
    }
  }
}

- (void)_updateRecordWithModifiedAttributes:(id)attributes updater:(id)updater
{
  attributesCopy = attributes;
  updaterCopy = updater;
  v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(updaterCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    allKeys = [attributesCopy allKeys];
    v12 = [allKeys componentsJoinedByString:{@", "}];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Updating locally modified attributes <%{public}@>", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x2020000000;
  v23 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000207C0;
  v20[3] = &unk_100132258;
  v20[4] = self;
  v20[5] = &buf;
  [attributesCopy enumerateKeysAndObjectsUsingBlock:v20];
  minimumAPIVersion = [(WBBookmarkSyncData *)self->_syncData minimumAPIVersion];
  _computeMinimumSyncAPIVersion = [(CloudBookmark *)self _computeMinimumSyncAPIVersion];
  if (_computeMinimumSyncAPIVersion != minimumAPIVersion)
  {
    [(CKRecord *)self->_record safari_setMinimumAPIVersion:_computeMinimumSyncAPIVersion];
    record = self->_record;
    v16 = [(WBBookmarkSyncData *)self->_syncData generationForKey:@"MinimumAPIVersion"];
    deviceIdentifier = [updaterCopy deviceIdentifier];
    v18 = [v16 incrementedGenerationWithDeviceIdentifier:deviceIdentifier];
    [(CKRecord *)record safari_setGeneration:v18 forKey:@"MinimumAPIVersion"];
  }

  if (*(*(&buf + 1) + 24) == 1)
  {
    v19 = [(CloudBookmark *)self _generateIdentityHashUsingUpdater:updaterCopy];
    [(CKRecord *)self->_record setObject:v19 forKeyedSubscript:@"IdentityHash"];
  }

  _Block_object_dispose(&buf, 8);
}

- (BOOL)_updateRecordWithMissingAttributesWithUpdater:(id)updater
{
  updaterCopy = updater;
  deviceIdentifier = [updaterCopy deviceIdentifier];
  v6 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyAttributesWithItem:self->_item];
  v7 = +[NSMutableSet set];
  v8 = [(CloudBookmarkItemConfiguration *)self->_configuration canSaveIdentityHashAttributesInDictionary:v6];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100020B54;
  v30[3] = &unk_100132280;
  v30[4] = self;
  v30[5] = &v31;
  v9 = objc_retainBlock(v30);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100020C44;
  v19 = &unk_1001322A8;
  selfCopy = self;
  v10 = v7;
  v21 = v10;
  v11 = v9;
  v25 = v8;
  v23 = v11;
  v24 = &v26;
  v12 = deviceIdentifier;
  v22 = v12;
  [v6 enumerateKeysAndObjectsUsingBlock:&v16];
  if (*(v27 + 24) == 1)
  {
    v13 = [(CloudBookmark *)self _modifiedOrLocalIdentityHashWithUpdater:updaterCopy, v16, v17, v18, v19, selfCopy, v21];
    [(CKRecord *)self->_record setObject:v13 forKeyedSubscript:@"IdentityHash"];
  }

  v14 = *(v32 + 24);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

- (BOOL)_canApplyValue:(id)value withGeneration:(id)generation toAttribute:(id)attribute updater:(id)updater
{
  valueCopy = value;
  generationCopy = generation;
  attributeCopy = attribute;
  updaterCopy = updater;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [updaterCopy shouldApplyReference:valueCopy withGeneration:generationCopy toAttribute:attributeCopy inRecordWithName:self->_recordName];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (void)_applyPendingReferences:(id)references
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100020EEC;
  v3[3] = &unk_1001322D0;
  v3[4] = self;
  [references enumerateKeysAndObjectsUsingBlock:v3];
}

- (unint64_t)resultFromMergingRecord:(id)record usingUpdater:(id)updater isLocalUpdateOnly:(BOOL)only
{
  onlyCopy = only;
  recordCopy = record;
  recordCopy2 = record;
  updaterCopy = updater;
  v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(updaterCopy, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    recordName = self->_recordName;
    *buf = 138543362;
    v83 = recordName;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Will merge local and remote records. Record name: %{public}@", buf, 0xCu);
  }

  v13 = [(CloudBookmark *)self _resultByMergingMinimumAPIVersionWithRecord:recordCopy2];
  if (v13 != 8)
  {
    v81 = 0;
    v14 = [(CloudBookmark *)self _resultByMergingStateWithRecord:recordCopy2 shouldContinueMerge:&v81];
    v13 |= v14;
    if (v81)
    {
      modifiedAttributeMask = [(CloudBookmark *)self _resultByMergingParentAndPositionWithRecord:recordCopy2 usingUpdater:updaterCopy];
      v18 = modifiedAttributeMask;
      if (onlyCopy)
      {
        modifiedAttributeMask = [(WBBookmarkSyncData *)self->_syncData modifiedAttributeMask];
        v71 = modifiedAttributeMask;
        if (modifiedAttributeMask)
        {
          if (v18)
          {
            v61 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(modifiedAttributeMask, v17);
            modifiedAttributeMask = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
            if (modifiedAttributeMask)
            {
              sub_100023EB0();
            }
          }

          else
          {
            v71 = modifiedAttributeMask & 0xFFFFFFFFFFFFFFFELL;
          }
        }
      }

      else
      {
        v71 = 0;
      }

      v67 = onlyCopy;
      v23 = v18 | v13;
      v24 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(modifiedAttributeMask, v17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_100023EEC();
      }

      v63 = +[NSMutableDictionary dictionary];
      v65 = +[NSMutableDictionary dictionary];
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      knownKeys = [(CloudBookmarkItemConfiguration *)self->_configuration knownKeys];
      v73 = [knownKeys countByEnumeratingWithState:&v77 objects:v88 count:16];
      if (v73)
      {
        v69 = v23;
        v62 = recordCopy;
        v68 = 0;
        v72 = *v78;
        v64 = recordCopy2;
        obj = knownKeys;
        do
        {
          for (i = 0; i != v73; i = i + 1)
          {
            if (*v78 != v72)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v77 + 1) + 8 * i);
            if (onlyCopy)
            {
              v28 = WBBookmarkSyncModifiedAttributesForKey();
            }

            else
            {
              v28 = 0;
            }

            v29 = [(CloudBookmarkItemConfiguration *)self->_configuration generationKeyForKey:v27];
            v30 = [(WBBookmarkSyncData *)self->_syncData generationForKey:v29];
            v31 = [recordCopy2 safari_generationForKey:v29];
            v32 = [v30 compare:v31];
            if (v32 == -1)
            {
              v43 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(-1, v33);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                *buf = 138543874;
                v83 = v27;
                v84 = 2114;
                v85 = v30;
                v86 = 2114;
                v87 = v31;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Copy remote value into local record for key: %{public}@ with local generation: %{public}@, remote generation: %{public}@", buf, 0x20u);
              }

              v44 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:v27];
              if ([v44 attributeRequiresEncryption])
              {
                safari_encryptedValues = [recordCopy2 safari_encryptedValues];
                v46 = [safari_encryptedValues objectForKeyedSubscript:v27];
              }

              else
              {
                v46 = [recordCopy2 objectForKeyedSubscript:v27];
              }

              if ([(CloudBookmark *)self _canApplyValue:v46 withGeneration:v31 toAttribute:v27 updater:updaterCopy])
              {
                v71 &= ~v28;
                transformedValueClass = [objc_opt_class() transformedValueClass];
                LODWORD(transformedValueClass) = [transformedValueClass isEqual:objc_opt_class()];
                v48 = [v44 reverseTransformedValueOrNull:v46];
                if (transformedValueClass)
                {
                  [(NSMutableDictionary *)self->_remotelyModifiedAssetAttributes setObject:v48 forKeyedSubscript:v27];
                }

                else
                {
                  [(NSMutableDictionary *)self->_remotelyModifiedAttributes setObject:v48 forKeyedSubscript:v27];

                  [v63 setObject:v31 forKeyedSubscript:v29];
                }
              }

              onlyCopy = v67;

              recordCopy2 = v64;
            }

            else if (v32 == 1)
            {
              v37 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(1, v33);
              v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
              if (v38)
              {
                *buf = 138543874;
                v83 = v27;
                v84 = 2114;
                v85 = v30;
                v86 = 2114;
                v87 = v31;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Copy local value into remote record for key: %{public}@ with local generation: %{public}@, remote generation: %{public}@", buf, 0x20u);
              }

              if ((v28 & v71) != 0)
              {
                v40 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v38, v39);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v83 = v27;
                  _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Attribute %{public}@ was updated locally but was not saved to the server", buf, 0xCu);
                }
              }

              buf[0] = 0;
              v41 = [(CloudBookmark *)self _transformedModifiedOrLocalValueForKey:v27 isEncrypted:buf];
              if (buf[0] == 1)
              {
                safari_encryptedValues2 = [recordCopy2 safari_encryptedValues];
                [safari_encryptedValues2 setObject:v41 forKeyedSubscript:v27];

                onlyCopy = v67;
              }

              else
              {
                [recordCopy2 setObject:v41 forKeyedSubscript:v27];
              }

              [v65 setObject:v30 forKeyedSubscript:v29];
              v69 |= 1uLL;
              v68 |= [(CloudBookmarkItemConfiguration *)self->_configuration isIdentityHashKey:v27];
            }

            else if (!v32)
            {
              v34 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v33);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v83 = v27;
                v84 = 2112;
                v85 = v30;
                v86 = 2112;
                v87 = v31;
                _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "No merging needed for key: %@ with local generation: %@, remote generation: %@", buf, 0x20u);
              }

              if ((v28 & v71) != 0)
              {
                isValid = [v31 isValid];
                if (isValid)
                {
                  v71 &= ~v28;
                }

                else
                {
                  v49 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(isValid, v36);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v83 = v27;
                    _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Attribute <%{public}@> expected to be saved to the server has an empty generation", buf, 0xCu);
                  }
                }
              }
            }
          }

          v73 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
        }

        while (v73);

        if ((v68 & 1) == 0)
        {
          recordCopy = v62;
          v23 = v69;
          goto LABEL_60;
        }

        v52 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v50, v51);
        recordCopy = v62;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Update IdentityHash on remote record.", buf, 2u);
        }

        knownKeys = [(CloudBookmark *)self _modifiedOrLocalIdentityHashWithUpdater:updaterCopy];
        [recordCopy2 setObject:knownKeys forKeyedSubscript:@"IdentityHash"];
        v23 = v69;
      }

LABEL_60:
      v53 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v50, v51);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        sub_100023F28();
      }

      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_100021A00;
      v76[3] = &unk_1001322F8;
      v76[4] = self;
      [v63 enumerateKeysAndObjectsUsingBlock:v76];
      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_100021A10;
      v74[3] = &unk_1001322F8;
      v75 = recordCopy2;
      [v65 enumerateKeysAndObjectsUsingBlock:v74];
      if (v67)
      {
        [(WBBookmarkSyncData *)self->_syncData setModifiedAttributeMask:v71];
      }

      objc_storeStrong(&self->_record, recordCopy);
      v54 = [(WBBookmarkSyncData *)self->_syncData setRecord:self->_record];
      v13 = v23 | 2;
      v56 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v54, v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = self->_recordName;
        v58 = v56;
        v59 = sub_10001C04C(v13);
        *buf = 138543618;
        v83 = v57;
        v84 = 2114;
        v85 = v59;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Did finish merging local and remote records with record name: %{public}@. Result: %{public}@", buf, 0x16u);
      }

      goto LABEL_67;
    }

    v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(v14, v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_recordName;
      v21 = v19;
      v22 = sub_10001C04C(v13);
      *buf = 138543618;
      v83 = v20;
      v84 = 2114;
      v85 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Did finish merging local and remote records with record name: %{public}@ due to state changes. Result: %{public}@", buf, 0x16u);
    }

    objc_storeStrong(&self->_record, recordCopy);
    [(WBBookmarkSyncData *)self->_syncData setRecord:self->_record];
  }

LABEL_67:

  return v13;
}

- (unint64_t)_resultByMergingParentAndPositionWithRecord:(id)record usingUpdater:(id)updater
{
  recordCopy = record;
  updaterCopy = updater;
  v9 = [(WBBookmarkSyncData *)self->_syncData generationForKey:@"ParentAndPosition"];
  v10 = [recordCopy safari_generationForKey:@"ParentAndPosition"];
  v11 = [v9 compare:v10];
  if (v11 == -1)
  {
    v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(-1, v12);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      recordName = self->_recordName;
      v29 = 138543874;
      v30 = recordName;
      v31 = 2114;
      v32 = v9;
      v33 = 2114;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Merging parent and position into local record for record Name: %{public}@, local generation: %{public}@, remote generation: %{public}@", &v29, 0x20u);
    }

    v21 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:@"Position"];
    v22 = [recordCopy safari_positionDictionaryRepresentationUsingValueTransformer:v21];
    [(WBBookmarkSyncData *)self->_syncData setPositionDictionaryRepresentation:v22];

    [(WBBookmarkSyncData *)self->_syncData setGeneration:v10 forKey:@"ParentAndPosition"];
    v23 = [recordCopy objectForKeyedSubscript:@"ParentFolder"];
    recordID = [v23 recordID];
    recordName = [recordID recordName];
    v26 = [recordName copy];
    parentRecordName = self->_parentRecordName;
    self->_parentRecordName = v26;

    v4 = 6;
  }

  else if (v11 == 1)
  {
    v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(1, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = self->_recordName;
      v29 = 138543874;
      v30 = v15;
      v31 = 2114;
      v32 = v9;
      v33 = 2114;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Merging parent and position into remote record for record Name: %{public}@, local generation: %{public}@, remote generation: %{public}@", &v29, 0x20u);
    }

    v16 = [(CloudBookmark *)self _modifiedOrLocalParentReferenceWithUpdater:updaterCopy];
    positionDictionaryRepresentation = [(WBBookmarkSyncData *)self->_syncData positionDictionaryRepresentation];
    v18 = [(CloudBookmarkItemConfiguration *)self->_configuration valueTransformerForAttributeKey:@"Position"];
    [recordCopy safari_setPositionDictionaryRepresentation:positionDictionaryRepresentation usingValueTransformer:v18];

    [recordCopy setObject:v16 forKeyedSubscript:@"ParentFolder"];
    [recordCopy safari_setGeneration:v9 forKey:@"ParentAndPosition"];

    v4 = 1;
  }

  else if (!v11)
  {
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100023F64();
    }

    v4 = 0;
  }

  return v4;
}

- (unint64_t)_resultByMergingMinimumAPIVersionWithRecord:(id)record
{
  recordCopy = record;
  safari_minimumAPIVersion = [recordCopy safari_minimumAPIVersion];
  v8 = safari_minimumAPIVersion;
  if (safari_minimumAPIVersion <= 4)
  {
    minimumAPIVersion = [(WBBookmarkSyncData *)self->_syncData minimumAPIVersion];
    v12 = [(WBBookmarkSyncData *)self->_syncData generationForKey:@"MinimumAPIVersion"];
    v13 = [recordCopy safari_generationForKey:@"MinimumAPIVersion"];
    v14 = [v12 compare:v13];
    if (v14 == -1)
    {
      v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(-1, v15);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        recordName = self->_recordName;
        v22 = 138543874;
        v23 = recordName;
        v24 = 2114;
        v25 = v12;
        v26 = 2114;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Merging minimum API version into local record for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", &v22, 0x20u);
      }

      [(WBBookmarkSyncData *)self->_syncData setMinimumAPIVersion:v8];
      [(WBBookmarkSyncData *)self->_syncData setGeneration:v13 forKey:@"MinimumAPIVersion"];
      v3 = 2;
    }

    else if (v14 == 1)
    {
      v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(1, v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = self->_recordName;
        v22 = 138543874;
        v23 = v18;
        v24 = 2114;
        v25 = v12;
        v26 = 2114;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Merging minimum API version into remote record for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", &v22, 0x20u);
      }

      [recordCopy safari_setMinimumAPIVersion:minimumAPIVersion];
      [recordCopy safari_setGeneration:v12 forKey:@"MinimumAPIVersion"];
      v3 = 1;
    }

    else if (!v14)
    {
      v16 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(0, v15);
      if (minimumAPIVersion == v8)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_100024034();
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100023FCC();
      }

      v3 = 0;
    }
  }

  else
  {
    v9 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(safari_minimumAPIVersion, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_recordName;
      v22 = 138543874;
      v23 = v10;
      v24 = 2048;
      v25 = v8;
      v26 = 2048;
      v27 = 4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Did finish merging local and remote records with record name: %{public}@. Local record will be deleted because its minimum API version %zd is higher than the API version %zd supported by this client.", &v22, 0x20u);
    }

    v3 = 8;
  }

  return v3;
}

- (unint64_t)_resultByMergingStateWithRecord:(id)record shouldContinueMerge:(BOOL *)merge
{
  recordCopy = record;
  v7 = [(WBBookmarkSyncData *)self->_syncData generationForKey:@"Deleted"];
  v8 = [recordCopy safari_generationForKey:@"Deleted"];
  v9 = [v7 compare:v8];
  state = [(CloudBookmark *)self state];
  safari_state = [recordCopy safari_state];
  if (state == safari_state)
  {
    goto LABEL_2;
  }

  if (v9 == -1)
  {
LABEL_11:
    if (state == 1)
    {
      item = self->_item;
      v19 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(safari_state, v12);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
      if (item)
      {
        if (v20)
        {
          recordName = self->_recordName;
          *v38 = 138543874;
          *&v38[4] = recordName;
          *&v38[12] = 2114;
          *&v38[14] = v7;
          *&v38[22] = 2114;
          safari_state2 = v8;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Server previously told us the record was deleted, now it is undeleted. Mark the record %{public}@ as moved and continue merging: local generation: %{public}@, remote generation: %{public}@", v38, 0x20u);
        }

        *merge = 1;
        [(CloudBookmark *)self setState:0];
        [(WBBookmarkSyncData *)self->_syncData setGeneration:v8 forKey:@"Deleted"];
        self = 4;
      }

      else
      {
        if (v20)
        {
          v34 = self->_recordName;
          *v38 = 138543874;
          *&v38[4] = v34;
          *&v38[12] = 2114;
          *&v38[14] = v7;
          *&v38[22] = 2114;
          safari_state2 = v8;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Local record needs to be undeleted for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", v38, 0x20u);
        }

        *merge = 0;
        self = 16;
      }
    }

    else
    {
      v28 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(safari_state, v12);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = self->_recordName;
        *v38 = 138543874;
        *&v38[4] = v29;
        *&v38[12] = 2114;
        *&v38[14] = v7;
        *&v38[22] = 2114;
        safari_state2 = v8;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Local record needs to be deleted for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", v38, 0x20u);
      }

      *merge = 1;
      [(CloudBookmark *)self setState:1];
      [(WBBookmarkSyncData *)self->_syncData setGeneration:v8 forKey:@"Deleted"];
      self = 8;
    }

    goto LABEL_45;
  }

  if (v9 == 1)
  {
    v23 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(safari_state, v12);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (state == 1)
    {
      if (v24)
      {
        v25 = self->_recordName;
        *v38 = 138543874;
        *&v38[4] = v25;
        *&v38[12] = 2114;
        *&v38[14] = v7;
        *&v38[22] = 2114;
        safari_state2 = v8;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Remote record needs to be deleted for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", v38, 0x20u);
      }

      *merge = 0;
      self = 1;
      v26 = recordCopy;
      v27 = 1;
    }

    else
    {
      if (v24)
      {
        v33 = self->_recordName;
        *v38 = 138543874;
        *&v38[4] = v33;
        *&v38[12] = 2114;
        *&v38[14] = v7;
        *&v38[22] = 2114;
        safari_state2 = v8;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Remote record needs to be undeleted for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", v38, 0x20u);
      }

      self = 1;
      *merge = 1;
      v26 = recordCopy;
      v27 = 0;
    }

    [v26 safari_setState:v27];
    [recordCopy safari_setGeneration:v7 forKey:@"Deleted"];
    goto LABEL_45;
  }

  if (!v9)
  {
    v17 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(safari_state, v12);
    safari_state = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (safari_state)
    {
      v37 = v17;
      *v38 = 134218754;
      *&v38[4] = [(CloudBookmark *)self state];
      *&v38[12] = 2114;
      *&v38[14] = v7;
      *&v38[22] = 2048;
      safari_state2 = [recordCopy safari_state];
      v40 = 2114;
      v41 = v8;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Local and remote state generations are equal even though their states are different. Local Deleted: %ld, generation: %{public}@, Remote Deleted %ld, generation: %{public}@", v38, 0x2Au);
    }

    goto LABEL_11;
  }

LABEL_2:
  if (state == 1)
  {
    *merge = 0;
    v13 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(safari_state, v12);
    v14 = v13;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = self->_recordName;
        *v38 = 138543874;
        *&v38[4] = v15;
        *&v38[12] = 2114;
        *&v38[14] = v7;
        *&v38[22] = 2114;
        safari_state2 = v8;
        v16 = "Both local and remote records are deleted but remote record state generation needs to be updated for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v16, v38, 0x20u);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v36 = self->_recordName;
      *v38 = 138543874;
      *&v38[4] = v36;
      *&v38[12] = 2114;
      *&v38[14] = v7;
      *&v38[22] = 2114;
      safari_state2 = v8;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Both remote and local records are deleted and remote generation does not need to be updated for record name: %{public}@, local generation: %{public}@, remote generation: %{public}@", v38, 0x20u);
    }

    goto LABEL_23;
  }

  *merge = 1;
  if (v9 == -1)
  {
    v31 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(safari_state, v12);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = self->_recordName;
      *v38 = 138543874;
      *&v38[4] = v32;
      *&v38[12] = 2114;
      *&v38[14] = v7;
      *&v38[22] = 2114;
      safari_state2 = v8;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Updating local state generation for record Name: %{public}@, local state generation: %{public}@, remote state generation: %{public}@", v38, 0x20u);
    }

    [(WBBookmarkSyncData *)self->_syncData setGeneration:v8 forKey:@"Deleted"];
    self = 2;
  }

  else
  {
    if (v9 == 1)
    {
      v14 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(safari_state, v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v30 = self->_recordName;
        *v38 = 138543874;
        *&v38[4] = v30;
        *&v38[12] = 2114;
        *&v38[14] = v7;
        *&v38[22] = 2114;
        safari_state2 = v8;
        v16 = "Updating remote state generation for record Name: %{public}@, local state generation: %{public}@, remote state generation: %{public}@";
        goto LABEL_33;
      }

LABEL_34:
      [recordCopy safari_setGeneration:v7 forKey:{@"Deleted", *v38, *&v38[8], safari_state2}];
      self = 1;
      goto LABEL_45;
    }

    if (!v9)
    {
      v22 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(safari_state, v12);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_10002409C();
      }

LABEL_23:
      self = 0;
    }
  }

LABEL_45:

  return self;
}

@end