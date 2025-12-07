@interface TSCEFunction_IRR
+ (TSUDecimal)solveByNewtonsWithVector:(id)vector vector:(id)a4 initial:(const TSUDecimal *)initial outError:(id *)error;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_IRR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v95[0] = 0;
  v81 = v9;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 0, 1, v95);
  v12 = v95[0];
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
    goto LABEL_26;
  }

  TSUDecimal::operator=();
  if (*(arguments + 1) - *arguments >= 9uLL)
  {
    v20 = *(*arguments + 8);
    if ((objc_msgSend_isTokenOrEmptyArg(v20, v21, v22, v23) & 1) == 0)
    {
      v93 = 0;
      v25 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v24, context, spec, 1, &v93);
      v15 = v93;
      v94[0] = objc_msgSend_decimalRepresentation(v25, v26, v27, v28);
      v94[1] = v29;
      if (v15)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v29, v15, v30);

        goto LABEL_26;
      }
    }
  }

  v31 = objc_msgSend_count(v11, v17, v18, v19);
  contextCopy = context;
  v87[0] = contextCopy;
  v87[1] = spec;
  v88 = 0;
  v89[0] = 0;
  *(v89 + 7) = 0;
  v90 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v91 = 0;
  v92 = 0;
  if (!v31)
  {
LABEL_21:
    v57 = objc_msgSend_functionName(spec, v32, v33, v34);
    v60 = objc_msgSend_onlyPositiveOrNegativeErrorForFunctionName_(TSCEError, v58, v57, v59);
    v63 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v61, v60, v62);
LABEL_22:
    v16 = v63;

    goto LABEL_23;
  }

  selfCopy = self;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  do
  {
    v39 = objc_msgSend_valueAtIndex_accessContext_(v11, v32, v36, v87, selfCopy);
    if ((objc_msgSend_isNil(v39, v40, v41, v42) & 1) == 0)
    {
      v86 = 0;
      v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v43, contextCopy, spec, 0, &v86);
      v15 = v86;
      v82[0] = objc_msgSend_decimalRepresentation(v44, v45, v46, v47);
      v82[1] = v48;

      if (v15)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v49, v15, v50);

        goto LABEL_25;
      }

      TSUDecimal::operator=();
      if (TSUDecimal::operator<=())
      {
        TSUDecimal::operator=();
        v37 |= TSUDecimal::operator<();
      }

      else
      {
        v38 = 1;
      }
    }

    ++v36;
  }

  while (v31 != v36);
  if ((v38 & v37 & 1) == 0)
  {
    goto LABEL_21;
  }

  v84 = 0;
  v51 = objc_msgSend_solveByNewtonsWithVector_vector_initial_outError_(selfCopy, v32, contextCopy, v11, v94, &v84);
  v53 = v52;
  v15 = v84;
  v85._decimal.w[0] = v51;
  v85._decimal.w[1] = v53;
  if (v15)
  {
    v56 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v54, v15, v55);
LABEL_20:
    v16 = v56;
    goto LABEL_25;
  }

  if (TSUDecimal::isNaN(&v85))
  {
    TSUDecimal::operator=();
    if ((TSUDecimal::operator==() & 1) == 0)
    {
      TSUDecimal::operator=();
      v83 = 0;
      v66 = objc_msgSend_solveByNewtonsWithVector_vector_initial_outError_(selfCopy, v65, contextCopy, v11, v82, &v83);
      v68 = v67;
      v69 = v83;
      v85._decimal.w[0] = v66;
      v85._decimal.w[1] = v68;
      if (v69)
      {
        v15 = v69;
        v56 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v70, v69, v71);
        goto LABEL_20;
      }
    }
  }

  if (TSUDecimal::isNaN(&v85))
  {
    v57 = objc_msgSend_functionName(spec, v72, v73, v74);
    v60 = objc_msgSend_numberDoesNotConvergeWithEstimateErrorForFunctionName_(TSCEError, v75, v57, v76);
    v63 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v77, v60, v78);
    goto LABEL_22;
  }

  TSCEFormat::TSCEFormat(v82, 258);
  v16 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v79, &v85, v82);
LABEL_23:
  v15 = 0;
LABEL_25:

LABEL_26:

  return v16;
}

+ (TSUDecimal)solveByNewtonsWithVector:(id)vector vector:(id)a4 initial:(const TSUDecimal *)initial outError:(id *)error
{
  v80 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v10 = a4;
  v14 = objc_msgSend_functionSpec(self, v11, v12, v13);
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v18 = objc_msgSend_count(v10, v15, v16, v17);
  v76 = *initial;
  v19 = vectorCopy;
  v68[0] = v19;
  v68[1] = v14;
  v69 = 0;
  v70[0] = 0;
  *(v70 + 7) = 0;
  v71 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v72 = 0;
  v73 = 0;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v20 = 0;
  v66 = xmmword_2217E1440;
  v67 = xmmword_2217E1440;
  v57 = xmmword_2217E1440;
  v65 = xmmword_2217E1440;
  while (1)
  {
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    if (v18)
    {
      break;
    }

LABEL_7:
    TSUDecimal::operator=();
    if (v18)
    {
      v38 = 0;
      for (i = 0; i != v18; ++i)
      {
        v24 = objc_msgSend_valueAtIndex_accessContext_(v10, v37, i, v68, v57);
        if ((objc_msgSend_isNil(v24, v40, v41, v42) & 1) == 0)
        {
          v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v43, v19, v14, 0, error);
          v64._decimal.w[0] = objc_msgSend_decimalRepresentation(v44, v45, v46, v47);
          v64._decimal.w[1] = v48;

          TSUDecimal::operator=();
          TSUDecimal::operator=();
          v78 = v60;
          TSUDecimal::operator+=();
          v61 = v78;
          TSUDecimal::operator=();
          TSUDecimal::doubleValue(&v61);
          v50 = v49;
          TSUDecimal::doubleValue(&v59);
          pow(v50, v51);
          TSUDecimal::operator=();
          v62 = v78;
          v78 = v79;
          TSUDecimal::operator/=();
          v63 = v78;
          v78 = v64;
          TSUDecimal::operator*=();
          v79 = v78;
          TSUDecimal::operator+=();
          if (*error)
          {
            goto LABEL_24;
          }

          ++v38;
        }
      }
    }

    v78 = v75;
    TSUDecimal::operator/=();
    v74 = v78;
    v79 = v76;
    TSUDecimal::operator-=();
    TSUDecimal::operator=();
    if (TSUDecimal::operator<=())
    {
      TSUDecimal::operator=();
      v78 = v79;
      TSUDecimal::operator-=();
      v53 = v78._decimal.w[0];
      v52 = v78._decimal.w[1];
      TSUDecimal::operator=();
      v78._decimal.w[0] = v53;
      v78._decimal.w[1] = v52;
      TSUDecimal::operator/=();
      v76 = v78;
    }

    v78 = v74;
    TSUDecimal::abs(&v78);
    if ((TSUDecimal::isNaN(&v67) & 1) != 0 || TSUDecimal::operator<())
    {
      v66 = v76;
      v67 = v78;
      v65 = v75;
    }

    TSUDecimal::operator=();
    if (TSUDecimal::operator<())
    {
      goto LABEL_27;
    }

    if (++v20 == 500)
    {
      if ((TSUDecimal::isNaN(&v66) & 1) == 0 && (TSUDecimal::operator=(), TSUDecimal::operator<()) && (TSUDecimal::abs(&v65), TSUDecimal::operator=(), TSUDecimal::operator<()))
      {
        v54 = v66;
      }

      else
      {
        v76 = v57;
LABEL_27:
        v54 = v76;
      }

      v77 = v54;
      goto LABEL_25;
    }
  }

  v22 = 0;
  v23 = 0;
  while (1)
  {
    v24 = objc_msgSend_valueAtIndex_accessContext_(v10, v21, v23, v68, v57);
    if ((objc_msgSend_isNil(v24, v25, v26, v27) & 1) == 0)
    {
      v29 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v28, v19, v14, 0, error);
      v64._decimal.w[0] = objc_msgSend_decimalRepresentation(v29, v30, v31, v32);
      v64._decimal.w[1] = v33;

      TSUDecimal::operator=();
      TSUDecimal::operator=();
      v78 = v60;
      TSUDecimal::operator+=();
      ++v22;
      v61 = v78;
      TSUDecimal::operator=();
      TSUDecimal::doubleValue(&v61);
      v35 = v34;
      TSUDecimal::doubleValue(&v59);
      pow(v35, v36);
      TSUDecimal::operator=();
      v62 = v78;
      v78 = v79;
      TSUDecimal::operator/=();
      v63 = v78;
      v78 = v64;
      TSUDecimal::operator*=();
      v79 = v78;
      TSUDecimal::operator+=();
      if (*error)
      {
        break;
      }
    }

    if (v18 == ++v23)
    {
      goto LABEL_7;
    }
  }

LABEL_24:
  TSUDecimal::operator=();

LABEL_25:
  v56 = v77._decimal.w[1];
  v55 = v77._decimal.w[0];
  result._decimal.w[1] = v56;
  result._decimal.w[0] = v55;
  return result;
}

@end