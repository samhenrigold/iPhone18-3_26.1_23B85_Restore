@interface TSCEFunction_ACCRINT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ACCRINT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v230 = 0;
  v231 = 0;
  v232 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v229, 0, sizeof(v229));
  }

  sub_22114F414(&v230, &v229);
  v228 = 0;
  v13 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v228);
  v17 = v228;
  if (v17)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v14, v17, v16);
    goto LABEL_66;
  }

  if (v13)
  {
    v19 = objc_msgSend_gregorianCalendar(TSCECalendar, v14, v15, v16);
    v22 = objc_msgSend_clearOffTime_(v19, v20, v13, v21);
    v23 = *(*arguments + 8);
    v26 = v23;
    if (v23)
    {
      objc_msgSend_formatWithContext_(v23, v24, context, v25);
    }

    else
    {
      memset(&v229, 0, sizeof(v229));
    }

    sub_22114F414(&v230, &v229);
    v227 = 0;
    v31 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v26, v30, context, spec, 1, &v227);
    v17 = v227;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v32, v17, v34);
LABEL_64:

      goto LABEL_65;
    }

    if (!v31)
    {
      v204 = objc_msgSend_functionName(spec, v32, v33, v34);
      v205 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v38, v204, 2);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v39, v205, v40);
      v17 = 0;
LABEL_63:

      goto LABEL_64;
    }

    v204 = objc_msgSend_clearOffTime_(v19, v32, v31, v34);
    v35 = *(*arguments + 16);
    v205 = v35;
    if (v35)
    {
      objc_msgSend_formatWithContext_(v35, v36, context, v37);
    }

    else
    {
      memset(&v229, 0, sizeof(v229));
    }

    sub_22114F414(&v230, &v229);
    v226 = 0;
    v203 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v205, v41, context, spec, 2, &v226);
    v17 = v226;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v42, v17, v43);
LABEL_62:

      goto LABEL_63;
    }

    if (!v203)
    {
      v201 = objc_msgSend_functionName(spec, v42, 0, v43);
      v202 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v47, v201, 3);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v48, v202, v49);
      v17 = 0;
LABEL_61:

      goto LABEL_62;
    }

    v200 = v31;
    v201 = objc_msgSend_clearOffTime_(v19, v42, v203, v43);
    v44 = *(*arguments + 24);
    v202 = v44;
    if (v44)
    {
      objc_msgSend_formatWithContext_(v44, v45, context, v46);
    }

    else
    {
      memset(&v229, 0, sizeof(v229));
    }

    sub_22114F414(&v230, &v229);
    v225 = 0;
    v51 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v202, v50, context, spec, 3, &v225);
    v17 = v225;
    v199 = v51;
    v52 = v51;
    v31 = v200;
    v56 = objc_msgSend_decimalRepresentation(v52, v53, v54, v55);
    v196 = v57;
    v197 = v56;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v57, v17, v58);
LABEL_60:

      goto LABEL_61;
    }

    TSUDecimal::operator=();
    v59 = *(*arguments + 32);
    v198 = v59;
    if (v59)
    {
      objc_msgSend_formatWithContext_(v59, v60, context, v61);
    }

    else
    {
      memset(&v229, 0, sizeof(v229));
    }

    sub_22114F414(&v230, &v229);
    if (objc_msgSend_nativeType(v198, v62, v63, v64) != 10)
    {
      v223 = 0;
      v194 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v198, v65, context, spec, 4, &v223);
      v17 = v223;
      *&v224 = objc_msgSend_decimalRepresentation(v194, v66, v67, v68);
      *(&v224 + 1) = v69;

      if (v17)
      {
        v18 = objc_msgSend_raiseErrorOrConvert_(context, v70, v17, v71);
LABEL_59:

        goto LABEL_60;
      }
    }

    v72 = *(*arguments + 40);
    v195 = v72;
    if (v72)
    {
      objc_msgSend_formatWithContext_(v72, v73, context, v74);
    }

    else
    {
      memset(&v229, 0, sizeof(v229));
    }

    sub_22114F414(&v230, &v229);
    v222 = 0;
    v192 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v195, v75, context, spec, 5, &v222);
    v17 = v222;
    v191 = objc_msgSend_trunc(v192, v76, v77, v78);

    v229._tskFormat = objc_msgSend_decimalRepresentation(v191, v79, v80, v81);
    *&v229._formatType = v82;
    v83 = TSUDecimal::truncateWithRounding(&v229);
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v84, v17, v86);
LABEL_58:

      goto LABEL_59;
    }

    if (v83 > 4 || (v193 = v83, ((1 << v83) & 0x16) == 0))
    {
      v94 = objc_msgSend_functionName(spec, v84, v85, v86);
      v96 = objc_msgSend_invalidFrequencyErrorForFunctionName_argumentNumber_(TSCEError, v95, v94, 6);
      v99 = objc_msgSend_raiseErrorOrConvert_(context, v97, v96, v98);
LABEL_57:
      v18 = v99;

      v17 = 0;
      goto LABEL_58;
    }

    if (*(arguments + 1) - *arguments < 0x31uLL)
    {
      v93 = 0;
    }

    else
    {
      v87 = *(*arguments + 48);
      v189 = v87;
      if (objc_msgSend_isTokenOrEmptyArg(v87, v88, v89, v90))
      {
        v93 = 0;
      }

      else
      {
        if (v87)
        {
          objc_msgSend_formatWithContext_(v87, v91, context, v92);
        }

        else
        {
          memset(&v229, 0, sizeof(v229));
        }

        sub_22114F414(&v230, &v229);
        v221 = 0;
        v101 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v87, v100, context, spec, 6, &v221);
        v17 = v221;
        v187 = objc_msgSend_trunc(v101, v102, v103, v104);

        if (v17)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v105, v17, v107);

          goto LABEL_58;
        }

        v229._tskFormat = objc_msgSend_decimalRepresentation(v187, v105, v106, v107);
        *&v229._formatType = v108;
        v93 = TSUDecimal::truncateWithRounding(&v229);
      }
    }

    if (objc_msgSend_compare_(v22, v84, v201, v86) == 1 || !objc_msgSend_compare_(v22, v109, v201, v111))
    {
      v94 = objc_msgSend_functionName(spec, v109, v110, v111);
      v96 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v118, v94, 1, 3, 1, 0);
      v99 = objc_msgSend_raiseErrorOrConvert_(context, v119, v96, v120);
      goto LABEL_57;
    }

    if (objc_msgSend_compare_(v22, v109, v201, v111) == 1)
    {
      v94 = objc_msgSend_functionName(spec, v112, v113, v114);
      v96 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v115, v94, 1, 2, 1, 1);
      v99 = objc_msgSend_raiseErrorOrConvert_(context, v116, v96, v117);
      goto LABEL_57;
    }

    TSUDecimal::operator=();
    v219 = 0;
    v220 = 0;
    v218 = 0;
    objc_msgSend_extractComponentsFromDate_year_month_day_(v19, v122, v204, &v220, &v219, &v218);
    Year = objc_msgSend_extractYear_(v19, v123, v201, v124);
    if (v220 <= Year + 1)
    {
      v127 = Year + 1;
    }

    else
    {
      v127 = v220;
    }

    objc_msgSend_dateWithYear_month_day_(v19, v126, v220 + ((v127 - v220 + 3) & 0xFFFFFFFFFFFFFFFCLL), v219, v218);
    v190 = v217 = 0;
    v188 = objc_msgSend_prevCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v128, spec, v22, v190, v193, &v217);
    v17 = v217;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v129, v17, v130);
LABEL_88:

      goto LABEL_58;
    }

    objc_msgSend_compare_(v22, v129, v188, v130);
    v216 = 0;
    v186 = objc_msgSend_prevCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v131, spec, v201, v190, v193, &v216);
    v132 = v216;
    if (v132)
    {
      v17 = v132;
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v133, v132, v134);
LABEL_87:

      v31 = v200;
      goto LABEL_88;
    }

    v215 = 0;
    v185 = objc_msgSend_nextCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v133, spec, v201, v190, v193, &v215);
    v135 = v215;
    if (v135)
    {
      v17 = v135;
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v136, v135, v137);
LABEL_86:

      goto LABEL_87;
    }

    v182 = objc_msgSend_compare_(v201, v136, v186, v137);
    v138 = v201;
    if (v182)
    {
      v138 = v185;
    }

    v139 = v193;
    v214[1] = 0;
    v181 = v138;
    objc_msgSend_getNumFutureCouponsWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v140, spec, v22, v193);
    v142 = v141;
    v143 = 0;
    if (v143)
    {
      v17 = v143;
      v146 = objc_msgSend_raiseErrorOrConvert_(context, v144, v143, v145);
LABEL_84:
      v18 = v146;
LABEL_85:

      goto LABEL_86;
    }

    if (v142 <= 1.0)
    {
      if (v142 != 1.0)
      {
        v183 = MEMORY[0x277D81150];
        v149 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v144, "+[TSCEFunction_ACCRINT evaluateForArgsWithContext:functionSpec:arguments:]", v145);
        v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v150, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFinancialFunctions.mm", v151);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v183, v153, v149, v152, 928, 0, "ACCRINT: should not reach here if numCoponsLeft is not 1");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v154, v155, v156);
      }

      v157 = sub_2214A3CE8(v190, -1);
      v208 = 0;
      objc_msgSend_getCouponDaysWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v158, spec, v157, v190, v93, &v208, v139);
      v17 = v208;
      if (v17)
      {
        v161 = objc_msgSend_raiseErrorOrConvert_(context, v159, v17, v160);
      }

      else
      {
        v207 = 0;
        sub_2214A452C(v22, v201, v93, &v207);
        v17 = v207;
        if (!v17)
        {
          TSUDecimal::operator=();
          goto LABEL_106;
        }

        v161 = objc_msgSend_raiseErrorOrConvert_(context, v165, v17, v166);
      }

LABEL_100:
      v18 = v161;
LABEL_101:

      goto LABEL_85;
    }

    v214[0] = 0;
    objc_msgSend_getCouponDaysSinceSettlementDateWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v144, spec, v22, v190, v93, v214, v139);
    v17 = v214[0];
    if (v17)
    {
      v146 = objc_msgSend_raiseErrorOrConvert_(context, v147, v17, v148);
      goto LABEL_84;
    }

    v213 = 0;
    objc_msgSend_getCouponDaysWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v147, spec, v22, v190, v93, &v213, v139);
    v162 = v213;
    if (v162)
    {
      v17 = v162;
      v146 = objc_msgSend_raiseErrorOrConvert_(context, v163, v162, v164);
      goto LABEL_84;
    }

    if (v182)
    {
      v210 = 0;
      objc_msgSend_getCouponDaysBeforeSettlementDateWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v163, spec, v201, v190, v93, &v210, v139);
      v167 = v210;
      if (v167)
      {
        v17 = v167;
        v146 = objc_msgSend_raiseErrorOrConvert_(context, v168, v167, v169);
        goto LABEL_84;
      }

      goto LABEL_113;
    }

    v157 = sub_2214A3CE8(v201, -1);
    v212 = 0;
    v184 = objc_msgSend_prevCoupDateWithSettlement_settlement_maturity_frequency_outError_(TSCEFinancialFunctions, v171, spec, v157, v190, v193, &v212);
    v17 = v212;
    if (v17)
    {
      v174 = objc_msgSend_raiseErrorOrConvert_(context, v172, v17, v173);
    }

    else
    {
      v211 = 0;
      sub_2214A452C(v184, v201, v93, &v211);
      v175 = v211;
      if (!v175)
      {

LABEL_113:
        v157 = sub_2214A3CE8(v190, -1);
        v209 = 0;
        objc_msgSend_getCouponDaysWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v178, spec, v157, v190, v93, &v209, v139);
        v17 = v209;
        if (v17)
        {
          v161 = objc_msgSend_raiseErrorOrConvert_(context, v179, v17, v180);
          goto LABEL_100;
        }

        TSUDecimal::operator=();
LABEL_106:

        TSUDecimal::operator=();
        v229._tskFormat = v197;
        *&v229._formatType = v196;
        TSUDecimal::operator/=();
        *&v229._tskFormat = v224;
        TSUDecimal::operator*=();
        TSUDecimal::operator*=();
        v206[0] = v229._tskFormat;
        v206[1] = *&v229._formatType;
        sub_221256020(&v230, &v229);
        v18 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v170, v206, &v229);
        v17 = 0;
        goto LABEL_85;
      }

      v17 = v175;
      v174 = objc_msgSend_raiseErrorOrConvert_(context, v176, v175, v177);
    }

    v18 = v174;

    goto LABEL_101;
  }

  v22 = objc_msgSend_functionName(spec, v14, v15, v16);
  v26 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v27, v22, 1);
  v18 = objc_msgSend_raiseErrorOrConvert_(context, v28, v26, v29);
  v17 = 0;
LABEL_65:

LABEL_66:
  if (v230)
  {
    v231 = v230;
    operator delete(v230);
  }

  return v18;
}

@end