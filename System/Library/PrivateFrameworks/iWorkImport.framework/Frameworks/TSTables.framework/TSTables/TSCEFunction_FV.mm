@interface TSCEFunction_FV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_FV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec);
  sub_221327DF4(v90, spec, v8);

  v9 = **arguments;
  v89 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, &v89);
  v12 = v89;
  v88[1] = objc_msgSend_decimalRepresentation(v11, v13, v14, v15);
  v88[2] = v16;
  if (v12)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v16, v12, v17);
    goto LABEL_35;
  }

  v19 = *(*arguments + 8);
  v88[0] = 0;
  v21 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v20, context, spec, 1, v88);
  v12 = v88[0];
  objc_msgSend_doubleRepresentation(v21, v22, v23, v24);
  if (!v12)
  {
    v27 = *(*arguments + 16);
    v87 = 0;
    v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v27, v28, context, spec, 2, &v87);
    v12 = v87;
    sub_2213188C0(v90, v29);
    v79 = objc_msgSend_decimalRepresentation(v29, v30, v31, v32);
    if (v12)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v33, v12, v34);
LABEL_33:

      goto LABEL_34;
    }

    v78 = v33;
    if (v91)
    {
      v35 = objc_msgSend_raiseErrorOrConvert_(context, v33, v91, v34);
    }

    else
    {
      TSUDecimal::operator=();
      if (*(arguments + 1) - *arguments >= 0x19uLL)
      {
        v76 = *(*arguments + 24);
        if ((objc_msgSend_isTokenOrEmptyArg(v76, v38, v39, v40) & 1) == 0)
        {
          v86[0] = 0;
          v75 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v76, v41, context, spec, 3, v86);
          v12 = v86[0];
          if (v12)
          {
            v18 = objc_msgSend_raiseErrorOrConvert_(context, v42, v12, v43);

            goto LABEL_33;
          }

          sub_2213188C0(v90, v75);
          v86[1] = objc_msgSend_decimalRepresentation(v75, v44, v45, v46);
          v86[2] = v47;
        }
      }

      if (v91)
      {
        v35 = objc_msgSend_raiseErrorOrConvert_(context, v36, v91, v37);
      }

      else
      {
        if (*(arguments + 1) - *arguments < 0x21uLL)
        {
          v53 = 0;
        }

        else
        {
          v48 = *(*arguments + 32);
          if (objc_msgSend_isTokenOrEmptyArg(v48, v49, v50, v51))
          {
            v53 = 0;
          }

          else
          {
            v85 = 0;
            v77 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v48, v52, context, spec, 4, &v85);
            v12 = v85;
            if (v12)
            {
              v18 = objc_msgSend_raiseErrorOrConvert_(context, v54, v12, v56);

              goto LABEL_33;
            }

            v92._decimal.w[0] = objc_msgSend_decimalRepresentation(v77, v54, v55, v56);
            v92._decimal.w[1] = v57;
            v53 = TSUDecimal::isZero(&v92) ^ 1;
          }
        }

        TSUDecimal::operator=();
        TSUDecimal::operator=();
        if (TSUDecimal::operator==())
        {
          v58 = TSUDecimal::operator-();
          v60 = v59;
          TSUDecimal::operator=();
          v92._decimal.w[0] = v79;
          v92._decimal.w[1] = v78;
          TSUDecimal::operator*=();
          v83 = v92;
          v92._decimal.w[0] = v58;
          v92._decimal.w[1] = v60;
          TSUDecimal::operator-=();
        }

        else
        {
          TSUDecimal::operator=();
          v92 = v81;
          TSUDecimal::operator+=();
          v82 = v92;
          TSUDecimal::operator=();
          v83._decimal.w[0] = sub_2212B2BA4(&v82, &v92);
          v83._decimal.w[1] = v61;
          if (v53)
          {
            v92._decimal.w[0] = TSUDecimal::operator-();
            v92._decimal.w[1] = v62;
            TSUDecimal::operator*=();
            v64 = v92._decimal.w[0];
            v63 = v92._decimal.w[1];
            TSUDecimal::operator=();
            v92 = v80;
            TSUDecimal::operator+=();
            v92._decimal.w[0] = v79;
            v92._decimal.w[1] = v78;
            TSUDecimal::operator*=();
            v66 = v92._decimal.w[0];
            v65 = v92._decimal.w[1];
            TSUDecimal::operator=();
            v92 = v83;
            TSUDecimal::operator-=();
            TSUDecimal::operator/=();
            v92._decimal.w[0] = v66;
            v92._decimal.w[1] = v65;
          }

          else
          {
            v92._decimal.w[0] = TSUDecimal::operator-();
            v92._decimal.w[1] = v67;
            TSUDecimal::operator*=();
            v64 = v92._decimal.w[0];
            v63 = v92._decimal.w[1];
            TSUDecimal::operator=();
            v92 = v83;
            TSUDecimal::operator-=();
            TSUDecimal::operator/=();
            v92._decimal.w[0] = v79;
            v92._decimal.w[1] = v78;
          }

          TSUDecimal::operator*=();
          v82 = v92;
          v92._decimal.w[0] = v64;
          v92._decimal.w[1] = v63;
          TSUDecimal::operator-=();
        }

        v84 = v92;
        v68 = [TSCENumberValue alloc];
        v72 = sub_2213189D8(v90, v69, v70, v71);
        v35 = objc_msgSend_initWithDecimal_baseUnit_(v68, v73, &v84, v72);
      }
    }

    v18 = v35;
    v12 = 0;
    goto LABEL_33;
  }

  v18 = objc_msgSend_raiseErrorOrConvert_(context, v25, v12, v26);
LABEL_34:

LABEL_35:

  return v18;
}

@end