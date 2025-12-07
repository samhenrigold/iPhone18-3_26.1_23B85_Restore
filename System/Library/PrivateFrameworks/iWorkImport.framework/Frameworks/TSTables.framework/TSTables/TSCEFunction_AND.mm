@interface TSCEFunction_AND
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_AND

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v49 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, &v49);
  v10 = v49;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13);
  }

  else
  {
    v16 = objc_msgSend_count(v9, v11, v12, v13);
    contextCopy = context;
    v43[0] = contextCopy;
    v43[1] = spec;
    v44 = 0;
    v45[0] = 0;
    *(v45 + 7) = 0;
    v46 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v47 = 0;
    v48 = 0;
    if (v16)
    {
      v40 = v7;
      v21 = 0;
      v22 = 1;
      v23 = 1;
      do
      {
        v24 = objc_msgSend_valueAtIndex_accessContext_(v9, v17, v21, v43);
        if ((objc_msgSend_isNil(v24, v25, v26, v27) & 1) == 0)
        {
          v42 = 0;
          v29 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v24, v28, contextCopy, spec, 0, &v42);
          v30 = v42;
          if (v30)
          {
            v14 = v30;
            v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v31, v30, v32);

            v7 = v40;
            goto LABEL_17;
          }

          v33 = v22 | v23;
          v22 = 0;
          v23 = v33 & v29;
        }

        ++v21;
      }

      while (v16 != v21);
      v7 = v40;
      if (v22)
      {
        goto LABEL_10;
      }

      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v17, contextCopy, v19);
      }

      else
      {
        memset(v41, 0, sizeof(v41));
      }

      v15 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v17, v23 & 1, v41);
    }

    else
    {
LABEL_10:
      v34 = objc_msgSend_functionName(spec, v17, v18, v19);
      v36 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v35, v34, 2);
      v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v37, v36, v38);
    }

    v14 = 0;
LABEL_17:
  }

  return v15;
}

@end