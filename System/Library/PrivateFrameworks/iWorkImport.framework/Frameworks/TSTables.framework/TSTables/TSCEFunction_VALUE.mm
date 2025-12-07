@interface TSCEFunction_VALUE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_VALUE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v79 = 0;
  v9 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v79);
  v13 = v79;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
    v15 = v9;
    goto LABEL_21;
  }

  v16 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v10, v11, v12);
  v15 = objc_msgSend_stringByTrimmingCharactersInSet_(v9, v17, v16, v18);

  v24 = objc_msgSend_deepType_(v7, v19, context, v20);
  if (v24 == 7)
  {
    v25 = objc_msgSend_locale(context, v21, v22, v23);
    v26 = TSUCreateDateFromString();

    v27 = v26 != 0;
  }

  else
  {
    v27 = 0;
  }

  TSCEFormat::TSCEFormat(&v78, 256);
  if (v24 == 3 || v27)
  {
    v31 = objc_msgSend_functionName(spec, v28, v29, v30);
    v33 = objc_msgSend_stringDoesNotRepresentNumberErrorForFunctionName_string_(TSCEError, v32, v31, v15);
    v36 = objc_msgSend_raiseErrorOrConvert_(context, v34, v33, v35);
    goto LABEL_8;
  }

  if (v24 != 5)
  {
    IsEmptyWithContext = objc_msgSend_valueIsEmptyWithContext_(v7, v28, context, v30);
    if (!v15 || (objc_msgSend_isEqualToString_(v15, v43, &stru_2834BADA0, v45) & IsEmptyWithContext) == 1)
    {
      v14 = objc_msgSend_zero(TSCENumberValue, v43, v44, v45);
      TSCEFormat::TSCEFormat(&v76, &v78);
      objc_msgSend_setFormat_(v14, v46, &v76, v47);
      goto LABEL_9;
    }

    TSUDecimal::operator=();
    v56 = MEMORY[0x277D81290];
    v60 = objc_msgSend_locale(context, v57, v58, v59);
    LOBYTE(v56) = objc_msgSend_numberValueFromString_locale_outDecimalValue_(v56, v61, v15, v60, &v76);

    if (v56)
    {
      v14 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v62, &v76, &v78);
      goto LABEL_9;
    }

    v31 = objc_msgSend_functionName(spec, v62, v63, v64);
    v33 = objc_msgSend_stringDoesNotRepresentNumberErrorForFunctionName_string_(TSCEError, v65, v31, v15);
    v36 = objc_msgSend_raiseErrorOrConvert_(context, v66, v33, v67);
LABEL_8:
    v14 = v36;

LABEL_9:
    v13 = 0;
    goto LABEL_21;
  }

  v77 = 0;
  v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v28, context, spec, 0, &v77);
  v13 = v77;
  if (v13)
  {
    v41 = objc_msgSend_raiseErrorOrConvert_(context, v38, v13, v40);
  }

  else
  {
    v48 = objc_msgSend_rawDecimalValue(v37, v38, v39, v40);
    if (objc_msgSend_hasUnits(v37, v49, v50, v51, *v48, v48[1]) && !objc_msgSend_dimension(v37, v52, v53, v54))
    {
      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      v71 = objc_msgSend_functionName(spec, v68, v69, v70);
      v73 = objc_msgSend_stringDoesNotRepresentNumberErrorForFunctionName_string_(TSCEError, v72, v71, v15);
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v74, v73, v75);

      goto LABEL_20;
    }

    v41 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v52, &v76, &v78);
  }

  v14 = v41;
LABEL_20:

LABEL_21:

  return v14;
}

@end