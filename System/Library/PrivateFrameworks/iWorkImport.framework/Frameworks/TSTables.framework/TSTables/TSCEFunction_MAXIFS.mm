@interface TSCEFunction_MAXIFS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)extremumIfs:(id)ifs functionSpec:(id)spec maxVector:(id)vector criteria:(id)criteria isMax:(BOOL)max;
@end

@implementation TSCEFunction_MAXIFS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v24 = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, a2, context, spec, 0, 1, &v24);
  v11 = v24;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
  }

  else
  {
    v17 = objc_msgSend_dimensions(v10, v12, v13, v14);
    v23 = 0;
    v19 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(self, v18, context, spec, arguments, v17, 1, 0, &v23);
    v15 = v23;
    if (v15)
    {
      objc_msgSend_raiseErrorOrConvert_(context, v20, v15, v21);
    }

    else
    {
      objc_msgSend_extremumIfs_functionSpec_maxVector_criteria_isMax_(TSCEFunction_MAXIFS, v20, context, spec, v10, v19, 1);
    }
    v16 = ;
  }

  return v16;
}

+ (id)extremumIfs:(id)ifs functionSpec:(id)spec maxVector:(id)vector criteria:(id)criteria isMax:(BOOL)max
{
  maxCopy = max;
  ifsCopy = ifs;
  vectorCopy = vector;
  criteriaCopy = criteria;
  if (objc_msgSend_gridKind(vectorCopy, v11, v12, v13) == 2)
  {
    v127[0] = 0;
    v17 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(vectorCopy, v14, ifsCopy, spec, 0, v127);
    v18 = v127[0];
    v25 = objc_msgSend_calcEngine(ifsCopy, v19, v20, v21);
    if (v17)
    {
      objc_msgSend_rangeRef(v17, v22, v23, v24);
    }

    else
    {
      v121 = 0u;
      *v122 = 0u;
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v25, v22, &v121, v24);

    if ((IsWithinTable & 1) == 0)
    {
      v86 = objc_msgSend_invalidReferenceError(TSCEError, v27, v28, v29);
      v30 = objc_msgSend_raiseErrorOrConvert_(ifsCopy, v87, v86, v88);

      goto LABEL_56;
    }

    if (v18)
    {
      v30 = objc_msgSend_raiseErrorOrConvert_(ifsCopy, v14, v18, v16);
      goto LABEL_57;
    }
  }

  v31 = objc_msgSend_dimensions(vectorCopy, v14, v15, v16);
  v32 = 0x27845C000uLL;
  v17 = objc_msgSend_sortCriteriaByCost_(TSCEGridValue, v33, criteriaCopy, v34);
  v35 = ifsCopy;
  *&v121 = v35;
  *(&v121 + 1) = spec;
  *v122 = 0;
  *&v122[8] = 0;
  v122[12] = 1;
  *&v122[13] = 0;
  v123 = 0;
  v124 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v125 = 0;
  v126 = 0;
  v36 = 0x27845C000uLL;
  v114 = v17;
  v113 = objc_msgSend_zero(TSCENumberValue, v37, v38, v39);
  v107 = HIDWORD(v31);
  if (!HIDWORD(v31))
  {
    goto LABEL_9;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = v31;
  v105 = ifsCopy;
  v106 = v31;
  while (1)
  {
    v108 = v44;
    v109 = v43;
    v48 = v47;
    v49 = v43;
    if (v47)
    {
      break;
    }

LABEL_42:
    v44 = v108 + 1;
    v43 = v109 + 0x100000000;
    v47 = v106;
    if (v108 + 1 == v107)
    {
      if (v45)
      {
        ifsCopy = v105;
        if (vectorCopy)
        {
          objc_msgSend_formatWithContext_(vectorCopy, v40, v35, v42);
        }

        else
        {
          memset(v115, 0, sizeof(v115));
        }

        v30 = objc_msgSend_dateValue_format_(TSCEDateValue, v40, v45, v115, v105);

        goto LABEL_10;
      }

      ifsCopy = v105;
      if (v46)
      {
        v30 = v113;
        v18 = 0;

        goto LABEL_55;
      }

      v36 = 0x27845C000;
LABEL_9:
      v30 = objc_msgSend_zero(*(v36 + 3432), v40, v41, v42, v105);
LABEL_10:
      v18 = 0;
      goto LABEL_54;
    }
  }

  while (1)
  {
    v50 = *(v32 + 3360);
    v120 = 0;
    v51 = objc_msgSend_valueAtGridCoordPassesCriteria_coord_criteria_outError_(v50, v40, &v121, v49, v17, &v120, v105);
    v18 = v120;
    if (!v51)
    {
      goto LABEL_26;
    }

    v52 = vectorCopy;
    v53 = objc_msgSend_valueAtGridCoord_accessContext_(vectorCopy, v40, v49, &v121);
    v56 = objc_msgSend_deepType_(v53, v54, v35, v55);
    if ((objc_msgSend_isNil(v53, v57, v58, v59) & 1) == 0)
    {
      break;
    }

LABEL_24:
    v74 = v45;
LABEL_25:

    v45 = v74;
    vectorCopy = v52;
    v17 = v114;
    v32 = 0x27845C000;
LABEL_26:
    if (v18)
    {
      ifsCopy = v105;
      v30 = objc_msgSend_raiseErrorOrConvert_(v35, v40, v18, v42);

      goto LABEL_54;
    }

    ++v49;
    if (!--v48)
    {
      goto LABEL_42;
    }
  }

  if (v56 != 3)
  {
    if (v56 == 5)
    {
      if (v45)
      {
        goto LABEL_48;
      }

      v119 = v18;
      v63 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v53, v60, v35, spec, 0, &v119);
      v64 = v119;

      if (v64)
      {
        v30 = objc_msgSend_raiseErrorOrConvert_(v35, v65, v64, v67);
        v45 = 0;
        goto LABEL_51;
      }

      if (v46)
      {
        if ((objc_msgSend_isNil(v63, v65, v66, v67) & 1) == 0)
        {
          if ((objc_msgSend_dimensionsMatchModuloCurrency_(v63, v68, v113, v69) & 1) == 0)
          {
            v98 = objc_msgSend_functionName(spec, v70, v71, v72);
            v101 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v94, v98, v95);
            v104 = objc_msgSend_raiseErrorOrConvert_(v35, v96, v101, v97);
            goto LABEL_63;
          }

          if ((objc_msgSend_areCurrenciesMatched_(v63, v70, v113, v72) & 1) == 0)
          {
            v98 = objc_msgSend_functionName(spec, v68, v73, v69);
            v101 = objc_msgSend_mismatchedCurrenciesErrorForFunctionName_(TSCEError, v99, v98, v100);
            v104 = objc_msgSend_raiseErrorOrConvert_(v35, v102, v101, v103);
LABEL_63:
            v30 = v104;

            v45 = 0;
            goto LABEL_49;
          }
        }
      }

      else
      {
        v84 = v63;

        v113 = v84;
      }

      if (maxCopy)
      {
        objc_msgSend_max_(v113, v68, v63, v69);
      }

      else
      {
        objc_msgSend_min_(v113, v68, v63, v69);
      }
      v85 = ;

      v74 = 0;
      v18 = 0;
      v46 = 1;
      v113 = v85;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v46)
  {
LABEL_48:
    v63 = objc_msgSend_functionName(spec, v60, v61, v62);
    v98 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v89, v63, v90);
    v30 = objc_msgSend_raiseErrorOrConvert_(v35, v91, v98, v92);
    v64 = v18;
LABEL_49:

LABEL_51:
    v74 = v45;
    goto LABEL_53;
  }

  if (!v45)
  {
    v118 = v18;
    v75 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v53, v60, v35, spec, 0, &v118);
    v76 = v118;

    v45 = v75;
    v18 = v76;
  }

  if (maxCopy)
  {
    v117 = v18;
    v77 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v53, v60, v35, spec, 0, &v117);
    v64 = v117;

    objc_msgSend_laterDate_(v45, v78, v77, v79);
  }

  else
  {
    v116 = v18;
    v77 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v53, v60, v35, spec, 0, &v116);
    v64 = v116;

    objc_msgSend_earlierDate_(v45, v80, v77, v81);
  }
  v74 = ;

  if (!v64)
  {
    v46 = 0;
    v18 = 0;
    goto LABEL_25;
  }

  v30 = objc_msgSend_raiseErrorOrConvert_(v35, v82, v64, v83);
LABEL_53:

  v18 = v64;
  ifsCopy = v105;
  vectorCopy = v52;
  v17 = v114;
LABEL_54:

LABEL_55:
LABEL_56:

LABEL_57:

  return v30;
}

@end