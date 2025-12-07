@interface TSCEFunction_MOD
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MOD

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v76 = *MEMORY[0x277D85DE8];
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v73 = 0;
  v11 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v10, context, spec, 0, &v73);
  v12 = v73;
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
    goto LABEL_28;
  }

  v72 = 0;
  v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v13, context, spec, 1, &v72);
  v15 = v72;
  if (!v15)
  {
    if ((objc_msgSend_dimensionsMatchModuloCurrency_(v11, v18, v17, v19) & 1) == 0)
    {
      v23 = objc_msgSend_functionName(spec, v20, v21, v22);
      v26 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v24, v23, v25);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v27, v26, v28);

      goto LABEL_27;
    }

    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v20, context, v22);
      if (v9)
      {
LABEL_8:
        objc_msgSend_formatWithContext_(v9, v20, context, v22);
        goto LABEL_12;
      }
    }

    else
    {
      memset(&v70, 0, sizeof(v70));
      if (v9)
      {
        goto LABEL_8;
      }
    }

    memset(&v75, 0, sizeof(v75));
LABEL_12:
    TSCEFormat::formatByMergingWithFormat(&v71, &v70, &v75, v21, v22);
    *&v75._tskFormat = *objc_msgSend_rawDecimalValue(v11, v29, v30, v31);
    v74 = *objc_msgSend_rawDecimalValue(v17, v32, v33, v34);
    v69 = v74;
    TSUDecimal::abs(&v69);
    TSUDecimal::operator=();
    if (TSUDecimal::operator<())
    {
      v38 = objc_msgSend_divideByZeroError(TSCEError, v35, v36, v37);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v39, v38, v40);
    }

    else
    {
      v67 = v74;
      v68 = *&v75._tskFormat;
      TSUDecimal::operator=();
      if (TSUDecimal::divide(&v68, &v67, &v66) == 5)
      {
        v44 = objc_msgSend_divideByZeroError(TSCEError, v41, v42, v43);
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v45, v44, v46);
      }

      else
      {
        v65 = v66;
        TSUDecimal::roundTowardsZero(&v65);
        TSUDecimal::operator=();
        v50 = objc_msgSend_locale(context, v47, v48, v49);
        v52 = TSUDecimal::floatingPointEqual(&v65, &v66, v50, v51);

        TSUDecimal::operator=();
        if (!v52)
        {
          TSUDecimal::multiply(&v67, &v65, &v70);
          TSUDecimal::subtract(&v68, &v70, &v64);
        }

        if (TSUDecimal::isNegative(&v64) && (TSUDecimal::isGreaterThanZero(&v67) & 1) != 0 || TSUDecimal::isGreaterThanZero(&v64) && TSUDecimal::isNegative(&v67))
        {
          TSUDecimal::operator+=();
        }

        if (objc_msgSend_hasUnits(v11, v53, v54, v55))
        {
          v59 = objc_msgSend_unit(v11, v56, v57, v58);
          objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v60, &v64, v59);
        }

        else
        {
          objc_msgSend_variantWithDecimal_(v11, v56, &v64, v58);
        }
        v16 = ;
        TSCEFormat::TSCEFormat(&v70, &v71);
        objc_msgSend_setFormat_(v16, v61, &v70, v62);
      }
    }

    goto LABEL_27;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(context, v18, v15, v19);
LABEL_27:

LABEL_28:

  return v16;
}

@end