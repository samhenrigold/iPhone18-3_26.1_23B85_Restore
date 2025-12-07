@interface TSCEFunction_DATEDIF
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_DATEDIF

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v121[0] = 0;
  v10 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v121);
  v11 = v121[0];
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
    goto LABEL_32;
  }

  v17 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14);
  v20 = objc_msgSend_clearOffTime_(v17, v18, v10, v19);
  v21 = *(*arguments + 8);
  v120 = 0;
  v23 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v21, v22, context, spec, 1, &v120);
  v24 = v120;
  if (!v24)
  {
    v110 = objc_msgSend_clearOffTime_(v17, v25, v23, v26);
    v27 = *(*arguments + 16);
    v119 = 0;
    v108 = v27;
    v109 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v27, v28, context, spec, 2, &v119);
    v15 = v119;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v29, v15, v30);
LABEL_30:

      goto LABEL_31;
    }

    if (objc_msgSend_compare_(v20, v29, v110, v30) == 1)
    {
      v107 = objc_msgSend_functionName(spec, v31, v32, v33);
      v35 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v34, v107, 1, 2, 1, 1);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v36, v35, v37);
LABEL_9:

LABEL_29:
      goto LABEL_30;
    }

    v38 = objc_msgSend_components_fromDate_toDate_options_(v17, v31, 12, v20, v110, 0);
    v106 = objc_msgSend_year(v38, v39, v40, v41);
    v107 = v38;
    v105 = objc_msgSend_month(v38, v42, v43, v44);
    if (!objc_msgSend_caseInsensitiveCompare_(v109, v45, @"Y", v46) || !objc_msgSend_caseInsensitiveCompare_(v109, v47, @"M", v48))
    {
      TSUDecimal::operator=();
      v66 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v64, &v112, v65);
      goto LABEL_18;
    }

    if (!objc_msgSend_caseInsensitiveCompare_(v109, v49, @"D", v50))
    {
      v67 = objc_msgSend_components_fromDate_toDate_options_(v17, v51, 16, v20, v110, 0);

      objc_msgSend_day(v67, v68, v69, v70);
      TSUDecimal::operator=();
      v16 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v71, &v112, v72);
LABEL_27:
      v107 = v67;
      goto LABEL_28;
    }

    if (objc_msgSend_caseInsensitiveCompare_(v109, v51, @"MD", v52))
    {
      if (objc_msgSend_caseInsensitiveCompare_(v109, v53, @"YM", v54))
      {
        if (objc_msgSend_caseInsensitiveCompare_(v109, v55, @"YD", v56))
        {
          v35 = objc_msgSend_functionName(spec, v57, v58, v59);
          v61 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v60, v35, 3);
          v16 = objc_msgSend_raiseErrorOrConvert_(context, v62, v61, v63);

          goto LABEL_9;
        }

        v117 = 0;
        v118 = 0;
        v115 = 0;
        v116 = 0;
        v113 = 0;
        v114 = 0;
        objc_msgSend_extractComponentsFromDate_year_month_day_(v17, v57, v20, &v118, &v117, &v116);
        objc_msgSend_extractComponentsFromDate_year_month_day_(v17, v92, v110, &v115, &v114, &v113);
        if (v117 > v114 || (v94 = 2005, v117 == v114) && v116 > v113)
        {
          v94 = 2006;
        }

        v95 = objc_msgSend_dateWithYear_month_day_(v17, v93, v94, v114, v113);
        v97 = objc_msgSend_dateWithYear_month_day_(v17, v96, 2005, v117, v116);
        v99 = objc_msgSend_components_fromDate_toDate_options_(v17, v98, 16, v97, v95, 0);

        objc_msgSend_day(v99, v100, v101, v102);
        TSUDecimal::operator=();
        v16 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v103, &v112, v104);

        v107 = v99;
LABEL_28:
        v111._tskFormat = 0;
        v111._formatType = 0;
        v111._formatState = 0;
        *&v111._durationFormat = 1057;
        *(&v111._durationFormat + 2) = 1;
        *&v111._baseFormat.base = -50266102;
        v111._numberFormat = 253;
        TSCEFormat::TSCEFormat(&v112, &v111);
        objc_msgSend_setFormat_(v16, v89, &v112, v90);
        goto LABEL_29;
      }

      fmod(v105 + v106 * 12.0, 12.0);
      TSUDecimal::operator=();
      v66 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v80, &v112, v81);
LABEL_18:
      v16 = v66;
      goto LABEL_28;
    }

    v117 = 0;
    v118 = 0;
    v116 = 0;
    objc_msgSend_extractComponentsFromDate_year_month_day_(v17, v53, v110, &v117, &v118, &v116);
    Day = objc_msgSend_extractDay_(v17, v73, v20, v74);
    if (Day <= v116)
    {
      v77 = v117;
      v79 = v118;
    }

    else
    {
      v77 = v117;
      v78 = v118;
      v79 = --v118;
      if (v78 == 1)
      {
        --v117;
        v118 = 12;
        objc_msgSend_dateWithYear_month_day_(v17, v75, v77 - 1, 12, Day);
        v82 = LABEL_26:;
        v67 = objc_msgSend_components_fromDate_toDate_options_(v17, v83, 16, v82, v110, 0);

        objc_msgSend_day(v67, v84, v85, v86);
        TSUDecimal::operator=();
        v16 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v87, &v112, v88);

        goto LABEL_27;
      }
    }

    objc_msgSend_dateWithYear_month_day_(v17, v75, v77, v79, Day);
    goto LABEL_26;
  }

  v15 = v24;
  v16 = objc_msgSend_raiseErrorOrConvert_(context, v25, v24, v26);
LABEL_31:

LABEL_32:

  return v16;
}

@end