@interface NFStorageControllerApplet
- (id)_deleteAllAppletEntities;
- (id)fetchAppletEntitiesWithError:(id *)error;
- (id)updateAppletEntitiesWithConfig:(id)config;
- (void)deleteAllAppletEntities;
@end

@implementation NFStorageControllerApplet

- (id)fetchAppletEntitiesWithError:(id *)error
{
  v78[5] = *MEMORY[0x29EDCA608];
  v6 = sub_2994CFB70(&self->super.super.isa, a2, error);

  if (v6)
  {
    *v74 = 0;
    *v75 = v74;
    *&v75[8] = 0x3032000000;
    *&v75[16] = sub_2994CB2BC;
    *&v75[24] = sub_2994CB2CC;
    v76 = objc_opt_new();
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = sub_2994CB2BC;
    v62 = sub_2994CB2CC;
    v63 = 0;
    v9 = sub_2994CFB70(&self->super.super.isa, v7, v8);
    v57[0] = MEMORY[0x29EDCA5F8];
    v57[1] = 3221225472;
    v57[2] = sub_2994CB2D4;
    v57[3] = &unk_29EF26530;
    v57[4] = self;
    v57[5] = &v58;
    v57[6] = v74;
    v57[7] = a2;
    objc_msgSend_performBlockAndWait_(v9, v10, v57);

    if (error)
    {
      *error = v59[5];
    }

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
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v13(6, "%c[%{public}s %{public}s]:%i applets: %{public}@", v18, ClassName, Name, 86, *(*v75 + 40));
    }

    dispatch_get_specific(*v11);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(self);
      v23 = sel_getName(a2);
      v24 = *(*v75 + 40);
      *buf = 67110146;
      v65 = v21;
      v66 = 2082;
      v67 = v22;
      v68 = 2082;
      v69 = v23;
      v70 = 1024;
      v71 = 86;
      v72 = 2114;
      v73 = v24;
      _os_log_impl(&dword_2994CA000, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i applets: %{public}@", buf, 0x2Cu);
    }

    v25 = *(*v75 + 40);
    _Block_object_dispose(&v58, 8);

    _Block_object_dispose(v74, 8);
  }

  else
  {
    v26 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v27 = NFLogGetLogger();
    if (v27)
    {
      v28 = v27;
      v29 = object_getClass(self);
      v30 = class_isMetaClass(v29);
      v31 = object_getClassName(self);
      v56 = sel_getName(a2);
      v32 = 45;
      if (v30)
      {
        v32 = 43;
      }

      v28(3, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v32, v31, v56, 36);
    }

    dispatch_get_specific(*v26);
    v33 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = object_getClass(self);
      if (class_isMetaClass(v34))
      {
        v35 = 43;
      }

      else
      {
        v35 = 45;
      }

      *v74 = 67109890;
      *&v74[4] = v35;
      *v75 = 2082;
      *&v75[2] = object_getClassName(self);
      *&v75[10] = 2082;
      *&v75[12] = sel_getName(a2);
      *&v75[20] = 1024;
      *&v75[22] = 36;
      _os_log_impl(&dword_2994CA000, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v74, 0x22u);
    }

    if (error)
    {
      v36 = objc_alloc(MEMORY[0x29EDB9FA0]);
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v37, "nfcd");
      v77[0] = *MEMORY[0x29EDB9ED8];
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v39, "Unknown Error");
      v78[0] = v40;
      v78[1] = &unk_2A1F86CD8;
      v77[1] = @"Line";
      v77[2] = @"Method";
      v41 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v42 = sel_getName(a2);
      v44 = objc_msgSend_initWithFormat_(v41, v43, @"%s", v42);
      v78[2] = v44;
      v77[3] = *MEMORY[0x29EDB9E38];
      v45 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v46 = sel_getName(a2);
      v48 = objc_msgSend_initWithFormat_(v45, v47, @"%s:%d", v46, 38);
      v78[3] = v48;
      v77[4] = *MEMORY[0x29EDB9EE0];
      v49 = objc_alloc(MEMORY[0x29EDBA0F8]);
      v51 = objc_msgSend_initWithFormat_(v49, v50, @"managedObjectContext is NULL");
      v78[4] = v51;
      v53 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v52, v78, v77, 5);
      *error = objc_msgSend_initWithDomain_code_userInfo_(v36, v54, v38, 6, v53);
    }

    v25 = 0;
  }

  return v25;
}

- (id)_deleteAllAppletEntities
{
  v40 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_fetchRequest(AppletEntity, a2, v2);
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

      v17(3, "%c[%{public}s %{public}s]:%i Failed to execute delete request: %{public}@", v20, ClassName, Name, 100, v14);
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
      v37 = 100;
      v38 = 2114;
      v39 = v14;
      _os_log_impl(&dword_2994CA000, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to execute delete request: %{public}@", buf, 0x2Cu);
    }
  }

  return v14;
}

- (id)updateAppletEntitiesWithConfig:(id)config
{
  v64[4] = *MEMORY[0x29EDCA608];
  configCopy = config;
  v8 = sub_2994CFB70(&self->super.super.isa, v6, v7);

  v9 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  v11 = Logger;
  if (v8)
  {
    if (Logger)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i new Applet Config=%{public}@", v14, ClassName, Name, 122, configCopy);
    }

    dispatch_get_specific(*v9);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = object_getClass(self);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      *buf = 67110146;
      v54 = v17;
      v55 = 2082;
      v56 = object_getClassName(self);
      v57 = 2082;
      v58 = sel_getName(a2);
      v59 = 1024;
      v60 = 122;
      v61 = 2114;
      v62 = configCopy;
      _os_log_impl(&dword_2994CA000, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i new Applet Config=%{public}@", buf, 0x2Cu);
    }

    v20 = sub_2994CFB70(&self->super.super.isa, v18, v19);
    v50[0] = MEMORY[0x29EDCA5F8];
    v50[1] = 3221225472;
    v50[2] = sub_2994CBF94;
    v50[3] = &unk_29EF265A8;
    v50[4] = self;
    v52 = a2;
    v51 = configCopy;
    objc_msgSend_performBlock_(v20, v21, v50);

    v22 = 0;
  }

  else
  {
    if (Logger)
    {
      v23 = object_getClass(self);
      v24 = class_isMetaClass(v23);
      v25 = object_getClassName(self);
      v49 = sel_getName(a2);
      v26 = 45;
      if (v24)
      {
        v26 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v26, v25, v49, 118);
    }

    dispatch_get_specific(*v9);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = object_getClass(self);
      if (class_isMetaClass(v28))
      {
        v29 = 43;
      }

      else
      {
        v29 = 45;
      }

      *buf = 67109890;
      v54 = v29;
      v55 = 2082;
      v56 = object_getClassName(self);
      v57 = 2082;
      v58 = sel_getName(a2);
      v59 = 1024;
      v60 = 118;
      _os_log_impl(&dword_2994CA000, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", buf, 0x22u);
    }

    v30 = objc_alloc(MEMORY[0x29EDB9FA0]);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v31, "nfcd");
    v63[0] = *MEMORY[0x29EDB9ED8];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x29EDBA0F8], v33, "Invalid State");
    v64[0] = v34;
    v64[1] = &unk_2A1F86CF0;
    v63[1] = @"Line";
    v63[2] = @"Method";
    v35 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v36 = sel_getName(a2);
    v38 = objc_msgSend_initWithFormat_(v35, v37, @"%s", v36);
    v64[2] = v38;
    v63[3] = *MEMORY[0x29EDB9E38];
    v39 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v40 = sel_getName(a2);
    v42 = objc_msgSend_initWithFormat_(v39, v41, @"%s:%d", v40, 119);
    v64[3] = v42;
    v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v43, v64, v63, 4);
    v22 = objc_msgSend_initWithDomain_code_userInfo_(v30, v45, v32, 12, v44);
  }

  return v22;
}

- (void)deleteAllAppletEntities
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = sub_2994CFB70(&self->super.super.isa, a2, v2);

  if (v5)
  {
    v8 = sub_2994CFB70(&self->super.super.isa, v6, v7);
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3221225472;
    v20[2] = sub_2994CD554;
    v20[3] = &unk_29EF265D0;
    v20[4] = self;
    v20[5] = a2;
    objc_msgSend_performBlock_(v8, v9, v20);
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

      v12(3, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", v16, ClassName, Name, 204);
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
      v28 = 204;
      _os_log_impl(&dword_2994CA000, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i managedObjectContext is NULL", buf, 0x22u);
    }
  }
}

@end