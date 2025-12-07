@interface TSCEFunction_ACCRINTM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ACCRINTM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v106[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v106);
  v14 = v106[0];
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v14, v13);
    goto LABEL_35;
  }

  if (v10)
  {
    v16 = objc_msgSend_gregorianCalendar(TSCECalendar, v11, v12, v13);
    v19 = objc_msgSend_clearOffTime_(v16, v17, v10, v18);
    v20 = *(*arguments + 8);
    v105 = 0;
    v22 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v105);
    v26 = v105;
    if (v26)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v23, v26, v25);
LABEL_33:

      goto LABEL_34;
    }

    if (!v22)
    {
      v94 = objc_msgSend_functionName(spec, v23, v24, v25);
      v39 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v38, v94, 2);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v40, v39, v41);
      v26 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v94 = objc_msgSend_clearOffTime_(v16, v23, v22, v25);
    v30 = *(*arguments + 16);
    v104 = 0;
    v93 = v30;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 2, &v104);
    v26 = v104;
    v92 = v32;
    v102 = objc_msgSend_decimalRepresentation(v32, v33, v34, v35);
    v103 = v36;
    if (v26)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v36, v26, v37);
LABEL_31:
      v39 = v93;

      goto LABEL_32;
    }

    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      goto LABEL_20;
    }

    v44 = *(*arguments + 24);
    if ((objc_msgSend_isTokenOrEmptyArg(v44, v45, v46, v47) & 1) == 0 && objc_msgSend_nativeType(v44, v48, v49, v50) != 10)
    {
      v100 = 0;
      v90 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v44, v51, context, spec, 3, &v100);
      v26 = v100;
      v101._decimal.w[0] = objc_msgSend_decimalRepresentation(v90, v52, v53, v54);
      v101._decimal.w[1] = v55;
      if (v26)
      {
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v55, v26, v56);
        v57 = v90;
LABEL_28:

        goto LABEL_31;
      }
    }

    if (*(arguments + 1) - *arguments < 0x21uLL)
    {
LABEL_20:
      v62 = 0;
    }

    else
    {
      v44 = *(*arguments + 32);
      if (objc_msgSend_isTokenOrEmptyArg(v44, v58, v59, v60))
      {
        v62 = 0;
      }

      else
      {
        v99 = 0;
        v91 = v44;
        v75 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v44, v61, context, spec, 4, &v99);
        v26 = v99;
        v79 = objc_msgSend_trunc(v75, v76, v77, v78);

        v89 = v79;
        v95._decimal.w[0] = objc_msgSend_decimalRepresentation(v79, v80, v81, v82);
        v95._decimal.w[1] = v83;
        v84 = TSUDecimal::truncateWithRounding(&v95);
        v44 = v91;
        if (v26)
        {
          v15 = objc_msgSend_raiseErrorOrConvert_(context, v85, v26, v86);
          v57 = v89;
          goto LABEL_28;
        }

        v62 = v84;
      }
    }

    if (objc_msgSend_compare_(v19, v42, v94, v43) == 1 || !objc_msgSend_compare_(v19, v63, v94, v65))
    {
      v70 = objc_msgSend_functionName(spec, v63, v64, v65);
      v72 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v71, v70, 1, 2, 1, 0);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v73, v72, v74);

      v26 = 0;
    }

    else
    {
      v98 = 0;
      sub_2214A452C(v19, v94, v62, &v98);
      v66 = v98;
      TSUDecimal::operator=();
      v97 = v66;
      sub_2214A45C0(v19, v94, v62, &v97);
      v67 = v97;

      TSUDecimal::operator=();
      if (v67)
      {
        objc_msgSend_raiseErrorOrConvert_(context, v68, v67, v69);
      }

      else
      {
        v95 = v101;
        TSUDecimal::operator*=();
        TSUDecimal::operator*=();
        TSUDecimal::operator/=();
        v96 = v95;
        TSCEFormat::TSCEFormat(&v95, 256);
        objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v87, &v96, &v95);
      }
      v15 = ;
      v26 = v67;
    }

    goto LABEL_31;
  }

  v26 = objc_msgSend_functionName(spec, v11, v12, v13);
  v19 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v27, v26, 1);
  v15 = objc_msgSend_raiseErrorOrConvert_(context, v28, v19, v29);
LABEL_34:

  v14 = v26;
LABEL_35:

  return v15;
}

@end