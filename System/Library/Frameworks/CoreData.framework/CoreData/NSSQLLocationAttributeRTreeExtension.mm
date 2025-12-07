@interface NSSQLLocationAttributeRTreeExtension
+ (uint64_t)newRTReeTableNameForAttribute:(uint64_t)attribute onEntity:;
- (BOOL)isEqualToExtension:(id)extension;
- (BOOL)validate:(id *)validate;
- (BOOL)validatePropertyWithDescription:(uint64_t)description andName:(uint64_t)name forUseAs:(uint64_t)as onAttributeNamed:(uint64_t)named onEntityNamed:(uint64_t *)entityNamed error:;
- (NSSQLLocationAttributeRTreeExtension)initWithObjectFromUserInfo:(id)info onAttributeNamed:(id)named onEntity:(id)entity;
- (void)dealloc;
- (void)generateSQLStrings;
@end

@implementation NSSQLLocationAttributeRTreeExtension

- (NSSQLLocationAttributeRTreeExtension)initWithObjectFromUserInfo:(id)info onAttributeNamed:(id)named onEntity:(id)entity
{
  v21 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = NSSQLLocationAttributeRTreeExtension;
  v8 = [(NSSQLLocationAttributeRTreeExtension *)&v18 init];
  if (!v8)
  {
    return v8;
  }

  if (!info || ([info isNSArray] & 1) == 0 && (objc_msgSend(info, "isNSString") & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v14 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v16 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        if (v16)
        {
          *buf = 138412290;
          namedCopy2 = named;
LABEL_18:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: UserInfo Object for RTree location must be either an array or a comma separated string of two components identifying the latitude / longitude properties - %@\n", buf, 0xCu);
        }
      }

      else if (v16)
      {
        *buf = 138412290;
        namedCopy2 = named;
        goto LABEL_18;
      }
    }

    _NSCoreDataLog_console(1, "UserInfo Object for RTree location must be either an array or a comma separated string of two components identifying the latitude / longitude properties - %@", named);
    objc_autoreleasePoolPop(v13);

    return 0;
  }

  v8->_userInfoObject = info;
  v8->_sqlEntity = entity;
  v8->_attributeName = named;
  v8->_components = 0;
  v9 = objc_msgSend_valueForKey_([-[NSSQLEntity entityDescription](v8->_sqlEntity "entityDescription")]);
  v8->_attributeDescription = v9;
  v8->_rtreeTableName = [NSSQLLocationAttributeRTreeExtension newRTReeTableNameForAttribute:v9 onEntity:[(NSSQLEntity *)v8->_sqlEntity entityDescription]];
  v8->_latProp = 0;
  v8->_longProp = 0;
  v8->_insertSQLStrings = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v8->_dropSQLStrings = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v8->_bulkUpdateSQLStrings = objc_alloc_init(MEMORY[0x1E695DEC8]);
  isNSArray = [v8->_userInfoObject isNSArray];
  userInfoObject = v8->_userInfoObject;
  if (isNSArray)
  {
    v12 = [userInfoObject copy];
LABEL_13:
    v8->_components = v12;
    return v8;
  }

  if ([userInfoObject isNSString])
  {
    v12 = [-[NSObject stringByReplacingOccurrencesOfString:withString:](v8->_userInfoObject stringByReplacingOccurrencesOfString:@" " withString:{&stru_1EF3F1768), "componentsSeparatedByString:", @", "}];
    goto LABEL_13;
  }

  return v8;
}

+ (uint64_t)newRTReeTableNameForAttribute:(uint64_t)attribute onEntity:
{
  objc_opt_self();
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (attribute)
  {
    if (atomic_load((attribute + 124)))
    {
      attributeCopy = *(attribute + 72);
    }

    else
    {
      do
      {
        attributeCopy = attribute;
        attribute = [attribute superentity];
      }

      while (attribute);
    }
  }

  else
  {
    attributeCopy = 0;
  }

  return [v5 initWithFormat:@"Z_RT_%@_%@", objc_msgSend(attributeCopy, "name"), objc_msgSend(a2, "name")];
}

- (void)dealloc
{
  self->_userInfoObject = 0;

  self->_components = 0;
  self->_sqlEntity = 0;

  self->_attributeName = 0;
  self->_attributeDescription = 0;

  self->_rtreeTableName = 0;
  self->_latProp = 0;

  self->_longProp = 0;
  self->_insertSQLStrings = 0;

  self->_dropSQLStrings = 0;
  self->_bulkUpdateSQLStrings = 0;
  v3.receiver = self;
  v3.super_class = NSSQLLocationAttributeRTreeExtension;
  [(NSSQLLocationAttributeRTreeExtension *)&v3 dealloc];
}

- (BOOL)isEqualToExtension:(id)extension
{
  v17.receiver = self;
  v17.super_class = NSSQLLocationAttributeRTreeExtension;
  if (([(NSSQLLocationAttributeRTreeExtension *)&v17 isEqual:?]& 1) != 0)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = [(NSArray *)self->_components count];
  v7 = extension ? *(extension + 2) : 0;
  if (v6 != [v7 count])
  {
    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  components = self->_components;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__NSSQLLocationAttributeRTreeExtension_isEqualToExtension___block_invoke;
  v12[3] = &unk_1E6EC46E0;
  v12[4] = extension;
  v12[5] = &v13;
  [(NSArray *)components enumerateObjectsUsingBlock:v12];
  if (*(v14 + 24) == 1 && (!extension ? (v9 = 0) : (v9 = *(extension + 6)), [(NSAttributeDescription *)self->_attributeDescription isEqual:v9]))
  {
    if (extension)
    {
      v10 = *(extension + 3);
    }

    else
    {
      v10 = 0;
    }

    v5 = [(NSStoreMapping *)self->_sqlEntity isEqual:v10];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v5;
}

void *__59__NSSQLLocationAttributeRTreeExtension_isEqualToExtension___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  result = [a2 isEqualToString:{objc_msgSend(v7, "objectAtIndexedSubscript:", a3)}];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (BOOL)validate:(id *)validate
{
  v45[1] = *MEMORY[0x1E69E9840];
  v31 = 0;
  entityDescription = [(NSSQLEntity *)self->_sqlEntity entityDescription];
  attributeDescription = self->_attributeDescription;
  if (!attributeDescription)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A250];
    v36 = *MEMORY[0x1E696A588];
    v37 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->_attributeName, [-[NSSQLEntity entityDescription](self->_sqlEntity "entityDescription")]);
    v15 = MEMORY[0x1E695DF20];
    v16 = &v37;
    v17 = &v36;
LABEL_6:
    v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    v19 = v13;
    v20 = v14;
    goto LABEL_9;
  }

  if (![(NSPropertyDescription *)attributeDescription isTransient])
  {
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [entityDescription name], -[NSPropertyDescription name](self->_attributeDescription, "name"));
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v38 = *MEMORY[0x1E696A588];
    v39 = v21;
    v10 = MEMORY[0x1E695DF20];
    v11 = &v39;
    v12 = &v38;
    goto LABEL_8;
  }

  if ([(NSAttributeDescription *)self->_attributeDescription attributeType])
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [entityDescription name], -[NSPropertyDescription name](self->_attributeDescription, "name"), +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", -[NSAttributeDescription attributeType](self->_attributeDescription, "attributeType")), +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", 0));
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v40 = *MEMORY[0x1E696A588];
    v41 = v7;
    v10 = MEMORY[0x1E695DF20];
    v11 = &v41;
    v12 = &v40;
LABEL_8:
    v18 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    v19 = v8;
    v20 = v9;
LABEL_9:
    v22 = [v19 errorWithDomain:v20 code:134060 userInfo:v18];
    v31 = v22;
    if (v22)
    {
      goto LABEL_10;
    }

LABEL_22:
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLLocationAttributeRTreeExtension.m";
      v34 = 1024;
      v35 = 181;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v29 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLLocationAttributeRTreeExtension.m";
      v34 = 1024;
      v35 = 181;
      _os_log_fault_impl(&dword_18565F000, v29, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }

    return 0;
  }

  components = self->_components;
  if (!components)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A250];
    v42 = *MEMORY[0x1E696A588];
    v43 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [-[NSSQLEntity entityDescription](self->_sqlEntity "entityDescription")], self->_attributeName);
    v15 = MEMORY[0x1E695DF20];
    v16 = &v43;
    v17 = &v42;
    goto LABEL_6;
  }

  if ([(NSArray *)components count]!= 2)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A250];
    v44 = *MEMORY[0x1E696A588];
    v45[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self->_userInfoObject);
    v15 = MEMORY[0x1E695DF20];
    v16 = v45;
    v17 = &v44;
    goto LABEL_6;
  }

  firstObject = [(NSArray *)self->_components firstObject];
  lastObject = [(NSArray *)self->_components lastObject];
  if (entityDescription)
  {
    self->_latProp = [objc_msgSend(entityDescription "propertiesByName")];
    v27 = [objc_msgSend(entityDescription "propertiesByName")];
  }

  else
  {
    v27 = 0;
    self->_latProp = 0;
  }

  self->_longProp = v27;
  if (-[NSSQLLocationAttributeRTreeExtension validatePropertyWithDescription:andName:forUseAs:onAttributeNamed:onEntityNamed:error:](self, self->_latProp, firstObject, @"latitude", self->_attributeName, [entityDescription name], &v31) && -[NSSQLLocationAttributeRTreeExtension validatePropertyWithDescription:andName:forUseAs:onAttributeNamed:onEntityNamed:error:](self, self->_longProp, lastObject, @"longitude", self->_attributeName, objc_msgSend(entityDescription, "name"), &v31))
  {
    [(NSSQLLocationAttributeRTreeExtension *)&self->super.isa generateSQLStrings];
    return 1;
  }

  v22 = v31;
  if (!v31)
  {
    goto LABEL_22;
  }

LABEL_10:
  if (!validate)
  {
    return 0;
  }

  v23 = 0;
  *validate = v22;
  return v23;
}

- (BOOL)validatePropertyWithDescription:(uint64_t)description andName:(uint64_t)name forUseAs:(uint64_t)as onAttributeNamed:(uint64_t)named onEntityNamed:(uint64_t *)entityNamed error:
{
  v43[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v13 = result;
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Unable to configure location index (invalid %@ on %@.%@): ", name, named, as);
    v15 = v14;
    if (a2)
    {
      if ([a2 _isAttribute])
      {
        if ([a2 isTransient])
        {
          v16 = [v15 stringByAppendingFormat:@"%@.%@ is a transient attribute.", named, description];
          v17 = MEMORY[0x1E696ABC0];
          v18 = *MEMORY[0x1E696A250];
          v40 = *MEMORY[0x1E696A588];
          v41 = v16;
          v19 = MEMORY[0x1E695DF20];
          v20 = &v41;
          v21 = &v40;
        }

        else
        {
          if ([a2 attributeType] == 500)
          {
            return 1;
          }

          v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], name, [objc_msgSend(*(v13 + 24) "entityDescription")], as, objc_msgSend(objc_msgSend(*(v13 + 24), "entityDescription"), "name"), description, +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", objc_msgSend(a2, "attributeType")), +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", 500));
          v17 = MEMORY[0x1E696ABC0];
          v18 = *MEMORY[0x1E696A250];
          v42 = *MEMORY[0x1E696A588];
          v43[0] = v31;
          v19 = MEMORY[0x1E695DF20];
          v20 = v43;
          v21 = &v42;
        }
      }

      else
      {
        v27 = [v15 stringByAppendingFormat:@"%@.%@ is a relationship.", named, description];
        v17 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A250];
        v38 = *MEMORY[0x1E696A588];
        v39 = v27;
        v19 = MEMORY[0x1E695DF20];
        v20 = &v39;
        v21 = &v38;
      }

      v24 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
      v25 = v17;
      v26 = v18;
    }

    else
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A250];
      v36 = *MEMORY[0x1E696A588];
      name = [v14 stringByAppendingFormat:@"couldn't find an attribute named '%@' on '%@' to use as the %@.", description, named, name];
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&name forKeys:&v36 count:1];
      v25 = v22;
      v26 = v23;
    }

    v28 = [v25 errorWithDomain:v26 code:134060 userInfo:v24];
    if (v28)
    {
      if (entityNamed)
      {
        result = 0;
        *entityNamed = v28;
        return result;
      }

      return 0;
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLLocationAttributeRTreeExtension.m";
      v34 = 1024;
      v35 = 226;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v30 = _PFLogGetLogStream(17);
    result = os_log_type_enabled(v30, OS_LOG_TYPE_FAULT);
    if (result)
    {
      *buf = 136315394;
      v33 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLLocationAttributeRTreeExtension.m";
      v34 = 1024;
      v35 = 226;
      _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      return 0;
    }
  }

  return result;
}

- (void)generateSQLStrings
{
  if (self)
  {
    v2 = self[3];
    name = [self[7] name];
    if (v2)
    {
      v2 = [v2[5] objectForKey:name];
    }

    v4 = self[3];
    name2 = [self[8] name];
    if (v4)
    {
      v6 = [v4[5] objectForKey:name2];
    }

    else
    {
      v6 = 0;
    }

    tableName = [self[3] tableName];
    columnName = [v2 columnName];
    columnName2 = [v6 columnName];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v10 addObject:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[5], columnName, columnName, columnName2, columnName2)}];
    [v11 addObject:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[5])}];
    [v10 addObject:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[5], tableName, self[5], columnName, columnName, columnName2, columnName2, columnName, columnName, columnName2, columnName2)}];
    [v11 addObject:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[5])}];
    [v10 addObject:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[5], tableName, self[5], self[5], columnName, columnName, columnName2, columnName2, columnName, columnName, columnName2, columnName2)}];
    [v11 addObject:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[5])}];
    [v10 addObject:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[5], tableName, self[5])}];
    [v11 addObject:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[5])}];
    [v12 addObject:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self[5], columnName, columnName, columnName2, columnName2, columnName, columnName, columnName2, columnName2, tableName, columnName, columnName2)}];

    self[9] = [v10 copy];
    self[10] = [v11 copy];

    self[11] = [v12 copy];
  }
}

@end