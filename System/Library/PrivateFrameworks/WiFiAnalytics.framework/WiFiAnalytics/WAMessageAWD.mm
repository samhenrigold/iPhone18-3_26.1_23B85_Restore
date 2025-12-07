@interface WAMessageAWD
- (BOOL)isEqual:(id)equal;
- (WAMessageAWD)init;
- (WAMessageAWD)initWithCoder:(id)coder;
- (WAMessageAWD)initWithKey:(id)key andFields:(id)fields isRootMessage:(BOOL)message originalClassName:(id)name uuid:(id)uuid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)fieldForKey:(id)key;
- (void)addField:(id)field;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WAMessageAWD

- (WAMessageAWD)init
{
  v9.receiver = self;
  v9.super_class = WAMessageAWD;
  v2 = [(WAMessageAWD *)&v9 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uuid = v2->_uuid;
    v2->_uuid = uUIDString;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutableFields = v2->_mutableFields;
    v2->_mutableFields = v6;
  }

  return v2;
}

- (WAMessageAWD)initWithKey:(id)key andFields:(id)fields isRootMessage:(BOOL)message originalClassName:(id)name uuid:(id)uuid
{
  v59 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  fieldsCopy = fields;
  nameCopy = name;
  uuidCopy = uuid;
  v52.receiver = self;
  v52.super_class = WAMessageAWD;
  v16 = [(WAMessageAWD *)&v52 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_11;
  }

  v16->_isRootMessage = message;
  v18 = [nameCopy mutableCopy];
  originalClassName = v17->_originalClassName;
  v17->_originalClassName = v18;

  v20 = [keyCopy mutableCopy];
  key = v17->_key;
  v17->_key = v20;

  v22 = [uuidCopy mutableCopy];
  uuid = v17->_uuid;
  v17->_uuid = v22;

  if (v17->_uuid)
  {
    if (fieldsCopy)
    {
      goto LABEL_4;
    }

LABEL_9:
    v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutableFields = v17->_mutableFields;
    v17->_mutableFields = v42;
LABEL_10:

    goto LABEL_11;
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v41 = v17->_uuid;
  v17->_uuid = uUIDString;

  if (!fieldsCopy)
  {
    goto LABEL_9;
  }

LABEL_4:
  v46 = MEMORY[0x1E695DFD8];
  v47 = MEMORY[0x1E696ACD0];
  v45 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v49 = keyCopy;
  v26 = objc_opt_class();
  v48 = uuidCopy;
  v27 = objc_opt_class();
  v28 = fieldsCopy;
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v44 = v29;
  fieldsCopy = v28;
  v32 = [v46 setWithObjects:{v45, v24, v25, v26, v27, v44, v30, v31, objc_opt_class(), 0}];
  v51 = 0;
  v33 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:fieldsCopy requiringSecureCoding:1 error:&v51];
  v34 = v51;
  v50 = v34;
  v35 = [v47 unarchivedObjectOfClasses:v32 fromData:v33 error:&v50];
  mutableFields = v50;

  v37 = v17->_mutableFields;
  v17->_mutableFields = v35;
  uuidCopy = v48;

  keyCopy = v49;
  if (mutableFields)
  {
    v38 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v54 = "[WAMessageAWD initWithKey:andFields:isRootMessage:originalClassName:uuid:]";
      v55 = 1024;
      v56 = 60;
      v57 = 2112;
      v58 = mutableFields;
      _os_log_impl(&dword_1C8460000, v38, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed to archivedDataWithRootObject: %@ ", buf, 0x1Cu);
    }

    goto LABEL_10;
  }

LABEL_11:

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  uuid = [(WAMessageAWD *)self uuid];
  uuid2 = [equalCopy uuid];

  LOBYTE(equalCopy) = [uuid isEqual:uuid2];
  return equalCopy;
}

- (id)fieldForKey:(id)key
{
  v36 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  mutableFields = [(WAMessageAWD *)self mutableFields];
  v6 = [mutableFields objectForKeyedSubscript:keyCopy];

  if (!v6)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      originalClassName = self->_originalClassName;
      *buf = 136446978;
      v33 = "[WAMessageAWD fieldForKey:]";
      v34 = 1024;
      *v35 = 85;
      *&v35[4] = 2112;
      *&v35[6] = keyCopy;
      *&v35[14] = 2112;
      *&v35[16] = originalClassName;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to access field with key: %@ (message original classname: %@) but it doesn't exist. Most common reason is protobuf change without population logic update", buf, 0x26u);
    }

    v26 = keyCopy;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    mutableFields2 = [(WAMessageAWD *)self mutableFields];
    allKeys = [mutableFields2 allKeys];

    v11 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          mutableFields3 = [(WAMessageAWD *)self mutableFields];
          v17 = [mutableFields3 objectForKeyedSubscript:v15];

          v18 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            isRepeatable = [v17 isRepeatable];
            uTF8String = [v15 UTF8String];
            *buf = 136446978;
            v33 = "[WAMessageAWD fieldForKey:]";
            v34 = 1024;
            *v35 = 90;
            *&v35[4] = 1024;
            *&v35[6] = isRepeatable;
            *&v35[10] = 2080;
            *&v35[12] = uTF8String;
            _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_INFO, "%{public}s::%d:Found repeatable %d Key:: %s", buf, 0x22u);
          }
        }

        v12 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    v21 = WALogCategoryDefaultHandle();
    keyCopy = v26;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v25 = self->_originalClassName;
      *buf = 138412546;
      v33 = v26;
      v34 = 2112;
      *v35 = v25;
      _os_log_fault_impl(&dword_1C8460000, v21, OS_LOG_TYPE_FAULT, "Attempt to access field with key: %@ (message original classname: %@)", buf, 0x16u);
    }
  }

  mutableFields4 = [(WAMessageAWD *)self mutableFields];
  v23 = [mutableFields4 objectForKeyedSubscript:keyCopy];

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = MEMORY[0x1E696ACD0];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v22 = 0;
  v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v22];
  v15 = v22;
  v21 = v15;
  v16 = [v20 unarchivedObjectOfClasses:v13 fromData:v14 error:&v21];
  v17 = v21;

  if (v17)
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v24 = "[WAMessageAWD copyWithZone:]";
      v25 = 1024;
      v26 = 104;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:WAMessageAWD copyWithZone failed, unarchive/archive error: %@", buf, 0x1Cu);
    }
  }

  return v16;
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(WAMessageAWD *)self key];
  originalClassName = [(WAMessageAWD *)self originalClassName];
  v7 = [v4 stringWithFormat:@"WAMessageAWD %@ (%@) (ID: 0x%02x) fields:\n", v5, originalClassName, -[WAMessageAWD metricID](self, "metricID")];
  [string appendString:v7];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  mutableFields = [(WAMessageAWD *)self mutableFields];
  allKeys = [mutableFields allKeys];

  v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        mutableFields2 = [(WAMessageAWD *)self mutableFields];
        v16 = [mutableFields2 objectForKeyedSubscript:v14];

        [string appendFormat:@"               %@ %@\n", v14, v16];
      }

      v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return string;
}

- (void)encodeWithCoder:(id)coder
{
  mutableFields = self->_mutableFields;
  coderCopy = coder;
  [coderCopy encodeObject:mutableFields forKey:@"_mutableFields"];
  [coderCopy encodeObject:self->_key forKey:@"_key"];
  [coderCopy encodeBool:self->_isRootMessage forKey:@"_isRootMessage"];
  [coderCopy encodeObject:self->_originalClassName forKey:@"_originalClassName"];
  [coderCopy encodeObject:self->_uuid forKey:@"_uuid"];
  [coderCopy encodeInteger:self->_metricID forKey:@"_metricID"];
}

- (WAMessageAWD)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = WAMessageAWD;
  v5 = [(WAMessageAWD *)&v25 init];
  if (v5)
  {
    v24 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v24 setWithObjects:{v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_mutableFields"];
    mutableFields = v5->_mutableFields;
    v5->_mutableFields = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
    key = v5->_key;
    v5->_key = v17;

    v5->_isRootMessage = [coderCopy decodeBoolForKey:@"_isRootMessage"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_originalClassName"];
    originalClassName = v5->_originalClassName;
    v5->_originalClassName = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v21;

    v5->_metricID = [coderCopy decodeIntegerForKey:@"_metricID"];
  }

  return v5;
}

- (void)addField:(id)field
{
  fieldCopy = field;
  mutableFields = [(WAMessageAWD *)self mutableFields];
  v5 = [fieldCopy key];
  [mutableFields setObject:fieldCopy forKeyedSubscript:v5];
}

@end