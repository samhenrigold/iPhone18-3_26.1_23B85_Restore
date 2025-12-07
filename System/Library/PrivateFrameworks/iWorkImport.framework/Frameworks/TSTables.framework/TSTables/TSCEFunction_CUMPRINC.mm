@interface TSCEFunction_CUMPRINC
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CUMPRINC

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v136[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v136);
  v11 = v136[0];
  v135[0] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14);
  v135[1] = v15;
  if (v11)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
    goto LABEL_29;
  }

  v18 = *(*arguments + 8);
  v134 = 0;
  v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v19, context, spec, 1, &v134);
  v11 = v134;
  v133[0] = objc_msgSend_decimalRepresentation(v20, v21, v22, v23);
  v133[1] = v24;
  if (!v11)
  {
    v26 = *(*arguments + 16);
    v132 = 0;
    v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v27, context, spec, 2, &v132);
    v11 = v132;
    v131[0] = objc_msgSend_decimalRepresentation(v28, v29, v30, v31);
    v131[1] = v32;
    if (v11)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v32, v11, v33);
LABEL_27:

      goto LABEL_28;
    }

    v120 = v26;
    v34 = *(*arguments + 24);
    v130 = 0;
    v119 = v34;
    v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, context, spec, 3, &v130);
    v11 = v130;
    v118 = v36;
    v121._decimal.w[0] = objc_msgSend_decimalRepresentation(v36, v37, v38, v39);
    v121._decimal.w[1] = v40;
    TSUDecimal::doubleValue(&v121);
    v26 = v120;
    if (v11)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v41, v11, v42);
LABEL_26:

      goto LABEL_27;
    }

    v44 = v43;
    v117 = v28;
    v45 = *(*arguments + 32);
    v129 = 0;
    v116 = v45;
    v47 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v45, v46, context, spec, 4, &v129);
    v11 = v129;
    v115 = v47;
    v121._decimal.w[0] = objc_msgSend_decimalRepresentation(v47, v48, v49, v50);
    v121._decimal.w[1] = v51;
    TSUDecimal::doubleValue(&v121);
    v28 = v117;
    if (v11)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v52, v11, v53);
LABEL_25:

      goto LABEL_26;
    }

    v55 = v54;
    v56 = *(*arguments + 40);
    v128 = 0;
    v114 = v56;
    v58 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v56, v57, context, spec, 5, &v128);
    v11 = v128;
    v113 = v58;
    v121._decimal.w[0] = objc_msgSend_decimalRepresentation(v58, v59, v60, v61);
    v121._decimal.w[1] = v62;
    TSUDecimal::doubleValue(&v121);
    if (v11)
    {
      v67 = objc_msgSend_raiseErrorOrConvert_(context, v63, v11, v65);
LABEL_13:
      v17 = v67;
LABEL_24:

      goto LABEL_25;
    }

    v68 = v66;
    if (v66 == 0.0 || v66 == 1.0)
    {
      TSUDecimal::operator=();
      if (TSUDecimal::operator<())
      {
        v69 = objc_msgSend_functionName(spec, v75, v76, v77);
        v71 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v78, v69, 2, 5, 0, 1);
        v74 = objc_msgSend_raiseErrorOrConvert_(context, v79, v71, v80);
      }

      else
      {
        TSUDecimal::operator=();
        if (TSUDecimal::operator<())
        {
          v69 = objc_msgSend_functionName(spec, v81, v82, v83);
          v71 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v84, v69, 2, 4, 0, 1);
          v74 = objc_msgSend_raiseErrorOrConvert_(context, v85, v71, v86);
        }

        else
        {
          if (v44 <= v55)
          {
            TSUDecimal::operator=();
            v127 = 0;
            FixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError = objc_msgSend_getFixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v91, spec, v135, v133, v131, &v121, v68 != 0.0, &v127);
            v111 = v93;
            v94 = FixedPaymentWithRate_rate_nper_pv_fv_dueBeginning_outError;
            v95 = v127;
            if (!v95)
            {
              TSUDecimal::operator=();
              v98 = ceil(v44);
              v99 = floor(v55);
              if (v98 > v99)
              {
LABEL_38:
                TSCEFormat::TSCEFormat(&v121, 256);
                v17 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v108, v126, &v121);
                v11 = 0;
              }

              else
              {
                v100 = v94;
                v110 = v99 + 1;
                while (1)
                {
                  v101 = v98;
                  TSUDecimal::operator=();
                  TSUDecimal::operator=();
                  v122 = 0;
                  LOBYTE(v109) = v68 != 0.0;
                  InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError = objc_msgSend_getInterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v102, spec, v135, &v121, v133, v131, &v123, v109, &v122);
                  v104 = v103;
                  v105 = v122;
                  v124 = InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError;
                  v125 = v104;
                  if (v105)
                  {
                    break;
                  }

                  v121._decimal.w[0] = v100;
                  v121._decimal.w[1] = v111;
                  TSUDecimal::operator-=();
                  v123 = v121;
                  TSUDecimal::operator+=();
                  v98 = v101 + 1;
                  if (v110 == v101 + 1)
                  {
                    goto LABEL_38;
                  }
                }

                v11 = v105;
                v17 = objc_msgSend_raiseErrorOrConvert_(context, v106, v105, v107);
              }

              v26 = v120;
              v28 = v117;
              goto LABEL_24;
            }

            v11 = v95;
            v67 = objc_msgSend_raiseErrorOrConvert_(context, v96, v95, v97);
            goto LABEL_13;
          }

          v69 = objc_msgSend_functionName(spec, v81, v82, v83);
          v71 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v87, v69, 4, 5, 1, 1);
          v74 = objc_msgSend_raiseErrorOrConvert_(context, v88, v71, v89);
        }
      }
    }

    else
    {
      v69 = objc_msgSend_functionName(spec, v63, v64, v65);
      v71 = objc_msgSend_invalidTypeErrorForFunctionName_argumentNumber_(TSCEError, v70, v69, 6);
      v74 = objc_msgSend_raiseErrorOrConvert_(context, v72, v71, v73);
    }

    v17 = v74;

    v11 = 0;
    goto LABEL_24;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(context, v24, v11, v25);
LABEL_28:

LABEL_29:

  return v17;
}

@end