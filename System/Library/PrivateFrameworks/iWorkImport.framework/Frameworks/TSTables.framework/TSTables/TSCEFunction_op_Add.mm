@interface TSCEFunction_op_Add
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_Add

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  shouldTreatValueAsDateArgument = TSCEArgumentAccessor::shouldTreatValueAsDateArgument(v8, context, v10);
  v13 = TSCEArgumentAccessor::shouldTreatValueAsDateArgument(v9, context, v12);
  if ((shouldTreatValueAsDateArgument & v13) != 1)
  {
    if ((shouldTreatValueAsDateArgument | v13))
    {
      v83._tskFormat = 0;
      v83._formatType = 0;
      v83._formatState = 0;
      *&v83._durationFormat = *&v83._durationFormat & 0xC080 | 0x421;
      *(&v83._durationFormat + 2) = *(&v83._durationFormat + 2) & 0xF8 | 1;
      *&v83._baseFormat.base = -50266102;
      v83._numberFormat.decimalPlaces = -3;
      *(&v83._numberFormat + 1) &= 0xE0u;
      v83._numberFormat.currencyCodeIndex = 0;
      if (shouldTreatValueAsDateArgument)
      {
        v82 = 0;
        v17 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v14, context, spec, 0, &v82);
        v21 = v82;
        v81 = v21;
        v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v22, context, spec, 1, &v81);
        v24 = v81;

        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v25, context, v26);
        }

        else
        {
          memset(&v80, 0, sizeof(v80));
        }

        TSCEFormat::operator=(&v83, &v80);
      }

      else
      {
        v79 = 0;
        v17 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v9, v14, context, spec, 1, &v79);
        v34 = v79;
        v78 = v34;
        v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v35, context, spec, 0, &v78);
        v24 = v78;

        if (v9)
        {
          objc_msgSend_formatWithContext_(v9, v36, context, v37);
        }

        else
        {
          memset(&v80, 0, sizeof(v80));
        }

        TSCEFormat::operator=(&v83, &v80);
      }

      v33 = v24;
      if (v24)
      {
        v43 = objc_msgSend_raiseErrorOrConvert_(context, v50, v24, v52);
        goto LABEL_24;
      }

      if (objc_msgSend_isDuration(v23, v50, v51, v52))
      {
        objc_msgSend_rawTimeIntervalValue(v23, v53, v54, v55);
      }

      else
      {
        objc_msgSend_timeIntervalRepresentation(v23, v53, v54, v55);
        v59 = v60 * 86400.0;
      }

      v61 = objc_msgSend_dateByAddingTimeInterval_(v17, v56, v57, v58, v59);
      v20 = objc_msgSend_dateValue_format_(TSCEDateValue, v62, v61, &v83);

LABEL_41:
      goto LABEL_42;
    }

    if (objc_msgSend_isNil(v8, v14, v15, v16))
    {
      v17 = objc_msgSend_unitlessZero(TSCENumberValue, v27, v28, v29);
      v33 = 0;
    }

    else
    {
      v77 = 0;
      v17 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v27, context, spec, 0, &v77);
      v33 = v77;
    }

    if (objc_msgSend_isNil(v9, v30, v31, v32))
    {
      v23 = objc_msgSend_unitlessZero(TSCENumberValue, v38, v39, v40);
      if (v33)
      {
LABEL_14:
        v43 = objc_msgSend_raiseErrorOrConvert_(context, v41, v33, v42);
LABEL_24:
        v20 = v43;
        goto LABEL_25;
      }
    }

    else
    {
      v76 = v33;
      v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v38, context, spec, 1, &v76);
      v44 = v76;

      v33 = v44;
      if (v44)
      {
        goto LABEL_14;
      }
    }

    v75 = 0;
    v20 = objc_msgSend_add_functionSpec_outError_(v17, v41, v23, spec, &v75);
    v45 = v75;
    if (v45)
    {
      v33 = v45;
      v49 = objc_msgSend_raiseErrorOrConvert_(context, v46, v45, v48);

      v20 = v49;
LABEL_25:

      goto LABEL_43;
    }

    isDuration = objc_msgSend_isDuration(v17, v46, v47, v48);
    if (isDuration != objc_msgSend_isDuration(v23, v64, v65, v66) && (objc_msgSend_isUnitlessZero(v17, v67, v68, v69) & 1) == 0 && (objc_msgSend_isUnitlessZero(v23, v67, v68, v69) & 1) == 0)
    {
      objc_msgSend_reportLossOfUnitsWarningInContext_(TSCEWarning, v67, context, v69);
    }

    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v67, context, v69);
    }

    else
    {
      memset(&v80, 0, sizeof(v80));
    }

    if (v9)
    {
      objc_msgSend_formatWithContext_(v9, v67, context, v69);
    }

    else
    {
      memset(&v74, 0, sizeof(v74));
    }

    TSCEFormat::formatByMergingWithFormat(&v73, &v80, &v74, v68, v69);
    TSCEFormat::TSCEFormat(&v83, &v73);
    objc_msgSend_setFormat_(v20, v70, &v83, v71);
    goto LABEL_41;
  }

  v17 = objc_msgSend_invalidDateManipulationError(TSCEError, v14, v15, v16);
  v20 = objc_msgSend_raiseErrorOrConvert_(context, v18, v17, v19);
LABEL_42:

LABEL_43:

  return v20;
}

@end