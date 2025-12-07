@interface TSCEFunction_OR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_OR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v50 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, &v50);
  v10 = v50;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13);
  }

  else
  {
    v16 = objc_msgSend_count(v9, v11, v12, v13);
    contextCopy = context;
    v44[0] = contextCopy;
    v44[1] = spec;
    v45 = 0;
    v46[0] = 0;
    *(v46 + 7) = 0;
    v47 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v48 = 0;
    v49 = 0;
    if (v16)
    {
      v41 = v7;
      v21 = 0;
      v22 = 1;
      v23 = 1;
      do
      {
        v24 = objc_msgSend_valueAtIndex_accessContext_(v9, v17, v21, v44);
        if ((objc_msgSend_isNil(v24, v25, v26, v27) & 1) == 0)
        {
          v43 = 0;
          v29 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v24, v28, contextCopy, spec, 0, &v43);
          v30 = v43;
          if (v30)
          {
            v14 = v30;
            v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v31, v30, v32);

            v7 = v41;
            goto LABEL_20;
          }

          v33 = (v22 & 1) == 0;
          v22 = 0;
          if (v33)
          {
            v34 = v23;
          }

          else
          {
            v34 = v29;
          }

          v23 = v34 | v29;
        }

        ++v21;
      }

      while (v16 != v21);
      v7 = v41;
      if (v22)
      {
        goto LABEL_13;
      }

      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v17, contextCopy, v19);
      }

      else
      {
        memset(v42, 0, sizeof(v42));
      }

      v15 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v17, v23 & 1, v42);
    }

    else
    {
LABEL_13:
      v35 = objc_msgSend_functionName(spec, v17, v18, v19);
      v37 = objc_msgSend_noSuitableArgumentsFoundErrorForFunctionName_requiredType_(TSCEError, v36, v35, 2);
      v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v38, v37, v39);
    }

    v14 = 0;
LABEL_20:
  }

  return v15;
}

@end