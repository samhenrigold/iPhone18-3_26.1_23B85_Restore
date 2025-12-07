@interface TSCELineFitFunction
+ (id)computeSlope:(id)slope functionSpec:(id)spec xs:(id)xs xArgumentIndex:(int)index ys:(id)ys yArgumentIndex:(int)argumentIndex xAverageResult:(TSUDecimal *)result yAverageResult:(TSUDecimal *)self0 slopeResult:(TSUDecimal *)self1 xExamplePtr:(id *)self2 yExamplePtr:(id *)self3;
@end

@implementation TSCELineFitFunction

+ (id)computeSlope:(id)slope functionSpec:(id)spec xs:(id)xs xArgumentIndex:(int)index ys:(id)ys yArgumentIndex:(int)argumentIndex xAverageResult:(TSUDecimal *)result yAverageResult:(TSUDecimal *)self0 slopeResult:(TSUDecimal *)self1 xExamplePtr:(id *)self2 yExamplePtr:(id *)self3
{
  slopeCopy = slope;
  xsCopy = xs;
  ysCopy = ys;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v150 = objc_msgSend_count(xsCopy, v20, v21, v22);
  if (objc_msgSend_count(ysCopy, v23, v24, v25) != v150)
  {
    v80 = objc_msgSend_functionName(spec, v26, v27, v28);
    v123 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v121, v80, v122);
    goto LABEL_80;
  }

  v149 = objc_msgSend_nilValue(TSCENilValue, v26, v27, v28);
  v147 = objc_msgSend_nilValue(TSCENilValue, v29, v30, v31);
  v165[0] = slopeCopy;
  v165[1] = spec;
  v166 = 0;
  indexCopy = index;
  v168[0] = 0;
  *(v168 + 3) = 0;
  v169 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v170 = 0;
  v171 = 0;
  v32 = v165[0];
  v158[0] = v32;
  v158[1] = spec;
  v159 = 0;
  argumentIndexCopy = argumentIndex;
  v161[0] = 0;
  *(v161 + 3) = 0;
  v162 = v169;
  v163 = 0;
  v164 = 0;
  if (!v150)
  {
LABEL_51:
    v123 = objc_msgSend_divideByZeroError(TSCEError, v33, v34, v35);
    v80 = 0;
    goto LABEL_79;
  }

  v36 = v32;
  indexCopy2 = index;
  v144 = 0;
  argumentIndexCopy2 = argumentIndex;
  v145 = 0;
  specCopy = spec;
  v37 = 0;
  v38 = 0;
  v141 = xsCopy;
  do
  {
    v39 = objc_msgSend_valueAtIndex_accessContext_(xsCopy, v33, v37, v165);
    v40 = ysCopy;
    v42 = objc_msgSend_valueAtIndex_accessContext_(ysCopy, v41, v37, v158);
    if (objc_msgSend_isError(v39, v43, v44, v45))
    {
      objc_msgSend_errorWithContext_(v39, v46, v36, v48);
      v123 = LABEL_49:;
      v80 = 0;
      goto LABEL_78;
    }

    if (objc_msgSend_isError(v42, v46, v47, v48))
    {
      objc_msgSend_errorWithContext_(v42, v49, v36, v51);
      goto LABEL_49;
    }

    if (objc_msgSend_isNil(v39, v49, v50, v51) & 1) != 0 || (objc_msgSend_isNil(v42, v52, v53, v54))
    {
      goto LABEL_42;
    }

    v60 = objc_msgSend_deepType_(v39, v55, v36, v56);
    v142 = v60 == 3;
    if (v60 == 3)
    {
      if (((objc_msgSend_isNil(v149, v57, v58, v59) | v38) & 1) == 0)
      {
        v68 = objc_msgSend_functionName(specCopy, v61, v62, v63);
        xsCopy = v141;
        v123 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v126, v68, v127);
        v80 = 0;
        goto LABEL_77;
      }

      v157 = 0;
      v69 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v39, v61, v36, specCopy, indexCopy2, &v157);
      v70 = v157;
      if (v70)
      {
        goto LABEL_62;
      }

      objc_msgSend_mapDateToDouble_(TSCECalendar, v64, v69, v65);
      TSUDecimal::operator=();
      v68 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v66, v176, v67);
    }

    else
    {
      v156 = 0;
      v69 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v57, v36, specCopy, indexCopy2, &v156);
      v70 = v156;
      if (v70)
      {
LABEL_62:
        v80 = v70;
        v68 = v69;
        v123 = v80;
        goto LABEL_67;
      }

      if (v38)
      {
        v128 = objc_msgSend_functionName(specCopy, v71, v72, v73);
        v123 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v129, v128, v130);

        v80 = 0;
        v68 = v69;
LABEL_67:
        xsCopy = v141;
LABEL_77:

LABEL_78:
        ysCopy = v40;
        goto LABEL_79;
      }

      v68 = v69;
    }

    if (objc_msgSend_isNil(v149, v71, v72, v73))
    {
      v76 = v149;
      v149 = v39;
    }

    else
    {
      if (v60 == 3)
      {
        goto LABEL_22;
      }

      v155 = 0;
      v76 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v149, v74, v36, specCopy, indexCopy2, &v155);
      v77 = v155;
      v80 = v77;
      xsCopy = v141;
      if (v77)
      {
        v123 = v77;
        goto LABEL_76;
      }

      if ((objc_msgSend_dimensionsMatchModuloCurrency_(v76, v78, v68, v79) & 1) == 0)
      {
        v102 = objc_msgSend_functionName(specCopy, v81, v82, v83);
        v135 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v133, v102, v134);
        goto LABEL_72;
      }
    }

LABEL_22:
    v84 = v36;
    v88 = objc_msgSend_deepType_(v42, v74, v36, v75);
    v89 = v88 == 3;
    if (v88 == 3)
    {
      if (((objc_msgSend_isNil(v147, v85, v86, v87) | v144) & 1) == 0)
      {
        goto LABEL_68;
      }

      v154 = 0;
      v90 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v42, v85, v84, specCopy, argumentIndexCopy2, &v154);
      v91 = v154;
      if (v91)
      {
LABEL_63:
        v80 = v91;
        v76 = v90;
        v123 = v80;
        goto LABEL_75;
      }

      objc_msgSend_mapDateToDouble_(TSCECalendar, v92, v90, v93);
      TSUDecimal::operator=();
      v76 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v94, v176, v95);
    }

    else
    {
      if (v144)
      {
LABEL_68:
        v76 = objc_msgSend_functionName(specCopy, v85, v86, v87);
        xsCopy = v141;
        v123 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v131, v76, v132);
        v80 = 0;
        goto LABEL_76;
      }

      v153 = 0;
      v90 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v42, v85, v84, specCopy, argumentIndexCopy2, &v153);
      v91 = v153;
      if (v91)
      {
        goto LABEL_63;
      }

      v76 = v90;
    }

    if (objc_msgSend_isNil(v147, v96, v97, v98))
    {
      v102 = v147;
      v147 = v42;
    }

    else
    {
      if (v88 == 3)
      {
        goto LABEL_35;
      }

      v152 = 0;
      v102 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v147, v99, v84, specCopy, indexCopy2, &v152);
      v103 = v152;
      v80 = v103;
      if (v103)
      {
        v135 = v103;
LABEL_72:
        v123 = v135;
LABEL_74:

LABEL_75:
        xsCopy = v141;
LABEL_76:

        goto LABEL_77;
      }

      if ((objc_msgSend_dimensionsMatchModuloCurrency_(v102, v104, v76, v105) & 1) == 0)
      {
        v136 = objc_msgSend_functionName(specCopy, v106, v107, v108);
        v123 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v137, v136, v138);

        goto LABEL_74;
      }
    }

LABEL_35:
    xsCopy = v141;
    if (objc_msgSend_hasUnits(v68, v99, v100, v101) && !objc_msgSend_dimension(v68, v109, v110, v111))
    {
      v119 = objc_msgSend_rawDecimalValue(v68, v109, v110, v111);
      TSUDecimal::operator=();
      v176[0] = *v119;
      TSUDecimal::operator*=();
      v113 = *(&v176[0] + 1);
      v112 = *&v176[0];
    }

    else
    {
      v112 = objc_msgSend_decimalRepresentation(v68, v109, v110, v111);
    }

    *&v151 = v112;
    *(&v151 + 1) = v113;
    if (objc_msgSend_hasUnits(v76, v113, v114, v115) && !objc_msgSend_dimension(v76, v116, v117, v118))
    {
      v120 = objc_msgSend_rawDecimalValue(v76, v116, v117, v118);
      TSUDecimal::operator=();
      v176[0] = *v120;
      TSUDecimal::operator*=();
    }

    else
    {
      objc_msgSend_decimalRepresentation(v76, v116, v117, v118);
    }

    TSUDecimal::operator+=();
    TSUDecimal::operator+=();
    v176[0] = v151;
    TSUDecimal::operator*=();
    TSUDecimal::operator+=();
    v176[0] = v151;
    TSUDecimal::operator*=();
    TSUDecimal::operator+=();
    ++v145;

    v38 = v142;
    v144 = v89;
    v36 = v84;
LABEL_42:

    ++v37;
    ysCopy = v40;
  }

  while (v150 != v37);
  if (v145 <= 1)
  {
    goto LABEL_51;
  }

  TSUDecimal::operator=();
  TSUDecimal::operator/=();
  TSUDecimal::operator=();
  TSUDecimal::operator/=();
  if (slopeResult)
  {
    TSUDecimal::operator=();
    v176[0] = v151;
    TSUDecimal::operator*=();
    TSUDecimal::operator*=();
    v176[0] = v175;
    TSUDecimal::operator-=();
    v124 = v176[0];
    v176[0] = v151;
    TSUDecimal::operator*=();
    TSUDecimal::operator*=();
    v176[0] = v174;
    TSUDecimal::operator-=();
    v176[0] = v124;
    TSUDecimal::operator/=();
    v125 = *(&v176[0] + 1);
    slopeResult->_decimal.w[0] = *&v176[0];
    slopeResult->_decimal.w[1] = v125;
  }

  if (result)
  {
    *result = v173;
  }

  if (averageResult)
  {
    *averageResult = v172;
  }

  if (ptr)
  {
    *ptr = v149;
  }

  v80 = 0;
  v123 = 0;
  if (examplePtr)
  {
    *examplePtr = v147;
  }

LABEL_79:

LABEL_80:

  return v123;
}

@end