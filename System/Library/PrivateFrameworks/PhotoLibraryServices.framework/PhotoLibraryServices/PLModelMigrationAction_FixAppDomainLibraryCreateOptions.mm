@interface PLModelMigrationAction_FixAppDomainLibraryCreateOptions
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixAppDomainLibraryCreateOptions

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v123 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  pathManager = [(PLModelMigrationActionCore *)self pathManager];
  libraryURL = [pathManager libraryURL];

  if (!libraryURL)
  {
    v22 = PLMigrationGetLog();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);

    if (v23)
    {
      logger = [(PLModelMigrationActionCore *)self logger];

      if (logger)
      {
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
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
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
        *buf = 0u;
        v92 = 0u;
        v25 = PLMigrationGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        LOWORD(v89) = 0;
        v27 = _os_log_send_and_compose_impl(v26, 0, buf, 512, &dword_19BF1F000, v25, 16, "Failed to update create options, missing libraryURL", &v89, 2);

        logger2 = [(PLModelMigrationActionCore *)self logger];
        [logger2 logWithMessage:v27 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1194, 16}];

        if (v27 != buf)
        {
          free(v27);
        }
      }

      else
      {
        v61 = PLMigrationGetLog();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_ERROR, "Failed to update create options, missing libraryURL", buf, 2u);
        }
      }
    }

    v62 = MEMORY[0x1E696ABC0];
    v63 = *MEMORY[0x1E69BFF48];
    v87 = *MEMORY[0x1E696A278];
    v88 = @"Missing required libraryURL";
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v12 = [v62 errorWithDomain:v63 code:41001 userInfo:v64];

    if (MEMORY[0x19EAEE230]())
    {
      v42 = v12;
      goto LABEL_82;
    }

    v65 = PLMigrationGetLog();
    v66 = os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);

    if (!v66)
    {
LABEL_74:
      [(PLModelMigrationActionCore *)self finalizeProgress];
      v77 = v12;
      v78 = 1;
      goto LABEL_85;
    }

    logger3 = [(PLModelMigrationActionCore *)self logger];

    if (logger3)
    {
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
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
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
      *buf = 0u;
      v92 = 0u;
      v68 = PLMigrationGetLog();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = 3;
      }

      else
      {
        v69 = 2;
      }

      LOWORD(v89) = 0;
      LODWORD(v84) = 2;
      v70 = _os_log_send_and_compose_impl(v69, 0, buf, 512, &dword_19BF1F000, v68, 0, "Ignoring failure for non-internal device to avoid unecessary rebuild due to unexpected conditions", &v89, v84);

      logger4 = [(PLModelMigrationActionCore *)self logger];
      [logger4 logWithMessage:v70 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1203, 0}];

      if (v70 != buf)
      {
        free(v70);
      }

      goto LABEL_74;
    }

    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring failure for non-internal device to avoid unecessary rebuild due to unexpected conditions", buf, 2u);
    }

    goto LABEL_73;
  }

  pathManager2 = [(PLModelMigrationActionCore *)self pathManager];
  libraryURL2 = [pathManager2 libraryURL];
  v86 = 0;
  v11 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:libraryURL2 createIfMissing:0 error:&v86];
  v12 = v86;

  if ([v11 domain]!= 3)
  {
    v29 = PLMigrationGetLog();
    v30 = v29;
    if (v11)
    {
      v31 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

      if (v31)
      {
        logger5 = [(PLModelMigrationActionCore *)self logger];

        if (logger5)
        {
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
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
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
          *buf = 0u;
          v92 = 0u;
          v33 = PLMigrationGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = 3;
          }

          else
          {
            v34 = 2;
          }

          v89 = 138412290;
          v90 = v11;
          v35 = _os_log_send_and_compose_impl(v34, 0, buf, 512, &dword_19BF1F000, v33, 0, "Skipping non-app library %@", &v89, 12);

          logger6 = [(PLModelMigrationActionCore *)self logger];
          v37 = logger6;
          v38 = v35;
          v39 = 1188;
          v40 = 0;
          goto LABEL_39;
        }

        v72 = PLMigrationGetLog();
        if (!os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_72;
        }

        *buf = 138412290;
        *&buf[4] = v11;
        v73 = "Skipping non-app library %@";
        v74 = v72;
        v75 = OS_LOG_TYPE_DEFAULT;
LABEL_71:
        _os_log_impl(&dword_19BF1F000, v74, v75, v73, buf, 0xCu);
LABEL_72:
      }
    }

    else
    {
      v51 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);

      if (v51)
      {
        logger7 = [(PLModelMigrationActionCore *)self logger];

        if (logger7)
        {
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
          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
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
          *buf = 0u;
          v92 = 0u;
          v53 = PLMigrationGetLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v54 = 3;
          }

          else
          {
            v54 = 2;
          }

          v89 = 138412290;
          v90 = v12;
          v35 = _os_log_send_and_compose_impl(v54, 0, buf, 512, &dword_19BF1F000, v53, 16, "Failed to update create options, missing library identifier (%@)", &v89, 12);

          logger6 = [(PLModelMigrationActionCore *)self logger];
          v37 = logger6;
          v38 = v35;
          v39 = 1190;
          v40 = 16;
LABEL_39:
          [logger6 logWithMessage:v38 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{v39, v40}];

          if (v35 != buf)
          {
            free(v35);
          }

          goto LABEL_73;
        }

        v72 = PLMigrationGetLog();
        if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        *buf = 138412290;
        *&buf[4] = v12;
        v73 = "Failed to update create options, missing library identifier (%@)";
        v74 = v72;
        v75 = OS_LOG_TYPE_ERROR;
        goto LABEL_71;
      }
    }

LABEL_73:

    goto LABEL_74;
  }

  v13 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
  libraryCreateOptions = [(PLGlobalValues *)v13 libraryCreateOptions];
  if ((~libraryCreateOptions & 0x73) == 0)
  {
    v15 = PLMigrationGetLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      logger8 = [(PLModelMigrationActionCore *)self logger];

      if (logger8)
      {
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
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
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
        *buf = 0u;
        v92 = 0u;
        v18 = PLMigrationGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        LOWORD(v89) = 0;
        v20 = _os_log_send_and_compose_impl(v19, 0, buf, 512, &dword_19BF1F000, v18, 0, "Library has all required create options", &v89, 2);

        logger9 = [(PLModelMigrationActionCore *)self logger];
        [logger9 logWithMessage:v20 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1185, 0}];

        if (v20 != buf)
        {
          free(v20);
        }
      }

      else
      {
        v76 = PLMigrationGetLog();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v76, OS_LOG_TYPE_DEFAULT, "Library has all required create options", buf, 2u);
        }
      }
    }

    v42 = v12;
LABEL_68:

    v12 = v42;
    goto LABEL_74;
  }

  [PLGlobalValues setLibraryCreateOptions:libraryCreateOptions | 0x73 managedObjectContext:contextCopy];
  v85 = v12;
  v41 = [contextCopy save:&v85];
  v42 = v85;

  v43 = PLMigrationGetLog();
  v44 = v43;
  if (v41)
  {
    v45 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);

    if (v45)
    {
      logger10 = [(PLModelMigrationActionCore *)self logger];

      if (logger10)
      {
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
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
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
        *buf = 0u;
        v92 = 0u;
        v47 = PLMigrationGetLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = 3;
        }

        else
        {
          v48 = 2;
        }

        LOWORD(v89) = 0;
        v49 = _os_log_send_and_compose_impl(v48, 0, buf, 512, &dword_19BF1F000, v47, 0, "Fixed app library create options to disable unsupported services", &v89, 2);

        logger11 = [(PLModelMigrationActionCore *)self logger];
        [logger11 logWithMessage:v49 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1178, 0}];

        if (v49 != buf)
        {
          free(v49);
        }
      }

      else
      {
        v79 = PLMigrationGetLog();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v79, OS_LOG_TYPE_DEFAULT, "Fixed app library create options to disable unsupported services", buf, 2u);
        }
      }
    }

    goto LABEL_68;
  }

  v55 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);

  if (v55)
  {
    logger12 = [(PLModelMigrationActionCore *)self logger];

    if (logger12)
    {
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
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
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
      *buf = 0u;
      v92 = 0u;
      v57 = PLMigrationGetLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }

      v89 = 138412290;
      v90 = v42;
      v59 = _os_log_send_and_compose_impl(v58, 0, buf, 512, &dword_19BF1F000, v57, 16, "Failed to update create options, %@", &v89, 12);

      logger13 = [(PLModelMigrationActionCore *)self logger];
      [logger13 logWithMessage:v59 fromCodeLocation:"PLModelMigrationActions_18000.m" type:{1180, 16}];

      if (v59 != buf)
      {
        free(v59);
      }
    }

    else
    {
      v80 = PLMigrationGetLog();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v42;
        _os_log_impl(&dword_19BF1F000, v80, OS_LOG_TYPE_ERROR, "Failed to update create options, %@", buf, 0xCu);
      }
    }
  }

  MEMORY[0x19EAEE230]();
LABEL_82:
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v81 = v42;
  v77 = v81;
  if (error)
  {
    v82 = v81;
    *error = v77;
  }

  v78 = 3;
LABEL_85:

  return v78;
}

@end