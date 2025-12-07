@interface TSCEFunction_DB
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DB

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec);
  sub_221327DF4(v133, spec, v8);

  v9 = **arguments;
  v132 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v132);
  v12 = v132;
  sub_2213188C0(v133, v11);
  v131._decimal.w[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15);
  v131._decimal.w[1] = v16;
  if (v12)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v16, v12, v17);
    goto LABEL_16;
  }

  v19 = *(*arguments + 8);
  v130 = 0;
  v114 = v19;
  v21 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v20, context, spec, 1, &v130);
  v12 = v130;
  sub_2213188C0(v133, v21);
  v25 = objc_msgSend_decimalRepresentation(v21, v22, v23, v24);
  if (!v12)
  {
    v28 = v25;
    v29 = v26;
    v30 = *(*arguments + 16);
    v129 = 0;
    v113 = v30;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 2, &v129);
    v12 = v129;
    v112 = v32;
    v128._decimal.w[0] = objc_msgSend_decimalRepresentation(v32, v33, v34, v35);
    v128._decimal.w[1] = v36;
    if (v12)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v36, v12, v37);
LABEL_14:

      goto LABEL_15;
    }

    v111 = v21;
    v38 = *(*arguments + 24);
    v127 = 0;
    v110 = v38;
    v40 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v38, v39, context, spec, 3, &v127);
    v12 = v127;
    v44 = objc_msgSend_trunc(v40, v41, v42, v43);

    v109 = v44;
    v45 = v44;
    v21 = v111;
    objc_msgSend_doubleRepresentation(v45, v46, v47, v48);
    if (v12)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v49, v12, v50);
LABEL_13:

      goto LABEL_14;
    }

    if (v134)
    {
      v52 = objc_msgSend_raiseErrorOrConvert_(context, v49, v134, v50);
LABEL_11:
      v18 = v52;
LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }

    if (v51 >= 1.0)
    {
      v54 = v51;
    }

    else
    {
      v54 = 1.0;
    }

    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments >= 0x21uLL)
    {
      v55 = *(*arguments + 32);
      if ((objc_msgSend_isTokenOrEmptyArg(v55, v56, v57, v58) & 1) == 0 && objc_msgSend_nativeType(v55, v59, v60, v61) != 10)
      {
        v125 = 0;
        v63 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v55, v62, context, spec, 4, &v125);
        v12 = v125;
        v108 = v63;
        v67 = objc_msgSend_trunc(v63, v64, v65, v66);

        v126._decimal.w[0] = objc_msgSend_decimalRepresentation(v67, v68, v69, v70);
        v126._decimal.w[1] = v71;
        if (v12)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v71, v12, v72);

          goto LABEL_13;
        }
      }
    }

    TSUDecimal::doubleValue(&v128);
    v74 = v73;
    TSUDecimal::operator=();
    v75 = floor(v74);
    if (TSUDecimal::operator==())
    {
      v76 = v75;
    }

    else
    {
      v76 = v75 + 1.0;
    }

    TSUDecimal::operator=();
    if (TSUDecimal::operator==())
    {
      if (v75 < v54)
      {
        goto LABEL_36;
      }
    }

    else if (v75 + 1.0 < v54)
    {
LABEL_36:
      v80 = objc_msgSend_functionName(spec, v77, v78, v79);
      v82 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v81, v80, 3, 4, 0, 1);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v83, v82, v84);

      goto LABEL_12;
    }

    TSUDecimal::operator=();
    if (TSUDecimal::operator==())
    {
      v85 = [TSCENumberValue alloc];
      TSUDecimal::operator=();
      v89 = sub_2213189D8(v133, v86, v87, v88);
      v52 = objc_msgSend_initWithDecimal_baseUnit_(v85, v90, &v135, v89);
    }

    else
    {
      TSUDecimal::operator=();
      v135._decimal.w[0] = v28;
      v135._decimal.w[1] = v29;
      TSUDecimal::operator/=();
      v121 = v135;
      TSUDecimal::operator=();
      v135 = v119;
      TSUDecimal::operator/=();
      v120 = v135;
      v122._decimal.w[0] = sub_2212B2BA4(&v121, &v120);
      v122._decimal.w[1] = v91;
      v135 = v123;
      TSUDecimal::operator-=();
      v124 = v135;
      TSUDecimal::operator=();
      TSUDecimal::operator*=();
      TSUDecimal::round(&v124);
      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      v135 = v126;
      TSUDecimal::operator/=();
      v122 = v135;
      v135 = v131;
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      v121 = v135;
      if (v54 == 1.0)
      {
        v123 = v121;
      }

      else
      {
        if (v54 == v76 && (TSUDecimal::operator=(), (TSUDecimal::operator==() & 1) == 0))
        {
          v135 = v131;
          TSUDecimal::operator-=();
          v120 = v135;
          v135 = v124;
          TSUDecimal::operator*=();
          v96 = v135._decimal.w[0];
          v95 = v135._decimal.w[1];
          TSUDecimal::operator=();
          v135 = v117;
          TSUDecimal::operator-=();
          v118 = v135;
          TSUDecimal::operator=();
          v119._decimal.w[0] = sub_2212B2BA4(&v118, &v116);
          v119._decimal.w[1] = v97;
          v135._decimal.w[0] = v96;
          v135._decimal.w[1] = v95;
          TSUDecimal::operator*=();
          v99 = v135._decimal.w[0];
          v98 = v135._decimal.w[1];
          TSUDecimal::operator=();
          v135 = v115;
          TSUDecimal::operator-=();
          v135._decimal.w[0] = v99;
          v135._decimal.w[1] = v98;
          TSUDecimal::operator*=();
          v101 = v135._decimal.w[0];
          v100 = v135._decimal.w[1];
          TSUDecimal::operator=();
          v135._decimal.w[0] = v101;
          v135._decimal.w[1] = v100;
          TSUDecimal::operator/=();
        }

        else
        {
          v135 = v131;
          TSUDecimal::operator-=();
          v120 = v135;
          v135 = v124;
          TSUDecimal::operator*=();
          v93 = v135._decimal.w[0];
          v92 = v135._decimal.w[1];
          TSUDecimal::operator=();
          v135 = v117;
          TSUDecimal::operator-=();
          v118 = v135;
          TSUDecimal::operator=();
          v119._decimal.w[0] = sub_2212B2BA4(&v118, &v116);
          v119._decimal.w[1] = v94;
          v135._decimal.w[0] = v93;
          v135._decimal.w[1] = v92;
          TSUDecimal::operator*=();
        }

        v123 = v135;
      }

      v102 = [TSCENumberValue alloc];
      v106 = sub_2213189D8(v133, v103, v104, v105);
      v52 = objc_msgSend_initWithDecimal_baseUnit_(v102, v107, &v123, v106);
    }

    goto LABEL_11;
  }

  v18 = objc_msgSend_raiseErrorOrConvert_(context, v26, v12, v27);
LABEL_15:

LABEL_16:

  return v18;
}

@end