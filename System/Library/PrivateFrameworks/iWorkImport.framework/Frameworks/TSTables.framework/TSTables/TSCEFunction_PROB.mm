@interface TSCEFunction_PROB
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PROB

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v8 = *(*arguments + 16);
  v184[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 2, v184);
  v11 = v184[0];
  v185[0] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14);
  v185[1] = v15;
  if (v11)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
    goto LABEL_63;
  }

  if (*(arguments + 1) - *arguments >= 0x19uLL)
  {
    v18 = *(*arguments + 24);
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v18, v19, v20, v21);
    if (isTokenOrEmptyArg)
    {
LABEL_5:
      v24 = isTokenOrEmptyArg ^ 1u;

      goto LABEL_7;
    }

    v183 = 0;
    v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v22, context, spec, 3, &v183);
    v11 = v183;
    if (v11)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v38, v11, v39);
    }

    else
    {
      matched = objc_msgSend_dimensionsMatchModuloCurrency_(v37, v38, v10, v39);
      if (matched)
      {
        v184[1] = objc_msgSend_decimalRepresentation(v37, v98, v99, v100);
        v184[2] = v101;

        goto LABEL_5;
      }

      v108 = sub_2212F6DF8(matched);
      v110 = objc_msgSend_localizedStringForKey_value_table_(v108, v109, @"1, 3, and 4", &stru_2834BADA0, @"TSCalculationEngine");

      v114 = objc_msgSend_functionName(spec, v111, v112, v113);
      v116 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, v115, v114, v110);
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v117, v116, v118);
    }

    goto LABEL_63;
  }

  v24 = 0;
LABEL_7:
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v25 = **arguments;
  v180 = 0;
  v160 = v25;
  v161 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v25, v26, context, spec, 0, 0, &v180);
  v27 = v180;
  if (!v27)
  {
    v30 = *(*arguments + 8);
    v179 = 0;
    v159 = v30;
    v32 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v30, v31, context, spec, 1, 0, &v179);
    v33 = v179;
    if (v33)
    {
      v11 = v33;
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v34, v33, v36);
LABEL_61:

      goto LABEL_62;
    }

    v40 = objc_msgSend_count(v161, v34, v35, v36);
    if (v40 != objc_msgSend_count(v32, v41, v42, v43))
    {
      v102 = objc_msgSend_functionName(spec, v44, v45, v46);
      v105 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v103, v102, v104);
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v106, v105, v107);

      v11 = 0;
      goto LABEL_61;
    }

    v173[0] = context;
    v173[1] = spec;
    v174 = 0;
    v175[0] = 0;
    *(v175 + 7) = 0;
    v176 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v177 = 0;
    v178 = 0;
    v157 = v173[0];
    v167[0] = v157;
    v167[1] = spec;
    v168 = 0;
    v169[0] = 1;
    *(v169 + 7) = 0;
    v170 = v176;
    v171 = 0;
    v172 = 0;
    if (!v40)
    {
LABEL_43:
      v119 = objc_msgSend_divideByZeroError(TSCEError, v47, v48, v49);
      v17 = objc_msgSend_raiseErrorOrConvert_(v157, v120, v119, v121);
LABEL_44:

LABEL_45:
      v11 = 0;
LABEL_60:

      goto LABEL_61;
    }

    v50 = 0;
    v154 = 0;
    v158 = v32;
    while (1)
    {
      v51 = objc_msgSend_valueAtIndex_accessContext_(v161, v47, v50, v173);
      v53 = objc_msgSend_valueAtIndex_accessContext_(v32, v52, v50, v167);
      if (objc_msgSend_isNil(v51, v54, v55, v56) && (objc_msgSend_isNil(v53, v57, v58, v59) & 1) == 0)
      {
        v156 = objc_msgSend_functionName(spec, v57, v58, v59);
        v124 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v122, v156, v123);
        v17 = objc_msgSend_raiseErrorOrConvert_(v157, v125, v124, v126);
LABEL_58:

        v11 = 0;
        goto LABEL_59;
      }

      if ((objc_msgSend_isNil(v51, v57, v58, v59) & 1) == 0 && (objc_msgSend_isNil(v53, v60, v61, v62) & 1) == 0)
      {
        break;
      }

LABEL_33:

      ++v50;
      v32 = v158;
      if (v40 == v50)
      {
        if (!v154)
        {
          goto LABEL_43;
        }

        TSUDecimal::operator=();
        v91 = objc_msgSend_locale(v157, v88, v89, v90);
        v93 = TSUDecimal::floatingPointEqual(&v181, &v164, v91, v92);

        if ((v93 & 1) == 0)
        {
          v119 = objc_msgSend_functionName(spec, v94, v95, v96);
          v135 = objc_msgSend_rangeDoesNotSumToOneForFunctionName_argumentNumber_(TSCEError, v134, v119, 2);
          v17 = objc_msgSend_raiseErrorOrConvert_(v157, v136, v135, v137);

          goto LABEL_44;
        }

        if (v160)
        {
          objc_msgSend_formatWithContext_(v160, v94, v157, v96);
        }

        else
        {
          memset(&v163, 0, sizeof(v163));
        }

        if (v159)
        {
          objc_msgSend_formatWithContext_(v159, v94, v157, v96);
        }

        else
        {
          memset(&v162, 0, sizeof(v162));
        }

        TSCEFormat::formatByMergingWithFormat(&v164, &v163, &v162, v95, v96);
        v17 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v152, v182, &v164);
        goto LABEL_45;
      }
    }

    v166 = 0;
    v153 = v53;
    v156 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v51, v63, v157, spec, 0, &v166);
    v64 = v166;
    if (v64)
    {
      v11 = v64;
      v17 = objc_msgSend_raiseErrorOrConvert_(v157, v65, v64, v67);
      goto LABEL_59;
    }

    v164._tskFormat = objc_msgSend_decimalRepresentation(v156, v65, v66, v67);
    *&v164._formatType = v68;
    v70 = objc_msgSend_dimensionsMatchModuloCurrency_(v156, v68, v10, v69);
    if ((v70 & 1) == 0)
    {
      v139 = sub_2212F6DF8(v70);
      if (v24)
      {
        objc_msgSend_localizedStringForKey_value_table_(v139, v138, @"1, 3, and 4", &stru_2834BADA0, @"TSCalculationEngine");
      }

      else
      {
        objc_msgSend_localizedStringForKey_value_table_(v139, v138, @"1 and 3", &stru_2834BADA0, @"TSCalculationEngine");
      }
      v124 = ;

      v146 = objc_msgSend_functionName(spec, v143, v144, v145);
      v148 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, v147, v146, v124);
      v17 = objc_msgSend_raiseErrorOrConvert_(v157, v149, v148, v150);

      goto LABEL_58;
    }

    v72 = v53;
    v73 = v24;
    v74 = v40;
    v165 = 0;
    v75 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v72, v71, v157, spec, 1, &v165);
    v11 = v165;
    v155 = v75;
    v163._tskFormat = objc_msgSend_decimalRepresentation(v75, v76, v77, v78);
    *&v163._formatType = v79;
    if (v11)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(v157, v79, v11, v81);
      v53 = v153;
      goto LABEL_55;
    }

    v40 = v74;
    v24 = v73;
    if (objc_msgSend_hasUnits(v155, v79, v80, v81))
    {
      v127 = objc_msgSend_functionName(spec, v82, v83, v84);
      v53 = v153;
      v130 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v140, v127, 2);
      v133 = objc_msgSend_raiseErrorOrConvert_(v157, v141, v130, v142);
LABEL_54:
      v17 = v133;

LABEL_55:
LABEL_59:

      v32 = v158;
      goto LABEL_60;
    }

    TSUDecimal::operator=();
    if ((TSUDecimal::operator<() & 1) != 0 || (TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
    {
      v127 = objc_msgSend_functionName(spec, v85, v86, v87);
      v130 = objc_msgSend_invalidProbabilityErrorForFunctionName_(TSCEError, v128, v127, v129);
      v53 = v153;
      v133 = objc_msgSend_raiseErrorOrConvert_(v157, v131, v130, v132);
      goto LABEL_54;
    }

    if (v73)
    {
      if (!sub_2212AD924(&v164, v185) || (TSUDecimal::operator<=() & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (!TSUDecimal::operator==())
    {
LABEL_32:
      TSUDecimal::operator+=();
      ++v154;

      v53 = v153;
      goto LABEL_33;
    }

    TSUDecimal::operator+=();
    goto LABEL_32;
  }

  v11 = v27;
  v17 = objc_msgSend_raiseErrorOrConvert_(context, v28, v27, v29);
LABEL_62:

LABEL_63:

  return v17;
}

@end