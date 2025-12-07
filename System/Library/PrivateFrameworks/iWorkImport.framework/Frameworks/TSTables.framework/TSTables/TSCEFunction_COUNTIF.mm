@interface TSCEFunction_COUNTIF
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COUNTIF

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v87[0] = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 1, v87);
  v11 = v87[0];
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
    goto LABEL_30;
  }

  v17 = objc_msgSend_dimensions(v10, v12, v13, v14);
  if (objc_msgSend_gridKind(v10, v18, v19, v20) != 2)
  {
    goto LABEL_11;
  }

  v86 = 0;
  v22 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v10, v21, context, spec, 0, &v86);
  v15 = v86;
  if (!v15)
  {
    v29 = objc_msgSend_calcEngine(context, v23, v24, v25);
    if (v22)
    {
      objc_msgSend_rangeRef(v22, v26, v27, v28);
    }

    else
    {
      v79 = 0u;
      *v80 = 0u;
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v29, v26, &v79, v28);

    if ((IsWithinTable & 1) == 0)
    {
      v35 = objc_msgSend_invalidReferenceError(TSCEError, v31, v32, v33);
      v39 = objc_msgSend_raiseErrorOrConvert_(context, v55, v35, v56);
      goto LABEL_17;
    }

LABEL_11:
    v22 = *(*arguments + 8);
    v85 = 0;
    v35 = objc_msgSend_logicalTestWithCriterion_evaluationContext_functionSpec_outError_(TSCELogicalTest, v34, v22, context, spec, &v85);
    v15 = v85;
    if (!v15)
    {
      if (objc_msgSend_count(v10, v36, v37, v38))
      {
        v43 = [TSCEValueContainer alloc];
        v46 = objc_msgSend_initWithValue_(v43, v44, v10, v45);
        v48 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v47, v46, v35);
        v75 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v49, v48, v50);
        contextCopy = context;
        *&v79 = contextCopy;
        *(&v79 + 1) = spec;
        *v80 = 0;
        *&v80[8] = 0;
        v80[12] = 1;
        *&v80[13] = 0;
        v81 = 0;
        v82 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v83 = 0;
        v84 = 0;
        v53 = 0.0;
        v74 = HIDWORD(v17);
        if (HIDWORD(v17))
        {
          v69 = contextCopy;
          v70 = v48;
          v71 = v46;
          v72 = v35;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v73 = v17;
          while (1)
          {
            v63 = v73;
            v64 = v60;
            if (v73)
            {
              break;
            }

LABEL_23:
            ++v61;
            v60 += 0x100000000;
            if (v61 == v74)
            {
              v35 = v72;
              v48 = v70;
              v46 = v71;
              goto LABEL_15;
            }
          }

          while (1)
          {
            v78 = 0;
            v65 = objc_msgSend_valueAtGridCoordPassesCriteria_coord_criteria_outError_(TSCEGridValue, v52, &v79, v64, v75, &v78, v53, v69);
            v66 = v78;
            if (v66)
            {
              break;
            }

            v62 += v65;
            ++v64;
            if (!--v63)
            {
              goto LABEL_23;
            }
          }

          v15 = v66;
          v16 = objc_msgSend_raiseErrorOrConvert_(v69, v52, v66, v67);
          v35 = v72;
          v48 = v70;
          v46 = v71;
        }

        else
        {
LABEL_15:
          TSUDecimal::operator=();
          TSCEFormat::TSCEFormat(v76, 256);
          v16 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v54, v77, v76);
          v15 = 0;
        }
      }

      else
      {
        v46 = objc_msgSend_functionName(spec, v40, v41, v42);
        v48 = objc_msgSend_notEnoughInputsErrorForFunctionName_argumentNumber_required_(TSCEError, v57, v46, 1, 1);
        v16 = objc_msgSend_raiseErrorOrConvert_(context, v58, v48, v59);
        v15 = 0;
      }

      goto LABEL_28;
    }

    v39 = objc_msgSend_raiseErrorOrConvert_(context, v36, v15, v38);
LABEL_17:
    v16 = v39;
LABEL_28:

    goto LABEL_29;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(context, v23, v15, v25);
LABEL_29:

LABEL_30:

  return v16;
}

@end