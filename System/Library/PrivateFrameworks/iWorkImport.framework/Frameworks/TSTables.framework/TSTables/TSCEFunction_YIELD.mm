@interface TSCEFunction_YIELD
+ (TSUDecimal)solveYieldByNewtonsWithA:(const TSUDecimal *)a DSC:(const TSUDecimal *)c E:(const TSUDecimal *)e M:(int)m N:(double)n P:(const TSUDecimal *)p R:(const TSUDecimal *)r RV:(const TSUDecimal *)self0 initial:(const TSUDecimal *)self1;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_YIELD

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v173[0] = 0;
  v11 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 0, v173);
  v15 = v173[0];
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v15, v14);
    goto LABEL_43;
  }

  if (v11)
  {
    v17 = objc_msgSend_gregorianCalendar(TSCECalendar, v12, v13, v14);
    v20 = objc_msgSend_clearOffTime_(v17, v18, v11, v19);
    v21 = *(*arguments + 8);
    v172 = 0;
    v147 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v21, v22, context, spec, 1, &v172);
    v15 = v172;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v23, v15, v24);
LABEL_41:

      goto LABEL_42;
    }

    if (!v147)
    {
      v36 = objc_msgSend_functionName(spec, v23, 0, v24);
      v146 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v37, v36, 2);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v38, v146, v39);
      v15 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v145 = objc_msgSend_clearOffTime_(v17, v23, v147, v24);
    v28 = *(*arguments + 16);
    v171 = 0;
    v146 = v28;
    v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v28, v29, context, spec, 2, &v171);
    v15 = v171;
    v144 = v30;
    v170._decimal.w[0] = objc_msgSend_decimalRepresentation(v30, v31, v32, v33);
    v170._decimal.w[1] = v34;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v34, v15, v35);
      v36 = v145;
LABEL_39:

      goto LABEL_40;
    }

    v40 = *(*arguments + 24);
    v169 = 0;
    v143 = v40;
    v42 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v40, v41, context, spec, 3, &v169);
    v15 = v169;
    v142 = v42;
    v168._decimal.w[0] = objc_msgSend_decimalRepresentation(v42, v43, v44, v45);
    v168._decimal.w[1] = v46;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v46, v15, v47);
      v36 = v145;
LABEL_38:

      goto LABEL_39;
    }

    v48 = *(*arguments + 32);
    v167 = 0;
    v141 = v48;
    v50 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v48, v49, context, spec, 4, &v167);
    v15 = v167;
    v140 = v50;
    v166._decimal.w[0] = objc_msgSend_decimalRepresentation(v50, v51, v52, v53);
    v166._decimal.w[1] = v54;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v54, v15, v55);
      v36 = v145;
LABEL_37:

      goto LABEL_38;
    }

    v56 = *(*arguments + 40);
    v165 = 0;
    v139 = v56;
    v58 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v56, v57, context, spec, 5, &v165);
    v15 = v165;
    v137 = v58;
    v62 = objc_msgSend_trunc(v58, v59, v60, v61);

    v138 = v62;
    v148._decimal.w[0] = objc_msgSend_decimalRepresentation(v62, v63, v64, v65);
    v148._decimal.w[1] = v66;
    v67 = TSUDecimal::truncateWithRounding(&v148);
    if (v15)
    {
      goto LABEL_16;
    }

    v72 = v67;
    if (v67 <= 4 && ((1 << v67) & 0x16) != 0)
    {
      if (*(arguments + 1) - *arguments < 0x31uLL)
      {
        v78 = 0;
      }

      else
      {
        v73 = *(*arguments + 48);
        if (objc_msgSend_isTokenOrEmptyArg(v73, v74, v75, v76))
        {
          v78 = 0;
        }

        else
        {
          v136 = v72;
          v164 = 0;
          v135 = v73;
          v85 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v73, v77, context, spec, 6, &v164);
          v15 = v164;
          v89 = objc_msgSend_trunc(v85, v86, v87, v88);

          v148._decimal.w[0] = objc_msgSend_decimalRepresentation(v89, v90, v91, v92);
          v148._decimal.w[1] = v93;
          v94 = TSUDecimal::truncateWithRounding(&v148);
          if (v15)
          {
            v16 = objc_msgSend_raiseErrorOrConvert_(context, v95, v15, v96);

            goto LABEL_18;
          }

          v78 = v94;

          v72 = v136;
          v73 = v135;
        }
      }

      if (objc_msgSend_compare_(v20, v68, v145, v70) != 1 && objc_msgSend_compare_(v20, v97, v145, v99))
      {
        v100 = v72;
        v162 = 0;
        v101 = v78;
        objc_msgSend_getCouponDaysWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v97, spec, v20, v145, v72);
        v15 = v162;
        TSUDecimal::operator=();
        if (!v15)
        {
          v160 = 0;
          objc_msgSend_getCouponDaysBeforeSettlementDateWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v68, spec, v20, v145, v101, &v160, v100);
          v15 = v160;
          TSUDecimal::operator=();
          if (!v15)
          {
            v148 = v163;
            TSUDecimal::operator-=();
            v159 = v148;
            v158 = 0;
            objc_msgSend_getNumFutureCouponsWithSettlementDate_settlement_maturity_numCoupons_dayBasisMode_outError_(TSCEFinancialFunctions, v106, spec, v20, v145, v101, &v158, v100);
            v108 = v107;
            v15 = v158;
            if (!v15)
            {
              TSUDecimal::operator=();
              if (v108 <= 1.0)
              {
                TSUDecimal::operator=();
                v148 = v168;
                TSUDecimal::operator/=();
                v127 = v148._decimal.w[0];
                v126 = v148._decimal.w[1];
                v148 = v161;
                TSUDecimal::operator/=();
                TSUDecimal::operator*=();
                v128 = v148._decimal.w[0];
                v129 = v148._decimal.w[1];
                TSUDecimal::operator=();
                v148._decimal.w[0] = v128;
                v148._decimal.w[1] = v129;
                TSUDecimal::operator/=();
                v154 = v148;
                v148._decimal.w[0] = v127;
                v148._decimal.w[1] = v126;
                TSUDecimal::operator+=();
                v156 = v148;
                TSUDecimal::operator=();
                v148 = v166;
                TSUDecimal::operator/=();
                v131 = v148._decimal.w[0];
                v130 = v148._decimal.w[1];
                TSUDecimal::operator=();
                v148 = v170;
                TSUDecimal::operator/=();
                v154 = v148;
                v148._decimal.w[0] = v131;
                v148._decimal.w[1] = v130;
                TSUDecimal::operator+=();
                TSUDecimal::operator-=();
                TSUDecimal::operator/=();
                v133 = v148._decimal.w[0];
                v132 = v148._decimal.w[1];
                TSUDecimal::operator=();
                v148._decimal.w[0] = v133;
                v148._decimal.w[1] = v132;
                TSUDecimal::operator*=();
                TSUDecimal::operator*=();
                TSUDecimal::operator/=();
                v157 = v148;
              }

              else
              {
                TSUDecimal::operator=();
                v156._decimal.w[0] = objc_msgSend_solveYieldByNewtonsWithA_DSC_E_M_N_P_R_RV_initial_(self, v109, &v161, &v159, &v163, v72, &v168, &v170, v108, &v166, &v148);
                v156._decimal.w[1] = v110;
                TSUDecimal::operator=();
                v155._decimal.w[0] = objc_msgSend_solveYieldByNewtonsWithA_DSC_E_M_N_P_R_RV_initial_(self, v111, &v161, &v159, &v163, v72, &v168, &v170, v108, &v166, &v148);
                v155._decimal.w[1] = v112;
                TSUDecimal::operator=();
                v154._decimal.w[0] = objc_msgSend_solveYieldByNewtonsWithA_DSC_E_M_N_P_R_RV_initial_(self, v113, &v161, &v159, &v163, v72, &v168, &v170, v108, &v166, &v148);
                v154._decimal.w[1] = v114;
                TSUDecimal::operator=();
                v153._decimal.w[0] = objc_msgSend_solveYieldByNewtonsWithA_DSC_E_M_N_P_R_RV_initial_(self, v115, &v161, &v159, &v163, v72, &v168, &v170, v108, &v166, &v148);
                v153._decimal.w[1] = v116;
                if (TSUDecimal::isNaN(&v156) && TSUDecimal::isNaN(&v155) && TSUDecimal::isNaN(&v154) && TSUDecimal::isNaN(&v153))
                {
                  v120 = objc_msgSend_functionName(spec, v117, v118, v119);
                  v123 = objc_msgSend_numberDoesNotConvergeErrorForFunctionName_(TSCEError, v121, v120, v122);
                  v16 = objc_msgSend_raiseErrorOrConvert_(context, v124, v123, v125);

                  goto LABEL_18;
                }

                TSUDecimal::operator=();
                v148 = v156;
                TSUDecimal::operator-=();
                v152 = v148;
                TSUDecimal::operator=();
                v148 = v155;
                TSUDecimal::operator-=();
                v151 = v148;
                TSUDecimal::operator=();
                v148 = v154;
                TSUDecimal::operator-=();
                v150 = v148;
                TSUDecimal::operator=();
                v148 = v153;
                TSUDecimal::operator-=();
                v149 = v148;
                TSUDecimal::abs(&v152);
                TSUDecimal::abs(&v151);
                TSUDecimal::abs(&v150);
                TSUDecimal::abs(&v149);
                TSUDecimal::operator=();
                if ((TSUDecimal::isNaN(&v152) & 1) == 0 && TSUDecimal::operator<())
                {
                  v148 = v152;
                  v157 = v156;
                }

                if ((TSUDecimal::isNaN(&v151) & 1) == 0 && TSUDecimal::operator<())
                {
                  v148 = v151;
                  v157 = v155;
                }

                if ((TSUDecimal::isNaN(&v150) & 1) == 0 && TSUDecimal::operator<())
                {
                  v148 = v150;
                  v157 = v154;
                }

                if ((TSUDecimal::isNaN(&v149) & 1) == 0 && TSUDecimal::operator<())
                {
                  v157 = v153;
                }
              }

              TSCEFormat::TSCEFormat(&v148, 258);
              v71 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v134, &v157, &v148);
              goto LABEL_17;
            }
          }
        }

LABEL_16:
        v71 = objc_msgSend_raiseErrorOrConvert_(context, v68, v15, v70);
LABEL_17:
        v16 = v71;
LABEL_18:
        v36 = v145;
LABEL_36:

        goto LABEL_37;
      }

      v79 = objc_msgSend_functionName(spec, v97, v98, v99);
      v81 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v102, v79, 1, 2, 1, 0);
      v36 = v145;
      v84 = objc_msgSend_raiseErrorOrConvert_(context, v103, v81, v104);
    }

    else
    {
      v79 = objc_msgSend_functionName(spec, v68, v69, v70);
      v36 = v145;
      v81 = objc_msgSend_invalidFrequencyErrorForFunctionName_argumentNumber_(TSCEError, v80, v79, 6);
      v84 = objc_msgSend_raiseErrorOrConvert_(context, v82, v81, v83);
    }

    v16 = v84;

    v15 = 0;
    goto LABEL_36;
  }

  v20 = objc_msgSend_functionName(spec, v12, v13, v14);
  v21 = objc_msgSend_invalidArgumentsErrorForFunctionName_argumentIndex_(TSCEError, v25, v20, 1);
  v16 = objc_msgSend_raiseErrorOrConvert_(context, v26, v21, v27);
  v15 = 0;
LABEL_42:

LABEL_43:

  return v16;
}

+ (TSUDecimal)solveYieldByNewtonsWithA:(const TSUDecimal *)a DSC:(const TSUDecimal *)c E:(const TSUDecimal *)e M:(int)m N:(double)n P:(const TSUDecimal *)p R:(const TSUDecimal *)r RV:(const TSUDecimal *)self0 initial:(const TSUDecimal *)self1
{
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v13 = 0;
  v74 = xmmword_2217E1440;
  v75 = xmmword_2217E1440;
  v73 = xmmword_2217E1440;
  v79 = *initial;
  do
  {
    if (TSUDecimal::isNaN(&v79))
    {
      break;
    }

    v56 = v13;
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    v80 = v79;
    TSUDecimal::operator/=();
    v69 = v80;
    v80 = v70;
    TSUDecimal::operator+=();
    v71 = v80;
    TSUDecimal::operator=();
    v80 = *c;
    TSUDecimal::operator/=();
    v65 = v80;
    v80 = v66;
    TSUDecimal::operator-=();
    v67 = v80;
    TSUDecimal::doubleValue(&v71);
    v15 = v14;
    TSUDecimal::doubleValue(&v67);
    pow(v15, v16);
    TSUDecimal::operator=();
    v72 = v80;
    v80 = *v;
    TSUDecimal::operator*=();
    v17 = v80._decimal.w[0];
    v18 = v80._decimal.w[1];
    TSUDecimal::operator=();
    v80 = v71;
    TSUDecimal::operator*=();
    v19 = v80._decimal.w[0];
    v20 = v80._decimal.w[1];
    TSUDecimal::operator=();
    v80._decimal.w[0] = v19;
    v80._decimal.w[1] = v20;
    TSUDecimal::operator/=();
    TSUDecimal::operator*=();
    TSUDecimal::operator/=();
    v72 = v80;
    TSUDecimal::operator=();
    if (n >= 1.0)
    {
      v21 = 0;
      v22 = 2;
      do
      {
        TSUDecimal::operator=();
        v80 = v70;
        TSUDecimal::operator*=();
        v23 = v80._decimal.w[0];
        v24 = v80._decimal.w[1];
        TSUDecimal::operator=();
        v80._decimal.w[0] = v23;
        v80._decimal.w[1] = v24;
        TSUDecimal::operator/=();
        v25 = v80._decimal.w[0];
        v26 = v80._decimal.w[1];
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v80 = v79;
        TSUDecimal::operator/=();
        v65 = v80;
        v80 = v66;
        TSUDecimal::operator+=();
        v67 = v80;
        TSUDecimal::operator=();
        v80 = *c;
        TSUDecimal::operator/=();
        v61 = v80;
        v80 = v62;
        TSUDecimal::operator-=();
        v63 = v80;
        TSUDecimal::doubleValue(&v67);
        v28 = v27;
        TSUDecimal::doubleValue(&v63);
        pow(v28, v29);
        TSUDecimal::operator=();
        v68 = v80;
        v80._decimal.w[0] = v25;
        v80._decimal.w[1] = v26;
        TSUDecimal::operator*=();
        TSUDecimal::operator+=();
        v30 = v22++;
        --v21;
      }

      while (v30 <= n);
    }

    v80._decimal.w[0] = v17;
    v80._decimal.w[1] = v18;
    TSUDecimal::operator+=();
    TSUDecimal::operator-=();
    TSUDecimal::operator-=();
    v78 = v80;
    TSUDecimal::operator=();
    v80 = *v;
    TSUDecimal::operator/=();
    v31 = v80._decimal.w[0];
    v32 = v80._decimal.w[1];
    TSUDecimal::operator=();
    v80 = *c;
    TSUDecimal::operator/=();
    v67 = v80;
    v80 = v68;
    TSUDecimal::operator-=();
    v69 = v80;
    v80._decimal.w[0] = v31;
    v80._decimal.w[1] = v32;
    TSUDecimal::operator*=();
    v33 = v80._decimal.w[0];
    v34 = v80._decimal.w[1];
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    v80 = v79;
    TSUDecimal::operator/=();
    v63 = v80;
    v80 = v64;
    TSUDecimal::operator+=();
    v65 = v80;
    TSUDecimal::operator=();
    v80 = *c;
    TSUDecimal::operator/=();
    v59 = v80;
    v80 = v60;
    TSUDecimal::operator-=();
    v61 = v80;
    TSUDecimal::doubleValue(&v65);
    v36 = v35;
    TSUDecimal::doubleValue(&v61);
    pow(v36, v37);
    TSUDecimal::operator=();
    v66 = v80;
    v80._decimal.w[0] = v33;
    v80._decimal.w[1] = v34;
    TSUDecimal::operator*=();
    v38 = v80._decimal.w[0];
    v39 = v80._decimal.w[1];
    TSUDecimal::operator=();
    if (n >= 1.0)
    {
      v40 = -1;
      v41 = 2;
      do
      {
        TSUDecimal::operator=();
        v80 = v69;
        TSUDecimal::operator*=();
        v42 = v80._decimal.w[0];
        v43 = v80._decimal.w[1];
        TSUDecimal::operator=();
        v80._decimal.w[0] = v42;
        v80._decimal.w[1] = v43;
        TSUDecimal::operator/=();
        v44 = v80._decimal.w[0];
        v45 = v80._decimal.w[1];
        TSUDecimal::operator=();
        v80._decimal.w[0] = v44;
        v80._decimal.w[1] = v45;
        TSUDecimal::operator/=();
        v46 = v80._decimal.w[0];
        v47 = v80._decimal.w[1];
        TSUDecimal::operator=();
        v80 = *c;
        TSUDecimal::operator/=();
        v64 = v80;
        v80 = v65;
        TSUDecimal::operator-=();
        v66 = v80;
        v80._decimal.w[0] = v46;
        v80._decimal.w[1] = v47;
        TSUDecimal::operator*=();
        v48 = v80._decimal.w[0];
        v49 = v80._decimal.w[1];
        TSUDecimal::operator=();
        TSUDecimal::operator=();
        v80 = v79;
        TSUDecimal::operator/=();
        v60 = v80;
        v80 = v61;
        TSUDecimal::operator+=();
        v62 = v80;
        TSUDecimal::operator=();
        v80 = *c;
        TSUDecimal::operator/=();
        v80 = v57;
        TSUDecimal::operator-=();
        v58 = v80;
        TSUDecimal::doubleValue(&v62);
        v51 = v50;
        TSUDecimal::doubleValue(&v58);
        pow(v51, v52);
        TSUDecimal::operator=();
        v63 = v80;
        v80._decimal.w[0] = v48;
        v80._decimal.w[1] = v49;
        TSUDecimal::operator*=();
        TSUDecimal::operator+=();
        v53 = v41;
        --v40;
        ++v41;
      }

      while (v53 <= n);
    }

    v80._decimal.w[0] = v38;
    v80._decimal.w[1] = v39;
    TSUDecimal::operator+=();
    v77 = v80;
    v80 = v78;
    TSUDecimal::operator/=();
    v76 = v80;
    TSUDecimal::operator-=();
    v80 = v76;
    TSUDecimal::abs(&v80);
    if ((TSUDecimal::isNaN(&v75) & 1) != 0 || TSUDecimal::operator<())
    {
      v74 = v79;
      v75 = v80;
      v73 = v78;
    }

    if (TSUDecimal::operator<())
    {
      v54 = v79._decimal.w[0];
      v55 = v79._decimal.w[1];
      goto LABEL_20;
    }

    v13 = v56 + 1;
  }

  while (v56 != 499);
  if ((TSUDecimal::isNaN(&v74) & 1) == 0 && (TSUDecimal::operator=(), TSUDecimal::operator<()) && (TSUDecimal::abs(&v73), TSUDecimal::operator=(), TSUDecimal::operator<()))
  {
    v54 = v74._decimal.w[0];
    v55 = v74._decimal.w[1];
  }

  else
  {
    v54 = 0;
    v79 = xmmword_2217E1440;
    v55 = 0x7C00000000000000;
  }

LABEL_20:
  result._decimal.w[1] = v55;
  result._decimal.w[0] = v54;
  return result;
}

@end