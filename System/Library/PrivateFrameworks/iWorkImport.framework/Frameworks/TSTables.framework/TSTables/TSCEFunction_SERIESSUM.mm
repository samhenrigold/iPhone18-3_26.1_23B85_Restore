@interface TSCEFunction_SERIESSUM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SERIESSUM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v10 = *(*arguments + 16);
  v11 = *(*arguments + 24);
  v95[0] = 0;
  v13 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v11, v12, context, spec, 3, 1, v95);
  v14 = v95[0];
  if (v14)
  {
    v17 = v14;
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v15, v14, v16);
    goto LABEL_34;
  }

  v94 = 0;
  v19 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v15, context, spec, 0, &v94);
  v20 = v94;
  if (v20)
  {
    v17 = v20;
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v21, v20, v22);
    goto LABEL_33;
  }

  v93 = 0;
  v82 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v21, context, spec, 1, &v93);
  v23 = v93;
  if (v23)
  {
    v17 = v23;
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v24, v23, v25);
    goto LABEL_32;
  }

  v92 = 0;
  v79 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v24, context, spec, 2, &v92);
  v26 = v92;
  if (v26)
  {
    v17 = v26;
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v27, v26, v29);
    goto LABEL_31;
  }

  v91._decimal.w[0] = objc_msgSend_decimalRepresentation(v19, v27, v28, v29);
  v91._decimal.w[1] = v30;
  v90._decimal.w[0] = objc_msgSend_decimalRepresentation(v82, v30, v31, v32);
  v90._decimal.w[1] = v33;
  v89._decimal.w[0] = objc_msgSend_decimalRepresentation(v79, v33, v34, v35);
  v89._decimal.w[1] = v36;
  TSUDecimal::operator=();
  v87._decimal.w[0] = sub_2212B2BA4(&v91, &v89);
  v87._decimal.w[1] = v37;
  v40 = objc_msgSend_count(v13, v37, v38, v39);
  if (!v40)
  {
    v80 = 0;
LABEL_27:
    *&v85 = sub_2212B2BA4(&v91, &v90);
    *(&v85 + 1) = v65;
    TSUDecimal::operator*=();
    if (v13)
    {
      objc_msgSend_formatWithContext_(v13, v66, context, v67);
    }

    else
    {
      v85 = 0u;
      *v86 = 0u;
    }

    v18 = objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v66, &v88, &v85, v80);
    v17 = 0;
    goto LABEL_31;
  }

  contextCopy = context;
  *&v85 = contextCopy;
  *(&v85 + 1) = spec;
  v86[0] = 0;
  v86[1] = 3;
  *(&v86[1] + 7) = 0;
  *&v86[3] = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v86[5] = 0;
  v86[6] = 0;
  if (v40 - 1 < 0)
  {
    v64 = 0;
    v80 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v75 = v19;
  v42 = 0;
  v80 = 0;
  v77 = v10;
  while (1)
  {
    v43 = objc_msgSend_valueAtIndex_accessContext_(v13, v41, --v40, &v85);
    if ((objc_msgSend_isNil(v43, v44, v45, v46) & 1) == 0)
    {
      break;
    }

LABEL_22:

    if (v40 < 1)
    {
      v64 = v86[0];
      v19 = v75;
      goto LABEL_26;
    }
  }

  v48 = v42;
  v84 = 0;
  v81 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v43, v47, contextCopy, spec, 3, &v84);
  v17 = v84;
  if (v17)
  {
    v10 = v77;
    v18 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v49, v17, v51);
    goto LABEL_39;
  }

  if ((v48 & 1) == 0)
  {
    v10 = v77;
    v88 = *objc_msgSend_rawDecimalValue(v81, v49, v50, v51);
    v80 = objc_msgSend_unit(v81, v61, v62, v63);
    goto LABEL_21;
  }

  v10 = v77;
  if (objc_msgSend_unit(v81, v49, v50, v51) == v80 || v80 && objc_msgSend_unit(v81, v52, v53, v54) && (v76 = objc_msgSend_dimensionForUnit_(TSCEUnitRegistry, v52, v80, v54), v58 = objc_msgSend_unit(v81, v55, v56, v57), v76 == objc_msgSend_dimensionForUnit_(TSCEUnitRegistry, v59, v58, v60)))
  {
    v83 = *objc_msgSend_rawDecimalValue(v81, v52, v53, v54);
    TSUDecimal::fma(&v88, &v87, &v83, &v88);
LABEL_21:

    v42 = 1;
    goto LABEL_22;
  }

  v69 = objc_msgSend_functionName(spec, v52, v53, v54);
  v72 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v70, v69, v71);
  v18 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v73, v72, v74);

LABEL_39:
  v19 = v75;
LABEL_31:

LABEL_32:
LABEL_33:

LABEL_34:

  return v18;
}

@end