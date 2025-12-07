@interface TSCEFunction_RATE
+ (TSUDecimal)solveByNewtonsWithNumPeriods:(const TSUDecimal *)periods pmt:(const TSUDecimal *)pmt pv:(const TSUDecimal *)pv fv:(const TSUDecimal *)fv dueBeginning:(BOOL)beginning initial:(const TSUDecimal *)initial context:(id)context;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_RATE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v106[0] = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, v106);
  v12 = v106[0];
  objc_msgSend_doubleRepresentation(v11, v13, v14, v15);
  if (v12)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v16, v12, v17);
    goto LABEL_44;
  }

  v19 = *(*arguments + 8);
  v105 = 0;
  v21 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v19, v20, context, spec, 1, &v105);
  v12 = v105;
  *&v104 = objc_msgSend_decimalRepresentation(v21, v22, v23, v24);
  *(&v104 + 1) = v25;
  if (!v12)
  {
    v90 = v19;
    v27 = *(*arguments + 16);
    v103 = 0;
    v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v27, v28, context, spec, 2, &v103);
    v12 = v103;
    v89 = v29;
    v102[0] = objc_msgSend_decimalRepresentation(v29, v30, v31, v32);
    v102[1] = v33;
    if (v12)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v33, v12, v34);
LABEL_42:

      v19 = v90;
      goto LABEL_43;
    }

    v88 = v27;
    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      v46 = 0;
    }

    else
    {
      v35 = *(*arguments + 24);
      if ((objc_msgSend_isTokenOrEmptyArg(v35, v36, v37, v38) & 1) == 0)
      {
        v100 = 0;
        v40 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v35, v39, context, spec, 3, &v100);
        v12 = v100;
        v101[0] = objc_msgSend_decimalRepresentation(v40, v41, v42, v43);
        v101[1] = v44;
        if (v12)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v44, v12, v45);

LABEL_19:
LABEL_27:
          v27 = v88;
          goto LABEL_42;
        }
      }

      if (*(arguments + 1) - *arguments < 0x21uLL)
      {
        v46 = 0;
      }

      else
      {
        v35 = *(*arguments + 32);
        if (objc_msgSend_isTokenOrEmptyArg(v35, v47, v48, v49))
        {
          v46 = 0;
        }

        else
        {
          v99 = 0;
          v46 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v35, v50, context, spec, 4, &v99);
          v51 = v99;
          if (v51)
          {
            v12 = v51;
            v18 = objc_msgSend_raiseErrorOrConvert_(context, v52, v51, v53);
            goto LABEL_19;
          }
        }
      }

      v27 = v88;
    }

    TSUDecimal::operator=();
    if (*(arguments + 1) - *arguments >= 0x29uLL)
    {
      v54 = *(*arguments + 40);
      if ((objc_msgSend_isTokenOrEmptyArg(v54, v55, v56, v57) & 1) == 0 && objc_msgSend_nativeType(v54, v58, v59, v60))
      {
        v97 = 0;
        v62 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v54, v61, context, spec, 5, &v97);
        v12 = v97;
        v98[0] = objc_msgSend_decimalRepresentation(v62, v63, v64, v65);
        v98[1] = v66;
        if (v12)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v66, v12, v67);

          goto LABEL_27;
        }

        v27 = v88;
      }
    }

    TSUDecimal::operator=();
    *&v93._tskFormat = v104;
    TSUDecimal::operator*=();
    TSUDecimal::operator+=();
    TSUDecimal::operator+=();
    tskFormat = v93._tskFormat;
    v96 = *&v93._formatType;
    TSUDecimal::operator=();
    if (TSUDecimal::operator==())
    {
      v18 = objc_msgSend_zero(TSCENumberValue, v68, v69, v70);
      TSCEFormat::TSCEFormat(&v92, 258);
      TSCEFormat::TSCEFormat(&v93, &v92);
      objc_msgSend_setFormat_(v18, v71, &v93, v72);
    }

    else
    {
      TSUDecimal::operator=();
      if (TSUDecimal::operator==())
      {
        TSUDecimal::operator=();
      }

      TSUDecimal::operator=();
      v94._decimal.w[0] = objc_msgSend_solveByNewtonsWithNumPeriods_pmt_pv_fv_dueBeginning_initial_context_(self, v73, &v93, &v104, v102, v101, v46, v98, context);
      v94._decimal.w[1] = v74;
      if (TSUDecimal::isNaN(&v94))
      {
        TSUDecimal::operator=();
        if ((TSUDecimal::operator==() & 1) == 0)
        {
          TSUDecimal::operator=();
          TSUDecimal::operator=();
          v94._decimal.w[0] = objc_msgSend_solveByNewtonsWithNumPeriods_pmt_pv_fv_dueBeginning_initial_context_(self, v75, &v93, &v104, v102, v101, v46, v91, context);
          v94._decimal.w[1] = v76;
        }
      }

      if (TSUDecimal::isNaN(&v94))
      {
        v80 = objc_msgSend_functionName(spec, v77, v78, v79);
        v83 = objc_msgSend_numberDoesNotConvergeWithEstimateErrorForFunctionName_(TSCEError, v81, v80, v82);
        v18 = objc_msgSend_raiseErrorOrConvert_(context, v84, v83, v85);
      }

      else
      {
        TSCEFormat::TSCEFormat(&v93, 258);
        v18 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v86, &v94, &v93);
      }

      v27 = v88;
    }

    v12 = 0;
    goto LABEL_42;
  }

  v18 = objc_msgSend_raiseErrorOrConvert_(context, v25, v12, v26);
LABEL_43:

LABEL_44:

  return v18;
}

+ (TSUDecimal)solveByNewtonsWithNumPeriods:(const TSUDecimal *)periods pmt:(const TSUDecimal *)pmt pv:(const TSUDecimal *)pv fv:(const TSUDecimal *)fv dueBeginning:(BOOL)beginning initial:(const TSUDecimal *)initial context:(id)context
{
  beginningCopy = beginning;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v61 = *initial;
  TSUDecimal::operator=();
  v56 = xmmword_2217E1440;
  v57 = xmmword_2217E1440;
  v55 = xmmword_2217E1440;
  v14 = 500;
  do
  {
    TSUDecimal::operator=();
    v62 = v53;
    TSUDecimal::operator+=();
    v54 = v62;
    TSUDecimal::doubleValue(&v54);
    v16 = v15;
    TSUDecimal::doubleValue(periods);
    pow(v16, v17);
    TSUDecimal::operator=();
    v60 = v62;
    TSUDecimal::operator=();
    v62 = *pv;
    TSUDecimal::operator*=();
    if (beginningCopy)
    {
      v19 = v62._decimal.w[0];
      v18 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v50;
      TSUDecimal::operator+=();
      v51 = v62;
      v62 = *pmt;
      TSUDecimal::operator*=();
      v21 = v62._decimal.w[0];
      v20 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v60;
      TSUDecimal::operator-=();
      TSUDecimal::operator/=();
      v62._decimal.w[0] = v21;
      v62._decimal.w[1] = v20;
      TSUDecimal::operator*=();
      v62._decimal.w[0] = v19;
      v62._decimal.w[1] = v18;
      TSUDecimal::operator+=();
      TSUDecimal::operator+=();
      v54 = v62;
      v62 = *pv;
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      v23 = v62._decimal.w[0];
      v22 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v51;
      TSUDecimal::operator+=();
      v53 = v62;
      v62._decimal.w[0] = v23;
      v62._decimal.w[1] = v22;
      TSUDecimal::operator/=();
      v25 = v62._decimal.w[0];
      v24 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v60;
      TSUDecimal::operator-=();
      v62 = *pmt;
      TSUDecimal::operator*=();
      TSUDecimal::operator/=();
      v50 = v62;
      v62._decimal.w[0] = v25;
      v62._decimal.w[1] = v24;
      TSUDecimal::operator+=();
      v27 = v62._decimal.w[0];
      v26 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v48;
      TSUDecimal::operator+=();
      v62 = *pmt;
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      v29 = v62._decimal.w[0];
      v28 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v47;
      TSUDecimal::operator+=();
      TSUDecimal::operator*=();
      v62._decimal.w[0] = v29;
      v62._decimal.w[1] = v28;
      TSUDecimal::operator/=();
      v62._decimal.w[0] = v27;
      v62._decimal.w[1] = v26;
      TSUDecimal::operator+=();
      v31 = v62._decimal.w[0];
      v30 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v46;
      TSUDecimal::operator+=();
      v62 = *pmt;
      TSUDecimal::operator*=();
      v33 = v62._decimal.w[0];
      v32 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v60;
      TSUDecimal::operator-=();
      v62._decimal.w[0] = v33;
      v62._decimal.w[1] = v32;
    }

    else
    {
      v36 = v62._decimal.w[0];
      v37 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v60;
      TSUDecimal::operator-=();
      TSUDecimal::operator/=();
      v52 = v62;
      v62 = *pmt;
      TSUDecimal::operator*=();
      v62._decimal.w[0] = v36;
      v62._decimal.w[1] = v37;
      TSUDecimal::operator+=();
      TSUDecimal::operator+=();
      v54 = v62;
      v62 = *pv;
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      v39 = v62._decimal.w[0];
      v38 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v52;
      TSUDecimal::operator+=();
      v53 = v62;
      v62._decimal.w[0] = v39;
      v62._decimal.w[1] = v38;
      TSUDecimal::operator/=();
      v41 = v62._decimal.w[0];
      v40 = v62._decimal.w[1];
      v62 = *pmt;
      TSUDecimal::operator*=();
      TSUDecimal::operator*=();
      v43 = v62._decimal.w[0];
      v42 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v49;
      TSUDecimal::operator+=();
      TSUDecimal::operator*=();
      v62._decimal.w[0] = v43;
      v62._decimal.w[1] = v42;
      TSUDecimal::operator/=();
      v50 = v62;
      v62._decimal.w[0] = v41;
      v62._decimal.w[1] = v40;
      TSUDecimal::operator+=();
      v31 = v62._decimal.w[0];
      v30 = v62._decimal.w[1];
      TSUDecimal::operator=();
      v62 = v60;
      TSUDecimal::operator-=();
      v62 = *pmt;
    }

    TSUDecimal::operator*=();
    v35 = v62._decimal.w[0];
    v34 = v62._decimal.w[1];
    v62 = v61;
    TSUDecimal::operator*=();
    v62._decimal.w[0] = v35;
    v62._decimal.w[1] = v34;
    TSUDecimal::operator/=();
    v62._decimal.w[0] = v31;
    v62._decimal.w[1] = v30;
    TSUDecimal::operator-=();
    v59 = v62;
    v62 = v54;
    TSUDecimal::operator/=();
    v58 = v62;
    TSUDecimal::operator-=();
    v62 = v58;
    TSUDecimal::abs(&v62);
    if ((TSUDecimal::isNaN(&v57) & 1) != 0 || TSUDecimal::operator<())
    {
      v56 = v61;
      v57 = v62;
      v55 = v54;
    }

    if (TSUDecimal::operator<())
    {
      v45 = v61._decimal.w[1];
      v44 = v61._decimal.w[0];
      goto LABEL_16;
    }

    --v14;
  }

  while (v14);
  if ((TSUDecimal::isNaN(&v56) & 1) == 0 && (TSUDecimal::operator=(), TSUDecimal::operator<()) && (TSUDecimal::abs(&v55), TSUDecimal::operator=(), TSUDecimal::operator<()))
  {
    v44 = v56._decimal.w[0];
    v45 = v56._decimal.w[1];
  }

  else
  {
    v44 = 0;
    v45 = 0x7C00000000000000;
  }

LABEL_16:
  result._decimal.w[1] = v45;
  result._decimal.w[0] = v44;
  return result;
}

@end