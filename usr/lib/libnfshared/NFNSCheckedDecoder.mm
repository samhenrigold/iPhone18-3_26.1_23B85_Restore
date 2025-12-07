@interface NFNSCheckedDecoder
+ (id)coder:(id)coder decodeArrayOfArrayOfClass:(Class)class forKey:(id)key;
+ (id)coder:(id)coder decodeArrayOfClass:(Class)class forKey:(id)key;
+ (id)coder:(id)coder decodeDictOfClass:(Class)class forKey:(id)key;
@end

@implementation NFNSCheckedDecoder

+ (id)coder:(id)coder decodeArrayOfClass:(Class)class forKey:(id)key
{
  v58 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB98];
  keyCopy = key;
  coderCopy = coder;
  v12 = [v9 alloc];
  v13 = objc_opt_class();
  v15 = objc_msgSend_initWithObjects_(v12, v14, v13, class, 0);
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_22EED1100;
  v44 = sub_22EED1110;
  v17 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v16, v15, keyCopy);

  v45 = v17;
  if (v41[5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v41[5];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = sub_22EED1118;
      v39[3] = &unk_278872AA0;
      v39[4] = &v40;
      v39[5] = class;
      v39[6] = self;
      v39[7] = a2;
      objc_msgSend_enumerateObjectsUsingBlock_(v19, v18, v39);
      v20 = v41[5];
      goto LABEL_16;
    }

    v21 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v23 = off_27DA9DE50[specific];
    if (v23)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v38 = objc_opt_class();
      v28 = 45;
      if (isMetaClass)
      {
        v28 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", v28, ClassName, Name, 25, v38, @"NSArray");
      v21 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v29 = dispatch_get_specific(v21);
    v30 = NFSharedLogGetLogger(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = object_getClass(self);
      if (class_isMetaClass(v31))
      {
        v32 = 43;
      }

      else
      {
        v32 = 45;
      }

      v33 = object_getClassName(self);
      v34 = sel_getName(a2);
      v35 = objc_opt_class();
      *buf = 67110402;
      v47 = v32;
      v48 = 2082;
      v49 = v33;
      v50 = 2082;
      v51 = v34;
      v52 = 1024;
      v53 = 25;
      v54 = 2114;
      v55 = v35;
      v56 = 2114;
      v57 = @"NSArray";
      v36 = v35;
      _os_log_impl(&dword_22EEC4000, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", buf, 0x36u);
    }
  }

  v20 = 0;
LABEL_16:
  _Block_object_dispose(&v40, 8);

  return v20;
}

+ (id)coder:(id)coder decodeArrayOfArrayOfClass:(Class)class forKey:(id)key
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB98];
  keyCopy = key;
  coderCopy = coder;
  v12 = [v9 alloc];
  v13 = objc_opt_class();
  v15 = objc_msgSend_initWithObjects_(v12, v14, v13, class, 0);
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_22EED1100;
  v46 = sub_22EED1110;
  v17 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v16, v15, keyCopy);

  v47 = v17;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  if (v43[5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v43[5];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = sub_22EED1700;
      v39[3] = &unk_278872AC8;
      v39[6] = self;
      v39[7] = a2;
      v39[8] = class;
      v39[4] = &v42;
      v39[5] = v40;
      objc_msgSend_enumerateObjectsUsingBlock_(v19, v18, v39);
      v20 = v43[5];
      goto LABEL_16;
    }

    v21 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v23 = off_27DA9DE50[specific];
    if (v23)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v38 = objc_opt_class();
      v28 = 45;
      if (isMetaClass)
      {
        v28 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", v28, ClassName, Name, 53, v38, @"NSArray");
      v21 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v29 = dispatch_get_specific(v21);
    v30 = NFSharedLogGetLogger(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = object_getClass(self);
      if (class_isMetaClass(v31))
      {
        v32 = 43;
      }

      else
      {
        v32 = 45;
      }

      v33 = object_getClassName(self);
      v34 = sel_getName(a2);
      v35 = objc_opt_class();
      *buf = 67110402;
      v49 = v32;
      v50 = 2082;
      v51 = v33;
      v52 = 2082;
      v53 = v34;
      v54 = 1024;
      v55 = 53;
      v56 = 2114;
      v57 = v35;
      v58 = 2114;
      v59 = @"NSArray";
      v36 = v35;
      _os_log_impl(&dword_22EEC4000, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", buf, 0x36u);
    }
  }

  v20 = 0;
LABEL_16:
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&v42, 8);

  return v20;
}

+ (id)coder:(id)coder decodeDictOfClass:(Class)class forKey:(id)key
{
  v59 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB98];
  keyCopy = key;
  coderCopy = coder;
  v12 = [v9 alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v16 = objc_msgSend_initWithObjects_(v12, v15, v13, v14, class, 0);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_22EED1100;
  v45 = sub_22EED1110;
  v18 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v17, v16, keyCopy);

  v46 = v18;
  if (v42[5])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v42[5];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_22EED1F98;
      v40[3] = &unk_278872AF0;
      v40[6] = self;
      v40[7] = a2;
      v40[4] = &v41;
      v40[5] = class;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v20, v19, v40);
      v21 = v42[5];
      goto LABEL_16;
    }

    v22 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v24 = off_27DA9DE50[specific];
    if (v24)
    {
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v39 = objc_opt_class();
      v29 = 45;
      if (isMetaClass)
      {
        v29 = 43;
      }

      v24(3, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", v29, ClassName, Name, 95, v39, @"NSDictionary");
      v22 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v30 = dispatch_get_specific(v22);
    v31 = NFSharedLogGetLogger(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = object_getClass(self);
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      v34 = object_getClassName(self);
      v35 = sel_getName(a2);
      v36 = objc_opt_class();
      *buf = 67110402;
      v48 = v33;
      v49 = 2082;
      v50 = v34;
      v51 = 2082;
      v52 = v35;
      v53 = 1024;
      v54 = 95;
      v55 = 2114;
      v56 = v36;
      v57 = 2114;
      v58 = @"NSDictionary";
      v37 = v36;
      _os_log_impl(&dword_22EEC4000, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", buf, 0x36u);
    }
  }

  v21 = 0;
LABEL_16:
  _Block_object_dispose(&v41, 8);

  return v21;
}

@end