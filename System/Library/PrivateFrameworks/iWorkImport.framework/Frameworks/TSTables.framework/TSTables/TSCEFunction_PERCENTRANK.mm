@interface TSCEFunction_PERCENTRANK
+ (id)computePercentRank:(id)rank functionSpec:(id)spec vector:(id)vector xValue:(id)value isExclusive:(BOOL)exclusive outError:(id *)error;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_PERCENTRANK

+ (id)computePercentRank:(id)rank functionSpec:(id)spec vector:(id)vector xValue:(id)value isExclusive:(BOOL)exclusive outError:(id *)error
{
  exclusiveCopy = exclusive;
  rankCopy = rank;
  vectorCopy = vector;
  valueCopy = value;
  TSUDecimal::operator=();
  TSUDecimal::operator=();
  v136 = objc_msgSend_zero(TSCENumberValue, v15, v16, v17);
  v21 = objc_msgSend_deepType_(valueCopy, v18, rankCopy, v19);
  if (v21 == 3)
  {
    v25 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(valueCopy, v20, rankCopy, spec, 1, error);
    if (*error)
    {
      goto LABEL_5;
    }

    objc_msgSend_mapDateToDouble_(TSCECalendar, v22, v25, v24);
    TSUDecimal::operator=();
    v30 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v28, v138, v29);

    v25 = v30;
  }

  else
  {
    v25 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(valueCopy, v20, rankCopy, spec, 1, error);
    if (*error)
    {
LABEL_5:
      v26 = objc_msgSend_zero(TSCENumberValue, v22, v23, v24);
      v27 = 0;
      goto LABEL_68;
    }
  }

  v31 = objc_msgSend_count(vectorCopy, v22, v23, v24);
  v135 = rankCopy;
  v138[0] = v135;
  v138[1] = spec;
  v139 = 0;
  v140[0] = 0;
  *(v140 + 7) = 0;
  v141 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v142 = 0;
  v143 = 0;
  if (!v31)
  {
    v132 = 0;
    v133 = 0;
LABEL_38:
    v73 = objc_msgSend_zero(TSCENumberValue, v32, v33, v34);
    v36 = v73;
    if (*error)
    {
      v77 = v73;
    }

    else
    {
      if ((v132 & 1) != 0 && (v145 = v144, TSUDecimal::operator+=(), v137 = v145, TSUDecimal::operator=(), (TSUDecimal::operator<=() & 1) == 0))
      {
        TSUDecimal::operator=();
        if (exclusiveCopy)
        {
          TSUDecimal::operator=();
          v145 = v144;
          TSUDecimal::operator+=();
          v101 = v145;
          v145 = v144;
          TSUDecimal::operator+=();
          v102 = v145;
          TSUDecimal::operator=();
          v145 = v102;
          TSUDecimal::operator+=();
          v145 = v101;
        }

        else
        {
          v145 = v144;
          TSUDecimal::operator+=();
          v145 = v144;
        }

        TSUDecimal::operator/=();
        v137 = v145;
        v122 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v123, &v137, v124);
      }

      else
      {
        if ((v31 & 1) == 0)
        {
          if (exclusiveCopy)
          {
            objc_msgSend_percentRankExcInputOutOfRangeError(TSCEError, v74, v75, v76);
          }

          else
          {
            objc_msgSend_percentRankInputOutOfRangeError(TSCEError, v74, v75, v76);
          }
          *error = ;
          v77 = objc_msgSend_zero(TSCENumberValue, v116, v117, v118);
          goto LABEL_66;
        }

        v78 = objc_msgSend_subtract_functionSpec_outError_(v136, v74, v133, spec, error);
        v80 = objc_msgSend_subtract_functionSpec_outError_(v25, v79, v133, spec, error);
        v82 = objc_msgSend_divide_outError_(v80, v81, v78, error);

        *&v145 = objc_msgSend_decimalRepresentation(v82, v83, v84, v85);
        *(&v145 + 1) = v86;
        TSUDecimal::operator+=();
        v87 = *(&v145 + 1);
        v88 = v145;
        TSUDecimal::operator=();
        if (exclusiveCopy)
        {
          v89 = v25;
          v145 = v144;
          TSUDecimal::operator+=();
          v90 = v145;
          TSUDecimal::operator=();
          v145 = v90;
          TSUDecimal::operator+=();
        }

        else
        {
          TSUDecimal::operator=();
          v145 = __PAIR128__(v87, v88);
          TSUDecimal::operator-=();
          v89 = v25;
          v87 = *(&v145 + 1);
          v88 = v145;
          v145 = v144;
          TSUDecimal::operator+=();
          v119 = v145;
          TSUDecimal::operator=();
          v145 = v119;
          TSUDecimal::operator-=();
        }

        v145 = __PAIR128__(v87, v88);
        TSUDecimal::operator/=();
        v137 = v145;
        v25 = v89;
        v122 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v120, &v137, v121);
      }

      v77 = v122;
    }

    v36 = v77;
LABEL_66:
    v26 = v77;
    goto LABEL_67;
  }

  v133 = 0;
  v134 = v31;
  v131 = v21;
  v132 = 0;
  v128 = 0;
  v129 = 0;
  v35 = 0;
  specCopy = spec;
  v127 = v25;
  while (1)
  {
    v36 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v32, v35, v138);
    if (objc_msgSend_isError(v36, v37, v38, v39))
    {
      *error = objc_msgSend_errorWithContext_(v36, v40, v135, v42);
      v77 = objc_msgSend_zero(TSCENumberValue, v91, v92, v93);
      goto LABEL_66;
    }

    if ((objc_msgSend_isNil(v36, v40, v41, v42) & 1) == 0)
    {
      break;
    }

LABEL_35:

    if (v134 == ++v35)
    {
      LOBYTE(v31) = v129 & v128;
      goto LABEL_38;
    }
  }

  if (objc_msgSend_deepType_(v36, v43, v135, v44) == 3)
  {
    if (v131 != 3)
    {
      v103 = objc_msgSend_functionName(spec, v45, v46, v47);
      *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v104, v103, v105);

      v77 = objc_msgSend_zero(TSCENumberValue, v106, v107, v108);
      goto LABEL_66;
    }

    v51 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v36, v45, v135, spec, 0, error);
    if (*error)
    {
      goto LABEL_56;
    }

    objc_msgSend_mapDateToDouble_(TSCECalendar, v48, v51, v50);
    TSUDecimal::operator=();
    v54 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v52, &v145, v53);

    if (!v54)
    {
      goto LABEL_34;
    }

LABEL_19:
    if ((objc_msgSend_dimensionsMatchModuloCurrency_(v54, v48, v25, v50) & 1) == 0)
    {
      v94 = objc_msgSend_functionName(spec, v56, v57, v58);
      *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v95, v94, v96);

      v100 = objc_msgSend_zero(TSCENumberValue, v97, v98, v99);
LABEL_52:
      v26 = v100;

      goto LABEL_67;
    }

    if (!(v132 & 1 | ((objc_msgSend_eq_outError_(v25, v56, v54, error) & 1) == 0)))
    {
      v132 = 1;
      goto LABEL_33;
    }

    if (objc_msgSend_lt_(v54, v59, v25, v61))
    {
      TSUDecimal::operator=();
      TSUDecimal::operator+=();
      if (v129)
      {
        v64 = valueCopy;
        v65 = vectorCopy;
        v66 = rankCopy;
        v129 = 1;
        v67 = v133;
        v68 = v136;
        v69 = v54;
        if ((objc_msgSend_lt_(v133, v62, v54, v63) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v64 = valueCopy;
        v65 = vectorCopy;
        v66 = rankCopy;
        v129 = 1;
        v67 = v133;
        v68 = v136;
        v69 = v54;
      }
    }

    else
    {
      TSUDecimal::operator=();
      TSUDecimal::operator+=();
      if (v128)
      {
        v64 = valueCopy;
        v65 = vectorCopy;
        v66 = rankCopy;
        v128 = 1;
        v67 = v136;
        v68 = v54;
        v69 = v133;
        if ((objc_msgSend_gt_(v136, v70, v54, v71) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v64 = valueCopy;
        v65 = vectorCopy;
        v66 = rankCopy;
        v128 = 1;
        v67 = v136;
        v68 = v54;
        v69 = v133;
      }
    }

    v72 = v54;

    v136 = v68;
    v133 = v69;
LABEL_32:
    rankCopy = v66;
    vectorCopy = v65;
    valueCopy = v64;
    spec = specCopy;
    v25 = v127;
LABEL_33:
    if (*error)
    {
      v100 = objc_msgSend_zero(TSCENumberValue, v59, v60, v61);
      goto LABEL_52;
    }

LABEL_34:

    goto LABEL_35;
  }

  v55 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v36, v45, v135, spec, 0, error);
  v51 = v55;
  if (!*error)
  {
    if (v131 == 3)
    {
      v109 = objc_msgSend_functionName(spec, v48, v49, v50);
      *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v110, v109, v111);

      v115 = objc_msgSend_zero(TSCENumberValue, v112, v113, v114);
      goto LABEL_57;
    }

    v54 = v55;
    if (!v55)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

LABEL_56:
  v115 = objc_msgSend_zero(TSCENumberValue, v48, v49, v50);
LABEL_57:
  v26 = v115;

LABEL_67:
  v27 = v133;
LABEL_68:

  return v26;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v67 = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 0, &v67);
  v11 = v67;
  if (v11)
  {
    v14 = v11;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);
    goto LABEL_22;
  }

  v16 = *(*arguments + 8);
  v66[1] = 0;
  v61 = v16;
  v18 = objc_msgSend_computePercentRank_functionSpec_vector_xValue_isExclusive_outError_(TSCEFunction_PERCENTRANK, v17, context, spec, v10);
  v19 = 0;
  if (!v19)
  {
    TSUDecimal::operator=();
    v24 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v22, &v63, v23);
    if (*(arguments + 1) - *arguments >= 0x11uLL)
    {
      v25 = *(*arguments + 16);
      if ((objc_msgSend_isTokenOrEmptyArg(v25, v26, v27, v28) & 1) == 0 && objc_msgSend_nativeType(v25, v29, v30, v31) != 10)
      {
        v66[0] = 0;
        v33 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v25, v32, context, spec, 2, v66);
        v14 = v66[0];
        v60 = objc_msgSend_floor(v33, v34, v35, v36);

        if (v14)
        {
          v39 = objc_msgSend_raiseErrorOrConvert_(context, v37, v14, v38);
LABEL_20:
          v15 = v39;

          goto LABEL_21;
        }

        v24 = v60;
      }
    }

    v60 = v24;
    TSUDecimal::operator=();
    v42 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v40, &v63, v41);
    v65 = 0;
    v25 = objc_msgSend_power_outError_(v42, v43, v24, &v65);
    v44 = v65;

    if (objc_msgSend_isFinite(v25, v45, v46, v47))
    {
      v50 = objc_msgSend_multiply_context_(v18, v48, v25, context, v60);
      v54 = objc_msgSend_round(v50, v51, v52, v53);
      v64 = v44;
      v56 = objc_msgSend_divide_outError_(v54, v55, v25, &v64);
      v14 = v64;

      v18 = v56;
      if (!v14)
      {
LABEL_14:
        if (v8)
        {
          objc_msgSend_formatWithContext_(v8, v48, context, v49);
        }

        else
        {
          memset(&v62, 0, sizeof(v62));
        }

        TSCEFormat::TSCEFormat(&v63, &v62);
        objc_msgSend_setFormat_(v18, v57, &v63, v58);
        v39 = v18;
        v18 = v39;
        goto LABEL_20;
      }
    }

    else
    {
      v14 = v44;
      if (!v44)
      {
        goto LABEL_14;
      }
    }

    v39 = objc_msgSend_raiseErrorOrConvert_(context, v48, v14, v49, v60);
    goto LABEL_20;
  }

  v14 = v19;
  v15 = objc_msgSend_raiseErrorOrConvert_(context, v20, v19, v21);
LABEL_21:

LABEL_22:

  return v15;
}

@end