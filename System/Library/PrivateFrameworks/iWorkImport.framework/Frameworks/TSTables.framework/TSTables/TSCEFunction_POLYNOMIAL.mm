@interface TSCEFunction_POLYNOMIAL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)evaluatePolynomial:(id)polynomial functionSpec:(id)spec xDecimal:(const TSUDecimal *)decimal coefficients:(id)coefficients argumentIndex:(int)index outError:(id *)error;
@end

@implementation TSCEFunction_POLYNOMIAL

+ (id)evaluatePolynomial:(id)polynomial functionSpec:(id)spec xDecimal:(const TSUDecimal *)decimal coefficients:(id)coefficients argumentIndex:(int)index outError:(id *)error
{
  polynomialCopy = polynomial;
  coefficientsCopy = coefficients;
  TSUDecimal::operator=();
  v16 = objc_msgSend_count(coefficientsCopy, v13, v14, v15, polynomialCopy);
  v50 = polynomialCopy;
  v53[0] = v50;
  v53[1] = spec;
  v54 = 0;
  indexCopy = index;
  v56[0] = 0;
  *(v56 + 3) = 0;
  v57 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v58 = 0;
  v59 = 0;
  v18 = 0;
  if (!v16)
  {
LABEL_14:
    v44 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v17, &v60, v18);
    goto LABEL_17;
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    v21 = objc_msgSend_valueAtIndex_accessContext_(coefficientsCopy, v17, v19, v53);
    if ((objc_msgSend_isNil(v21, v22, v23, v24) & 1) == 0)
    {
      break;
    }

LABEL_13:

    if (v16 == ++v19)
    {
      goto LABEL_14;
    }
  }

  v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v25, v50, spec, index, error);
  v30 = v26;
  if (*error)
  {
    goto LABEL_16;
  }

  if ((v20 & 1) == 0)
  {
    v60 = *objc_msgSend_rawDecimalValue(v26, v27, v28, v29);
    v18 = objc_msgSend_unit(v30, v41, v42, v43);
    goto LABEL_12;
  }

  if (objc_msgSend_unit(v26, v27, v28, v29) == v18 || v18 && objc_msgSend_unit(v30, v31, v32, v33) && (v34 = objc_msgSend_dimensionForUnit_(TSCEUnitRegistry, v31, v18, v33), v38 = objc_msgSend_unit(v30, v35, v36, v37), v34 == objc_msgSend_dimensionForUnit_(TSCEUnitRegistry, v39, v38, v40)))
  {
    v52 = *objc_msgSend_rawDecimalValue(v30, v31, v32, v33);
    TSUDecimal::fma(&v60, decimal, &v52, &v60);
LABEL_12:

    v20 = 1;
    goto LABEL_13;
  }

  v45 = objc_msgSend_functionName(spec, v31, v32, v33);
  *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v46, v45, v47);

LABEL_16:
  v44 = objc_msgSend_zero(TSCENumberValue, v27, v28, v29);

LABEL_17:

  return v44;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v35 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 1, 1, &v35);
  v12 = v35;
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
  }

  else
  {
    v34 = 0;
    v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v13, context, spec, 0, &v34);
    v18 = v34;
    if (v18)
    {
      v15 = v18;
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v19, v18, v21);
    }

    else
    {
      v33[0] = objc_msgSend_decimalRepresentation(v17, v19, v20, v21);
      v33[1] = v22;
      v32 = 0;
      v23 = objc_msgSend_evaluatePolynomial_functionSpec_xDecimal_coefficients_argumentIndex_outError_(TSCEFunction_POLYNOMIAL, v22, context, spec, v33, v11, 1, &v32);
      v15 = v32;
      if (v15)
      {
        v26 = objc_msgSend_raiseErrorOrConvert_(context, v24, v15, v25);
      }

      else
      {
        if (v11)
        {
          objc_msgSend_formatWithContext_(v11, v24, context, v25);
        }

        else
        {
          memset(&v30, 0, sizeof(v30));
        }

        TSCEFormat::TSCEFormat(&v31, &v30);
        objc_msgSend_setFormat_(v23, v27, &v31, v28);
        v26 = v23;
      }

      v16 = v26;
    }
  }

  return v16;
}

@end