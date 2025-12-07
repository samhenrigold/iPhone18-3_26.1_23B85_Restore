@interface FCCKRecordFieldSchema
+ (FCCKRecordFieldSchema)fieldWithName:(int)name type:(BOOL)type isEncrypted:;
- (BOOL)isEqual:(id)equal;
- (FCCKRecordFieldSchema)init;
- (id)sanitizeValue:(uint64_t)value;
- (unint64_t)hash;
@end

@implementation FCCKRecordFieldSchema

+ (FCCKRecordFieldSchema)fieldWithName:(int)name type:(BOOL)type isEncrypted:
{
  v7 = a2;
  objc_opt_self();
  v8 = [FCCKRecordFieldSchema alloc];
  v9 = v7;
  if (v8)
  {
    v12.receiver = v8;
    v12.super_class = FCCKRecordFieldSchema;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    v8 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_name, a2);
      v8->_type = name;
      v8->_isEncrypted = type;
    }
  }

  return v8;
}

- (FCCKRecordFieldSchema)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCKRecordFieldSchema init]";
    v10 = 2080;
    v11 = "FCCKRecordSchema.m";
    v12 = 1024;
    v13 = 23;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCKRecordFieldSchema init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)sanitizeValue:(uint64_t)value
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!value)
  {
    v2 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_3:
    v2 = v4;
    goto LABEL_4;
  }

  v6 = *(value + 12);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = objc_alloc(MEMORY[0x1E696AEC0]);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = *(value + 16);
        v27 = [v23 initWithFormat:@"unexpected type %@ for field %@", v25, v26];
        *buf = 136315906;
        v44 = "[FCCKRecordFieldSchema sanitizeValue:]";
        v45 = 2080;
        v46 = "FCCKRecordSchema.m";
        v47 = 1024;
        v48 = 66;
        v49 = 2114;
        v50 = v27;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      objc_opt_class();
      if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v16 = v4;
        if (CFNumberIsFloatType(v16))
        {
          v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v16, "longLongValue")}];
LABEL_47:
          v2 = v17;

          goto LABEL_4;
        }

LABEL_46:
        v17 = v4;
        goto LABEL_47;
      }
    }

    else
    {
      if (v6 != 4)
      {
        if (v6 == 5)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v28 = objc_alloc(MEMORY[0x1E696AEC0]);
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            v31 = *(value + 16);
            v32 = [v28 initWithFormat:@"unexpected type %@ for field %@", v30, v31];
            *buf = 136315906;
            v44 = "[FCCKRecordFieldSchema sanitizeValue:]";
            v45 = 2080;
            v46 = "FCCKRecordSchema.m";
            v47 = 1024;
            v48 = 86;
            v49 = 2114;
            v50 = v32;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          objc_opt_class();
          if (v4)
          {
            if (objc_opt_isKindOfClass())
            {
              v13 = v4;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }

          v21 = v13;
          firstObject = [v21 firstObject];

          if (firstObject)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v38 = objc_alloc(MEMORY[0x1E696AEC0]);
              v39 = objc_opt_class();
              v40 = NSStringFromClass(v39);
              v41 = *(value + 16);
              v42 = [v38 initWithFormat:@"unexpected type within array %@ for field %@", v40, v41];
              *buf = 136315906;
              v44 = "[FCCKRecordFieldSchema sanitizeValue:]";
              v45 = 2080;
              v46 = "FCCKRecordSchema.m";
              v47 = 1024;
              v48 = 88;
              v49 = 2114;
              v50 = v42;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
            }
          }

          v2 = v4;
        }

        goto LABEL_4;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v33 = objc_alloc(MEMORY[0x1E696AEC0]);
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = *(value + 16);
        v37 = [v33 initWithFormat:@"unexpected type %@ for field %@", v35, v36];
        *buf = 136315906;
        v44 = "[FCCKRecordFieldSchema sanitizeValue:]";
        v45 = 2080;
        v46 = "FCCKRecordSchema.m";
        v47 = 1024;
        v48 = 76;
        v49 = 2114;
        v50 = v37;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      objc_opt_class();
      if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v16 = v4;
        if (!CFNumberIsFloatType(v16))
        {
          v20 = MEMORY[0x1E696AD98];
          [v16 doubleValue];
          v17 = [v20 numberWithDouble:?];
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    v16 = 0;
    goto LABEL_46;
  }

  switch(v6)
  {
    case 0:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      v15 = objc_opt_class();
      v9 = NSStringFromClass(v15);
      v10 = *(value + 16);
      v11 = [v14 initWithFormat:@"unexpected type %@ for field %@", v9, v10];
      *buf = 136315906;
      v44 = "[FCCKRecordFieldSchema sanitizeValue:]";
      v45 = 2080;
      v46 = "FCCKRecordSchema.m";
      v47 = 1024;
      v48 = 51;
      v49 = 2114;
      v50 = v11;
      v12 = MEMORY[0x1E69E9C10];
LABEL_37:
      _os_log_error_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      goto LABEL_3;
    case 1:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = objc_opt_class();
      v9 = NSStringFromClass(v19);
      v10 = *(value + 16);
      v11 = [v18 initWithFormat:@"unexpected type %@ for field %@", v9, v10];
      *buf = 136315906;
      v44 = "[FCCKRecordFieldSchema sanitizeValue:]";
      v45 = 2080;
      v46 = "FCCKRecordSchema.m";
      v47 = 1024;
      v48 = 56;
      v49 = 2114;
      v50 = v11;
      v12 = MEMORY[0x1E69E9C10];
      goto LABEL_37;
    case 2:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = *(value + 16);
      v11 = [v7 initWithFormat:@"unexpected type %@ for field %@", v9, v10];
      *buf = 136315906;
      v44 = "[FCCKRecordFieldSchema sanitizeValue:]";
      v45 = 2080;
      v46 = "FCCKRecordSchema.m";
      v47 = 1024;
      v48 = 61;
      v49 = 2114;
      v50 = v11;
      v12 = MEMORY[0x1E69E9C10];
      goto LABEL_37;
  }

LABEL_4:

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    LOBYTE(self) = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = v7;
  if (self)
  {
    name = self->_name;
  }

  else
  {
    name = 0;
  }

  v10 = v7[2];
  v11 = name;
  if (![(NSString *)v11 isEqualToString:v10])
  {
    goto LABEL_14;
  }

  if (!self)
  {
    isEncrypted = 0;
    if (v8[3])
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (self->_type != v8[3])
  {
LABEL_14:
    LOBYTE(self) = 0;
    goto LABEL_15;
  }

  isEncrypted = self->_isEncrypted;
LABEL_13:
  LOBYTE(self) = isEncrypted ^ *(v8 + 8) ^ 1;
LABEL_15:

LABEL_17:
  return self & 1;
}

- (unint64_t)hash
{
  selfCopy = self;
  if (self)
  {
    self = self->_name;
  }

  v3 = [(FCCKRecordFieldSchema *)self hash];
  if (selfCopy)
  {
    type = selfCopy->_type;
  }

  else
  {
    type = 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:type];
  v6 = [v5 hash];
  if (selfCopy)
  {
    isEncrypted = selfCopy->_isEncrypted;
  }

  else
  {
    isEncrypted = 0;
  }

  v8 = v6 ^ v3;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:isEncrypted];
  v10 = [v9 hash];

  return v8 ^ v10;
}

@end