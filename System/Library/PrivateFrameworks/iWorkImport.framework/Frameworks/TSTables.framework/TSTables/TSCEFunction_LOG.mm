@interface TSCEFunction_LOG
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LOG

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v67 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v67);
  v11 = v67;
  if (v11)
  {
    v14 = v11;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);
    goto LABEL_38;
  }

  TSUDecimal::operator=();
  v20 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v16, &v66, v17);
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v18, context, v19);
  }

  else
  {
    memset(&v66, 0, sizeof(v66));
  }

  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v26 = 1;
  }

  else
  {
    v21 = *(*arguments + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v21, v22, v23, v24))
    {
      v26 = 1;
    }

    else
    {
      v65 = 0;
      v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v25, context, spec, 1, &v65);
      v14 = v65;

      if (v14)
      {
        v31 = objc_msgSend_raiseErrorOrConvert_(context, v28, v14, v30);
        goto LABEL_35;
      }

      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v28, context, v30);
      }

      else
      {
        memset(&v63, 0, sizeof(v63));
      }

      if (v21)
      {
        objc_msgSend_formatWithContext_(v21, v28, context, v30);
      }

      else
      {
        memset(&v62, 0, sizeof(v62));
      }

      TSCEFormat::formatByMergingWithFormat(&v64, &v63, &v62, v29, v30);
      TSCEFormat::operator=(&v66, &v64);
      objc_msgSend_rawDecimalValue(v27, v32, v33, v34);
      TSUDecimal::operator=();
      v26 = TSUDecimal::operator==();
      v20 = v27;
    }
  }

  TSUDecimal::operator=();
  v37 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v35, &v64, v36);
  v61 = 0;
  v39 = objc_msgSend_eq_outError_(v20, v38, v37, &v61);
  v14 = v61;

  if (v39)
  {
    v21 = objc_msgSend_divideByZeroError(TSCEError, v40, v41, v42);
    v45 = objc_msgSend_raiseErrorOrConvert_(context, v43, v21, v44);
LABEL_22:
    v15 = v45;
    v27 = v20;
LABEL_36:

    v20 = v27;
    goto LABEL_37;
  }

  if (v66._formatType == 257)
  {
    TSCEFormat::setFormatType(&v66, 0x100, v41, v42);
  }

  if (!v14)
  {
    if (v26)
    {
      v48 = objc_msgSend_log10(v10, v40, v41, v42);
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v46, context, v47);
      }

      else
      {
        memset(&v64, 0, sizeof(v64));
      }

      TSCEFormat::operator=(&v66, &v64);
      v21 = v48;
    }

    else
    {
      v49 = objc_msgSend_log(v10, v40, v41, v42);
      v53 = objc_msgSend_log(v20, v50, v51, v52);
      v60 = 0;
      v21 = objc_msgSend_divide_outError_(v49, v54, v53, &v60);
      v14 = v60;

      if (v14)
      {
        v45 = objc_msgSend_raiseErrorOrConvert_(context, v55, v14, v56);
        goto LABEL_22;
      }
    }

    TSCEFormat::TSCEFormat(&v64, &v66);
    objc_msgSend_setFormat_(v21, v57, &v64, v58);
    v31 = v21;
    v21 = v31;
    v14 = 0;
    v27 = v20;
LABEL_35:
    v15 = v31;
    goto LABEL_36;
  }

  v15 = objc_msgSend_raiseErrorOrConvert_(context, v40, v14, v42);
LABEL_37:

LABEL_38:

  return v15;
}

@end