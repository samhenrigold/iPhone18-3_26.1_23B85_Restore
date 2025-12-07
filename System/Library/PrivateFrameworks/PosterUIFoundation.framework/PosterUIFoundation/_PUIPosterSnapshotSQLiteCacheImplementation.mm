@interface _PUIPosterSnapshotSQLiteCacheImplementation
- (BOOL)checkCacheIsReachableWithError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)prepareCacheWithError:(id *)error;
- (_PUIPosterSnapshotSQLiteCacheImplementation)initWithURL:(id)l fileManager:(id)manager options:(int64_t)options cacheQueue:(id)queue scheduler:(id)scheduler error:(id *)error;
- (id)cacheSnapshotBundle:(id)bundle options:(id)options;
- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)predicate;
- (id)snapshotBundlesMatchingSQLPredicate:(id)predicate orderedBy:(id)by limit:(id)limit;
- (unint64_t)hash;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _PUIPosterSnapshotSQLiteCacheImplementation

- (_PUIPosterSnapshotSQLiteCacheImplementation)initWithURL:(id)l fileManager:(id)manager options:(int64_t)options cacheQueue:(id)queue scheduler:(id)scheduler error:(id *)error
{
  v71[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  managerCopy = manager;
  queueCopy = queue;
  schedulerCopy = scheduler;
  v65.receiver = self;
  v65.super_class = _PUIPosterSnapshotSQLiteCacheImplementation;
  v18 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)&v65 init];
  if (!v18)
  {
LABEL_25:
    v24 = v18;
    goto LABEL_26;
  }

  v19 = objc_opt_new();
  invalidationFlag = v18->_invalidationFlag;
  v18->_invalidationFlag = v19;

  v18->_options = options;
  uRLByStandardizingPath = [lCopy URLByStandardizingPath];
  cacheURL = v18->_cacheURL;
  v18->_cacheURL = uRLByStandardizingPath;

  if ([(NSURL *)v18->_cacheURL checkResourceIsReachableAndReturnError:error])
  {
    if (managerCopy)
    {
      v23 = managerCopy;
    }

    else
    {
      v23 = objc_opt_new();
    }

    fileManager = v18->_fileManager;
    v18->_fileManager = v23;

    v26 = [(NSURL *)v18->_cacheURL URLByAppendingPathComponent:@"PosterSnapshotCache.bundle" conformingToType:*MEMORY[0x1E6982D00]];
    rootCacheURL = v18->_rootCacheURL;
    v18->_rootCacheURL = v26;

    v28 = [(NSURL *)v18->_rootCacheURL URLByAppendingPathComponent:@"SnapshotBundles"];
    snapshotBundleContainerURL = v18->_snapshotBundleContainerURL;
    v18->_snapshotBundleContainerURL = v28;

    v30 = [(NSURL *)v18->_rootCacheURL URLByAppendingPathComponent:@"cache.db"];
    databaseURL = v18->_databaseURL;
    v18->_databaseURL = v30;

    if ((v18->_options & 4) == 0)
    {
      queueCopy2 = queue;
      schedulerCopy2 = scheduler;
      v58 = schedulerCopy;
      v59 = queueCopy;
      v32 = MEMORY[0x1E695DFF8];
      path = [(NSURL *)v18->_databaseURL path];
      v34 = [path stringByAppendingString:@"-shm"];
      v35 = [v32 fileURLWithPath:v34];

      v36 = MEMORY[0x1E695DFF8];
      path2 = [(NSURL *)v18->_databaseURL path];
      v38 = [path2 stringByAppendingString:@"-wal"];
      v39 = [v36 fileURLWithPath:v38];

      v71[0] = v18->_databaseURL;
      v71[1] = v35;
      v54 = v39;
      v55 = v35;
      v71[2] = v39;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:3];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v40 = v64 = 0u;
      v41 = [v40 countByEnumeratingWithState:&v61 objects:v70 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v62;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v62 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v61 + 1) + 8 * i);
            if ([v45 checkResourceIsReachableAndReturnError:0])
            {
              if ([v45 pf_allowSuspendWithOpenFileHandle])
              {
                v46 = 0;
              }

              else
              {
                v60 = 0;
                v47 = [v45 pf_setAllowSuspendWithOpenFileHandle:1 error:&v60];
                v48 = v60;
                v46 = v48;
                if ((v47 & 1) == 0)
                {
                  v49 = PUILogSnapshotCache(v48);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    lastPathComponent = [v45 lastPathComponent];
                    *buf = 138543618;
                    v67 = lastPathComponent;
                    v68 = 2114;
                    v69 = v46;
                    _os_log_error_impl(&dword_1A8C85000, v49, OS_LOG_TYPE_ERROR, "<_PUIPosterSnapshotSQLiteCacheImplementation init> Unable to change allow-suspend-with-open-file-handle for sqlite database url %{public}@: %{public}@", buf, 0x16u);
                  }
                }
              }
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v61 objects:v70 count:16];
        }

        while (v42);
      }

      schedulerCopy = v58;
      queueCopy = v59;
      queue = queueCopy2;
      scheduler = schedulerCopy2;
    }

    objc_storeStrong(&v18->_cacheQueue, queue);
    objc_storeStrong(&v18->_cacheQueueScheduler, scheduler);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v18->_identifier;
    v18->_identifier = uUID;

    goto LABEL_25;
  }

  [(BSAtomicSignal *)v18->_invalidationFlag signal];
  v24 = 0;
LABEL_26:

  return v24;
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_invalidationFlag && [_invalidationFlag hasBeenSignalled]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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

  v8 = v7;

  if (v8)
  {
    v9 = [(NSUUID *)self->_identifier isEqual:v8[4]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E698E6B8]);
  v4 = [v3 appendObject:self->_identifier];
  v5 = [v3 hash];

  return v5;
}

- (void)invalidate
{
  v3 = NSStringFromSelector(aSelector);
  LODWORD(v10) = 134218242;
  *(&v10 + 4) = self;
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1A8C85000, v4, v5, "<%p> invalidating the database connection from: %@", v6, v7, v8, v9, v10, DWORD2(v10));
}

- (BOOL)prepareCacheWithError:(id *)error
{
  selfCopy = self;
  v192 = *MEMORY[0x1E69E9840];
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    if (error)
    {
      v5 = PFFunctionNameForAddress();
      *error = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    return 0;
  }

  databaseConnectionAcquisitionError = [(_PUIPosterSnapshotSQLiteCacheImplementation *)selfCopy databaseConnectionAcquisitionError];

  if (!databaseConnectionAcquisitionError)
  {
    if (selfCopy->_databaseConnection)
    {
      return 1;
    }

    v10 = PUILogSnapshotCache(v7);
    v11 = os_signpost_id_generate(v10);

    v13 = PUILogSnapshotCache(v12);
    v14 = v13;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SnapshotCachePrepare", &unk_1A8D256D3, buf, 2u);
    }

    v164 = selfCopy->_fileManager;
    v15 = selfCopy->_databaseURL;
    v163 = selfCopy->_cacheLogIdentifier;
    options = selfCopy->_options;
    v17 = [(NSURL *)selfCopy->_cacheURL URLByAppendingPathComponent:@"PosterSnapshots" isDirectory:1];
    v182[0] = MEMORY[0x1E69E9820];
    v182[1] = 3221225472;
    v182[2] = __69___PUIPosterSnapshotSQLiteCacheImplementation_prepareCacheWithError___block_invoke;
    v182[3] = &unk_1E78554F8;
    v182[4] = selfCopy;
    v182[5] = v11;
    v18 = MEMORY[0x1AC5769F0](v182);
    if ((options & 6) != 0)
    {
      if ([v17 checkResourceIsReachableAndReturnError:0])
      {
        v19 = PFFunctionNameForAddress();
        PFGeneralErrorFromObjectWithLocalizedFailureReason();
        *error = v8 = 0;
LABEL_131:

        goto LABEL_132;
      }

      if (![(NSURL *)selfCopy->_databaseURL checkResourceIsReachableAndReturnError:error]|| ![(NSURL *)selfCopy->_snapshotBundleContainerURL checkResourceIsReachableAndReturnError:error])
      {
        v8 = 0;
LABEL_132:

        return v8;
      }
    }

    v20 = [v17 checkResourceIsReachableAndReturnError:0];
    if (v20)
    {
      v181 = 0;
      v21 = [(NSFileManager *)v164 removeItemAtURL:v17 error:&v181];
      v22 = v181;
      v19 = v22;
      if (!v21)
      {
        v62 = v22;
        *error = v19;
        v63 = (v18)[2](v18, v19);
        v64 = PUILogSnapshotCache(v63);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        goto LABEL_69;
      }

      v23 = PUILogSnapshotCache(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }
    }

    else
    {
      v19 = PUILogSnapshotCache(v20);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }
    }

    if ([(NSURL *)selfCopy->_rootCacheURL checkResourceIsReachableAndReturnError:0])
    {
      v24 = [(NSURL *)selfCopy->_databaseURL checkResourceIsReachableAndReturnError:0];
      v25 = [(NSURL *)selfCopy->_snapshotBundleContainerURL checkResourceIsReachableAndReturnError:0];
      goto LABEL_31;
    }

    rootCacheURL = selfCopy->_rootCacheURL;
    v27 = PFPosterPathFileAttributes();
    v180 = 0;
    LOBYTE(rootCacheURL) = [(NSFileManager *)v164 createDirectoryAtURL:rootCacheURL withIntermediateDirectories:0 attributes:v27 error:&v180];
    v19 = v180;

    if (rootCacheURL)
    {

      v24 = 0;
LABEL_31:
      v28 = PUILogSnapshotCache(v25);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }

      v149 = v24;
      if (!(v24 | (options >> 2) & 1))
      {
        errorCopy = error;
        v153 = v18;
        v156 = v17;
        v158 = v15;
        v148 = selfCopy;
        v29 = selfCopy->_databaseURL;
        v30 = MEMORY[0x1E695DFF8];
        path = [(NSURL *)v29 path];
        v32 = [path stringByAppendingString:@"-shm"];
        v33 = [v30 fileURLWithPath:v32];

        v34 = MEMORY[0x1E695DFF8];
        path2 = [(NSURL *)v29 path];
        v36 = [path2 stringByAppendingString:@"-wal"];
        v37 = [v34 fileURLWithPath:v36];

        v178 = 0u;
        v179 = 0u;
        v176 = 0u;
        v177 = 0u;
        v146 = v33;
        v190[0] = v29;
        v190[1] = v33;
        v145 = v37;
        v190[2] = v37;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v190 count:3];
        v39 = [v38 countByEnumeratingWithState:&v176 objects:v191 count:16];
        if (!v39)
        {
          goto LABEL_48;
        }

        v40 = v39;
        v41 = *v177;
        while (1)
        {
          v42 = 0;
          do
          {
            if (*v177 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v176 + 1) + 8 * v42);
            path3 = [v43 path];
            data = [MEMORY[0x1E695DEF0] data];
            v46 = PFPosterPathFileAttributes();
            [(NSFileManager *)v164 createFileAtPath:path3 contents:data attributes:v46];

            v175 = 0;
            LOBYTE(v46) = [v43 pf_setAllowSuspendWithOpenFileHandle:1 error:&v175];
            v47 = v175;
            v48 = PUILogSnapshotCache(v47);
            v49 = v48;
            if (v46)
            {
              if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_44;
              }

              lastPathComponent = [v43 lastPathComponent];
              *buf = 138543874;
              v185 = v163;
              v186 = 2114;
              v187 = lastPathComponent;
              v188 = 2114;
              v189 = v47;
              _os_log_impl(&dword_1A8C85000, v49, OS_LOG_TYPE_DEFAULT, "<%{public}@> Changed allow-suspend-with-open-file-handle for sqlite database url %{public}@: %{public}@", buf, 0x20u);
              goto LABEL_42;
            }

            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              lastPathComponent = [v43 lastPathComponent];
              *buf = 138543874;
              v185 = v163;
              v186 = 2114;
              v187 = lastPathComponent;
              v188 = 2114;
              v189 = v47;
              _os_log_error_impl(&dword_1A8C85000, v49, OS_LOG_TYPE_ERROR, "<%{public}@> Unable to change allow-suspend-with-open-file-handle for sqlite database url %{public}@: %{public}@", buf, 0x20u);
LABEL_42:
            }

LABEL_44:

            ++v42;
          }

          while (v40 != v42);
          v51 = [v38 countByEnumeratingWithState:&v176 objects:v191 count:16];
          v40 = v51;
          if (!v51)
          {
LABEL_48:

            v17 = v156;
            v15 = v158;
            error = errorCopy;
            v18 = v153;
            selfCopy = v148;
            break;
          }
        }
      }

      if ((options & 2) != 0)
      {
        v52 = 2;
      }

      else
      {
        v52 = 6;
      }

      if ((options & 4) != 0)
      {
        v53 = 1;
      }

      else
      {
        v53 = v52;
      }

      v54 = objc_alloc(MEMORY[0x1E69C51A0]);
      databaseURL = selfCopy->_databaseURL;
      v174 = 0;
      v56 = [v54 initWithFileURL:databaseURL options:v53 dataProtectionClass:1 error:&v174];
      v19 = v174;
      databaseConnection = selfCopy->_databaseConnection;
      selfCopy->_databaseConnection = v56;

      if (v19)
      {
        v59 = v19;
        *error = v19;
        v60 = (v18)[2](v18, v19);
        v61 = PUILogSnapshotCache(v60);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v8 = 0;
        goto LABEL_130;
      }

      v65 = PUILogSnapshotCache(v58);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }

      v66 = selfCopy->_databaseConnection;
      v173 = 0;
      [(PFSQLiteDatabaseConnection *)v66 executeQuery:@"PRAGMA journal_mode=WAL;" error:&v173];
      v67 = v173;
      v61 = v67;
      if (v67)
      {
        v68 = v67;
        *error = v61;
        v69 = (v18)[2](v18, v61);
        v70 = PUILogSnapshotCache(v69);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v8 = 0;
        goto LABEL_129;
      }

      v73 = objc_alloc(MEMORY[0x1E69C5188]);
      v74 = selfCopy->_databaseConnection;
      v172 = 0;
      v75 = [v73 initWithDatabaseConnection:v74 error:&v172];
      v70 = v172;
      archiver = selfCopy->_archiver;
      selfCopy->_archiver = v75;

      if (v70)
      {
        v78 = v70;
        *error = v70;
        v79 = (v18)[2](v18, v70);
        v80 = PUILogSnapshotCache(v79);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v8 = 0;
        goto LABEL_128;
      }

      v81 = PUILogSnapshotCache(v77);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }

      v82 = objc_alloc(MEMORY[0x1E69C51B0]);
      v83 = selfCopy->_databaseConnection;
      v171 = 0;
      v160 = [v82 initWithDatabaseConnection:v83 error:&v171];
      v84 = v171;
      keyedArchiver = selfCopy->_keyedArchiver;
      selfCopy->_keyedArchiver = v160;

      if (v84)
      {
        v87 = v84;
        *error = v84;
        v88 = (v18)[2](v18, v84);
        v89 = PUILogSnapshotCache(v88);
        v80 = v84;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v8 = 0;
        goto LABEL_127;
      }

      v90 = PUILogSnapshotCache(v86);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }

      v147 = [(PFSQLiteKeyedArchiver *)selfCopy->_keyedArchiver objectForKey:@"schema_version" ofClass:objc_opt_class()];
      unsignedIntegerValue = [v147 unsignedIntegerValue];
      v92 = unsignedIntegerValue | options & 4;
      v144 = v92 != 0;
      v157 = v17;
      v159 = v15;
      if (!v92)
      {
        v150 = options;
        errorCopy2 = error;
        v154 = v18;
        v93 = PUILogSnapshotCache(unsignedIntegerValue);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v169 = 0u;
        v170 = 0u;
        v167 = 0u;
        v168 = 0u;
        v94 = selfCopy;
        tableNames = [(PFSQLiteDatabaseConnection *)selfCopy->_databaseConnection tableNames];
        v96 = [tableNames countByEnumeratingWithState:&v167 objects:v183 count:16];
        if (v96)
        {
          v97 = v96;
          v98 = *v168;
          do
          {
            for (i = 0; i != v97; ++i)
            {
              if (*v168 != v98)
              {
                objc_enumerationMutation(tableNames);
              }

              v100 = *(*(&v167 + 1) + 8 * i);
              if (([v100 isEqualToString:@"_PFSQLiteKeyedArchiverEntry"] & 1) == 0)
              {
                v101 = v94->_databaseConnection;
                v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE %@", v100];
                [(PFSQLiteDatabaseConnection *)v101 executeQuery:v100 error:0];
              }
            }

            v97 = [tableNames countByEnumeratingWithState:&v167 objects:v183 count:16];
          }

          while (v97);
        }

        selfCopy = v94;
        [(NSFileManager *)v164 removeItemAtURL:v94->_snapshotBundleContainerURL error:0];
        v103 = PUILogSnapshotCache([(PFSQLiteKeyedArchiver *)v94->_keyedArchiver setInteger:1 forKey:@"schema_version"]);
        v18 = v154;
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        LOBYTE(options) = v150;
        error = errorCopy2;
        v19 = 0;
      }

      v104 = +[_PUIPosterSnapshotCacheRecord pf_sqliteCodingDescriptor];
      v161 = selfCopy->_archiver;
      v105 = objc_opt_class();
      v166 = 0;
      v106 = v161;
      v162 = v104;
      LOBYTE(v104) = [(PFSQLiteArchiver *)v106 setupForDescriptor:v104 forClass:v105 error:&v166];
      v107 = v166;
      v108 = v107;
      if ((v104 & 1) == 0)
      {
        v120 = v107;
        *error = v108;
        v121 = (v18)[2](v18, v108);
        v122 = PUILogSnapshotCache(v121);
        v70 = 0;
        v123 = v108;
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v8 = 0;
        v89 = v147;
        v80 = 0;
        goto LABEL_126;
      }

      v155 = v107;
      v109 = PUILogSnapshotCache(v107);
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
      {
        [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
      }

      v110 = [(NSURL *)selfCopy->_snapshotBundleContainerURL checkResourceIsReachableAndReturnError:0];
      if ((v110 & 1) == 0)
      {
        v111 = v18;
        if ((options & 4) != 0)
        {
          v112 = PUILogSnapshotCache(v110);
          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
          {
            [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
          }

          goto LABEL_123;
        }

        fileManager = selfCopy->_fileManager;
        snapshotBundleContainerURL = selfCopy->_snapshotBundleContainerURL;
        v126 = PFPosterPathFileAttributes();
        v165 = 0;
        LOBYTE(snapshotBundleContainerURL) = [(NSFileManager *)fileManager createDirectoryAtURL:snapshotBundleContainerURL withIntermediateDirectories:1 attributes:v126 error:&v165];
        v127 = v165;

        if ((snapshotBundleContainerURL & 1) == 0)
        {
          v130 = v127;
          *error = v127;
          v131 = (v111)[2](v111, v127);
          v132 = PUILogSnapshotCache(v131);
          if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
          {
            [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
          }

          v8 = 0;
          v18 = v111;
          v61 = 0;
          v19 = 0;
          goto LABEL_125;
        }

        v129 = PUILogSnapshotCache(v128);
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
        {
          [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
        }

        v18 = v111;
        v61 = 0;
        v19 = 0;
      }

      if (!v149 || (options & 4) != 0 || !v144)
      {
        goto LABEL_124;
      }

      v111 = v18;
      v112 = [v162 columnForName:@"_snapshotBundleUUID"];
      v113 = selfCopy;
      v114 = selfCopy->_archiver;
      v115 = objc_opt_self();
      v116 = [(PFSQLiteArchiver *)v114 objectsOfClass:v115 column:v112 predicate:0 limitOffset:0 orderedBy:0 error:0];
      v117 = [v116 set];
      v118 = v117;
      if (v117)
      {
        v119 = v117;
      }

      else
      {
        v119 = [MEMORY[0x1E695DFD8] set];
      }

      v133 = v119;

      v134 = MEMORY[0x1E695DFD8];
      v135 = [(NSFileManager *)v164 contentsOfDirectoryAtURL:v113->_snapshotBundleContainerURL includingPropertiesForKeys:0 options:1 error:0];
      v136 = [v134 setWithArray:v135];
      v137 = [v136 bs_map:&__block_literal_global_563];

      if (([v133 isEqualToSet:v137] & 1) == 0)
      {
        v138 = [v133 mutableCopy];
        [v138 minusSet:v137];
        v139 = MEMORY[0x1E69C51C8];
        allObjects = [v138 allObjects];
        v141 = [v139 predicateWithColumn:v112 operatorType:6 value:allObjects];

        v142 = v113->_archiver;
        v143 = objc_opt_self();
        [(PFSQLiteArchiver *)v142 deleteObjectsOfClass:v143 predicate:v141 error:0];
      }

LABEL_123:
      v17 = v157;
      v15 = v159;
      v18 = v111;
      v61 = 0;
      v19 = 0;
LABEL_124:
      v18[2](v18, 0);
      v8 = 1;
LABEL_125:
      v80 = 0;
      v70 = 0;
      v89 = v147;
      v123 = v155;
LABEL_126:

LABEL_127:
LABEL_128:

LABEL_129:
LABEL_130:

      goto LABEL_131;
    }

    v71 = v19;
    *error = v19;
    v72 = (v18)[2](v18, v19);
    v64 = PUILogSnapshotCache(v72);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      [_PUIPosterSnapshotSQLiteCacheImplementation prepareCacheWithError:];
    }

LABEL_69:

    v8 = 0;
    goto LABEL_131;
  }

  if (!error)
  {
    return 0;
  }

  [(_PUIPosterSnapshotSQLiteCacheImplementation *)selfCopy databaseConnectionAcquisitionError];
  *error = v8 = 0;
  return v8;
}

- (BOOL)checkCacheIsReachableWithError:(id *)error
{
  if (![(NSURL *)self->_cacheURL checkResourceIsReachableAndReturnError:?]|| ![(NSURL *)self->_rootCacheURL checkResourceIsReachableAndReturnError:error]|| ![(NSURL *)self->_databaseURL checkResourceIsReachableAndReturnError:error])
  {
    return 0;
  }

  snapshotBundleContainerURL = self->_snapshotBundleContainerURL;

  return [(NSURL *)snapshotBundleContainerURL checkResourceIsReachableAndReturnError:error];
}

- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)predicate
{
  v41 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    v5 = MEMORY[0x1E69C5258];
    v6 = PFFunctionNameForAddress();
    v7 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v8 = [v5 futureWithError:{v7, 0}];
  }

  else
  {
    v9 = self->_fileManager;
    v10 = self->_snapshotBundleContainerURL;
    v11 = self->_cacheQueueScheduler;
    v12 = self->_cacheLogIdentifier;
    v13 = v12;
    if ((self->_options & 4) != 0)
    {
      v23 = MEMORY[0x1E69C5258];
      v24 = PFFunctionNameForAddress();
      v25 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
      v8 = [v23 futureWithError:{v25, v13}];
    }

    else
    {
      v14 = PUILogSnapshotCache(v12);
      v15 = os_signpost_id_generate(v14);

      v17 = PUILogSnapshotCache(v16);
      v18 = v17;
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 138543362;
        v40 = predicateCopy;
        _os_signpost_emit_with_name_impl(&dword_1A8C85000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "discardSnapshotBundlesMatchingSQLPredicate:", "predicate %{public}@", buf, 0xCu);
      }

      v19 = self->_archiver;
      v20 = MEMORY[0x1E69C5258];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __90___PUIPosterSnapshotSQLiteCacheImplementation_discardSnapshotBundlesMatchingSQLPredicate___block_invoke;
      v33[3] = &unk_1E7855568;
      v34 = v19;
      v35 = predicateCopy;
      v21 = v13;
      v36 = v21;
      v37 = v10;
      v38 = v9;
      v22 = v19;
      v8 = [v20 futureWithBlock:v33 scheduler:v11];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __90___PUIPosterSnapshotSQLiteCacheImplementation_discardSnapshotBundlesMatchingSQLPredicate___block_invoke_571;
      v30[3] = &unk_1E7855590;
      v32 = v15;
      v31 = v21;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __90___PUIPosterSnapshotSQLiteCacheImplementation_discardSnapshotBundlesMatchingSQLPredicate___block_invoke_573;
      v27[3] = &unk_1E78554F8;
      v29 = v15;
      v28 = v31;
      [v8 addSuccessBlock:v30 andFailureBlock:v27];
    }
  }

  return v8;
}

- (id)snapshotBundlesMatchingSQLPredicate:(id)predicate orderedBy:(id)by limit:(id)limit
{
  v50 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  byCopy = by;
  limitCopy = limit;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    v11 = MEMORY[0x1E69C5258];
    v12 = PFFunctionNameForAddress();
    v13 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v14 = [v11 futureWithError:{v13, 0}];
  }

  else
  {
    v15 = self->_snapshotBundleContainerURL;
    v16 = self->_cacheQueueScheduler;
    v17 = self->_cacheLogIdentifier;
    v18 = self->_archiver;
    v19 = PUILogSnapshotCache(v18);
    v20 = os_signpost_id_generate(v19);

    v22 = PUILogSnapshotCache(v21);
    v23 = v22;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 138543874;
      v45 = predicateCopy;
      v46 = 2114;
      v47 = byCopy;
      v48 = 2114;
      v49 = limitCopy;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "snapshotBundlesMatchingSQLPredicate:orderedBy:limit:", "predicate %{public}@ orderedBy %{public}@ limit %{public}@", buf, 0x20u);
    }

    v24 = MEMORY[0x1E69C5258];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __99___PUIPosterSnapshotSQLiteCacheImplementation_snapshotBundlesMatchingSQLPredicate_orderedBy_limit___block_invoke;
    v36[3] = &unk_1E78555E0;
    v37 = v18;
    v38 = predicateCopy;
    v39 = limitCopy;
    v40 = byCopy;
    selfCopy = self;
    v25 = v17;
    v42 = v25;
    v43 = v15;
    v26 = v15;
    v27 = v18;
    v14 = [v24 futureWithBlock:v36 scheduler:v16];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __99___PUIPosterSnapshotSQLiteCacheImplementation_snapshotBundlesMatchingSQLPredicate_orderedBy_limit___block_invoke_581;
    v33[3] = &unk_1E7855608;
    v35 = v20;
    v34 = v25;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __99___PUIPosterSnapshotSQLiteCacheImplementation_snapshotBundlesMatchingSQLPredicate_orderedBy_limit___block_invoke_583;
    v30[3] = &unk_1E78554F8;
    v31 = v34;
    v32 = v20;
    v28 = v34;
    [v14 addSuccessBlock:v33 andFailureBlock:v30];
  }

  return v14;
}

- (id)cacheSnapshotBundle:(id)bundle options:(id)options
{
  v58[1] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  optionsCopy = options;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    v9 = MEMORY[0x1E69C5258];
    v10 = PFFunctionNameForAddress();
    v11 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v12 = [v9 futureWithError:{v11, 0}];
  }

  else
  {
    if (!bundleCopy)
    {
      [_PUIPosterSnapshotSQLiteCacheImplementation cacheSnapshotBundle:a2 options:?];
    }

    bundleURL = [bundleCopy bundleURL];
    v14 = [bundleURL checkResourceIsReachableAndReturnError:0];

    if (v14)
    {
      v15 = self->_cacheLogIdentifier;
      if ((self->_options & 4) != 0)
      {
        v34 = MEMORY[0x1E69C5258];
        v35 = PFFunctionNameForAddress();
        v36 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
        v12 = [v34 futureWithError:{v36, v15}];
      }

      else
      {
        v16 = self->_fileManager;
        v17 = self->_snapshotBundleContainerURL;
        v38 = self->_cacheQueueScheduler;
        v18 = self->_archiver;
        v19 = PUILogSnapshotCache(v18);
        v20 = os_signpost_id_generate(v19);

        v22 = PUILogSnapshotCache(v21);
        v23 = v22;
        if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
        {
          bundleURL2 = [bundleCopy bundleURL];
          *buf = 138543618;
          v54 = v15;
          v55 = 2114;
          v56 = bundleURL2;
          _os_signpost_emit_with_name_impl(&dword_1A8C85000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "cacheSnapshotBundle", "<%{public}@> snapshotBundle URL %{public}@", buf, 0x16u);
        }

        v25 = MEMORY[0x1E69C5258];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __75___PUIPosterSnapshotSQLiteCacheImplementation_cacheSnapshotBundle_options___block_invoke;
        v45[3] = &unk_1E7855658;
        v46 = bundleCopy;
        v47 = v17;
        selfCopy = self;
        v26 = v15;
        v49 = v26;
        v50 = v18;
        v51 = optionsCopy;
        v52 = v16;
        v27 = v16;
        v28 = v18;
        v29 = v17;
        v12 = [v25 futureWithBlock:v45 scheduler:v38];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __75___PUIPosterSnapshotSQLiteCacheImplementation_cacheSnapshotBundle_options___block_invoke_3;
        v42[3] = &unk_1E7855680;
        v44 = v20;
        v43 = v26;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __75___PUIPosterSnapshotSQLiteCacheImplementation_cacheSnapshotBundle_options___block_invoke_589;
        v39[3] = &unk_1E78554F8;
        v41 = v20;
        v40 = v43;
        [v12 addSuccessBlock:v42 andFailureBlock:v39];
      }
    }

    else
    {
      v30 = MEMORY[0x1E69C5258];
      v31 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A588];
      v58[0] = @"Snapshot bundle is not valid.";
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:&v57 count:1];
      v33 = [v31 pui_errorWithCode:3 userInfo:v32];
      v12 = [v30 futureWithError:v33];
    }
  }

  return v12;
}

- (void)prepareCacheWithError:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.9()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.11()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.15()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)prepareCacheWithError:.cold.17()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)cacheSnapshotBundle:(char *)a1 options:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"incomingSnapshotBundle"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end