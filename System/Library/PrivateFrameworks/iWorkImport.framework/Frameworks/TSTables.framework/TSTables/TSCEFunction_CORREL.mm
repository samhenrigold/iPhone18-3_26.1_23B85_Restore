@interface TSCEFunction_CORREL
+ (TSUDecimal)covarianceWithVector:(id)vector functionSpec:(id)spec vector1:(id)vector1 vector2:(id)vector2 outStdDev:(TSUDecimal *)dev durationAllowed:(BOOL)allowed isSample:(BOOL)sample outError:(id *)self0;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CORREL

+ (TSUDecimal)covarianceWithVector:(id)vector functionSpec:(id)spec vector1:(id)vector1 vector2:(id)vector2 outStdDev:(TSUDecimal *)dev durationAllowed:(BOOL)allowed isSample:(BOOL)sample outError:(id *)self0
{
  vectorCopy = vector;
  vector1Copy = vector1;
  vector2Copy = vector2;
  if (!error)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "+[TSCEFunction_CORREL covarianceWithVector:functionSpec:vector1:vector2:outStdDev:durationAllowed:isSample:outError:]", v16);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 1277, 0, "invalid nil value for '%{public}s'", "outError");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  v27 = objc_msgSend_count(vector1Copy, v14, v15, v16);
  if (objc_msgSend_count(vector2Copy, v28, v29, v30) != v27)
  {
    v35 = objc_msgSend_functionName(spec, v31, v32, v33);
    *error = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v36, v35, v37);

    goto LABEL_11;
  }

  if (dev)
  {
    sampleCopy = 1;
  }

  else
  {
    sampleCopy = sample;
  }

  v134 = sampleCopy;
  if (sampleCopy && v27 <= 1)
  {
    *error = objc_msgSend_divideByZeroError(TSCEError, v31, v32, v33);
LABEL_11:
    TSUDecimal::operator=();
    goto LABEL_12;
  }

  v162 = 0;
  v163 = 0;
  v164 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 0;
  TSUDecimal::operator=();
  sub_2216B7DE0(&v162, v27, &v153);
  TSUDecimal::operator=();
  sub_2216B7DE0(&v159, v27, &v153);
  v136 = objc_msgSend_zero(TSCENumberValue, v40, v41, v42);
  devCopy = dev;
  *&v153 = vectorCopy;
  *(&v153 + 1) = spec;
  v154 = 0;
  v155[0] = 0;
  *(v155 + 7) = 0;
  v137 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v156 = v137;
  v157 = 0;
  v158 = 0;
  v43 = v153;
  v147[0] = v43;
  v147[1] = spec;
  v148 = 0;
  v149[0] = 1;
  *(v149 + 7) = 0;
  v150 = v137;
  v151 = 0;
  v152 = 0;
  if (!v27)
  {
    v138 = 0;
LABEL_42:
    v102 = !v134;
    if (v138 > 1)
    {
      v102 = 1;
    }

    if (v102)
    {
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      if (v138)
      {
        v103 = 0;
        v104 = v138;
        do
        {
          TSUDecimal::operator+=();
          TSUDecimal::operator+=();
          v103 += 16;
          --v104;
        }

        while (v104);
      }

      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      TSUDecimal::operator=();
      if (v138)
      {
        v105 = 0;
        v106 = v138;
        do
        {
          v166 = v162[v105];
          TSUDecimal::operator-=();
          v108 = v166._decimal.w[0];
          v107 = v166._decimal.w[1];
          v166 = v159[v105];
          TSUDecimal::operator-=();
          v143 = v166;
          v166._decimal.w[0] = v108;
          v166._decimal.w[1] = v107;
          TSUDecimal::operator*=();
          v144 = v166;
          TSUDecimal::operator+=();
          ++v105;
          --v106;
        }

        while (v106);
      }

      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      if (devCopy)
      {
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        if (v138)
        {
          v109 = 0;
          v110 = v138;
          do
          {
            v166 = v162[v109];
            TSUDecimal::operator-=();
            v112 = v166._decimal.w[0];
            v111 = v166._decimal.w[1];
            v166 = v162[v109];
            TSUDecimal::operator-=();
            v166._decimal.w[0] = v112;
            v166._decimal.w[1] = v111;
            TSUDecimal::operator*=();
            v142 = v166;
            TSUDecimal::operator+=();
            v166 = v159[v109];
            TSUDecimal::operator-=();
            v114 = v166._decimal.w[0];
            v113 = v166._decimal.w[1];
            v166 = v159[v109];
            TSUDecimal::operator-=();
            v166._decimal.w[0] = v114;
            v166._decimal.w[1] = v113;
            TSUDecimal::operator*=();
            v142 = v166;
            TSUDecimal::operator+=();
            ++v109;
            --v110;
          }

          while (v110);
        }

        v166 = v144;
        TSUDecimal::operator*=();
        v142 = v166;
        TSUDecimal::doubleValue(&v142);
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v166 = v142;
        TSUDecimal::operator/=();
        v115 = v166._decimal.w[1];
        devCopy->_decimal.w[0] = v166._decimal.w[0];
        devCopy->_decimal.w[1] = v115;
      }

      v165 = v145;
      if (sample)
      {
        TSUDecimal::operator=();
        TSUDecimal::operator*=();
      }
    }

    else
    {
      *error = objc_msgSend_divideByZeroError(TSCEError, v44, v45, v46);
      TSUDecimal::operator=();
    }

    goto LABEL_74;
  }

  v47 = v43;
  v48 = 0;
  v138 = 0;
  v49 = 0;
  v135 = 1;
  while (1)
  {
    v50 = vector1Copy;
    v51 = objc_msgSend_valueAtIndex_accessContext_(vector1Copy, v44, v49, &v153);
    v52 = vector2Copy;
    v54 = objc_msgSend_valueAtIndex_accessContext_(vector2Copy, v53, v49, v147);
    if (objc_msgSend_isError(v51, v55, v56, v57))
    {
      objc_msgSend_errorWithContext_(v51, v58, v47, v60);
      *error = LABEL_61:;
      TSUDecimal::operator=();
      goto LABEL_73;
    }

    if (objc_msgSend_isError(v54, v58, v59, v60))
    {
      objc_msgSend_errorWithContext_(v54, v61, v47, v63);
      goto LABEL_61;
    }

    if (objc_msgSend_isNil(v51, v61, v62, v63) & 1) != 0 || (objc_msgSend_isNil(v54, v64, v65, v66))
    {
      goto LABEL_39;
    }

    v69 = objc_msgSend_deepType_(v51, v67, v47, v68);
    if (v69 != objc_msgSend_deepType_(v54, v70, v47, v71))
    {
      v116 = objc_msgSend_functionName(spec, v72, v73, v74);
      *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v117, v116, v118);

      TSUDecimal::operator=();
      goto LABEL_73;
    }

    TSUDecimal::operator=();
    TSUDecimal::operator=();
    v133 = v69 == 3;
    if (v69 != 3)
    {
      break;
    }

    v76 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v51, v75, v47, spec, 0, error);
    v81 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v54, v77, v47, spec, 1, error);
    if (*error)
    {
      goto LABEL_65;
    }

    if ((v135 & 1) == 0)
    {
      v123 = objc_msgSend_functionName(spec, v78, v79, v80);
      *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v124, v123, v125);

LABEL_65:
      TSUDecimal::operator=();
      goto LABEL_72;
    }

    objc_msgSend_mapDateToDouble_(TSCECalendar, v78, v76, v80);
    TSUDecimal::operator=();
    objc_msgSend_mapDateToDouble_(TSCECalendar, v82, v81, v83);
    TSUDecimal::operator=();
LABEL_38:

    v162[v138] = v166;
    v159[v138++] = v146;
    v48 = v133;
    v135 = v133;
LABEL_39:

    ++v49;
    vector1Copy = v50;
    vector2Copy = v52;
    if (v27 == v49)
    {
      goto LABEL_42;
    }
  }

  v132 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v51, v75, v47, spec, 0, error);
  v85 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v54, v84, v47, spec, 1, error);
  v81 = v85;
  if (*error)
  {
    goto LABEL_71;
  }

  if (v48)
  {
    goto LABEL_63;
  }

  v76 = v132;
  if (allowed)
  {
    goto LABEL_32;
  }

  if (objc_msgSend_hasUnits(v132, v86, v87, v88) && !objc_msgSend_dimension(v132, v89, v90, v91))
  {
    v119 = objc_msgSend_functionName(spec, v89, v90, v91);
    v122 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v129, v119, 1);
    goto LABEL_70;
  }

  if (!objc_msgSend_hasUnits(v81, v89, v90, v91) || objc_msgSend_dimension(v81, v86, v92, v88))
  {
LABEL_32:
    if (v135)
    {
      v94 = v132;

      v95 = v94;
      v76 = v132;
    }

    else
    {
      if ((objc_msgSend_dimensionsMatchModuloCurrency_(v136, v86, v132, v88) & 1) == 0)
      {
LABEL_63:
        v119 = objc_msgSend_functionName(spec, v86, v87, v88);
        v122 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v120, v119, v121);
        goto LABEL_70;
      }

      v95 = v136;
    }

    v136 = v95;
    if ((objc_msgSend_dimensionsMatchModuloCurrency_(v95, v86, v81, v88) & 1) == 0)
    {
      v126 = objc_msgSend_functionName(spec, v96, v97, v98);
      *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v127, v126, v128);

      TSUDecimal::operator=();
      goto LABEL_72;
    }

    v166 = *objc_msgSend_rawDecimalValue(v76, v96, v97, v98);
    v146 = *objc_msgSend_rawDecimalValue(v81, v99, v100, v101);
    goto LABEL_38;
  }

  v119 = objc_msgSend_functionName(spec, v86, v93, v88);
  v122 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v130, v119, 2);
LABEL_70:
  *error = v122;

LABEL_71:
  v76 = v132;
  TSUDecimal::operator=();
LABEL_72:

LABEL_73:
  vector1Copy = v50;
  vector2Copy = v52;
LABEL_74:

  if (v159)
  {
    v160 = v159;
    operator delete(v159);
  }

  if (v162)
  {
    v163 = v162;
    operator delete(v162);
  }

LABEL_12:

  v39 = *(&v165 + 1);
  v38 = v165;
  result._decimal.w[1] = v39;
  result._decimal.w[0] = v38;
  return result;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v37 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 1, &v37);
  v10 = v37;
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12);
    goto LABEL_14;
  }

  v15 = *(*arguments + 8);
  v36 = 0;
  v16 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v15, v11, context, spec, 1, 1, &v36);
  v17 = v36;
  if (!v17)
  {
    TSUDecimal::operator=();
    v34 = 0;
    isSample_outError = objc_msgSend_covarianceWithVector_functionSpec_vector1_vector2_outStdDev_durationAllowed_isSample_outError_(TSCEFunction_CORREL, v21, context, spec, v9, v16, v35, 1, 0, &v34);
    v24 = v23;
    v13 = v34;
    v32._tskFormat = isSample_outError;
    *&v32._formatType = v24;
    TSUDecimal::operator/=();
    v33[0] = isSample_outError;
    v33[1] = v24;
    if (v13)
    {
      v20 = objc_msgSend_raiseErrorOrConvert_(context, v25, v13, v27);
      goto LABEL_13;
    }

    if (v9)
    {
      objc_msgSend_formatWithContext_(v9, v25, context, v27);
      if (v16)
      {
LABEL_9:
        objc_msgSend_formatWithContext_(v16, v25, context, v27);
LABEL_12:
        TSCEFormat::formatByMergingWithFormat(&v32, &v31, &v30, v26, v27);
        v20 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v28, v33, &v32);
        goto LABEL_13;
      }
    }

    else
    {
      memset(&v31, 0, sizeof(v31));
      if (v16)
      {
        goto LABEL_9;
      }
    }

    memset(&v30, 0, sizeof(v30));
    goto LABEL_12;
  }

  v13 = v17;
  v20 = objc_msgSend_raiseErrorOrConvert_(context, v18, v17, v19);
LABEL_13:
  v14 = v20;

LABEL_14:

  return v14;
}

@end