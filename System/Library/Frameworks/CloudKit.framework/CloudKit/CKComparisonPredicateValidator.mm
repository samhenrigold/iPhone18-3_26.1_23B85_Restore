@interface CKComparisonPredicateValidator
- (BOOL)validate:(id)validate error:(id *)error;
- (id)CKPropertiesDescription;
@end

@implementation CKComparisonPredicateValidator

- (BOOL)validate:(id)validate error:(id *)error
{
  v107[2] = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696ABC0];
    v106[0] = *MEMORY[0x1E696A578];
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"%@ is not a comparison predicate", validateCopy);
    v106[1] = @"ck_isComparisonError";
    v107[0] = v18;
    v107[1] = MEMORY[0x1E695E118];
    v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v19, v107, v106, 2);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v21, @"CKErrorDomain", 12, v20);

    if (error)
    {
LABEL_25:
      v79 = v16;
      v71 = 0;
      *error = v16;
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v9 = objc_msgSend_modifierValidator(self, v7, v8);
  v11 = v9;
  if (error)
  {
    v95 = 0;
    v12 = objc_msgSend_validate_error_(v9, v10, validateCopy, &v95);
    v13 = v95;

    if ((v12 & 1) == 0)
    {
      v41 = MEMORY[0x1E696ABC0];
      v104[0] = *MEMORY[0x1E696A578];
      v48 = MEMORY[0x1E696AEC0];
      v43 = objc_msgSend_localizedDescription(v13, v14, v15);
      v45 = objc_msgSend_stringWithFormat_(v48, v49, @"Invalid modifier in <%@>: %@", validateCopy, v43);
      v50 = *MEMORY[0x1E696AA08];
      v105[0] = v45;
      v105[1] = v13;
      v104[1] = v50;
      v104[2] = @"ck_isComparisonError";
      v105[2] = MEMORY[0x1E695E118];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v51, v105, v104, 3);
      goto LABEL_23;
    }

    v16 = v13;
  }

  else
  {
    v22 = objc_msgSend_validate_error_(v9, v10, validateCopy, 0);

    v16 = 0;
    if ((v22 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v23 = objc_msgSend_leftExpressionValidator(self, v14, v15);
  v27 = objc_msgSend_leftExpression(validateCopy, v24, v25);
  if (!error)
  {
    v52 = objc_msgSend_validate_error_(v23, v26, v27, 0);

    if (v52)
    {
      v55 = objc_msgSend_operatorValidator(self, v53, v54);
      v57 = objc_msgSend_validate_error_(v55, v56, validateCopy, 0);

      if (v57)
      {
        v60 = objc_msgSend_optionsValidator(self, v58, v59);
        v62 = objc_msgSend_validate_error_(v60, v61, validateCopy, 0);

        if (v62)
        {
          v13 = v16;
          goto LABEL_18;
        }
      }
    }

LABEL_21:
    v71 = 0;
    goto LABEL_26;
  }

  v94 = v16;
  v28 = objc_msgSend_validate_error_(v23, v26, v27, &v94);
  v13 = v94;

  if ((v28 & 1) == 0)
  {
    v41 = MEMORY[0x1E696ABC0];
    v102[0] = *MEMORY[0x1E696A578];
    v72 = MEMORY[0x1E696AEC0];
    v43 = objc_msgSend_localizedDescription(v13, v29, v30);
    v45 = objc_msgSend_stringWithFormat_(v72, v73, @"Invalid left expression in <%@>: %@", validateCopy, v43);
    v74 = *MEMORY[0x1E696AA08];
    v103[0] = v45;
    v103[1] = v13;
    v102[1] = v74;
    v102[2] = @"ck_isComparisonError";
    v103[2] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v75, v103, v102, 3);
    goto LABEL_23;
  }

  v31 = objc_msgSend_operatorValidator(self, v29, v30);
  v93 = v13;
  v33 = objc_msgSend_validate_error_(v31, v32, validateCopy, &v93);
  v16 = v93;

  if ((v33 & 1) == 0)
  {
    v81 = MEMORY[0x1E696ABC0];
    v100[0] = *MEMORY[0x1E696A578];
    v82 = MEMORY[0x1E696AEC0];
    v43 = objc_msgSend_localizedDescription(v16, v34, v35);
    v45 = objc_msgSend_stringWithFormat_(v82, v83, @"Invalid operator in <%@>: %@", validateCopy, v43);
    v84 = *MEMORY[0x1E696AA08];
    v101[0] = v45;
    v101[1] = v16;
    v100[1] = v84;
    v100[2] = @"ck_isComparisonError";
    v101[2] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v85, v101, v100, 3);
    v76 = LABEL_28:;
    v78 = objc_msgSend_errorWithDomain_code_userInfo_(v81, v86, @"CKErrorDomain", 12, v76);
    v13 = v16;
    goto LABEL_24;
  }

  v36 = objc_msgSend_optionsValidator(self, v34, v35);
  v92 = v16;
  v38 = objc_msgSend_validate_error_(v36, v37, validateCopy, &v92);
  v13 = v92;

  if ((v38 & 1) == 0)
  {
    v41 = MEMORY[0x1E696ABC0];
    v98[0] = *MEMORY[0x1E696A578];
    v42 = MEMORY[0x1E696AEC0];
    v43 = objc_msgSend_localizedDescription(v13, v39, v40);
    v45 = objc_msgSend_stringWithFormat_(v42, v44, @"Invalid options in <%@>: %@", validateCopy, v43);
    v46 = *MEMORY[0x1E696AA08];
    v99[0] = v45;
    v99[1] = v13;
    v98[1] = v46;
    v98[2] = @"ck_isComparisonError";
    v99[2] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v47, v99, v98, 3);
    v76 = LABEL_23:;
    v78 = objc_msgSend_errorWithDomain_code_userInfo_(v41, v77, @"CKErrorDomain", 12, v76);
LABEL_24:

    v16 = v78;
    goto LABEL_25;
  }

LABEL_18:
  v63 = objc_msgSend_rightExpressionValidator(self, v39, v40);
  v67 = objc_msgSend_rightExpression(validateCopy, v64, v65);
  if (!error)
  {
    v71 = objc_msgSend_validate_error_(v63, v66, v67, 0);

    v16 = v13;
    goto LABEL_26;
  }

  v91 = v13;
  v68 = objc_msgSend_validate_error_(v63, v66, v67, &v91);
  v16 = v91;

  if ((v68 & 1) == 0)
  {
    v81 = MEMORY[0x1E696ABC0];
    v96[0] = *MEMORY[0x1E696A578];
    v87 = MEMORY[0x1E696AEC0];
    v43 = objc_msgSend_localizedDescription(v16, v69, v70);
    v45 = objc_msgSend_stringWithFormat_(v87, v88, @"Invalid right expression in <%@>: %@", validateCopy, v43);
    v89 = *MEMORY[0x1E696AA08];
    v97[0] = v45;
    v97[1] = v16;
    v96[1] = v89;
    v96[2] = @"ck_isComparisonError";
    v97[2] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v90, v97, v96, 3);
    goto LABEL_28;
  }

  v71 = 1;
LABEL_26:

  return v71;
}

- (id)CKPropertiesDescription
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_modifierValidator(self, v4, v5);

  if (v6)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_msgSend_modifierValidator(self, v7, v8);
    v12 = objc_msgSend_stringWithFormat_(v9, v11, @"modifierValidator=%@", v10);
    objc_msgSend_addObject_(v3, v13, v12);
  }

  v14 = objc_msgSend_leftExpressionValidator(self, v7, v8);

  if (v14)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_msgSend_leftExpressionValidator(self, v15, v16);
    v20 = objc_msgSend_stringWithFormat_(v17, v19, @"leftExpressionValidator=%@", v18);
    objc_msgSend_addObject_(v3, v21, v20);
  }

  v22 = objc_msgSend_operatorValidator(self, v15, v16);

  if (v22)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = objc_msgSend_operatorValidator(self, v23, v24);
    v28 = objc_msgSend_stringWithFormat_(v25, v27, @"operatorValidator=%@", v26);
    objc_msgSend_addObject_(v3, v29, v28);
  }

  v30 = objc_msgSend_optionsValidator(self, v23, v24);

  if (v30)
  {
    v33 = MEMORY[0x1E696AEC0];
    v34 = objc_msgSend_optionsValidator(self, v31, v32);
    v36 = objc_msgSend_stringWithFormat_(v33, v35, @"optionsValidator=%@", v34);
    objc_msgSend_addObject_(v3, v37, v36);
  }

  v38 = objc_msgSend_rightExpressionValidator(self, v31, v32);

  if (v38)
  {
    v41 = MEMORY[0x1E696AEC0];
    v42 = objc_msgSend_rightExpressionValidator(self, v39, v40);
    v44 = objc_msgSend_stringWithFormat_(v41, v43, @"rightExpressionValidator=%@", v42);
    objc_msgSend_addObject_(v3, v45, v44);
  }

  v46 = objc_msgSend_componentsJoinedByString_(v3, v39, @", ");

  return v46;
}

@end