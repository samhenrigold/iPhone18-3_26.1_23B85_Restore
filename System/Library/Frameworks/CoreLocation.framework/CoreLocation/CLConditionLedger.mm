@interface CLConditionLedger
- (BOOL)addRecordForMonitoring:(id)monitoring identifier:(id)identifier persist:(BOOL)persist;
- (BOOL)directoryExists:(id)exists;
- (BOOL)readConditionsFromFile;
- (BOOL)removeRecordFromMonitoringWithIdentifier:(id)identifier;
- (BOOL)writeToFile;
- (CLConditionLedger)initWithStoreType:(int64_t)type domain:(int64_t)domain monitorConfiguration:(id)configuration;
- (void)dealloc;
- (void)deleteLedgerFile;
- (void)performMigration;
- (void)setLedgerForType:(int64_t)type domain:(int64_t)domain monitor:(id)monitor client:(id)client path:(id)path;
- (void)setLedgerVersionNumber:(int)number;
- (void)updateEvent:(id)event forIdentifier:(id)identifier;
@end

@implementation CLConditionLedger

- (CLConditionLedger)initWithStoreType:(int64_t)type domain:(int64_t)domain monitorConfiguration:(id)configuration
{
  v42.receiver = self;
  v42.super_class = CLConditionLedger;
  v11 = [(CLConditionLedger *)&v42 init];
  if (v11)
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(configuration, v9, @"kCLMonitorLedgerPathKey", v10);
    v15 = objc_msgSend_objectForKeyedSubscript_(configuration, v13, @"kCLMonitorLedgerNameKey", v14);
    v18 = objc_msgSend_objectForKeyedSubscript_(configuration, v16, @"kCLMonitorLedgerAccessKey", v17);
    v24 = objc_msgSend_objectForKeyedSubscript_(configuration, v19, @"kCLMonitorLedgerProcessNameKey", v20);
    if (v15)
    {
      if (v18)
      {
LABEL_4:
        objc_msgSend_setLedgerForType_domain_monitor_client_path_(v11, v21, type, domain, v15, v24, v12);
        v11->_recordTable = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11->_encryptionKey = objc_msgSend_copy(v18, v25, v26, v27);
        v11->_ledgerName = objc_msgSend_copy(v15, v28, v29, v30);
        v11->_readSucceeded = objc_msgSend_readConditionsFromFile(v11, v31, v32, v33);
        objc_msgSend_performMigration(v11, v34, v35, v36);
        return v11;
      }
    }

    else
    {
      v38 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v21, v22, v23);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v39, a2, v11, @"CLConditionLedger.mm", 95, @"Monitor name is nil");
      if (v18)
      {
        goto LABEL_4;
      }
    }

    v40 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v21, v22, v23);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v40, v41, a2, v11, @"CLConditionLedger.mm", 96, @"Key is nil to read/store %@ monitor's contents", v15);
    goto LABEL_4;
  }

  return v11;
}

- (void)dealloc
{
  v5 = objc_msgSend_allMonitoringRecordsByIdentifier(self, a2, v2, v3);
  if (!objc_msgSend_count(v5, v6, v7, v8))
  {
    objc_msgSend_deleteLedgerFile(self, v9, v10, v11);
  }

  self->_ledgerFile = 0;
  self->_encryptionKey = 0;

  self->_recordTable = 0;
  self->_ledgerName = 0;
  v12.receiver = self;
  v12.super_class = CLConditionLedger;
  [(CLConditionLedger *)&v12 dealloc];
}

- (void)performMigration
{
  if (objc_msgSend_shouldMigrate(self, a2, v2, v3))
  {

    MEMORY[0x1EEE66B58](self, sel_setLedgerVersionNumber_, 1, v5);
  }
}

- (void)setLedgerVersionNumber:(int)number
{
  v3 = *&number;
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  self->_ledgerVersionNumber = objc_msgSend_initWithInt_(v5, v6, v3, v7);
}

- (void)setLedgerForType:(int64_t)type domain:(int64_t)domain monitor:(id)monitor client:(id)client path:(id)path
{
  v96 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_ledgerFile(self, a2, type, domain))
  {
    return;
  }

  v14 = _sandbox_in_a_container();
  v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"%@.monitor", v16, monitor);
  if (type == 1 && domain == 1)
  {
    if (!path)
    {
      v82 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v17, v18, v19);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v82, v83, a2, self, @"CLConditionLedger.mm", 170, @"#monitor Invalid path for custom store for %@ monitor", monitor);
    }

    isDirectory_relativeToURL = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(MEMORY[0x1E695DFF8], v17, path, 1, 0);
    v26 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v22, &stru_1F0E6F140, v23);
    p_info = (CLLocationManagerInternal + 32);
    v28 = (CLLocationManagerInternal + 32);
    goto LABEL_29;
  }

  v26 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v17, @"CoreLocation/", v19);
  if (type)
  {
    p_info = CLLocationManagerInternal.info;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v32 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v88 = 2082;
      v89 = "";
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Custom store type cannot use on NSSearchPathDirectory}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v33 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v88 = 2082;
      v89 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Custom store type cannot use on NSSearchPathDirectory", "{msg%{public}.0s:Custom store type cannot use on NSSearchPathDirectory}", buf, 0x12u);
    }

    v34 = 5;
  }

  else
  {
    if (v14)
    {
      v34 = 9;
    }

    else
    {
      v34 = 5;
    }

    p_info = CLLocationManagerInternal.info;
  }

  if (domain)
  {
    v35 = 8;
  }

  else
  {
    v35 = 1;
  }

  v36 = objc_msgSend_defaultFileManager(self, v29, v30, v31);
  v38 = objc_msgSend_URLsForDirectory_inDomains_(v36, v37, v34, v35);
  isDirectory_relativeToURL = objc_msgSend_firstObject(v38, v39, v40, v41);
  v28 = CLLocationManagerInternal.info;
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
  }

  v42 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v88 = 2082;
    v89 = "";
    v90 = 2114;
    clientCopy = client;
    _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor App is not sanboxed, client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  v45 = objc_msgSend_URLByAppendingPathComponent_(isDirectory_relativeToURL, v43, v26, v44);
  if ((objc_msgSend_directoryExists_(self, v46, v45, v47) & 1) == 0)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v79 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v88 = 2082;
      v89 = "";
      v90 = 2114;
      clientCopy = v45;
      v92 = 2082;
      v93 = "assert";
      v94 = 2081;
      v95 = "clDirExists";
      _os_log_impl(&dword_19B873000, v79, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor Unable to create intermediate dir, path:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v80 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v88 = 2082;
      v89 = "";
      v90 = 2114;
      clientCopy = v45;
      v92 = 2082;
      v93 = "assert";
      v94 = 2081;
      v95 = "clDirExists";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v80, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#monitor Unable to create intermediate dir", "{msg%{public}.0s:#monitor Unable to create intermediate dir, path:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v81 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v88 = 2082;
      v89 = "";
      v90 = 2114;
      clientCopy = v45;
      v92 = 2082;
      v93 = "assert";
      v94 = 2081;
      v95 = "clDirExists";
      _os_log_impl(&dword_19B873000, v81, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#monitor Unable to create intermediate dir, path:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLConditionLedger.mm", 187, "[CLConditionLedger setLedgerForType:domain:monitor:client:path:]");
LABEL_75:
    __asm { BL              ___stack_chk_fail }
  }

  if (v14)
  {
LABEL_29:
    v48 = 0x1E696A000;
    goto LABEL_35;
  }

  v48 = 0x1E696A000uLL;
  v49 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v24, @"%@/", v25, client);
  objc_msgSend_appendString_(v26, v50, v49, v51);
  v54 = objc_msgSend_URLByAppendingPathComponent_(isDirectory_relativeToURL, v52, v26, v53);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
  }

  v55 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v88 = 2082;
    v89 = "";
    v90 = 2114;
    clientCopy = v54;
    _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor process is not containerized, path:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  if ((objc_msgSend_directoryExists_(self, v56, v54, v57) & 1) == 0)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v84 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v88 = 2082;
      v89 = "";
      v90 = 2114;
      clientCopy = v54;
      v92 = 2082;
      v93 = "assert";
      v94 = 2081;
      v95 = "processDirExists";
      _os_log_impl(&dword_19B873000, v84, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor Unable to create dir, path:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v85 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v88 = 2082;
      v89 = "";
      v90 = 2114;
      clientCopy = v54;
      v92 = 2082;
      v93 = "assert";
      v94 = 2081;
      v95 = "processDirExists";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v85, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#monitor Unable to create dir", "{msg%{public}.0s:#monitor Unable to create dir, path:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v86 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v88 = 2082;
      v89 = "";
      v90 = 2114;
      clientCopy = v54;
      v92 = 2082;
      v93 = "assert";
      v94 = 2081;
      v95 = "processDirExists";
      _os_log_impl(&dword_19B873000, v86, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#monitor Unable to create dir, path:%{public, location:escape_only}@, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLConditionLedger.mm", 196, "[CLConditionLedger setLedgerForType:domain:monitor:client:path:]");
    goto LABEL_75;
  }

LABEL_35:
  if (!isDirectory_relativeToURL)
  {
    if (v28[17] != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v76 = p_info[18];
    if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v88 = 2082;
      v89 = "";
      v90 = 2082;
      clientCopy = "assert";
      v92 = 2081;
      v93 = "basePath";
      _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor Unable to determine the path to store conditions, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (v28[17] != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v77 = p_info[18];
    if (os_signpost_enabled(v77))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v88 = 2082;
      v89 = "";
      v90 = 2082;
      clientCopy = "assert";
      v92 = 2081;
      v93 = "basePath";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v77, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#monitor Unable to determine the path to store conditions", "{msg%{public}.0s:#monitor Unable to determine the path to store conditions, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (v28[17] != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v78 = p_info[18];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v88 = 2082;
      v89 = "";
      v90 = 2082;
      clientCopy = "assert";
      v92 = 2081;
      v93 = "basePath";
      _os_log_impl(&dword_19B873000, v78, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#monitor Unable to determine the path to store conditions, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLConditionLedger.mm", 200, "[CLConditionLedger setLedgerForType:domain:monitor:client:path:]");
    goto LABEL_75;
  }

  v58 = objc_msgSend_stringWithFormat_(*(v48 + 3776), v24, @"%@", v25, v20);
  objc_msgSend_appendString_(v26, v59, v58, v60);
  v63 = objc_msgSend_URLByAppendingPathComponent_(isDirectory_relativeToURL, v61, v26, v62);
  if (v28[17] != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
  }

  v64 = p_info[18];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    v68 = objc_msgSend_path(v63, v65, v66, v67);
    v72 = objc_msgSend_UTF8String(v68, v69, v70, v71);
    *buf = 68289282;
    v88 = 2082;
    v89 = "";
    v90 = 2082;
    clientCopy = v72;
    _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#monitor Conditions store, path:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v73 = MEMORY[0x1E695DFF8];
  v74 = objc_msgSend_path(v63, v65, v66, v67);
  self->_ledgerFile = objc_msgSend_fileURLWithPath_isDirectory_(v73, v75, v74, 0);
}

- (BOOL)directoryExists:(id)exists
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v6 = objc_msgSend_defaultFileManager(self, a2, exists, v3);
  if (qword_1ED5192E8 != -1)
  {
    dispatch_once(&qword_1ED5192E8, &unk_1F0E6DC28);
  }

  if ((objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v6, v5, exists, 0, qword_1ED5192E0, &v13) & 1) != 0 || objc_msgSend_code(v13, v7, v8, v9) == 516)
  {
    return 1;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
  }

  v11 = qword_1ED519090;
  v12 = os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v12)
  {
    *buf = 68289538;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    existsCopy = exists;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor #warning unable to check for directory, error:%{public, location:escape_only}@, pathURL:%{public, location:escape_only}@}", buf, 0x26u);
    return 0;
  }

  return result;
}

- (BOOL)readConditionsFromFile
{
  v136 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_ledgerFile(self, a2, v2, v3);
  if (!v5)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v39 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v132 = 2082;
      v133 = "";
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor path is nil for ledger file}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v40 = qword_1ED519090;
    v34 = os_signpost_enabled(qword_1ED519090);
    if (!v34)
    {
      return v34;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    v132 = 2082;
    v133 = "";
    v41 = "#monitor path is nil for ledger file";
    v42 = "{msg%{public}.0s:#monitor path is nil for ledger file}";
    v43 = v40;
    v44 = 18;
LABEL_45:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v41, v42, buf, v44);
    goto LABEL_46;
  }

  v7 = v5;
  v130 = 0;
  v11 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], v6, v5, 1, &v130);
  if (v130 && objc_msgSend_code(v130, v8, v9, v10) != 260)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v45 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v49 = objc_msgSend_path(v7, v46, v47, v48);
      v53 = objc_msgSend_UTF8String(v49, v50, v51, v52);
      *buf = 68289538;
      *&buf[4] = 0;
      v132 = 2082;
      v133 = "";
      v134 = 2082;
      *v135 = v53;
      *&v135[8] = 2114;
      *&v135[10] = v130;
      _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor #Warning Unable to read the contents of file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}@}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v54 = qword_1ED519090;
    v34 = os_signpost_enabled(qword_1ED519090);
    if (!v34)
    {
      return v34;
    }

    v58 = objc_msgSend_path(v7, v55, v56, v57);
    v62 = objc_msgSend_UTF8String(v58, v59, v60, v61);
    *buf = 68289538;
    *&buf[4] = 0;
    v132 = 2082;
    v133 = "";
    v134 = 2082;
    *v135 = v62;
    *&v135[8] = 2114;
    *&v135[10] = v130;
    v41 = "#monitor #Warning Unable to read the contents of file";
    v42 = "{msg%{public}.0s:#monitor #Warning Unable to read the contents of file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}@}";
LABEL_44:
    v43 = v54;
    v44 = 38;
    goto LABEL_45;
  }

  if (!v11)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v63 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v67 = objc_msgSend_path(v7, v64, v65, v66);
      v71 = objc_msgSend_UTF8String(v67, v68, v69, v70);
      *buf = 68289282;
      v132 = 2082;
      v133 = "";
      v134 = 2082;
      *v135 = v71;
      _os_log_impl(&dword_19B873000, v63, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor no conditions were saved, file:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    goto LABEL_53;
  }

  v12 = objc_msgSend_length(v11, v8, v9, v10);
  v13 = objc_alloc(MEMORY[0x1E695DF88]);
  v14 = v12 - 32;
  v17 = objc_msgSend_initWithLength_(v13, v15, v12 - 32, v16);
  v21 = objc_msgSend_bytes(v11, v18, v19, v20);
  objc_msgSend_bytes(self->_encryptionKey, v22, v23, v24);
  objc_msgSend_length(self->_encryptionKey, v25, v26, v27);
  v124 = v21 + 16 + v14;
  v125 = 16;
  v122 = v14;
  v123 = objc_msgSend_mutableBytes(v17, v28, v29, v30);
  v32 = CCCryptorGCMOneshotDecrypt();
  if (!v32)
  {
    if ((atomic_load_explicit(&qword_1ED5192D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED5192D8))
    {
      v129 = MEMORY[0x1E695DFD8];
      v128 = objc_opt_class();
      v127 = objc_opt_class();
      v126 = objc_opt_class();
      v111 = objc_opt_class();
      v112 = objc_opt_class();
      v113 = objc_opt_class();
      v114 = objc_opt_class();
      v115 = objc_opt_class();
      v116 = objc_opt_class();
      v117 = objc_opt_class();
      v118 = objc_opt_class();
      qword_1ED5192D0 = objc_msgSend_setWithObjects_(v129, v119, v128, v120, v127, v126, v111, v112, v113, v114, v115, v116, v117, v118, 0);
      __cxa_guard_release(&qword_1ED5192D8);
    }

    v72 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v31, qword_1ED5192D0, v17, &v130, v122, v123, v124, v125);
    if (!v130)
    {
      v76 = v72;
      if (v72)
      {
        v77 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v73, v74, v75);
        objc_msgSend_addEntriesFromDictionary_(v77, v78, v76, v79);
        if (objc_msgSend_objectForKeyedSubscript_(v76, v80, @"kCLLedgerVersionNumber", v81))
        {
          self->_ledgerVersionNumber = objc_msgSend_objectForKeyedSubscript_(v76, v82, @"kCLLedgerVersionNumber", v83);
          if (qword_1ED519078 != -1)
          {
            dispatch_once(&qword_1ED519078, &unk_1F0E6DC48);
          }

          v84 = qword_1ED519080;
          if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
          {
            v88 = objc_msgSend_ledgerVersionNumber(self, v85, v86, v87);
            *buf = 68289282;
            v132 = 2082;
            v133 = "";
            v134 = 2114;
            *v135 = v88;
            _os_log_impl(&dword_19B873000, v84, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor Found ledger version number, ledgerVersion:%{public, location:escape_only}@}", buf, 0x1Cu);
          }

          objc_msgSend_removeObjectForKey_(v77, v85, @"kCLLedgerVersionNumber", v87);
        }

        else
        {
          self->_ledgerVersionNumber = &unk_1F0E8CD60;
        }

        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
        }

        v106 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v110 = objc_msgSend_count(v77, v107, v108, v109);
          *buf = 68289282;
          v132 = 2082;
          v133 = "";
          v134 = 2050;
          *v135 = v110;
          _os_log_impl(&dword_19B873000, v106, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor file has conditions saved, count:%{public}ld}", buf, 0x1Cu);
        }

        objc_msgSend_addEntriesFromDictionary_(self->_recordTable, v107, v77, v109);
LABEL_53:
        LOBYTE(v34) = 1;
        return v34;
      }
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v89 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v93 = objc_msgSend_path(v7, v90, v91, v92);
      v97 = objc_msgSend_UTF8String(v93, v94, v95, v96);
      *buf = 68289539;
      *&buf[4] = 0;
      v132 = 2082;
      v133 = "";
      v134 = 2081;
      *v135 = v97;
      *&v135[8] = 2114;
      *&v135[10] = v130;
      _os_log_impl(&dword_19B873000, v89, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor #Warning unable to read conditions from file, file:%{private, location:escape_only}s, error:%{public, location:escape_only}@}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v54 = qword_1ED519090;
    v34 = os_signpost_enabled(qword_1ED519090);
    if (!v34)
    {
      return v34;
    }

    v101 = objc_msgSend_path(v7, v98, v99, v100);
    v105 = objc_msgSend_UTF8String(v101, v102, v103, v104);
    *buf = 68289539;
    *&buf[4] = 0;
    v132 = 2082;
    v133 = "";
    v134 = 2081;
    *v135 = v105;
    *&v135[8] = 2114;
    *&v135[10] = v130;
    v41 = "#monitor #Warning unable to read conditions from file";
    v42 = "{msg%{public}.0s:#monitor #Warning unable to read conditions from file, file:%{private, location:escape_only}s, error:%{public, location:escape_only}@}";
    goto LABEL_44;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
  }

  v33 = qword_1ED519090;
  v34 = os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT);
  if (v34)
  {
    v38 = objc_msgSend_ledgerFile(self, v35, v36, v37, v122, v123, v124, 16);
    *buf = 68289538;
    *&buf[4] = 0;
    v132 = 2082;
    v133 = "";
    v134 = 1026;
    *v135 = v32;
    *&v135[4] = 2114;
    *&v135[6] = v38;
    _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor #Warning unable to decrypt the conditions, error:%{public}d, ledger:%{public, location:escape_only}@}", buf, 0x22u);
LABEL_46:
    LOBYTE(v34) = 0;
  }

  return v34;
}

- (BOOL)writeToFile
{
  v126 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_ledgerFile(self, a2, v2, v3);
  if (!v5)
  {
    return v5;
  }

  v9 = objc_msgSend_allMonitoringRecordsByIdentifier(self, v6, v7, v8);
  if (!objc_msgSend_count(v9, v10, v11, v12))
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6DC48);
    }

    v77 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      v81 = objc_msgSend_ledgerFile(self, v78, v79, v80);
      *buf = 68289282;
      v119 = 0;
      v120 = 2082;
      v121 = "";
      v122 = 2114;
      v123 = objc_msgSend_path(v81, v82, v83, v84);
      _os_log_impl(&dword_19B873000, v77, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#monitor nothing to write; Removing existing file, file:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    objc_msgSend_deleteLedgerFile(self, v78, v79, v80);
    goto LABEL_26;
  }

  v16 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14, v15);
  v20 = objc_msgSend_allMonitoringRecordsByIdentifier(self, v17, v18, v19);
  objc_msgSend_addEntriesFromDictionary_(v16, v21, v20, v22);
  v26 = objc_msgSend_ledgerVersionNumber(self, v23, v24, v25);
  objc_msgSend_setObject_forKey_(v16, v27, v26, @"kCLLedgerVersionNumber");
  v30 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF20], v28, v16, v29);
  v117 = 0;
  v32 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v31, v30, 1, &v117);
  if (v117 || (v36 = v32) == 0)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v85 = qword_1ED519090;
    LODWORD(v5) = os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v89 = objc_msgSend_ledgerFile(self, v86, v87, v88);
      v93 = objc_msgSend_path(v89, v90, v91, v92);
      *buf = 68289538;
      v119 = 0;
      v120 = 2082;
      v121 = "";
      v122 = 2114;
      v123 = v93;
      v124 = 2114;
      v125 = v117;
      _os_log_impl(&dword_19B873000, v85, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor Unable to store conditions, file:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
LABEL_41:
      LOBYTE(v5) = 0;
      return v5;
    }

    return v5;
  }

  v37 = objc_msgSend_length(v32, v33, v34, v35);
  v38 = objc_alloc(MEMORY[0x1E695DF88]);
  v41 = objc_msgSend_initWithLength_(v38, v39, v37 + 32, v40);
  v45 = objc_msgSend_mutableBytes(v41, v42, v43, v44);
  v49 = &v45[objc_msgSend_length(v36, v46, v47, v48) + 16];
  v50 = SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x10uLL, v45);
  if (v50)
  {
    v54 = v50;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v55 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v119 = 0;
      v120 = 2082;
      v121 = "";
      v122 = 1026;
      LODWORD(v123) = v54;
      _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor unable to init random vector, error:%{public}d}", buf, 0x18u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v56 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v119 = 0;
      v120 = 2082;
      v121 = "";
      v122 = 1026;
      LODWORD(v123) = v54;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v56, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#monitor unable to init random vector", "{msg%{public}.0s:#monitor unable to init random vector, error:%{public}d}", buf, 0x18u);
    }
  }

  objc_msgSend_bytes(self->_encryptionKey, v51, v52, v53);
  objc_msgSend_length(self->_encryptionKey, v57, v58, v59);
  objc_msgSend_bytes(v36, v60, v61, v62);
  v116 = objc_msgSend_length(v36, v63, v64, v65);
  v66 = CCCryptorGCMOneshotEncrypt();
  if (v66)
  {
    v70 = v66;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }

    v71 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v119 = 0;
      v120 = 2082;
      v121 = "";
      v122 = 1026;
      LODWORD(v123) = v70;
      _os_log_impl(&dword_19B873000, v71, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor unable to encrypt the conditions, error:%{public}d}", buf, 0x18u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
      }
    }

    v72 = qword_1ED519090;
    LODWORD(v5) = os_signpost_enabled(qword_1ED519090);
    if (v5)
    {
      *buf = 68289282;
      v119 = 0;
      v120 = 2082;
      v121 = "";
      v122 = 1026;
      LODWORD(v123) = v70;
      v73 = "#monitor unable to encrypt the conditions";
      v74 = "{msg%{public}.0s:#monitor unable to encrypt the conditions, error:%{public}d}";
      v75 = v72;
      v76 = 24;
LABEL_40:
      _os_signpost_emit_with_name_impl(&dword_19B873000, v75, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v73, v74, buf, v76);
      goto LABEL_41;
    }

    return v5;
  }

  v94 = objc_msgSend_ledgerFile(self, v67, v68, v69, v116, v45 + 16, v49, 16);
  v96 = objc_msgSend_writeToURL_options_error_(v41, v95, v94, 1073741825, &v117);
  if (!v117 && (v96 & 1) != 0)
  {
LABEL_26:
    LOBYTE(v5) = 1;
    return v5;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
  }

  v97 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    v101 = objc_msgSend_ledgerFile(self, v98, v99, v100);
    v105 = objc_msgSend_path(v101, v102, v103, v104);
    *buf = 68289538;
    v119 = 0;
    v120 = 2082;
    v121 = "";
    v122 = 2114;
    v123 = v105;
    v124 = 2114;
    v125 = v117;
    _os_log_impl(&dword_19B873000, v97, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#monitor #Warning unable to write to file, file:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
    }
  }

  v106 = qword_1ED519090;
  LODWORD(v5) = os_signpost_enabled(qword_1ED519090);
  if (v5)
  {
    v110 = objc_msgSend_ledgerFile(self, v107, v108, v109);
    v114 = objc_msgSend_path(v110, v111, v112, v113);
    *buf = 68289538;
    v119 = 0;
    v120 = 2082;
    v121 = "";
    v122 = 2114;
    v123 = v114;
    v124 = 2114;
    v125 = v117;
    v73 = "#monitor #Warning unable to write to file";
    v74 = "{msg%{public}.0s:#monitor #Warning unable to write to file, file:%{public, location:escape_only}@, error:%{public, location:escape_only}@}";
    v75 = v106;
    v76 = 38;
    goto LABEL_40;
  }

  return v5;
}

- (void)deleteLedgerFile
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v5 = objc_msgSend_defaultFileManager(self, a2, v2, v3);
  v9 = objc_msgSend_ledgerFile(self, v6, v7, v8);
  objc_msgSend_removeItemAtURL_error_(v5, v10, v9, &v16);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6DC08);
  }

  v11 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_msgSend_ledgerFile(self, v12, v13, v14);
    *buf = 68289538;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = v16;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor deleting, file:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x26u);
  }
}

- (BOOL)addRecordForMonitoring:(id)monitoring identifier:(id)identifier persist:(BOOL)persist
{
  persistCopy = persist;
  objc_msgSend_setObject_forKeyedSubscript_(self->_recordTable, a2, monitoring, identifier);
  if (!persistCopy)
  {
    return 1;
  }

  return MEMORY[0x1EEE66B58](self, sel_writeToFile, v7, v8);
}

- (BOOL)removeRecordFromMonitoringWithIdentifier:(id)identifier
{
  objc_msgSend_removeObjectForKey_(self->_recordTable, a2, identifier, v3);

  return MEMORY[0x1EEE66B58](self, sel_writeToFile, v5, v6);
}

- (void)updateEvent:(id)event forIdentifier:(id)identifier
{
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_recordTable, a2, identifier, identifier);
  objc_msgSend_updateEvent_(v6, v7, event, v8);

  MEMORY[0x1EEE66B58](self, sel_writeToFile, v9, v10);
}

@end