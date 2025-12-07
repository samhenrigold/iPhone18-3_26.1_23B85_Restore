@interface TSCEFunction_ISPMT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ISPMT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v81, 0, sizeof(v81));
  }

  sub_22114F414(&v82, &v81);
  v80 = 0;
  v13 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v80);
  v14 = v80;
  v18 = objc_msgSend_decimalRepresentation(v13, v15, v16, v17);
  if (v14)
  {
    v21 = objc_msgSend_raiseErrorOrConvert_(context, v19, v14, v20);
    goto LABEL_28;
  }

  v22 = v18;
  v23 = v19;
  v24 = *(*arguments + 8);
  v27 = v24;
  if (v24)
  {
    objc_msgSend_formatWithContext_(v24, v25, context, v26);
  }

  else
  {
    memset(&v81, 0, sizeof(v81));
  }

  sub_22114F414(&v82, &v81);
  v79 = 0;
  v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v27, v28, context, spec, 1, &v79);
  v14 = v79;
  v78[1] = objc_msgSend_decimalRepresentation(v29, v30, v31, v32);
  v78[2] = v33;
  if (!v14)
  {
    v35 = *(*arguments + 16);
    v71 = v29;
    v72 = v35;
    if (v35)
    {
      objc_msgSend_formatWithContext_(v35, v36, context, v37);
    }

    else
    {
      memset(&v81, 0, sizeof(v81));
    }

    sub_22114F414(&v82, &v81);
    v78[0] = 0;
    v39 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v72, v38, context, spec, 2, v78);
    v14 = v78[0];
    v70 = v39;
    v40 = v39;
    v29 = v71;
    *&v77 = objc_msgSend_decimalRepresentation(v40, v41, v42, v43);
    *(&v77 + 1) = v44;
    if (v14)
    {
      v21 = objc_msgSend_raiseErrorOrConvert_(context, v44, v14, v45);
LABEL_26:

      goto LABEL_27;
    }

    v46 = *(*arguments + 24);
    v69 = v46;
    if (v46)
    {
      objc_msgSend_formatWithContext_(v46, v47, context, v48);
    }

    else
    {
      memset(&v81, 0, sizeof(v81));
    }

    sub_22114F414(&v82, &v81);
    v76 = 0;
    v50 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v69, v49, context, spec, 3, &v76);
    v14 = v76;
    v74 = objc_msgSend_decimalRepresentation(v50, v51, v52, v53);
    v75 = v54;
    if (v14)
    {
      v56 = objc_msgSend_raiseErrorOrConvert_(context, v54, v14, v55);
    }

    else
    {
      TSUDecimal::operator=();
      if (TSUDecimal::operator==())
      {
        v60 = objc_msgSend_divideByZeroError(TSCEError, v57, v58, v59);
        v21 = objc_msgSend_raiseErrorOrConvert_(context, v61, v60, v62);

LABEL_25:
        goto LABEL_26;
      }

      v63 = TSUDecimal::operator-();
      v65 = v64;
      v81._tskFormat = v22;
      *&v81._formatType = v23;
      TSUDecimal::operator/=();
      v81._tskFormat = v63;
      *&v81._formatType = v65;
      TSUDecimal::operator*=();
      v66 = *&v81._tskFormat;
      *&v81._tskFormat = v77;
      TSUDecimal::operator-=();
      *&v81._tskFormat = v66;
      TSUDecimal::operator*=();
      v73 = *&v81._tskFormat;
      sub_221256020(&v82, &v81);
      v56 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v67, &v73, &v81);
    }

    v21 = v56;
    goto LABEL_25;
  }

  v21 = objc_msgSend_raiseErrorOrConvert_(context, v33, v14, v34);
LABEL_27:

LABEL_28:
  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  return v21;
}

@end