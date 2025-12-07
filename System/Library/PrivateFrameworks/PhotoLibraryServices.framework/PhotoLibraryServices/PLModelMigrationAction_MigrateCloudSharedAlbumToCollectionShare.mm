@interface PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare
+ (void)insertParticipantForCloudSharedAlbumInvitationRecord:(id)record collectionShare:(id)share personInfoManager:(id)manager moc:(id)moc;
- (id)_insertCollectionShareForCloudSharedAlbum:(id)album moc:(id)moc;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare

- (id)_insertCollectionShareForCloudSharedAlbum:(id)album moc:(id)moc
{
  albumCopy = album;
  mocCopy = moc;
  v7 = +[PLCollectionShare entityName];
  v8 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v7, mocCopy, 0);

  [v8 setCollectionShareKind:2];
  [v8 setCloudDeleteState:{objc_msgSend(albumCopy, "cloudDeleteState")}];
  cloudGUID = [albumCopy cloudGUID];
  [v8 setScopeIdentifier:cloudGUID];

  [v8 setCloudLocalState:{objc_msgSend(albumCopy, "cloudLocalState")}];
  title = [albumCopy title];
  [v8 setTitle:title];

  uuid = [albumCopy uuid];
  [v8 setUuid:uuid];

  if ([albumCopy customSortKey])
  {
    customSortKey = [albumCopy customSortKey];
  }

  else
  {
    customSortKey = 6;
  }

  [v8 setCustomSortKey:customSortKey];
  [v8 setCustomSortAscending:{objc_msgSend(albumCopy, "customSortAscending")}];
  cloudCreationDate = [albumCopy cloudCreationDate];
  if (cloudCreationDate)
  {
    [v8 setCreationDate:cloudCreationDate];
  }

  else
  {
    creationDate = [albumCopy creationDate];
    [v8 setCreationDate:creationDate];
  }

  cloudLastInterestingChangeDate = [albumCopy cloudLastInterestingChangeDate];
  [v8 setLastModifiedDate:cloudLastInterestingChangeDate];

  cloudMetadata = [albumCopy cloudMetadata];
  v17 = [cloudMetadata objectForKey:*MEMORY[0x1E6997FE8]];
  [v8 setPhoneInvitationToken:v17];

  cloudMultipleContributorsEnabled = [albumCopy cloudMultipleContributorsEnabled];
  LODWORD(v17) = [cloudMultipleContributorsEnabled BOOLValue];

  if (v17)
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  [v8 setPublicPermission:v19];
  if ([albumCopy cloudNotificationsEnabled])
  {
    v20 = 0x7FFFLL;
  }

  else
  {
    v20 = 1;
  }

  [v8 setNotificationState:v20];
  cloudPersonID = [albumCopy cloudPersonID];
  [v8 setCloudPersonID:cloudPersonID];

  cloudPublicURLEnabled = [albumCopy cloudPublicURLEnabled];
  bOOLValue = [cloudPublicURLEnabled BOOLValue];

  if (bOOLValue)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  [v8 setPublicURLState:v24];
  v25 = MEMORY[0x1E695DFF8];
  publicURL = [albumCopy publicURL];
  v27 = [v25 URLWithString:publicURL];
  [v8 setShareURL:v27];

  cloudRelationshipState = [albumCopy cloudRelationshipState];

  if (cloudRelationshipState)
  {
    cloudRelationshipState2 = [albumCopy cloudRelationshipState];
    intValue = [cloudRelationshipState2 intValue];

    if (intValue < 3)
    {
      v31 = intValue + 1;
    }

    else
    {
      v31 = 0;
    }

    [v8 setStatus:v31];
  }

  cloudSubscriptionDate = [albumCopy cloudSubscriptionDate];
  [v8 setCloudSubscriptionDate:cloudSubscriptionDate];

  hasUnseenContent = [albumCopy hasUnseenContent];
  bOOLValue2 = [hasUnseenContent BOOLValue];

  if (bOOLValue2)
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  [v8 setUnseenContentState:v35];
  unseenAssetsCount = [albumCopy unseenAssetsCount];
  [v8 setUnseenAssetsCount:{objc_msgSend(unseenAssetsCount, "intValue")}];

  cloudAlbumSubtype = [albumCopy cloudAlbumSubtype];
  if (cloudAlbumSubtype <= 1)
  {
    [v8 setCreationType:cloudAlbumSubtype];
  }

  return v8;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v158 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLCloudSharedAlbum entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  [v8 setFetchBatchSize:100];
  systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v10 = objc_initWeak(location, self);

  v11 = objc_alloc(MEMORY[0x1E69BF270]);
  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __111__PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare_performActionWithManagedObjectContext_error___block_invoke;
  v120[3] = &unk_1E7573318;
  objc_copyWeak(&v122, location);
  v91 = systemLibraryURL;
  v121 = v91;
  v12 = [v11 initWithBlock:v120];

  objc_destroyWeak(&v122);
  objc_destroyWeak(location);
  v13 = [PLPersonInfoManager alloc];
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  v15 = [(PLPersonInfoManager *)v13 initWithPathManager:pathManager lazyAssetsdClient:v12];

  v16 = [PLEmailAddressManager alloc];
  pathManager2 = [(PLModelMigrationActionCore *)self pathManager];
  v18 = [(PLEmailAddressManager *)v16 initWithPathManager:pathManager2 lazyAssetsdClient:v12];

  v114 = 0;
  v115 = &v114;
  v116 = 0x3032000000;
  v117 = __Block_byref_object_copy__16168;
  v118 = __Block_byref_object_dispose__16169;
  v119 = 0;
  v110 = 0;
  v111 = &v110;
  v112 = 0x2020000000;
  v113 = 1;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = __Block_byref_object_copy__16168;
  v108 = __Block_byref_object_dispose__16169;
  v109 = 0;
  v19 = [PLEnumerateAndSaveController alloc];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __111__PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare_performActionWithManagedObjectContext_error___block_invoke_130;
  v102[3] = &unk_1E7575B30;
  v103 = contextCopy;
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __111__PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare_performActionWithManagedObjectContext_error___block_invoke_2;
  v101[3] = &unk_1E7572E50;
  v101[4] = self;
  v101[5] = &v104;
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __111__PLModelMigrationAction_MigrateCloudSharedAlbumToCollectionShare_performActionWithManagedObjectContext_error___block_invoke_3;
  v94[3] = &unk_1E7567E60;
  v94[4] = self;
  v98 = &v114;
  v99 = &v110;
  v22 = v103;
  v95 = v22;
  v90 = v18;
  v96 = v90;
  v89 = v15;
  v97 = v89;
  v100 = &v104;
  v23 = [(PLEnumerateAndSaveController *)v19 initWithName:v21 fetchRequest:v8 context:v22 options:4 generateContextBlock:v102 didFetchObjectIDsBlock:v101 processResultBlock:v94];

  v24 = (v115 + 5);
  obj = v115[5];
  LODWORD(v16) = [(PLEnumerateAndSaveController *)v23 processObjectsWithError:&obj];
  objc_storeStrong(v24, obj);
  if (v16)
  {
    if ([(PLEnumerateAndSaveController *)v23 isCancelled])
    {
      v25 = v115[5];
      v115[5] = 0;

      v26 = PLMigrationGetLog();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

      if (!v27)
      {
        goto LABEL_33;
      }

      logger = [(PLModelMigrationActionCore *)self logger];
      v29 = logger == 0;

      if (!v29)
      {
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        memset(location, 0, sizeof(location));
        v30 = PLMigrationGetLog();
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        completedUnitCount = [v105[5] completedUnitCount];
        if (v31)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v34 = v115[5];
        v123 = 134218242;
        v124 = completedUnitCount;
        v125 = 2112;
        v126 = v34;
        v35 = _os_log_send_and_compose_impl(v33, 0, location, 512, &dword_19BF1F000, v30, 0, "Cancelled operation after update of %lld objects. Error: %@", &v123, 22);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{278, 0}];

        goto LABEL_22;
      }

      v56 = PLMigrationGetLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        completedUnitCount2 = [v105[5] completedUnitCount];
        v62 = v115[5];
        LODWORD(location[0]) = 134218242;
        *(location + 4) = completedUnitCount2;
        WORD2(location[1]) = 2112;
        *(&location[1] + 6) = v62;
        _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_DEFAULT, "Cancelled operation after update of %lld objects. Error: %@", location, 0x16u);
      }

LABEL_32:

      goto LABEL_33;
    }

    v47 = PLMigrationGetLog();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);

    if (!v48)
    {
      goto LABEL_33;
    }

    logger3 = [(PLModelMigrationActionCore *)self logger];
    v50 = logger3 == 0;

    if (v50)
    {
      v56 = PLMigrationGetLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        totalUnitCount = [v105[5] totalUnitCount];
        LODWORD(location[0]) = 134217984;
        *(location + 4) = totalUnitCount;
        _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_DEFAULT, "Migrated %lld CloudSharedAlbums to CollectionShares.", location, 0xCu);
      }

      goto LABEL_32;
    }

    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    memset(location, 0, sizeof(location));
    v51 = PLMigrationGetLog();
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    totalUnitCount2 = [v105[5] totalUnitCount];
    if (v52)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v123 = 134217984;
    v124 = totalUnitCount2;
    v35 = _os_log_send_and_compose_impl(v54, 0, location, 512, &dword_19BF1F000, v51, 0, "Migrated %lld CloudSharedAlbums to CollectionShares.", &v123);

    logger4 = [(PLModelMigrationActionCore *)self logger];
    [logger4 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{280, 0}];
  }

  else
  {
    if (v111[3] == 2)
    {
      goto LABEL_33;
    }

    v111[3] = 3;
    v37 = PLMigrationGetLog();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);

    if (!v38)
    {
      goto LABEL_33;
    }

    logger5 = [(PLModelMigrationActionCore *)self logger];
    v40 = logger5 == 0;

    if (v40)
    {
      v56 = PLMigrationGetLog();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        v59 = v115[5];
        LODWORD(location[0]) = 138543618;
        *(location + 4) = v58;
        WORD2(location[1]) = 2112;
        *(&location[1] + 6) = v59;
        _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_ERROR, "Failed to process %{public}@. Error: %@", location, 0x16u);
      }

      goto LABEL_32;
    }

    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    memset(location, 0, sizeof(location));
    v41 = PLMigrationGetLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v45 = v115[5];
    v123 = 138543618;
    v124 = v44;
    v125 = 2112;
    v126 = v45;
    v35 = _os_log_send_and_compose_impl(v42, 0, location, 512, &dword_19BF1F000, v41, 16, "Failed to process %{public}@. Error: %@", &v123, 22);

    logger6 = [(PLModelMigrationActionCore *)self logger];
    [logger6 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{284, 16}];
  }

LABEL_22:
  if (v35 != location)
  {
    free(v35);
  }

LABEL_33:
  v63 = MEMORY[0x1E695D5E0];
  v64 = +[PLCloudSharedAlbum entityName];
  v65 = [v63 fetchRequestWithEntityName:v64];

  v66 = [v22 countForFetchRequest:v65 error:0];
  if (v66)
  {
    v111[3] = 3;
    v67 = PLMigrationGetLog();
    v68 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);

    if (!v68)
    {
      goto LABEL_54;
    }

    logger7 = [(PLModelMigrationActionCore *)self logger];
    v70 = logger7 == 0;

    if (!v70)
    {
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      memset(location, 0, sizeof(location));
      v71 = PLMigrationGetLog();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = 3;
      }

      else
      {
        v72 = 2;
      }

      v123 = 134217984;
      v124 = v66;
      v73 = _os_log_send_and_compose_impl(v72, 0, location, 512, &dword_19BF1F000, v71, 16, "Failed to remove %llu CloudSharedAlbums.", &v123);

      logger8 = [(PLModelMigrationActionCore *)self logger];
      [logger8 logWithMessage:v73 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{292, 16}];

      goto LABEL_46;
    }

    v82 = PLMigrationGetLog();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 134217984;
      *(location + 4) = v66;
      _os_log_impl(&dword_19BF1F000, v82, OS_LOG_TYPE_ERROR, "Failed to remove %llu CloudSharedAlbums.", location, 0xCu);
    }
  }

  else
  {
    v75 = PLMigrationGetLog();
    v76 = os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);

    if (!v76)
    {
      goto LABEL_54;
    }

    logger9 = [(PLModelMigrationActionCore *)self logger];
    v78 = logger9 == 0;

    if (!v78)
    {
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      memset(location, 0, sizeof(location));
      v79 = PLMigrationGetLog();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = 3;
      }

      else
      {
        v80 = 2;
      }

      LOWORD(v123) = 0;
      LODWORD(v88) = 2;
      v73 = _os_log_send_and_compose_impl(v80, 0, location, 512, &dword_19BF1F000, v79, 0, "Successfully removed all CloudSharedAlbum objects from the DB", &v123, v88);

      logger10 = [(PLModelMigrationActionCore *)self logger];
      [logger10 logWithMessage:v73 fromCodeLocation:"PLModelMigrationActions_19000.m" type:{294, 0}];

LABEL_46:
      if (v73 != location)
      {
        free(v73);
      }

      goto LABEL_54;
    }

    v83 = PLMigrationGetLog();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_19BF1F000, v83, OS_LOG_TYPE_DEFAULT, "Successfully removed all CloudSharedAlbum objects from the DB", location, 2u);
    }
  }

LABEL_54:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v84 = v111[3];
  v85 = v115[5];
  if (v84 != 1 && error)
  {
    v85 = v85;
    *error = v85;
  }

  v86 = v111[3];
  _Block_object_dispose(&v104, 8);

  _Block_object_dispose(&v110, 8);
  _Block_object_dispose(&v114, 8);

  return v86;
}

+ (void)insertParticipantForCloudSharedAlbumInvitationRecord:(id)record collectionShare:(id)share personInfoManager:(id)manager moc:(id)moc
{
  recordCopy = record;
  shareCopy = share;
  managerCopy = manager;
  mocCopy = moc;
  v12 = +[PLShareParticipant entityName];
  v13 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v12, mocCopy, 0);

  [v13 setParticipantKind:1];
  cloudGUID = [recordCopy cloudGUID];
  [v13 setParticipantID:cloudGUID];

  uuid = [recordCopy uuid];
  [v13 setUuid:uuid];

  invitationState = [recordCopy invitationState];
  intValue = [invitationState intValue];

  publicPermission = [shareCopy publicPermission];
  v19 = 2;
  v20 = 4;
  v21 = 2;
  v22 = 5;
  v23 = 2;
  v24 = 3;
  if (intValue != 5)
  {
    v24 = 0;
    v23 = 0;
  }

  if (intValue != 4)
  {
    v22 = v24;
    v21 = v23;
  }

  if (intValue != 3)
  {
    v20 = v22;
    v19 = v21;
  }

  v25 = 1;
  v26 = 3;
  v27 = 2;
  v28 = 2;
  v29 = 1;
  v30 = 2;
  if (intValue != 2)
  {
    v30 = 0;
  }

  if (intValue != 1)
  {
    v29 = v30;
    v28 = v30;
  }

  if (intValue)
  {
    v27 = v29;
    v26 = publicPermission;
    v25 = v28;
  }

  v31 = intValue <= 2;
  if (intValue <= 2)
  {
    v32 = v27;
  }

  else
  {
    v32 = v20;
  }

  if (intValue <= 2)
  {
    v33 = v26;
  }

  else
  {
    v33 = publicPermission;
  }

  if (v31)
  {
    v34 = v25;
  }

  else
  {
    v34 = v19;
  }

  [v13 setRole:v34];
  [v13 setPermission:v33];
  [v13 setAcceptanceStatus:v32];
  inviteeHashedPersonID = [recordCopy inviteeHashedPersonID];
  firstObject = [managerCopy emailForPersonID:inviteeHashedPersonID];

  if (!firstObject)
  {
    cloudGUID2 = [recordCopy cloudGUID];
    v38 = [managerCopy emailsForInvitationRecordGUID:cloudGUID2];
    firstObject = [v38 firstObject];
  }

  [v13 setEmailAddress:firstObject];
  cloudGUID3 = [recordCopy cloudGUID];
  v40 = [managerCopy phonesForInvitationRecordGUID:cloudGUID3];
  firstObject2 = [v40 firstObject];
  [v13 setPhoneNumber:firstObject2];

  v42 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  inviteeFirstName = [recordCopy inviteeFirstName];
  if (inviteeFirstName)
  {
    [v42 setGivenName:inviteeFirstName];
  }

  inviteeLastName = [recordCopy inviteeLastName];
  if (inviteeLastName)
  {
    [v42 setFamilyName:inviteeLastName];
  }

  [v13 setNameComponents:v42];
  inviteeHashedPersonID2 = [recordCopy inviteeHashedPersonID];
  [v13 setHashedPersonID:inviteeHashedPersonID2];

  inviteeSubscriptionDate = [recordCopy inviteeSubscriptionDate];
  [v13 setSubscriptionDate:inviteeSubscriptionDate];

  [v13 setIsCurrentUser:{objc_msgSend(recordCopy, "isMine")}];
  [v13 setShare:shareCopy];
}

@end