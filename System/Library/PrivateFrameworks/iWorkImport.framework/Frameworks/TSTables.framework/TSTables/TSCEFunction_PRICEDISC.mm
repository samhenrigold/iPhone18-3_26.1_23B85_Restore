@interface TSCEFunction_PRICEDISC
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PRICEDISC

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v116, 0, sizeof(v116));
  }

  sub_22114F414(&v117, &v116);
  v115 = 0;
  v13 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v115);
  v17 = v115;
  if (v17)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v14, v17, v16);
    goto LABEL_47;
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
      memset(&v116, 0, sizeof(v116));
    }

    sub_22114F414(&v117, &v116);
    v114 = 0;
    v31 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v26, v30, context, spec, 1, &v114);
    v17 = v114;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v32, v17, v34);
LABEL_45:

      goto LABEL_46;
    }

    if (!v31)
    {
      v106 = objc_msgSend_functionName(spec, v32, v33, v34);
      v40 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v39, v106, 2);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v41, v40, v42);
      v17 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v106 = objc_msgSend_clearOffTime_(v19, v32, v31, v34);
    v35 = *(*arguments + 16);
    v38 = v35;
    v105 = v35;
    if (v35)
    {
      objc_msgSend_formatWithContext_(v35, v36, context, v37);
    }

    else
    {
      memset(&v116, 0, sizeof(v116));
    }

    sub_22114F414(&v117, &v116);
    v113 = 0;
    v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v38, v43, context, spec, 2, &v113);
    v17 = v113;
    v104 = v44;
    v45 = v44;
    v40 = v105;
    v49 = objc_msgSend_decimalRepresentation(v45, v46, v47, v48);
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v50, v17, v51);
LABEL_43:

      goto LABEL_44;
    }

    v100 = v50;
    v101 = v49;
    v52 = *(*arguments + 24);
    v103 = v52;
    if (v52)
    {
      objc_msgSend_formatWithContext_(v52, v53, context, v54);
    }

    else
    {
      memset(&v116, 0, sizeof(v116));
    }

    sub_22114F414(&v117, &v116);
    v112 = 0;
    v56 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v103, v55, context, spec, 3, &v112);
    v17 = v112;
    v102 = v56;
    v60 = objc_msgSend_decimalRepresentation(v56, v57, v58, v59);
    v40 = v105;
    *&v111 = v60;
    *(&v111 + 1) = v61;
    if (v17)
    {
      v63 = objc_msgSend_raiseErrorOrConvert_(context, v61, v17, v62);
    }

    else
    {
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
          v99 = v64;
          if (v64)
          {
            objc_msgSend_formatWithContext_(v64, v68, context, v69);
          }

          else
          {
            memset(&v116, 0, sizeof(v116));
          }

          sub_22114F414(&v117, &v116);
          v110 = 0;
          v72 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v64, v71, context, spec, 4, &v110);
          v17 = v110;
          v97 = v72;
          v76 = objc_msgSend_trunc(v72, v73, v74, v75);

          v98 = v76;
          v116._tskFormat = objc_msgSend_decimalRepresentation(v76, v77, v78, v79);
          *&v116._formatType = v80;
          v81 = TSUDecimal::truncateWithRounding(&v116);
          v64 = v99;
          if (v17)
          {
            v18 = objc_msgSend_raiseErrorOrConvert_(context, v82, v17, v83);

            goto LABEL_42;
          }

          v70 = v81;
        }
      }

      if (objc_msgSend_compare_(v22, v61, v106, v62) == 1 || !objc_msgSend_compare_(v22, v84, v106, v86))
      {
        v90 = objc_msgSend_functionName(spec, v84, v85, v86);
        v92 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v91, v90, 1, 2, 1, 0);
        v18 = objc_msgSend_raiseErrorOrConvert_(context, v93, v92, v94);

        v17 = 0;
        goto LABEL_42;
      }

      v109 = 0;
      sub_2214A45C0(v22, v106, v70, &v109);
      v87 = v109;
      TSUDecimal::operator=();
      v108 = v87;
      sub_2214A452C(v22, v106, v70, &v108);
      v17 = v108;

      TSUDecimal::operator=();
      if (v17)
      {
        v63 = objc_msgSend_raiseErrorOrConvert_(context, v88, v17, v89);
      }

      else
      {
        v116._tskFormat = v101;
        *&v116._formatType = v100;
        TSUDecimal::operator*=();
        TSUDecimal::operator*=();
        TSUDecimal::operator/=();
        *&v116._tskFormat = v111;
        TSUDecimal::operator-=();
        v107[0] = v116._tskFormat;
        v107[1] = *&v116._formatType;
        sub_221256020(&v117, &v116);
        v63 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v96, v107, &v116);
      }
    }

    v18 = v63;
LABEL_42:

    goto LABEL_43;
  }

  v22 = objc_msgSend_functionName(spec, v14, v15, v16);
  v26 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v27, v22, 1);
  v18 = objc_msgSend_raiseErrorOrConvert_(context, v28, v26, v29);
  v17 = 0;
LABEL_46:

LABEL_47:
  if (v117)
  {
    v118 = v117;
    operator delete(v117);
  }

  return v18;
}

@end