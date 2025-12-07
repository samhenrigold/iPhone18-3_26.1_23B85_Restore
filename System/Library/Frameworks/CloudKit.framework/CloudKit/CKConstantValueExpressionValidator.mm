@interface CKConstantValueExpressionValidator
- (BOOL)validate:(id)validate error:(id *)error;
- (CKConstantValueExpressionValidator)initWithValidator:(id)validator;
- (id)CKPropertiesDescription;
@end

@implementation CKConstantValueExpressionValidator

- (CKConstantValueExpressionValidator)initWithValidator:(id)validator
{
  v7.receiver = self;
  v7.super_class = CKConstantValueExpressionValidator;
  validatorCopy = validator;
  v4 = [(CKConstantValueExpressionValidator *)&v7 init];
  objc_msgSend_setValidator_(v4, v5, validatorCopy, v7.receiver, v7.super_class);

  return v4;
}

- (BOOL)validate:(id)validate error:(id *)error
{
  v37[2] = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v36[0] = *MEMORY[0x1E696A578];
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"<%@> is not an expression", validateCopy);
      v36[1] = @"ck_isComparisonError";
      v37[0] = v12;
      v37[1] = MEMORY[0x1E695E118];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v37, v36, 2);
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (objc_msgSend_expressionType(validateCopy, v7, v8))
  {
    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v34[0] = *MEMORY[0x1E696A578];
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"<%@> is not a constantValue expression", validateCopy);
      v34[1] = @"ck_isComparisonError";
      v35[0] = v12;
      v35[1] = MEMORY[0x1E695E118];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v35, v34, 2);
      v15 = LABEL_7:;
      v17 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v16, @"CKErrorDomain", 12, v15);

      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v20 = objc_msgSend_constantValue(validateCopy, v9, v10);

  if (!v20)
  {
    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v32[0] = *MEMORY[0x1E696A578];
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, @"%@ is not a valid constant value", validateCopy);
      v32[1] = @"ck_isComparisonError";
      v33[0] = v12;
      v33[1] = MEMORY[0x1E695E118];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, v33, v32, 2);
      goto LABEL_7;
    }

LABEL_15:
    v19 = 0;
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v23 = objc_msgSend_validator(self, v21, v22);
  v27 = objc_msgSend_constantValue(validateCopy, v24, v25);
  if (!error)
  {
    v19 = objc_msgSend_validate_error_(v23, v26, v27, 0);

    goto LABEL_16;
  }

  v31 = 0;
  v28 = objc_msgSend_validate_error_(v23, v26, v27, &v31);
  v17 = v31;

  if (v28)
  {
    v19 = 1;
    goto LABEL_17;
  }

LABEL_8:
  v18 = v17;
  v19 = 0;
  *error = v17;
LABEL_17:

  return v19 & 1;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_validator(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"validator=%@", v4);

  return v6;
}

@end