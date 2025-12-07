@interface TSCEFunction_PV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec);
  sub_221327DF4(v91, spec, v8);

  v9 = **arguments;
  v90 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v90);
  v12 = v90;
  v89[1] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15);
  v89[2] = v16;
  if (v12)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v16, v12, v17);
    goto LABEL_33;
  }

  v19 = *(*arguments + 8);
  v89[0] = 0;
  v21 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v20, context, spec, 1, v89);
  v12 = v89[0];
  v88._decimal.w[0] = objc_msgSend_decimalRepresentation(v21, v22, v23, v24);
  v88._decimal.w[1] = v25;
  if (!v12)
  {
    v27 = *(*arguments + 16);
    v87 = 0;
    v79 = v27;
    v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v27, v28, context, spec, 2, &v87);
    v12 = v87;
    sub_2213188C0(v91, v29);
    v33 = objc_msgSend_decimalRepresentation(v29, v30, v31, v32);
    v77 = v34;
    v78 = v33;
    if (v12)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v34, v12, v35);
LABEL_31:

      goto LABEL_32;
    }

    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments >= 0x19uLL)
    {
      v76 = *(*arguments + 24);
      if ((objc_msgSend_isTokenOrEmptyArg(v76, v38, v39, v40) & 1) == 0)
      {
        v86[0] = 0;
        v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v76, v41, context, spec, 3, v86);
        v12 = v86[0];
        sub_2213188C0(v91, v42);
        v86[1] = objc_msgSend_decimalRepresentation(v42, v43, v44, v45);
        v86[2] = v46;
        if (v12)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v46, v12, v47);

          goto LABEL_31;
        }
      }
    }

    if (v92)
    {
      v48 = objc_msgSend_raiseErrorOrConvert_(context, v36, v92, v37);
    }

    else
    {
      if (*(arguments + 1) - *arguments < 0x21uLL)
      {
        v54 = 0;
      }

      else
      {
        v49 = *(*arguments + 32);
        if (objc_msgSend_isTokenOrEmptyArg(v49, v50, v51, v52))
        {
          v54 = 0;
        }

        else
        {
          v85 = 0;
          v55 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v49, v53, context, spec, 4, &v85);
          v12 = v85;
          if (v12)
          {
            v18 = objc_msgSend_raiseErrorOrConvert_(context, v56, v12, v58);

            goto LABEL_31;
          }

          v93._decimal.w[0] = objc_msgSend_decimalRepresentation(v55, v56, v57, v58);
          v93._decimal.w[1] = v59;
          v54 = TSUDecimal::isZero(&v93) ^ 1;
        }
      }

      TSUDecimal::operator=();
      TSUDecimal::operator=();
      if (TSUDecimal::operator==())
      {
        v60 = TSUDecimal::operator-();
        v62 = v61;
        v93._decimal.w[0] = v78;
        v93._decimal.w[1] = v77;
        TSUDecimal::operator*=();
        v83 = v93;
        v93._decimal.w[0] = v60;
        v93._decimal.w[1] = v62;
        TSUDecimal::operator-=();
      }

      else
      {
        TSUDecimal::operator=();
        v93 = v81;
        TSUDecimal::operator+=();
        v82 = v93;
        v83._decimal.w[0] = sub_2212B2BA4(&v82, &v88);
        v83._decimal.w[1] = v63;
        v65 = TSUDecimal::operator-();
        if (v54)
        {
          v66 = v64;
          TSUDecimal::operator=();
          v93 = v80;
          TSUDecimal::operator+=();
          v93._decimal.w[0] = v78;
          v93._decimal.w[1] = v77;
          TSUDecimal::operator*=();
          v68 = v93._decimal.w[0];
          v67 = v93._decimal.w[1];
          TSUDecimal::operator=();
          v93 = v83;
          TSUDecimal::operator-=();
          TSUDecimal::operator/=();
          v93._decimal.w[0] = v68;
          v93._decimal.w[1] = v67;
        }

        else
        {
          v66 = v64;
          TSUDecimal::operator=();
          v93 = v83;
          TSUDecimal::operator-=();
          TSUDecimal::operator/=();
          v93._decimal.w[0] = v78;
          v93._decimal.w[1] = v77;
        }

        TSUDecimal::operator*=();
        v82 = v93;
        v93._decimal.w[0] = v65;
        v93._decimal.w[1] = v66;
        TSUDecimal::operator-=();
        TSUDecimal::operator/=();
      }

      v84 = v93;
      v69 = [TSCENumberValue alloc];
      v73 = sub_2213189D8(v91, v70, v71, v72);
      v48 = objc_msgSend_initWithDecimal_baseUnit_(v69, v74, &v84, v73);
    }

    v18 = v48;
    v12 = 0;
    goto LABEL_31;
  }

  v18 = objc_msgSend_raiseErrorOrConvert_(context, v25, v12, v26);
LABEL_32:

LABEL_33:

  return v18;
}

@end