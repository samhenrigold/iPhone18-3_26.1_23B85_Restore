@interface TSCEFunction_ISDATE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISDATE

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
    if ((objc_msgSend_isInvalidReferenceError(v19, v20, v21, v22) & 1) != 0 || objc_msgSend_isInvalidRangeUsageError(v19, v23, v24, v25))
    {
      v26 = objc_msgSend_raiseErrorOrConvert_(context, v23, v19, v25);
LABEL_9:
      v30 = v26;

      goto LABEL_12;
    }

    objc_msgSend_BOOLValue_(TSCEBooleanValue, v35, 0, v36);
  }

  else
  {
    v31 = objc_msgSend_deepType_(v7, v17, context, v18) == 3;
    objc_msgSend_BOOLValue_(TSCEBooleanValue, v32, v31, v33);
  }
  v30 = ;
LABEL_12:

  return v30;
}

@end