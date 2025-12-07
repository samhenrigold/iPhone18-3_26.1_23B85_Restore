@interface PLModelMigrationActionUtility
+ (BOOL)processExtendedAttributesWithAction:(id)action asset:(id)asset metadata:(id)metadata error:(id *)error;
+ (BOOL)shouldProcessHistoryTokenWithAction:(id)action token:(id)token cutoffPercent:(double)percent managedObjectContext:(id)context;
+ (id)getHistoryTokenWithAction:(id)action key:(id)key managedObjectContext:(id)context;
+ (int64_t)processManagedObjectBatchesWithAction:(id)action managedObjectContext:(id)context fetchRequest:(id)request pendingParentUnitCount:(int64_t)count useObjectIDResumeMarker:(BOOL)marker error:(id *)error processingBlock:(id)block;
+ (int64_t)processManagedObjectWithAction:(id)action managedObjectContext:(id)context fetchRequest:(id)request useObjectIDResumeMarker:(BOOL)marker error:(id *)error processingBlock:(id)block;
+ (int64_t)processManagedObjectsWithAction:(id)action managedObjectContext:(id)context fetchRequest:(id)request pendingParentUnitCount:(int64_t)count error:(id *)error processingBlock:(id)block;
+ (int64_t)removeFromDuplicatesWithAction:(id)action managedObjectContext:(id)context fetchRequest:(id)request requiresLibraryReprocessing:(BOOL)reprocessing error:(id *)error;
+ (int64_t)removeOrphanedObjectsWithAction:(id)action managedObjectContext:(id)context fetchRequest:(id)request error:(id *)error;
+ (int64_t)resetDuplicateProcessingWithAction:(id)action managedObjectContext:(id)context error:(id *)error;
+ (int64_t)updateExtendedAttributesWithAction:(id)action managedObjectContext:(id)context fetchRequest:(id)request useObjectIDResumeMarker:(BOOL)marker error:(id *)error;
+ (void)setHistoryTokenWithAction:(id)action key:(id)key value:(id)value managedObjectContext:(id)context;
@end

@implementation PLModelMigrationActionUtility

+ (int64_t)processManagedObjectsWithAction:(id)action managedObjectContext:(id)context fetchRequest:(id)request pendingParentUnitCount:(int64_t)count error:(id *)error processingBlock:(id)block
{
  v136 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  contextCopy = context;
  requestCopy = request;
  blockCopy = block;
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = __Block_byref_object_copy__15714;
  v99 = __Block_byref_object_dispose__15715;
  v100 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy__15714;
  v93 = __Block_byref_object_dispose__15715;
  v94 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x2020000000;
  v88 = 1;
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  if (blockCopy)
  {
    [requestCopy setFetchBatchSize:100];
    v18 = [PLEnumerateAndSaveController alloc];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke;
    v83[3] = &unk_1E7575B30;
    v84 = contextCopy;
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_2;
    v79[3] = &unk_1E7567CD8;
    v81 = &v89;
    v80 = actionCopy;
    countCopy = count;
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_3;
    v73[3] = &unk_1E7567D28;
    v75 = blockCopy;
    v76 = &v89;
    v19 = v80;
    v74 = v19;
    v77 = &v85;
    v78 = &v95;
    v20 = [(PLEnumerateAndSaveController *)v18 initWithName:v17 fetchRequest:requestCopy context:v84 options:4 generateContextBlock:v83 didFetchObjectIDsBlock:v79 processResultBlock:v73];
    v72 = 0;
    v21 = [(PLEnumerateAndSaveController *)v20 processObjectsWithError:&v72];
    v22 = v72;
    if (v21)
    {
      if ([(PLEnumerateAndSaveController *)v20 isCancelled])
      {
        v23 = v96[5];

        v24 = PLMigrationGetLog();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

        if (v25)
        {
          logger = [v19 logger];
          v27 = logger == 0;

          if (v27)
          {
            v69 = PLMigrationGetLog();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              completedUnitCount = [v90[5] completedUnitCount];
              *buf = 134218242;
              *&buf[4] = completedUnitCount;
              *&buf[12] = 2112;
              *&buf[14] = v23;
              _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_DEFAULT, "Cancelled operation after update of %lld objects. Error: %@", buf, 0x16u);
            }
          }

          else
          {
            v134 = 0u;
            v135 = 0u;
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v128 = 0u;
            v129 = 0u;
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
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
            memset(buf, 0, sizeof(buf));
            v28 = PLMigrationGetLog();
            v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            completedUnitCount2 = [v90[5] completedUnitCount];
            if (v29)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            v101 = 134218242;
            v102 = completedUnitCount2;
            v103 = 2112;
            v104 = v23;
            v32 = _os_log_send_and_compose_impl(v31, 0, buf, 512, &dword_19BF1F000, v28, 0, "Cancelled operation after update of %lld objects. Error: %@", &v101, 22);

            logger2 = [v19 logger];
            [logger2 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{411, 0}];

            if (v32 != buf)
            {
              free(v32);
            }
          }
        }

        goto LABEL_44;
      }

      v50 = PLMigrationGetLog();
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);

      if (v51)
      {
        logger3 = [v19 logger];
        v53 = logger3 == 0;

        if (v53)
        {
          v62 = PLMigrationGetLog();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            completedUnitCount3 = [v90[5] completedUnitCount];
            *buf = 134217984;
            *&buf[4] = completedUnitCount3;
            _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_DEFAULT, "Completed update of %lld objects.", buf, 0xCu);
          }

          goto LABEL_43;
        }

        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v54 = PLMigrationGetLog();
        v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
        completedUnitCount4 = [v90[5] completedUnitCount];
        if (v55)
        {
          v57 = 3;
        }

        else
        {
          v57 = 2;
        }

        v101 = 134217984;
        v102 = completedUnitCount4;
        v48 = _os_log_send_and_compose_impl(v57, 0, buf, 512, &dword_19BF1F000, v54, 0, "Completed update of %lld objects.", &v101);

        logger4 = [v19 logger];
        [logger4 logWithMessage:v48 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{413, 0}];

        goto LABEL_31;
      }
    }

    else if (v86[3] != 2)
    {
      v86[3] = 3;
      v42 = PLMigrationGetLog();
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);

      if (v43)
      {
        logger5 = [v19 logger];
        v45 = logger5 == 0;

        if (v45)
        {
          v61 = PLMigrationGetLog();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v17;
            *&buf[12] = 2112;
            *&buf[14] = v22;
            _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
          }

          goto LABEL_43;
        }

        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
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
        memset(buf, 0, sizeof(buf));
        v46 = PLMigrationGetLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        v101 = 138543618;
        v102 = v17;
        v103 = 2112;
        v104 = v22;
        v48 = _os_log_send_and_compose_impl(v47, 0, buf, 512, &dword_19BF1F000, v46, 16, "Failed to perform a save operation for %{public}@. Error: %@", &v101, 22);

        logger6 = [v19 logger];
        [logger6 logWithMessage:v48 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{417, 16}];

LABEL_31:
        if (v48 != buf)
        {
          free(v48);
        }
      }
    }

LABEL_43:
    v23 = v22;
LABEL_44:
    v64 = v86[3];
    v65 = v23;
    v66 = v65;
    if (v64 != 1 && error)
    {
      v67 = v65;
      *error = v66;
    }

    v60 = v86[3];
    goto LABEL_48;
  }

  v34 = PLMigrationGetLog();
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);

  if (v35)
  {
    logger7 = [actionCopy logger];
    v37 = logger7 == 0;

    if (v37)
    {
      v59 = PLMigrationGetLog();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = v17;
        _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_INFO, "Missing processing block for %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
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
      memset(buf, 0, sizeof(buf));
      v38 = PLMigrationGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      v101 = 138543362;
      v102 = v17;
      v40 = _os_log_send_and_compose_impl(v39, 0, buf, 512, &dword_19BF1F000, v38, 1, "Missing processing block for %{public}@", &v101, 12);

      logger8 = [actionCopy logger];
      [logger8 logWithMessage:v40 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{378, 1}];

      if (v40 != buf)
      {
        free(v40);
      }
    }
  }

  v60 = v86[3];
LABEL_48:

  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v89, 8);

  _Block_object_dispose(&v95, 8);
  return v60;
}

void __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(a2) pendingParentUnitCount:*(a1 + 48)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  (*(*(a1 + 40) + 16))();
  v6 = [*(*(*(a1 + 48) + 8) + 40) completedUnitCount];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_4;
  v14[3] = &unk_1E7578910;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v15 = v7;
  v16 = v8;
  if (v6 && !(v6 % 0x3E8))
  {
    __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_4(v14);
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v9 = *(a1 + 32);
    v10 = *(*(a1 + 64) + 8);
    obj = *(v10 + 40);
    v11 = [v9 isCancelledWithError:&obj];
    objc_storeStrong((v10 + 40), obj);
    if (v11)
    {
      *(*(*(a1 + 56) + 8) + 24) = 2;
      *a4 = 1;
    }
  }

  v12 = *(*(*(a1 + 48) + 8) + 40);
  [v12 setCompletedUnitCount:{objc_msgSend(v12, "completedUnitCount") + 1}];
}

void __144__PLModelMigrationActionUtility_processManagedObjectsWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_error_processingBlock___block_invoke_4(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = PLMigrationGetLog();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (v3)
  {
    v4 = [*(a1 + 32) logger];

    if (v4)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *buf = 0u;
      v15 = 0u;
      v5 = PLMigrationGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      v7 = [*(*(*(a1 + 40) + 8) + 40) completedUnitCount];
      v12 = 134217984;
      v13 = v7;
      v8 = _os_log_send_and_compose_impl(v6, 0, buf, 512, &dword_19BF1F000, v5, 1, "Processed %lld records", &v12);

      v9 = [*(a1 + 32) logger];
      [v9 logWithMessage:v8 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{393, 1}];

      if (v8 != buf)
      {
        free(v8);
      }
    }

    else
    {
      v10 = PLMigrationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [*(*(*(a1 + 40) + 8) + 40) completedUnitCount];
        *buf = 134217984;
        *&buf[4] = v11;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Processed %lld records", buf, 0xCu);
      }
    }
  }
}

+ (int64_t)processManagedObjectBatchesWithAction:(id)action managedObjectContext:(id)context fetchRequest:(id)request pendingParentUnitCount:(int64_t)count useObjectIDResumeMarker:(BOOL)marker error:(id *)error processingBlock:(id)block
{
  actionCopy = action;
  contextCopy = context;
  requestCopy = request;
  blockCopy = block;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 1;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy__15714;
  v50[4] = __Block_byref_object_dispose__15715;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__15714;
  v48 = __Block_byref_object_dispose__15715;
  v49 = 0;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  v19 = [PLEnumerateAndSaveController alloc];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __174__PLModelMigrationActionUtility_processManagedObjectBatchesWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_useObjectIDResumeMarker_error_processingBlock___block_invoke;
  v42[3] = &unk_1E7575B30;
  v20 = contextCopy;
  v43 = v20;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __174__PLModelMigrationActionUtility_processManagedObjectBatchesWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_useObjectIDResumeMarker_error_processingBlock___block_invoke_2;
  v38[3] = &unk_1E7567CD8;
  v40 = v50;
  v39 = actionCopy;
  countCopy = count;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __174__PLModelMigrationActionUtility_processManagedObjectBatchesWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_useObjectIDResumeMarker_error_processingBlock___block_invoke_3;
  v32[3] = &unk_1E7567D00;
  v35 = &v52;
  v21 = blockCopy;
  v34 = v21;
  v36 = v50;
  v37 = &v44;
  v22 = v39;
  v33 = v22;
  v23 = [(PLEnumerateAndSaveController *)v19 initWithName:v18 fetchRequest:requestCopy context:v20 options:4 generateContextBlock:v42 didFetchObjectIDsBlock:v38 processResultsBlock:v32];
  v31 = 0;
  v24 = [(PLEnumerateAndSaveController *)v23 processObjectsWithError:&v31];
  v25 = v31;
  v26 = v31;
  if (!v24)
  {
    v53[3] = 3;
    objc_storeStrong(v45 + 5, v25);
  }

  if (v53[3] != 1)
  {
    v28 = v45[5];
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [v22 setResumeMarkerValue:0];
  v27 = v53[3];
  v28 = v45[5];
  if (v27 != 1 && error)
  {
LABEL_6:
    v28 = v28;
    *error = v28;
  }

LABEL_7:

  v29 = v53[3];
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(v50, 8);
  _Block_object_dispose(&v52, 8);

  return v29;
}

void __174__PLModelMigrationActionUtility_processManagedObjectBatchesWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_useObjectIDResumeMarker_error_processingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(a2) pendingParentUnitCount:*(a1 + 48)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __174__PLModelMigrationActionUtility_processManagedObjectBatchesWithAction_managedObjectContext_fetchRequest_pendingParentUnitCount_useObjectIDResumeMarker_error_processingBlock___block_invoke_3(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = a1[5];
  obj[1] = 0;
  v8 = (*(v7 + 16))();
  v9 = 0;
  *(*(a1[6] + 8) + 24) = v8;
  v10 = *(*(a1[7] + 8) + 40);
  [v10 setCompletedUnitCount:{objc_msgSend(v10, "completedUnitCount") + objc_msgSend_count(v6)}];
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v11 = [v6 lastObject];
    v12 = [v11 objectID];

    v13 = a1[4];
    v14 = *(a1[8] + 8);
    obj[0] = *(v14 + 40);
    v15 = [v13 isCancelledWithResumeMarker:v12 error:obj];
    objc_storeStrong((v14 + 40), obj[0]);
    if (v15)
    {
      *(*(a1[6] + 8) + 24) = 2;
      *a4 = 1;
    }
  }

  else
  {
    objc_storeStrong((*(a1[8] + 8) + 40), 0);
    *a4 = 1;
  }
}

+ (int64_t)processManagedObjectWithAction:(id)action managedObjectContext:(id)context fetchRequest:(id)request useObjectIDResumeMarker:(BOOL)marker error:(id *)error processingBlock:(id)block
{
  markerCopy = marker;
  v146 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  contextCopy = context;
  requestCopy = request;
  blockCopy = block;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__15714;
  v109 = __Block_byref_object_dispose__15715;
  v110 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = __Block_byref_object_copy__15714;
  v103 = __Block_byref_object_dispose__15715;
  v104 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 1;
  if (blockCopy)
  {
    [requestCopy setFetchBatchSize:100];
    v15 = [PLEnumerateAndSaveController alloc];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke;
    v93[3] = &unk_1E7575B30;
    v94 = contextCopy;
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_2;
    v90[3] = &unk_1E7572E50;
    v92 = &v99;
    v91 = actionCopy;
    v79 = actionCopy;
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_3;
    v83[3] = &unk_1E7567CB0;
    v85 = blockCopy;
    v86 = &v99;
    v18 = v91;
    v84 = v18;
    v87 = &v95;
    v89 = markerCopy;
    v88 = &v105;
    v19 = [(PLEnumerateAndSaveController *)v15 initWithName:v17 fetchRequest:requestCopy context:v94 options:4 generateContextBlock:v93 didFetchObjectIDsBlock:v90 processResultBlock:v83];

    v82 = 0;
    v20 = [(PLEnumerateAndSaveController *)v19 processObjectsWithError:&v82];
    v21 = v82;
    if (v20)
    {
      if ([(PLEnumerateAndSaveController *)v19 isCancelled])
      {
        v22 = v106[5];

        v23 = PLMigrationGetLog();
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

        if (v24)
        {
          logger = [v18 logger];
          v26 = logger == 0;

          if (v26)
          {
            v77 = PLMigrationGetLog();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              completedUnitCount = [v100[5] completedUnitCount];
              *buf = 134218242;
              *&buf[4] = completedUnitCount;
              *&buf[12] = 2112;
              *&buf[14] = v22;
              _os_log_impl(&dword_19BF1F000, v77, OS_LOG_TYPE_DEFAULT, "Cancelled operation after update of %lld assets. Error: %@", buf, 0x16u);
            }
          }

          else
          {
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
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            memset(buf, 0, sizeof(buf));
            v27 = PLMigrationGetLog();
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
            completedUnitCount2 = [v100[5] completedUnitCount];
            if (v28)
            {
              v30 = 3;
            }

            else
            {
              v30 = 2;
            }

            v111 = 134218242;
            v112 = completedUnitCount2;
            v113 = 2112;
            v114 = v22;
            v31 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v27, 0, "Cancelled operation after update of %lld assets. Error: %@", &v111, 22);

            logger2 = [v18 logger];
            [logger2 logWithMessage:v31 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{315, 0}];

            if (v31 != buf)
            {
              free(v31);
            }
          }
        }

        goto LABEL_44;
      }

      v53 = PLMigrationGetLog();
      v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);

      if (!v54)
      {
LABEL_43:
        v22 = v21;
LABEL_44:
        v70 = v96;
        if (markerCopy && v96[3] == 1)
        {
          [v18 setResumeMarkerValue:0];
          v70 = v96;
        }

        v71 = v70[3];
        v72 = v22;
        v73 = v72;
        v74 = v71 == 1;
        actionCopy = v79;
        if (!v74 && error)
        {
          v75 = v72;
          *error = v73;
        }

        v65 = v96[3];
        goto LABEL_51;
      }

      logger3 = [v18 logger];
      v56 = logger3 == 0;

      if (!v56)
      {
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
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        memset(buf, 0, sizeof(buf));
        v57 = PLMigrationGetLog();
        v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
        completedUnitCount3 = [v100[5] completedUnitCount];
        if (v58)
        {
          v60 = 3;
        }

        else
        {
          v60 = 2;
        }

        v111 = 134217984;
        v112 = completedUnitCount3;
        v51 = _os_log_send_and_compose_impl(v60, 0, buf, 512, &dword_19BF1F000, v57, 0, "Completed update of %lld assets.", &v111);

        logger4 = [v18 logger];
        [logger4 logWithMessage:v51 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{317, 0}];

        goto LABEL_31;
      }

      v66 = PLMigrationGetLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        completedUnitCount4 = [v100[5] completedUnitCount];
        *buf = 134217984;
        *&buf[4] = completedUnitCount4;
        _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_DEFAULT, "Completed update of %lld assets.", buf, 0xCu);
      }
    }

    else
    {
      if (v96[3] == 2)
      {
        goto LABEL_43;
      }

      v96[3] = 3;
      v43 = PLMigrationGetLog();
      v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);

      if (!v44)
      {
        goto LABEL_43;
      }

      logger5 = [v18 logger];
      v46 = logger5 == 0;

      if (!v46)
      {
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
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        memset(buf, 0, sizeof(buf));
        v47 = PLMigrationGetLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = 3;
        }

        else
        {
          v48 = 2;
        }

        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v111 = 138543618;
        v112 = v50;
        v113 = 2112;
        v114 = v21;
        v51 = _os_log_send_and_compose_impl(v48, 0, buf, 512, &dword_19BF1F000, v47, 16, "Failed to perform a save operation for %{public}@. Error: %@", &v111, 22);

        logger6 = [v18 logger];
        [logger6 logWithMessage:v51 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{321, 16}];

LABEL_31:
        if (v51 != buf)
        {
          free(v51);
        }

        goto LABEL_43;
      }

      v66 = PLMigrationGetLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        *buf = 138543618;
        *&buf[4] = v68;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
      }
    }

    goto LABEL_43;
  }

  v33 = PLMigrationGetLog();
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);

  if (v34)
  {
    logger7 = [actionCopy logger];
    v36 = logger7 == 0;

    if (v36)
    {
      v62 = PLMigrationGetLog();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        *buf = 138543362;
        *&buf[4] = v64;
        _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_INFO, "Missing processing block for %{public}@", buf, 0xCu);
      }
    }

    else
    {
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
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      memset(buf, 0, sizeof(buf));
      v37 = PLMigrationGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = 3;
      }

      else
      {
        v38 = 2;
      }

      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v111 = 138543362;
      v112 = v40;
      v41 = _os_log_send_and_compose_impl(v38, 0, buf, 512, &dword_19BF1F000, v37, 1, "Missing processing block for %{public}@", &v111, 12);

      logger8 = [actionCopy logger];
      [logger8 logWithMessage:v41 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{277, 1}];

      if (v41 != buf)
      {
        free(v41);
      }
    }
  }

  v65 = v96[3];
LABEL_51:
  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v99, 8);

  _Block_object_dispose(&v105, 8);
  return v65;
}

void __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(a2) pendingParentUnitCount:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  (*(*(a1 + 40) + 16))();
  v7 = [*(*(*(a1 + 48) + 8) + 40) completedUnitCount];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_4;
  v16[3] = &unk_1E7578910;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v17 = v8;
  v18 = v9;
  if (v7 && !(v7 % 0x3E8))
  {
    __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_4(v16);
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    if (*(a1 + 72) == 1)
    {
      v10 = [v6 objectID];
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 32);
    v12 = *(*(a1 + 64) + 8);
    obj = *(v12 + 40);
    v13 = [v11 isCancelledWithResumeMarker:v10 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    if (v13)
    {
      *(*(*(a1 + 56) + 8) + 24) = 2;
      *a4 = 1;
    }
  }

  v14 = *(*(*(a1 + 48) + 8) + 40);
  [v14 setCompletedUnitCount:{objc_msgSend(v14, "completedUnitCount") + 1}];
}

void __144__PLModelMigrationActionUtility_processManagedObjectWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error_processingBlock___block_invoke_4(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = PLMigrationGetLog();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (v3)
  {
    v4 = [*(a1 + 32) logger];

    if (v4)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *buf = 0u;
      v15 = 0u;
      v5 = PLMigrationGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      v7 = [*(*(*(a1 + 40) + 8) + 40) completedUnitCount];
      v12 = 134217984;
      v13 = v7;
      v8 = _os_log_send_and_compose_impl(v6, 0, buf, 512, &dword_19BF1F000, v5, 1, "Updated %lld assets", &v12);

      v9 = [*(a1 + 32) logger];
      [v9 logWithMessage:v8 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{292, 1}];

      if (v8 != buf)
      {
        free(v8);
      }
    }

    else
    {
      v10 = PLMigrationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [*(*(*(a1 + 40) + 8) + 40) completedUnitCount];
        *buf = 134217984;
        *&buf[4] = v11;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Updated %lld assets", buf, 0xCu);
      }
    }
  }
}

+ (BOOL)shouldProcessHistoryTokenWithAction:(id)action token:(id)token cutoffPercent:(double)percent managedObjectContext:(id)context
{
  v110 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  tokenCopy = token;
  contextCopy = context;
  v12 = [PLPersistentHistoryUtilities oldestTransactionWithContext:contextCopy];
  v13 = [PLPersistentHistoryUtilities newestTransactionWithContext:contextCopy];

  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v22 = [PLPersistentHistoryUtilities transactionNumberFromToken:tokenCopy];
    v23 = v22;
    if (v22)
    {
      integerValue = [v22 integerValue];
      transactionNumber = [v12 transactionNumber];
      transactionNumber2 = [v13 transactionNumber];
      if (transactionNumber2 == integerValue)
      {
        v26 = PLMigrationGetLog();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

        if (v27)
        {
          logger = [actionCopy logger];

          if (logger)
          {
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
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            *buf = 0u;
            v79 = 0u;
            v29 = PLMigrationGetLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = 3;
            }

            else
            {
              v30 = 2;
            }

            LOWORD(v76) = 0;
            v31 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v29, 16, "Current token matches latest", &v76, 2);

            logger2 = [actionCopy logger];
            v33 = logger2;
            v34 = v31;
            v35 = 235;
LABEL_34:
            [logger2 logWithMessage:v34 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{v35, 16}];

            if (v31 != buf)
            {
              free(v31);
            }

            goto LABEL_64;
          }

          v62 = PLMigrationGetLog();
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_63;
          }

          *buf = 0;
          v63 = "Current token matches latest";
          goto LABEL_62;
        }

LABEL_64:
        LOBYTE(integerValue) = 0;
LABEL_65:

        goto LABEL_66;
      }

      if (transactionNumber2 != transactionNumber)
      {
        v47 = transactionNumber2 - transactionNumber;
        if (transactionNumber2 - transactionNumber > 1999)
        {
          if (v47 >= 0xC351)
          {
            v55 = PLMigrationGetLog();
            v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);

            if (v56)
            {
              logger3 = [actionCopy logger];

              if (logger3)
              {
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
                v84 = 0u;
                v85 = 0u;
                v82 = 0u;
                v83 = 0u;
                v80 = 0u;
                v81 = 0u;
                *buf = 0u;
                v79 = 0u;
                v58 = PLMigrationGetLog();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v59 = 3;
                }

                else
                {
                  v59 = 2;
                }

                LOWORD(v76) = 0;
                v60 = _os_log_send_and_compose_impl(v59, 0, buf, 512, &dword_19BF1F000, v58, 0, "Number of tokens above threshold", &v76, 2);

                logger4 = [actionCopy logger];
                [logger4 logWithMessage:v60 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{255, 0}];

                if (v60 != buf)
                {
                  free(v60);
                }
              }

              else
              {
                v66 = PLMigrationGetLog();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_DEFAULT, "Number of tokens above threshold", buf, 2u);
                }
              }
            }

            if (percent < 0.75)
            {
              v67 = PLMigrationGetLog();
              v68 = os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);

              if (v68)
              {
                logger5 = [actionCopy logger];

                if (logger5)
                {
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
                  v84 = 0u;
                  v85 = 0u;
                  v82 = 0u;
                  v83 = 0u;
                  v80 = 0u;
                  v81 = 0u;
                  *buf = 0u;
                  v79 = 0u;
                  v70 = PLMigrationGetLog();
                  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                  {
                    v71 = 3;
                  }

                  else
                  {
                    v71 = 2;
                  }

                  v76 = 134217984;
                  v77 = 0x3FE8000000000000;
                  v72 = _os_log_send_and_compose_impl(v71, 0, buf, 512, &dword_19BF1F000, v70, 0, "Increasing cutoff to %lf", COERCE_DOUBLE(&v76));

                  logger6 = [actionCopy logger];
                  [logger6 logWithMessage:v72 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{257, 0}];

                  if (v72 != buf)
                  {
                    free(v72);
                  }
                }

                else
                {
                  v74 = PLMigrationGetLog();
                  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134217984;
                    *&buf[4] = 0x3FE8000000000000;
                    _os_log_impl(&dword_19BF1F000, v74, OS_LOG_TYPE_DEFAULT, "Increasing cutoff to %lf", buf, 0xCu);
                  }
                }
              }

              percent = 0.75;
            }
          }

          if (integerValue == transactionNumber)
          {
            v75 = 0;
          }

          else
          {
            v75 = transactionNumber;
          }

          LOBYTE(integerValue) = (integerValue - v75) / v47 >= percent;
        }

        else
        {
          v48 = PLMigrationGetLog();
          v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);

          if (v49)
          {
            logger7 = [actionCopy logger];

            if (logger7)
            {
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
              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              *buf = 0u;
              v79 = 0u;
              v51 = PLMigrationGetLog();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                v52 = 3;
              }

              else
              {
                v52 = 2;
              }

              LOWORD(v76) = 0;
              v53 = _os_log_send_and_compose_impl(v52, 0, buf, 512, &dword_19BF1F000, v51, 0, "Number of tokens below threshold - processing", &v76, 2);

              logger8 = [actionCopy logger];
              [logger8 logWithMessage:v53 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{247, 0}];

              if (v53 != buf)
              {
                free(v53);
              }
            }

            else
            {
              v65 = PLMigrationGetLog();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19BF1F000, v65, OS_LOG_TYPE_DEFAULT, "Number of tokens below threshold - processing", buf, 2u);
              }
            }
          }

          LOBYTE(integerValue) = 1;
        }

        goto LABEL_65;
      }

      v41 = PLMigrationGetLog();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);

      if (!v42)
      {
        goto LABEL_64;
      }

      logger9 = [actionCopy logger];

      if (logger9)
      {
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
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        *buf = 0u;
        v79 = 0u;
        v44 = PLMigrationGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = 3;
        }

        else
        {
          v45 = 2;
        }

        LOWORD(v76) = 0;
        v31 = _os_log_send_and_compose_impl(v45, 0, buf, 512, &dword_19BF1F000, v44, 16, "Matching oldest and latest tokens", &v76, 2);

        logger2 = [actionCopy logger];
        v33 = logger2;
        v34 = v31;
        v35 = 241;
        goto LABEL_34;
      }

      v62 = PLMigrationGetLog();
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      *buf = 0;
      v63 = "Matching oldest and latest tokens";
    }

    else
    {
      v36 = PLMigrationGetLog();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

      if (!v37)
      {
        goto LABEL_64;
      }

      logger10 = [actionCopy logger];

      if (logger10)
      {
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
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        *buf = 0u;
        v79 = 0u;
        v39 = PLMigrationGetLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = 3;
        }

        else
        {
          v40 = 2;
        }

        LOWORD(v76) = 0;
        v31 = _os_log_send_and_compose_impl(v40, 0, buf, 512, &dword_19BF1F000, v39, 16, "Invalid transaction number from token", &v76, 2);

        logger2 = [actionCopy logger];
        v33 = logger2;
        v34 = v31;
        v35 = 224;
        goto LABEL_34;
      }

      v62 = PLMigrationGetLog();
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }

      *buf = 0;
      v63 = "Invalid transaction number from token";
    }

LABEL_62:
    _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_ERROR, v63, buf, 2u);
LABEL_63:

    goto LABEL_64;
  }

  v15 = PLMigrationGetLog();
  LODWORD(integerValue) = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

  if (integerValue)
  {
    logger11 = [actionCopy logger];

    if (logger11)
    {
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
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      *buf = 0u;
      v79 = 0u;
      v18 = PLMigrationGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      LOWORD(v76) = 0;
      v20 = _os_log_send_and_compose_impl(v19, 0, buf, 512, &dword_19BF1F000, v18, 16, "Failed to fetch the oldest/newest transaction", &v76, 2);

      logger12 = [actionCopy logger];
      [logger12 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{217, 16}];

      if (v20 != buf)
      {
        free(v20);
      }
    }

    else
    {
      v46 = PLMigrationGetLog();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_ERROR, "Failed to fetch the oldest/newest transaction", buf, 2u);
      }
    }

    LOBYTE(integerValue) = 0;
  }

LABEL_66:

  return integerValue;
}

+ (void)setHistoryTokenWithAction:(id)action key:(id)key value:(id)value managedObjectContext:(id)context
{
  keyCopy = key;
  valueCopy = value;
  contextCopy = context;
  v12 = keyCopy;
  v13 = contextCopy;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActionUtility.m" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    v12 = 0;
  }

  [PLGlobalKeyValue setGlobalValue:valueCopy forKey:v12 managedObjectContext:v13];
}

+ (id)getHistoryTokenWithAction:(id)action key:(id)key managedObjectContext:(id)context
{
  v64 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  keyCopy = key;
  contextCopy = context;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationActionUtility.m" lineNumber:190 description:{@"Invalid parameter not satisfying: %@", @"key"}];
  }

  v12 = [PLGlobalKeyValue globalValueForKey:keyCopy managedObjectContext:contextCopy];
  if (v12)
  {
    v13 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_26;
    }

    v14 = PLMigrationGetLog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

    if (v15)
    {
      logger = [actionCopy logger];

      if (logger)
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        *buf = 0u;
        v33 = 0u;
        v17 = PLMigrationGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        v31[0] = 0;
        v19 = _os_log_send_and_compose_impl(v18, 0, buf, 512, &dword_19BF1F000, v17, 16, "Invalid history token", v31, 2);

        logger2 = [actionCopy logger];
        [logger2 logWithMessage:v19 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{197, 16}];

        if (v19 != buf)
        {
          free(v19);
        }
      }

      else
      {
        v28 = PLMigrationGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Invalid history token", buf, 2u);
        }
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v21 = PLMigrationGetLog();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

  if (v22)
  {
    logger3 = [actionCopy logger];

    if (logger3)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      *buf = 0u;
      v33 = 0u;
      v24 = PLMigrationGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v31[0] = 0;
      v26 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_19BF1F000, v24, 16, "Missing history token", v31, 2);

      logger4 = [actionCopy logger];
      [logger4 logWithMessage:v26 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{193, 16}];

      if (v26 != buf)
      {
        free(v26);
      }

      goto LABEL_25;
    }

    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Missing history token", buf, 2u);
    }

    goto LABEL_24;
  }

LABEL_25:
  v13 = 0;
LABEL_26:

  return v13;
}

+ (int64_t)resetDuplicateProcessingWithAction:(id)action managedObjectContext:(id)context error:(id *)error
{
  v139 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  contextCopy = context;
  v9 = [actionCopy cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v10 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
  [(PLGlobalValues *)v10 setDuplicateProcessingStatus:0];
  [(PLGlobalValues *)v10 setLastInitialDuplicateDetectorProcessingCompletedDate:0];
  v11 = MEMORY[0x1E695D5E0];
  v12 = +[PLBackgroundJobWorkItem entityName];
  v13 = [v11 fetchRequestWithEntityName:v12];

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"jobType", 6];
  [v13 setPredicate:v14];

  v97 = v13;
  v15 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v13];
  [v15 setResultType:2];
  v101 = 0;
  v16 = [contextCopy executeRequest:v15 error:&v101];
  v17 = v101;
  v18 = PLMigrationGetLog();
  v19 = v18;
  v98 = v16;
  if (v16)
  {
    v20 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    v96 = v10;
    if (v20)
    {
      logger = [actionCopy logger];

      if (logger)
      {
        v91 = v9;
        errorCopy = error;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v112 = 0u;
        v110 = 0u;
        v111 = 0u;
        v109 = 0u;
        memset(buf, 0, sizeof(buf));
        v22 = PLMigrationGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        result = [v98 result];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v102 = 138412802;
        v103 = result;
        v104 = 2114;
        v105 = v26;
        v106 = 2112;
        v107 = v17;
        LODWORD(v89) = 32;
        v27 = _os_log_send_and_compose_impl(v23, 0, buf, 512, &dword_19BF1F000, v22, 0, "Removed %@ duplicate background job items for %{public}@. Error: %@", &v102, v89);

        logger2 = [actionCopy logger];
        [logger2 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{162, 0}];

        if (v27 != buf)
        {
          free(v27);
        }

        v9 = v91;
        error = errorCopy;
      }

      else
      {
        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          result2 = [v98 result];
          v39 = objc_opt_class();
          NSStringFromClass(v39);
          v41 = v40 = error;
          *buf = 138412802;
          *&buf[4] = result2;
          *&buf[12] = 2114;
          *&buf[14] = v41;
          *&buf[22] = 2112;
          *&buf[24] = v17;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Removed %@ duplicate background job items for %{public}@. Error: %@", buf, 0x20u);

          error = v40;
        }
      }
    }

    v100 = v17;
    v42 = [contextCopy save:&v100];
    v43 = v100;

    if (v42)
    {
      errorCopy2 = error;
      v44 = v9;
      v45 = MEMORY[0x1E69BF188];
      pathManager = [actionCopy pathManager];
      libraryURL = [pathManager libraryURL];
      v48 = [v45 appPrivateDataForLibraryURL:libraryURL];

      v99 = v43;
      v90 = v48;
      v49 = [v48 setValue:0 forKey:@"DuplicateProcessingLibraryInterruptMarker" error:&v99];
      v92 = v99;

      if (v49)
      {
        v50 = 1;
LABEL_43:
        v9 = v44;
LABEL_54:
        [v9 setCompletedUnitCount:1];
        v80 = PLMigrationGetLog();
        v81 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);

        if (v81)
        {
          logger3 = [actionCopy logger];

          if (logger3)
          {
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            v112 = 0u;
            v110 = 0u;
            v111 = 0u;
            v109 = 0u;
            memset(buf, 0, sizeof(buf));
            v83 = PLMigrationGetLog();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              v84 = 3;
            }

            else
            {
              v84 = 2;
            }

            LOWORD(v102) = 0;
            LODWORD(v89) = 2;
            v85 = _os_log_send_and_compose_impl(v84, 0, buf, 512, &dword_19BF1F000, v83, 0, "Cleared duplicate detector processing token", &v102, v89);

            logger4 = [actionCopy logger];
            [logger4 logWithMessage:v85 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{177, 0}];

            if (v85 != buf)
            {
              free(v85);
            }
          }

          else
          {
            v87 = PLMigrationGetLog();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19BF1F000, v87, OS_LOG_TYPE_DEFAULT, "Cleared duplicate detector processing token", buf, 2u);
            }
          }
        }

        v60 = v92;
        if (v49)
        {
          v50 = 1;
          v10 = v96;
          goto LABEL_67;
        }

        error = errorCopy2;
        v10 = v96;
        if (!errorCopy2)
        {
          goto LABEL_67;
        }

        goto LABEL_34;
      }

      v62 = PLMigrationGetLog();
      v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);

      v9 = v44;
      if (v63)
      {
        logger5 = [actionCopy logger];

        if (logger5)
        {
          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v133 = 0u;
          v134 = 0u;
          v131 = 0u;
          v132 = 0u;
          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v112 = 0u;
          v110 = 0u;
          v111 = 0u;
          v109 = 0u;
          memset(buf, 0, sizeof(buf));
          v65 = PLMigrationGetLog();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            v66 = 3;
          }

          else
          {
            v66 = 2;
          }

          v67 = objc_opt_class();
          v68 = NSStringFromClass(v67);
          v102 = 138543618;
          v103 = v68;
          v104 = 2112;
          v105 = v92;
          LODWORD(v89) = 22;
          v69 = _os_log_send_and_compose_impl(v66, 0, buf, 512, &dword_19BF1F000, v65, 0, "Failed to set the interrupt marker for %{public}@. Error: %@", &v102, v89);

          logger6 = [actionCopy logger];
          [logger6 logWithMessage:v69 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{174, 0}];

          if (v69 != buf)
          {
            free(v69);
          }

          v50 = 3;
          goto LABEL_43;
        }

        v77 = PLMigrationGetLog();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          v78 = objc_opt_class();
          v79 = NSStringFromClass(v78);
          *buf = 138543618;
          *&buf[4] = v79;
          *&buf[12] = 2112;
          *&buf[14] = v92;
          _os_log_impl(&dword_19BF1F000, v77, OS_LOG_TYPE_DEFAULT, "Failed to set the interrupt marker for %{public}@. Error: %@", buf, 0x16u);
        }
      }

      v50 = 3;
      goto LABEL_54;
    }

    v51 = PLMigrationGetLog();
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);

    if (!v52)
    {
      goto LABEL_31;
    }

    logger7 = [actionCopy logger];

    if (logger7)
    {
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v112 = 0u;
      v110 = 0u;
      v111 = 0u;
      v109 = 0u;
      memset(buf, 0, sizeof(buf));
      v54 = PLMigrationGetLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      v102 = 138543618;
      v103 = v57;
      v104 = 2112;
      v105 = v43;
      LODWORD(v89) = 22;
      v58 = _os_log_send_and_compose_impl(v55, 0, buf, 512, &dword_19BF1F000, v54, 16, "Failed to perform a save operation for %{public}@. Error: %@", &v102, v89);

      logger8 = [actionCopy logger];
      [logger8 logWithMessage:v58 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{180, 16}];

      if (v58 != buf)
      {
        free(v58);
      }

LABEL_31:
      v17 = v43;
LABEL_32:
      v10 = v96;
      goto LABEL_33;
    }

    v74 = PLMigrationGetLog();
    v10 = v96;
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      v75 = objc_opt_class();
      v76 = NSStringFromClass(v75);
      *buf = 138543618;
      *&buf[4] = v76;
      *&buf[12] = 2112;
      *&buf[14] = v43;
      _os_log_impl(&dword_19BF1F000, v74, OS_LOG_TYPE_ERROR, "Failed to perform a save operation for %{public}@. Error: %@", buf, 0x16u);
    }

    v17 = v43;
  }

  else
  {
    v29 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

    if (!v29)
    {
      goto LABEL_33;
    }

    logger9 = [actionCopy logger];

    if (logger9)
    {
      errorCopy3 = error;
      v96 = v10;
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v112 = 0u;
      v110 = 0u;
      v111 = 0u;
      v109 = 0u;
      memset(buf, 0, sizeof(buf));
      v31 = PLMigrationGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v102 = 138543618;
      v103 = v34;
      v104 = 2112;
      v105 = v17;
      LODWORD(v89) = 22;
      v35 = _os_log_send_and_compose_impl(v32, 0, buf, 512, &dword_19BF1F000, v31, 16, "Failed to remove duplicate background job items for %{public}@. Error: %@", &v102, v89);

      logger10 = [actionCopy logger];
      [logger10 logWithMessage:v35 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{165, 16}];

      if (v35 != buf)
      {
        free(v35);
      }

      error = errorCopy3;
      goto LABEL_32;
    }

    v71 = PLMigrationGetLog();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = objc_opt_class();
      v73 = NSStringFromClass(v72);
      *buf = 138543618;
      *&buf[4] = v73;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&dword_19BF1F000, v71, OS_LOG_TYPE_ERROR, "Failed to remove duplicate background job items for %{public}@. Error: %@", buf, 0x16u);
    }
  }

LABEL_33:
  v60 = v17;
  v50 = 3;
  if (error)
  {
LABEL_34:
    v61 = v60;
    *error = v60;
  }

LABEL_67:

  return v50;
}

+ (int64_t)removeFromDuplicatesWithAction:(id)action managedObjectContext:(id)context fetchRequest:(id)request requiresLibraryReprocessing:(BOOL)reprocessing error:(id *)error
{
  reprocessingCopy = reprocessing;
  v103 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  contextCopy = context;
  requestCopy = request;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 1;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__15714;
  v62 = __Block_byref_object_dispose__15715;
  v63 = 0;
  obj = 0;
  v13 = [contextCopy executeFetchRequest:requestCopy error:&obj];
  objc_storeStrong(&v63, obj);
  if (objc_msgSend_count(v13))
  {
    v14 = [actionCopy cancellableDiscreteProgressWithTotalUnitCount:objc_msgSend_count(v13) pendingParentUnitCount:0];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __132__PLModelMigrationActionUtility_removeFromDuplicatesWithAction_managedObjectContext_fetchRequest_requiresLibraryReprocessing_error___block_invoke;
    v52[3] = &unk_1E756DBE0;
    v49 = actionCopy;
    v53 = v49;
    v55 = &v58;
    v56 = &v64;
    v15 = v14;
    v54 = v15;
    v16 = [contextCopy enumerateWithIncrementalSaveUsingObjects:v13 withBlock:v52];
    if (v16 && !v59[5])
    {
      objc_storeStrong(v59 + 5, v16);
      v65[3] = 3;
    }

    if (v65[3] == 1)
    {
      v17 = PLMigrationGetLog();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v18)
      {
        logger = [v49 logger];
        v20 = logger == 0;

        if (!v20)
        {
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          memset(buf, 0, sizeof(buf));
          v21 = PLMigrationGetLog();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          v23 = objc_msgSend_count(v13);
          if (v22)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          v68 = 67109120;
          LODWORD(v69) = v23;
          v25 = _os_log_send_and_compose_impl(v24, 0, buf, 512, &dword_19BF1F000, v21, 0, "Removed %d assets from duplicate albums", &v68);

          logger2 = [v49 logger];
          [logger2 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{128, 0}];

          goto LABEL_20;
        }

        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = objc_msgSend_count(v13);
          *buf = 67109120;
          *&buf[4] = v38;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Removed %d assets from duplicate albums", buf, 8u);
        }

LABEL_27:
      }
    }

    else
    {
      v27 = PLMigrationGetLog();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);

      if (v28)
      {
        logger3 = [v49 logger];
        v30 = logger3 == 0;

        if (!v30)
        {
          errorCopy = error;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          memset(buf, 0, sizeof(buf));
          v31 = PLMigrationGetLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }

          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v35 = v59[5];
          v68 = 138543618;
          v69 = v34;
          v70 = 2114;
          v71 = v35;
          v25 = _os_log_send_and_compose_impl(v32, 0, buf, 512, &dword_19BF1F000, v31, 16, "Failed to save managed object context for %{public}@. Error: %{public}@", &v68, 22);

          error = errorCopy;
          logger4 = [v49 logger];
          [logger4 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{130, 16}];

LABEL_20:
          if (v25 != buf)
          {
            free(v25);
          }

          goto LABEL_28;
        }

        v37 = PLMigrationGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = v59[5];
          *buf = 138543618;
          *&buf[4] = v40;
          *&buf[12] = 2114;
          *&buf[14] = v41;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to save managed object context for %{public}@. Error: %{public}@", buf, 0x16u);
        }

        goto LABEL_27;
      }
    }

LABEL_28:

    if (reprocessingCopy && v65[3] == 1 && (MEMORY[0x19EAEE520]() & 1) == 0)
    {
      v51 = 0;
      v42 = [PLModelMigrationActionUtility resetDuplicateProcessingWithAction:v49 managedObjectContext:contextCopy error:&v51];
      v43 = v51;
      v65[3] = v42;
    }

    goto LABEL_32;
  }

  if (!v13)
  {
    v65[3] = 3;
  }

LABEL_32:
  v44 = v65[3];
  v45 = v59[5];
  if (v44 != 1 && error)
  {
    v45 = v45;
    *error = v45;
  }

  v46 = v65[3];
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
  return v46;
}

uint64_t __132__PLModelMigrationActionUtility_removeFromDuplicatesWithAction_managedObjectContext_fetchRequest_requiresLibraryReprocessing_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 removeFromDuplicateAlbum];
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v8 = [v6 isCancelledWithError:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    *(*(*(a1 + 56) + 8) + 24) = 2;
    *a4 = 1;
  }

  return [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
}

+ (BOOL)processExtendedAttributesWithAction:(id)action asset:(id)asset metadata:(id)metadata error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  assetCopy = asset;
  v30 = 0;
  v11 = [assetCopy updateExtendedAttributesWithMetadata:metadata error:&v30];
  v12 = v30;
  if (v11)
  {
    extendedAttributes = [assetCopy extendedAttributes];
    dateCreated = [extendedAttributes dateCreated];
    if (dateCreated)
    {
      master = dateCreated;
      timezoneName = [extendedAttributes timezoneName];
      if (timezoneName)
      {

LABEL_17:
        goto LABEL_18;
      }

      timezoneOffset = [extendedAttributes timezoneOffset];

      if (timezoneOffset)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    master = [assetCopy master];
    if (master)
    {
      [PLManagedAsset fixMissingOriginalDateCreatedIfNeededForAsset:assetCopy withCloudMaster:master];
      [PLManagedAsset fixMissingOriginalTimezoneIfNeededForAsset:assetCopy];
    }

    goto LABEL_17;
  }

  v17 = PLMigrationGetLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

  if (v18)
  {
    logger = [actionCopy logger];

    if (!logger)
    {
      v28 = PLMigrationGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        uuidDescription = [assetCopy uuidDescription];
        *buf = 138543618;
        *&buf[4] = uuidDescription;
        *&buf[12] = 2112;
        *&buf[14] = v12;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_INFO, "Failed updating attributes for asset %{public}@. Error: %@", buf, 0x16u);
      }

      if (error)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    memset(buf, 0, sizeof(buf));
    v20 = PLMigrationGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    uuidDescription2 = [assetCopy uuidDescription];
    v31 = 138543618;
    v32 = uuidDescription2;
    v33 = 2112;
    v34 = v12;
    v23 = _os_log_send_and_compose_impl(v21, 0, buf, 512, &dword_19BF1F000, v20, 1, "Failed updating attributes for asset %{public}@. Error: %@", &v31, 22);

    logger2 = [actionCopy logger];
    [logger2 logWithMessage:v23 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{100, 1}];

    if (v23 != buf)
    {
      free(v23);
    }
  }

  if (error)
  {
LABEL_13:
    v25 = v12;
    *error = v12;
  }

LABEL_19:

  return v11;
}

+ (int64_t)updateExtendedAttributesWithAction:(id)action managedObjectContext:(id)context fetchRequest:(id)request useObjectIDResumeMarker:(BOOL)marker error:(id *)error
{
  markerCopy = marker;
  v30[4] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  contextCopy = context;
  requestCopy = request;
  [requestCopy setFetchBatchSize:100];
  v30[0] = @"extendedAttributes";
  v30[1] = @"master";
  v30[2] = @"master.mediaMetadata";
  v30[3] = @"modernResources";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  [requestCopy setRelationshipKeyPathsForPrefetching:v15];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__15714;
  v28 = __Block_byref_object_dispose__15715;
  v29 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __132__PLModelMigrationActionUtility_updateExtendedAttributesWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error___block_invoke;
  v20[3] = &unk_1E7567C80;
  selfCopy = self;
  v16 = actionCopy;
  v21 = v16;
  v22 = &v24;
  v17 = [self processManagedObjectWithAction:v16 managedObjectContext:contextCopy fetchRequest:requestCopy useObjectIDResumeMarker:markerCopy error:error processingBlock:v20];
  v18 = v25[5];
  if (!v17 && error)
  {
    v18 = v18;
    *error = v18;
  }

  _Block_object_dispose(&v24, 8);
  return v17 != 0;
}

void __132__PLModelMigrationActionUtility_updateExtendedAttributesWithAction_managedObjectContext_fetchRequest_useObjectIDResumeMarker_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 metadataFromMediaPropertiesOrOriginalResource];
  v5 = a1[6];
  v6 = a1[4];
  v7 = *(a1[5] + 8);
  obj = *(v7 + 40);
  [v5 processExtendedAttributesWithAction:v6 asset:v3 metadata:v4 error:&obj];

  objc_storeStrong((v7 + 40), obj);
}

+ (int64_t)removeOrphanedObjectsWithAction:(id)action managedObjectContext:(id)context fetchRequest:(id)request error:(id *)error
{
  v77 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  requestCopy = request;
  v11 = MEMORY[0x1E695D538];
  contextCopy = context;
  v13 = [[v11 alloc] initWithFetchRequest:requestCopy];
  [v13 setResultType:2];
  v41 = 0;
  v14 = [contextCopy executeRequest:v13 error:&v41];

  v15 = v41;
  v16 = PLMigrationGetLog();
  v17 = v16;
  if (v14)
  {
    v18 = 1;
    v19 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

    if (v19)
    {
      logger = [actionCopy logger];

      if (logger)
      {
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        memset(buf, 0, sizeof(buf));
        v21 = PLMigrationGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        result = [v14 result];
        entityName = [requestCopy entityName];
        v42 = 138543618;
        v43 = result;
        v44 = 2114;
        v45 = entityName;
        v25 = _os_log_send_and_compose_impl(v22, 0, buf, 512, &dword_19BF1F000, v21, 1, "Deleted %{public}@ %{public}@ objects", &v42, 22);

        logger2 = [actionCopy logger];
        [logger2 logWithMessage:v25 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{50, 1}];

        if (v25 != buf)
        {
          free(v25);
        }
      }

      else
      {
        v34 = PLMigrationGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          result2 = [v14 result];
          entityName2 = [requestCopy entityName];
          *buf = 138543618;
          *&buf[4] = result2;
          *&buf[12] = 2114;
          *&buf[14] = entityName2;
          _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_INFO, "Deleted %{public}@ %{public}@ objects", buf, 0x16u);
        }
      }

      v18 = 1;
    }

    if (error)
    {
LABEL_21:
      v37 = v15;
      *error = v15;
    }
  }

  else
  {
    v27 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v27)
    {
      logger3 = [actionCopy logger];

      if (logger3)
      {
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        memset(buf, 0, sizeof(buf));
        v29 = PLMigrationGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        entityName3 = [requestCopy entityName];
        v42 = 138543618;
        v43 = entityName3;
        v44 = 2112;
        v45 = v15;
        v32 = _os_log_send_and_compose_impl(v30, 0, buf, 512, &dword_19BF1F000, v29, 16, "Failed to delete orphaned %{public}@. Error: %@", &v42, 22);

        logger4 = [actionCopy logger];
        [logger4 logWithMessage:v32 fromCodeLocation:"PLModelMigrationActionUtility.m" type:{53, 16}];

        if (v32 != buf)
        {
          free(v32);
        }
      }

      else
      {
        v39 = PLMigrationGetLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          entityName4 = [requestCopy entityName];
          *buf = 138543618;
          *&buf[4] = entityName4;
          *&buf[12] = 2112;
          *&buf[14] = v15;
          _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Failed to delete orphaned %{public}@. Error: %@", buf, 0x16u);
        }
      }
    }

    v18 = 3;
    if (error)
    {
      goto LABEL_21;
    }
  }

  return v18;
}

@end