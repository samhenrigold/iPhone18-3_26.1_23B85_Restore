@interface TSCEFunction_op_Subtract
+ (id)computeSubtraction:(id)subtraction functionSpec:(id)spec left:(id)left leftArgumentIndex:(int)index right:(id)right rightArgumentIndex:(int)argumentIndex;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_Subtract

+ (id)computeSubtraction:(id)subtraction functionSpec:(id)spec left:(id)left leftArgumentIndex:(int)index right:(id)right rightArgumentIndex:(int)argumentIndex
{
  v8 = *&argumentIndex;
  v10 = *&index;
  subtractionCopy = subtraction;
  leftCopy = left;
  rightCopy = right;
  if (!TSCEArgumentAccessor::shouldTreatValueAsDateArgument(leftCopy, subtractionCopy, v16))
  {
    if (objc_msgSend_deepType_(rightCopy, v17, subtractionCopy, v19) == 3)
    {
      v32 = objc_msgSend_numberMinusDateError(TSCEError, v29, v30, v31);
      v35 = objc_msgSend_raiseErrorOrConvert_(subtractionCopy, v33, v32, v34);
      goto LABEL_33;
    }

    if (objc_msgSend_isNil(leftCopy, v29, v30, v31))
    {
      v21 = objc_msgSend_unitlessZero(TSCENumberValue, v43, v44, v45);
      v25 = 0;
    }

    else
    {
      v94 = 0;
      v21 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(leftCopy, v43, subtractionCopy, spec, v10, &v94);
      v25 = v94;
    }

    if (objc_msgSend_isNil(rightCopy, v46, v47, v48))
    {
      v24 = objc_msgSend_unitlessZero(TSCENumberValue, v49, v50, v51);
      if (v25)
      {
LABEL_14:
        v28 = objc_msgSend_raiseErrorOrConvert_(subtractionCopy, v52, v25, v54);
LABEL_23:
        v35 = v28;
LABEL_24:

        goto LABEL_34;
      }
    }

    else
    {
      v93 = v25;
      v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(rightCopy, v49, subtractionCopy, spec, v8, &v93);
      v55 = v93;

      v25 = v55;
      if (v55)
      {
        goto LABEL_14;
      }
    }

    isDuration = objc_msgSend_isDuration(v21, v52, v53, v54);
    if (isDuration != objc_msgSend_isDuration(v24, v57, v58, v59) && (objc_msgSend_isUnitlessZero(v21, v60, v61, v62) & 1) == 0 && (objc_msgSend_isUnitlessZero(v24, v60, v63, v64) & 1) == 0)
    {
      objc_msgSend_reportLossOfUnitsWarningInContext_(TSCEWarning, v60, subtractionCopy, v65);
    }

    v92 = 0;
    v66 = objc_msgSend_subtract_functionSpec_outError_(v21, v60, v24, spec, &v92);
    v25 = v92;
    if (v25)
    {
      v70 = objc_msgSend_raiseErrorOrConvert_(subtractionCopy, v67, v25, v69);
    }

    else
    {
      if (leftCopy)
      {
        objc_msgSend_formatWithContext_(leftCopy, v67, subtractionCopy, v69);
      }

      else
      {
        memset(&v91, 0, sizeof(v91));
      }

      if (rightCopy)
      {
        objc_msgSend_formatWithContext_(rightCopy, v67, subtractionCopy, v69);
      }

      else
      {
        memset(&v90, 0, sizeof(v90));
      }

      TSCEFormat::formatByMergingWithFormat(&v89, &v91, &v90, v68, v69);
      TSCEFormat::TSCEFormat(&v95, &v89);
      objc_msgSend_setFormat_(v66, v87, &v95, v88);
      v70 = v66;
    }

    v35 = v70;

    goto LABEL_24;
  }

  if (TSCEArgumentAccessor::shouldTreatValueAsDateArgument(rightCopy, subtractionCopy, v18))
  {
    v99 = 0;
    v21 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(leftCopy, v20, subtractionCopy, spec, v10, &v99);
    v22 = v99;
    v98 = v22;
    v24 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(rightCopy, v23, subtractionCopy, spec, v8, &v98);
    v25 = v98;

    if (v25)
    {
      v28 = objc_msgSend_raiseErrorOrConvert_(subtractionCopy, v26, v25, v27);
    }

    else
    {
      objc_msgSend_timeIntervalSinceDate_(v21, v26, v24, v27);
      v72 = sub_221387C00(v71);
      v73 = [TSCENumberValue alloc];
      TSUDecimal::operator=();
      v28 = objc_msgSend_initWithDecimal_baseUnit_(v73, v74, &v95, v72);
    }

    goto LABEL_23;
  }

  v97 = 0;
  v36 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(leftCopy, v20, subtractionCopy, spec, v10, &v97);
  v37 = v97;
  v96 = v37;
  v39 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(rightCopy, v38, subtractionCopy, spec, v8, &v96);
  v32 = v96;

  if (v32)
  {
    v35 = objc_msgSend_raiseErrorOrConvert_(subtractionCopy, v40, v32, v42);
  }

  else
  {
    if (objc_msgSend_isDuration(v39, v40, v41, v42))
    {
      objc_msgSend_rawTimeIntervalValue(v39, v75, v76, v77);
    }

    else
    {
      objc_msgSend_timeIntervalRepresentation(v39, v75, v76, v77);
      v81 = v82 * 24.0 * 60.0 * 60.0;
    }

    v83 = objc_msgSend_dateByAddingTimeInterval_(v36, v78, v79, v80, -v81);

    if (leftCopy)
    {
      objc_msgSend_formatWithContext_(leftCopy, v84, subtractionCopy, v85);
    }

    else
    {
      memset(&v95, 0, sizeof(v95));
    }

    v35 = objc_msgSend_dateValue_format_(TSCEDateValue, v84, v83, &v95);
    v36 = v83;
  }

LABEL_33:
LABEL_34:

  return v35;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = *(*arguments + 8);
  v8 = **arguments;
  v10 = objc_msgSend_computeSubtraction_functionSpec_left_leftArgumentIndex_right_rightArgumentIndex_(TSCEFunction_op_Subtract, v9, context, spec, v8, 0, v7, 1);

  return v10;
}

@end