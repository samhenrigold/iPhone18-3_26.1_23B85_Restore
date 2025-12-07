@interface TSCEFunction_DATE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DATE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v94 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v94);
  v11 = v94;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
  }

  else
  {
    v88._tskFormat = objc_msgSend_decimalRepresentation(v10, v12, v13, v14);
    *&v88._formatType = v17;
    TSUDecimal::doubleValue(&v88);
    if (v21 < -2147483650.0 || v21 > 2147483650.0)
    {
      v22 = objc_msgSend_functionName(spec, v18, v19, v20);
      v24 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v29, 1, v22, 1, 1, -2147483650.0, 2147483650.0);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v30, v24, v31);
      v15 = 0;
    }

    else
    {
      v22 = *(*arguments + 8);
      v93 = 0;
      v24 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 1, &v93);
      v25 = v93;
      if (v25)
      {
        v15 = v25;
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v26, v25, v28);
      }

      else
      {
        v88._tskFormat = objc_msgSend_decimalRepresentation(v24, v26, v27, v28);
        *&v88._formatType = v32;
        TSUDecimal::doubleValue(&v88);
        if (v36 < -2147483650.0 || v36 > 2147483650.0)
        {
          v37 = objc_msgSend_functionName(spec, v33, v34, v35);
          v39 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v43, 2, v37, 1, 1, -2147483650.0, 2147483650.0);
          v16 = objc_msgSend_raiseErrorOrConvert_(context, v44, v39, v45);
          v15 = 0;
        }

        else
        {
          v37 = *(*arguments + 16);
          v92 = 0;
          v39 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v37, v38, context, spec, 2, &v92);
          v15 = v92;
          if (v15)
          {
            v16 = objc_msgSend_raiseErrorOrConvert_(context, v40, v15, v42);
          }

          else
          {
            v88._tskFormat = objc_msgSend_decimalRepresentation(v39, v40, v41, v42);
            *&v88._formatType = v46;
            TSUDecimal::doubleValue(&v88);
            if (v50 < -2147483650.0 || v50 > 2147483650.0)
            {
              v68 = objc_msgSend_functionName(spec, v47, v48, v49);
              v77 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v80, 3, v68, 1, 1, -2147483650.0, 2147483650.0);
              v79 = objc_msgSend_raiseErrorOrConvert_(context, v81, v77, v82);
            }

            else
            {
              v51 = objc_msgSend_integer(v10, v47, v48, v49);
              v52 = v51;
              v91 = v51;
              v56 = objc_msgSend_integer(v24, v53, v54, v55);
              v87 = v52;
              v57 = v56;
              v90 = v56;
              v61 = objc_msgSend_integer(v39, v58, v59, v60);
              v65 = v61;
              v89 = v61;
              if ((v57 - 13) <= 0xFFFFFFFFFFFFFFF3)
              {
                objc_msgSend_reportMonthOutOfRangeWarningInContext_(TSCEWarning, v62, context, v64);
              }

              if ((v65 - 32) <= 0xFFFFFFFFFFFFFFE0)
              {
                objc_msgSend_reportDayOutOfRangeWarningInContext_(TSCEWarning, v62, context, v64);
              }

              v66 = objc_msgSend_gregorianCalendar(TSCECalendar, v62, v63, v64, v57);
              v68 = objc_msgSend_dateWithYear_month_day_(v66, v67, v87, v86, v65);
              objc_msgSend_extractComponentsFromDate_year_month_day_(v66, v69, v68, &v91, &v90, &v89);
              if (v91 < 0 || v90 < 0 || v89 < 0)
              {
                v77 = objc_msgSend_invalidDateError(TSCEError, v70, v71, v72);
                v79 = objc_msgSend_raiseErrorOrConvert_(context, v83, v77, v84);
              }

              else
              {
                v73 = MEMORY[0x277D80658];
                v74 = objc_msgSend_locale(context, v70, v71, v72);
                v77 = objc_msgSend_defaultDateOnlyShortFormatForLocale_(v73, v75, v74, v76);

                TSCEFormat::TSCEFormat(&v88, v77, 0);
                v79 = objc_msgSend_dateValue_format_(TSCEDateValue, v78, v68, &v88);
              }
            }

            v16 = v79;
          }
        }
      }
    }
  }

  return v16;
}

@end