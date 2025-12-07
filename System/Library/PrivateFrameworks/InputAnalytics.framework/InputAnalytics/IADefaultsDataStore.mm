@interface IADefaultsDataStore
- (BOOL)_createErrorWithDescription:(id)description code:(int64_t)code error:(id *)error;
- (BOOL)deleteDataStoreObject:(id)object withError:(id *)error;
- (BOOL)objectExistsWithName:(id)name andType:(id)type withError:(id *)error;
- (IADefaultsDataStore)initWithName:(id)name;
- (id)createDataStoreObjectWithName:(id)name withType:(id)type withError:(id *)error;
- (id)getObjectWithName:(id)name withType:(id)type withError:(id *)error;
@end

@implementation IADefaultsDataStore

- (IADefaultsDataStore)initWithName:(id)name
{
  nameCopy = name;
  hasPrefix = objc_msgSend_hasPrefix_(nameCopy, v6, @"com.apple.");
  if (hasPrefix)
  {
    v17.receiver = self;
    v17.super_class = IADefaultsDataStore;
    v8 = [(IADefaultsDataStore *)&v17 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_datastoreName, name);
      v10 = objc_alloc(MEMORY[0x1E695E000]);
      v12 = objc_msgSend_initWithSuiteName_(v10, v11, nameCopy);
      defaultsHandle = v9->_defaultsHandle;
      v9->_defaultsHandle = v12;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v15 = sub_1D4621008(hasPrefix);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E3EC(nameCopy, v15);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)_createErrorWithDescription:(id)description code:(int64_t)code error:(id *)error
{
  v7 = MEMORY[0x1E695DF90];
  descriptionCopy = description;
  v11 = objc_msgSend_dictionary(v7, v9, v10);
  objc_msgSend_setValue_forKey_(v11, v12, descriptionCopy, *MEMORY[0x1E696A578]);

  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v13, @"IADefaultsDataStoreErrorDomain", code, v11);
  }

  return error != 0;
}

- (BOOL)objectExistsWithName:(id)name andType:(id)type withError:(id *)error
{
  typeCopy = type;
  nameCopy = name;
  v11 = objc_msgSend_defaultsHandle(self, v9, v10);
  v13 = objc_msgSend_stringForKey_(v11, v12, nameCopy);

  if (!v13)
  {
    goto LABEL_6;
  }

  if (qword_1EC7D6678 != -1)
  {
    sub_1D462E478();
  }

  if (objc_msgSend_containsObject_(qword_1EC7D6670, v14, v13))
  {
    isEqualToString = objc_msgSend_isEqualToString_(v13, v15, typeCopy);
  }

  else
  {
LABEL_6:
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (id)createDataStoreObjectWithName:(id)name withType:(id)type withError:(id *)error
{
  nameCopy = name;
  typeCopy = type;
  valid = objc_msgSend__validName_(self, v10, nameCopy);
  if ((valid & 1) == 0)
  {
    v16 = sub_1D4621008(valid);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E48C();
    }

    objc_msgSend__createErrorWithDescription_code_error_(self, v17, @"Object name not allowed", 105, error);
    goto LABEL_9;
  }

  v13 = objc_msgSend_objectExistsWithName_andType_withError_(self, v12, nameCopy, typeCopy, error);
  if (v13)
  {
    v14 = sub_1D4621008(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E5C4();
    }

    objc_msgSend__createErrorWithDescription_code_error_(self, v15, @"Object already exists", 102, error);
LABEL_9:
    v18 = 0;
    goto LABEL_25;
  }

  objc_initWeak(&location, self);
  v21 = objc_msgSend_type(IADataStoreCounter, v19, v20);
  isEqualToString = objc_msgSend_isEqualToString_(typeCopy, v22, v21);

  if (isEqualToString)
  {
    v26 = [IADataStoreCounter alloc];
    v27 = objc_loadWeakRetained(&location);
    shouldBeCreated = objc_msgSend_initWithDatastoreHandle_andName_shouldBeCreated_(v26, v28, v27, nameCopy, 1);
  }

  else
  {
    v30 = objc_msgSend_type(IADataStoreBoolean, v24, v25);
    v32 = objc_msgSend_isEqualToString_(typeCopy, v31, v30);

    if (v32)
    {
      v35 = [IADataStoreBoolean alloc];
      v27 = objc_loadWeakRetained(&location);
      shouldBeCreated = objc_msgSend_initWithDatastoreHandle_andName_shouldBeCreated_(v35, v36, v27, nameCopy, 1);
    }

    else
    {
      v37 = objc_msgSend_type(IADataStoreDaterange, v33, v34);
      v39 = objc_msgSend_isEqualToString_(typeCopy, v38, v37);

      if (!v39)
      {
        v44 = sub_1D4621008(v40);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          sub_1D462E4F4();
        }

        v45 = @"Unrecognized type";
        v46 = 100;
        goto LABEL_23;
      }

      v41 = [IADataStoreDaterange alloc];
      v27 = objc_loadWeakRetained(&location);
      shouldBeCreated = objc_msgSend_initWithDatastoreHandle_andName_shouldBeCreated_(v41, v42, v27, nameCopy, 1);
    }
  }

  v18 = shouldBeCreated;

  if (!v18)
  {
    v44 = sub_1D4621008(v43);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E55C();
    }

    v45 = @"Initialization error";
    v46 = 101;
LABEL_23:

    objc_msgSend__createErrorWithDescription_code_error_(self, v47, v45, v46, error);
    v18 = 0;
  }

  objc_destroyWeak(&location);
LABEL_25:

  return v18;
}

- (BOOL)deleteDataStoreObject:(id)object withError:(id *)error
{
  objectCopy = object;
  v9 = objc_msgSend_name(objectCopy, v7, v8);
  v10 = objc_opt_class();
  v13 = objc_msgSend_type(v10, v11, v12);
  v15 = objc_msgSend_objectExistsWithName_andType_withError_(self, v14, v9, v13, error);

  if ((v15 & 1) == 0)
  {
    v21 = sub_1D4621008(v16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E62C(objectCopy, v21, v22);
    }

    v23 = 103;
    goto LABEL_10;
  }

  v19 = objc_msgSend_destroy(objectCopy, v17, v18);
  if ((v19 & 1) == 0)
  {
    v21 = sub_1D4621008(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E6B0(objectCopy, v21, v24);
    }

    v23 = 104;
LABEL_10:

    objc_msgSend__createErrorWithDescription_code_error_(self, v25, @"Object could not be deleted", v23, error);
    v20 = 0;
    goto LABEL_11;
  }

  v20 = 1;
LABEL_11:

  return v20;
}

- (id)getObjectWithName:(id)name withType:(id)type withError:(id *)error
{
  nameCopy = name;
  typeCopy = type;
  v11 = objc_msgSend_objectExistsWithName_andType_withError_(self, v10, nameCopy, typeCopy, error);
  if (v11)
  {
    objc_initWeak(&location, self);
    v14 = objc_msgSend_type(IADataStoreCounter, v12, v13);
    isEqualToString = objc_msgSend_isEqualToString_(typeCopy, v15, v14);

    if (isEqualToString)
    {
      v19 = [IADataStoreCounter alloc];
      v20 = objc_loadWeakRetained(&location);
      shouldBeCreated = objc_msgSend_initWithDatastoreHandle_andName_shouldBeCreated_(v19, v21, v20, nameCopy, 0);
    }

    else
    {
      v26 = objc_msgSend_type(IADataStoreBoolean, v17, v18);
      v28 = objc_msgSend_isEqualToString_(typeCopy, v27, v26);

      if (v28)
      {
        v31 = [IADataStoreBoolean alloc];
        v20 = objc_loadWeakRetained(&location);
        shouldBeCreated = objc_msgSend_initWithDatastoreHandle_andName_shouldBeCreated_(v31, v32, v20, nameCopy, 0);
      }

      else
      {
        v33 = objc_msgSend_type(IADataStoreDaterange, v29, v30);
        v35 = objc_msgSend_isEqualToString_(typeCopy, v34, v33);

        if (!v35)
        {
          v40 = sub_1D4621008(v36);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            sub_1D462E4F4();
          }

          v41 = @"Unrecognized type";
          v42 = 100;
          goto LABEL_18;
        }

        v37 = [IADataStoreDaterange alloc];
        v20 = objc_loadWeakRetained(&location);
        shouldBeCreated = objc_msgSend_initWithDatastoreHandle_andName_shouldBeCreated_(v37, v38, v20, nameCopy, 0);
      }
    }

    v25 = shouldBeCreated;

    if (v25)
    {
LABEL_19:
      objc_destroyWeak(&location);
      goto LABEL_20;
    }

    v40 = sub_1D4621008(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E55C();
    }

    v41 = @"Initialization error";
    v42 = 101;
LABEL_18:

    objc_msgSend__createErrorWithDescription_code_error_(self, v43, v41, v42, error);
    v25 = 0;
    goto LABEL_19;
  }

  v23 = sub_1D4621008(v11);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_1D462E734();
  }

  v25 = objc_msgSend_createDataStoreObjectWithName_withType_withError_(self, v24, nameCopy, typeCopy, error);
LABEL_20:

  return v25;
}

@end