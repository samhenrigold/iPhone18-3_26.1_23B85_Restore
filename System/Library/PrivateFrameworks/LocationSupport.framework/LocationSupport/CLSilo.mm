@interface CLSilo
+ (id)main;
+ (void)setGlobalConfiguration:(id)configuration;
- (BOOL)isSuspended;
- (BOOL)shouldBeIdled;
- (CLSilo)initWithIdentifier:(id)identifier;
- (double)currentLatchedAbsoluteTimestamp;
- (id)newTimer;
- (id)registerForIdleNotifications:(id)notifications onResume:(id)resume;
- (void)afterInterval:(double)interval async:(id)async;
- (void)assertInside;
- (void)assertOutside;
- (void)async:(id)async;
- (void)heartBeat:(id)beat;
- (void)intendToSync;
- (void)prepareAndRunBlock:(id)block;
- (void)resume;
- (void)runIdleHandlers;
- (void)runResumeHandlers;
- (void)suspend;
- (void)sync:(id)sync;
- (void)unregisterForIdleNotifications:(id)notifications;
@end

@implementation CLSilo

+ (id)main
{
  if (qword_1ED5FADE8 != -1)
  {
    dispatch_once(&qword_1ED5FADE8, &unk_1F5AC69A0);
  }

  v3 = qword_1ED5FADE0;

  return v3;
}

- (BOOL)shouldBeIdled
{
  Current = CFAbsoluteTimeGetCurrent();
  lastIdleCheck = self->_lastIdleCheck;
  objc_msgSend_currentLatchedAbsoluteTimestamp(self, v5, v6);
  if (lastIdleCheck <= v9)
  {
    result = 0;
  }

  else
  {
    v10 = self->_lastIdleCheck;
    objc_msgSend_currentLatchedAbsoluteTimestamp(self, v7, v8);
    result = v10 - v11 > 900.0;
  }

  self->_lastIdleCheck = Current;
  return result;
}

+ (void)setGlobalConfiguration:(id)configuration
{
  v128 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = objc_msgSend_objectForKeyedSubscript_(configurationCopy, v4, @"AutoCohortEdgesDirectoryPath");
  if (objc_msgSend_length(v5, v6, v7))
  {
    objc_msgSend_enableAutoCohortingForProcessAtPath_(CLAutoCohortUtilities, v8, v5);
  }

  v9 = objc_opt_new();
  v92 = v5;
  v94 = configurationCopy;
  if (objc_msgSend_autoCohortingEnabled(CLAutoCohortUtilities, v10, v11))
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC63A0);
    }

    v13 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v120 = 0;
      v121 = 2082;
      v122 = &unk_1DF8255EF;
      _os_log_impl(&dword_1DF7FE000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting Using syng-get graph file if available}", buf, 0x12u);
    }

    v16 = objc_msgSend_objectForKeyedSubscript_(configurationCopy, v14, @"SyncgetGraphFile", v92);
    if (v16)
    {
      v17 = objc_msgSend_inputStreamWithFileAtPath_(MEMORY[0x1E695DF48], v15, v16);
      v20 = v17;
      if (v17)
      {
        objc_msgSend_open(v17, v18, v19);
        v103 = 0;
        v22 = objc_msgSend_propertyListWithStream_options_format_error_(MEMORY[0x1E696AE40], v21, v20, 0, 0, &v103);
        v23 = v103;
        objc_msgSend_close(v20, v24, v25);
        if (v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v27 = 0;
        }

        else
        {
          v27 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF90], v26, v22);
          if (qword_1ED5FAD40 != -1)
          {
            dispatch_once(&qword_1ED5FAD40, &unk_1F5AC63A0);
          }

          v28 = qword_1ED5FAD48;
          if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            v120 = 0;
            v121 = 2082;
            v122 = &unk_1DF8255EF;
            v123 = 2114;
            v124 = v16;
            _os_log_impl(&dword_1DF7FE000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting Successfully read sync-get graph file, filePath:%{public, location:escape_only}@}", buf, 0x1Cu);
          }
        }
      }

      else
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC63A0);
        }

        v72 = qword_1ED5FAD48;
        if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          v120 = 0;
          v121 = 2082;
          v122 = &unk_1DF8255EF;
          v123 = 2114;
          v124 = v16;
          _os_log_impl(&dword_1DF7FE000, v72, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting No sync-get graph file available to read, filePath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        v27 = 0;
      }

      v70 = v93;
    }

    else
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC63A0);
      }

      v71 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v120 = 0;
        v121 = 2082;
        v122 = &unk_1DF8255EF;
        _os_log_impl(&dword_1DF7FE000, v71, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Cohorting No sync-get graph filePath supplied}", buf, 0x12u);
      }

      v27 = 0;
      v70 = v93;
    }

    v74 = objc_msgSend_computeAutoCohortMapWithStarterGraph_(CLAutoCohortUtilities, v73, v27);

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v9 = v74;
    v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v75, &v99, v118, 16);
    if (v76)
    {
      v78 = v76;
      LODWORD(v79) = 0;
      v80 = *v100;
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v100 != v80)
          {
            objc_enumerationMutation(v9);
          }

          v82 = objc_msgSend_objectForKeyedSubscript_(v9, v77, *(*(&v99 + 1) + 8 * i));
          v85 = objc_msgSend_intValue(v82, v83, v84);

          if (v79 <= v85)
          {
            v79 = v85;
          }

          else
          {
            v79 = v79;
          }
        }

        v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v77, &v99, v118, 16);
      }

      while (v78);
    }

    else
    {
      v79 = 0;
    }

    v87 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v86, v79);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v88, v87, @"default");

    v53 = v94;
  }

  else
  {
    objc_msgSend_objectForKeyedSubscript_(configurationCopy, v12, @"CohortToNameMap");
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    obj = v115 = 0u;
    v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v112, v127, 16);
    if (v96)
    {
      v95 = *v113;
      do
      {
        for (j = 0; j != v96; ++j)
        {
          if (*v113 != v95)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v112 + 1) + 8 * j);
          v33 = objc_msgSend_objectForKeyedSubscript_(obj, v30, v32, v92);
          v36 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v34, v35);
          v98 = v33;
          v38 = objc_msgSend_componentsSeparatedByCharactersInSet_(v33, v37, v36);

          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v39 = v38;
          v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v108, v126, 16);
          if (v41)
          {
            v44 = v41;
            v45 = *v109;
            do
            {
              for (k = 0; k != v44; ++k)
              {
                if (*v109 != v45)
                {
                  objc_enumerationMutation(v39);
                }

                v47 = *(*(&v108 + 1) + 8 * k);
                v48 = MEMORY[0x1E696AD98];
                v49 = objc_msgSend_intValue(v32, v42, v43);
                v51 = objc_msgSend_numberWithInt_(v48, v50, v49);
                objc_msgSend_setObject_forKeyedSubscript_(v9, v52, v51, v47);
              }

              v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v108, v126, 16);
            }

            while (v44);
          }
        }

        v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v112, v127, 16);
      }

      while (v96);
    }

    v53 = v94;
    v27 = objc_msgSend_objectForKeyedSubscript_(v94, v54, @"NameToCohortMap");
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v55, &v104, v125, 16);
    if (v56)
    {
      v58 = v56;
      v59 = *v105;
      do
      {
        for (m = 0; m != v58; ++m)
        {
          if (*v105 != v59)
          {
            objc_enumerationMutation(v27);
          }

          v61 = *(*(&v104 + 1) + 8 * m);
          v62 = objc_msgSend_objectForKeyedSubscript_(v27, v57, v61, v92);
          v63 = MEMORY[0x1E696AD98];
          v66 = objc_msgSend_intValue(v62, v64, v65);
          v68 = objc_msgSend_numberWithInt_(v63, v67, v66);
          objc_msgSend_setObject_forKeyedSubscript_(v9, v69, v68, v61);
        }

        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v57, &v104, v125, 16);
      }

      while (v58);
      v70 = v92;
      v53 = v94;
    }

    else
    {
      v70 = v92;
    }
  }

  v116 = @"NameToCohortMap";
  v117 = v9;
  v90 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v89, &v117, &v116, 1);
  v91 = qword_1ECE5D8F8;
  qword_1ECE5D8F8 = v90;
}

- (CLSilo)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CLSilo;
  v6 = [(CLSilo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = objc_opt_new();
    idleHandlers = v7->_idleHandlers;
    v7->_idleHandlers = v8;
  }

  return v7;
}

- (void)assertInside
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLSilo.m", 187, "[CLSilo assertInside]");
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)assertOutside
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLSilo.m", 192, "[CLSilo assertOutside]");
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)suspend
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLSilo.m", 197, "[CLSilo suspend]");
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)resume
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLSilo.m", 202, "[CLSilo resume]");
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (BOOL)isSuspended
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLSilo.m", 207, "[CLSilo isSuspended]");
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (double)currentLatchedAbsoluteTimestamp
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLSilo.m", 212, "[CLSilo currentLatchedAbsoluteTimestamp]");
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)prepareAndRunBlock:(id)block
{
  v11 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (self->_isIdle)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC63A0);
    }

    v5 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      v9 = 138412290;
      v10 = identifier;
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_DEFAULT, "#Idleness: Silo is being resumed: %@", &v9, 0xCu);
    }

    objc_msgSend_runResumeHandlers(self, v6, v7);
    self->_isIdle = 0;
  }

  self->_currentLatchedAbsoluteTimestamp = CFAbsoluteTimeGetCurrent();
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (id)newTimer
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLSilo.m", 230, "[CLSilo newTimer]");
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)async:(id)async
{
  v15 = *MEMORY[0x1E69E9840];
  asyncCopy = async;
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v5 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v6 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLSilo.m", 236, "[CLSilo async:]");
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)sync:(id)sync
{
  v15 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v5 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v6 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLSilo.m", 241, "[CLSilo sync:]");
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)intendToSync
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v2 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v3 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLSilo.m", 246, "[CLSilo intendToSync]");
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)afterInterval:(double)interval async:(id)async
{
  v16 = *MEMORY[0x1E69E9840];
  asyncCopy = async;
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v5 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "0";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v6 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v7 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = &unk_1DF8255EF;
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "0";
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLSilo.m", 251, "[CLSilo afterInterval:async:]");
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (void)heartBeat:(id)beat
{
  v15 = *MEMORY[0x1E69E9840];
  beatCopy = beat;
  if (qword_1ECE5D3E8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v4 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v5 = qword_1ECE5D3F8;
    if (os_signpost_enabled(qword_1ECE5D3F8))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
      }
    }

    v6 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "0";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLSilo.m", 256, "[CLSilo heartBeat:]");
LABEL_11:
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC63C0);
  }
}

- (id)registerForIdleNotifications:(id)notifications onResume:(id)resume
{
  resumeCopy = resume;
  notificationsCopy = notifications;
  v8 = [CLSiloIdleHandler alloc];
  v10 = objc_msgSend_initWithIdleHandler_onResume_(v8, v9, notificationsCopy, resumeCopy);

  os_unfair_lock_lock(&self->_idleHandlersLock);
  objc_msgSend_addObject_(self->_idleHandlers, v11, v10);
  os_unfair_lock_unlock(&self->_idleHandlersLock);

  return v10;
}

- (void)unregisterForIdleNotifications:(id)notifications
{
  notificationsCopy = notifications;
  objc_msgSend_invalidate(notificationsCopy, v5, v6);
  os_unfair_lock_lock(&self->_idleHandlersLock);
  objc_msgSend_removeObject_(self->_idleHandlers, v7, notificationsCopy);

  os_unfair_lock_unlock(&self->_idleHandlersLock);
}

- (void)runIdleHandlers
{
  v21 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self, a2, v2);
  os_unfair_lock_lock(&self->_idleHandlersLock);
  v6 = objc_msgSend_copy(self->_idleHandlers, v4, v5);
  os_unfair_lock_unlock(&self->_idleHandlersLock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v16, v20, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = objc_msgSend_onIdle(*(*(&v16 + 1) + 8 * v14), v10, v11, v16);
        v15[2]();

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v16, v20, 16);
    }

    while (v12);
  }
}

- (void)runResumeHandlers
{
  v21 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(self, a2, v2);
  os_unfair_lock_lock(&self->_idleHandlersLock);
  v6 = objc_msgSend_copy(self->_idleHandlers, v4, v5);
  os_unfair_lock_unlock(&self->_idleHandlersLock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v16, v20, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = objc_msgSend_onResume(*(*(&v16 + 1) + 8 * v14), v10, v11, v16);
        v15[2]();

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v16, v20, 16);
    }

    while (v12);
  }
}

@end