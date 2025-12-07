@interface TSCEFunction_NEGBINOMDIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NEGBINOMDIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v67[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v67);
  v11 = v67[0];
  v15 = objc_msgSend_trunc(v10, v12, v13, v14);

  v21 = objc_msgSend_decimalRepresentation(v15, v16, v17, v18);
  v22 = v19;
  v66._decimal.w[0] = v21;
  v66._decimal.w[1] = v19;
  if (v11)
  {
    v23 = objc_msgSend_raiseErrorOrConvert_(context, v19, v11, v20);
  }

  else
  {
    v24 = *(*arguments + 8);
    v65 = 0;
    v55 = v24;
    v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v25, context, spec, 1, &v65);
    v11 = v65;
    v30 = objc_msgSend_trunc(v26, v27, v28, v29);

    v64._decimal.w[0] = objc_msgSend_decimalRepresentation(v30, v31, v32, v33);
    v64._decimal.w[1] = v34;
    if (v11)
    {
      v23 = objc_msgSend_raiseErrorOrConvert_(context, v34, v11, v35);
    }

    else
    {
      v36 = *(*arguments + 16);
      v63 = 0;
      v38 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v36, v37, context, spec, 2, &v63);
      v11 = v63;
      v62._decimal.w[0] = objc_msgSend_decimalRepresentation(v38, v39, v40, v41);
      v62._decimal.w[1] = v42;
      if (v11)
      {
        v44 = objc_msgSend_raiseErrorOrConvert_(context, v42, v11, v43);
      }

      else
      {
        v56 = v66;
        TSUDecimal::operator+=();
        TSUDecimal::operator=();
        TSUDecimal::operator-=();
        v61[0] = objc_msgSend_COMBINFunctionWithN_K_(TSCEFunction_COMBIN, v45, v56._decimal.w[0], v56._decimal.w[1], v21, v22);
        v61[1] = v46;
        TSUDecimal::doubleValue(&v62);
        v48 = v47;
        TSUDecimal::doubleValue(&v64);
        pow(v48, v49);
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        TSUDecimal::operator-=();
        v58 = v57;
        TSUDecimal::doubleValue(&v58);
        v51 = v50;
        TSUDecimal::doubleValue(&v66);
        pow(v51, v52);
        TSUDecimal::operator=();
        v59 = v57;
        TSUDecimal::operator*=();
        v60 = v56;
        TSUDecimal::operator*=();
        TSCEFormat::TSCEFormat(&v56, 256);
        v44 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v53, v61, &v56);
      }

      v23 = v44;
    }
  }

  return v23;
}

@end