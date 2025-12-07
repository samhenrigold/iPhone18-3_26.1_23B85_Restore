@interface TSCEFunction_NPER
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NPER

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v113, 0, sizeof(v113));
  }

  sub_22114F414(&v114, &v113);
  v112 = 0;
  v13 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v112);
  v14 = v112;
  v111[1] = objc_msgSend_decimalRepresentation(v13, v15, v16, v17);
  v111[2] = v18;
  if (v14)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v18, v14, v19);
    goto LABEL_41;
  }

  v21 = *(*arguments + 8);
  v24 = v21;
  if (v21)
  {
    objc_msgSend_formatWithContext_(v21, v22, context, v23);
  }

  else
  {
    memset(&v113, 0, sizeof(v113));
  }

  sub_22114F414(&v114, &v113);
  v111[0] = 0;
  v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v25, context, spec, 1, v111);
  v14 = v111[0];
  *&v110 = objc_msgSend_decimalRepresentation(v26, v27, v28, v29);
  *(&v110 + 1) = v30;
  if (!v14)
  {
    v32 = *(*arguments + 16);
    v35 = v32;
    if (v32)
    {
      objc_msgSend_formatWithContext_(v32, v33, context, v34);
    }

    else
    {
      memset(&v113, 0, sizeof(v113));
    }

    sub_22114F414(&v114, &v113);
    v109 = 0;
    v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v35, v36, context, spec, 2, &v109);
    v14 = v109;
    v93 = v37;
    *&v108 = objc_msgSend_decimalRepresentation(v37, v38, v39, v40);
    *(&v108 + 1) = v41;
    if (v14)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v41, v14, v42);
LABEL_16:
      v43 = v93;
LABEL_39:

      goto LABEL_40;
    }

    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      goto LABEL_28;
    }

    v44 = *(*arguments + 24);
    if ((objc_msgSend_isTokenOrEmptyArg(v44, v45, v46, v47) & 1) == 0)
    {
      v92 = v35;
      if (v44)
      {
        objc_msgSend_formatWithContext_(v44, v48, context, v49);
      }

      else
      {
        memset(&v113, 0, sizeof(v113));
      }

      sub_22114F414(&v114, &v113);
      v107[0] = 0;
      v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v44, v50, context, spec, 3, v107);
      v14 = v107[0];
      v91 = v51;
      v107[1] = objc_msgSend_decimalRepresentation(v51, v52, v53, v54);
      v107[2] = v55;
      v35 = v92;
      if (v14)
      {
        v20 = objc_msgSend_raiseErrorOrConvert_(context, v55, v14, v56);

        goto LABEL_16;
      }
    }

    if (*(arguments + 1) - *arguments < 0x21uLL)
    {
LABEL_28:
      v63 = 0;
    }

    else
    {
      v57 = *(*arguments + 32);
      if (objc_msgSend_isTokenOrEmptyArg(v57, v58, v59, v60))
      {
        v63 = 0;
      }

      else
      {
        if (v57)
        {
          objc_msgSend_formatWithContext_(v57, v61, context, v62);
        }

        else
        {
          memset(&v113, 0, sizeof(v113));
        }

        sub_22114F414(&v114, &v113);
        v106 = 0;
        v86 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v57, v85, context, spec, 4, &v106);
        v14 = v106;
        if (v14)
        {
          v20 = objc_msgSend_raiseErrorOrConvert_(context, v87, v14, v89);

          goto LABEL_16;
        }

        v113._tskFormat = objc_msgSend_decimalRepresentation(v86, v87, v88, v89);
        *&v113._formatType = v90;
        v63 = TSUDecimal::isZero(&v113) ^ 1;
      }
    }

    v43 = v93;
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    if (TSUDecimal::operator==())
    {
      v113._tskFormat = TSUDecimal::operator-();
      *&v113._formatType = v64;
      TSUDecimal::operator-=();
      TSUDecimal::operator/=();
    }

    else
    {
      TSUDecimal::operator=();
      if (v63)
      {
        TSUDecimal::operator=();
        *&v113._tskFormat = v102;
        TSUDecimal::operator+=();
        v103._decimal.w[0] = v113._tskFormat;
        v103._decimal.w[1] = *&v113._formatType;
        *&v113._tskFormat = v110;
        TSUDecimal::operator*=();
        v104 = *&v113._tskFormat;
      }

      else
      {
        v104 = v110;
      }

      v65 = TSUDecimal::operator-();
      v67 = v66;
      *&v113._tskFormat = v104;
      TSUDecimal::operator/=();
      v102 = *&v113._tskFormat;
      v113._tskFormat = v65;
      *&v113._formatType = v67;
      TSUDecimal::operator+=();
      tskFormat = v113._tskFormat;
      v68 = *&v113._formatType;
      *&v113._tskFormat = v104;
      TSUDecimal::operator/=();
      v98 = v113._tskFormat;
      v99 = *&v113._formatType;
      *&v113._tskFormat = v108;
      TSUDecimal::operator+=();
      v100 = v113._tskFormat;
      v101 = *&v113._formatType;
      v113._tskFormat = tskFormat;
      *&v113._formatType = v68;
      TSUDecimal::operator/=();
      v103._decimal.w[0] = v113._tskFormat;
      v103._decimal.w[1] = *&v113._formatType;
      v70 = sub_22131C960(&v103);
      v72 = v71;
      TSUDecimal::operator=();
      *&v113._tskFormat = v94;
      TSUDecimal::operator+=();
      v95._decimal.w[0] = v113._tskFormat;
      v95._decimal.w[1] = *&v113._formatType;
      v96 = sub_22131C960(&v95);
      v97 = v73;
      v113._tskFormat = v70;
      *&v113._formatType = v72;
      TSUDecimal::operator/=();
    }

    v105._decimal.w[0] = v113._tskFormat;
    v105._decimal.w[1] = *&v113._formatType;
    if (TSUDecimal::isInf(&v105))
    {
      v77 = objc_msgSend_functionName(spec, v74, v75, v76);
      v80 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v78, v77, v79);
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v81, v80, v82);
    }

    else
    {
      sub_221256020(&v114, &v113);
      v20 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v83, &v105, &v113);
    }

    v14 = 0;
    goto LABEL_39;
  }

  v20 = objc_msgSend_raiseErrorOrConvert_(context, v30, v14, v31);
LABEL_40:

LABEL_41:
  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  return v20;
}

@end