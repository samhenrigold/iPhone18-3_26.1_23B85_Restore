@interface TSCEFunction_DDB
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DDB

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec);
  sub_221327DF4(v101, spec, v8);

  v9 = **arguments;
  v100 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v100);
  v12 = v100;
  sub_2213188C0(v101, v11);
  if (v12)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v15);
    goto LABEL_16;
  }

  v99._decimal.w[0] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15);
  v99._decimal.w[1] = v17;
  v18 = *(*arguments + 8);
  v98 = 0;
  v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v19, context, spec, 1, &v98);
  v12 = v98;
  sub_2213188C0(v101, v20);
  v97[1] = objc_msgSend_decimalRepresentation(v20, v21, v22, v23);
  v97[2] = v24;
  if (!v12)
  {
    v26 = *(*arguments + 16);
    v97[0] = 0;
    v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v27, context, spec, 2, v97);
    v12 = v97[0];
    v96[1] = objc_msgSend_decimalRepresentation(v28, v29, v30, v31);
    v96[2] = v32;
    if (v12)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v32, v12, v33);
LABEL_14:

      goto LABEL_15;
    }

    v85 = v26;
    v34 = *(*arguments + 24);
    v96[0] = 0;
    v84 = v34;
    v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, context, spec, 3, v96);
    v12 = v96[0];
    v83 = v36;
    v37 = v36;
    v26 = v85;
    v95._decimal.w[0] = objc_msgSend_decimalRepresentation(v37, v38, v39, v40);
    v95._decimal.w[1] = v41;
    if (v12)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v41, v12, v42);
LABEL_13:

      goto LABEL_14;
    }

    if (v102)
    {
      v43 = objc_msgSend_raiseErrorOrConvert_(context, v41, v102, v42);
    }

    else
    {
      if (TSUDecimal::operator<())
      {
        v48 = objc_msgSend_functionName(spec, v45, v46, v47);
        v50 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v49, v48, 3, 4, 0, 1);
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v51, v50, v52);

        goto LABEL_12;
      }

      TSUDecimal::operator=();
      if (TSUDecimal::operator<())
      {
        TSUDecimal::operator=();
      }

      TSUDecimal::operator=();
      if (*(arguments + 1) - *arguments >= 0x21uLL)
      {
        v53 = *(*arguments + 32);
        if ((objc_msgSend_isTokenOrEmptyArg(v53, v54, v55, v56) & 1) == 0 && objc_msgSend_nativeType(v53, v57, v58, v59) != 10)
        {
          v93 = 0;
          v61 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v53, v60, context, spec, 4, &v93);
          v12 = v93;
          v82 = v61;
          v94._decimal.w[0] = objc_msgSend_decimalRepresentation(v61, v62, v63, v64);
          v94._decimal.w[1] = v65;
          if (v12)
          {
            v16 = objc_msgSend_raiseErrorOrConvert_(context, v65, v12, v66);

            goto LABEL_13;
          }
        }
      }

      if (TSUDecimal::operator<=())
      {
        v103 = v94;
        TSUDecimal::operator/=();
        v92[1] = v103;
        TSUDecimal::operator=();
        if ((TSUDecimal::operator<=() & 1) == 0)
        {
          TSUDecimal::operator=();
        }

        v103 = v99;
        TSUDecimal::operator*=();
        v67 = v103;
        TSUDecimal::operator=();
        v103 = v89;
        TSUDecimal::operator-=();
        v90 = v103;
        TSUDecimal::operator=();
        v103 = v95;
        TSUDecimal::operator-=();
        v88 = v103;
        v91._decimal.w[0] = sub_2212B2BA4(&v90, &v88);
        v91._decimal.w[1] = v68;
        v103 = v67;
        TSUDecimal::operator*=();
        v92[0] = v103;
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v103 = v86[1];
        TSUDecimal::operator-=();
        v87 = v103;
        TSUDecimal::operator=();
        v103 = v95;
        TSUDecimal::operator-=();
        v86[0] = v103;
        v88._decimal.w[0] = sub_2212B2BA4(&v87, v86);
        v88._decimal.w[1] = v69;
        v103 = v89;
        TSUDecimal::operator-=();
        v90 = v103;
        v103 = v99;
        TSUDecimal::operator*=();
        v91 = v103;
        v103 = v99;
        TSUDecimal::operator-=();
        TSUDecimal::operator-=();
        v90 = v103;
        if ((TSUDecimal::operator<=() & 1) == 0)
        {
          v103 = v99;
          TSUDecimal::operator-=();
          TSUDecimal::operator-=();
          v92[0] = v103;
        }

        TSUDecimal::operator=();
        if (TSUDecimal::operator<())
        {
          TSUDecimal::operator=();
        }

        v70 = [TSCENumberValue alloc];
        v74 = sub_2213189D8(v101, v71, v72, v73);
        v43 = objc_msgSend_initWithDecimal_baseUnit_(v70, v75, v92, v74);
      }

      else
      {
        v76 = [TSCENumberValue alloc];
        TSUDecimal::operator=();
        v80 = sub_2213189D8(v101, v77, v78, v79);
        v43 = objc_msgSend_initWithDecimal_baseUnit_(v76, v81, &v103, v80);
      }
    }

    v16 = v43;
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(context, v24, v12, v25);
LABEL_15:

LABEL_16:

  return v16;
}

@end