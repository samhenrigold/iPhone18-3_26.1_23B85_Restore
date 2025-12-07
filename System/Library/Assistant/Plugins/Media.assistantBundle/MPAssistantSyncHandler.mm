@interface MPAssistantSyncHandler
+ (id)_widthLimitedOperationQueue;
- (MPAssistantSyncHandler)init;
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
- (void)syncDidEnd;
@end

@implementation MPAssistantSyncHandler

- (void)syncDidEnd
{
  v3 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2334D9000, v3, OS_LOG_TYPE_DEFAULT, "Sync Handler (end): sync ended", v4, 2u);
  }

  *&self->_resetSync = 256;
  dispatch_semaphore_signal(self->_resultProcessingSemaphore);
  dispatch_semaphore_signal(self->_changeEnumerationSemaphore);
}

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  v84 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  infoCopy = info;
  if (self->_abortSync)
  {
    v12 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_ERROR, "Sync Handler (get): sync already ended", buf, 2u);
    }
  }

  else
  {
    v13 = objc_msgSend_sharedPreferences(MEMORY[0x277CEF368], v7, v8, v9, v10);
    isMediaEntitySyncDisabled = objc_msgSend_isMediaEntitySyncDisabled(v13, v14, v15, v16, v17);

    if (isMediaEntitySyncDisabled)
    {
      v20 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2334D9000, v20, OS_LOG_TYPE_DEFAULT, "Sync Handler (get): media entity sync disabled - resetting anchor", buf, 2u);
      }

      objc_msgSend_setObject_(infoCopy, v21, 0, v22, v23);
      objc_msgSend_setPostAnchor_(infoCopy, v24, @"0", v25, v26);
    }

    else
    {
      *&v19 = 138543362;
      v79 = v19;
      while (1)
      {
        v27 = objc_autoreleasePoolPush();
        dispatch_semaphore_signal(self->_changeEnumerationSemaphore);
        dispatch_semaphore_wait(self->_resultProcessingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        if (self->_abortSync)
        {
          break;
        }

        nextChange = self->_nextChange;
        if (nextChange)
        {
          v29 = nextChange;
          v34 = objc_msgSend_entity(v29, v30, v31, v32, v33);
          v39 = objc_msgSend_anchor(v29, v35, v36, v37, v38);
          v44 = objc_msgSend_deletionType(v29, v40, v41, v42, v43);
          if (self->_deleteNextChange)
          {
            self->_deleteNextChange = 0;
LABEL_27:
            v66 = 1;
            v51 = objc_msgSend_SAMPMediaEntityRepresentationUsingIdentifierType_(v34, v45, 1, v46, v47, v79);
LABEL_28:
            objc_msgSend_setPostAnchor_(infoCopy, v62, v39, v63, v64, v79);
            objc_msgSend_setIsDelete_(infoCopy, v67, v66, v68, v69);
            objc_msgSend_setObject_(infoCopy, v70, v51, v71, v72);
            v73 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
            {
              v78 = objc_msgSend_persistentID(v34, v74, v75, v76, v77);
              *buf = 138543618;
              v81 = v39;
              v82 = 2048;
              v83 = v78;
              _os_log_impl(&dword_2334D9000, v73, OS_LOG_TYPE_DEBUG, "Sync Handler (get): revision %{public}@, pid %lld", buf, 0x16u);
            }

            goto LABEL_31;
          }

          if (v44)
          {
            goto LABEL_27;
          }

          if (sub_2335046B4(v34))
          {
            v51 = objc_msgSend_SAMPMediaEntityRepresentationUsingIdentifierType_(v34, v48, 1, v49, v50);
            v56 = objc_msgSend_title(v51, v52, v53, v54, v55);
            v61 = objc_msgSend_length(v56, v57, v58, v59, v60);

            if (v61)
            {
              v66 = 0;
              goto LABEL_28;
            }

            v65 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v79;
              v81 = v51;
              _os_log_impl(&dword_2334D9000, v65, OS_LOG_TYPE_DEFAULT, "Sync Handler (get): no title %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v51 = _MPLogCategoryAssistant();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v79;
              v81 = v34;
              _os_log_impl(&dword_2334D9000, v51, OS_LOG_TYPE_DEFAULT, "Sync Handler (get): not for Assistant %{public}@", buf, 0xCu);
            }
          }
        }

        objc_autoreleasePoolPop(v27);
        if (!self->_nextChange)
        {
          goto LABEL_32;
        }
      }

      v29 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2334D9000, v29, OS_LOG_TYPE_ERROR, "Sync Handler (get): aborted", buf, 2u);
      }

LABEL_31:

      objc_autoreleasePoolPop(v27);
    }
  }

LABEL_32:
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info
{
  v92 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  validityCopy = validity;
  infoCopy = info;
  v12 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v89 = anchorCopy;
    v90 = 2114;
    v91 = validityCopy;
    _os_log_impl(&dword_2334D9000, v12, OS_LOG_TYPE_DEFAULT, "Sync Handler (begin): anchor: %{private}@, validity: %{public}@", buf, 0x16u);
  }

  if (self->_abortSync)
  {
    v17 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2334D9000, v17, OS_LOG_TYPE_ERROR, "Sync Handler (enumeration): sync already ended", buf, 2u);
    }

    goto LABEL_28;
  }

  v17 = objc_msgSend__syncValidity(self->_library, v13, v14, v15, v16);
  v22 = objc_msgSend_currentEntityRevision(self->_library, v18, v19, v20, v21);
  v26 = objc_msgSend_valueForDatabaseProperty_(self->_library, v23, @"ForceSiriResetSync", v24, v25);
  v31 = objc_msgSend_BOOLValue(v26, v27, v28, v29, v30);

  if (objc_msgSend_isEqualToString_(v17, v32, validityCopy, v33, v34))
  {
    if (v22 >= objc_msgSend_longLongValue(anchorCopy, v35, v36, v37, v38))
    {
      if (!v31)
      {
        p_resetSync = &self->_resetSync;
        if (!self->_resetSync)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v43 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v49 = "Sync Handler (validity): forced reset";
        v50 = v43;
        v51 = OS_LOG_TYPE_DEFAULT;
        v52 = 2;
        goto LABEL_13;
      }
    }

    else
    {
      v43 = _MPLogCategoryAssistant();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v48 = objc_msgSend_longLongValue(anchorCopy, v44, v45, v46, v47);
        *buf = 134218240;
        v89 = v22;
        v90 = 2048;
        v91 = v48;
        v49 = "Sync Handler (validity): (db revision = %lli, anchor = %lli)";
LABEL_12:
        v50 = v43;
        v51 = OS_LOG_TYPE_ERROR;
        v52 = 22;
LABEL_13:
        _os_log_impl(&dword_2334D9000, v50, v51, v49, buf, v52);
      }
    }
  }

  else
  {
    v43 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v89 = v17;
      v90 = 2114;
      v91 = validityCopy;
      v49 = "Sync Handler (validity): (libraryValidity:%{public}@ != siriValidity:%{public}@)";
      goto LABEL_12;
    }
  }

  objc_msgSend_resetWithValidity_(infoCopy, v53, v17, v54, v55);
  self->_resetSync = 1;
  p_resetSync = &self->_resetSync;
  anchorCopy = @"0";
LABEL_15:
  objc_msgSend_deleteDatabaseProperty_(self->_library, v39, @"ForceSiriResetSync", v41, v42);
LABEL_16:
  v57 = objc_msgSend_sharedPreferences(MEMORY[0x277CEF368], v39, v40, v41, v42);
  isMediaEntitySyncDisabled = objc_msgSend_isMediaEntitySyncDisabled(v57, v58, v59, v60, v61);

  if (isMediaEntitySyncDisabled)
  {
    v67 = objc_msgSend_intValue(anchorCopy, v63, v64, v65, v66);
    v68 = _MPLogCategoryAssistant();
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
    if (v67)
    {
      if (v69)
      {
        *buf = 0;
        _os_log_impl(&dword_2334D9000, v68, OS_LOG_TYPE_DEFAULT, "Sync Handler (validity): media entity sync disabled - resetting", buf, 2u);
      }

      *p_resetSync = 1;
      objc_msgSend_resetWithValidity_(infoCopy, v70, v17, v71, v72);

      anchorCopy = @"0";
    }

    else
    {
      if (v69)
      {
        *buf = 0;
        _os_log_impl(&dword_2334D9000, v68, OS_LOG_TYPE_DEFAULT, "Sync Handler (validity): media entity sync disabled - ignoring sync", buf, 2u);
      }

      self->_abortSync = 1;
    }
  }

  v73 = dispatch_semaphore_create(0);
  changeEnumerationSemaphore = self->_changeEnumerationSemaphore;
  self->_changeEnumerationSemaphore = v73;

  v75 = dispatch_semaphore_create(0);
  resultProcessingSemaphore = self->_resultProcessingSemaphore;
  self->_resultProcessingSemaphore = v75;

  v77 = objc_opt_class();
  v82 = objc_msgSend__widthLimitedOperationQueue(v77, v78, v79, v80, v81);
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = sub_233504D4C;
  v86[3] = &unk_2789DBCF0;
  v86[4] = self;
  anchorCopy = anchorCopy;
  v87 = anchorCopy;
  objc_msgSend_addOperationWithBlock_(v82, v83, v86, v84, v85);

LABEL_28:
}

- (MPAssistantSyncHandler)init
{
  v13.receiver = self;
  v13.super_class = MPAssistantSyncHandler;
  v6 = [(MPAssistantSyncHandler *)&v13 init];
  if (v6)
  {
    v7 = objc_msgSend_defaultMediaLibrary(MEMORY[0x277CD5E10], v2, v3, v4, v5);
    library = v6->_library;
    v6->_library = v7;

    objc_msgSend_setFilteringDisabled_(MEMORY[0x277CD5E38], v9, 1, v10, v11);
  }

  return v6;
}

+ (id)_widthLimitedOperationQueue
{
  if (qword_2814EE820 != -1)
  {
    dispatch_once(&qword_2814EE820, &unk_2848D4440);
  }

  v3 = qword_2814EE818;

  return v3;
}

@end