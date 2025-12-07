@interface TSCEFunction_FREQUENCY
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_FREQUENCY

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v241 = *MEMORY[0x277D85DE8];
  v8 = **arguments;
  v233 = 0;
  v197 = v8;
  v198 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 1, &v233);
  v10 = v233;
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12);
    goto LABEL_95;
  }

  v196 = v198;
  v15 = *(*arguments + 8);
  v232 = 0;
  v194 = v15;
  v199 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v15, v16, context, spec, 1, 1, &v232);
  v17 = v232;
  if (v17)
  {
    v13 = v17;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v18, v17, v19);
    goto LABEL_94;
  }

  v229 = 0;
  v230 = 0;
  v231 = 0;
  v226 = 0;
  v227 = 0;
  v228 = 0;
  v234 = 1;
  v224 = 0;
  v225 = 0;
  v223 = 0;
  sub_2216CDB94(&v223, &v234, &specCopy, 1uLL);
  v195 = objc_msgSend_array(MEMORY[0x277CBEB18], v20, v21, v22);
  v193 = objc_msgSend_zero(TSCENumberValue, v23, v24, v25);
  contextCopy = context;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v234 = contextCopy;
  specCopy = spec;
  v236 = 0;
  v237[0] = 1;
  *(v237 + 7) = 0;
  v238 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v239 = 0;
  v240 = 0;
  while (v30 < objc_msgSend_count(v199, v26, v27, v28))
  {
    v35 = objc_msgSend_valueAtIndex_accessContext_(v199, v34, v30, &v234);
    if (objc_msgSend_isError(v35, v36, v37, v38))
    {
      v46 = objc_msgSend_errorWithContext_(v35, v39, contextCopy, v40);
      v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v136, v46, v137);
      v13 = 0;
      goto LABEL_80;
    }

    v41 = objc_msgSend_deepType_(v35, v39, contextCopy, v40);
    if ((objc_msgSend_isNil(v35, v42, v43, v44) & 1) == 0)
    {
      if (v41 == 3)
      {
        v221 = 0;
        v46 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v35, v45, contextCopy, spec, 1, &v221);
        v13 = v221;
        if (v13)
        {
LABEL_77:
          v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v47, v13, v49);
          goto LABEL_80;
        }

        if (v33)
        {
          goto LABEL_78;
        }

        objc_msgSend_timeIntervalSinceReferenceDate(v46, v47, v48, v49);
        v54 = v53;
        v55 = [TSTTableSortTag alloc];
        v58 = objc_msgSend_initWithNumberOfSortRules_(v55, v56, 1, v57);
        TSUDecimal::operator=();
        v61 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v59, v215, v60);
        v64 = objc_msgSend_reorganizeValueForSorting_(v61, v62, contextCopy, v63);
        objc_msgSend_setReorganizeValue_atIndex_(v58, v65, v64, 0);

        objc_msgSend_setColumnOrRowIndex_(v58, v66, v31, v67);
        objc_msgSend_addObject_(v195, v68, v58, v69);
        v70 = v230;
        if (v230 >= v231)
        {
          v95 = v229;
          v96 = v230 - v229;
          v97 = v230 - v229;
          v98 = v97 + 1;
          if ((v97 + 1) >> 61)
          {
            sub_22107C148();
          }

          v99 = v231 - v229;
          if ((v231 - v229) >> 2 > v98)
          {
            v98 = v99 >> 2;
          }

          v100 = v99 >= 0x7FFFFFFFFFFFFFF8;
          v101 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v100)
          {
            v101 = v98;
          }

          if (v101)
          {
            sub_2210874C4(&v229, v101);
          }

          *(8 * v97) = v54;
          v71 = 8 * v97 + 8;
          memcpy(0, v95, v96);
          v102 = v229;
          v229 = 0;
          v230 = v71;
          v231 = 0;
          if (v102)
          {
            operator delete(v102);
          }
        }

        else
        {
          *v230 = v54;
          v71 = (v70 + 1);
        }

        v33 = 0;
        v230 = v71;
        v32 = 1;
      }

      else
      {
        if (v41 != 5)
        {
          goto LABEL_35;
        }

        v222 = 0;
        v46 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v35, v45, contextCopy, spec, 1, &v222);
        v13 = v222;
        if (v13)
        {
          goto LABEL_77;
        }

        if (v32)
        {
LABEL_78:
          v174 = objc_msgSend_functionName(spec, v47, v48, v49);
          v177 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v170, v174, v171);
          v180 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v172, v177, v173);
LABEL_79:
          v14 = v180;

LABEL_80:
          goto LABEL_88;
        }

        if (v33)
        {
          if ((objc_msgSend_dimensionsMatchModuloCurrency_(v193, v47, v46, v49) & 1) == 0)
          {
            v174 = objc_msgSend_functionName(spec, v50, v51, v52);
            v177 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v175, v174, v176);
            v180 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v178, v177, v179);
            goto LABEL_79;
          }
        }

        else
        {
          v72 = v46;

          v193 = v72;
        }

        if (objc_msgSend_hasUnits(v46, v50, v51, v52))
        {
          v76 = objc_msgSend_rawDecimalValue(v46, v73, v74, v75);
          v79 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v77, v76, v78);

          v46 = v79;
        }

        v80 = [TSTTableSortTag alloc];
        v58 = objc_msgSend_initWithNumberOfSortRules_(v80, v81, 1, v82);
        v85 = objc_msgSend_reorganizeValueForSorting_(v46, v83, contextCopy, v84);
        objc_msgSend_setReorganizeValue_atIndex_(v58, v86, v85, 0);

        objc_msgSend_setColumnOrRowIndex_(v58, v87, v31, v88);
        objc_msgSend_addObject_(v195, v89, v58, v90);
        objc_msgSend_rawDoubleValue(v46, v91, v92, v93);
        v215[0] = v94;
        sub_2216BC488(&v229, v215);
        v32 = 0;
        v33 = 1;
      }

      ++v31;
    }

LABEL_35:

    ++v30;
  }

  v35 = objc_msgSend_shuffleMapForSortDirections_unsortedTags_sortDirections_(TSCEFunction_SORTBY, v34, contextCopy, v195, &v223);
  v106 = contextCopy;
  v107 = 0;
  v215[0] = v106;
  v215[1] = spec;
  v216 = 0;
  v217[0] = 0;
  *(v217 + 7) = 0;
  v218 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v219 = 0;
  v220 = 0;
  while (v107 < objc_msgSend_count(v196, v103, v104, v105))
  {
    v109 = objc_msgSend_valueAtIndex_accessContext_(v196, v108, v107, v215);
    if (objc_msgSend_isError(v109, v110, v111, v112))
    {
      v120 = objc_msgSend_errorWithContext_(v109, v113, v106, v114);
      v14 = objc_msgSend_raiseErrorOrConvert_(v106, v159, v120, v160);
      v13 = 0;
      goto LABEL_86;
    }

    v115 = objc_msgSend_deepType_(v109, v113, v106, v114);
    if ((objc_msgSend_isNil(v109, v116, v117, v118) & 1) == 0)
    {
      if (v115 == 3)
      {
        v213 = 0;
        v120 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v109, v119, v106, spec, 0, &v213);
        v13 = v213;
        if (v13)
        {
LABEL_81:
          v14 = objc_msgSend_raiseErrorOrConvert_(v106, v121, v13, v123);
          goto LABEL_86;
        }

        if (v33)
        {
          goto LABEL_82;
        }

        objc_msgSend_timeIntervalSinceReferenceDate(v120, v121, v122, v123);
        v200 = v135;
        sub_2216BC488(&v226, &v200);
      }

      else
      {
        if (v115 != 5)
        {
          goto LABEL_52;
        }

        v214 = 0;
        v120 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v109, v119, v106, spec, 0, &v214);
        v13 = v214;
        if (v13)
        {
          goto LABEL_81;
        }

        if (v32)
        {
LABEL_82:
          v181 = objc_msgSend_functionName(spec, v121, v122, v123);
          v184 = objc_msgSend_mixedTypeManipulationErrorForFunctionName_(TSCEError, v182, v181, v183);
          v187 = objc_msgSend_raiseErrorOrConvert_(v106, v185, v184, v186);
          goto LABEL_85;
        }

        if ((objc_msgSend_dimensionsMatchModuloCurrency_(v193, v121, v120, v123) & 1) == 0)
        {
          v181 = objc_msgSend_functionName(spec, v124, v125, v126);
          v184 = objc_msgSend_mismatchedUnitsErrorForFunctionName_(TSCEError, v188, v181, v189);
          v187 = objc_msgSend_raiseErrorOrConvert_(v106, v190, v184, v191);
LABEL_85:
          v14 = v187;

LABEL_86:
          goto LABEL_87;
        }

        if (objc_msgSend_hasUnits(v120, v124, v125, v126))
        {
          v130 = objc_msgSend_rawDecimalValue(v120, v127, v128, v129);
          v133 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v131, v130, v132);

          v120 = v133;
        }

        objc_msgSend_rawDoubleValue(v120, v127, v128, v129);
        v200 = v134;
        sub_2216BC488(&v226, &v200);
      }
    }

LABEL_52:

    ++v107;
  }

  std::__sort<std::__less<double,double> &,double *>();
  v141 = objc_msgSend_count(v195, v138, v139, v140);
  if ((v141 + 1) > 2)
  {
    v142 = v141 + 1;
  }

  else
  {
    v142 = 2;
  }

  v200 = 0;
  sub_2216CDC08(__p, v142, &v200);
  v146 = (v227 - v226) >> 3;
  if ((v33 | v32))
  {
    v147 = 0;
    for (i = 0; i < objc_msgSend_count(v195, v143, v144, v145); ++i)
    {
      v152 = objc_msgSend_reverseMapIndex_(v35, v149, i, v151);
      v153 = v146 - v147;
      if (v146 > v147)
      {
        v154 = 0;
        v155 = v229[v152];
        v156 = __p[0];
        v157 = &v226[8 * v147];
        while (*&v157[8 * v154] <= v155)
        {
          v158 = v154 + 1;
          if (v153 - 1 == v154)
          {
            v156[v152] = v158;
          }

          ++v154;
          if (v153 == v158)
          {
            v147 = v146;
            goto LABEL_68;
          }
        }

        *(__p[0] + v152) = v154;
        v147 += v154;
      }

LABEL_68:
      ;
    }

    v162 = objc_msgSend_count(v195, v149, v150, v151);
    *(__p[0] + v162) = v146 - v147;
  }

  else
  {
    v161 = __p[0];
    *__p[0] = 0;
    v161[1] = v146;
  }

  v163 = 0;
  v211[0] = 1;
  v211[1] = v142;
  memset(v210, 0, sizeof(v210));
  do
  {
    TSUDecimal::operator=();
    v209 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v164, &v200, v165);
    sub_2210ED5B8(v210, &v209);

    ++v163;
  }

  while (v142 != v163);
  v166 = [TSCEDenseGrid alloc];
  isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v166, v167, v210, 0, 0, v211);
  v200 = 0;
  v201 = 0;
  v202 = 0;
  v203 = v203 & 0xC080 | 0x421;
  v204 = v204 & 0xF8 | 1;
  v205 = -50266102;
  v206 = -3;
  v207 &= 0xE0u;
  v208 = 0;
  v14 = objc_msgSend_gridValue_format_(TSCEGridValue, v169, isFlattened_dimensions, &v200);

  v200 = v210;
  sub_22107C2C0(&v200);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v13 = 0;
LABEL_87:

LABEL_88:
  if (v223)
  {
    v224 = v223;
    operator delete(v223);
  }

  if (v226)
  {
    v227 = v226;
    operator delete(v226);
  }

  if (v229)
  {
    v230 = v229;
    operator delete(v229);
  }

LABEL_94:

LABEL_95:

  return v14;
}

@end