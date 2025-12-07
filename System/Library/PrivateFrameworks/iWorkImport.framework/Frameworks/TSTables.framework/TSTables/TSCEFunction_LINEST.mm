@interface TSCEFunction_LINEST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_LINEST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v443[0] = 0;
  v400 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v8, v9, context, spec, 0, 1, v443);
  v10 = v443[0];
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v13);
    goto LABEL_22;
  }

  v19 = objc_msgSend_count(v400, v11, v12, v13);
  if (!v19)
  {
    v36 = objc_msgSend_linestMatrixUnderdeterminedError(TSCEError, v16, v17, v18);
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v37, v36, v38);

    goto LABEL_21;
  }

  if (*(arguments + 1) - *arguments < 9uLL || (objc_msgSend_isTokenOrEmptyArg(*(*arguments + 8), v16, v17, v18) & 1) != 0)
  {
    v20 = 0;
    contextCopy = 0;
    specCopy = 0;
    v436 = 0;
    do
    {
      ++v20;
      TSUDecimal::operator=();
      v441 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v21, v428, v22);
      sub_2210ED5B8(&contextCopy, &v441);
    }

    while (v19 != v20);
    if (v19 < 0xFFFF)
    {
      LODWORD(v428[0]) = 1;
      HIDWORD(v428[0]) = v19;
      v26 = [TSCEDenseGrid alloc];
      isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v26, v27, &contextCopy, 0, 1, v428);
      v31 = objc_msgSend_gridValue_(TSCEGridValue, v29, isFlattened_dimensions, v30);

      v428[0] = &contextCopy;
      sub_22107C2C0(v428);
      v35 = 0;
      goto LABEL_15;
    }

    v39 = objc_msgSend_functionName(spec, v23, v24, v25);
    v42 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v40, v39, v41);
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v43, v42, v44);

    v428[0] = &contextCopy;
    sub_22107C2C0(v428);
LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  v45 = *(*arguments + 8);
  v442 = 0;
  v31 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v45, v46, context, spec, 1, 1, &v442);
  v47 = v442;
  if (v47)
  {
    v14 = v47;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v48, v47, v49);

    goto LABEL_22;
  }

  v35 = 1;
LABEL_15:
  v53 = objc_msgSend_count(v31, v32, v33, v34);
  if (v53 > 0x7FFFFFFE || v19 >= 0x7FFFFFFF)
  {
    v69 = objc_msgSend_functionName(spec, v50, v51, v52);
    v72 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v70, v69, v71);
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v73, v72, v74);

    goto LABEL_21;
  }

  v54 = objc_msgSend_dimensions(v400, v50, v51, v52);
  v58 = objc_msgSend_dimensions(v31, v55, v56, v57);
  v397 = malloc_type_malloc(8 * v19, 0x100004000313F17uLL);
  v398 = v31;
  v394 = malloc_type_malloc(8 * v53, 0x100004000313F17uLL);
  v59 = HIDWORD(v54);
  contextCopy = context;
  specCopy = spec;
  v436 = 0;
  v437[0] = 1;
  *(v437 + 7) = 0;
  v395 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v438 = v395;
  v439 = 0;
  v440 = 0;
  v399 = contextCopy;
  v428[0] = v399;
  v428[1] = spec;
  v429 = 0;
  v430[0] = 0;
  *(v430 + 7) = 0;
  v431 = v395;
  v432 = 0;
  v433 = 0;
  v61 = v53 / v19;
  if (v53 % v19)
  {
    if (v54 != 1)
    {
      free(v397);
      free(v394);
      if (v59 == 1)
      {
        objc_msgSend_dataInvalidWidthError(TSCEError, v122, v123, v124);
      }

      else
      {
        objc_msgSend_dataInvalidDimensionsError(TSCEError, v122, v123, v124);
      }
      v65 = ;
      v68 = objc_msgSend_raiseErrorOrConvert_(v399, v125, v65, v126);
      goto LABEL_156;
    }

    goto LABEL_19;
  }

  v76 = HIDWORD(v58);
  if (v19 != v53)
  {
    v127 = v399;
    if (v54 == 1)
    {
      if (v59 != v76)
      {
LABEL_19:
        free(v397);
        free(v394);
        v65 = objc_msgSend_dataInvalidLengthError(TSCEError, v62, v63, v64);
        v68 = objc_msgSend_raiseErrorOrConvert_(v399, v66, v65, v67);
LABEL_156:
        v15 = v68;

        goto LABEL_157;
      }

      v392 = v61;
      v128 = 0;
      while (1)
      {
        v129 = objc_msgSend_valueAtIndex_accessContext_(v400, v60, v128, v428);
        v422 = 0;
        v131 = objc_msgSend_deepType_outError_(v129, v130, v127, &v422);
        v14 = v422;
        if (v14)
        {
          free(v397);
          free(v394);
          v210 = objc_msgSend_raiseErrorOrConvert_(v399, v208, v14, v209);
          goto LABEL_94;
        }

        if (v131 != 5)
        {
          free(v397);
          free(v394);
          v133 = objc_msgSend_functionName(spec, v211, v212, v213);
          v215 = objc_msgSend_arrayValueNotNumberErrorForFunctionName_argumentNumber_(TSCEError, v214, v133, 1);
          v15 = objc_msgSend_raiseErrorOrConvert_(v399, v216, v215, v217);
          goto LABEL_171;
        }

        v421 = 0;
        v133 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v129, v132, v399, spec, 0, &v421);
        v14 = v421;
        if (v14)
        {
          break;
        }

        if (objc_msgSend_hasUnits(v133, v134, v135, v136) && !objc_msgSend_dimension(v133, v137, v138, v139))
        {
          free(v397);
          free(v394);
          v215 = objc_msgSend_functionName(spec, v347, v348, v349);
          v337 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v350, v215, 1);
          v340 = objc_msgSend_raiseErrorOrConvert_(v399, v351, v337, v352);
          goto LABEL_170;
        }

        objc_msgSend_doubleRepresentation(v133, v137, v138, v139);
        *(v397 + v128) = v140;

        ++v128;
        v127 = v399;
        if (v19 == v128)
        {
          for (i = 0; ; ++i)
          {
            if (i >= objc_msgSend_dimensions(v398, v60, v141, v142))
            {
              goto LABEL_104;
            }

            v147 = 0;
            v148 = i;
            while (v147 < objc_msgSend_dimensions(v398, v144, v145, v146) >> 32)
            {
              v129 = objc_msgSend_valueAtGridCoord_accessContext_(v398, v60, v148, &contextCopy);
              if (objc_msgSend_deepType_(v129, v149, v399, v150) != 5)
              {
                free(v397);
                free(v394);
                v259 = objc_msgSend_functionName(spec, v356, v357, v358);
                v261 = objc_msgSend_arrayValueNotNumberErrorForFunctionName_argumentNumber_(TSCEError, v359, v259, 2);
                v264 = objc_msgSend_raiseErrorOrConvert_(v399, v360, v261, v361);
LABEL_167:
                v15 = v264;

LABEL_157:
                v14 = 0;
                goto LABEL_158;
              }

              v420 = 0;
              v133 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v129, v151, v399, spec, 2, &v420);
              v14 = v420;
              if (v14)
              {
                free(v397);
                free(v394);
                v220 = objc_msgSend_raiseErrorOrConvert_(v399, v362, v14, v363);
                goto LABEL_178;
              }

              if (objc_msgSend_isDuration(v133, v152, v153, v154))
              {
                free(v397);
                free(v394);
                v215 = objc_msgSend_functionName(spec, v364, v365, v366);
                v337 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v367, v215, 2);
                v340 = objc_msgSend_raiseErrorOrConvert_(v399, v368, v337, v369);
LABEL_170:
                v15 = v340;

LABEL_171:
LABEL_179:

                goto LABEL_180;
              }

              objc_msgSend_doubleRepresentation(v133, v155, v156, v157);
              *(v394 + (v147 + i * (objc_msgSend_dimensions(v398, v158, v159, v160) >> 32))) = v161;

              ++v147;
              v148 += 0x100000000;
            }
          }
        }
      }

      free(v397);
      free(v394);
      v220 = objc_msgSend_raiseErrorOrConvert_(v399, v218, v14, v219);
    }

    else
    {
      if (v59 != 1)
      {
LABEL_85:
        free(v397);
        free(v394);
        v65 = objc_msgSend_dataInvalidDimensionsError(TSCEError, v194, v195, v196);
        v68 = objc_msgSend_raiseErrorOrConvert_(v399, v197, v65, v198);
        goto LABEL_156;
      }

      if (v54 != v58)
      {
        free(v397);
        free(v394);
        v65 = objc_msgSend_dataInvalidWidthError(TSCEError, v199, v200, v201);
        v68 = objc_msgSend_raiseErrorOrConvert_(v399, v202, v65, v203);
        goto LABEL_156;
      }

      v392 = v61;
      v162 = 0;
      while (1)
      {
        v129 = objc_msgSend_valueAtIndex_accessContext_(v400, v60, v162, v428);
        if (objc_msgSend_deepType_(v129, v163, v127, v164) != 5)
        {
          free(v397);
          free(v394);
          v259 = objc_msgSend_functionName(spec, v256, v257, v258);
          v261 = objc_msgSend_arrayValueNotNumberErrorForFunctionName_argumentNumber_(TSCEError, v260, v259, 1);
          v264 = objc_msgSend_raiseErrorOrConvert_(v399, v262, v261, v263);
          goto LABEL_167;
        }

        v419 = 0;
        v133 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v129, v165, v127, spec, 1, &v419);
        v14 = v419;
        if (v14)
        {
          break;
        }

        if (objc_msgSend_isDuration(v133, v166, v167, v168))
        {
          free(v397);
          free(v394);
          v215 = objc_msgSend_functionName(spec, v333, v334, v335);
          v337 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v336, v215, 1);
          v340 = objc_msgSend_raiseErrorOrConvert_(v399, v338, v337, v339);
          goto LABEL_170;
        }

        objc_msgSend_doubleRepresentation(v133, v169, v170, v171);
        *(v397 + v162) = v172;

        ++v162;
        v127 = v399;
        if (v19 == v162)
        {
          v175 = 0;
          for (j = 0; ; ++j)
          {
            if (j >= objc_msgSend_dimensions(v398, v60, v173, v174) >> 32)
            {
              goto LABEL_104;
            }

            for (k = 0; k < objc_msgSend_dimensions(v398, v177, v178, v179); ++k)
            {
              v129 = objc_msgSend_valueAtGridCoord_accessContext_(v398, v60, v175 + k, &contextCopy);
              if (objc_msgSend_deepType_(v129, v181, v399, v182) != 5)
              {
                free(v397);
                free(v394);
                v377 = objc_msgSend_functionName(spec, v374, v375, v376);
                v379 = objc_msgSend_arrayValueNotNumberErrorForFunctionName_argumentNumber_(TSCEError, v378, v377, 2);
                v15 = objc_msgSend_raiseErrorOrConvert_(v399, v380, v379, v381);

                v14 = 0;
                goto LABEL_158;
              }

              v418 = 0;
              v133 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v129, v183, v399, spec, 2, &v418);
              v14 = v418;
              if (v14)
              {
                free(v397);
                free(v394);
                v220 = objc_msgSend_raiseErrorOrConvert_(v399, v382, v14, v383);
                goto LABEL_178;
              }

              if (objc_msgSend_isDuration(v133, v184, v185, v186))
              {
                free(v397);
                free(v394);
                v387 = objc_msgSend_functionName(spec, v384, v385, v386);
                v389 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v388, v387, 2);
                v15 = objc_msgSend_raiseErrorOrConvert_(v399, v390, v389, v391);

                goto LABEL_179;
              }

              objc_msgSend_doubleRepresentation(v133, v187, v188, v189);
              *(v394 + k + j * objc_msgSend_dimensions(v398, v190, v191, v192)) = v193;
            }

            v175 += 0x100000000;
          }
        }
      }

      free(v397);
      free(v394);
      v220 = objc_msgSend_raiseErrorOrConvert_(v399, v331, v14, v332);
    }

LABEL_178:
    v15 = v220;
    goto LABEL_179;
  }

  v77 = v399;
  if ((v35 & 1) != 0 && (v58 != v54 || v76 != v59))
  {
    goto LABEL_85;
  }

  v392 = v61;
  v78 = 0;
  while (1)
  {
    v79 = objc_msgSend_valueAtIndex_accessContext_(v400, v60, v78, v428);
    v396 = objc_msgSend_valueAtIndex_accessContext_(v398, v80, v78, &contextCopy);
    if (objc_msgSend_isError(v79, v81, v82, v83))
    {
      objc_msgSend_errorWithContext_(v79, v84, v77, v86);
      v14 = LABEL_89:;
      goto LABEL_102;
    }

    if (objc_msgSend_isError(v396, v84, v85, v86))
    {
      objc_msgSend_errorWithContext_(v396, v87, v77, v88);
      goto LABEL_89;
    }

    v427 = 0;
    v89 = v79;
    v90 = objc_msgSend_deepType_outError_(v79, v87, v77, &v427);
    v91 = v77;
    v92 = v90;
    v93 = v427;
    v426 = v93;
    v95 = objc_msgSend_deepType_outError_(v396, v94, v91, &v426);
    v96 = v426;

    if (v96)
    {
      v14 = v96;
      v77 = v399;
      v79 = v89;
      goto LABEL_102;
    }

    if (v92 != 5)
    {
      v79 = v89;
      v100 = objc_msgSend_functionName(spec, v97, v98, v99);
      v101 = objc_msgSend_arrayValueNotNumberErrorForFunctionName_argumentNumber_(TSCEError, v204, v100, 1);
LABEL_98:
      v14 = v101;
      goto LABEL_101;
    }

    v425 = 0;
    v79 = v89;
    v100 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v89, v97, v399, spec, 0, &v425);
    v101 = v425;
    if (v101)
    {
      goto LABEL_98;
    }

    if (objc_msgSend_isDuration(v100, v102, v103, v104))
    {
      v205 = objc_msgSend_functionName(spec, v105, v106, v107);
      v207 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v206, v205, 1);
      goto LABEL_100;
    }

    objc_msgSend_doubleRepresentation(v100, v105, v106, v107);
    *(v397 + v78) = v108;

    if (v95 != 3)
    {
      break;
    }

    v423 = 0;
    v100 = objc_msgSend_asDate_functionSpec_argumentIndex_outError_(v396, v109, v399, spec, 1, &v423);
    v101 = v423;
    if (v101)
    {
      goto LABEL_98;
    }

    objc_msgSend_timeIntervalSinceReferenceDate(v100, v118, v119, v120);
    v117 = v121 / 86400.0;
LABEL_43:
    *(v394 + v78) = v117;

    ++v78;
    v77 = v399;
    if (v19 == v78)
    {
      goto LABEL_104;
    }
  }

  if (v95 != 5)
  {
    v100 = objc_msgSend_functionName(spec, v109, v399, v110);
    v101 = objc_msgSend_arrayValueNotNumberErrorForFunctionName_argumentNumber_(TSCEError, v221, v100, 2);
    goto LABEL_98;
  }

  v424 = 0;
  v100 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v396, v109, v399, spec, 1, &v424);
  v101 = v424;
  if (v101)
  {
    goto LABEL_98;
  }

  if (!objc_msgSend_isDuration(v100, v111, v112, v113))
  {
    objc_msgSend_doubleRepresentation(v100, v114, v115, v116);
    goto LABEL_43;
  }

  v205 = objc_msgSend_functionName(spec, v114, v115, v116);
  v207 = objc_msgSend_durationNotAllowedError_argumentNumber_(TSCEError, v222, v205, 2);
LABEL_100:
  v14 = v207;

LABEL_101:
  v77 = v399;
LABEL_102:

  if (v14)
  {
    free(v397);
    free(v394);
    v15 = objc_msgSend_raiseErrorOrConvert_(v77, v223, v14, v224);
    goto LABEL_158;
  }

LABEL_104:
  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
    v241 = 0;
    goto LABEL_115;
  }

  v225 = *(*arguments + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v225, v226, v227, v228) & 1) != 0 || objc_msgSend_nativeType(v225, v229, v230, v231) == 10)
  {
    v233 = 0;
    goto LABEL_108;
  }

  v417 = 0;
  v252 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v225, v232, v399, spec, 2, &v417);
  v253 = v417;
  if (v253)
  {
    v14 = v253;
    free(v397);
    free(v394);
    v15 = objc_msgSend_raiseErrorOrConvert_(v399, v254, v14, v255);

    goto LABEL_158;
  }

  v233 = v252 ^ 1;
LABEL_108:

  if (*(arguments + 1) - *arguments < 0x19uLL)
  {
    v241 = 0;
    if (v233)
    {
LABEL_119:
      if (v19 < v392)
      {
LABEL_120:
        free(v397);
        free(v394);
        v65 = objc_msgSend_linestMatrixUnderdeterminedError(TSCEError, v247, v248, v249);
        v68 = objc_msgSend_raiseErrorOrConvert_(v399, v250, v65, v251);
        goto LABEL_156;
      }

      v265 = objc_alloc(MEMORY[0x277D81220]);
      inited = objc_msgSend_initNonAffineWithMappings_xs_ys_xDimension_desiredIntercept_(v265, v266, v19, v394, v397, v392, 0.0);
      v245 = v392;
      v246 = 1;
LABEL_125:
      free(v397);
      free(v394);
      v273 = objc_msgSend_errorType(inited, v267, v268, v269);
      if (v273)
      {

        if (v273 == 6)
        {
          objc_msgSend_linestHighlyCorrelatedVariableError(TSCEError, v274, v275, v276);
        }

        else
        {
          objc_msgSend_numberError(TSCEError, v274, v275, v276);
        }
        v65 = ;
        v68 = objc_msgSend_raiseErrorOrConvert_(v399, v277, v65, v278);
        goto LABEL_156;
      }

      memset(v415, 0, sizeof(v415));
      v279 = v245 - 1;
      v393 = v245;
      if (v246)
      {
        v280 = v245 - 1;
      }

      else
      {
        v280 = v245;
      }

      if ((v280 & 0x8000000000000000) == 0)
      {
        v281 = v280;
        do
        {
          objc_msgSend_coefficientAtIndex_(inited, v270, v281, v272);
          TSUDecimal::operator=();
          v284 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v282, v414, v283);
          v413 = v284;
          sub_2210ED5B8(v415, &v413);

          v285 = v281-- <= 0;
        }

        while (!v285);
      }

      if (v246)
      {
        v412 = objc_msgSend_zero(TSCENumberValue, v270, v271, v272);
        sub_2210ED5B8(v415, &v412);
      }

      if (v241)
      {
        v286 = objc_msgSend_errorForErrorType_(TSCEError, v270, 84, v272);
        v289 = objc_msgSend_errorValue_(TSCEErrorValue, v287, v286, v288);

        if ((v280 & 0x8000000000000000) == 0)
        {
          do
          {
            objc_msgSend_coefficientStandardErrorAtIndex_(inited, v290, v280, v292);
            TSUDecimal::operator=();
            v295 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v293, v414, v294);
            v411 = v295;
            sub_2210ED5B8(v415, &v411);

            v285 = v280-- <= 0;
          }

          while (!v285);
        }

        if (v246)
        {
          v410 = v289;
          sub_2210ED5B8(v415, &v410);
        }

        objc_msgSend_rSquared(inited, v290, v291, v292);
        TSUDecimal::operator=();
        v409 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v296, v414, v297);
        sub_2210ED5B8(v415, &v409);

        objc_msgSend_standardError(inited, v298, v299, v300);
        TSUDecimal::operator=();
        v408 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v301, v414, v302);
        sub_2210ED5B8(v415, &v408);

        if (v279)
        {
          for (m = 0; m < v279; ++m)
          {
            v407 = v289;
            sub_2210ED5B8(v415, &v407);
          }
        }

        objc_msgSend_fStatistic(inited, v303, v304, v305);
        TSUDecimal::operator=();
        v406 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v307, v414, v308);
        sub_2210ED5B8(v415, &v406);

        objc_msgSend_degreesFreedom(inited, v309, v310, v311);
        TSUDecimal::operator=();
        v405 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v312, v414, v313);
        sub_2210ED5B8(v415, &v405);

        if (v279)
        {
          for (n = 0; n < v279; ++n)
          {
            v404 = v289;
            sub_2210ED5B8(v415, &v404);
          }
        }

        objc_msgSend_regressionSumSquares(inited, v314, v315, v316);
        TSUDecimal::operator=();
        v403 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v318, v414, v319);
        sub_2210ED5B8(v415, &v403);

        objc_msgSend_errorSumSquares(inited, v320, v321, v322);
        TSUDecimal::operator=();
        v402 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v323, v414, v324);
        sub_2210ED5B8(v415, &v402);
        v325 = v393;

        if (v279)
        {
          for (ii = 0; ii < v279; ++ii)
          {
            v401 = v289;
            sub_2210ED5B8(v415, &v401);
          }
        }

        if (v393 <= 0xFFFD)
        {
          v330 = 5;
LABEL_174:
          LODWORD(v414[0]) = v325 + 1;
          HIDWORD(v414[0]) = v330;
          v370 = [TSCEDenseGrid alloc];
          v341 = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v370, v371, v415, 0, 0, v414);
          v15 = objc_msgSend_gridValue_(TSCEGridValue, v372, v341, v373);
          goto LABEL_175;
        }
      }

      else
      {

        v325 = v393;
        if (v393 < 0xFFFE)
        {
          v330 = 1;
          goto LABEL_174;
        }
      }

      v341 = objc_msgSend_functionName(spec, v327, v328, v329);
      v344 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v342, v341, v343);
      v15 = objc_msgSend_raiseErrorOrConvert_(v399, v345, v344, v346);

LABEL_175:
      v414[0] = v415;
      sub_22107C2C0(v414);
      goto LABEL_157;
    }

LABEL_115:
    if (v19 <= v392)
    {
      goto LABEL_120;
    }

    v242 = objc_alloc(MEMORY[0x277D81220]);
    inited = objc_msgSend_initAffineWithMappings_xs_ys_xDimension_(v242, v243, v19, v394, v397, v392);
    v245 = v392;
    v246 = 0;
    goto LABEL_125;
  }

  v129 = *(*arguments + 24);
  if ((objc_msgSend_isTokenOrEmptyArg(v129, v234, v235, v236) & 1) != 0 || objc_msgSend_nativeType(v129, v237, v238, v239) == 10)
  {
    v241 = 0;
    goto LABEL_112;
  }

  v416 = 0;
  v241 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v129, v240, v399, spec, 3, &v416);
  v353 = v416;
  if (!v353)
  {
LABEL_112:

    if (v233)
    {
      goto LABEL_119;
    }

    goto LABEL_115;
  }

  v14 = v353;
  free(v397);
  free(v394);
  v210 = objc_msgSend_raiseErrorOrConvert_(v399, v354, v14, v355);
LABEL_94:
  v15 = v210;
LABEL_180:

LABEL_158:
LABEL_22:

  return v15;
}

@end