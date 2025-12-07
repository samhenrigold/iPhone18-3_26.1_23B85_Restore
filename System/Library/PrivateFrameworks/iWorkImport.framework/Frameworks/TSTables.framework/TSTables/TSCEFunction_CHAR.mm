@interface TSCEFunction_CHAR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CHAR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = **arguments;
  v61 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v61);
  v13 = v61;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
    goto LABEL_30;
  }

  v59._decimal.w[0] = objc_msgSend_decimalRepresentation(v9, v10, v11, v12);
  v59._decimal.w[1] = v15;
  TSUDecimal::truncateToDoubleWithRounding(&v59);
  v20 = v19;
  if (v19 != 10.0 && v19 < 32.0 && v19 != 9.0)
  {
    v21 = objc_msgSend_charInputOutOfBoundsError(TSCEError, v16, v17, v18);
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v22, v21, v23);

    goto LABEL_30;
  }

  if (v19 == 127.0)
  {
    v24 = objc_msgSend_functionName(spec, v16, v17, v18);
    v27 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v25, v24, v26);
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v28, v27, v29);

    goto LABEL_30;
  }

  if (v19)
  {
    v62[0] = v19;
    if (v19 >> 32)
    {
      v30 = 0;
      v62[1] = v19 >> 32;
      v31 = 8;
    }

    else
    {
      v30 = 1;
      v31 = 4;
    }
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v32 = objc_alloc(MEMORY[0x277CCACA8]);
  v37 = objc_msgSend_initWithBytes_length_encoding_(v32, v33, v62, v31, 2617245952);
  if (!v30)
  {
    goto LABEL_25;
  }

  v38 = objc_msgSend_illegalCharacterSet(MEMORY[0x277CCA900], v34, v35, v36);
  v39 = v20;
  if (!objc_msgSend_characterIsMember_(v38, v40, v20, v41))
  {
    v46 = objc_msgSend_controlCharacterSet(MEMORY[0x277CCA900], v42, v43, v44);
    IsMember = objc_msgSend_characterIsMember_(v46, v47, v20, v48);
    v51 = v39 == 65532 || v39 >> 11 == 27;

    if ((IsMember | v51))
    {
      goto LABEL_24;
    }

LABEL_25:
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v34, context, v36);
    }

    else
    {
      v59 = 0;
      v60 = 0u;
    }

    v14 = objc_msgSend_stringValue_format_(TSCEStringValue, v34, v37, &v59);
    goto LABEL_29;
  }

LABEL_24:
  v52 = objc_msgSend_functionName(spec, v34, v45, v36);
  v55 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v53, v52, v54);
  v14 = objc_msgSend_raiseErrorOrConvert_(context, v56, v55, v57);

LABEL_29:
LABEL_30:

  return v14;
}

@end