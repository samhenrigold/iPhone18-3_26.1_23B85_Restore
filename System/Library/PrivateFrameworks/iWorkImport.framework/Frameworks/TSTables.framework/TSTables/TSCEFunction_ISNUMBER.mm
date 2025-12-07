@interface TSCEFunction_ISNUMBER
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISNUMBER

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v6 = *(arguments + 1) - *arguments;
  if ((v6 & 0x7FFFFFFF8) != 8)
  {
    v7 = objc_msgSend_functionName(spec, a2, context, spec);
    v19 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v27, v7, (v6 >> 3));
    v26 = objc_msgSend_raiseErrorOrConvert_(context, v28, v19, v29);
    goto LABEL_9;
  }

  v7 = **arguments;
  if (objc_msgSend_isReferenceValue(v7, v8, v9, v10))
  {
    v14 = objc_msgSend_asReferenceValue(v7, v11, v12, v13);
    v16 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v14, v15, context, 0);

    v7 = v16;
  }

  if (objc_msgSend_isError(v7, v11, v12, v13))
  {
    v19 = objc_msgSend_errorWithContext_(v7, v17, context, v18);
    if (objc_msgSend_isInvalidReferenceError(v19, v20, v21, v22) & 1) != 0 || (objc_msgSend_isInvalidRangeUsageError(v19, v23, v24, v25))
    {
      v26 = objc_msgSend_raiseErrorOrConvert_(context, v23, v19, v25);
LABEL_9:
      v30 = v26;

      goto LABEL_18;
    }
  }

  if (objc_msgSend_deepType_(v7, v17, context, v18) == 5)
  {
    v43 = 0;
    v33 = objc_msgSend_asNumber_outError_(v7, v31, context, &v43);
    v37 = v43;
    if (v37 || (objc_msgSend_isNan(v33, v34, v35, v36) & 1) != 0)
    {
      v41 = 0;
    }

    else
    {
      v41 = objc_msgSend_isInf(v33, v38, v39, v40) ^ 1;
    }
  }

  else
  {
    v41 = 0;
  }

  v30 = objc_msgSend_BOOLValue_(TSCEBooleanValue, v31, v41, v32);
LABEL_18:

  return v30;
}

@end