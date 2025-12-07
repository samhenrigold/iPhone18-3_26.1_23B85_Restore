@interface IADataStoreBoolean
- (BOOL)destroy;
- (BOOL)negate;
- (BOOL)persist;
- (IADataStoreBoolean)initWithDatastoreHandle:(id)handle andName:(id)name shouldBeCreated:(BOOL)created;
@end

@implementation IADataStoreBoolean

- (IADataStoreBoolean)initWithDatastoreHandle:(id)handle andName:(id)name shouldBeCreated:(BOOL)created
{
  createdCopy = created;
  location[4] = *MEMORY[0x1E69E9840];
  objc_initWeak(location, handle);
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(location);
  v29.receiver = self;
  v29.super_class = IADataStoreBoolean;
  v10 = [(IADataStoreObject *)&v29 initWithDatastoreHandle:WeakRetained andName:nameCopy shouldBeCreated:createdCopy];

  if (!v10)
  {
    goto LABEL_6;
  }

  if (createdCopy)
  {
    v10->_isTrue = 0;
    objc_msgSend_persist(v10, v11, v12);
LABEL_6:
    v24 = v10;
    goto LABEL_7;
  }

  v13 = objc_msgSend_datastoreHandle(v10, v11, v12);
  v16 = v13;
  if (v13)
  {
    v17 = objc_msgSend_defaultsHandle(v13, v14, v15);
    v20 = objc_msgSend_name(v10, v18, v19);
    v22 = objc_msgSend_stringByAppendingString_(v20, v21, @"_isTrue");
    v10->_isTrue = objc_msgSend_BOOLForKey_(v17, v23, v22);

    goto LABEL_6;
  }

  v26 = sub_1D4621008(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    objc_msgSend_name(v10, v27, v28);
    objc_claimAutoreleasedReturnValue();
    sub_1D462DE10();
  }

  v24 = 0;
LABEL_7:

  objc_destroyWeak(location);
  return v24;
}

- (BOOL)persist
{
  v4 = objc_msgSend_datastoreHandle(self, a2, v2);
  if (!v4)
  {
    v8 = sub_1D4621008(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DE58(self, v8, v19);
    }

    goto LABEL_8;
  }

  v22.receiver = self;
  v22.super_class = IADataStoreBoolean;
  persist = [(IADataStoreObject *)&v22 persist];
  if ((persist & 1) == 0)
  {
    v8 = sub_1D4621008(persist);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DFA4(self, v8, v20);
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v8 = objc_msgSend_defaultsHandle(v4, v6, v7);
  isTrue = objc_msgSend_isTrue(self, v9, v10);
  v14 = objc_msgSend_name(self, v12, v13);
  v16 = objc_msgSend_stringByAppendingString_(v14, v15, @"_isTrue");
  objc_msgSend_setBool_forKey_(v8, v17, isTrue, v16);

  v18 = 1;
LABEL_9:

  return v18;
}

- (BOOL)destroy
{
  v4 = objc_msgSend_datastoreHandle(self, a2, v2);
  if (!v4)
  {
    v8 = sub_1D4621008(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1D462DE58(self, v8, v16);
    }

    goto LABEL_8;
  }

  v19.receiver = self;
  v19.super_class = IADataStoreBoolean;
  destroy = [(IADataStoreObject *)&v19 destroy];
  if ((destroy & 1) == 0)
  {
    v8 = sub_1D4621008(destroy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1D462E028(self, v8, v17);
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v8 = objc_msgSend_defaultsHandle(v4, v6, v7);
  v11 = objc_msgSend_name(self, v9, v10);
  v13 = objc_msgSend_stringByAppendingString_(v11, v12, @"_isTrue");
  objc_msgSend_removeObjectForKey_(v8, v14, v13);

  v15 = 1;
LABEL_9:

  return v15;
}

- (BOOL)negate
{
  self->_isTrue = objc_msgSend_isTrue(self, a2, v2) ^ 1;

  return objc_msgSend_persist(self, v4, v5);
}

@end