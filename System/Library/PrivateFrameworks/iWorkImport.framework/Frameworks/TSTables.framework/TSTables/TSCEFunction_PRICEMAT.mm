@interface TSCEFunction_PRICEMAT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PRICEMAT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v151, 0, sizeof(v151));
  }

  sub_22114F414(&v152, &v151);
  v150 = 0;
  v13 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v150);
  v17 = v150;
  if (v17)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v14, v17, v16);
    goto LABEL_63;
  }

  if (v13)
  {
    v19 = objc_msgSend_gregorianCalendar(TSCECalendar, v14, v15, v16);
    v22 = objc_msgSend_clearOffTime_(v19, v20, v13, v21);
    v23 = *(*arguments + 8);
    v26 = v23;
    if (v23)
    {
      objc_msgSend_formatWithContext_(v23, v24, context, v25);
    }

    else
    {
      memset(&v151, 0, sizeof(v151));
    }

    sub_22114F414(&v152, &v151);
    v149 = 0;
    v31 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v26, v30, context, spec, 1, &v149);
    v17 = v149;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v32, v17, v34);
LABEL_61:

      goto LABEL_62;
    }

    if (!v31)
    {
      v38 = objc_msgSend_functionName(spec, v32, v33, v34);
      v134 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v39, v38, 2);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v40, v134, v41);
      v17 = 0;
LABEL_60:

      goto LABEL_61;
    }

    v132 = objc_msgSend_clearOffTime_(v19, v32, v31, v34);
    v35 = *(*arguments + 16);
    v134 = v35;
    if (v35)
    {
      objc_msgSend_formatWithContext_(v35, v36, context, v37);
    }

    else
    {
      memset(&v151, 0, sizeof(v151));
    }

    sub_22114F414(&v152, &v151);
    v148 = 0;
    v133 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v134, v42, context, spec, 2, &v148);
    v17 = v148;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v43, v17, v44);
      v38 = v132;
      v45 = v133;
LABEL_59:

      goto LABEL_60;
    }

    if (!v133)
    {
      v130 = objc_msgSend_functionName(spec, v43, 0, v44);
      v38 = v132;
      v45 = 0;
      v131 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v49, v130, 3);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v50, v131, v51);
      v17 = 0;
LABEL_58:

      goto LABEL_59;
    }

    v130 = objc_msgSend_clearOffTime_(v19, v43, v133, v44);
    v46 = *(*arguments + 24);
    v131 = v46;
    if (v46)
    {
      objc_msgSend_formatWithContext_(v46, v47, context, v48);
    }

    else
    {
      memset(&v151, 0, sizeof(v151));
    }

    sub_22114F414(&v152, &v151);
    v147 = 0;
    v53 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v131, v52, context, spec, 3, &v147);
    v17 = v147;
    v129 = v53;
    v146[1] = objc_msgSend_decimalRepresentation(v53, v54, v55, v56);
    v146[2] = v57;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v57, v17, v58);
      v38 = v132;
      v45 = v133;
LABEL_57:

      goto LABEL_58;
    }

    v59 = *(*arguments + 32);
    v128 = v59;
    if (v59)
    {
      objc_msgSend_formatWithContext_(v59, v60, context, v61);
    }

    else
    {
      memset(&v151, 0, sizeof(v151));
    }

    sub_22114F414(&v152, &v151);
    v146[0] = 0;
    v63 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v128, v62, context, spec, 4, v146);
    v17 = v146[0];
    v127 = v63;
    v145[1] = objc_msgSend_decimalRepresentation(v63, v64, v65, v66);
    v145[2] = v67;
    if (v17)
    {
      v69 = objc_msgSend_raiseErrorOrConvert_(context, v67, v17, v68);
LABEL_32:
      v18 = v69;
LABEL_56:
      v38 = v132;
      v45 = v133;

      goto LABEL_57;
    }

    if (*(arguments + 1) - *arguments < 0x29uLL)
    {
      v76 = 0;
    }

    else
    {
      v70 = *(*arguments + 40);
      if (objc_msgSend_isTokenOrEmptyArg(v70, v71, v72, v73))
      {
        v76 = 0;
      }

      else
      {
        v126 = v70;
        if (v70)
        {
          objc_msgSend_formatWithContext_(v70, v74, context, v75);
        }

        else
        {
          memset(&v151, 0, sizeof(v151));
        }

        sub_22114F414(&v152, &v151);
        v145[0] = 0;
        v78 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v70, v77, context, spec, 5, v145);
        v17 = v145[0];
        v82 = objc_msgSend_trunc(v78, v79, v80, v81);

        v151._tskFormat = objc_msgSend_decimalRepresentation(v82, v83, v84, v85);
        *&v151._formatType = v86;
        v87 = TSUDecimal::truncateWithRounding(&v151);
        if (v17)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v88, v17, v89);

          goto LABEL_56;
        }

        v76 = v87;

        v70 = v126;
      }
    }

    if (objc_msgSend_compare_(v22, v67, v132, v68) == 1 || !objc_msgSend_compare_(v22, v90, v132, v92))
    {
      v104 = objc_msgSend_functionName(spec, v90, v91, v92);
      v106 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v105, v104, 1, 2, 1, 0);
      v109 = objc_msgSend_raiseErrorOrConvert_(context, v107, v106, v108);
    }

    else if (objc_msgSend_compare_(v132, v90, v130, v92) == -1 || !objc_msgSend_compare_(v132, v93, v130, v95))
    {
      v104 = objc_msgSend_functionName(spec, v93, v94, v95);
      v106 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v110, v104, 2, 3, 0, 0);
      v109 = objc_msgSend_raiseErrorOrConvert_(context, v111, v106, v112);
    }

    else
    {
      if (objc_msgSend_compare_(v22, v93, v130, v95) != -1 && objc_msgSend_compare_(v22, v96, v130, v98))
      {
        v144 = 0;
        sub_2214A45C0(v130, v22, v76, &v144);
        v99 = v144;
        TSUDecimal::operator=();
        v142 = v99;
        sub_2214A452C(v22, v132, v76, &v142);
        v100 = v142;

        TSUDecimal::operator=();
        v140 = v100;
        sub_2214A452C(v130, v132, v76, &v140);
        v101 = v140;

        TSUDecimal::operator=();
        v138 = v101;
        sub_2214A452C(v130, v22, v76, &v138);
        v17 = v138;

        TSUDecimal::operator=();
        if (v17)
        {
          v69 = objc_msgSend_raiseErrorOrConvert_(context, v102, v17, v103);
        }

        else
        {
          TSUDecimal::operator=();
          *&v151._tskFormat = v141;
          TSUDecimal::operator/=();
          TSUDecimal::operator*=();
          tskFormat = v151._tskFormat;
          v117 = *&v151._formatType;
          TSUDecimal::operator=();
          v151._tskFormat = tskFormat;
          *&v151._formatType = v117;
          TSUDecimal::operator*=();
          *&v151._tskFormat = v137;
          TSUDecimal::operator+=();
          v120 = v151._tskFormat;
          v119 = *&v151._formatType;
          TSUDecimal::operator=();
          *&v151._tskFormat = v143;
          TSUDecimal::operator/=();
          TSUDecimal::operator*=();
          *&v151._tskFormat = v135;
          TSUDecimal::operator+=();
          v151._tskFormat = v120;
          *&v151._formatType = v119;
          TSUDecimal::operator/=();
          v122 = v151._tskFormat;
          v121 = *&v151._formatType;
          *&v151._tskFormat = v139;
          TSUDecimal::operator/=();
          TSUDecimal::operator*=();
          v124 = v151._tskFormat;
          v123 = *&v151._formatType;
          TSUDecimal::operator=();
          v151._tskFormat = v124;
          *&v151._formatType = v123;
          TSUDecimal::operator*=();
          v137 = *&v151._tskFormat;
          v151._tskFormat = v122;
          *&v151._formatType = v121;
          TSUDecimal::operator-=();
          v136[0] = v151._tskFormat;
          v136[1] = *&v151._formatType;
          sub_221256020(&v152, &v151);
          v69 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v125, v136, &v151);
        }

        goto LABEL_32;
      }

      v104 = objc_msgSend_functionName(spec, v96, v97, v98);
      v106 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v113, v104, 1, 3, 0, 0);
      v109 = objc_msgSend_raiseErrorOrConvert_(context, v114, v106, v115);
    }

    v18 = v109;

    v17 = 0;
    goto LABEL_56;
  }

  v22 = objc_msgSend_functionName(spec, v14, v15, v16);
  v26 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v27, v22, 1);
  v18 = objc_msgSend_raiseErrorOrConvert_(context, v28, v26, v29);
  v17 = 0;
LABEL_62:

LABEL_63:
  if (v152)
  {
    v153 = v152;
    operator delete(v152);
  }

  return v18;
}

@end