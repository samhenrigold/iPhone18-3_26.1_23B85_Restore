@interface IADataStoreObject
+ (id)type;
- (BOOL)destroy;
- (BOOL)persist;
- (IADataStoreObject)initWithDatastoreHandle:(id)handle andName:(id)name shouldBeCreated:(BOOL)created;
- (IADefaultsDataStore)datastoreHandle;
@end

@implementation IADataStoreObject

- (IADataStoreObject)initWithDatastoreHandle:(id)handle andName:(id)name shouldBeCreated:(BOOL)created
{
  createdCopy = created;
  v62 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, handle);
  nameCopy = name;
  v54.receiver = self;
  v54.super_class = IADataStoreObject;
  v9 = [(IADataStoreObject *)&v54 init];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = objc_loadWeakRetained(&location);
  objc_storeWeak(&v9->_datastoreHandle, v10);

  objc_storeStrong(&v9->_name, name);
  v9->_destroyed = 0;
  if (!createdCopy)
  {
    v13 = objc_msgSend_datastoreHandle(v9, v11, v12);
    v16 = v13;
    if (v13)
    {
      v17 = objc_msgSend_defaultsHandle(v13, v14, v15);
      v20 = objc_msgSend_name(v9, v18, v19);
      v22 = objc_msgSend_stringByAppendingString_(v20, v21, @"_version");
      v9->_version = objc_msgSend_integerForKey_(v17, v23, v22);

      v26 = objc_msgSend_version(v9, v24, v25);
      if (v26 == 1)
      {
        v29 = objc_msgSend_defaultsHandle(v16, v27, v28);
        v32 = objc_msgSend_name(v9, v30, v31);
        v34 = objc_msgSend_stringByAppendingString_(v32, v33, @"_lastModified");
        v36 = objc_msgSend_objectForKey_(v29, v35, v34);
        lastModified = v9->_lastModified;
        v9->_lastModified = v36;

        goto LABEL_7;
      }

      v39 = sub_1D4621008(v26);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        v45 = MEMORY[0x1E696AD98];
        v46 = objc_msgSend_version(v9, v42, v43);
        v48 = objc_msgSend_numberWithInt_(v45, v47, v46);
        v51 = objc_msgSend_name(v9, v49, v50);
        v53 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v52, 1);
        *buf = 138412802;
        v57 = v48;
        v58 = 2112;
        v59 = v51;
        v60 = 2112;
        v61 = v53;
        _os_log_fault_impl(&dword_1D460F000, v39, OS_LOG_TYPE_FAULT, "Invalid version %@ object with name %@ (expected %@)", buf, 0x20u);
      }
    }

    else
    {
      v39 = sub_1D4621008(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        objc_msgSend_name(v9, v40, v41);
        objc_claimAutoreleasedReturnValue();
        sub_1D462DE10();
      }
    }

    v38 = 0;
    goto LABEL_13;
  }

  v9->_version = 1;
  objc_msgSend_persist(v9, v11, v12);
LABEL_7:
  v38 = v9;
LABEL_13:

  objc_destroyWeak(&location);
  return v38;
}

- (BOOL)persist
{
  v4 = objc_msgSend_destroyed(self, a2, v2);
  if (v4)
  {
    v7 = sub_1D4621008(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DEDC(self, v7, v8);
    }

LABEL_9:
    v49 = 0;
    goto LABEL_10;
  }

  v9 = objc_msgSend_datastoreHandle(self, v5, v6);
  v7 = v9;
  if (!v9)
  {
    v50 = sub_1D4621008(0);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DE58(self, v50, v51);
    }

    goto LABEL_9;
  }

  v12 = objc_msgSend_defaultsHandle(v9, v10, v11);
  v13 = objc_opt_class();
  v16 = objc_msgSend_type(v13, v14, v15);
  v19 = objc_msgSend_name(self, v17, v18);
  objc_msgSend_setObject_forKey_(v12, v20, v16, v19);

  v23 = objc_msgSend_defaultsHandle(v7, v21, v22);
  v26 = objc_msgSend_version(self, v24, v25);
  v29 = objc_msgSend_name(self, v27, v28);
  v31 = objc_msgSend_stringByAppendingString_(v29, v30, @"_version");
  objc_msgSend_setInteger_forKey_(v23, v32, v26, v31);

  v35 = objc_msgSend_now(MEMORY[0x1E695DF00], v33, v34);
  lastModified = self->_lastModified;
  self->_lastModified = v35;

  v39 = objc_msgSend_defaultsHandle(v7, v37, v38);
  v42 = objc_msgSend_lastModified(self, v40, v41);
  v45 = objc_msgSend_name(self, v43, v44);
  v47 = objc_msgSend_stringByAppendingString_(v45, v46, @"_lastModified");
  objc_msgSend_setObject_forKey_(v39, v48, v42, v47);

  v49 = 1;
LABEL_10:

  return v49;
}

- (BOOL)destroy
{
  v4 = objc_msgSend_destroyed(self, a2, v2);
  if (v4)
  {
    v7 = sub_1D4621008(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DEDC(self, v7, v8);
    }

LABEL_9:
    v35 = 0;
    goto LABEL_10;
  }

  v9 = objc_msgSend_datastoreHandle(self, v5, v6);
  v7 = v9;
  if (!v9)
  {
    v36 = sub_1D4621008(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DE58(self, v36, v37);
    }

    goto LABEL_9;
  }

  v12 = objc_msgSend_defaultsHandle(v9, v10, v11);
  v15 = objc_msgSend_name(self, v13, v14);
  objc_msgSend_removeObjectForKey_(v12, v16, v15);

  v19 = objc_msgSend_defaultsHandle(v7, v17, v18);
  v22 = objc_msgSend_name(self, v20, v21);
  v24 = objc_msgSend_stringByAppendingString_(v22, v23, @"_version");
  objc_msgSend_removeObjectForKey_(v19, v25, v24);

  v28 = objc_msgSend_defaultsHandle(v7, v26, v27);
  v31 = objc_msgSend_name(self, v29, v30);
  v33 = objc_msgSend_stringByAppendingString_(v31, v32, @"_lastModified");
  objc_msgSend_removeObjectForKey_(v28, v34, v33);

  v35 = 1;
  self->_destroyed = 1;
LABEL_10:

  return v35;
}

+ (id)type
{
  v4 = sub_1D4621008(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_1D462DF60(v4);
  }

  v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"IADataStoreObject.m", 118, @"type not implemented");

  return 0;
}

- (IADefaultsDataStore)datastoreHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_datastoreHandle);

  return WeakRetained;
}

@end