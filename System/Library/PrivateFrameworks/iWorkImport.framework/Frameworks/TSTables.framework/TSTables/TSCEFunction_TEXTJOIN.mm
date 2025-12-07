@interface TSCEFunction_TEXTJOIN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TEXTJOIN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  contextCopy = context;
  v96[0] = contextCopy;
  v96[1] = spec;
  specCopy = spec;
  v97 = 0;
  v98[0] = 2;
  *(v98 + 7) = 0;
  v99 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v100 = 0;
  v101 = 0;
  v94 = 0;
  v95[0] = 0;
  *(v95 + 7) = 0;
  memset(v93, 0, 19);
  v11 = *arguments;
  v12 = *(arguments + 1);
  if (v12 != *arguments)
  {
    v13 = *v11;
    v16 = objc_msgSend_deepType_(v13, v14, contextCopy, v15);
    if (v16 != 10 && v16 != 12)
    {
      v92 = 0;
      v41 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v13, v17, contextCopy, spec, 0, &v92);
      v42 = v92;
      sub_221077074(&v81, v41);
      v43 = v81;
      v81 = 0;
      v44 = v93[0];
      v93[0] = v43;

      v45 = v82;
      v82 = 0;
      v46 = v93[1];
      v93[1] = v45;

      LOWORD(v93[2]) = v83;
      BYTE2(v93[2]) = BYTE2(v83);

      if (v42)
      {
        v49 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v47, v42, v48);
        goto LABEL_51;
      }
    }

    v11 = *arguments;
    v12 = *(arguments + 1);
  }

  if ((v12 - v11) >= 9)
  {
    v13 = v11[1];
    if (objc_msgSend_isTokenOrEmptyArg(v13, v19, v20, v21))
    {
      v23 = 1;
      goto LABEL_11;
    }

    v91 = 0;
    v37 = objc_msgSend_deepType_outError_(v13, v22, contextCopy, &v91);
    v38 = v91;
    v42 = v38;
    if (v37 == 10)
    {
      v23 = 1;
      if (!v38)
      {
LABEL_11:

        if (*(arguments + 1) - *arguments < 0x11uLL)
        {
          v13 = 0;
          v42 = 0;
          v33 = objc_msgSend_count(0, v24, v25, v26, specCopy);
        }

        else
        {
          v27 = *(*arguments + 16);
          v89 = 0;
          v29 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v27, v28, contextCopy, specCopy, 2, 0, &v89);
          v42 = v89;

          v13 = v29;
          v33 = objc_msgSend_count(v29, v30, v31, v32, specCopy);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v90 = v38;
      v23 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v13, v39, contextCopy, specCopy, 1, &v90);
      v76 = v90;

      v42 = v76;
      if (!v76)
      {
        goto LABEL_11;
      }
    }

    v49 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v39, v42, v40, specCopy);
    goto LABEL_51;
  }

  v13 = 0;
  v42 = 0;
  v23 = 1;
  v33 = objc_msgSend_count(0, v7, v8, v9, specCopy);
LABEL_20:
  v50 = v33;
  if (!v33)
  {
    goto LABEL_50;
  }

  v80 = v13;
  v51 = 0;
  v52 = 0;
  isRegexString = 1;
  do
  {
    v54 = objc_msgSend_valueAtIndex_accessContext_(v80, v34, v51, v96);
    v57 = objc_msgSend_deepType_(v54, v55, contextCopy, v56);
    if (v57 == 9)
    {
      v73 = objc_msgSend_errorWithContext_(v54, v58, contextCopy, v60);
      v13 = v80;
      v72 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v74, v73, v75);

      goto LABEL_46;
    }

    if (v23)
    {
      if (!v57)
      {
        goto LABEL_41;
      }

      v88 = v42;
      v61 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v54, v58, contextCopy, v79, 0, &v88);
      v62 = v88;

      v66 = objc_msgSend_length(v61, v63, v64, v65);
      if (!v66)
      {
        v42 = v62;
        goto LABEL_41;
      }
    }

    else
    {
      v62 = v42;
    }

    v87 = v62;
    if (v54)
    {
      objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v54, v58, contextCopy, v79, 0, &v87);
      v67 = v87;

      v62 = v67;
      if (v67)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v81 = 0;
      v82 = 0;
      v83 = 0;
      if (v62)
      {
LABEL_45:
        v72 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v58, v62, v60);

        v42 = v62;
        v13 = v80;
        goto LABEL_46;
      }
    }

    if (v23)
    {
      if (!sub_221078910(&v94, v58, v59, v60))
      {
        goto LABEL_37;
      }

LABEL_36:
      sub_221077424(&v94, v93, contextCopy);
      goto LABEL_37;
    }

    if (v51)
    {
      goto LABEL_36;
    }

LABEL_37:
    sub_221077424(&v94, &v81, contextCopy);
    if (isRegexString)
    {
      isRegexString = objc_msgSend_isRegexString(v54, v68, v69, v70);
      v52 |= isRegexString;
    }

    else
    {
      isRegexString = 0;
    }

    v42 = 0;
LABEL_41:

    ++v51;
  }

  while (v50 != v51);
  if (isRegexString & v52)
  {
    v13 = v80;
    v54 = sub_2210772BC(&v94, v34, v35, v36);
    v81 = 0;
    LODWORD(v82) = 0;
    BYTE4(v82) = 0;
    LOWORD(v83) = v83 & 0xC080 | 0x421;
    BYTE2(v83) = BYTE2(v83) & 0xF8 | 1;
    HIDWORD(v83) = -50266102;
    v84 = -3;
    v85 &= 0xE0u;
    v86 = 0;
    v72 = objc_msgSend_stringValue_format_isRegex_isCaseSensitiveRegex_isLiteralString_(TSCEStringValue, v71, v54, &v81, 1, 0, 0);
LABEL_46:

    goto LABEL_52;
  }

  v13 = v80;
LABEL_50:
  v49 = sub_2210789F4(&v94, v34, v35, v36);
LABEL_51:
  v72 = v49;
LABEL_52:

  return v72;
}

@end