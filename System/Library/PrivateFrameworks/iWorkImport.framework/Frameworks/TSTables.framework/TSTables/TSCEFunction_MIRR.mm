@interface TSCEFunction_MIRR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MIRR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v105[0] = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 1, v105);
  v11 = v105[0];
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
    goto LABEL_37;
  }

  v17 = objc_msgSend_count(v10, v12, v13, v14);
  v18 = *(*arguments + 8);
  v104 = 0;
  v85 = v18;
  v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v19, context, spec, 1, &v104);
  v15 = v104;
  v84 = v20;
  v103[1] = objc_msgSend_decimalRepresentation(v20, v21, v22, v23);
  v103[2] = v24;
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v24, v15, v25);
    goto LABEL_36;
  }

  v26 = *(*arguments + 16);
  v103[0] = 0;
  v82 = v26;
  v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v27, context, spec, 2, v103);
  v15 = v103[0];
  v81 = v28;
  v101 = objc_msgSend_decimalRepresentation(v28, v29, v30, v31);
  v102 = v32;
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v32, v15, v33);
    goto LABEL_35;
  }

  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  contextCopy = context;
  v93[0] = contextCopy;
  v93[1] = spec;
  v94 = 0;
  v95[0] = 0;
  *(v95 + 7) = 0;
  v96 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v97 = 0;
  v98 = 0;
  if (!v17)
  {
LABEL_32:
    v73 = objc_msgSend_functionName(spec, v34, v35, v36, v80);
    v76 = objc_msgSend_onlyPositiveOrNegativeErrorForFunctionName_(TSCEError, v74, v73, v75);
    v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v77, v76, v78);

    goto LABEL_33;
  }

  v38 = 0;
  v83 = 0;
  HIDWORD(v80) = 0;
  while (1)
  {
    v39 = objc_msgSend_valueAtIndex_accessContext_(v10, v34, v38, v93);
    if (objc_msgSend_isNil(v39, v40, v41, v42))
    {
      goto LABEL_14;
    }

    v92 = 0;
    v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v43, contextCopy, spec, 0, &v92);
    v15 = v92;
    v86._decimal.w[0] = objc_msgSend_decimalRepresentation(v44, v45, v46, v47);
    v86._decimal.w[1] = v48;

    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v49, v15, v50);

      goto LABEL_34;
    }

    TSUDecimal::operator=();
    if (!TSUDecimal::operator<())
    {
      goto LABEL_14;
    }

    if (v38)
    {
      break;
    }

    v99 = v86;
    HIDWORD(v80) = 1;
    v83 = 1;
LABEL_14:

    if (v17 == ++v38)
    {
      goto LABEL_15;
    }
  }

  v83 = 0;
LABEL_15:
  v51 = 0;
  v52 = 0;
  LODWORD(v80) = 0;
  do
  {
    v53 = objc_msgSend_valueAtIndex_accessContext_(v10, v34, v51, v93, v80);
    if ((objc_msgSend_isNil(v53, v54, v55, v56) & 1) == 0)
    {
      v90 = 0;
      v58 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v53, v57, contextCopy, spec, 0, &v90);
      v15 = v90;
      v91._decimal.w[0] = objc_msgSend_decimalRepresentation(v58, v59, v60, v61);
      v91._decimal.w[1] = v62;

      if (v15)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v63, v15, v64);

        goto LABEL_34;
      }

      TSUDecimal::operator=();
      TSUDecimal::operator+=();
      TSUDecimal::operator*=();
      TSUDecimal::operator=();
      v86 = v88;
      TSUDecimal::operator+=();
      v89 = v88;
      TSUDecimal::operator*=();
      TSUDecimal::operator=();
      if (TSUDecimal::operator<=())
      {
        TSUDecimal::operator=();
        if (!(v83 & 1 | ((TSUDecimal::operator<() & 1) == 0)))
        {
          v86 = v91;
          TSUDecimal::operator/=();
          v89 = v86;
          TSUDecimal::operator+=();
          HIDWORD(v80) = 1;
        }
      }

      else
      {
        v86 = v91;
        TSUDecimal::operator/=();
        v89 = v86;
        TSUDecimal::operator+=();
        LODWORD(v80) = 1;
      }

      ++v52;
    }

    ++v51;
  }

  while (v17 != v51);
  if ((v80 & HIDWORD(v80) & 1) == 0)
  {
    goto LABEL_32;
  }

  v65 = TSUDecimal::operator-();
  v67 = v66;
  TSUDecimal::operator=();
  TSUDecimal::operator+=();
  v89 = v88;
  TSUDecimal::operator=();
  v91._decimal.w[0] = sub_2212B2BA4(&v89, &v87);
  v91._decimal.w[1] = v68;
  TSUDecimal::operator*=();
  TSUDecimal::operator=();
  v86 = v88;
  TSUDecimal::operator+=();
  v89 = v86;
  v86 = v100;
  TSUDecimal::operator*=();
  v91 = v86;
  if (v83)
  {
    v91 = v99;
  }

  v86._decimal.w[0] = v65;
  v86._decimal.w[1] = v67;
  TSUDecimal::operator/=();
  v88 = v86;
  TSUDecimal::operator=();
  v69 = sub_2212B2BA4(&v88, &v87);
  v71 = v70;
  TSUDecimal::operator=();
  v86._decimal.w[0] = v69;
  v86._decimal.w[1] = v71;
  TSUDecimal::operator-=();
  v89._decimal.w[0] = v69;
  v89._decimal.w[1] = v71;
  TSCEFormat::TSCEFormat(&v86, 258);
  v16 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v72, &v89, &v86);
LABEL_33:
  v15 = 0;
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:

  return v16;
}

@end