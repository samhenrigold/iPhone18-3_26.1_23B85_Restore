@interface CKFunctionExpressionValidator
- (BOOL)validate:(id)validate error:(id *)error;
- (id)CKPropertiesDescription;
@end

@implementation CKFunctionExpressionValidator

- (BOOL)validate:(id)validate error:(id *)error
{
  v100[2] = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_38;
    }

    v46 = MEMORY[0x1E696ABC0];
    v99[0] = *MEMORY[0x1E696A578];
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"<%@> is not an expression", validateCopy);
    v99[1] = @"ck_isComparisonError";
    v100[0] = v27;
    v100[1] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v47, v100, v99, 2);
    v40 = LABEL_27:;
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v46, v49, @"CKErrorDomain", 12, v40);
LABEL_28:

    v50 = v33;
    v51 = 0;
    *error = v33;
    goto LABEL_39;
  }

  if (objc_msgSend_expressionType(validateCopy, v7, v8) != 4)
  {
    if (!error)
    {
      goto LABEL_38;
    }

    v46 = MEMORY[0x1E696ABC0];
    v97[0] = *MEMORY[0x1E696A578];
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"<%@> is not a function expression", validateCopy);
    v97[1] = @"ck_isComparisonError";
    v98[0] = v27;
    v98[1] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v48, v98, v97, 2);
    goto LABEL_27;
  }

  v11 = objc_msgSend_function(validateCopy, v9, v10);
  v13 = v11;
  if (self)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v11, v12, self->_functionName);
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v11, v12, 0);
  }

  v15 = isEqualToString;

  if ((v15 & 1) == 0)
  {
    if (error)
    {
      v52 = MEMORY[0x1E696ABC0];
      v95[0] = *MEMORY[0x1E696A578];
      v53 = MEMORY[0x1E696AEC0];
      if (self)
      {
        functionName = self->_functionName;
      }

      else
      {
        functionName = 0;
      }

      v27 = functionName;
      v40 = objc_msgSend_stringWithFormat_(v53, v55, @"%@ does not match function '%@'", validateCopy, v27);
      v95[1] = @"ck_isComparisonError";
      v96[0] = v40;
      v96[1] = MEMORY[0x1E695E118];
      v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v56, v96, v95, 2);
      v33 = objc_msgSend_errorWithDomain_code_userInfo_(v52, v58, @"CKErrorDomain", 12, v57);
      goto LABEL_37;
    }

LABEL_38:
    v51 = 0;
    v33 = 0;
    goto LABEL_39;
  }

  v18 = objc_msgSend_arguments(validateCopy, v16, v17);
  v23 = objc_msgSend_count(v18, v19, v20);
  if (self)
  {
    v24 = objc_msgSend_count(self->_argumentValidators, v21, v22);
  }

  else
  {
    v24 = objc_msgSend_count(0, v21, v22);
  }

  v25 = v24;

  if (v23 != v25)
  {
    if (error)
    {
      v59 = MEMORY[0x1E696ABC0];
      v93[0] = *MEMORY[0x1E696A578];
      v60 = MEMORY[0x1E696AEC0];
      if (self)
      {
        argumentValidators = self->_argumentValidators;
      }

      else
      {
        argumentValidators = 0;
      }

      v40 = argumentValidators;
      v64 = objc_msgSend_count(v40, v62, v63);
      v27 = objc_msgSend_arguments(validateCopy, v65, v66);
      v69 = objc_msgSend_count(v27, v67, v68);
      v57 = objc_msgSend_stringWithFormat_(v60, v70, @"Invalid number of arguments to <%@>. Expected %lu, but found %lu", validateCopy, v64, v69);
      v93[1] = @"ck_isComparisonError";
      v94[0] = v57;
      v94[1] = MEMORY[0x1E695E118];
      v72 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v71, v94, v93, 2);
      v33 = objc_msgSend_errorWithDomain_code_userInfo_(v59, v73, @"CKErrorDomain", 12, v72);

LABEL_37:
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  if (self)
  {
    v26 = self->_argumentValidators;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v86, v92, 16);
  if (v29)
  {
    v32 = v29;
    errorCopy = error;
    v33 = 0;
    v34 = 0;
    v35 = *v87;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v87 != v35)
        {
          objc_enumerationMutation(v27);
        }

        v37 = *(*(&v86 + 1) + 8 * i);
        v38 = objc_msgSend_arguments(validateCopy, v30, v31);
        v40 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, v34);

        if (errorCopy)
        {
          v85 = v33;
          v42 = objc_msgSend_validate_error_(v37, v41, v40, &v85);
          v43 = v85;

          if ((v42 & 1) == 0)
          {
            v75 = MEMORY[0x1E696ABC0];
            v90[0] = *MEMORY[0x1E696A578];
            v76 = MEMORY[0x1E696AEC0];
            v77 = objc_msgSend_localizedDescription(v43, v44, v45);
            v79 = objc_msgSend_stringWithFormat_(v76, v78, @"Argument %lu of <%@> is invalid: %@", v34, validateCopy, v77);
            v80 = *MEMORY[0x1E696AA08];
            v91[0] = v79;
            v91[1] = v43;
            v90[1] = v80;
            v90[2] = @"ck_isComparisonError";
            v91[2] = MEMORY[0x1E695E118];
            v82 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v81, v91, v90, 3);
            v33 = objc_msgSend_errorWithDomain_code_userInfo_(v75, v83, @"CKErrorDomain", 12, v82);

            error = errorCopy;
            goto LABEL_28;
          }

          v33 = v43;
        }

        else if ((objc_msgSend_validate_error_(v37, v41, v40, 0) & 1) == 0)
        {

          v51 = 0;
          goto LABEL_39;
        }

        ++v34;
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v86, v92, 16);
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v33 = 0;
  }

  v51 = 1;
LABEL_39:

  return v51;
}

- (id)CKPropertiesDescription
{
  v2 = MEMORY[0x1E696AEC0];
  if (self)
  {
    v4 = self->_functionName;
    objc_msgSend_stringWithFormat_(v2, v5, @"functionName=%@, validators=%@", v4, self->_argumentValidators);
  }

  else
  {
    v4 = 0;
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"functionName=%@, validators=%@", 0, 0);
  }
  v6 = ;

  return v6;
}

@end