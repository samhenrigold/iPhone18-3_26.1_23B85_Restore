@interface TSCEFunction_SYD
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SYD

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec);
  sub_221327DF4(v79, spec, v8);

  v9 = **arguments;
  v78 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v78);
  v12 = v78;
  sub_2213188C0(v79, v11);
  v16 = objc_msgSend_decimalRepresentation(v11, v13, v14, v15);
  if (v12)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v17, v12, v18);
    goto LABEL_18;
  }

  v20 = v16;
  v21 = v17;
  v22 = *(*arguments + 8);
  v77 = 0;
  v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v77);
  v12 = v77;
  sub_2213188C0(v79, v24);
  v76[1] = objc_msgSend_decimalRepresentation(v24, v25, v26, v27);
  v76[2] = v28;
  if (!v12)
  {
    if (v80)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(context, v28, v80, v29);
      v12 = 0;
      goto LABEL_17;
    }

    v70 = v22;
    v30 = *(*arguments + 16);
    v76[0] = 0;
    v69 = v30;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 2, v76);
    v12 = v76[0];
    v68 = v32;
    v33 = v32;
    v22 = v70;
    *&v75 = objc_msgSend_decimalRepresentation(v33, v34, v35, v36);
    *(&v75 + 1) = v37;
    if (v12)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(context, v37, v12, v38);
LABEL_16:

      goto LABEL_17;
    }

    v39 = *(*arguments + 24);
    v74 = 0;
    v67 = v39;
    v41 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v40, context, spec, 3, &v74);
    v12 = v74;
    v72 = objc_msgSend_decimalRepresentation(v41, v42, v43, v44);
    v73 = v45;
    if (v12)
    {
      v47 = objc_msgSend_raiseErrorOrConvert_(context, v45, v12, v46);
    }

    else
    {
      if (TSUDecimal::operator<())
      {
        v51 = objc_msgSend_functionName(spec, v48, v49, v50);
        v53 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v52, v51, 3, 4, 0, 1);
        v19 = objc_msgSend_raiseErrorOrConvert_(context, v54, v53, v55);

LABEL_15:
        goto LABEL_16;
      }

      *&v81 = v20;
      *(&v81 + 1) = v21;
      TSUDecimal::operator-=();
      v56 = v81;
      v81 = v75;
      TSUDecimal::operator-=();
      v57 = v81;
      TSUDecimal::operator=();
      v81 = v57;
      TSUDecimal::operator+=();
      v81 = v56;
      TSUDecimal::operator*=();
      v58 = v81;
      TSUDecimal::operator=();
      v81 = v58;
      TSUDecimal::operator*=();
      v59 = v81;
      TSUDecimal::operator=();
      v81 = v75;
      TSUDecimal::operator+=();
      v81 = v75;
      TSUDecimal::operator*=();
      v81 = v59;
      TSUDecimal::operator/=();
      v71 = v81;
      v60 = [TSCENumberValue alloc];
      v64 = sub_2213189D8(v79, v61, v62, v63);
      v47 = objc_msgSend_initWithDecimal_baseUnit_(v60, v65, &v71, v64);
    }

    v19 = v47;
    goto LABEL_15;
  }

  v19 = objc_msgSend_raiseErrorOrConvert_(context, v28, v12, v29);
LABEL_17:

LABEL_18:

  return v19;
}

@end