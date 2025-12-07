@interface NFStorageControllerESEExpress
- (id)_deleteAllESEExpressEntities;
- (id)fetchESEExpressEntitiesWithError:(id *)error;
- (void)deleteAllESEExpressEntities;
- (void)updateESEExpressEntitiesWithConfig:(id)config;
@end

@implementation NFStorageControllerESEExpress

- (id)fetchESEExpressEntitiesWithError:(id *)error
{
  errorCopy = error;
  v53[5] = *MEMORY[0x29EDCA608];
  v6 = sub_2994CFB70(&self->super.super.isa, a2, error);

  if (v6)
  {
    *buf = 0;
    *v50 = buf;
    *&v50[8] = 0x3032000000;
    *&v50[16] = sub_2994CDBD8;
    *&v50[24] = sub_2994CDBE8;
    v51 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_2994CDBD8;
    v47 = sub_2994CDBE8;
    v48 = 0;
    v9 = sub_2994CFB70(&self->super.super.isa, v7, v8);
    v42[0] = MEMORY[0x29EDCA5F8];
    v42[1] = 3221225472;
    v42[2] = sub_2994CDBF0;
    v42[3] = &unk_29EF26530;
    v42[4] = self;
    v42[5] = &v43;
    v42[6] = buf;
    v42[7] = a2;
    objc_msgSend_performBlockAndWait_(v9, v10, v42);

    if (errorCopy)
    {
      *errorCopy = v44[5];
    }

    errorCopy = *(*v50 + 40);
    _Block_object_dispose(&v43, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v13 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v13(3, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v17, ClassName, Name, 44);
    }

    dispatch_get_specific(*v11);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(self);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v20;
      *v50 = 2082;
      *&v50[2] = object_getClassName(self);
      *&v50[10] = 2082;
      *&v50[12] = sel_getName(a2);
      *&v50[20] = 1024;
      *&v50[22] = 44;
      _os_log_impl(&dword_2994CA000, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", buf, 0x22u);
    }

    if (errorCopy)
    {
      v21 = objc_alloc(MEMORY[0x29EDB9FA0]);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v22, "nfcd");
      v52[0] = *MEMORY[0x29EDB9ED8];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v24, "Unknown Error");
      v53[0] = v25;
      v53[1] = &unk_2A1F86D80;
      v52[1] = @"Line";
      v52[2] = @"Method";
      v26 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v27 = sel_getName(a2);
      v29 = objc_msgSend_initWithFormat_(v26, v28, @"%s", v27);
      v53[2] = v29;
      v52[3] = *MEMORY[0x29EDB9E38];
      v30 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v31 = sel_getName(a2);
      v33 = objc_msgSend_initWithFormat_(v30, v32, @"%s:%d", v31, 46);
      v53[3] = v33;
      v52[4] = *MEMORY[0x29EDB9EE0];
      v34 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v36 = objc_msgSend_initWithFormat_(v34, v35, @"managedObjectContext is NULL");
      v53[4] = v36;
      v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v37, v53, v52, 5);
      *errorCopy = objc_msgSend_initWithDomain_code_userInfo_(v21, v39, v23, 6, v38);

      errorCopy = 0;
    }
  }

  return errorCopy;
}

- (id)_deleteAllESEExpressEntities
{
  v40 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_fetchRequest(ExpressESEEntity, a2, v2);
  v6 = objc_alloc(MEMORY[0x29EDB8C40]);
  Request = objc_msgSend_initWithFetchRequest_(v6, v7, v5);
  v11 = sub_2994CFB70(&self->super.super.isa, v9, v10);
  v29 = 0;
  v13 = objc_msgSend_executeRequest_error_(v11, v12, Request, &v29);
  v14 = v29;

  if (v14)
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Failed to execute delete request: %{public}@", v20, ClassName, Name, 143, v14);
    }

    dispatch_get_specific(*v15);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = object_getClass(self);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(self);
      v25 = sel_getName(a2);
      *buf = 67110146;
      v31 = v23;
      v32 = 2082;
      v33 = v24;
      v34 = 2082;
      v35 = v25;
      v36 = 1024;
      v37 = 143;
      v38 = 2114;
      v39 = v14;
      _os_log_impl(&dword_2994CA000, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to execute delete request: %{public}@", buf, 0x2Cu);
    }
  }

  return v14;
}

- (void)updateESEExpressEntitiesWithConfig:(id)config
{
  v35 = *MEMORY[0x29EDCA608];
  configCopy = config;
  v8 = sub_2994CFB70(&self->super.super.isa, v6, v7);

  if (v8)
  {
    v11 = sub_2994CFB70(&self->super.super.isa, v9, v10);
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = sub_2994CEE44;
    v24[3] = &unk_29EF265A8;
    v24[4] = self;
    v26 = a2;
    v25 = configCopy;
    objc_msgSend_performBlockAndWait_(v11, v12, v24);
  }

  else
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v15 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v15(3, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v19, ClassName, Name, 153);
    }

    dispatch_get_specific(*v13);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(self);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      *buf = 67109890;
      v28 = v22;
      v29 = 2082;
      v30 = object_getClassName(self);
      v31 = 2082;
      v32 = sel_getName(a2);
      v33 = 1024;
      v34 = 153;
      _os_log_impl(&dword_2994CA000, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", buf, 0x22u);
    }
  }
}

- (void)deleteAllESEExpressEntities
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = sub_2994CFB70(&self->super.super.isa, a2, v2);

  if (v5)
  {
    v8 = sub_2994CFB70(&self->super.super.isa, v6, v7);
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3221225472;
    v20[2] = sub_2994CF7FC;
    v20[3] = &unk_29EF265D0;
    v20[4] = self;
    v20[5] = a2;
    objc_msgSend_performBlockAndWait_(v8, v9, v20);
  }

  else
  {
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v12 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v16, ClassName, Name, 216);
    }

    dispatch_get_specific(*v10);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17 = object_getClass(self);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      *buf = 67109890;
      v22 = v18;
      v23 = 2082;
      v24 = object_getClassName(self);
      v25 = 2082;
      v26 = sel_getName(a2);
      v27 = 1024;
      v28 = 216;
      _os_log_impl(&dword_2994CA000, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", buf, 0x22u);
    }
  }
}

@end