@interface TSCEFunction_ZTEST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ZTEST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = *(*arguments + 8);
  v12 = objc_msgSend_nilValue(TSCENilValue, v9, v10, v11);
  v93 = 0;
  v13 = **arguments;
  v92 = v12;
  v14 = sub_22121D2C8(context, spec, v13, 0, 0, 0, &v92, &v93);
  v15 = v92;

  v91 = 0;
  v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v14, v16, context, spec, 0, &v91);
  v18 = v91;

  if (v18)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v19, v18, v20);
    goto LABEL_17;
  }

  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
LABEL_9:
    v30 = objc_msgSend_deepType_(v15, v19, context, v20);
    v33 = objc_msgSend_deepType_(v8, v31, context, v32);
    if (v30 == 3 && v33 != 3 || v30 != 3 && v33 == 3)
    {
      goto LABEL_13;
    }

    if (v30 == 5 && v33 == 5)
    {
      v89 = 0;
      v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v15, v34, context, spec, 0, &v89);
      v46 = v89;
      v88 = v46;
      v40 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v47, context, spec, 1, &v88);
      v18 = v88;

      if (v18)
      {
        v50 = objc_msgSend_raiseErrorOrConvert_(context, v48, v18, v49);
LABEL_28:
        v21 = v50;
        goto LABEL_15;
      }

      matched = objc_msgSend_dimensionsMatchModuloCurrency_(v22, v48, v40, v49);
      v54 = objc_msgSend_dimensionsMatchModuloCurrency_(v17, v52, v22, v53);
      if ((v54 & 1) == 0)
      {
        v70 = sub_2212F6DF8(v54);
        v42 = objc_msgSend_localizedStringForKey_value_table_(v70, v71, @"1 and 3", &stru_2834BADA0, @"TSCalculationEngine");

        v82 = objc_msgSend_functionName(spec, v72, v73, v74);
        v65 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, v75, v82, v42);
        v69 = objc_msgSend_raiseErrorOrConvert_(context, v76, v65, v77);
        goto LABEL_34;
      }

      if ((matched & 1) == 0)
      {
LABEL_13:
        v35 = sub_2212F6DF8(v33);
        v22 = objc_msgSend_localizedStringForKey_value_table_(v35, v36, @"1 and 2", &stru_2834BADA0, @"TSCalculationEngine");

        v40 = objc_msgSend_functionName(spec, v37, v38, v39);
        v42 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, v41, v40, v22);
        v21 = objc_msgSend_raiseErrorOrConvert_(context, v43, v42, v44);
        v18 = 0;
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }
    }

    v22 = objc_msgSend_computeSubtraction_functionSpec_left_leftArgumentIndex_right_rightArgumentIndex_(TSCEFunction_op_Subtract, v34, context, spec, v15, 0, v8, 1);
    v87 = 0;
    v40 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v55, context, spec, 0, &v87);
    v56 = v87;
    if (v56)
    {
      v18 = v56;
      v50 = objc_msgSend_raiseErrorOrConvert_(context, v57, v56, v58);
      goto LABEL_28;
    }

    TSUDecimal::operator=();
    v42 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v59, v83, v60);
    v86 = 0;
    v62 = objc_msgSend_divide_outError_(v17, v61, v42, &v86);
    v63 = v86;
    v85 = v63;
    v82 = v62;
    v65 = objc_msgSend_divide_outError_(v40, v64, v62, &v85);
    v18 = v85;

    if (v18)
    {
      objc_msgSend_raiseErrorOrConvert_(context, v66, v18, v68);
    }

    else
    {
      objc_msgSend_doubleRepresentation(v65, v66, v67, v68);
      objc_msgSend_probabilityWithZ_(TSCEFunction_NORMSDIST, v78, v79, v80);
      TSUDecimal::operator=();
      TSCEFormat::TSCEFormat(v83, 256);
      objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v81, v84, v83);
    }
    v69 = ;
LABEL_34:
    v21 = v69;

    goto LABEL_14;
  }

  v22 = *(*arguments + 16);
  if (objc_msgSend_isTokenOrEmptyArg(v22, v23, v24, v25))
  {
LABEL_8:

    goto LABEL_9;
  }

  v90 = 0;
  v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v26, context, spec, 2, &v90);
  v18 = v90;

  if (!v18)
  {
    v17 = v27;
    goto LABEL_8;
  }

  v21 = objc_msgSend_raiseErrorOrConvert_(context, v28, v18, v29);
  v17 = v27;
LABEL_16:

LABEL_17:

  return v21;
}

@end