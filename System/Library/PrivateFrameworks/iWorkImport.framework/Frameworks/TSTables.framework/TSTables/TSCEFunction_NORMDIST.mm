@interface TSCEFunction_NORMDIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NORMDIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v74 = 0;
  v66 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v74);
  v10 = v74;
  v11 = *(*arguments + 8);
  v73 = v10;
  v13 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 1, &v73);
  v14 = v73;

  v15 = *(*arguments + 16);
  v72 = v14;
  v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v15, v16, context, spec, 2, &v72);
  v18 = v72;

  if (v18)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v19, v18, v20);
    goto LABEL_11;
  }

  matched = objc_msgSend_dimensionsMatchModuloCurrency_(v66, v19, v13, v20);
  if (!matched || (matched = objc_msgSend_dimensionsMatchModuloCurrency_(v66, v23, v17, v24), (matched & 1) == 0))
  {
    v32 = sub_2212F6DF8(matched);
    v25 = objc_msgSend_localizedStringForKey_value_table_(v32, v33, @"1, 2, and 3", &stru_2834BADA0, @"TSCalculationEngine");

    v37 = objc_msgSend_functionName(spec, v34, v35, v36);
    v39 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, v38, v37, v25);
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v40, v39, v41);

    goto LABEL_8;
  }

  v25 = *(*arguments + 24);
  v71 = 0;
  v27 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v25, v26, context, spec, 3, &v71);
  v28 = v71;
  if (!v28)
  {
    if ((v27 & 1) != 0 || !objc_msgSend_isDuration(v66, v29, v30, v31))
    {
      v64 = v27;
      v70 = 0;
      v47 = objc_msgSend_subtract_functionSpec_outError_(v66, v29, v13, spec, &v70);
      v48 = v70;
      v69 = v48;
      v65 = v47;
      v37 = objc_msgSend_divide_outError_(v47, v49, v17, &v69);
      v18 = v69;

      objc_msgSend_doubleRepresentation(v37, v50, v51, v52);
      v57 = v56;
      if (v18)
      {
        v58 = objc_msgSend_raiseErrorOrConvert_(context, v53, v18, v55);
      }

      if (v64)
      {
        objc_msgSend_doubleRepresentation(v37, v53, v54, v55);
        objc_msgSend_probabilityWithZ_(TSCEFunction_NORMSDIST, v59, v60, v61);
      }

      else
      {
        objc_msgSend_doubleRepresentation(v17, v53, v54, v55);
        exp(v57 * v57 * -0.5);
      }

      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v62, context, v63);
      }

      else
      {
        memset(v67, 0, sizeof(v67));
      }

      v21 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v62, v68, v67);
      goto LABEL_9;
    }

    v37 = objc_msgSend_durationDisallowedForNormdistPDFError(TSCEError, v29, v43, v44);
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v45, v37, v46);
LABEL_8:
    v18 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v18 = v28;
  v21 = objc_msgSend_raiseErrorOrConvert_(context, v29, v28, v31);
LABEL_10:

LABEL_11:

  return v21;
}

@end