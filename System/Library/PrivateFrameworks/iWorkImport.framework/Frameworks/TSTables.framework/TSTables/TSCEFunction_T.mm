@interface TSCEFunction_T
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_T

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v11 = objc_msgSend_nativeType(v7, v8, v9, v10);
  if (objc_msgSend_isNil(v7, v12, v13, v14))
  {
    v18 = objc_msgSend_invalidReferenceError(TSCEError, v15, v16, v17);
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v19, v18, v20);
LABEL_3:
    v22 = v21;
LABEL_4:

    goto LABEL_33;
  }

  if (v11 != 6)
  {
    goto LABEL_20;
  }

  v50 = 0;
  v23 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v7, v15, context, spec, 0, &v50);
  v27 = v50;
  if (!v27)
  {
    if (objc_msgSend_isRange(v23, v24, v25, v26))
    {
      v49 = 0;
      v29 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v28, context, spec, 0, 0, &v49);
      v27 = v49;
      if (v27)
      {
        v22 = objc_msgSend_raiseErrorOrConvert_(context, v30, v27, v32);

        goto LABEL_8;
      }

      if (objc_msgSend_count(v29, v30, v31, v32))
      {
        *&v47 = context;
        *(&v47 + 1) = spec;
        v48[0] = 0;
        v48[1] = 0;
        *(&v48[1] + 7) = 0;
        *&v48[3] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v48[5] = 0;
        v48[6] = 0;
        v37 = objc_msgSend_valueAtIndex_accessContext_(v29, v36, 0, &v47);
      }

      else
      {
        v37 = objc_msgSend_nilValue(TSCENilValue, v33, v34, v35);
      }

      v7 = v37;
      v46 = 0;
      v11 = objc_msgSend_deepType_outError_(v37, v38, context, &v46);
      v27 = v46;
    }

    else
    {
      v45 = 0;
      v11 = objc_msgSend_deepType_outError_(v23, v28, context, &v45);
      v27 = v45;
    }

    if (v27)
    {
      v22 = objc_msgSend_raiseErrorOrConvert_(context, v15, v27, v17);
      goto LABEL_9;
    }

LABEL_20:
    if (v11 == 9)
    {
      v18 = objc_msgSend_errorWithContext_(v7, v15, context, v17);
      v21 = objc_msgSend_raiseErrorOrConvert_(context, v41, v18, v42);
      goto LABEL_3;
    }

    if (v11 != 7)
    {
      if (v7)
      {
        objc_msgSend_formatWithContext_(v7, v15, context, v17);
      }

      else
      {
        v47 = 0u;
        *v48 = 0u;
      }

      v22 = objc_msgSend_stringValue_format_(TSCEStringValue, v15, &stru_2834BADA0, &v47);
      goto LABEL_33;
    }

    v44 = 0;
    if (v7)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v7, v15, context, spec, 0, &v44);
      v39 = v44;
      if (v39)
      {
        v18 = v39;
        v40 = objc_msgSend_raiseErrorOrConvert_(context, v15, v39, v17);
LABEL_30:
        v22 = v40;

        goto LABEL_4;
      }
    }

    else
    {
      v47 = 0uLL;
      v48[0] = 0;
    }

    v18 = 0;
    v40 = sub_2210789F4(&v47, v15, v16, v17);
    goto LABEL_30;
  }

  v22 = objc_msgSend_raiseErrorOrConvert_(context, v24, v27, v26);
LABEL_8:

LABEL_9:
LABEL_33:

  return v22;
}

@end