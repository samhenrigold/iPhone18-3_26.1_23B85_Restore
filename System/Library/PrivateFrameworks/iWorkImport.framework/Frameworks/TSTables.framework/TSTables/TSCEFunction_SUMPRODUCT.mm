@interface TSCEFunction_SUMPRODUCT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SUMPRODUCT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = *(arguments + 1) - *arguments;
  v9 = v8 >> 3;
  v92 = objc_msgSend_zero(TSCENumberValue, a2, context, spec);
  if (!(v8 >> 3))
  {
    v36 = objc_msgSend_functionName(spec, v10, v11, v12);
    v38 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v37, v36, 0);
    v41 = objc_msgSend_raiseErrorOrConvert_(context, v39, v38, v40);

    goto LABEL_57;
  }

  *&v104._numberFormat.decimalPlaces = 0;
  v105 = 0;
  v106 = 0;
  sub_2212B7230(&v104, (v8 >> 3));
  v91 = v8 >> 3;
  if (v9 >= 1)
  {
    v13 = 0;
    v14 = 0;
    LODWORD(v15) = 0;
    v93 = v8;
    v16 = (v8 >> 3) & 0x7FFFFFFF;
    while (1)
    {
      v17 = *(*arguments + 8 * v13);
      v103 = 0;
      v19 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v17, v18, context, spec, v13, 1, &v103);
      v23 = v103;
      v96._tskFormat = v19;
      if (v23)
      {
        break;
      }

      if (objc_msgSend_gridKind(v19, v20, v21, v22) == 1 && objc_msgSend_count(v96._tskFormat, v24, v25, v26) >= 2)
      {
        v77 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v24, v25, v26);
        v41 = objc_msgSend_raiseErrorOrConvert_(context, v83, v77, v84);
LABEL_52:

LABEL_53:
        goto LABEL_54;
      }

      if (v13)
      {
        if (__PAIR64__(v15, v14) != objc_msgSend_dimensions(v96._tskFormat, v24, v25, v26))
        {
          v77 = objc_msgSend_functionName(spec, v27, v28, v29);
          v80 = objc_msgSend_differentNumberOfElementsErrorForFunctionName_(TSCEError, v78, v77, v79);
          v41 = objc_msgSend_raiseErrorOrConvert_(context, v81, v80, v82);

          goto LABEL_52;
        }
      }

      else
      {
        v30 = objc_msgSend_dimensions(v96._tskFormat, v24, v25, v26);
        v14 = v30;
        v15 = HIDWORD(v30);
      }

      if ((objc_msgSend_isNil(v96._tskFormat, v27, v28, v29) & 1) == 0)
      {
        sub_22121488C(&v104._numberFormat.decimalPlaces, &v96._tskFormat);
      }

      if (v96._tskFormat)
      {
        objc_msgSend_formatWithContext_(v96._tskFormat, v31, context, v32);
      }

      else
      {
        memset(v99, 0, 32);
      }

      v33 = *&v104._formatType;
      if (*&v104._formatType >= *&v104._durationFormat)
      {
        v34 = sub_22114F468(&v104, v99);
      }

      else
      {
        TSCEFormat::TSCEFormat(*&v104._formatType, v99);
        v34 = v33 + 32;
      }

      *&v104._formatType = v34;

      if (v16 == ++v13)
      {
        v35 = v14 * v15;
        LODWORD(v9) = v91;
        v8 = v93;
        goto LABEL_23;
      }
    }

    v41 = objc_msgSend_raiseErrorOrConvert_(context, v20, v23, v22);
    goto LABEL_53;
  }

  v35 = 0;
LABEL_23:
  contextCopy = context;
  v99[0] = contextCopy;
  v99[1] = spec;
  v99[2] = 0;
  v99[3] = 0;
  *(&v99[3] + 7) = 0;
  v100 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v101 = 0;
  v102 = 0;
  if (v35 < 1)
  {
    v69 = v92;
LABEL_42:
    sub_221256020(&v104, &v95);
    TSCEFormat::TSCEFormat(&v96, &v95);
    objc_msgSend_setFormat_(v69, v72, &v96, v73);
    v41 = v69;
    v23 = 0;
    v92 = v41;
    goto LABEL_49;
  }

  v43 = contextCopy;
  v44 = 0;
  v45 = 0;
  v94 = (v8 >> 3) & 0x7FFFFFFF;
  v88 = v35;
  v89 = v35;
  while (1)
  {
    v46 = [TSCENumberValue alloc];
    TSUDecimal::operator=();
    v49 = objc_msgSend_initWithDecimal_(v46, v47, &v96, v48);
    v51 = v49;
    v90 = v45;
    if (v9 >= 1)
    {
      break;
    }

    v68 = v49;
LABEL_35:
    if (v90)
    {
      v97 = 0;
      v69 = objc_msgSend_add_functionSpec_outError_(v92, v50, v68, spec, &v97);
      v23 = v97;

      if (v23)
      {
        v41 = objc_msgSend_raiseErrorOrConvert_(v43, v70, v23, v71);
        v51 = v68;
        v92 = v69;
        goto LABEL_48;
      }
    }

    else
    {
      v69 = v68;
    }

    ++v44;
    v45 = 1;
    v92 = v69;
    LODWORD(v9) = v91;
    if (v44 == v89)
    {
      goto LABEL_42;
    }
  }

  v52 = 0;
  while (1)
  {
    v53 = *(*&v104._numberFormat.decimalPlaces + 8 * v52);
    LODWORD(v99[3]) = v52;
    v54 = v99[2];
    v99[2] = 0;

    v56 = objc_msgSend_valueAtIndex_accessContext_(v53, v55, v44, v99);
    if (objc_msgSend_deepType_(v56, v57, v43, v58) == 10)
    {
      v65 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v59, v56, v43, spec, v52);
      v76 = objc_msgSend_raiseErrorOrConvert_(v43, v74, v65, v75);
LABEL_45:
      v41 = v76;
      v23 = 0;
      goto LABEL_47;
    }

    if (objc_msgSend_isNil(v56, v59, v60, v61))
    {
      if (v88 != 1)
      {
        v68 = objc_msgSend_zero(TSCENumberValue, v62, v63, v64);

        goto LABEL_35;
      }

      v65 = objc_msgSend_emptyArgumentError(TSCEError, v62, v63, v64);
      v76 = objc_msgSend_raiseErrorOrConvert_(v43, v86, v65, v87);
      goto LABEL_45;
    }

    v98 = 0;
    v65 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v56, v62, v43, spec, v52, &v98);
    v23 = v98;
    if (v23)
    {
      break;
    }

    v68 = objc_msgSend_multiply_context_(v51, v66, v65, v43);

    ++v52;
    v51 = v68;
    if (v94 == v52)
    {
      goto LABEL_35;
    }
  }

  v41 = objc_msgSend_raiseErrorOrConvert_(v43, v66, v23, v67);
LABEL_47:

LABEL_48:
LABEL_49:

LABEL_54:
  if (v104._tskFormat)
  {
    *&v104._formatType = v104._tskFormat;
    operator delete(v104._tskFormat);
  }

  v99[0] = &v104._numberFormat;
  sub_22107C2C0(v99);

LABEL_57:

  return v41;
}

@end