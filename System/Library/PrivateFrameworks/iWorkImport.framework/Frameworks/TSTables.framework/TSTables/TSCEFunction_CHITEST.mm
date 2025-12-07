@interface TSCEFunction_CHITEST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CHITEST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v152[0] = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, a2, context, spec, 0, 1, v152);
  v10 = v152[0];
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12);
    goto LABEL_75;
  }

  v15 = *(*arguments + 8);
  v151 = 0;
  v16 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v15, v11, context, spec, 1, 1, &v151);
  v17 = v151;
  if (!v17)
  {
    v21 = objc_msgSend_dimensions(v16, v18, v19, v20);
    v25 = objc_msgSend_dimensions(v9, v22, v23, v24);
    v29 = HIDWORD(v21);
    v30 = HIDWORD(v25);
    v31 = HIDWORD(v21) == 1 || v21 == 1;
    if (v31 && (v30 != 1 ? (v32 = v25 == 1) : (v32 = 1), v32))
    {
      v33 = objc_msgSend_count(v9, v26, v27, v28);
      if (v33 != objc_msgSend_count(v16, v34, v35, v36))
      {
        v37 = objc_msgSend_functionName(spec, v26, v27, v28);
        v40 = objc_msgSend_differentNumberOfDataPointsErrorForFunctionName_(TSCEError, v38, v37, v39);
        v43 = objc_msgSend_raiseErrorOrConvert_(context, v41, v40, v42);
LABEL_56:
        v14 = v43;

        v13 = 0;
        goto LABEL_74;
      }
    }

    else if (v29 != v30 || v21 != v25)
    {
      v37 = objc_msgSend_functionName(spec, v26, v27, v28);
      v40 = objc_msgSend_rangeSizeMismatchErrorForFunctionName_(TSCEError, v45, v37, v46);
      v43 = objc_msgSend_raiseErrorOrConvert_(context, v47, v40, v48);
      goto LABEL_56;
    }

    if (v29 != 1 || v21 != 1)
    {
      if (v21 >> 33)
      {
        v50 = HIDWORD(v21) - 1;
      }

      else
      {
        v50 = 1;
      }

      if (v21 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v21 - 1;
      }

      v52 = objc_msgSend_count(v16, v26, v27, v28);
      v145[0] = context;
      v145[1] = spec;
      v146 = 0;
      v147[0] = 0;
      *(v147 + 7) = 0;
      v148 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v149 = 0;
      v150 = 0;
      v134 = v145[0];
      v139[0] = v134;
      v139[1] = spec;
      v140 = 0;
      v141[0] = 1;
      *(v141 + 7) = 0;
      v142 = v148;
      v143 = 0;
      v144 = 0;
      if (v52)
      {
        v56 = 0;
        v133 = 0;
        v131 = v50 * v51;
        v57 = 0.0;
        while (1)
        {
          v58 = objc_msgSend_valueAtIndex_accessContext_(v9, v53, v56, v145);
          v60 = objc_msgSend_valueAtIndex_accessContext_(v16, v59, v56, v139);
          if (objc_msgSend_isError(v58, v61, v62, v63))
          {
            break;
          }

          if (objc_msgSend_isError(v60, v64, v65, v66))
          {
            v110 = objc_msgSend_errorWithContext_(v60, v67, v134, v69);
            v113 = objc_msgSend_raiseErrorOrConvert_(v134, v114, v110, v115);
            goto LABEL_61;
          }

          v73 = (objc_msgSend_isNil(v58, v67, v68, v69) & 1) == 0 && objc_msgSend_deepType_(v58, v70, v134, v72) == 5;
          v76 = 1.0;
          if ((objc_msgSend_isNil(v60, v70, v71, v72) & 1) != 0 || (objc_msgSend_deepType_(v60, v74, v134, v75) == 5 ? (v78 = v73) : (v78 = 0), !v78))
          {
            v97 = 1.0;
          }

          else
          {
            v79 = v52;
            v138 = 0;
            v132 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v58, v77, v134, spec, 0, &v138);
            v80 = v138;
            v137 = v80;
            v82 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v60, v81, v134, spec, 1, &v137);
            v13 = v137;

            if (v13)
            {
              v14 = objc_msgSend_raiseErrorOrConvert_(v134, v83, v13, v85);
              goto LABEL_66;
            }

            if (objc_msgSend_hasUnits(v132, v83, v84, v85))
            {
              v116 = objc_msgSend_functionName(spec, v86, v87, v88);
              v118 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v117, v116, 1);
              v121 = objc_msgSend_raiseErrorOrConvert_(v134, v119, v118, v120);
              goto LABEL_65;
            }

            if (objc_msgSend_hasUnits(v82, v86, v87, v88))
            {
              v116 = objc_msgSend_functionName(spec, v89, v90, v91);
              v118 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v122, v116, 2);
              v121 = objc_msgSend_raiseErrorOrConvert_(v134, v123, v118, v124);
LABEL_65:
              v14 = v121;

LABEL_66:
              v110 = v132;
              goto LABEL_71;
            }

            objc_msgSend_doubleRepresentation(v132, v89, v90, v91);
            v76 = v92;
            objc_msgSend_doubleRepresentation(v82, v93, v94, v95);
            v97 = v96;

            if (v97 == 0.0)
            {
              v110 = objc_msgSend_divideByZeroError(TSCEError, v98, v99, v100);
              v113 = objc_msgSend_raiseErrorOrConvert_(v134, v125, v110, v126);
              goto LABEL_61;
            }

            if (v97 < 0.0)
            {
              v110 = objc_msgSend_functionName(spec, v98, v99, v100);
              v82 = objc_msgSend_negativeArrayValueErrorForFunctionName_argumentNumber_(TSCEError, v127, v110, 2);
              v14 = objc_msgSend_raiseErrorOrConvert_(v134, v128, v82, v129);
              v13 = 0;
LABEL_71:

LABEL_72:
              goto LABEL_73;
            }

            ++v133;
            v52 = v79;
          }

          v57 = v57 + (v76 - v97) * (v76 - v97) / v97;

          if (v52 == ++v56)
          {
            if (!v133)
            {
              goto LABEL_57;
            }

            pthread_mutex_lock(&stru_27CFB4098);
            v101.n128_f64[0] = v131;
            sub_2213BCC9C(v101, v57);
            pthread_mutex_unlock(&stru_27CFB4098);
            TSUDecimal::operator=();
            if (v16)
            {
              objc_msgSend_formatWithContext_(v16, v102, v134, v103);
            }

            else
            {
              memset(v135, 0, sizeof(v135));
            }

            v14 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v102, v136, v135);
            goto LABEL_58;
          }
        }

        v110 = objc_msgSend_errorWithContext_(v58, v64, v134, v66);
        v113 = objc_msgSend_raiseErrorOrConvert_(v134, v111, v110, v112);
LABEL_61:
        v14 = v113;
        v13 = 0;
        goto LABEL_72;
      }

LABEL_57:
      v107 = objc_msgSend_divideByZeroError(TSCEError, v53, v54, v55);
      v14 = objc_msgSend_raiseErrorOrConvert_(v134, v108, v107, v109);

LABEL_58:
      v13 = 0;
LABEL_73:

      goto LABEL_74;
    }

    v37 = objc_msgSend_functionName(spec, v26, v27, v28);
    v40 = objc_msgSend_notEnoughInputsErrorForFunctionName_argumentNumber_required_(TSCEError, v104, v37, 1, 2);
    v43 = objc_msgSend_raiseErrorOrConvert_(context, v105, v40, v106);
    goto LABEL_56;
  }

  v13 = v17;
  v14 = objc_msgSend_raiseErrorOrConvert_(context, v18, v17, v20);
LABEL_74:

LABEL_75:

  return v14;
}

@end