@interface TSCEFunction_SUMIF
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SUMIF

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v140[0] = 0;
  specCopy = spec;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 1, v140);
  v14 = v140[0];
  if (v14)
  {
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v14, v13);
    goto LABEL_53;
  }

  if (objc_msgSend_gridKind(v10, v11, v12, v13) != 2)
  {
    goto LABEL_11;
  }

  v139 = 0;
  v17 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v10, v16, context, spec, 0, &v139);
  v14 = v139;
  if (!v14)
  {
    v24 = objc_msgSend_calcEngine(context, v18, v19, v20);
    if (v17)
    {
      objc_msgSend_rangeRef(v17, v21, v22, v23);
    }

    else
    {
      v130 = 0u;
      *v131 = 0u;
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v24, v21, &v130, v23);

    if ((IsWithinTable & 1) == 0)
    {
      v39 = objc_msgSend_invalidReferenceError(TSCEError, v26, v27, v28);
      v45 = objc_msgSend_raiseErrorOrConvert_(context, v50, v39, v51);
      goto LABEL_22;
    }

LABEL_11:
    v17 = *(*arguments + 8);
    if (*(arguments + 1) - *arguments < 0x11uLL || (objc_msgSend_isTokenOrEmptyArg(*(*arguments + 16), v29, v30, v31) & 1) != 0)
    {
      v33 = v10;
      v117 = 0;
      goto LABEL_14;
    }

    v43 = *(*arguments + 16);
    v138 = 0;
    v39 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v43, v32, context, specCopy, 2, 1, &v138);
    v44 = v138;
    if (!v44)
    {
      v117 = 2;
      v33 = v39;
LABEL_14:
      v37 = v33;
      v39 = v33;
      if (objc_msgSend_gridKind(v33, v34, v35, v36) == 2)
      {
        v137 = 0;
        v119 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v37, v38, context, specCopy, 0, &v137);
        v14 = v137;
        if (v14)
        {
          goto LABEL_28;
        }

        v49 = objc_msgSend_calcEngine(context, v40, v41, v42);
        if (v119)
        {
          objc_msgSend_rangeRef(v119, v46, v47, v48);
        }

        else
        {
          v130 = 0u;
          *v131 = 0u;
        }

        v52 = objc_msgSend_rangeIsWithinTable_(v49, v46, &v130, v48);

        if ((v52 & 1) == 0)
        {
          v91 = objc_msgSend_invalidReferenceError(TSCEError, v53, v54, v55);
          v15 = objc_msgSend_raiseErrorOrConvert_(context, v92, v91, v93);
          goto LABEL_49;
        }
      }

      v136 = 0;
      v119 = objc_msgSend_logicalTestWithCriterion_evaluationContext_functionSpec_outError_(TSCELogicalTest, v38, v17, context, specCopy, &v136);
      v14 = v136;
      if (v14)
      {
LABEL_28:
        v15 = objc_msgSend_raiseErrorOrConvert_(context, v40, v14, v42);
LABEL_50:

        goto LABEL_51;
      }

      if (objc_msgSend_count(v10, v40, v56, v42))
      {
        if (objc_msgSend_count(v39, v57, v58, v59))
        {
          v63 = objc_msgSend_dimensions(v39, v60, v61, v62);
          v67 = objc_msgSend_dimensions(v10, v64, v65, v66);
          if (v63 == v67)
          {
            v114 = HIDWORD(v63);
            if (HIDWORD(v63) == HIDWORD(v67))
            {
              v113 = v63;
              v116 = v39;
              v108 = v17;
              v110 = v8;
              v115 = objc_alloc_init(TSCESumAccumulator);
              *&v130 = context;
              *(&v130 + 1) = specCopy;
              *v131 = 0;
              *&v131[8] = 0;
              v131[12] = 1;
              *&v131[13] = 0;
              v132 = 0;
              v112 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
              v133 = v112;
              v134 = 0;
              v135 = 0;
              v71 = v130;
              v14 = 0;
              v121[0] = v71;
              v121[1] = specCopy;
              v122 = 0;
              v123 = 0;
              v124 = 1;
              v125 = 0;
              v126 = 0;
              v127 = v112;
              v128 = 0;
              v129 = 0;
              if (v114)
              {
                v74 = v71;
                v75 = 0;
                v76 = 0;
                v14 = 0;
                do
                {
                  v77 = v113;
                  v78 = v75;
                  if (v113)
                  {
                    do
                    {
                      v79 = v10;
                      v80 = objc_msgSend_valueAtGridCoord_accessContext_(v10, v72, v78, &v130, v108, v110);
                      v120 = v14;
                      v82 = objc_msgSend_compare_outError_(v119, v81, v80, &v120);
                      v83 = v120;

                      if (v82)
                      {
                        v123 = v117;
                        v84 = v122;
                        v122 = 0;

                        v86 = objc_msgSend_valueAtGridCoord_accessContext_(v116, v85, v78, v121);
                        v89 = objc_msgSend_deepType_(v86, v87, v74, v88);
                        if (v89 == 5 || v89 == 3)
                        {
                          objc_msgSend_addValue_evaluationContext_functionSpec_(v115, v90, v86, v74, specCopy);
                        }
                      }

                      ++v78;
                      v14 = v83;
                      --v77;
                      v10 = v79;
                    }

                    while (v77);
                  }

                  ++v76;
                  v75 += 0x100000000;
                }

                while (v76 != v114);
              }

              v91 = v115;
              v15 = objc_msgSend_resultForFunction_(v115, v72, specCopy, v73, v108, v110);

              v17 = v109;
              v8 = v111;
              v39 = v116;
              goto LABEL_49;
            }
          }

          v94 = objc_msgSend_functionName(specCopy, v68, v69, v70);
          v96 = objc_msgSend_rangeSizeMismatchErrorForFunctionName_(TSCEError, v103, v94, v104);
          v99 = objc_msgSend_raiseErrorOrConvert_(context, v105, v96, v106);
        }

        else
        {
          v94 = objc_msgSend_functionName(specCopy, v60, v61, v62);
          v96 = objc_msgSend_notEnoughInputsErrorForFunctionName_argumentNumber_required_(TSCEError, v100, v94, 3, 1);
          v99 = objc_msgSend_raiseErrorOrConvert_(context, v101, v96, v102);
        }
      }

      else
      {
        v94 = objc_msgSend_functionName(specCopy, v57, v58, v59);
        v96 = objc_msgSend_notEnoughInputsErrorForFunctionName_argumentNumber_required_(TSCEError, v95, v94, 1, 1);
        v99 = objc_msgSend_raiseErrorOrConvert_(context, v97, v96, v98);
      }

      v15 = v99;

      v14 = 0;
      v91 = v94;
LABEL_49:

      goto LABEL_50;
    }

    v14 = v44;
    v45 = objc_msgSend_raiseErrorOrConvert_(context, v34, v44, v36);
LABEL_22:
    v15 = v45;
LABEL_51:

    goto LABEL_52;
  }

  v15 = objc_msgSend_raiseErrorOrConvert_(context, v18, v14, v20);
LABEL_52:

LABEL_53:

  return v15;
}

@end