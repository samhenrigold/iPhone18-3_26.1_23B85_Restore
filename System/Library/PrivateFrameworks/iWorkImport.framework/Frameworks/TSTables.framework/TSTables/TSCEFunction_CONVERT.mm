@interface TSCEFunction_CONVERT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CONVERT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v148[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v148);
  v11 = v148[0];
  if (v11)
  {
    v14 = v11;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);
    goto LABEL_35;
  }

  v16 = *(*arguments + 8);
  v147 = 0;
  v18 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v16, v17, context, spec, 1, &v147);
  v19 = v147;
  if (!v19)
  {
    v22 = *(*arguments + 16);
    v146 = 0;
    v141 = v22;
    v142 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v22, v23, context, spec, 2, &v146);
    v14 = v146;
    if (v14)
    {
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v24, v14, v25);
LABEL_33:

      goto LABEL_34;
    }

    v26 = objc_msgSend_prefixedUnitForString_(TSCEUnitRegistry, v24, v18, v25);
    v29 = v26;
    v30 = v26;
    if (v26 >= 0x10000 && v26 != 0)
    {
      v139 = HIWORD(v26);
      if (v26 == 9 || (objc_msgSend_unitIsMetric_(TSCEUnitRegistry, v27, v139, v28) & 1) != 0)
      {
        v36 = objc_msgSend_prefixedUnitForString_(TSCEUnitRegistry, v27, v142, v28);
        v39 = v36;
        if (v36 < 0x10000 || !v36)
        {
          v32 = objc_msgSend_invalidUnitStringError_(TSCEError, v37, v142, v38);
          v35 = objc_msgSend_raiseErrorOrConvert_(context, v61, v32, v62);
          goto LABEL_31;
        }

        v138 = HIWORD(v36);
        v134 = v36;
        if (v36 == 9 || (v40 = v36, IsMetric = objc_msgSend_unitIsMetric_(TSCEUnitRegistry, v37, v138, v38), v39 = v40, (IsMetric & 1) != 0))
        {
          v136 = v39;
          v135 = objc_msgSend_dimensionForUnit_(TSCEUnitRegistry, v37, v139, v38);
          if (objc_msgSend_hasUnits(v10, v42, v43, v44))
          {
            v137 = v10;
            v133 = objc_msgSend_unit(v137, v48, v49, v50);
            v57 = objc_msgSend_unit(v137, v51, v52, v53);
            v59 = v139 == 6 && v30 == 12;
            v132 = v59;
            if (v133 == 6)
            {
              if (v139 == 6 && v30 == 9)
              {
                goto LABEL_29;
              }
            }

            else if (v139 == objc_msgSend_unit(v137, v54, v55, v56))
            {
LABEL_29:
              v60 = 0;
LABEL_46:
              if ((objc_msgSend_dimension(v137, v54, v55, v56) | v135) != 0 || v60)
              {
                v92 = objc_msgSend_functionName(spec, v89, v90, v91);
                v95 = objc_msgSend_differentDimensionsErrorForFunctionName_(TSCEError, v93, v92, v94);
                v96 = v137;
                v15 = objc_msgSend_raiseErrorOrConvert_(context, v97, v95, v98);

LABEL_48:
                goto LABEL_33;
              }

              if (v138 == 1)
              {
                v96 = v137;
                TSUDecimal::operator=();
                v145[0] = objc_msgSend_decimalRepresentation(v137, v99, v100, v101);
                v145[1] = v102;
                v103 = objc_msgSend_convertInNumber_outNumber_fromUnit_toUnit_(TSCEUnitRegistry, v102, v145, &v144, v29, v136);
                v92 = v103;
                if (v103)
                {
                  if (objc_msgSend_errorType(v103, v104, v105, v106) == 81)
                  {
                    v140 = objc_msgSend_functionName(spec, v107, v108, v109);
                    v112 = objc_msgSend_differentDimensionsErrorForFunctionName_(TSCEError, v110, v140, v111);
                    v15 = objc_msgSend_raiseErrorOrConvert_(context, v113, v112, v114);
                  }

                  else
                  {
                    v15 = objc_msgSend_raiseErrorOrConvert_(context, v107, v92, v109);
                  }

                  goto LABEL_48;
                }

                v15 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v104, &v144, v106);
              }

              else
              {
                if (v138 == 6 && v134 == 12)
                {
                  v117 = [TSCENumberValue alloc];
                  v121 = objc_msgSend_rawDecimalValue(v137, v118, v119, v120);
                  v123 = objc_msgSend_initWithDecimal_baseUnit_(v117, v122, v121, 7);
                }

                else
                {
                  v124 = [TSCENumberValue alloc];
                  v128 = objc_msgSend_rawDecimalValue(v137, v125, v126, v127);
                  v123 = objc_msgSend_initWithDecimal_baseUnit_(v124, v129, v128, v138);
                }

                v15 = v123;
                v96 = v137;
              }

LABEL_62:
              if (v8)
              {
                objc_msgSend_formatWithContext_(v8, v115, context, v116);
              }

              else
              {
                memset(&v143, 0, sizeof(v143));
              }

              TSCEFormat::TSCEFormat(&v144, &v143);
              objc_msgSend_setFormat_(v15, v130, &v144, v131);
              goto LABEL_33;
            }

            v60 = v57 != 7 || !v132;
            goto LABEL_46;
          }

          v144._tskFormat = objc_msgSend_decimalRepresentation(v10, v45, v46, v47);
          *&v144._formatType = v70;
          TSUDecimal::operator=();
          v72 = objc_msgSend_convertInNumber_outNumber_fromUnit_toUnit_(TSCEUnitRegistry, v71, &v144, v145, v29, v136);
          v32 = v72;
          if (!v72)
          {
            v15 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v73, v145, v75);
            goto LABEL_62;
          }

          if (objc_msgSend_errorType(v72, v73, v74, v75) == 81)
          {
            v79 = objc_msgSend_functionName(spec, v76, v77, v78);
            v82 = objc_msgSend_differentDimensionsErrorForFunctionName_(TSCEError, v80, v79, v81);
            v15 = objc_msgSend_raiseErrorOrConvert_(context, v83, v82, v84);

            goto LABEL_32;
          }

          v35 = objc_msgSend_raiseErrorOrConvert_(context, v76, v32, v78);
LABEL_31:
          v15 = v35;
LABEL_32:

          goto LABEL_33;
        }

        v32 = objc_msgSend_substringFromIndex_(v142, v37, 1, v38);
        v66 = objc_msgSend_nonMetricUnitPrefixErrorForUnitString_(TSCEError, v85, v32, v86);
        v69 = objc_msgSend_raiseErrorOrConvert_(context, v87, v66, v88);
      }

      else
      {
        v32 = objc_msgSend_substringFromIndex_(v18, v27, 1, v28);
        v66 = objc_msgSend_nonMetricUnitPrefixErrorForUnitString_(TSCEError, v64, v32, v65);
        v69 = objc_msgSend_raiseErrorOrConvert_(context, v67, v66, v68);
      }

      v15 = v69;

      goto LABEL_32;
    }

    v32 = objc_msgSend_invalidUnitStringError_(TSCEError, v27, v18, v28);
    v35 = objc_msgSend_raiseErrorOrConvert_(context, v33, v32, v34);
    goto LABEL_31;
  }

  v14 = v19;
  v15 = objc_msgSend_raiseErrorOrConvert_(context, v20, v19, v21);
LABEL_34:

LABEL_35:

  return v15;
}

@end