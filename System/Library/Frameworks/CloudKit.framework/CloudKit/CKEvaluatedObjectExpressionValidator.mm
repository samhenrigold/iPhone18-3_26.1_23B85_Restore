@interface CKEvaluatedObjectExpressionValidator
- (BOOL)validate:(id)validate error:(id *)error;
@end

@implementation CKEvaluatedObjectExpressionValidator

- (BOOL)validate:(id)validate error:(id *)error
{
  v21[2] = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v9 = MEMORY[0x1E696ABC0];
    v20[0] = *MEMORY[0x1E696A578];
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"<%@> is not an expression", validateCopy);
    v20[1] = @"ck_isComparisonError";
    v21[0] = v10;
    v21[1] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, v21, v20, 2);
    v13 = LABEL_8:;
    v15 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v14, @"CKErrorDomain", 12, v13);

    v16 = v15;
    *error = v15;

    LOBYTE(error) = 0;
    goto LABEL_9;
  }

  if (objc_msgSend_expressionType(validateCopy, v6, v7) != 1)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v9 = MEMORY[0x1E696ABC0];
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"<%@> is not an evaluated object expression", validateCopy, *MEMORY[0x1E696A578]);
    v18[1] = @"ck_isComparisonError";
    v19[0] = v10;
    v19[1] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v19, v18, 2);
    goto LABEL_8;
  }

  LOBYTE(error) = 1;
LABEL_9:

  return error;
}

@end