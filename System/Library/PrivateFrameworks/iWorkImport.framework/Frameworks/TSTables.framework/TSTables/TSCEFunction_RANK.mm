@interface TSCEFunction_RANK
+ (double)computeRankWithVector:(id)vector functionSpec:(id)spec vector:(id)a5 numberToRankValue:(id)value rankDescending:(BOOL)descending returnAverage:(BOOL)average outError:(id *)error;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_RANK

+ (double)computeRankWithVector:(id)vector functionSpec:(id)spec vector:(id)a5 numberToRankValue:(id)value rankDescending:(BOOL)descending returnAverage:(BOOL)average outError:(id *)error
{
  averageCopy = average;
  descendingCopy = descending;
  vectorCopy = vector;
  v14 = a5;
  valueCopy = value;
  __key[0] = 0.0;
  v111 = objc_msgSend_zero(TSCENumberValue, v16, v17, v18);
  v22 = objc_msgSend_deepType_(valueCopy, v19, vectorCopy, v20);
  if (v22 == 3)
  {
    v23 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(valueCopy, v21, vectorCopy, spec, 0, error);
    objc_msgSend_mapDateToDouble_(TSCECalendar, v24, v23, v25);
    __key[0] = v26;
  }

  else
  {
    v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(valueCopy, v21, vectorCopy, spec, 0, error);

    objc_msgSend_doubleRepresentation(v28, v29, v30, v31);
    __key[0] = v32;
    v111 = v28;
  }

  if (*error)
  {
    goto LABEL_7;
  }

  if (objc_msgSend_deepType_outError_(v14, v27, vectorCopy, error) == 10)
  {
    *error = objc_msgSend_typeErrorForValue_context_functionSpec_argumentIndex_(TSCEError, v33, v14, vectorCopy, spec, 1);
LABEL_7:
    v36 = NAN;
    goto LABEL_8;
  }

  v110 = v14;
  v38 = objc_msgSend_count(v14, v33, v34, v35);
  v39 = malloc_type_malloc(8 * v38, 0x100004000313F17uLL);
  v106 = malloc_type_malloc(8 * v38, 0x100004000313F17uLL);
  v36 = NAN;
  v107 = v39;
  if (!v39 || !v106)
  {
    v59 = v39;
    goto LABEL_74;
  }

  v105 = descendingCopy;
  v41 = vectorCopy;
  v112[0] = v41;
  v112[1] = spec;
  v113 = 0;
  v114[0] = 1;
  *(v114 + 7) = 0;
  v115 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v116 = 0;
  v117 = 0;
  if (!v38)
  {
    v59 = v39;
    if (*error)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v42 = 0;
  v108 = 0;
  while (1)
  {
    v43 = objc_msgSend_valueAtIndex_accessContext_(v110, v40, v42, v112);
    v46 = objc_msgSend_deepType_(v43, v44, v41, v45);
    if (objc_msgSend_valueIsEmptyWithContext_(v43, v47, v41, v48))
    {
      goto LABEL_24;
    }

    if (v46 == 5)
    {
      break;
    }

    if (v46 == 3)
    {
      v52 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v43, v49, v41, spec, 1, error);
      if (*error)
      {
        goto LABEL_28;
      }

      objc_msgSend_mapDateToDouble_(TSCECalendar, v50, v52, v51);
      if (v22 != 3)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }

LABEL_24:

    if (v38 == ++v42)
    {
      goto LABEL_30;
    }
  }

  v52 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v43, v49, v41, spec, 1, error);
  if (*error)
  {
LABEL_28:

    v14 = v110;
    v59 = v107;
    goto LABEL_54;
  }

  if (v22 != 3 && (objc_msgSend_dimensionsMatchModuloCurrency_(v111, v53, v52, v55) & 1) != 0)
  {
    objc_msgSend_doubleRepresentation(v52, v53, v54, v55);
LABEL_23:
    v57 = v56;

    v107[v108++] = v57;
    goto LABEL_24;
  }

LABEL_29:
  v60 = objc_msgSend_functionName(spec, v53, v54, v55);
  *error = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v61, v60, v62);

LABEL_30:
  v59 = v107;
  if (*error)
  {
LABEL_31:
    v36 = NAN;
    v14 = v110;
    goto LABEL_57;
  }

  v14 = v110;
  if (!v108)
  {
LABEL_53:
    v43 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(valueCopy, v40, v41, spec, 0, error);
    if (*error)
    {
LABEL_54:

      v36 = NAN;
      goto LABEL_74;
    }

    v80 = objc_msgSend_functionName(spec, v77, v78, v79);
    *error = objc_msgSend_matchNotFoundErrorForValue_isRegex_functionName_(TSCEError, v81, v43, 0, v80);

LABEL_56:
    v36 = NAN;
    goto LABEL_57;
  }

  sub_2216B20E4(v107, v106, v108, v58);
  v63 = bsearch(__key, v106, v108, 8uLL, sub_2216C8EA4);
  if (!v63)
  {
    v82 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v64, v65, v66);
    v86 = objc_msgSend_dictionaryRepresentation(v82, v83, v84, v85);

    v90 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v87, v88, v89, __key[0]);
    v93 = objc_msgSend_descriptionWithLocale_(v90, v91, v86, v92);

    v97 = objc_msgSend_functionName(spec, v94, v95, v96);
    *error = objc_msgSend_matchNotFoundErrorForValue_isRegex_functionName_(TSCEError, v98, v93, 0, v97);

    goto LABEL_31;
  }

  v67 = (v63 - v106) >> 3;
  if (averageCopy)
  {
    if (v105)
    {
      v68 = v108 - v67;
    }

    else
    {
      v68 = v67 + 1;
    }

    v69 = v68;
    v70 = 1.0;
    if (v108 > v67 + 1)
    {
      v71 = ~v67 + v108;
      v72 = v67 + 2;
      v73 = &v106[v67 + 1];
      do
      {
        if (__key[0] < *v73)
        {
          break;
        }

        v74 = v105 ? v71 : v72;
        v69 = v69 + v74;
        v70 = v70 + 1.0;
        ++v72;
        ++v73;
        --v71;
      }

      while (v71);
    }

    if (v67 >= 1)
    {
      v75 = v108 - v67 + 1;
      do
      {
        if (__key[0] > *&v106[v67 - 1])
        {
          break;
        }

        v76 = v105 ? v75 : v67--;
        v69 = v69 + v76;
        v70 = v70 + 1.0;
        ++v75;
      }

      while ((v67 + 1) > 1);
    }

    v36 = v69 / v70;
  }

  else if (v105)
  {
    if (v108 <= v67 + 1)
    {
      v99 = v67 + 1;
    }

    else
    {
      v99 = v108;
    }

    while (1)
    {
      v100 = v67 + 1;
      if (v108 <= v67 + 1)
      {
        break;
      }

      v101 = *&v106[++v67];
      if (__key[0] < v101)
      {
        goto LABEL_72;
      }
    }

    v100 = v99;
LABEL_72:
    v36 = (v108 - v100);
  }

  else
  {
    v102 = ((v63 - v106) >> 3) & ((v63 - v106) >> 63);
    while (1)
    {
      v103 = v67 - 1;
      if (v67 < 1)
      {
        break;
      }

      v104 = *&v106[--v67];
      if (__key[0] > v104)
      {
        v102 = v103 + 1;
        break;
      }
    }

    v36 = v102;
  }

LABEL_57:

LABEL_74:
  free(v59);
  free(v106);
LABEL_8:

  return v36;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v42 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 1, 1, &v42);
  v12 = v42;
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
LABEL_9:
    v26 = v16;
    goto LABEL_10;
  }

  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
    goto LABEL_6;
  }

  v17 = *(*arguments + 16);
  if (objc_msgSend_isTokenOrEmptyArg(v17, v18, v19, v20))
  {

LABEL_6:
    v22 = 1;
    goto LABEL_7;
  }

  v41 = 0;
  v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v21, context, spec, 2, &v41);
  v15 = v41;
  if (!v15)
  {
    v34 = objc_msgSend_zero(TSCENumberValue, v31, v32, v33);
    v40 = 0;
    v22 = objc_msgSend_eq_outError_(v30, v35, v34, &v40);
    v15 = v40;

    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v15, v36);
      goto LABEL_9;
    }

LABEL_7:
    v39 = 0;
    objc_msgSend_computeRankWithVector_functionSpec_vector_numberToRankValue_rankDescending_returnAverage_outError_(TSCEFunction_RANK, v13, context, spec, v11, v8, v22, 0, &v39);
    v23 = v39;
    if (!v23)
    {
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v28, context, v29);
      }

      else
      {
        memset(v37, 0, sizeof(v37));
      }

      v26 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v28, v38, v37);
      v15 = 0;
      goto LABEL_10;
    }

    v15 = v23;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v24, v23, v25);
    goto LABEL_9;
  }

  v26 = objc_msgSend_raiseErrorOrConvert_(context, v31, v15, v33);

LABEL_10:

  return v26;
}

@end