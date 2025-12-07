@interface TSCEFunction_PRICE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PRICE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v212 = 0;
  v213 = 0;
  v214 = 0;
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v211, 0, sizeof(v211));
  }

  sub_22114F414(&v212, &v211);
  v210 = 0;
  v13 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v11, v12, context, spec, 0, &v210);
  v17 = v210;
  if (v17)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v14, v17, v16);
    goto LABEL_64;
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
      memset(&v211, 0, sizeof(v211));
    }

    sub_22114F414(&v212, &v211);
    v209 = 0;
    v31 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v26, v30, context, spec, 1, &v209);
    v17 = v209;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v32, v17, v34);
LABEL_62:

      goto LABEL_63;
    }

    if (!v31)
    {
      v184 = objc_msgSend_functionName(spec, v32, v33, v34);
      v185 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v38, v184, 2);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v39, v185, v40);
      v17 = 0;
LABEL_61:

      goto LABEL_62;
    }

    v184 = objc_msgSend_clearOffTime_(v19, v32, v31, v34);
    v35 = *(*arguments + 16);
    v185 = v35;
    if (v35)
    {
      objc_msgSend_formatWithContext_(v35, v36, context, v37);
    }

    else
    {
      memset(&v211, 0, sizeof(v211));
    }

    sub_22114F414(&v212, &v211);
    v208 = 0;
    v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v185, v41, context, spec, 2, &v208);
    v17 = v208;
    v183 = v42;
    *&v207 = objc_msgSend_decimalRepresentation(v42, v43, v44, v45);
    *(&v207 + 1) = v46;
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v46, v17, v47);
LABEL_60:

      goto LABEL_61;
    }

    v48 = *(*arguments + 24);
    v182 = v48;
    if (v48)
    {
      objc_msgSend_formatWithContext_(v48, v49, context, v50);
    }

    else
    {
      memset(&v211, 0, sizeof(v211));
    }

    sub_22114F414(&v212, &v211);
    v206 = 0;
    v52 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v182, v51, context, spec, 3, &v206);
    v17 = v206;
    v181 = v52;
    v56 = objc_msgSend_decimalRepresentation(v52, v53, v54, v55);
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v57, v17, v58);
LABEL_59:

      goto LABEL_60;
    }

    v175 = v57;
    v176 = v56;
    v59 = *(*arguments + 32);
    v180 = v59;
    if (v59)
    {
      objc_msgSend_formatWithContext_(v59, v60, context, v61);
    }

    else
    {
      memset(&v211, 0, sizeof(v211));
    }

    sub_22114F414(&v212, &v211);
    v205 = 0;
    v63 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v180, v62, context, spec, 4, &v205);
    v17 = v205;
    v179 = v63;
    v67 = objc_msgSend_decimalRepresentation(v63, v64, v65, v66);
    if (v17)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v68, v17, v69);
LABEL_58:

      goto LABEL_59;
    }

    v70 = v67;
    v171 = v68;
    v71 = *(*arguments + 40);
    v178 = v71;
    if (v71)
    {
      objc_msgSend_formatWithContext_(v71, v72, context, v73);
    }

    else
    {
      memset(&v211, 0, sizeof(v211));
    }

    sub_22114F414(&v212, &v211);
    v170 = v70;
    v204 = 0;
    v75 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v178, v74, context, spec, 5, &v204);
    v17 = v204;
    v173 = v75;
    v79 = objc_msgSend_trunc(v75, v76, v77, v78);

    v174 = v79;
    v211._tskFormat = objc_msgSend_decimalRepresentation(v79, v80, v81, v82);
    *&v211._formatType = v83;
    v84 = TSUDecimal::truncateWithRounding(&v211);
    if (v17)
    {
      v88 = objc_msgSend_raiseErrorOrConvert_(context, v85, v17, v87);
LABEL_35:
      v18 = v88;
LABEL_57:

      goto LABEL_58;
    }

    v89 = v84;
    if (v84 > 4 || ((1 << v84) & 0x16) == 0)
    {
      v96 = objc_msgSend_functionName(spec, v85, v86, v87);
      v98 = objc_msgSend_invalidFrequencyErrorForFunctionName_argumentNumber_(TSCEError, v97, v96, 6);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v99, v98, v100);

LABEL_56:
      v17 = 0;
      goto LABEL_57;
    }

    if (*(arguments + 1) - *arguments < 0x31uLL)
    {
      v95 = 0;
    }

    else
    {
      v168 = *(*arguments + 48);
      if (objc_msgSend_isTokenOrEmptyArg(v168, v90, v91, v92))
      {
        v95 = 0;
      }

      else
      {
        v167 = v89;
        if (v168)
        {
          objc_msgSend_formatWithContext_(v168, v93, context, v94);
        }

        else
        {
          memset(&v211, 0, sizeof(v211));
        }

        sub_22114F414(&v212, &v211);
        v203 = 0;
        v102 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v168, v101, context, spec, 6, &v203);
        v17 = v203;
        v106 = objc_msgSend_trunc(v102, v103, v104, v105);

        v107 = v106;
        v211._tskFormat = objc_msgSend_decimalRepresentation(v106, v108, v109, v110);
        *&v211._formatType = v111;
        v112 = TSUDecimal::truncateWithRounding(&v211);
        if (v17)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v113, v17, v114);

          goto LABEL_57;
        }

        v95 = v112;

        v89 = v167;
      }
    }

    if (objc_msgSend_compare_(v22, v85, v184, v87) != 1 && objc_msgSend_compare_(v22, v115, v184, v117))
    {
      v118 = v89;
      v201 = 0;
      objc_msgSend_getCouponDaysWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v115, spec, v22, v184, v95, &v201, v89);
      v17 = v201;
      TSUDecimal::operator=();
      if (v17)
      {
        v88 = objc_msgSend_raiseErrorOrConvert_(context, v119, v17, v120);
        goto LABEL_35;
      }

      v199 = 0;
      objc_msgSend_getCouponDaysBeforeSettlementDateWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v119, spec, v22, v184, v95, &v199, v118);
      v17 = v199;
      TSUDecimal::operator=();
      if (v17)
      {
        v88 = objc_msgSend_raiseErrorOrConvert_(context, v128, v17, v129);
        goto LABEL_35;
      }

      *&v211._tskFormat = v202;
      TSUDecimal::operator-=();
      v169 = *&v211._formatType;
      tskFormat = v211._tskFormat;
      v198 = 0;
      objc_msgSend_getNumFutureCouponsWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v130, spec, v22, v184, v95, &v198, v118);
      v132 = v131;
      v133 = v198;
      if (v133)
      {
        v17 = v133;
        v88 = objc_msgSend_raiseErrorOrConvert_(context, v134, v133, v135);
        goto LABEL_35;
      }

      TSUDecimal::operator=();
      if (v132 <= 1.0)
      {
        TSUDecimal::operator=();
        *&v211._tskFormat = v194;
        TSUDecimal::operator*=();
        v149 = v211._tskFormat;
        v148 = *&v211._formatType;
        TSUDecimal::operator=();
        v211._tskFormat = v149;
        *&v211._formatType = v148;
        TSUDecimal::operator/=();
        v211._tskFormat = v170;
        *&v211._formatType = v171;
        TSUDecimal::operator+=();
        v151 = v211._tskFormat;
        v150 = *&v211._formatType;
        TSUDecimal::operator=();
        v211._tskFormat = tskFormat;
        *&v211._formatType = v169;
        TSUDecimal::operator/=();
        v153 = v211._tskFormat;
        v152 = *&v211._formatType;
        TSUDecimal::operator=();
        v211._tskFormat = v176;
        *&v211._formatType = v175;
        TSUDecimal::operator/=();
        v188 = v211._tskFormat;
        v189 = *&v211._formatType;
        v211._tskFormat = v153;
        *&v211._formatType = v152;
        TSUDecimal::operator*=();
        v190._decimal.w[0] = v211._tskFormat;
        v190._decimal.w[1] = *&v211._formatType;
        *&v211._tskFormat = v191;
        TSUDecimal::operator+=();
        v192 = *&v211._tskFormat;
        v211._tskFormat = v151;
        *&v211._formatType = v150;
        TSUDecimal::operator/=();
        v154 = v211._tskFormat;
        v177 = *&v211._formatType;
        *&v211._tskFormat = v200;
        TSUDecimal::operator/=();
        v194 = *&v211._tskFormat;
        v155 = TSUDecimal::operator-();
        v157 = v156;
        TSUDecimal::operator=();
        *&v211._tskFormat = v192;
        TSUDecimal::operator*=();
        v158 = v211._tskFormat;
        v159 = *&v211._formatType;
        TSUDecimal::operator=();
        v211._tskFormat = v158;
        *&v211._formatType = v159;
        TSUDecimal::operator/=();
        v193._decimal.w[0] = v211._tskFormat;
        v193._decimal.w[1] = *&v211._formatType;
        v211._tskFormat = v155;
        *&v211._formatType = v157;
        TSUDecimal::operator*=();
        v195 = v211._tskFormat;
        v196 = *&v211._formatType;
        v211._tskFormat = v154;
        *&v211._formatType = v177;
        TSUDecimal::operator+=();
      }

      else
      {
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v211._tskFormat = v176;
        *&v211._formatType = v175;
        TSUDecimal::operator/=();
        v192 = *&v211._tskFormat;
        *&v211._tskFormat = v193;
        TSUDecimal::operator+=();
        v194 = *&v211._tskFormat;
        TSUDecimal::operator=();
        v211._tskFormat = tskFormat;
        *&v211._formatType = v169;
        TSUDecimal::operator/=();
        *&v211._tskFormat = v187;
        TSUDecimal::operator+=();
        v188 = v211._tskFormat;
        v189 = *&v211._formatType;
        v190._decimal.w[0] = TSUDecimal::operator-();
        v190._decimal.w[1] = v136;
        v195 = sub_2212B2BA4(&v194, &v190);
        v196 = v137;
        v211._tskFormat = v170;
        *&v211._formatType = v171;
        TSUDecimal::operator*=();
        v138 = v211._tskFormat;
        v172 = *&v211._formatType;
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        *&v211._tskFormat = v207;
        TSUDecimal::operator/=();
        v193._decimal.w[0] = v211._tskFormat;
        v193._decimal.w[1] = *&v211._formatType;
        *&v211._tskFormat = v194;
        TSUDecimal::operator*=();
        v140 = v211._tskFormat;
        v139 = *&v211._formatType;
        *&v211._tskFormat = v200;
        TSUDecimal::operator/=();
        v191 = *&v211._tskFormat;
        v211._tskFormat = v140;
        *&v211._formatType = v139;
        TSUDecimal::operator*=();
        v195 = v211._tskFormat;
        v196 = *&v211._formatType;
        TSUDecimal::operator=();
        if (v132 >= 1.0)
        {
          v141 = 2;
          while (1)
          {
            TSUDecimal::operator=();
            TSUDecimal::operator=();
            v211._tskFormat = v176;
            *&v211._formatType = v175;
            TSUDecimal::operator/=();
            v190._decimal.w[0] = v211._tskFormat;
            v190._decimal.w[1] = *&v211._formatType;
            *&v211._tskFormat = v191;
            TSUDecimal::operator+=();
            v192 = *&v211._tskFormat;
            TSUDecimal::operator=();
            v211._tskFormat = tskFormat;
            *&v211._formatType = v169;
            TSUDecimal::operator/=();
            *&v211._tskFormat = v186;
            TSUDecimal::operator+=();
            v187._decimal.w[0] = TSUDecimal::operator-();
            v187._decimal.w[1] = v142;
            v193._decimal.w[0] = sub_2212B2BA4(&v192, &v187);
            v193._decimal.w[1] = v143;
            if (TSUDecimal::isInf(&v193))
            {
              break;
            }

            TSUDecimal::operator=();
            TSUDecimal::operator=();
            *&v211._tskFormat = v207;
            TSUDecimal::operator/=();
            v190._decimal.w[0] = v211._tskFormat;
            v190._decimal.w[1] = *&v211._formatType;
            *&v211._tskFormat = v191;
            TSUDecimal::operator*=();
            TSUDecimal::operator*=();
            v192 = *&v211._tskFormat;
            TSUDecimal::operator+=();
            v147 = v141++;
            if (v132 < v147)
            {
              goto LABEL_78;
            }
          }

          v121 = objc_msgSend_functionName(spec, v144, v145, v146);
          v123 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v162, v121, v163);
          v126 = objc_msgSend_raiseErrorOrConvert_(context, v164, v123, v165);
          goto LABEL_55;
        }

LABEL_78:
        v211._tskFormat = v138;
        *&v211._formatType = v172;
        TSUDecimal::operator+=();
        TSUDecimal::operator-=();
      }

      v197[0] = v211._tskFormat;
      v197[1] = *&v211._formatType;
      v160 = [TSCENumberValue alloc];
      sub_221256020(&v212, &v211);
      v18 = objc_msgSend_initWithDecimal_format_(v160, v161, v197, &v211);
      goto LABEL_56;
    }

    v121 = objc_msgSend_functionName(spec, v115, v116, v117);
    v123 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v122, v121, 1, 2, 1, 0);
    v126 = objc_msgSend_raiseErrorOrConvert_(context, v124, v123, v125);
LABEL_55:
    v18 = v126;

    goto LABEL_56;
  }

  v22 = objc_msgSend_functionName(spec, v14, v15, v16);
  v26 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v27, v22, 1);
  v18 = objc_msgSend_raiseErrorOrConvert_(context, v28, v26, v29);
  v17 = 0;
LABEL_63:

LABEL_64:
  if (v212)
  {
    v213 = v212;
    operator delete(v212);
  }

  return v18;
}

@end