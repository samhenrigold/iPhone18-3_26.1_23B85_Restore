@interface TSCEFunction_TEXTSPLIT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TEXTSPLIT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  argumentsCopy = arguments;
  specCopy = spec;
  contextCopy = context;
  v9 = **arguments;
  v276[0] = 0;
  v252 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v9, a2, context, spec, 0, v276);
  v10 = v276[0];
  if (v10)
  {
    v13 = v10;
    v5 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v11, v10, v12);
    goto LABEL_12;
  }

  v251 = objc_opt_new();
  memset(v275, 0, sizeof(v275));
  v17 = objc_msgSend_nativeType(**argumentsCopy, v14, v15, v16);
  if (v17 == 1 || v17 == 16)
  {
    v22 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v18, v19, v20);
    v5 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v23, v22, v24);
    v13 = 0;
    goto LABEL_9;
  }

  if ((argumentsCopy[1] - *argumentsCopy) < 9)
  {
    v247 = 0;
    v31 = 0;
    goto LABEL_20;
  }

  if (objc_msgSend_nativeType((*argumentsCopy)[1], v18, v19, v20) == 7)
  {
    v27 = (*argumentsCopy)[1];
    v274 = 0;
    v22 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v27, v26, contextCopy, specCopy, 1, &v274);
    v13 = v274;
    if (v13)
    {
      v30 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v28, v13, v29);
LABEL_131:
      v5 = v30;
      goto LABEL_9;
    }

    if (objc_msgSend_isEqualToString_(v22, v28, &stru_2834BADA0, v29))
    {
      v37 = objc_msgSend_functionName(specCopy, v34, v35, v36);
      v40 = objc_msgSend_delimiterValueNotProvided_(TSCEError, v38, v37, v39);
      v43 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v41, v40, v42);
LABEL_25:
      v5 = v43;

LABEL_75:
      goto LABEL_9;
    }
  }

  v22 = (*argumentsCopy)[1];
  if (objc_msgSend_isTokenOrEmptyArg(v22, v44, v45, v46))
  {
    v247 = 0;
    v31 = 0;
    goto LABEL_29;
  }

  v53 = (*argumentsCopy)[1];
  v273 = 0;
  v249 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v53, v47, contextCopy, specCopy, 1, 0, &v273);
  v54 = v273;
  if (v54)
  {
    v13 = v54;
    v58 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v55, v54, v57);
LABEL_35:
    v5 = v58;

    goto LABEL_9;
  }

  v237 = argumentsCopy;
  v271 = 0;
  v272 = objc_msgSend_dimensions(v249, v55, v56, v57);
  v60 = contextCopy;
  v247 = 0;
  __p = v60;
  v265 = specCopy;
  v61 = specCopy;
  v266 = 0;
  v267[0] = 1;
  *(v267 + 7) = 0;
  v268 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v269 = 0;
  v270 = 0;
  while (1)
  {
    v62 = objc_msgSend_valueAtGridCoord_accessContext_(v249, v59, *&v271, &__p);
    v263 = 0;
    v64 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v62, v63, v60, v61, 1, &v263);
    v65 = v263;
    if (v65)
    {
      v31 = v65;
      v5 = objc_msgSend_raiseErrorOrConvert_(v60, v66, v65, v68);
      goto LABEL_158;
    }

    if (objc_msgSend_length(v64, v66, v67, v68))
    {
      break;
    }

LABEL_44:
    v271 = TSCEGridDimensions::nextCoordRowMajorOrder(&v272, &v271);

    v31 = 0;
    v80 = 1;
    if (v271.column == 0x7FFFFFFF || v271.row == 0x7FFFFFFF)
    {
      goto LABEL_159;
    }
  }

  if (!objc_msgSend_isRegexString(v62, v69, v70, v71))
  {
    objc_msgSend_addObject_(v251, v72, v64, v74);
    v261 = 0;
    sub_2213F4AD0(v275, &v261);
    goto LABEL_43;
  }

  isCaseSensitiveRegexString = objc_msgSend_isCaseSensitiveRegexString(v62, v72, v73, v74);
  v262 = 0;
  v77 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v76, v64, isCaseSensitiveRegexString, &v262);
  v31 = v262;
  if (!v31)
  {
    objc_msgSend_addObject_(v251, v78, v77, v79);
    v261 = 1;
    sub_2213F4AD0(v275, &v261);

LABEL_43:
    ++v247;
    goto LABEL_44;
  }

  v5 = objc_msgSend_raiseErrorOrConvert_(v60, v78, v31, v79);

LABEL_158:
  v80 = 0;
LABEL_159:

  specCopy = v61;
  argumentsCopy = v237;
  if ((v80 & 1) == 0)
  {
LABEL_22:
    v13 = v31;
    goto LABEL_9;
  }

LABEL_29:

  if ((argumentsCopy[1] - *argumentsCopy) < 0x11)
  {
LABEL_20:
    if (v247)
    {
      goto LABEL_55;
    }

    v22 = objc_msgSend_delimiterValueNotProvided_(TSCEError, v18, @"TEXTSPLIT", v20);
    v5 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v32, v22, v33);
    goto LABEL_22;
  }

  if (objc_msgSend_nativeType((*argumentsCopy)[2], v18, v48, v20) == 7)
  {
    v50 = (*argumentsCopy)[2];
    v260 = v31;
    v22 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v50, v49, contextCopy, specCopy, 2, &v260);
    v13 = v260;

    if (v13)
    {
      v30 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v51, v13, v52);
      goto LABEL_131;
    }

    if (objc_msgSend_isEqualToString_(v22, v51, &stru_2834BADA0, v52))
    {
      v37 = objc_msgSend_functionName(specCopy, v81, v82, v83);
      v40 = objc_msgSend_delimiterValueNotProvided_(TSCEError, v84, v37, v85);
      v43 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v86, v40, v87);
      goto LABEL_25;
    }

    v31 = 0;
  }

  v22 = (*argumentsCopy)[2];
  if (objc_msgSend_isTokenOrEmptyArg(v22, v88, v89, v90))
  {
    v92 = contextCopy;
    v241 = v22;
    v93 = 0;
    goto LABEL_54;
  }

  v176 = (*argumentsCopy)[2];
  v259 = v31;
  v249 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v176, v91, contextCopy, specCopy, 2, 0, &v259);
  v13 = v259;

  if (v13)
  {
    v58 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v177, v13, v179);
    goto LABEL_35;
  }

  v239 = argumentsCopy;
  v241 = v22;
  v197 = objc_msgSend_dimensions(v249, v177, v178, v179);
  v271 = 0;
  v272 = v197;
  v92 = contextCopy;
  v199 = contextCopy;
  v93 = 0;
  __p = v199;
  v265 = specCopy;
  v200 = specCopy;
  v266 = 0;
  v267[0] = 2;
  *(v267 + 7) = 0;
  v268 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v269 = 0;
  v270 = 0;
  while (2)
  {
    v201 = objc_msgSend_valueAtGridCoord_accessContext_(v249, v198, *&v271, &__p);
    v258 = 0;
    v203 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v201, v202, v199, v200, 2, &v258);
    v204 = v258;
    if (v204)
    {
      v31 = v204;
      v5 = objc_msgSend_raiseErrorOrConvert_(v199, v205, v204, v207);
      goto LABEL_163;
    }

    if (!objc_msgSend_length(v203, v205, v206, v207))
    {
      goto LABEL_149;
    }

    if (!objc_msgSend_isRegexString(v201, v208, v209, v210))
    {
      objc_msgSend_addObject_(v251, v211, v203, v213);
      v261 = 0;
      sub_2213F4AD0(v275, &v261);
LABEL_148:
      ++v93;
LABEL_149:
      v271 = TSCEGridDimensions::nextCoordRowMajorOrder(&v272, &v271);

      v219 = 1;
      if (v271.column == 0x7FFFFFFF || v271.row == 0x7FFFFFFF)
      {
        v31 = 0;
        goto LABEL_164;
      }

      continue;
    }

    break;
  }

  v214 = objc_msgSend_isCaseSensitiveRegexString(v201, v211, v212, v213);
  v257 = 0;
  v216 = objc_msgSend_regexMatcherWithRegexString_caseSensitive_outError_(TSCERegexMatcher, v215, v203, v214, &v257);
  v31 = v257;
  if (!v31)
  {
    objc_msgSend_addObject_(v251, v217, v216, v218);
    v261 = 1;
    sub_2213F4AD0(v275, &v261);

    goto LABEL_148;
  }

  v5 = objc_msgSend_raiseErrorOrConvert_(v199, v217, v31, v218);

LABEL_163:
  v219 = 0;
LABEL_164:

  specCopy = v200;
  argumentsCopy = v239;
  if ((v219 & 1) == 0)
  {
    v13 = v31;
    goto LABEL_9;
  }

LABEL_54:

  v94 = v93 == 0;
  contextCopy = v92;
  if (v94)
  {
    goto LABEL_20;
  }

LABEL_55:
  if ((argumentsCopy[1] - *argumentsCopy) < 0x19)
  {
    v246 = 0;
    goto LABEL_65;
  }

  v22 = (*argumentsCopy)[3];
  if (objc_msgSend_isTokenOrEmptyArg(v22, v95, v96, v97))
  {
    v246 = 0;
    goto LABEL_62;
  }

  v256 = v31;
  v246 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v22, v98, contextCopy, specCopy, 3, &v256);
  v13 = v256;

  if (v13)
  {
    v30 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v99, v13, v100);
    goto LABEL_131;
  }

  v31 = 0;
LABEL_62:

  if ((argumentsCopy[1] - *argumentsCopy) < 0x21)
  {
LABEL_65:
    v105 = 2;
    v13 = v31;
  }

  else
  {
    v22 = (*argumentsCopy)[4];
    if (objc_msgSend_isTokenOrEmptyArg(v22, v101, v102, v103))
    {

      goto LABEL_65;
    }

    v255 = v31;
    v173 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v22, v104, contextCopy, specCopy, 4, &v255);
    v13 = v255;

    if (v13)
    {
      v30 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v174, v13, v175);
      goto LABEL_131;
    }

    if (v173)
    {
      v105 = 3;
    }

    else
    {
      v105 = 2;
    }
  }

  v22 = objc_msgSend_stringValue_(TSCEStringValue, v18, &stru_2834BADA0, v20);
  if ((argumentsCopy[1] - *argumentsCopy) < 0x29)
  {
    v240 = 0;
  }

  else
  {
    v109 = argumentsCopy;
    v110 = (*argumentsCopy)[5];
    isTokenOrEmptyArg = objc_msgSend_isTokenOrEmptyArg(v110, v111, v112, v113);
    if ((isTokenOrEmptyArg & 1) == 0 && objc_msgSend_deepType_(v110, v114, contextCopy, v115) != 9)
    {
      v117 = specCopy;
      v118 = v110;

      v22 = v118;
      specCopy = v117;
    }

    v240 = isTokenOrEmptyArg ^ 1;

    argumentsCopy = v109;
  }

  v119 = objc_msgSend_length(v252, v106, v107, v108);
  v123 = v119;
  if (v119 == 1)
  {
    goto LABEL_76;
  }

  if (!v119)
  {
    v37 = objc_msgSend_emptyArrayError(TSCEError, v120, v121, v122);
    v5 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v124, v37, v125);
    goto LABEL_75;
  }

  v126 = objc_msgSend_count(v251, v120, v121, v122);
  if (!v126)
  {
LABEL_76:
    v30 = objc_msgSend_stringValue_(TSCEStringValue, v120, v252, v122);
    goto LABEL_131;
  }

  v242 = v22;
  v272 = 0;
  v243 = objc_opt_new();
  v236 = specCopy;
  v238 = argumentsCopy;
  __p = 0;
  v265 = 0;
  v266 = 0;
  sub_22129CFF4(&__p, v126);
  v250 = 0;
  v244 = 0;
  v129 = v123;
  v245 = v123;
  while (2)
  {
    v130 = 0;
    v131 = 0;
    v132 = v129;
    v133 = v250;
    do
    {
      if ((*(v275[0] + ((v131 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v131))
      {
        v134 = objc_msgSend_objectAtIndexedSubscript_(v251, v127, v131, v128);
        MatchInString_options_range = objc_msgSend_rangeOfFirstMatchInString_options_range_(v134, v135, v252, 2, v250, v132);
      }

      else
      {
        v134 = objc_msgSend_objectAtIndexedSubscript_(v251, v127, v131, v128);
        MatchInString_options_range = objc_msgSend_rangeOfString_options_range_(v252, v138, v134, v105, v250, v132);
      }

      v139 = (__p + v130);
      *v139 = MatchInString_options_range;
      v139[1] = v137;

      ++v131;
      v130 += 16;
    }

    while (v126 != v131);
    v141 = 0;
    v142 = 0;
    v143 = __p + 8;
    v144 = 0x7FFFFFFFFFFFFFFFLL;
    v145 = v245;
    while (2)
    {
      v146 = v144;
      v147 = v142;
      v142 = *(v143 - 1);
      if (v142 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_86:
        v144 = v146;
        goto LABEL_87;
      }

      v144 = v141;
      if (v146 != 0x7FFFFFFFFFFFFFFFLL && v142 >= v147)
      {
        if (v142 != v147)
        {
          goto LABEL_86;
        }

        if (*v143 <= *(__p + 2 * v146 + 1))
        {
          v144 = v146;
        }

        else
        {
          v144 = v141;
        }

LABEL_87:
        v142 = v147;
      }

      v143 += 2;
      if (v126 != ++v141)
      {
        continue;
      }

      break;
    }

    v148 = v132;
    v250 = v245;
    if (v144 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v148 = v142 - v133;
      v250 = *(__p + 2 * v144 + 1) + v142;
    }

    if (v148)
    {
      v149 = objc_msgSend_substringWithRange_(v252, v127, v133, v148);
    }

    else
    {
      v149 = 0;
    }

    v248 = v149;
    if (((objc_msgSend_length(v149, v127, v140, v148) == 0) & v246) == 0)
    {
      v153 = objc_msgSend_stringValue_(TSCEStringValue, v150, v248, v152);
      if (!objc_msgSend_length(v248, v154, v155, v156))
      {
        v159 = objc_msgSend_stringValue_(TSCEStringValue, v157, &stru_2834BADA0, v158);

        v153 = v159;
      }

      objc_msgSend_setValue_atCoord_(v243, v157, v153, &v272);
      v161 = v144 == 0x7FFFFFFFFFFFFFFFLL || v144 < v247;
      v244 = v161;
      if (v161)
      {
        v162 = v272.width + 1;
      }

      else
      {
        v162 = 0;
        ++v272.height;
      }

      v272.width = v162;

      v145 = v245;
LABEL_118:
      v129 = v145 - v250;
      if (v144 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_119;
      }

      goto LABEL_121;
    }

    if (v144 == 0x7FFFFFFFFFFFFFFFLL || v144 < v247 || !v244)
    {
      goto LABEL_118;
    }

    v244 = 0;
    v272.width = 0;
    ++v272.height;
    v129 = v245 - v250;
LABEL_119:
    if (v250 != v133 || v129 != v132)
    {
LABEL_121:
      if (!((v129 != 0) | v246 & 1) && v142 == objc_msgSend_length(v252, v150, v151, v152) - 1)
      {
        v165 = objc_msgSend_stringValue_(TSCEStringValue, v163, &stru_2834BADA0, v164);
        objc_msgSend_setValue_atCoord_(v243, v166, v165, &v272);
      }

      if (v144 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (objc_msgSend_count(v243, v127, v167, v128))
        {
          if (v240)
          {
            v22 = v242;
            v171 = v243;
            v271 = objc_msgSend_dimensions(v243, v168, v169, v170);
            objc_msgSend_padUnsetWithValue_forDimensions_(v243, v172, v242, &v271);
          }

          else
          {
            v220 = objc_msgSend_functionName(v236, v168, v169, v170);
            v223 = objc_msgSend_padWithValuesNotProvided_(TSCEError, v221, v220, v222);
            v171 = v243;
            v226 = objc_msgSend_errorValue_(TSCEErrorValue, v224, v223, v225);
            v22 = v242;
            v271 = objc_msgSend_dimensions(v243, v227, v228, v229);
            objc_msgSend_padUnsetWithValue_forDimensions_(v243, v230, v226, &v271);
          }

          v231 = [TSCEDenseGrid alloc];
          v194 = objc_msgSend_initWithValueGrid_(v231, v232, v171, v233);
          v5 = objc_msgSend_gridValue_(TSCEGridValue, v234, v194, v235);
        }

        else
        {
          v194 = objc_msgSend_emptyArrayError(TSCEError, v168, v169, v170);
          v5 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v195, v194, v196);
          v22 = v242;
          v171 = v243;
        }

        goto LABEL_154;
      }

      continue;
    }

    break;
  }

  v180 = (*v238)[1];
  v254 = 0;
  v181 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v180, v150, contextCopy, v236, 1, &v254);
  v182 = v254;
  v22 = v242;
  v171 = v243;
  if (!objc_msgSend_length(v181, v183, v184, v185))
  {
    v188 = (*v238)[2];
    v253 = v182;
    v189 = objc_msgSend_asRawString_functionSpec_argumentIndex_outError_(v188, v186, contextCopy, v236, 2, &v253);
    v190 = v253;

    v182 = v190;
    v181 = v189;
  }

  v191 = objc_msgSend_invalidRegexError_(TSCEError, v186, v181, v187);
  v5 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v192, v191, v193);

  v194 = v248;
LABEL_154:

  if (__p)
  {
    v265 = __p;
    operator delete(__p);
  }

LABEL_9:
  if (v275[0])
  {
    operator delete(v275[0]);
  }

LABEL_12:

  return v5;
}

@end