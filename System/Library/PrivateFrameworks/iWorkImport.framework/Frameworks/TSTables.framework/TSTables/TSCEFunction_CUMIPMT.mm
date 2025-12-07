@interface TSCEFunction_CUMIPMT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CUMIPMT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v123[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v123);
  v11 = v123[0];
  v122[0] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14);
  v122[1] = v15;
  if (v11)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
    goto LABEL_29;
  }

  v18 = *(*arguments + 8);
  v121 = 0;
  v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v19, context, spec, 1, &v121);
  v11 = v121;
  v120[0] = objc_msgSend_decimalRepresentation(v20, v21, v22, v23);
  v120[1] = v24;
  if (!v11)
  {
    v26 = *(*arguments + 16);
    v119 = 0;
    v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v26, v27, context, spec, 2, &v119);
    v11 = v119;
    v118[0] = objc_msgSend_decimalRepresentation(v28, v29, v30, v31);
    v118[1] = v32;
    if (v11)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v32, v11, v33);
LABEL_27:

      goto LABEL_28;
    }

    v109 = v26;
    v34 = *(*arguments + 24);
    v117 = 0;
    v108 = v34;
    v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, context, spec, 3, &v117);
    v11 = v117;
    v107 = v36;
    v110._decimal.w[0] = objc_msgSend_decimalRepresentation(v36, v37, v38, v39);
    v110._decimal.w[1] = v40;
    TSUDecimal::doubleValue(&v110);
    v26 = v109;
    if (v11)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v41, v11, v42);
LABEL_26:

      goto LABEL_27;
    }

    v44 = v43;
    v106 = v28;
    v45 = *(*arguments + 32);
    v116 = 0;
    v105 = v45;
    v47 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v45, v46, context, spec, 4, &v116);
    v11 = v116;
    v104 = v47;
    v110._decimal.w[0] = objc_msgSend_decimalRepresentation(v47, v48, v49, v50);
    v110._decimal.w[1] = v51;
    TSUDecimal::doubleValue(&v110);
    v28 = v106;
    if (v11)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v52, v11, v53);
LABEL_25:

      goto LABEL_26;
    }

    v55 = v54;
    v56 = *(*arguments + 40);
    v115 = 0;
    v103 = v56;
    v58 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v56, v57, context, spec, 5, &v115);
    v11 = v115;
    v102 = v58;
    v110._decimal.w[0] = objc_msgSend_decimalRepresentation(v58, v59, v60, v61);
    v110._decimal.w[1] = v62;
    TSUDecimal::doubleValue(&v110);
    if (v11)
    {
      v17 = objc_msgSend_raiseErrorOrConvert_(context, v63, v11, v65);
LABEL_24:

      goto LABEL_25;
    }

    v67 = v66;
    if (v66 == 0.0 || v66 == 1.0)
    {
      TSUDecimal::operator=();
      if (TSUDecimal::operator<())
      {
        v68 = objc_msgSend_functionName(spec, v74, v75, v76);
        v70 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v77, v68, 2, 5, 0, 1);
        v73 = objc_msgSend_raiseErrorOrConvert_(context, v78, v70, v79);
      }

      else
      {
        TSUDecimal::operator=();
        if (TSUDecimal::operator<())
        {
          v68 = objc_msgSend_functionName(spec, v80, v81, v82);
          v70 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v83, v68, 2, 4, 0, 1);
          v73 = objc_msgSend_raiseErrorOrConvert_(context, v84, v70, v85);
        }

        else
        {
          if (v44 <= v55)
          {
            TSUDecimal::operator=();
            v90 = vcvtpd_s64_f64(v44);
            v91 = vcvtmd_s64_f64(v55);
            if (v90 <= v91)
            {
              v99 = v91 + 1;
              while (1)
              {
                v100 = v90;
                TSUDecimal::operator=();
                TSUDecimal::operator=();
                v111 = 0;
                LOBYTE(v98) = v67 != 0.0;
                InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError = objc_msgSend_getInterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError_(TSCEFinancialFunctions, v92, spec, v122, v113, v120, v118, v112, v98, &v111);
                v94 = v93;
                v11 = v111;
                v110._decimal.w[0] = InterestPortionOfPaymentWithRate_rate_per_nper_pv_fv_dueBeginning_outError;
                v110._decimal.w[1] = v94;
                TSUDecimal::operator+=();
                if (v11)
                {
                  break;
                }

                v90 = v100 + 1;
                if (v99 == v100 + 1)
                {
                  goto LABEL_36;
                }
              }

              v17 = objc_msgSend_raiseErrorOrConvert_(context, v95, v11, v96);
              v26 = v109;
              v28 = v106;
              goto LABEL_24;
            }

LABEL_36:
            TSCEFormat::TSCEFormat(&v110, 256);
            v17 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v97, v114, &v110);
            goto LABEL_23;
          }

          v68 = objc_msgSend_functionName(spec, v80, v81, v82);
          v70 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v86, v68, 4, 5, 1, 1);
          v73 = objc_msgSend_raiseErrorOrConvert_(context, v87, v70, v88);
        }
      }
    }

    else
    {
      v68 = objc_msgSend_functionName(spec, v63, v64, v65);
      v70 = objc_msgSend_invalidTypeErrorForFunctionName_argumentNumber_(TSCEError, v69, v68, 6);
      v73 = objc_msgSend_raiseErrorOrConvert_(context, v71, v70, v72);
    }

    v17 = v73;

LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  v17 = objc_msgSend_raiseErrorOrConvert_(context, v24, v11, v25);
LABEL_28:

LABEL_29:

  return v17;
}

@end