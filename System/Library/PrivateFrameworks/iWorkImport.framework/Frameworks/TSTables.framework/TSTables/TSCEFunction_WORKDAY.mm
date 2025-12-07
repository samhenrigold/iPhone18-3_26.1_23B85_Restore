@interface TSCEFunction_WORKDAY
+ (id)dateByAddingNumberOfDaysExcludingWeekends:(id)weekends numDays:(int)days components:(id)components;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_WORKDAY

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v142[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v142);
  v11 = v142[0];
  if (v11)
  {
    v15 = v11;
    spec = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
    v16 = v10;
    goto LABEL_41;
  }

  v17 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14);
  v16 = objc_msgSend_clearOffTime_(v17, v18, v10, v19);

  v20 = *(*arguments + 8);
  v141 = 0;
  v131 = v20;
  v132 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v141);
  v22 = v141;
  if (!v22)
  {
    if (objc_msgSend_hasUnits(v132, v23, v24, v25))
    {
      v29 = objc_msgSend_dimension(v132, v26, v27, v28);
      v33 = 0.0;
      if (!v29)
      {
        objc_msgSend_rawTimeIntervalValue(v132, v30, v31, v32, 0.0);
        v33 = v34 / 60.0 / 60.0 / 24.0;
      }
    }

    else
    {
      v134._decimal.w[0] = objc_msgSend_decimalRepresentation(v132, v26, v27, v28);
      v134._decimal.w[1] = v35;
      TSUDecimal::doubleValue(&v134);
    }

    v36 = floor(v33);
    if (fabs(v36) > 439200000.0)
    {
      v37 = objc_msgSend_functionName(spec, v30, v31, v32);
      v39 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_upperBound_upperBoundInclusive_(TSCEError, v38, 2, v37, 1, 1, -439200000.0, 439200000.0);
      spec = objc_msgSend_raiseErrorOrConvert_(context, v40, v39, v41);
      v15 = 0;
      v42 = v39;
LABEL_39:

      goto LABEL_40;
    }

    if (*(arguments + 1) - *arguments < 0x11uLL)
    {
      v37 = 0;
      v15 = 0;
    }

    else
    {
      v130 = *(*arguments + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v130, v43, v44, v45) & 1) != 0 || objc_msgSend_deepType_(v130, v46, context, v47) == 10)
      {
        v37 = 0;
        v15 = 0;
        v42 = v130;
      }

      else
      {
        v140 = 0;
        v81 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v130, v48, context, spec, 2, 1, &v140);
        v89 = v140;
        if (v89)
        {
          v15 = v89;
          spec = objc_msgSend_raiseErrorOrConvert_(context, v90, v89, v92);
          v37 = 0;
LABEL_38:

          v42 = v130;
          goto LABEL_39;
        }

        v126 = v81;
        v93 = objc_msgSend_count(v81, v90, v91, v92);
        v37 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v94, v93, v95);
        contextCopy = context;
        v134._decimal.w[0] = contextCopy;
        v134._decimal.w[1] = spec;
        v135 = 0;
        v136[0] = 2;
        *(v136 + 7) = 0;
        v137 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v138 = 0;
        v139 = 0;
        v128 = v93;
        if (v93)
        {
          v98 = 0;
          v99 = 1;
          do
          {
            v129 = objc_msgSend_valueAtIndex_accessContext_(v126, v96, v98, &v134, contextCopy);
            if ((objc_msgSend_isNil(v129, v100, v101, v102) & 1) == 0)
            {
              v133 = 0;
              v104 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v129, v103, contextCopy, spec, 2, &v133);
              v15 = v133;
              if (v15)
              {
                spec = objc_msgSend_raiseErrorOrConvert_(contextCopy, v105, v15, v106);

                goto LABEL_62;
              }

              v107 = objc_msgSend_clearOffTime_(v17, v105, v104, v106);

              if (v107)
              {
                objc_msgSend_addObject_(v37, v108, v107, v109);
              }
            }

            v99 = ++v98 < v128;
          }

          while (v128 != v98);
        }

        objc_msgSend_sortUsingSelector_(v37, v96, sel_compare_, v97, contextCopy);
        v115 = objc_msgSend_count(v37, v110, v111, v112);
        if (v115 >= 2)
        {
          spec = 0;
          v116 = 1;
          do
          {
            v117 = objc_msgSend_objectAtIndex_(v37, v113, spec, v114);
            v120 = objc_msgSend_objectAtIndex_(v37, v118, v116, v119);
            if (objc_msgSend_isEqualToDate_(v117, v121, v120, v122))
            {
              objc_msgSend_removeObjectAtIndex_(v37, v123, spec, v124);
              --v115;
            }

            else
            {
              spec = v116;
            }

            v116 = spec + 1;
          }

          while (spec + 1 < v115);
        }

        v99 = 0;
        v15 = 0;
LABEL_62:

        v42 = v130;
        if (v99)
        {
          goto LABEL_39;
        }
      }
    }

    v130 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v50 = objc_msgSend_dateByAddingNumberOfDaysExcludingWeekends_numDays_components_(TSCEFunction_WORKDAY, v49, v16, v36);
    v54 = objc_msgSend_count(v37, v51, v52, v53);
    v58 = v54;
    if (v36 <= 0.0)
    {
      if (v36 < 0.0 && ((v54 - 1) & 0x8000000000000000) == 0)
      {
        do
        {
          v70 = objc_msgSend_objectAtIndex_(v37, v55, --v58, v57);
          Weekday = objc_msgSend_extractWeekday_(v17, v71, v70, v72);
          v76 = Weekday == 1 || Weekday == 7;
          if (!v76 && objc_msgSend_compare_(v70, v74, v16, v75) == -1 && objc_msgSend_compare_(v70, v77, v50, v78) <= 1)
          {
            v80 = v50;
            v50 = objc_msgSend_dateByAddingNumberOfDaysExcludingWeekends_numDays_components_(TSCEFunction_WORKDAY, v79, v50, 0xFFFFFFFFLL, v130);
          }
        }

        while (v58 > 0);
      }
    }

    else if (v54)
    {
      v59 = 0;
      v127 = v37;
      do
      {
        v60 = objc_msgSend_objectAtIndex_(v37, v55, v59, v57);
        v63 = objc_msgSend_extractWeekday_(v17, v61, v60, v62);
        if (v63 != 1 && v63 != 7 && objc_msgSend_compare_(v60, v64, v16, v65) == 1 && (objc_msgSend_compare_(v60, v66, v50, v67) + 1) <= 1)
        {
          v69 = v50;
          v50 = objc_msgSend_dateByAddingNumberOfDaysExcludingWeekends_numDays_components_(TSCEFunction_WORKDAY, v68, v50, 1, v130);

          v37 = v127;
        }

        ++v59;
      }

      while (v58 != v59);
    }

    v81 = v50;
    v82 = MEMORY[0x277D80658];
    v83 = objc_msgSend_locale(context, v55, v56, v57);
    v86 = objc_msgSend_defaultDateOnlyShortFormatForLocale_(v82, v84, v83, v85);

    TSCEFormat::TSCEFormat(&v134, v86, 0);
    spec = objc_msgSend_dateValue_format_(TSCEDateValue, v87, v81, &v134);

    goto LABEL_38;
  }

  v15 = v22;
  spec = objc_msgSend_raiseErrorOrConvert_(context, v23, v22, v25);
LABEL_40:

LABEL_41:

  return spec;
}

+ (id)dateByAddingNumberOfDaysExcludingWeekends:(id)weekends numDays:(int)days components:(id)components
{
  weekendsCopy = weekends;
  componentsCopy = components;
  v12 = objc_msgSend_gregorianCalendar(TSCECalendar, v9, v10, v11);
  if (days >= 1)
  {
    v13 = fmod(days, 5.0);
    Weekday = objc_msgSend_extractWeekday_(v12, v14, weekendsCopy, v15);
    v19 = v13;
    v20 = v13 - days / 5u + 8 * (days / 5u);
    if (Weekday > 3)
    {
      if (Weekday <= 5)
      {
        v21 = v20 + 2;
        if (Weekday == 4)
        {
          v22 = (v19 - 3) >= 2;
        }

        else
        {
          v22 = (v19 - 2) >= 3;
        }

LABEL_28:
        if (!v22)
        {
          v20 = v21;
        }

        goto LABEL_30;
      }

      if (Weekday == 6)
      {
        v21 = v20 + 2;
        v22 = (v19 - 1) >= 4;
        goto LABEL_28;
      }

      if (Weekday == 7)
      {
        if ((v19 - 1) >= 4)
        {
          v20 = (__PAIR64__(v20, v19) - 1) >> 32;
        }

        else
        {
          v20 = ((__PAIR64__(v20, v19) - 1) >> 32) + 1;
        }

        goto LABEL_30;
      }

      goto LABEL_25;
    }

    switch(Weekday)
    {
      case 1:
        v24 = v20 - 2;
        v25 = v19 == 0;
        break;
      case 2:
LABEL_30:
        objc_msgSend_setDay_(componentsCopy, v17, v20, v18);
        v23 = objc_msgSend_dateByAddingComponents_toDate_options_(v12, v46, componentsCopy, weekendsCopy, 0);
        goto LABEL_31;
      case 3:
        v24 = v20 + 2;
        v25 = v19 == 4;
        break;
      default:
LABEL_25:
        v37 = MEMORY[0x277D81150];
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "+[TSCEFunction_WORKDAY dateByAddingNumberOfDaysExcludingWeekends:numDays:components:]", v18);
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateTimeFunctions.mm", v40);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v42, v38, v41, 1577, 0, "Incorrect weekday number in function WORKDAY");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45);
        goto LABEL_30;
    }

    if (v25)
    {
      v20 = v24;
    }

    goto LABEL_30;
  }

  if ((days & 0x80000000) == 0)
  {
    v23 = weekendsCopy;
    goto LABEL_31;
  }

  v26 = fabs(days);
  v27 = fmod(v26, 5.0);
  v30 = objc_msgSend_extractWeekday_(v12, v28, weekendsCopy, v29);
  v33 = v27;
  v34 = v27 - v26 / 5 + 8 * (v26 / 5);
  if (v30 <= 3)
  {
    switch(v30)
    {
      case 1:
        if ((v33 - 1) >= 4)
        {
          v34 = (__PAIR64__(v34, v33) - 1) >> 32;
        }

        else
        {
          v34 = ((__PAIR64__(v34, v33) - 1) >> 32) + 1;
        }

        goto LABEL_52;
      case 2:
        v49 = v34 + 2;
        v50 = (v33 - 1) >= 4;
        goto LABEL_50;
      case 3:
        v49 = v34 + 2;
        v50 = (v33 - 2) >= 3;
        goto LABEL_50;
    }

    goto LABEL_47;
  }

  if (v30 <= 5)
  {
    if (v30 != 4)
    {
      v35 = v34 + 2;
      v36 = v33 == 4;
      goto LABEL_41;
    }

    v49 = v34 + 2;
    v50 = (v33 - 3) >= 2;
LABEL_50:
    if (!v50)
    {
      v34 = v49;
    }

    goto LABEL_52;
  }

  if (v30 != 6)
  {
    if (v30 == 7)
    {
      v35 = v34 - 2;
      v36 = v33 == 0;
LABEL_41:
      if (v36)
      {
        v34 = v35;
      }

      goto LABEL_52;
    }

LABEL_47:
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "+[TSCEFunction_WORKDAY dateByAddingNumberOfDaysExcludingWeekends:numDays:components:]", v32);
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDateTimeFunctions.mm", v54);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v56, v52, v55, 1625, 0, "Incorrect weekday number in function WORKDAY");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59);
  }

LABEL_52:
  objc_msgSend_setDay_(componentsCopy, v31, -v34, v32);
  v23 = objc_msgSend_dateByAddingComponents_toDate_options_(v12, v60, componentsCopy, weekendsCopy, 0);
LABEL_31:
  v47 = v23;

  return v47;
}

@end