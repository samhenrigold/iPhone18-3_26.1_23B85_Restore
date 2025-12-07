@interface TSCEFunction_NPV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NPV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v75 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v75);
  v11 = v75;
  v73 = objc_msgSend_decimalRepresentation(v10, v12, v13, v14);
  v74 = v15;
  if (v11)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
  }

  else
  {
    TSUDecimal::operator=();
    if (TSUDecimal::operator==())
    {
      v21 = objc_msgSend_divideByZeroError(TSCEError, v18, v19, v20);
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v22, v21, v23);

      v11 = 0;
    }

    else
    {
      v24 = objc_msgSend_calcEngine(context, v18, v19, v20);
      sub_221327DF4(v71, spec, v24);

      v25 = *(*arguments + 8);
      v70 = 0;
      v60 = v25;
      v27 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v25, v26, context, spec, 1, 1, &v70);
      v28 = v70;
      if (v28)
      {
        v11 = v28;
        v17 = objc_msgSend_raiseErrorOrConvert_(context, v29, v28, v30);
      }

      else
      {
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v34 = objc_msgSend_count(v27, v31, v32, v33);
        contextCopy = context;
        v63[0] = contextCopy;
        v63[1] = spec;
        v64 = 0;
        v65[0] = 1;
        *(v65 + 7) = 0;
        v66 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v67 = 0;
        v68 = 0;
        if (v34)
        {
          v38 = 0;
          while (1)
          {
            v39 = objc_msgSend_valueAtIndex_accessContext_(v27, v35, v38, v63);
            if ((objc_msgSend_isNil(v39, v40, v41, v42) & 1) == 0)
            {
              v62 = 0;
              v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v43, contextCopy, spec, 1, &v62);
              v11 = v62;
              if (v11)
              {
                v17 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v45, v11, v46);

                goto LABEL_20;
              }

              sub_2213188C0(v71, v44);
              TSUDecimal::operator=();
              v76 = v61;
              TSUDecimal::operator+=();
              TSUDecimal::operator*=();
              *&v76 = objc_msgSend_decimalRepresentation(v44, v47, v48, v49);
              *(&v76 + 1) = v50;
              TSUDecimal::operator/=();
              TSUDecimal::operator+=();
              v51 = v72;

              if (v51)
              {
                break;
              }
            }

            if (v34 == ++v38)
            {
              goto LABEL_16;
            }
          }
        }

LABEL_16:
        if (v72)
        {
          v52 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v35, v72, v36);
        }

        else
        {
          v53 = [TSCENumberValue alloc];
          v57 = sub_2213189D8(v71, v54, v55, v56);
          v52 = objc_msgSend_initWithDecimal_baseUnit_(v53, v58, v69, v57);
        }

        v17 = v52;
        v11 = 0;
LABEL_20:
      }
    }
  }

  return v17;
}

@end