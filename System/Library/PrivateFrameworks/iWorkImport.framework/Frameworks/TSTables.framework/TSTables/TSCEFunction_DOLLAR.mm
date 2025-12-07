@interface TSCEFunction_DOLLAR
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DOLLAR

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(v69, 0, 32);
  }

  v68 = 0;
  v12 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v11, v9, context, spec, 0, &v68);
  v13 = v68;
  if (v13)
  {
    v17 = v13;
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v14, v13, v16);
    goto LABEL_27;
  }

  v67._decimal.w[0] = objc_msgSend_decimalRepresentation(v12, v14, v15, v16);
  v67._decimal.w[1] = v19;
  v22 = objc_msgSend_locale(context, v19, v20, v21);
  v26 = objc_msgSend_currencyCode(v22, v23, v24, v25);

  v32 = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(MEMORY[0x277D81228], v27, v26, v28);
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    goto LABEL_9;
  }

  v33 = *(*arguments + 8);
  if (!objc_msgSend_isTokenOrEmptyArg(v33, v34, v35, v36))
  {
    if (v11)
    {
      objc_msgSend_formatWithContext_(v11, v37, context, v39);
      if (v33)
      {
LABEL_12:
        objc_msgSend_formatWithContext_(v33, v37, context, v39);
        goto LABEL_15;
      }
    }

    else
    {
      memset(&v65, 0, sizeof(v65));
      if (v33)
      {
        goto LABEL_12;
      }
    }

    memset(&v64, 0, sizeof(v64));
LABEL_15:
    TSCEFormat::formatByMergingWithFormat(&v66, &v65, &v64, v38, v39);
    TSCEFormat::operator=(v69, &v66);
    v63 = 0;
    v45 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v33, v44, context, spec, 1, &v63);
    v17 = v63;
    v49 = objc_msgSend_trunc(v45, v46, v47, v48);

    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v50, v17, v52);
    }

    else
    {
      v66._tskFormat = objc_msgSend_decimalRepresentation(v49, v50, v51, v52);
      *&v66._formatType = v53;
      TSUDecimal::ceiling(&v66);
      v32 = TSUDecimal::truncatedIntegerValue(&v66);
      if (v32 < 128)
      {

        if ((v32 & 0x80000000) != 0)
        {
          TSUDecimal::operator=();
          TSUDecimal::pow10(&v66);
          if ((TSUDecimal::isInf(&v66) & 1) != 0 || (TSUDecimal::isZero(&v66) & 1) != 0 || (TSUDecimal::shift10Places(&v67), TSUDecimal::round(&v67), TSUDecimal::shift10Places(&v67), TSUDecimal::isNaN(&v67)))
          {
            TSUDecimal::operator=();
          }

          v32 = 0;
        }

        goto LABEL_9;
      }

      v57 = objc_msgSend_functionName(spec, v54, v55, v56);
      v59 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v58, 2, v57, 1, 127.0);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v60, v59, v61);
    }

    goto LABEL_26;
  }

LABEL_9:
  v40 = MEMORY[0x277D81228];
  v41 = objc_msgSend_locale(context, v29, v30, v31);
  v33 = objc_msgSend_formattedForDollarFunction_precision_forLocale_(v40, v42, &v67, v32, v41);

  v18 = objc_msgSend_stringValue_format_(TSCEStringValue, v43, v33, v69);
  v17 = 0;
LABEL_26:

LABEL_27:

  return v18;
}

@end