@interface TSCEFunction_RANDBETWEEN
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_RANDBETWEEN

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v82 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v82);
  v12 = v82;
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
    goto LABEL_22;
  }

  v81 = 0;
  v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v81);
  v15 = v81;
  if (!v15)
  {
    if (objc_msgSend_dimensionsMatchModuloCurrency_(v11, v18, v17, v19))
    {
      if (objc_msgSend_hasUnits(v11, v20, v21, v22))
      {
        if (objc_msgSend_hasUnits(v17, v23, v24, v25))
        {
          v27 = objc_msgSend_unit(v11, v23, v26, v25);
          if (v27 != objc_msgSend_unit(v17, v28, v29, v30))
          {
            v35 = objc_msgSend_mismatchedMaxUnitsError(TSCEError, v23, v31, v25);
            v16 = objc_msgSend_raiseErrorOrConvert_(context, v75, v35, v76);
            goto LABEL_13;
          }
        }
      }

      if (!objc_msgSend_gt_(v11, v23, v17, v25))
      {
        v45 = objc_msgSend_ceil(v11, v32, v33, v34);

        v49 = objc_msgSend_floor(v17, v46, v47, v48);

        v53 = objc_msgSend_randGenerator(context, v50, v51, v52);
        objc_msgSend_doubleRepresentation(v45, v54, v55, v56);
        v58 = v57;
        objc_msgSend_doubleRepresentation(v49, v59, v60, v61);
        TSCERandGenerator::randWithMinMax(v53, v58, v62);
        TSUDecimal::operator=();
        v65 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v63, &v80, v64);
        v16 = objc_msgSend_floor(v65, v66, v67, v68);

        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v69, context, v71);
        }

        else
        {
          memset(&v79, 0, sizeof(v79));
        }

        if (v9)
        {
          objc_msgSend_formatWithContext_(v9, v69, context, v71);
        }

        else
        {
          memset(&v78, 0, sizeof(v78));
        }

        TSCEFormat::formatByMergingWithFormat(&v77, &v79, &v78, v70, v71);
        TSCEFormat::TSCEFormat(&v80, &v77);
        objc_msgSend_setFormat_(v16, v72, &v80, v73);
        v11 = v45;
        v17 = v49;
        goto LABEL_21;
      }

      v35 = objc_msgSend_functionName(spec, v32, v33, v34);
      v37 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v36, v35, 1, 2, 1, 1);
      v40 = objc_msgSend_raiseErrorOrConvert_(context, v38, v37, v39);
    }

    else
    {
      v35 = objc_msgSend_functionName(spec, v20, v21, v22);
      v37 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v41, v35, v42);
      v40 = objc_msgSend_raiseErrorOrConvert_(context, v43, v37, v44);
    }

    v16 = v40;

LABEL_13:
    goto LABEL_21;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(context, v18, v15, v19);
LABEL_21:

LABEL_22:

  return v16;
}

@end