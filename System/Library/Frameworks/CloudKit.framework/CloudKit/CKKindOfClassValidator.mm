@interface CKKindOfClassValidator
- (BOOL)validate:(id)validate error:(id *)error;
- (id)CKPropertiesDescription;
@end

@implementation CKKindOfClassValidator

- (BOOL)validate:(id)validate error:(id *)error
{
  v20[2] = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = isKindOfClass;
  if (error && (isKindOfClass & 1) == 0)
  {
    v9 = MEMORY[0x1E696ABC0];
    v19[0] = *MEMORY[0x1E696A578];
    v10 = MEMORY[0x1E696AEC0];
    if (self)
    {
      parentClass = self->_parentClass;
    }

    else
    {
      parentClass = 0;
    }

    v12 = NSStringFromClass(parentClass);
    v14 = objc_msgSend_stringWithFormat_(v10, v13, @"<%@> is not of type %@", validateCopy, v12);
    v19[1] = @"ck_isComparisonError";
    v20[0] = v14;
    v20[1] = MEMORY[0x1E695E110];
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v20, v19, 2);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v9, v17, @"CKErrorDomain", 12, v16);
  }

  return v8 & 1;
}

- (id)CKPropertiesDescription
{
  v2 = MEMORY[0x1E696AEC0];
  if (self)
  {
    self = self->_parentClass;
  }

  v3 = NSStringFromClass(self);
  v5 = objc_msgSend_stringWithFormat_(v2, v4, @"class=%@", v3);

  return v5;
}

@end