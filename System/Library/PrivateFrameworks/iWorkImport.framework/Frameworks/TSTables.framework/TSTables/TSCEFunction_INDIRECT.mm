@interface TSCEFunction_INDIRECT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)indirectValueWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_INDIRECT

+ (id)indirectValueWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v340 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v8 = **arguments;
  v336 = 0;
  v311 = v8;
  v312 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v9, contextCopy, spec, 0, &v336);
  v10 = v336;
  if (v10)
  {
    v14 = v10;
    v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v11, v10, v13);
    goto LABEL_127;
  }

  if (*(arguments + 1) - *arguments >= 9uLL)
  {
    v16 = *(*arguments + 8);
    if ((objc_msgSend_isTokenOrEmptyArg(v16, v17, v18, v19) & 1) == 0)
    {
      v335 = 0;
      v51 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v16, v20, contextCopy, spec, 1, &v335);
      v52 = v335;
      if (v52)
      {
        v14 = v52;
        v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v53, v52, v54);

        goto LABEL_127;
      }

      if (v312)
      {
        v334 = 0;
        if (!v51)
        {
          v84 = objc_msgSend_calcEngine(contextCopy, v11, v12, v13);
          v88 = objc_msgSend_refParser(v84, v85, v86, v87);
          v92 = objc_msgSend_containingCell(contextCopy, v89, v90, v91);
          v96 = objc_msgSend_containingTable(contextCopy, v93, v94, v95);
          v337.range._topLeft = *v92;
          *&v337.range._bottomRight.row = *v96;
          if (v88)
          {
            objc_msgSend_parseR1C1Reference_containingCell_preserveFlagsOut_(v88, v97, v312, &v337, &v334);
            v308 = *v318;
            v309 = *&v318[16];
          }

          else
          {
            memset(v318, 0, 32);
            v308 = 0u;
            v309 = 0u;
          }

          goto LABEL_65;
        }

        goto LABEL_8;
      }

LABEL_34:
      v98 = objc_msgSend_invalidReferenceError(TSCEError, v11, v12, v13);
      v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v99, v98, v100);

      v14 = 0;
      goto LABEL_127;
    }
  }

  if (!v312)
  {
    goto LABEL_34;
  }

  v334 = 0;
LABEL_8:
  v21 = objc_msgSend_calcEngine(contextCopy, v11, v12, v13);
  v25 = objc_msgSend_containingTable(contextCopy, v22, v23, v24);
  v310 = objc_msgSend_tableResolverForTableUID_(v21, v26, v25, v27);

  v28 = [TSCEReferenceParsingContext alloc];
  v31 = objc_msgSend_initWithContextTableResolver_(v28, v29, v310, v30);
  objc_msgSend_setTrimNames_(v31, v32, 1, v33);
  objc_msgSend_setReferenceIsComplete_(v31, v34, 1, v35);
  objc_msgSend_setParseAsBaseTableReference_(v31, v36, 1, v37);
  v38 = objc_opt_new();
  objc_msgSend_setReferencesMatchingInputAsPrefix_(v31, v39, v38, v40);

  v44 = objc_msgSend_calcEngine(contextCopy, v41, v42, v43);
  v48 = objc_msgSend_refParser(v44, v45, v46, v47);
  v50 = v48;
  if (v48)
  {
    objc_msgSend_parseStringAsBaseReference_withParsingContext_(v48, v49, v312, v31);
    v308 = *v318;
    v309 = *&v318[16];
  }

  else
  {
    memset(v318, 0, 32);
    v308 = 0u;
    v309 = 0u;
  }

  v55 = v310;
  v59 = objc_msgSend_namesUsed(v31, v56, v57, v58);
  v63 = objc_msgSend_referencesMatchingInputAsPrefix(v31, v60, v61, v62);
  v67 = v63;
  if (!v59 || objc_msgSend_count(v63, v64, v65, v66) < 2)
  {
    goto LABEL_52;
  }

  v332 = 0u;
  v333 = 0u;
  v330 = 0u;
  v331 = 0u;
  v68 = v67;
  v306 = v67;
  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v330, v339, 16);
  if (!v73)
  {

    v55 = v310;
    goto LABEL_36;
  }

  v74 = 0;
  v75 = *v331;
  do
  {
    for (i = 0; i != v73; ++i)
    {
      if (*v331 != v75)
      {
        objc_enumerationMutation(v68);
      }

      v77 = objc_msgSend_tableUID(*(*(&v330 + 1) + 8 * i), v70, v71, v72);
      v79 = v78;
      v82 = objc_msgSend_containingTable(contextCopy, v78, v80, v81);
      v83 = v77 == *v82 && v79 == v82[1];
      if (v83)
      {
        ++v74;
      }
    }

    v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v330, v339, 16);
  }

  while (v73);

  v83 = v74 == 1;
  v55 = v310;
  v67 = v306;
  if (v83)
  {
LABEL_52:
    v334 = objc_msgSend_preserveFlags(v31, v64, v65, v66);
    if (v55)
    {
      v135 = v59;
    }

    else
    {
      v135 = 0;
    }

    if (v135 == 1)
    {
      v307 = v67;
      v136 = objc_msgSend_containingCell(contextCopy, v132, v133, v134);
      v137 = *v136;
      v138 = *(v136 + 4);
      v142 = objc_msgSend_bodyRangeCoordinate(v55, v139, v140, v141);
      v146 = v138 >= WORD2(v142);
      v67 = v307;
      if (!v146 || v137 < v142)
      {
        v157 = objc_msgSend_circularReferenceError(TSCEError, v143, v144, v145);
        v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v158, v157, v159);

        v14 = 0;
LABEL_125:
        v194 = v310;
        goto LABEL_126;
      }
    }

    goto LABEL_59;
  }

LABEL_36:
  if (!objc_msgSend_namesUsed(v31, v64, v65, v66))
  {
    goto LABEL_52;
  }

  if (!v55)
  {
    v308 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v309 = 0u;
    goto LABEL_59;
  }

  v104 = objc_msgSend_sheetName(v31, v64, v65, v66);
  if (v104)
  {
    goto LABEL_135;
  }

  v105 = objc_msgSend_tableName(v31, v101, v102, v103);
  v106 = v105 == 0;

  if (!v106)
  {
    v104 = objc_msgSend_sheetName(v310, v107, v108, v109);
    v328 = 0u;
    v329 = 0u;
    v326 = 0u;
    v327 = 0u;
    obj = v68;
    v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v110, &v326, v338, 16);
    if (v114)
    {
      v115 = 0;
      v305 = *v327;
      while (2)
      {
        for (j = 0; j != v114; ++j)
        {
          if (*v327 != v305)
          {
            objc_enumerationMutation(obj);
          }

          v117 = *(*(&v326 + 1) + 8 * j);
          v118 = objc_msgSend_calcEngine(contextCopy, v111, v112, v113);
          *v318 = objc_msgSend_tableUID(v117, v119, v120, v121);
          *&v318[8] = v122;
          v124 = objc_msgSend_tableResolverForTableUID_(v118, v122, v318, v123);

          if (v124)
          {
            v128 = objc_msgSend_sheetName(v124, v125, v126, v127);
            isEqualToString = objc_msgSend_isEqualToString_(v128, v129, v104, v130);

            if (isEqualToString)
            {
              if (++v115 > 1)
              {

                goto LABEL_134;
              }
            }
          }
        }

        v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v111, &v326, v338, 16);
        if (v114)
        {
          continue;
        }

        break;
      }

      if (v115 == 1)
      {

        v55 = v310;
        v67 = v306;
        goto LABEL_52;
      }
    }

    else
    {
LABEL_134:
    }

LABEL_135:
  }

  v308 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v309 = 0u;
  v67 = v306;
LABEL_59:

  if (v59)
  {
    v150 = objc_msgSend_calcEngine(contextCopy, v147, v148, v149);
    v154 = objc_msgSend_headerNameMgr(v150, v151, v152, v153);

    if (v154)
    {
      objc_msgSend_nameFragmentPrecedentsForReferenceString_(v154, v155, v312, v156);
    }

    else
    {
      memset(&v337, 0, 24);
    }

    v324[0] = MEMORY[0x277D85DD0];
    v324[1] = 3221225472;
    v324[2] = sub_22146DD80;
    v324[3] = &unk_27845FBD8;
    v160 = contextCopy;
    v325 = v160;
    TSCECellRefSet::enumerateCellRefsUsingBlock(&v337, v324);
    v164 = objc_msgSend_calcEngine(v160, v161, v162, v163);
    v168 = objc_msgSend_namedReferenceManager(v164, v165, v166, v167);
    v317.coordinate = objc_msgSend_formulaOwnerUID(v168, v169, v170, v171);
    v317._tableUID._lower = v172;
    TSCEAnyRef::TSCEAnyRef(v318, 3, &v317);

    objc_msgSend_addCalculatedPrecedent_(v160, v173, v318, v174);
    sub_22107C800(&v337, *&v337.range._bottomRight);
  }

LABEL_65:
  v175 = v308.i64[0] & 0xFFFF00000000;
  if (v308.u32[0] == 0x7FFFFFFFLL || v175 == 0x7FFF00000000)
  {
    v176 = v308.i64[1] & 0xFFFF00000000;
  }

  else
  {
    v176 = v308.i64[1] & 0xFFFF00000000;
    if (v308.i32[2] != 0x7FFFFFFF && v176 != 0x7FFF00000000 && v308.u16[2] <= v308.u16[6] && v308.i32[0] <= v308.i32[2])
    {
      goto LABEL_84;
    }
  }

  if (v308.u32[0] != 0x7FFFFFFFLL && v175 == 0x7FFF00000000 && v176 == 0x7FFF00000000)
  {
    if (v308.i32[2] == 0x7FFFFFFF || v308.i32[0] > v308.i32[2])
    {
      goto LABEL_88;
    }
  }

  else if (v308.u32[0] != 0x7FFFFFFFLL || v175 == 0x7FFF00000000 || v176 == 0x7FFF00000000 || v308.i32[2] != 0x7FFFFFFF || v308.u16[2] > v308.u16[6])
  {
LABEL_88:
    v206 = objc_msgSend_calcEngine(contextCopy, v147, v148, v149);
    v210 = objc_msgSend_containingTable(contextCopy, v207, v208, v209);
    v310 = objc_msgSend_tableResolverForTableUID_(v206, v211, v210, v212);

    v213 = [TSCEReferenceParsingContext alloc];
    v216 = objc_msgSend_initWithContextTableResolver_(v213, v214, v310, v215);
    objc_msgSend_setTrimNames_(v216, v217, 1, v218);
    objc_msgSend_setReferenceIsComplete_(v216, v219, 1, v220);
    objc_msgSend_setParseAsBaseTableReference_(v216, v221, 1, v222);
    v226 = objc_msgSend_calcEngine(contextCopy, v223, v224, v225);
    v230 = objc_msgSend_refParser(v226, v227, v228, v229);
    v232 = objc_msgSend_parseStringAsCategoryRef_withParsingContext_(v230, v231, v312, v216);

    v236 = objc_msgSend_groupByUid(v232, v233, v234, v235);
    if (!(v236 | v237))
    {
LABEL_117:

      if (*&v309 != 0)
      {
        v316 = v309;
        objc_msgSend_geometryPrecedentForTableUID_(TSCEHauntedOwner, v290, &v316, v292);
        *v318 = 0;
        TSCERangeRef::TSCERangeRef(&v337, &v317);
        *&v318[8] = v337;
        v319 = 0;
        v323 = 0;
        v320 = 0;
        v321 = 0;
        v322 = 0;
        objc_msgSend_addCalculatedPrecedent_(contextCopy, v293, v318, v294);
      }

      v194 = objc_msgSend_invalidReferenceError(TSCEError, v290, v291, v292);
      v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v295, v194, v296);
LABEL_120:
      v14 = 0;
      goto LABEL_126;
    }

    v240 = v310;
    v244 = objc_msgSend_type(v232, v237, v238, v239);
    if (v244 == 11)
    {
      v245 = objc_msgSend_calcEngine(contextCopy, v241, v242, v243);
      v244 = objc_msgSend_aggregateTypeForCategoryRef_(v245, v246, v232, v247);

      v240 = v310;
    }

    objc_msgSend_addCalculatedPrecedentForCategoryRef_(contextCopy, v241, v232, v243);
    if (v240)
    {
      *v318 = objc_msgSend_groupByUid(v232, v248, v249, v250);
      *&v318[8] = v251;
      objc_msgSend_indirectAggTypeChangePrecedent_(v240, v251, v318, v252);
      *v318 = 0;
      TSCERangeRef::TSCERangeRef(&v337, &v317);
      *&v318[8] = v337;
      v319 = 0;
      v323 = 0;
      v320 = 0;
      v321 = 0;
      v322 = 0;
      objc_msgSend_addCalculatedPrecedent_(contextCopy, v253, v318, v254);
    }

    if (v244 == 10)
    {
      v316 = 0uLL;
      v255 = objc_msgSend_relativeGroupUid(v232, v248, v249, v250);
      if (v255 | v256)
      {
        v316.i64[0] = objc_msgSend_containingRowUid(contextCopy, v256, v257, v258);
        v316.i64[1] = v256;
      }

      v259 = objc_msgSend_calcEngine(contextCopy, v256, v257, v258);
      v15 = v259;
      if (v259)
      {
        objc_msgSend_cellRefsForCategoryRef_atRowUid_(v259, v260, v232, &v316);
      }

      else
      {
        memset(&v337, 0, 24);
      }

      topLeft = v337.range._topLeft;
      bottomRight = v337.range._bottomRight;
      if (*&v337.range._bottomRight == *&v337.range._topLeft)
      {
        v289 = v337.range._topLeft;
      }

      else
      {
        v315 = 0;
        memset(&v317, 0, sizeof(v317));
        v275 = v337.range._topLeft;
        do
        {
          v276 = **&v275;
          v277 = [TSCEReferenceValue alloc];
          v278 = *(*&v275 + 8);
          *v318 = v276;
          *&v318[8] = v276;
          *&v318[16] = v278;
          v280 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v277, v279, contextCopy, v318, &v315);
          objc_msgSend_setIsOutputOfAFunction_(v280, v281, 1, v282);
          v283 = v280;
          v314 = v283;
          sub_2210ED5B8(&v317, &v314);

          *&v275 += 24;
        }

        while (v275 != bottomRight);
        v284 = [TSCEDenseGrid alloc];
        *v318 = 1;
        *&v318[4] = (v317._tableUID._lower - *&v317.coordinate) >> 3;
        isFlattened_dimensions = objc_msgSend_initWithValues_gridKind_isFlattened_dimensions_(v284, v285, &v317, 0, 1, v318);
        v15 = objc_msgSend_gridValue_(TSCEGridValue, v287, isFlattened_dimensions, v288);

        *v318 = &v317;
        sub_22107C2C0(v318);
        v289 = v337.range._topLeft;
      }

      if (v289)
      {
        v337.range._bottomRight = v289;
        operator delete(v289);
      }

      if (bottomRight != topLeft)
      {
        v14 = 0;
LABEL_124:

        goto LABEL_125;
      }

      goto LABEL_117;
    }

    v337.range._topLeft = 0;
    v337.range._bottomRight = 0;
    v261 = objc_msgSend_relativeGroupUid(v232, v248, v249, v250);
    if (v261 | *&v262)
    {
      v337.range._topLeft = objc_msgSend_containingRowUid(contextCopy, *&v262, v263, v264);
      v337.range._bottomRight = v262;
    }

    v265 = objc_msgSend_calcEngine(contextCopy, *&v262, v263, v264);
    v269 = objc_msgSend_hidingActionMask(contextCopy, v266, v267, v268);
    v313 = 0;
    if (v265)
    {
      objc_msgSend_valuesForCategoryRef_atRowUid_hidingActionMask_error_(v265, v270, v232, &v337, v269, &v313);
      v14 = v313;

      if (v14)
      {
        v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v271, v14, v272);
LABEL_123:
        v317.coordinate = v318;
        sub_22107C2C0(&v317);
        goto LABEL_124;
      }
    }

    else
    {
      memset(v318, 0, 24);
    }

    if (*&v318[8] - *v318 == 8)
    {
      v15 = **v318;
    }

    else
    {
      v297 = [TSCEDenseGrid alloc];
      v300 = objc_msgSend_initWithValues_(v297, v298, v318, v299);
      v15 = objc_msgSend_gridValue_(TSCEGridValue, v301, v300, v302);
    }

    v14 = 0;
    goto LABEL_123;
  }

LABEL_84:
  v177 = vmovn_s64(vtstq_s64(v309, v309));
  if (((v177.i32[0] | v177.i32[1]) & 1) == 0)
  {
    goto LABEL_88;
  }

  v178 = [TSCEReferenceValue alloc];
  *v318 = v308;
  *&v318[16] = v309;
  v15 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v178, v179, contextCopy, v318, &v334);
  objc_msgSend_setIsOutputOfAFunction_(v15, v180, 1, v181);
  *v318 = 1;
  *&v318[8] = v308;
  *&v318[24] = v309;
  v319 = 0;
  v323 = 0;
  v320 = 0;
  v321 = 0;
  v322 = 0;
  objc_msgSend_addCalculatedPrecedent_(contextCopy, v182, v318, v183);

  v316 = v309;
  objc_msgSend_sheetTableNamePrecedentForTableUID_(TSCEHauntedOwner, v184, &v316, v185);
  *v318 = 0;
  TSCERangeRef::TSCERangeRef(&v337, &v317);
  *&v318[8] = v337;
  v319 = 0;
  v323 = 0;
  v320 = 0;
  v321 = 0;
  v322 = 0;
  objc_msgSend_addCalculatedPrecedent_(contextCopy, v186, v318, v187);

  v191 = objc_msgSend_calcEngine(contextCopy, v188, v189, v190);
  *v318 = v309;
  v194 = objc_msgSend_tableResolverForTableUID_(v191, v192, v318, v193);

  if (v194)
  {
    if (objc_msgSend_isPivotTable(v194, v195, v196, v197))
    {
      v316 = v309;
      objc_msgSend_pivotRulesChangedPrecedentForTableUID_(TSCEHauntedOwner, v198, &v316, v199);
      *v318 = 0;
      TSCERangeRef::TSCERangeRef(&v337, &v317);
      *&v318[8] = v337;
      v319 = 0;
      v323 = 0;
      v320 = 0;
      v321 = 0;
      v322 = 0;
      objc_msgSend_addCalculatedPrecedent_(contextCopy, v200, v318, v201);

      v316 = v309;
      objc_msgSend_pivotSortChangedPrecedentForTableUID_(TSCEHauntedOwner, v202, &v316, v203);
      *v318 = 0;
      TSCERangeRef::TSCERangeRef(&v337, &v317);
      *&v318[8] = v337;
      v319 = 0;
      v323 = 0;
      v320 = 0;
      v321 = 0;
      v322 = 0;
      objc_msgSend_addCalculatedPrecedent_(contextCopy, v204, v318, v205);
    }

    goto LABEL_120;
  }

  v14 = 0;
  v194 = 0;
LABEL_126:

LABEL_127:

  return v15;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v11 = v8;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v9, context, v10);
  }

  else
  {
    memset(&v26, 0, sizeof(v26));
  }

  if (*(arguments + 1) - *arguments >= 9uLL)
  {
    v12 = *(*arguments + 8);
    if (objc_msgSend_isTokenOrEmptyArg(v12, v13, v14, v15))
    {
LABEL_12:

      goto LABEL_13;
    }

    if (v11)
    {
      objc_msgSend_formatWithContext_(v11, v16, context, v18);
      if (v12)
      {
LABEL_8:
        objc_msgSend_formatWithContext_(v12, v16, context, v18);
LABEL_11:
        TSCEFormat::formatByMergingWithFormat(&v25, &v24, &v23, v17, v18);
        TSCEFormat::operator=(&v26, &v25);
        goto LABEL_12;
      }
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
      if (v12)
      {
        goto LABEL_8;
      }
    }

    memset(&v23, 0, sizeof(v23));
    goto LABEL_11;
  }

LABEL_13:
  v19 = objc_msgSend_indirectValueWithContext_functionSpec_arguments_(TSCEFunction_INDIRECT, v9, context, spec, arguments, *&v23._tskFormat, *&v23._durationFormat, v24._tskFormat, *&v24._formatType, *&v24._durationFormat, *&v24._numberFormat.decimalPlaces);
  TSCEFormat::TSCEFormat(&v25, &v26);
  objc_msgSend_setFormat_(v19, v20, &v25, v21);

  return v19;
}

@end