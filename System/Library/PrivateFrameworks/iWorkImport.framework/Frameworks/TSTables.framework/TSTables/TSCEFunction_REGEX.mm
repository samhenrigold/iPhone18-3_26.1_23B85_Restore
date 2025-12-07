@interface TSCEFunction_REGEX
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_REGEX

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  if (objc_msgSend_deepType_(v8, v9, context, v10) == 7)
  {
    v36 = 0;
    v12 = &v36;
    v13 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v8, v11, context, spec, 0, &v36);
  }

  else
  {
    v35 = 0;
    v12 = &v35;
    v13 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v11, context, spec, 0, &v35);
  }

  v14 = v13;
  v15 = *v12;
  if (!v15)
  {
    if (*(arguments + 1) - *arguments < 9uLL)
    {
      v28 = 1;
    }

    else
    {
      v20 = *(*arguments + 8);
      if ((objc_msgSend_isTokenOrEmptyArg(v20, v21, v22, v23) & 1) != 0 || objc_msgSend_nativeType(v20, v24, v25, v26) == 10)
      {
        v28 = 1;
      }

      else
      {
        v34 = 0;
        v28 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v20, v27, context, spec, 1, &v34);
        v30 = v34;
        if (v30)
        {
          v18 = v30;
          v19 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32);

          goto LABEL_6;
        }
      }
    }

    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v16, context, v17);
    }

    else
    {
      memset(v33, 0, sizeof(v33));
    }

    v19 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v16, v14, v33, 1, v28, 0);
    goto LABEL_17;
  }

  v18 = v15;
  v19 = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v17);
LABEL_6:

LABEL_17:

  return v19;
}

@end