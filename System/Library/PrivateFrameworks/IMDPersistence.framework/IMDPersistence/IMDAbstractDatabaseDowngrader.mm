@interface IMDAbstractDatabaseDowngrader
- (BOOL)copyDatabase:(id)database;
@end

@implementation IMDAbstractDatabaseDowngrader

- (BOOL)copyDatabase:(id)database
{
  v74 = *MEMORY[0x1E69E9840];
  DowngradeHelper = objc_msgSend_createDowngradeHelper(self, a2, database, v3);
  v67 = 0;
  v68 = &v67;
  v69 = 0x3052000000;
  v70 = sub_1B7AE19E4;
  v71 = sub_1B7AE2500;
  v72 = 0;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = sub_1B7B621D4;
  v66[3] = &unk_1E7CB66D8;
  v66[4] = &v67;
  objc_msgSend_open_(DowngradeHelper, v7, v66, v8);
  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Downgrade: Opening new coral database", buf, 2u);
  }

  if (!v68[5])
  {
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = sub_1B7B621E4;
    v65[3] = &unk_1E7CB66D8;
    v65[4] = &v67;
    objc_msgSend_beginTransaction_(DowngradeHelper, v10, v65, v12);
    if (!v68[5])
    {
      v13 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Downgrade: Creating Tables", buf, 2u);
      }

      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = sub_1B7B621F4;
      v64[3] = &unk_1E7CB66D8;
      v64[4] = &v67;
      objc_msgSend_createTables_(DowngradeHelper, v14, v64, v15);
      if (v68[5])
      {
        goto LABEL_11;
      }

      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Downgrade: Creating Indexes", buf, 2u);
      }

      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = sub_1B7B62204;
      v63[3] = &unk_1E7CB66D8;
      v63[4] = &v67;
      objc_msgSend_createIndexes_(DowngradeHelper, v19, v63, v20);
      if (v68[5])
      {
LABEL_11:
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = sub_1B7B62214;
        v62[3] = &unk_1E7CB66D8;
        v62[4] = &v67;
        objc_msgSend_revertTransaction_(DowngradeHelper, v16, v62, v17);
      }

      else
      {
        v51 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_INFO, "Downgrade: Committing phase 1", buf, 2u);
        }

        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = sub_1B7B62224;
        v61[3] = &unk_1E7CB66D8;
        v61[4] = &v67;
        objc_msgSend_commitTransaction_(DowngradeHelper, v52, v61, v53);
      }

      if (!v68[5])
      {
        v21 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Downgrade: Beginning to copy tables", buf, 2u);
        }

        memset(buf, 0, sizeof(buf));
        v25 = objc_msgSend_sourcePath(self, v22, v23, v24);
        IMDSqlOperationInitAndCreateIfNeededWithPath(v25, buf);
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = sub_1B7B62234;
        v60[3] = &unk_1E7CB66D8;
        v60[4] = &v67;
        objc_msgSend_importDataFromWhitetailDatabaseWithSqlOperation_resultBlock_(DowngradeHelper, v26, buf, v60);
        IMDSqlOperationRelease(buf, v68 + 5);
        if (v68[5])
        {
          goto LABEL_23;
        }

        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = sub_1B7B62244;
        v59[3] = &unk_1E7CB66D8;
        v59[4] = &v67;
        objc_msgSend_beginTransaction_(DowngradeHelper, v27, v59, v28);
        if (v68[5])
        {
          goto LABEL_23;
        }

        v29 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *v58 = 0;
          _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "Downgrade: Creating triggers", v58, 2u);
        }

        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = sub_1B7B62254;
        v57[3] = &unk_1E7CB66D8;
        v57[4] = &v67;
        objc_msgSend_createTriggers_(DowngradeHelper, v30, v57, v31);
        if (v68[5])
        {
          goto LABEL_23;
        }

        v32 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *v58 = 0;
          _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "Downgrade: Updating Version", v58, 2u);
        }

        v36 = objc_msgSend_downgradesToVersion(DowngradeHelper, v33, v34, v35);
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = sub_1B7B62264;
        v56[3] = &unk_1E7CB66D8;
        v56[4] = &v67;
        objc_msgSend_writeDatabaseVersion_resultBlock_(DowngradeHelper, v37, v36, v56);
        if (v68[5])
        {
LABEL_23:
          objc_msgSend_revertTransaction_(DowngradeHelper, v27, &unk_1F2FA02B0, v28);
        }

        else
        {
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = sub_1B7B62278;
          v55[3] = &unk_1E7CB66D8;
          v55[4] = &v67;
          objc_msgSend_commitTransaction_(DowngradeHelper, v27, v55, v28);
          v54 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            *v58 = 0;
            _os_log_impl(&dword_1B7AD5000, v54, OS_LOG_TYPE_INFO, "Downgrade: Committing phase 2", v58, 2u);
          }
        }
      }
    }
  }

  if (objc_msgSend_isOpen(DowngradeHelper, v10, v11, v12))
  {
    objc_msgSend_close_(DowngradeHelper, v38, &unk_1F2FA0C50, v39);
  }

  if (!v68[5])
  {
    v48 = IMDatabaseLogHandle();
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    LOWORD(buf[0]) = 0;
    v45 = "Downgrade completed ok! :-D";
    v46 = v48;
    v47 = 2;
    goto LABEL_32;
  }

  if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v44 = objc_msgSend_localizedDescription(v68[5], v41, v42, v43);
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v44;
      v45 = "Database downgrade failed with error: %@";
      v46 = v40;
      v47 = 12;
LABEL_32:
      _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, v45, buf, v47);
    }
  }

LABEL_33:
  if (database)
  {
    (*(database + 2))(database, v68[5] == 0);
  }

  v49 = v68[5] == 0;
  _Block_object_dispose(&v67, 8);
  return v49;
}

@end