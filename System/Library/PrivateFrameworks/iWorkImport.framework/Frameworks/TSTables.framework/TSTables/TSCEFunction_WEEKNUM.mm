@interface TSCEFunction_WEEKNUM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_WEEKNUM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v61 = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v61);
  v14 = v61;
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v14, v13);
    goto LABEL_14;
  }

  if (v10)
  {
    TSUDecimal::operator=();
    v18 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v16, &v52, v17);
    v22 = v18;
    if (*(arguments + 1) - *arguments < 9uLL)
    {
      v28 = v18;
      v33 = objc_msgSend_decimalRepresentation(v18, v19, v20, v21);
LABEL_12:
      v52._decimal.w[0] = v33;
      v52._decimal.w[1] = v34;
      v44 = TSUDecimal::truncateWithRounding(&v52);
      v48 = objc_msgSend_gregorianCalendar(TSCECalendar, v45, v46, v47);
      objc_msgSend_weekNumberForDate_withType_(v48, v49, v10, v44);
      TSUDecimal::operator=();
      v52._decimal.w[0] = 0;
      LODWORD(v52._decimal.w[1]) = 0;
      BYTE4(v52._decimal.w[1]) = 0;
      v53 = v53 & 0xC080 | 0x421;
      v54 = v54 & 0xF8 | 1;
      v55 = -50266102;
      v56 = -3;
      v57 &= 0xE0u;
      v58 = 0;
      v15 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v50, v59, &v52);
      v29 = 0;
      goto LABEL_13;
    }

    v23 = *(*arguments + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v23, v24, v25, v26))
    {
      v28 = v22;
LABEL_11:

      v33 = objc_msgSend_decimalRepresentation(v28, v41, v42, v43);
      goto LABEL_12;
    }

    v60 = 0;
    v35 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v23, v27, context, spec, 1, &v60);
    v29 = v60;
    v28 = objc_msgSend_trunc(v35, v36, v37, v38);

    if (!v29)
    {
      goto LABEL_11;
    }

    v15 = objc_msgSend_raiseErrorOrConvert_(context, v39, v29, v40);
  }

  else
  {
    v29 = objc_msgSend_functionName(spec, v11, v12, v13);
    v28 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v30, v29, 1);
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v31, v28, v32);
  }

LABEL_13:

  v14 = v29;
LABEL_14:

  return v15;
}

@end