@interface TSCEFunction_DISC
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DISC

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v106[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v106);
  v14 = v106[0];
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v14, v13);
    goto LABEL_33;
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
LABEL_31:

      goto LABEL_32;
    }

    if (!v22)
    {
      v40 = objc_msgSend_functionName(spec, v23, v24, v25);
      v34 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v41, v40, 2);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v42, v34, v43);
      v26 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v93 = objc_msgSend_clearOffTime_(v16, v23, v22, v25);
    v30 = *(*arguments + 16);
    v104 = 0;
    v94 = v30;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 2, &v104);
    v26 = v104;
    v92 = v32;
    v33 = v32;
    v34 = v94;
    v103[1] = objc_msgSend_decimalRepresentation(v33, v35, v36, v37);
    v103[2] = v38;
    if (v26)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v38, v26, v39);
      v40 = v93;
LABEL_29:

      goto LABEL_30;
    }

    v44 = *(*arguments + 24);
    v103[0] = 0;
    v91 = v44;
    v46 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v44, v45, context, spec, 3, v103);
    v26 = v103[0];
    v90 = v46;
    v50 = objc_msgSend_decimalRepresentation(v46, v47, v48, v49);
    v34 = v94;
    v102._decimal.w[0] = v50;
    v102._decimal.w[1] = v51;
    if (v26)
    {
      v53 = objc_msgSend_raiseErrorOrConvert_(context, v51, v26, v52);
    }

    else
    {
      if (*(arguments + 1) - *arguments < 0x21uLL)
      {
        v59 = 0;
      }

      else
      {
        v54 = *(*arguments + 32);
        v89 = v54;
        if (objc_msgSend_isTokenOrEmptyArg(v54, v55, v56, v57))
        {
          v59 = 0;
        }

        else
        {
          v101 = 0;
          v60 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v54, v58, context, spec, 4, &v101);
          v26 = v101;
          v87 = v60;
          v64 = objc_msgSend_trunc(v60, v61, v62, v63);

          v88 = v64;
          v95._decimal.w[0] = objc_msgSend_decimalRepresentation(v64, v65, v66, v67);
          v95._decimal.w[1] = v68;
          v69 = TSUDecimal::truncateWithRounding(&v95);
          if (v26)
          {
            v15 = objc_msgSend_raiseErrorOrConvert_(context, v70, v26, v71);

            goto LABEL_28;
          }

          v59 = v69;
        }
      }

      if (objc_msgSend_compare_(v19, v51, v93, v52) == 1 || !objc_msgSend_compare_(v19, v72, v93, v74))
      {
        v78 = objc_msgSend_functionName(spec, v72, v73, v74);
        v80 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v79, v78, 1, 2, 1, 0);
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v81, v80, v82);

        v26 = 0;
        goto LABEL_28;
      }

      v99 = 0;
      sub_2214A45C0(v19, v93, v59, &v99);
      v75 = v99;
      TSUDecimal::operator=();
      v98 = v75;
      sub_2214A452C(v19, v93, v59, &v98);
      v26 = v98;

      TSUDecimal::operator=();
      if (v26)
      {
        objc_msgSend_raiseErrorOrConvert_(context, v76, v26, v77);
      }

      else
      {
        v95 = v102;
        TSUDecimal::operator-=();
        TSUDecimal::operator/=();
        v85 = v95._decimal.w[0];
        v84 = v95._decimal.w[1];
        v95 = v100;
        TSUDecimal::operator/=();
        v96 = v95;
        v95._decimal.w[0] = v85;
        v95._decimal.w[1] = v84;
        TSUDecimal::operator*=();
        v97 = v95;
        TSCEFormat::TSCEFormat(&v95, 258);
        objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v86, &v97, &v95);
      }
      v53 = ;
    }

    v15 = v53;
LABEL_28:
    v40 = v93;

    goto LABEL_29;
  }

  v26 = objc_msgSend_functionName(spec, v11, v12, v13);
  v19 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v27, v26, 1);
  v15 = objc_msgSend_raiseErrorOrConvert_(context, v28, v19, v29);
LABEL_32:

  v14 = v26;
LABEL_33:

  return v15;
}

@end