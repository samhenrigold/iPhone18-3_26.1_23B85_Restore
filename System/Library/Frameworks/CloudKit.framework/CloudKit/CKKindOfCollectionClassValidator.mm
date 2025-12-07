@interface CKKindOfCollectionClassValidator
- (BOOL)validate:(id)validate error:(id *)error;
@end

@implementation CKKindOfCollectionClassValidator

- (BOOL)validate:(id)validate error:(id *)error
{
  v64 = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  objc_opt_class();
  errorCopy = error;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v6 = validateCopy;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v52, v63, 16);
    if (v8)
    {
      v9 = v8;
      v46 = validateCopy;
      v10 = 0;
      v11 = *v53;
      v12 = *MEMORY[0x1E696A578];
      v13 = 1;
      while (1)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v53 != v11)
          {
            objc_enumerationMutation(v6);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            if (!error)
            {
              v13 = 0;
              continue;
            }

LABEL_14:
            v17 = MEMORY[0x1E696ABC0];
            v61[0] = v12;
            v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"Nested collection classes are not allowed: %@", v6);
            v61[1] = @"ck_isComparisonError";
            v62[0] = v18;
            v62[1] = MEMORY[0x1E695E110];
            v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v19, v62, v61, 2);
            v22 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v21, @"CKErrorDomain", 12, v20);

            error = errorCopy;
            v13 = 0;
            v10 = v22;
            continue;
          }

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v13 &= isKindOfClass ^ 1;
          if (error && (isKindOfClass & 1) != 0)
          {
            goto LABEL_14;
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v15, &v52, v63, 16);
        if (!v9)
        {
          goto LABEL_17;
        }
      }
    }

    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      v13 = 0;
      v10 = 0;
      goto LABEL_37;
    }

    v41 = MEMORY[0x1E696ABC0];
    v56[0] = *MEMORY[0x1E696A578];
    v42 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"<%@> is not a collection class", validateCopy);
    v56[1] = @"ck_isComparisonError";
    v57[0] = v42;
    v57[1] = MEMORY[0x1E695E110];
    v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v43, v57, v56, 2);
    v10 = objc_msgSend_errorWithDomain_code_userInfo_(v41, v45, @"CKErrorDomain", 12, v44);

    v13 = 0;
    goto LABEL_36;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = objc_msgSend_allValues(validateCopy, v23, v24);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v25, &v48, v60, 16);
  if (v26)
  {
    v27 = v26;
    v46 = validateCopy;
    v10 = 0;
    v28 = *v49;
    v29 = *MEMORY[0x1E696A578];
    v13 = 1;
    while (1)
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v49 != v28)
        {
          objc_enumerationMutation(v6);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          if (!error)
          {
            v13 = 0;
            continue;
          }

LABEL_30:
          v33 = MEMORY[0x1E696ABC0];
          v58[0] = v29;
          v34 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31, @"Nested collection classes are not allowed: %@", v46);
          v58[1] = @"ck_isComparisonError";
          v59[0] = v34;
          v59[1] = MEMORY[0x1E695E110];
          v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v35, v59, v58, 2);
          v38 = objc_msgSend_errorWithDomain_code_userInfo_(v33, v37, @"CKErrorDomain", 12, v36);

          error = errorCopy;
          v13 = 0;
          v10 = v38;
          continue;
        }

        objc_opt_class();
        v32 = objc_opt_isKindOfClass();
        v13 &= v32 ^ 1;
        if (error && (v32 & 1) != 0)
        {
          goto LABEL_30;
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v31, &v48, v60, 16);
      if (!v27)
      {
LABEL_17:
        validateCopy = v46;
        goto LABEL_35;
      }
    }
  }

LABEL_34:
  v10 = 0;
  v13 = 1;
LABEL_35:

  if (error)
  {
LABEL_36:
    v39 = v10;
    *error = v10;
  }

LABEL_37:

  return v13 & 1;
}

@end