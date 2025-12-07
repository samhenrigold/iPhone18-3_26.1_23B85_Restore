@interface TSCEFunction_RECEIVED
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_RECEIVED

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v123, 0, sizeof(v123));
  }

  sub_22114F414(&v124, &v123);
  v122 = 0;
  v13 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v122);
  v17 = v122;
  if (v17)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v14, v17, v16);
    goto LABEL_50;
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
      memset(&v123, 0, sizeof(v123));
    }

    sub_22114F414(&v124, &v123);
    v121 = 0;
    v31 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v26, v30, context, spec, 1, &v121);
    v17 = v121;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v32, v17, v34);
LABEL_48:

      goto LABEL_49;
    }

    if (!v31)
    {
      v113 = objc_msgSend_functionName(spec, v32, v33, v34);
      v40 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v39, v113, 2);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v41, v40, v42);
      v17 = 0;
LABEL_47:

      goto LABEL_48;
    }

    v113 = objc_msgSend_clearOffTime_(v19, v32, v31, v34);
    v35 = *(*arguments + 16);
    v38 = v35;
    v112 = v35;
    if (v35)
    {
      objc_msgSend_formatWithContext_(v35, v36, context, v37);
    }

    else
    {
      memset(&v123, 0, sizeof(v123));
    }

    sub_22114F414(&v124, &v123);
    v120 = 0;
    v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v38, v43, context, spec, 2, &v120);
    v17 = v120;
    v111 = v44;
    v45 = v44;
    v40 = v112;
    v49 = objc_msgSend_decimalRepresentation(v45, v46, v47, v48);
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v50, v17, v51);
LABEL_46:

      goto LABEL_47;
    }

    v107 = v50;
    v108 = v49;
    v52 = *(*arguments + 24);
    v110 = v52;
    if (v52)
    {
      objc_msgSend_formatWithContext_(v52, v53, context, v54);
    }

    else
    {
      memset(&v123, 0, sizeof(v123));
    }

    sub_22114F414(&v124, &v123);
    v119 = 0;
    v56 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v110, v55, context, spec, 3, &v119);
    v17 = v119;
    v109 = v56;
    v60 = objc_msgSend_decimalRepresentation(v56, v57, v58, v59);
    v105 = v61;
    v106 = v60;
    v40 = v112;
    if (v17)
    {
      v63 = objc_msgSend_raiseErrorOrConvert_(context, v61, v17, v62);
LABEL_25:
      v18 = v63;
LABEL_45:

      goto LABEL_46;
    }

    if (*(arguments + 1) - *arguments < 0x21uLL)
    {
      v70 = 0;
    }

    else
    {
      v64 = *(*arguments + 32);
      if (objc_msgSend_isTokenOrEmptyArg(v64, v65, v66, v67))
      {
        v70 = 0;
      }

      else
      {
        v104 = v64;
        if (v64)
        {
          objc_msgSend_formatWithContext_(v64, v68, context, v69);
        }

        else
        {
          memset(&v123, 0, sizeof(v123));
        }

        sub_22114F414(&v124, &v123);
        v118 = 0;
        v72 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v64, v71, context, spec, 4, &v118);
        v17 = v118;
        v102 = v72;
        v76 = objc_msgSend_trunc(v72, v73, v74, v75);

        v103 = v76;
        v123._tskFormat = objc_msgSend_decimalRepresentation(v76, v77, v78, v79);
        *&v123._formatType = v80;
        v81 = TSUDecimal::truncateWithRounding(&v123);
        v64 = v104;
        if (v17)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v82, v17, v83);

          goto LABEL_44;
        }

        v70 = v81;
      }
    }

    if (objc_msgSend_compare_(v22, v61, v113, v62) == 1 || !objc_msgSend_compare_(v22, v84, v113, v86))
    {
      v90 = objc_msgSend_functionName(spec, v84, v85, v86);
      v92 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v91, v90, 1, 2, 1, 0);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v93, v92, v94);

      v17 = 0;
      goto LABEL_45;
    }

    v117 = 0;
    sub_2214A45C0(v22, v113, v70, &v117);
    v87 = v117;
    TSUDecimal::operator=();
    v116 = v87;
    sub_2214A452C(v22, v113, v70, &v116);
    v17 = v116;

    TSUDecimal::operator=();
    if (v17)
    {
      v63 = objc_msgSend_raiseErrorOrConvert_(context, v88, v17, v89);
      goto LABEL_25;
    }

    TSUDecimal::operator=();
    v123._tskFormat = v106;
    *&v123._formatType = v105;
    TSUDecimal::operator*=();
    TSUDecimal::operator/=();
    *&v123._tskFormat = v114;
    TSUDecimal::operator-=();
    v123._tskFormat = v108;
    *&v123._formatType = v107;
    TSUDecimal::operator/=();
    v115[0] = v123._tskFormat;
    v115[1] = *&v123._formatType;
    TSUDecimal::operator=();
    if (!TSUDecimal::operator<=())
    {
      sub_221256020(&v124, &v123);
      v63 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v101, v115, &v123);
      goto LABEL_25;
    }

    v64 = objc_msgSend_negativeReceivedAmountError(TSCEError, v95, v96, v97);
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v98, v64, v99);
LABEL_44:

    goto LABEL_45;
  }

  v22 = objc_msgSend_functionName(spec, v14, v15, v16);
  v26 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v27, v22, 1);
  v18 = objc_msgSend_raiseErrorOrConvert_(context, v28, v26, v29);
  v17 = 0;
LABEL_49:

LABEL_50:
  if (v124)
  {
    v125 = v124;
    operator delete(v124);
  }

  return v18;
}

@end