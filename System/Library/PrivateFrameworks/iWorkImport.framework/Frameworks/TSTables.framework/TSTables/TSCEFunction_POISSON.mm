@interface TSCEFunction_POISSON
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_POISSON

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v103[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v103);
  v11 = v103[0];
  v102._decimal.w[0] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14);
  v102._decimal.w[1] = v15;
  TSUDecimal::doubleValue(&v102);
  if (v11)
  {
    v20 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v18);
    goto LABEL_20;
  }

  v21 = v19;
  if (!objc_msgSend_hasUnits(v10, v16, v17, v18))
  {
    v25 = *(*arguments + 8);
    v101 = 0;
    v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v30, context, spec, 1, &v101);
    v31 = v101;
    if (v31)
    {
      v11 = v31;
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v32, v31, v34);
      goto LABEL_19;
    }

    v100._decimal.w[0] = objc_msgSend_decimalRepresentation(v27, v32, v33, v34);
    v100._decimal.w[1] = v35;
    if (objc_msgSend_hasUnits(v27, v35, v36, v37))
    {
      v41 = objc_msgSend_functionName(spec, v38, v39, v40);
      v43 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v42, v41, 2);
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v44, v43, v45);

      v11 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v41 = *(*arguments + 16);
    v99 = 0;
    v47 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v41, v46, context, spec, 2, &v99);
    v11 = v99;
    if (v11)
    {
      v50 = objc_msgSend_raiseErrorOrConvert_(context, v48, v11, v49);
LABEL_11:
      v20 = v50;
      goto LABEL_18;
    }

    TSUDecimal::operator=();
    TSUDecimal::operator=();
    if ((TSUDecimal::operator<() & 1) != 0 || (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
    {
      v57 = objc_msgSend_functionName(spec, v51, v52, v53);
      v59 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v63, 1, v57, 1, 1, 0.0, 4294967300.0);
      v62 = objc_msgSend_raiseErrorOrConvert_(context, v64, v59, v65);
    }

    else
    {
      TSUDecimal::operator=();
      if (!TSUDecimal::operator<())
      {
        v67 = v21;
        if (v47)
        {
          v97._decimal.w[0] = TSUDecimal::operator-();
          v97._decimal.w[1] = v68;
          v96._decimal.w[0] = sub_2216BA71C(&v97);
          v96._decimal.w[1] = v69;
          TSUDecimal::operator=();
          if (TSUDecimal::operator<=())
          {
            TSUDecimal::operator=();
            if (v67 >= 0xF4241)
            {
              v57 = objc_msgSend_functionName(spec, v70, v71, v72);
              v59 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v73, v57, v74);
              v62 = objc_msgSend_raiseErrorOrConvert_(context, v75, v59, v76);
              goto LABEL_17;
            }

            v95._decimal.w[0] = sub_22131C960(&v100);
            v95._decimal.w[1] = v86;
            TSUDecimal::operator=();
            if (v67)
            {
              for (i = 1; i <= v67; ++i)
              {
                TSUDecimal::operator=();
                sub_22131C960(v94);
                TSUDecimal::operator+=();
                TSUDecimal::operator=();
                TSUDecimal::operator*=();
                v92 = v91;
                v89 = v97;
                TSUDecimal::operator+=();
                TSUDecimal::operator-=();
                v93 = v89;
                v94[0]._decimal.w[0] = sub_2216BA71C(&v93);
                v94[0]._decimal.w[1] = v88;
                TSUDecimal::operator=();
                if (TSUDecimal::operator<())
                {
                  TSUDecimal::operator=();
                  if (TSUDecimal::operator==())
                  {
                    break;
                  }
                }

                TSUDecimal::operator+=();
              }
            }
          }

          else
          {
            TSUDecimal::operator=();
            v98 = v96;
            if (v67)
            {
              v79 = 2;
              do
              {
                TSUDecimal::operator=();
                TSUDecimal::operator*=();
                TSUDecimal::operator=();
                v94[0]._decimal.w[0] = sub_2212B2BA4(&v100, &v93);
                v94[0]._decimal.w[1] = v80;
                v89 = v96;
                TSUDecimal::operator*=();
                TSUDecimal::operator/=();
                v94[1] = v89;
                TSUDecimal::operator+=();
                if (TSUDecimal::isInf(&v95))
                {
                  break;
                }

                isNaN = TSUDecimal::isNaN(&v98);
                v82 = v79++ > v67 ? 1 : isNaN;
              }

              while ((v82 & 1) == 0);
            }
          }

          TSUDecimal::operator=();
          if ((TSUDecimal::operator<=() & 1) == 0)
          {
            TSUDecimal::operator=();
          }
        }

        else
        {
          v89._decimal.w[0] = TSUDecimal::operator-();
          v89._decimal.w[1] = v77;
          v97._decimal.w[0] = sub_2216BA71C(&v89);
          v97._decimal.w[1] = v78;
          if (v67)
          {
            v96 = v100;
          }

          else
          {
            TSUDecimal::operator=();
          }

          TSUDecimal::operator*=();
          if (v67 >= 2)
          {
            for (j = 2; j <= v67; ++j)
            {
              TSUDecimal::operator=();
              if (TSUDecimal::operator<=())
              {
                break;
              }

              TSUDecimal::operator=();
              v89 = v100;
              TSUDecimal::operator/=();
              v95 = v89;
              TSUDecimal::operator*=();
            }
          }

          v98 = v96;
        }

        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v83, context, v84);
        }

        else
        {
          v89 = 0;
          v90 = 0u;
        }

        v50 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v83, &v98, &v89);
        goto LABEL_11;
      }

      v57 = objc_msgSend_functionName(spec, v54, v55, v56);
      v59 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v58, 2, v57, 0, 0.0);
      v62 = objc_msgSend_raiseErrorOrConvert_(context, v60, v59, v61);
    }

LABEL_17:
    v20 = v62;

    goto LABEL_18;
  }

  v25 = objc_msgSend_functionName(spec, v22, v23, v24);
  v27 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v26, v25, 1);
  v20 = objc_msgSend_raiseErrorOrConvert_(context, v28, v27, v29);
  v11 = 0;
LABEL_19:

LABEL_20:

  return v20;
}

@end