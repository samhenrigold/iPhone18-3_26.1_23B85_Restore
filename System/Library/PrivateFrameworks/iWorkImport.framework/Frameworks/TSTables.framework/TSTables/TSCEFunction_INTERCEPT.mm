@interface TSCEFunction_INTERCEPT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_INTERCEPT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v9 = *(*arguments + 8);
  v61 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 1, 0, &v61);
  v12 = v61;
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
    goto LABEL_21;
  }

  v17 = **arguments;
  v60 = 0;
  v52 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v17, v18, context, spec, 0, 1, &v60);
  v19 = v60;
  if (!v19)
  {
    v23 = objc_msgSend_nilValue(TSCENilValue, v20, v21, v22);
    v59 = v23;
    v15 = objc_msgSend_computeSlope_functionSpec_xs_xArgumentIndex_ys_yArgumentIndex_xAverageResult_yAverageResult_slopeResult_xExamplePtr_yExamplePtr_(self, v24, context, spec, v11, 1, v52, 0, v64, &v63, &v62, 0, &v59);
    v25 = v59;

    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v26, v15, v27);
LABEL_19:

      goto LABEL_20;
    }

    *&v54._tskFormat = v62;
    TSUDecimal::operator*=();
    tskFormat = v54._tskFormat;
    v57 = *&v54._formatType;
    *&v54._tskFormat = v63;
    TSUDecimal::operator-=();
    v58._decimal.w[0] = v54._tskFormat;
    v58._decimal.w[1] = *&v54._formatType;
    if (objc_msgSend_deepType_(v25, v28, context, v29) == 3)
    {
      TSUDecimal::doubleValue(&v58);
      v16 = objc_msgSend_dateValueWithDays_(TSCEDateValue, v31, v32, v33);
    }

    else
    {
      v55 = 0;
      v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v30, context, spec, 1, &v55);
      v15 = v55;
      if (v15)
      {
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v37, v15, v39);

        goto LABEL_19;
      }

      if (objc_msgSend_hasUnits(v36, v37, v38, v39) && !objc_msgSend_dimension(v36, v40, v41, v42))
      {
        TSUDecimal::operator=();
        *&v54._tskFormat = v58;
        TSUDecimal::operator*=();
        tskFormat = v54._tskFormat;
        v57 = *&v54._formatType;
        v50 = objc_msgSend_unit(v36, v47, v48, v49);
        v43 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v51, &tskFormat, v50);
      }

      else
      {
        v43 = objc_msgSend_variantWithDecimal_(v36, v40, &v58, v42);
      }

      v16 = v43;
    }

    if (v52)
    {
      objc_msgSend_formatWithContext_(v52, v34, context, v35);
    }

    else
    {
      memset(&v53, 0, sizeof(v53));
    }

    TSCEFormat::TSCEFormat(&v54, &v53);
    objc_msgSend_setFormat_(v16, v44, &v54, v45);
    v15 = 0;
    goto LABEL_19;
  }

  v15 = v19;
  v16 = objc_msgSend_raiseErrorOrConvert_(context, v20, v19, v22);
LABEL_20:

LABEL_21:

  return v16;
}

@end