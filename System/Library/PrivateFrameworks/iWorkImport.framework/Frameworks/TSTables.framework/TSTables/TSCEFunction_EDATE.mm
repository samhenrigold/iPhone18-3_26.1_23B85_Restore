@interface TSCEFunction_EDATE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_EDATE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v52 = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v52);
  v11 = v52;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
  }

  else
  {
    v17 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14);
    v20 = objc_msgSend_clearOffTime_(v17, v18, v10, v19);

    v21 = *(*arguments + 8);
    v51 = 0;
    v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v22, context, spec, 1, &v51);
    v15 = v51;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v24, v15, v26);
    }

    else
    {
      v50._tskFormat = objc_msgSend_decimalRepresentation(v23, v24, v25, v26);
      *&v50._formatType = v27;
      v31 = TSUDecimal::truncateWithRounding(&v50);
      if ((v31 - 1200001) > 0xFFDB60FE)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        objc_msgSend_setMonth_(v32, v37, v31, v38);
        v40 = objc_msgSend_dateByAddingComponents_toDate_options_(v17, v39, v32, v20, 0);

        v41 = MEMORY[0x277D80658];
        v45 = objc_msgSend_locale(context, v42, v43, v44);
        v34 = objc_msgSend_defaultDateOnlyShortFormatForLocale_(v41, v46, v45, v47);

        TSCEFormat::TSCEFormat(&v50, v34, 0);
        v16 = objc_msgSend_dateValue_format_(TSCEDateValue, v48, v40, &v50);
        v20 = v40;
      }

      else
      {
        v32 = objc_msgSend_functionName(spec, v28, v29, v30);
        v34 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v33, 2, v32, 1, 1, -1200000.0, 1200000.0);
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v35, v34, v36);
      }
    }

    v10 = v20;
  }

  return v16;
}

@end