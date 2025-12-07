@interface TSCEFunction_YIELDMAT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_YIELDMAT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v136[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v136);
  v14 = v136[0];
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v14, v13);
    goto LABEL_46;
  }

  if (v10)
  {
    v16 = objc_msgSend_gregorianCalendar(TSCECalendar, v11, v12, v13);
    v19 = objc_msgSend_clearOffTime_(v16, v17, v10, v18);
    v20 = *(*arguments + 8);
    v135 = 0;
    v22 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v135);
    v26 = v135;
    if (v26)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v23, v26, v25);
LABEL_44:

      goto LABEL_45;
    }

    if (!v22)
    {
      v34 = objc_msgSend_functionName(spec, v23, v24, v25);
      v35 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v36, v34, 2);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v37, v35, v38);
      v26 = 0;
LABEL_43:

      goto LABEL_44;
    }

    v119 = objc_msgSend_clearOffTime_(v16, v23, v22, v25);
    v30 = *(*arguments + 16);
    v134 = 0;
    v118 = v30;
    v120 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 2, &v134);
    v26 = v134;
    if (v26)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v32, v26, v33);
      v35 = v118;
      v34 = v119;
LABEL_42:

      goto LABEL_43;
    }

    if (!v120)
    {
      v117 = objc_msgSend_functionName(spec, v32, 0, v33);
      v35 = v118;
      v34 = v119;
      v116 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v47, v117, 3);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v48, v116, v49);
      v26 = 0;
LABEL_41:

      goto LABEL_42;
    }

    v117 = objc_msgSend_clearOffTime_(v16, v32, v120, v33);
    v39 = *(*arguments + 24);
    v133 = 0;
    v116 = v39;
    v41 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v40, context, spec, 3, &v133);
    v26 = v133;
    v115 = v41;
    v132[1] = objc_msgSend_decimalRepresentation(v41, v42, v43, v44);
    v132[2] = v45;
    if (v26)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v45, v26, v46);
      v35 = v118;
      v34 = v119;
LABEL_40:

      goto LABEL_41;
    }

    v50 = *(*arguments + 32);
    v132[0] = 0;
    v114 = v50;
    v52 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v50, v51, context, spec, 4, v132);
    v26 = v132[0];
    v113 = v52;
    v56 = objc_msgSend_decimalRepresentation(v52, v53, v54, v55);
    if (v26)
    {
      v59 = objc_msgSend_raiseErrorOrConvert_(context, v57, v26, v58);
LABEL_17:
      v15 = v59;
LABEL_39:
      v35 = v118;
      v34 = v119;

      goto LABEL_40;
    }

    v60 = v56;
    v112 = v57;
    if (*(arguments + 1) - *arguments < 0x29uLL)
    {
      v66 = 0;
    }

    else
    {
      v61 = *(*arguments + 40);
      v111 = v61;
      if (objc_msgSend_isTokenOrEmptyArg(v61, v62, v63, v64))
      {
        v66 = 0;
      }

      else
      {
        v109 = v60;
        v131 = 0;
        v67 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v61, v65, context, spec, 5, &v131);
        v26 = v131;
        v71 = objc_msgSend_trunc(v67, v68, v69, v70);

        v121._decimal.w[0] = objc_msgSend_decimalRepresentation(v71, v72, v73, v74);
        v121._decimal.w[1] = v75;
        v76 = TSUDecimal::truncateWithRounding(&v121);
        if (v26)
        {
          v15 = objc_msgSend_raiseErrorOrConvert_(context, v77, v26, v78);

          goto LABEL_39;
        }

        v66 = v76;

        v60 = v109;
      }
    }

    if (objc_msgSend_compare_(v19, v57, v119, v58) == 1 || !objc_msgSend_compare_(v19, v79, v119, v81))
    {
      v93 = objc_msgSend_functionName(spec, v79, v80, v81);
      v95 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v94, v93, 1, 2, 1, 0);
      v98 = objc_msgSend_raiseErrorOrConvert_(context, v96, v95, v97);
    }

    else if (objc_msgSend_compare_(v119, v79, v117, v81) == -1 || !objc_msgSend_compare_(v119, v82, v117, v84))
    {
      v93 = objc_msgSend_functionName(spec, v82, v83, v84);
      v95 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v99, v93, 2, 3, 0, 0);
      v98 = objc_msgSend_raiseErrorOrConvert_(context, v100, v95, v101);
    }

    else
    {
      if (objc_msgSend_compare_(v19, v82, v117, v84) != -1 && objc_msgSend_compare_(v19, v85, v117, v87))
      {
        v110 = v60;
        v130 = 0;
        sub_2214A45C0(v117, v19, v66, &v130);
        v88 = v130;
        TSUDecimal::operator=();
        v129 = v88;
        sub_2214A452C(v19, v119, v66, &v129);
        v89 = v129;

        TSUDecimal::operator=();
        v127 = v89;
        sub_2214A452C(v117, v119, v66, &v127);
        v90 = v127;

        TSUDecimal::operator=();
        v125 = v90;
        sub_2214A452C(v117, v19, v66, &v125);
        v26 = v125;

        TSUDecimal::operator=();
        if (v26)
        {
          objc_msgSend_raiseErrorOrConvert_(context, v91, v26, v92);
        }

        else
        {
          TSUDecimal::operator=();
          v121._decimal.w[0] = v110;
          v121._decimal.w[1] = v112;
          TSUDecimal::operator/=();
          v107 = v121._decimal.w[0];
          v106 = v121._decimal.w[1];
          v121 = v126;
          TSUDecimal::operator/=();
          TSUDecimal::operator*=();
          v123 = v121;
          v121._decimal.w[0] = v107;
          v121._decimal.w[1] = v106;
          TSUDecimal::operator+=();
          v124[1] = v121;
          TSUDecimal::operator=();
          v121 = v128;
          TSUDecimal::operator/=();
          TSUDecimal::operator*=();
          v122 = v121;
          v121 = v123;
          TSUDecimal::operator+=();
          TSUDecimal::operator-=();
          TSUDecimal::operator/=();
          TSUDecimal::operator*=();
          TSUDecimal::operator/=();
          v124[0] = v121;
          TSCEFormat::TSCEFormat(&v121, 258);
          objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v108, v124, &v121);
        }
        v59 = ;
        goto LABEL_17;
      }

      v93 = objc_msgSend_functionName(spec, v85, v86, v87);
      v95 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v102, v93, 1, 3, 0, 0);
      v98 = objc_msgSend_raiseErrorOrConvert_(context, v103, v95, v104);
    }

    v15 = v98;

    v26 = 0;
    goto LABEL_39;
  }

  v26 = objc_msgSend_functionName(spec, v11, v12, v13);
  v19 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v27, v26, 1);
  v15 = objc_msgSend_raiseErrorOrConvert_(context, v28, v19, v29);
LABEL_45:

  v14 = v26;
LABEL_46:

  return v15;
}

@end