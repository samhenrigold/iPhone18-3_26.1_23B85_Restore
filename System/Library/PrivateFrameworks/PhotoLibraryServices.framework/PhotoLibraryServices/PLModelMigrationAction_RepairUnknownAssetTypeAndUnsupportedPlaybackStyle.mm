@interface PLModelMigrationAction_RepairUnknownAssetTypeAndUnsupportedPlaybackStyle
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RepairUnknownAssetTypeAndUnsupportedPlaybackStyle

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v116[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 1;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__23792;
  v73 = __Block_byref_object_dispose__23793;
  v74 = 0;
  v7 = +[PLManagedAsset fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d || %K == %d", @"kind", 3, @"playbackStyle", 0];
  [v7 setPredicate:v8];

  v116[0] = @"master";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:1];
  [v7 setRelationshipKeyPathsForPrefetching:v9];

  [v7 setFetchBatchSize:100];
  v10 = v70 + 5;
  obj = v70[5];
  v11 = [contextCopy executeFetchRequest:v7 error:&obj];
  objc_storeStrong(v10, obj);
  if (objc_msgSend_count(v11))
  {
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 0;
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v12 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v11) pendingParentUnitCount:0];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __120__PLModelMigrationAction_RepairUnknownAssetTypeAndUnsupportedPlaybackStyle_performActionWithManagedObjectContext_error___block_invoke;
    v49[3] = &unk_1E7569C80;
    v52 = &v56;
    v53 = &v60;
    v51 = &v64;
    v49[4] = self;
    v54 = &v69;
    v55 = &v75;
    v13 = v12;
    v50 = v13;
    v14 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v11 withBlock:v49];
    if (v14 && !v70[5])
    {
      objc_storeStrong(v70 + 5, v14);
      v76[3] = 3;
    }

    if (v76[3] == 1)
    {
      v15 = PLMigrationGetLog();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        logger = [(PLModelMigrationActionCore *)self logger];
        v18 = logger == 0;

        if (!v18)
        {
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          memset(buf, 0, sizeof(buf));
          v19 = PLMigrationGetLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = 3;
          }

          else
          {
            v20 = 2;
          }

          v21 = v61[3];
          v22 = v65[3];
          v23 = v57[3];
          v79 = 134218496;
          v80 = v21;
          v81 = 2048;
          v82 = v22;
          v83 = 2048;
          v84 = v23;
          LODWORD(v47) = 32;
          v24 = _os_log_send_and_compose_impl(v20, 0, buf, 512, &dword_19BF1F000, v19, 0, "Fixed %lu unsupported playback style, %lu unknown kind, failed to fix %lu unknown kind", &v79, v47, v48);

          logger2 = [(PLModelMigrationActionCore *)self logger];
          [logger2 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{664, 0}];

          goto LABEL_20;
        }

        v36 = PLMigrationGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v61[3];
          v38 = v65[3];
          v39 = v57[3];
          *buf = 134218496;
          *&buf[4] = v37;
          *&buf[12] = 2048;
          *&buf[14] = v38;
          *&buf[22] = 2048;
          *&buf[24] = v39;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "Fixed %lu unsupported playback style, %lu unknown kind, failed to fix %lu unknown kind", buf, 0x20u);
        }

LABEL_27:
      }
    }

    else
    {
      v26 = PLMigrationGetLog();
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

      if (v27)
      {
        logger3 = [(PLModelMigrationActionCore *)self logger];
        v29 = logger3 == 0;

        if (!v29)
        {
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          memset(buf, 0, sizeof(buf));
          v30 = PLMigrationGetLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = 3;
          }

          else
          {
            v31 = 2;
          }

          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = v70[5];
          v79 = 138543618;
          v80 = v33;
          v81 = 2114;
          v82 = v34;
          LODWORD(v47) = 22;
          v24 = _os_log_send_and_compose_impl(v31, 0, buf, 512, &dword_19BF1F000, v30, 16, "Failed to save managed object context for %{public}@. Error: %{public}@", &v79, v47);

          logger4 = [(PLModelMigrationActionCore *)self logger];
          [logger4 logWithMessage:v24 fromCodeLocation:"PLModelMigrationActions_16000.m" type:{666, 16}];

LABEL_20:
          if (v24 != buf)
          {
            free(v24);
          }

          goto LABEL_28;
        }

        v36 = PLMigrationGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v40 = objc_opt_class();
          v41 = NSStringFromClass(v40);
          v42 = v70[5];
          *buf = 138543618;
          *&buf[4] = v41;
          *&buf[12] = 2114;
          *&buf[14] = v42;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
        }

        goto LABEL_27;
      }
    }

LABEL_28:

    _Block_object_dispose(&v56, 8);
    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v64, 8);
    goto LABEL_29;
  }

  if (!v11)
  {
    v76[3] = 3;
  }

LABEL_29:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v43 = v76[3];
  v44 = v70[5];
  if (v43 != 1 && error)
  {
    v44 = v44;
    *error = v44;
  }

  v45 = v76[3];
  _Block_object_dispose(&v69, 8);

  _Block_object_dispose(&v75, 8);
  return v45;
}

@end