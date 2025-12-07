@interface TSCEFunction_EOMONTH
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_EOMONTH

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v67 = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v67);
  v14 = v67;
  if (!v14)
  {
    if (!v10)
    {
      v30 = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v11, v8, context, spec, 0);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32);
      goto LABEL_18;
    }

    v16 = objc_msgSend_gregorianCalendar(TSCECalendar, v11, v12, v13);
    v19 = objc_msgSend_clearOffTime_(v16, v17, v10, v18);

    v20 = *(*arguments + 8);
    v66 = 0;
    v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v66);
    v14 = v66;
    v26 = objc_msgSend_trunc(v22, v23, v24, v25);

    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v27, v14, v29);
LABEL_16:

      v10 = v19;
      goto LABEL_17;
    }

    v62._tskFormat = objc_msgSend_decimalRepresentation(v26, v27, v28, v29);
    *&v62._formatType = v33;
    TSUDecimal::doubleValue(&v62);
    v38 = v37;
    if (fabs(v37) > 1200000.0)
    {
      v39 = objc_msgSend_functionName(spec, v34, v35, v36);
      v41 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v40, 2, v39, 1, 1, -1200000.0, 1200000.0);
      v44 = objc_msgSend_raiseErrorOrConvert_(context, v42, v41, v43);
LABEL_15:
      v15 = v44;

      goto LABEL_16;
    }

    v39 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    objc_msgSend_setMonth_(v39, v45, v38, v46);
    v48 = objc_msgSend_dateByAddingComponents_toDate_options_(v16, v47, v39, v19, 0);

    v64 = 0;
    v65 = 0;
    v63 = 0;
    objc_msgSend_extractComponentsFromDate_year_month_day_(v16, v49, v48, &v65, &v64, &v63);
    v63 = 0;
    if (v64 <= 0xC)
    {
      if (((1 << v64) & 0x15AA) != 0)
      {
        v52 = 31;
LABEL_14:
        v63 = v52;
        v19 = objc_msgSend_dateWithYear_month_day_(v16, v50, v65, v64);

        v53 = MEMORY[0x277D80658];
        v57 = objc_msgSend_locale(context, v54, v55, v56);
        v41 = objc_msgSend_defaultDateOnlyShortFormatForLocale_(v53, v58, v57, v59);

        TSCEFormat::TSCEFormat(&v62, v41, 0);
        v44 = objc_msgSend_dateValue_format_(TSCEDateValue, v60, v19, &v62);
        goto LABEL_15;
      }

      if (((1 << v64) & 0xA50) != 0)
      {
        v52 = 30;
        goto LABEL_14;
      }
    }

    if (objc_msgSend_isLeapYear_(TSCECalendar, v50, v65, v51))
    {
      v52 = 29;
    }

    else
    {
      v52 = 28;
    }

    goto LABEL_14;
  }

  v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v14, v13);
LABEL_17:

  v30 = v14;
LABEL_18:

  return v15;
}

@end