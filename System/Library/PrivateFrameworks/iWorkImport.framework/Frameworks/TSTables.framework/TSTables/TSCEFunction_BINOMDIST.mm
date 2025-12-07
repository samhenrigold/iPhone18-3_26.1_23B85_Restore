@interface TSCEFunction_BINOMDIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BINOMDIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v84[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v84);
  v11 = v84[0];
  v15 = objc_msgSend_trunc(v10, v12, v13, v14);

  v83._decimal.w[0] = objc_msgSend_decimalRepresentation(v15, v16, v17, v18);
  v83._decimal.w[1] = v19;
  if (v11)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v19, v11, v20);
    goto LABEL_19;
  }

  v22 = *(*arguments + 8);
  v82 = 0;
  v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v82);
  v11 = v82;
  v28 = objc_msgSend_trunc(v24, v25, v26, v27);

  v81._decimal.w[0] = objc_msgSend_decimalRepresentation(v28, v29, v30, v31);
  v81._decimal.w[1] = v32;
  if (!v11)
  {
    v34 = *(*arguments + 16);
    v80 = 0;
    v70 = v34;
    v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, context, spec, 2, &v80);
    v11 = v80;
    v79._decimal.w[0] = objc_msgSend_decimalRepresentation(v36, v37, v38, v39);
    v79._decimal.w[1] = v40;
    if (v11)
    {
      v21 = objc_msgSend_raiseErrorOrConvert_(context, v40, v11, v41);
LABEL_17:

      goto LABEL_18;
    }

    v42 = *(*arguments + 24);
    v78 = 0;
    v69 = v42;
    v44 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v42, v43, context, spec, 3, &v78);
    v11 = v78;
    if (v11)
    {
      v47 = objc_msgSend_raiseErrorOrConvert_(context, v45, v11, v46);
    }

    else
    {
      if ((TSUDecimal::operator<=() & 1) == 0)
      {
        v57 = objc_msgSend_functionName(spec, v48, v49, v50);
        v59 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v58, v57, 1, 2, 1, 1);
        v21 = objc_msgSend_raiseErrorOrConvert_(context, v60, v59, v61);

LABEL_16:
        goto LABEL_17;
      }

      TSUDecimal::operator=();
      if (v44)
      {
        pthread_mutex_lock(&stru_27CFB4098);
        TSUDecimal::doubleValue(&v83);
        v53 = v52;
        TSUDecimal::doubleValue(&v81);
        v55 = v54;
        TSUDecimal::doubleValue(&v79);
        sub_22168AAA0(v53, v55, v56);
        TSUDecimal::operator=();
        pthread_mutex_unlock(&stru_27CFB4098);
      }

      else
      {
        v77[0] = objc_msgSend_COMBINFunctionWithN_K_(TSCEFunction_COMBIN, v51, v81._decimal.w[0], v81._decimal.w[1], v83._decimal.w[0], v83._decimal.w[1]);
        v77[1] = v62;
        v63 = sub_2212B2BA4(&v79, &v83);
        v65 = v64;
        TSUDecimal::operator=();
        TSUDecimal::operator-=();
        v73 = v72[1];
        v71 = v81;
        TSUDecimal::operator-=();
        v72[0] = v71;
        v74 = sub_2212B2BA4(&v73, v72);
        v75 = v66;
        v71._decimal.w[0] = v63;
        v71._decimal.w[1] = v65;
        TSUDecimal::operator*=();
        v76 = v71;
        TSUDecimal::operator*=();
      }

      TSCEFormat::TSCEFormat(&v71, 256);
      v47 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v67, v77, &v71);
    }

    v21 = v47;
    goto LABEL_16;
  }

  v21 = objc_msgSend_raiseErrorOrConvert_(context, v32, v11, v33);
LABEL_18:

LABEL_19:

  return v21;
}

@end