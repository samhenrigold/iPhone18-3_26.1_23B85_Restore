@interface TSCEFunction_MULTINOMIAL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MULTINOMIAL

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v81[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, v81);
  v10 = v81[0];
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12);
    goto LABEL_40;
  }

  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v18 = objc_msgSend_count(v9, v15, v16, v17);
  contextCopy = context;
  v71[0] = contextCopy;
  v71[1] = spec;
  v72 = 0;
  v73[0] = 0;
  *(v73 + 7) = 0;
  v74 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v75 = 0;
  v76 = 0;
  if (!v18)
  {
LABEL_29:
    v13 = 0;
    goto LABEL_33;
  }

  v20 = 0;
  v21 = 0;
  v22 = 1;
  v64 = v9;
  v65 = v7;
  while (1)
  {
    v23 = objc_msgSend_valueAtIndex_accessContext_(v9, v19, v20, v71);
    if ((objc_msgSend_isNil(v23, v24, v25, v26) & 1) == 0)
    {
      break;
    }

LABEL_28:

    v22 = ++v20 < v18;
    if (v20 == v18)
    {
      goto LABEL_29;
    }
  }

  v70 = 0;
  v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v23, v27, contextCopy, spec, 0, &v70);
  v29 = v70;
  if (v29)
  {
    v13 = v29;
    v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v30, v29, v32);
    goto LABEL_32;
  }

  v33 = objc_msgSend_trunc(v28, v30, v31, v32);
  v69._decimal.w[0] = objc_msgSend_decimalRepresentation(v33, v34, v35, v36);
  v69._decimal.w[1] = v37;

  TSUDecimal::operator=();
  if ((TSUDecimal::operator<=() & 1) != 0 && (TSUDecimal::operator==() & 1) == 0)
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "+[TSCEFunction_MULTINOMIAL evaluateForArgsWithContext:functionSpec:arguments:]", v39);
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEMathTrigFunctions.mm", v43);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 1252, 0, "MULTINOMIAL accepts nonnegative arguments only.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
  }

  if ((v21 & 1) == 0)
  {
    v79 = v69;
    v80 = v69;
LABEL_27:

    v21 = 1;
    v9 = v64;
    v7 = v65;
    goto LABEL_28;
  }

  TSUDecimal::operator=();
  if ((TSUDecimal::operator==() & 1) != 0 || (v67[0] = v80, TSUDecimal::operator+=(), v67[2] = v67[0], !TSUDecimal::operator==()))
  {
    TSUDecimal::operator=();
    v67[0] = v69;
    TSUDecimal::operator-=();
    v68 = v67[0];
    if (!TSUDecimal::operator==())
    {
      TSUDecimal::operator+=();
      while (TSUDecimal::operator<() && TSUDecimal::operator<=())
      {
        TSUDecimal::operator=();
        TSUDecimal::operator+=();
        TSUDecimal::operator*=();
        if (TSUDecimal::isInf(&v78))
        {
          goto LABEL_31;
        }
      }

      TSUDecimal::doubleValue(&v69);
      v53 = v52;
      if (v52 >= 2.0)
      {
        v54 = 2.0;
        do
        {
          TSUDecimal::operator=();
          v67[0] = v78;
          TSUDecimal::operator/=();
          v68 = v67[0];
          if (TSUDecimal::operator<=())
          {
            TSUDecimal::operator=();
            TSUDecimal::operator*=();
            if (TSUDecimal::isInf(&v77))
            {
              goto LABEL_31;
            }
          }

          else
          {
            TSUDecimal::operator=();
            TSUDecimal::operator/=();
          }

          v54 = v54 + 1.0;
        }

        while (v54 <= v53);
      }

      goto LABEL_27;
    }
  }

LABEL_31:
  v55 = objc_msgSend_functionName(spec, v49, v50, v51);
  v58 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v56, v55, v57);
  v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v59, v58, v60);

  v13 = 0;
LABEL_32:

  v9 = v64;
  v7 = v65;
  if (!v22)
  {
LABEL_33:
    while (TSUDecimal::operator<())
    {
      TSUDecimal::operator=();
      TSUDecimal::operator+=();
      TSUDecimal::operator*=();
    }

    v67[0] = v78;
    TSUDecimal::operator/=();
    v69 = v67[0];
    if (v9)
    {
      objc_msgSend_formatWithContext_(v9, v61, contextCopy, v62);
    }

    else
    {
      memset(v67, 0, 32);
    }

    v14 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v61, &v69, v67);
  }

LABEL_40:

  return v14;
}

@end