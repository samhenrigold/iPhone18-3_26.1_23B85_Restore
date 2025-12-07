@interface TSCEFunction_op_Concat
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_Concat

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  if (!objc_msgSend_isRegexString(v8, v10, v11, v12) || !objc_msgSend_isRegexString(v9, v13, v14, v15))
  {
    v66 = 0;
    if (v8)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v8, v13, context, spec, 0, &v66);
      v17 = v66;
    }

    else
    {
      v17 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
    }

    v62 = v17;
    if (v9)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v62);
      v46 = v62;

      v17 = v46;
    }

    else
    {
      v63 = 0;
      v64 = 0;
      v65 = 0;
    }

    memset(v61, 0, 19);
    if (v17)
    {
      v35 = objc_msgSend_raiseErrorOrConvert_(context, v13, v17, v15);
LABEL_24:

      goto LABEL_25;
    }

    if (sub_221077330(&v67))
    {
      sub_221077390(&v67, &v63, context, &v60);
      v47 = *&v60._tskFormat;
      v60._tskFormat = 0;
      *&v60._formatType = 0;
      *v61 = v47;
      *&v61[16] = v60._durationFormat;
    }

    else
    {
      sub_221077424(&v67, &v63, context);
      *v61 = v67;
      *&v61[8] = v68;
      *&v61[16] = v69;
      v61[18] = BYTE2(v69);
    }

    v35 = sub_2210789F4(v61, v48, v49, v50);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v51, context, v53);
      if (v9)
      {
LABEL_20:
        objc_msgSend_formatWithContext_(v9, v51, context, v53);
LABEL_23:
        TSCEFormat::formatByMergingWithFormat(&v57, &v59, &v58, v52, v53);
        TSCEFormat::TSCEFormat(&v60, &v57);
        objc_msgSend_setFormat_(v35, v54, &v60, v55);
        goto LABEL_24;
      }
    }

    else
    {
      memset(&v59, 0, sizeof(v59));
      if (v9)
      {
        goto LABEL_20;
      }
    }

    memset(&v58, 0, sizeof(v58));
    goto LABEL_23;
  }

  v17 = objc_msgSend_asStringValue(v8, v13, v16, v15);
  v21 = objc_msgSend_asStringValue(v9, v18, v19, v20);
  v25 = objc_msgSend_asString(v17, v22, v23, v24);
  v29 = objc_msgSend_asString(v21, v26, v27, v28);
  v32 = objc_msgSend_stringByAppendingString_(v25, v30, v29, v31);
  v35 = objc_msgSend_stringValue_(TSCEStringValue, v33, v32, v34);

  objc_msgSend_setIsRegex_(v35, v36, 1, v37);
  if (objc_msgSend_isCaseSensitiveRegex(v17, v38, v39, v40) && objc_msgSend_isCaseSensitiveRegex(v21, v41, v42, v43))
  {
    objc_msgSend_setIsCaseSensitiveRegex_(v35, v44, 1, v45);
  }

LABEL_25:

  return v35;
}

@end