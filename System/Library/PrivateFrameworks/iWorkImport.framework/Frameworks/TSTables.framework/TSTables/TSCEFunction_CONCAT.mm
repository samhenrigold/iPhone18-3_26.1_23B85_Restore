@interface TSCEFunction_CONCAT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CONCAT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v47 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 0, &v47);
  v9 = v47;
  if (v9)
  {
    v13 = v9;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v9, v12);
  }

  else
  {
    v45 = 0;
    v46[0] = 0;
    *(v46 + 7) = 0;
    v15 = objc_msgSend_count(v8, v10, v11, v12);
    contextCopy = context;
    v39[0] = contextCopy;
    v39[1] = spec;
    v40 = 0;
    v41[0] = 0;
    *(v41 + 7) = 0;
    v42 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v43 = 0;
    v44 = 0;
    if (v15)
    {
      v20 = contextCopy;
      v21 = 0;
      v22 = 0;
      isRegexString = 1;
      do
      {
        v24 = objc_msgSend_valueAtIndex_accessContext_(v8, v17, v21, v39, v34);
        if ((objc_msgSend_isNil(v24, v25, v26, v27) & 1) == 0)
        {
          v38 = 0;
          if (v24)
          {
            objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v24, v28, v20, spec, 0, &v38);
            v13 = v38;
          }

          else
          {
            v13 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
          }

          sub_221077424(&v45, &v34, v20);

          if (v13)
          {
            v14 = objc_msgSend_raiseErrorOrConvert_(v20, v29, v13, v31);
            goto LABEL_18;
          }

          if (isRegexString)
          {
            isRegexString = objc_msgSend_isRegexString(v24, v29, v30, v31);
            v22 |= isRegexString;
          }

          else
          {
            isRegexString = 0;
          }
        }

        ++v21;
      }

      while (v15 != v21);
      if ((isRegexString & v22 & 1) == 0)
      {
        goto LABEL_16;
      }

      v24 = sub_2210772BC(&v45, v17, v18, v19);
      v34 = 0;
      LODWORD(v35) = 0;
      BYTE4(v35) = 0;
      LOWORD(v36) = 1057;
      BYTE2(v36) = 1;
      HIDWORD(v36) = -50266102;
      v37 = 253;
      v14 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v32, v24, &v34, 1, 0, 0);
      v13 = 0;
LABEL_18:
    }

    else
    {
LABEL_16:
      v14 = sub_2210789F4(&v45, v17, v18, v19);
      v13 = 0;
    }
  }

  return v14;
}

@end