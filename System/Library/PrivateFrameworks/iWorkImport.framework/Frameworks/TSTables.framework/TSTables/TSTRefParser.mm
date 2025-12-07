@interface TSTRefParser
+ (RefTypeHolder<TSCERangeRef,)p_baseRangeRefForChromeRangeRef:(id)ref calcEngine:(SEL)engine;
+ (RefTypeHolder<TSCERangeRef,)p_chromeRangeRefForBaseRangeRef:(id)ref calcEngine:(SEL)engine;
+ (id)p_baseReferenceForChromeReference:(id)reference calcEngine:(id)engine;
+ (id)p_baseReferencesForChromeReferences:(id)references calcEngine:(id)engine;
+ (id)p_chromeReferenceForBaseReference:(id)reference calcEngine:(id)engine;
+ (id)p_chromeReferencesForMixedReferences:(id)references calcEngine:(id)engine;
- (BOOL)p_parseComponentsOfReference:(id)reference gettingSheetName:(id *)name gettingTableName:(id *)tableName gettingRest:(id *)rest;
- (RefTypeHolder<TSCERangeRef,)p_parseStringAsReferenceComponentIntersection:(TSTRefParser *)self inResolver:(SEL)resolver inTableNamed:(id)named preferredGeometricResolver:(id)geometricResolver withParsingContext:(id)context;
- (RefTypeHolder<TSCERangeRef,)parseStringAsBaseReference:(TSTRefParser *)self withParsingContext:(SEL)context;
- (RefTypeHolder<TSCERangeRef,)parseStringAsChromeReference:(TSTRefParser *)self withParsingContext:(SEL)context;
- (TSCECalculationEngine)calcEngine;
- (TSCERangeRef)parseR1C1Reference:(SEL)reference containingCell:(id)cell preserveFlagsOut:(const TSCECellRef *)out;
- (TSKUIDStruct)p_findFirstColumnNameInComponent:(id)component tableName:(id)name refResolver:(id)resolver calcEngine:(id)engine outPreserveFlags:(TSUPreserveFlags *)flags usedWordCount:(unint64_t *)count;
- (TSTRefParser)initWithCalcEngine:(id)engine;
- (TSUCellCoord)parseR1C1Coord:(id)coord containingCell:(const TSCECellRef *)cell preserveFlagsOut:(TSUPreserveFlags *)out;
- (TSUChromeCellCoord)p_parseStringAsGeometricReferenceComponent:(id)component inResolver:(id)resolver outPreserveFlags:(TSUPreserveFlags *)flags gettingReferencesMatchingInputAsPrefix:(id *)prefix;
- (id)p_parseAsCategoryRefWithSheet:(id)sheet tableName:(id)name columnNameAndGroupValuesStartAt:(unint64_t)at withParsingContext:(id)context;
- (id)parseAsCategoryRefWithParsingContext:(id)context;
- (id)parseAsChromeRefWithParsingContext:(id)context;
- (id)parseAsTractRefWithParsingContext:(id)context;
- (id)parseStringAsCategoryRef:(id)ref withParsingContext:(id)context;
@end

@implementation TSTRefParser

- (TSTRefParser)initWithCalcEngine:(id)engine
{
  engineCopy = engine;
  v15.receiver = self;
  v15.super_class = TSTRefParser;
  v5 = [(TSTRefParser *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_calcEngine, engineCopy);
    v10 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v7, v8, v9);
    whitespaceCharSet = v6->_whitespaceCharSet;
    v6->_whitespaceCharSet = v10;

    v12 = objc_opt_new();
    stringManipulator = v6->_stringManipulator;
    v6->_stringManipulator = v12;
  }

  return v6;
}

- (TSUChromeCellCoord)p_parseStringAsGeometricReferenceComponent:(id)component inResolver:(id)resolver outPreserveFlags:(TSUPreserveFlags *)flags gettingReferencesMatchingInputAsPrefix:(id *)prefix
{
  componentCopy = component;
  resolverCopy = resolver;
  v14 = resolverCopy;
  prefixCopy = prefix;
  if (resolverCopy)
  {
    if (objc_msgSend_isPivotTable(resolverCopy, v11, v12, v13))
    {
      v18 = objc_msgSend_tableInfo(v14, v15, v16, v17);
      v22 = objc_msgSend_range(v18, v19, v20, v21);
      v24 = TSUCellRectToTSCERangeCoordinate(v22, v23);
      v25 = v24;
      v27 = v26;
      v28 = WORD2(v24);
    }

    else
    {
      v38 = objc_msgSend_tableRangeCoordinate(v14, v15, v16, v17);
      v27 = v39;
      v28 = WORD2(v38);
      v25 = v38;
    }
  }

  else
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTRefParser p_parseStringAsGeometricReferenceComponent:inResolver:outPreserveFlags:gettingReferencesMatchingInputAsPrefix:]", v13);
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefParser.mm", v32);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 66, 0, "can't look for geometric references in no particular table");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
    v25 = 0x7FFFFFFF;
    v28 = 0x7FFF;
    v27 = 0x7FFF7FFFFFFFLL;
  }

  flags->_flags = 0;
  v40 = TSUCellCoord::coordFromString(componentCopy, 0x3E8);
  v44 = v40;
  v45 = HIWORD(v40);
  v46 = HIBYTE(v40);
  if ((v40 & 0x1000000000000) != 0)
  {
    v47 = 2;
  }

  else
  {
    v47 = 0;
  }

  flags->_flags |= v47 | HIBYTE(v40) & 1;
  if ((v40 == 0x7FFFFFFF || (v40 & 0xFFFF00000000) == 0x7FFF00000000) && objc_msgSend_length(componentCopy, v41, v42, v43, prefix) >= 2 && (v48 = objc_msgSend_length(componentCopy, v41, v42, v43), objc_msgSend_characterAtIndex_(componentCopy, v49, v48 - 1, v50) == 36))
  {
    v51 = objc_msgSend_length(componentCopy, v41, v42, v43);
    v54 = objc_msgSend_substringToIndex_(componentCopy, v52, v51 - 1, v53);
    v44 = TSUCellCoord::coordFromString(v54, 0x3E8);
    v45 = HIWORD(v44);
    v46 = HIBYTE(v44);
    if ((v44 & 0x1000000000000) != 0)
    {
      v55 = 2;
    }

    else
    {
      v55 = 0;
    }

    flags->_flags |= v55 | HIBYTE(v44) & 1;

    v56 = 1;
  }

  else
  {
    v56 = 0;
  }

  v57 = (v45 << 48) | (v46 << 56) | v44 & 0xFFFFFFFFFFFFLL;
  v58 = v44 & 0xFFFF00000000;
  if (v44 != 0x7FFFFFFFLL && v58 != 0x7FFF00000000)
  {
    v59 = 0x7FFF7FFFFFFFLL;
    v60 = 0x7FFF7FFFFFFFLL;
    if (WORD2(v44) < v28 || v25 > v44 || WORD2(v44) > WORD2(v27) || v44 > v27)
    {
      goto LABEL_47;
    }

    v61 = flags->_flags & 3 | (4 * (flags->_flags & 3));
    goto LABEL_39;
  }

  v59 = 0x7FFF7FFFFFFFLL;
  v60 = 0x7FFF7FFFFFFFLL;
  if (v44 == 0x7FFFFFFFLL || v58 != 0x7FFF00000000)
  {
    if (v44 != 0x7FFFFFFFLL || v58 == 0x7FFF00000000)
    {
      goto LABEL_47;
    }

    v63 = flags->_flags & 3 | (4 * (flags->_flags & 3));
    flags->_flags = v63;
    if (v28 <= WORD2(v44) && WORD2(v44) <= WORD2(v27))
    {
      v60 = v57;
    }

    else
    {
      v60 = 0x7FFF7FFFFFFFLL;
    }

    if ((v56 & (v28 <= WORD2(v44) && WORD2(v44) <= WORD2(v27))) == 1)
    {
      v61 = v63 | 0xA;
LABEL_39:
      v64 = prefixCopy;
      flags->_flags = v61;
      v60 = v57;
      if (!prefixCopy)
      {
        goto LABEL_47;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v62 = flags->_flags & 3 | (4 * (flags->_flags & 3));
    flags->_flags = v62;
    if (v25 <= v44 && v44 <= v27)
    {
      v60 = v57;
    }

    else
    {
      v60 = 0x7FFF7FFFFFFFLL;
    }

    if ((v56 & (v25 <= v44 && v44 <= v27)) == 1)
    {
      v61 = v62 | 5;
      goto LABEL_39;
    }
  }

  v64 = prefixCopy;
  if (!prefixCopy)
  {
    goto LABEL_47;
  }

LABEL_42:
  if ((v60 & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    if (v14)
    {
      v65 = objc_msgSend_tableUID(v14, v41, v42, v43);
      v67 = v66;
    }

    else
    {
      v65 = 0;
      v67 = 0;
    }

    v68 = [TSCEAnyReference alloc];
    v87[0] = v60;
    v87[1] = v65;
    v87[2] = v67;
    v71 = objc_msgSend_initWithCellRef_(v68, v69, v87, v70);
    objc_msgSend_setWasConstructedViaNames_(v71, v72, 0, v73);
    v77 = objc_msgSend_uppercaseString(componentCopy, v74, v75, v76);
    objc_msgSend_setOverrideText_(v71, v78, v77, v79);

    objc_msgSend_setPreserveFlags_(v71, v80, flags->_flags, v81);
    v84 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v82, v71, v83);
    *v64 = v84;
  }

LABEL_47:
  if (!v56)
  {
    v59 = v60;
  }

  return v59;
}

- (RefTypeHolder<TSCERangeRef,)p_parseStringAsReferenceComponentIntersection:(TSTRefParser *)self inResolver:(SEL)resolver inTableNamed:(id)named preferredGeometricResolver:(id)geometricResolver withParsingContext:(id)context
{
  v350 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  geometricResolverCopy = geometricResolver;
  contextCopy = context;
  v263 = a7;
  v267 = a8;
  v348 = 0uLL;
  v253 = geometricResolverCopy;
  if (geometricResolverCopy)
  {
    *&v348 = objc_msgSend_tableUID(geometricResolverCopy, v13, v14, v15);
    *(&v348 + 1) = v13;
  }

  else
  {
    v348 = 0uLL;
  }

  v16 = objc_msgSend_contextTableResolver(v267, v13, v14, v15);
  v260 = v16;
  if (v16)
  {
    v274 = objc_msgSend_tableUID(v16, v17, v18, v19);
    v275 = v17;
  }

  else
  {
    v274 = 0;
    v275 = 0;
  }

  v20 = objc_msgSend_calcEngine(self, v17, v18, v19);
  v24 = objc_msgSend_documentLocale(v20, v21, v22, v23);

  v258 = v24;
  v257 = objc_msgSend_locale(v24, v25, v26, v27);
  v346[0] = 0;
  v346[1] = v346;
  v346[2] = 0x3032000000;
  v346[3] = sub_221094B70;
  v346[4] = sub_221094B80;
  v347 = 0;
  v266 = namedCopy;
  if (objc_msgSend_length(v266, v28, v29, v30) && objc_msgSend_hasPrefix_(v266, v31, @"$", v33))
  {
    v34 = objc_msgSend_length(@"$", v31, v32, v33);
    v265 = objc_msgSend_substringFromIndex_(v266, v35, v34, v36);

    if (objc_msgSend_length(v265, v37, v38, v39) && objc_msgSend_hasPrefix_(v265, v31, @"$", v33))
    {
      v40 = v266;

      v269 = 0;
      v265 = v40;
    }

    else
    {
      v269 = 1;
    }
  }

  else
  {
    v269 = 0;
    v265 = v266;
  }

  v41 = objc_msgSend_calcEngine(self, v31, v32, v33);
  v256 = v41;
  IsComplete = objc_msgSend_referenceIsComplete(v267, v42, v43, v44);
  stringManipulator = self->_stringManipulator;
  if (IsComplete)
  {
    sub_221140460(stringManipulator, v265);
  }

  else
  {
    sub_22114067C(stringManipulator, v265);
  }
  v264 = ;
  v50 = objc_msgSend_headerNameMgr(v41, v47, v48, v49);
  v270 = v50;
  v54 = objc_msgSend_referenceIsComplete(v267, v51, v52, v53);
  if (v50)
  {
    objc_msgSend_headerCellsMatching_limitToTable_includePrefixes_(v50, v55, v264, &v348, v54 ^ 1u);
  }

  else
  {
    v344 = 0;
    v343 = 0;
    v345 = 0;
  }

  v255 = sub_2211403F8(&self->_stringManipulator->super.isa, v264);
  objc_msgSend_setNamesUsed_(v267, v56, 1, v57);
  v341[0] = 0;
  v341[1] = v341;
  v341[2] = 0x2020000000;
  v342 = 0;
  v339[0] = 0;
  v339[1] = v339;
  v339[2] = 0x2020000000;
  v340 = 0;
  v337[0] = 0;
  v337[1] = v337;
  v337[2] = 0x2020000000;
  v338 = 0;
  v331 = 0;
  v332 = &v331;
  v333 = 0x3032000000;
  v334 = sub_221094B70;
  v335 = sub_221094B80;
  v336 = 0;
  v329[0] = 0;
  v329[1] = v329;
  v329[2] = 0x2020000000;
  v330 = 0;
  v61 = objc_msgSend_array(MEMORY[0x277CBEB18], v58, v59, v60);
  v327[0] = 0;
  v327[1] = v327;
  v327[2] = 0x3032000000;
  v327[3] = sub_221094B70;
  v327[4] = sub_221094B80;
  v328 = 0;
  v305[0] = MEMORY[0x277D85DD0];
  v305[1] = 3221225472;
  v305[2] = sub_221094B88;
  v305[3] = &unk_27845DB48;
  v271 = contextCopy;
  v306 = v271;
  v316 = v327;
  v272 = v256;
  v307 = v272;
  v250 = v258;
  v308 = v250;
  v62 = v50;
  v326 = v269;
  v323 = v348;
  v268 = v62;
  v309 = v62;
  selfCopy = self;
  v278 = v267;
  v311 = v278;
  v273 = v61;
  v312 = v273;
  v317 = v329;
  v324 = v274;
  v325 = v275;
  v252 = v255;
  v313 = v252;
  v251 = v257;
  v314 = v251;
  v318 = v346;
  v262 = v260;
  v315 = v262;
  v319 = v341;
  v320 = &v331;
  v321 = v339;
  v322 = v337;
  TSCECellRefSet::enumerateCellRefsUsingBlock(&v343, v305);
  v277 = sub_221141034(&self->_stringManipulator->super.isa, v265);
  v66 = objc_msgSend_count(v277, v63, v64, v65);
  if (v66 < 2)
  {
    v119 = objc_msgSend_referenceIsComplete(v278, v67, v68, v69);
    v120 = self->_stringManipulator;
    if (v119)
    {
      sub_221140460(v120, v266);
    }

    else
    {
      sub_22114067C(v120, v266);
    }
    v121 = ;
    if (objc_msgSend_isEqualToString_(v121, v122, v266, v123))
    {
      v124 = v263;
      if (!v263)
      {
        v124 = v262;
      }

      v125 = v124;
      v129 = v125;
      if (v125)
      {
        v130 = objc_msgSend_tableName(v125, v126, v127, v128);
      }

      else
      {
        v130 = 0;
      }

      v131 = objc_msgSend_documentLocale(v272, v126, v127, v128);
      v134 = v131;
      if (!v271 || v130 && objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v131, v132, v271, v130))
      {
        if (v129)
        {
          LOBYTE(v288.range._topLeft.row) = 0;
          v289 = 0;
          v135 = objc_msgSend_p_parseStringAsGeometricReferenceComponent_inResolver_outPreserveFlags_gettingReferencesMatchingInputAsPrefix_(self, v132, v266, v129, &v288, &v289);
          v136 = v289;
          objc_msgSend_setPreserveFlags_(v278, v137, LOBYTE(v288.range._topLeft.row), v138);
        }

        else
        {
          v136 = 0;
          v135 = 0x7FFF7FFFFFFFLL;
        }

        objc_msgSend_addObjectsFromArray_(v273, v132, v136, v133);
        if (objc_msgSend_count(v136, v139, v140, v141))
        {
          objc_msgSend_setNamesUsed_(v278, v142, 0, v144);
        }

        if (v135 != 0x7FFFFFFF && (v135 & 0xFFFF00000000) != 0x7FFF00000000 || v135 == 0x7FFFFFFF && WORD2(v135) != 0x7FFF || v135 != 0x7FFFFFFF && WORD2(v135) == 0x7FFF || !v332[5])
        {
          v146 = *(&v348 + 1);
          v145 = v348;
          if (v129 && !v348)
          {
            if (*(&v348 + 1))
            {
              v145 = 0;
            }

            else
            {
              v145 = objc_msgSend_tableUID(v129, 0, v143, v144);
            }
          }

          v288.range._topLeft = v135;
          v288.range._bottomRight = v135;
          v288._tableUID._lower = v145;
          v288._tableUID._upper = v146;
          v147 = [TSCEAnyReference alloc];
          v150 = objc_msgSend_initWithRangeRef_(v147, v148, &v288, v149);
          v151 = v332[5];
          v332[5] = v150;
        }
      }

      else
      {
        v136 = 0;
      }
    }
  }

  else
  {
    v70 = v66 - 1;
    v71 = 1;
    do
    {
      v72 = objc_msgSend_subarrayWithRange_(v277, v67, 0, v70);
      v75 = objc_msgSend_componentsJoinedByString_(v72, v73, @" ", v74);

      if (!objc_msgSend_filterColons(v278, v76, v77, v78) || objc_msgSend_rangeOfString_(v75, v79, @":", v80) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v81 = objc_msgSend_subarrayWithRange_(v277, v79, v70, v71);
        v84 = objc_msgSend_componentsJoinedByString_(v81, v82, @" ", v83);

        if (objc_msgSend_length(v75, v85, v86, v87))
        {
          if (objc_msgSend_length(v84, v88, v89, v90) && objc_msgSend_hasPrefix_(v84, v91, @"$", v92))
          {
            v96 = objc_msgSend_length(@"$", v93, v94, v95);
            v99 = objc_msgSend_substringFromIndex_(v84, v97, v96, v98);

            v100 = 1;
            v84 = v99;
          }

          else
          {
            v100 = 0;
          }

          v101 = v75;
          v75 = sub_221140460(self->_stringManipulator, v101);

          isEqualToString = objc_msgSend_isEqualToString_(v75, v102, v101, v103);
          v105 = v84;

          v109 = objc_msgSend_referenceIsComplete(v278, v106, v107, v108);
          v110 = self->_stringManipulator;
          if (v109)
          {
            sub_221140460(v110, v105);
          }

          else
          {
            sub_22114067C(v110, v105);
          }
          v111 = ;

          v115 = objc_msgSend_isEqualToString_(v111, v112, v105, v113);
          if (v270)
          {
            v116 = v268;
            objc_msgSend_headerCellsMatching_limitToTable_includePrefixes_(v268, v114, v75, &v348, 0);
          }

          else
          {
            memset(&v288, 0, 24);
            v116 = v268;
          }

          v290[0] = MEMORY[0x277D85DD0];
          v290[1] = 3321888768;
          v290[2] = sub_221095058;
          v290[3] = &unk_2834A15F0;
          v291 = v278;
          v292 = v116;
          v297 = v327;
          v293 = v272;
          v294 = v271;
          v84 = v111;
          v295 = v84;
          TSCECellRefSet::TSCECellRefSet(&v298, &v288);
          v299 = v274;
          v300 = v275;
          v296 = v273;
          v301 = v269;
          v302 = v100;
          v303 = isEqualToString ^ 1;
          v304 = v115 ^ 1;
          TSCECellRefSet::enumerateCellRefsUsingBlock(&v288, v290);

          sub_22107C800(&v298, v298._coordsForOwnerUid.__tree_.__end_node_.__left_);
          sub_22107C800(&v288, *&v288.range._bottomRight);
        }
      }

      ++v71;
      --v70;
    }

    while (v70);
  }

  v152 = objc_msgSend_referencesMatchingInputAsPrefix(v278, v67, v117, v118);
  v153 = v152 == 0;

  if (!v153)
  {
    v157 = objc_msgSend_referencesMatchingInputAsPrefix(v278, v154, v155, v156);
    objc_msgSend_removeAllObjects(v157, v158, v159, v160);

    v164 = objc_msgSend_referencesMatchingInputAsPrefix(v278, v161, v162, v163);
    objc_msgSend_addObjectsFromArray_(v164, v165, v273, v166);
  }

  if (!objc_msgSend_count(v273, v154, v155, v156) || (v170 = v332[5]) != 0 && (objc_msgSend_rangeRef(v170, v167, v168, v169), (TSCERangeRef::isValid(&v288) & 1) != 0))
  {
    if (!objc_msgSend_count(v273, v167, v168, v169))
    {
      goto LABEL_102;
    }

    v174 = objc_msgSend_objectAtIndex_(v273, v171, 0, v173);
    v178 = objc_msgSend_preserveFlags(v174, v175, v176, v177);
    objc_msgSend_setPreserveFlags_(v278, v179, v178, v180);
  }

  else if (objc_msgSend_count(v273, v167, v168, v169) == 1)
  {
    v184 = 0;
LABEL_81:
    v174 = objc_msgSend_objectAtIndex_(v273, v181, v184, v183);
    objc_storeStrong(v332 + 5, v174);
    v188 = objc_msgSend_preserveFlags(v174, v185, v186, v187);
    objc_msgSend_setPreserveFlags_(v278, v189, v188, v190);
  }

  else
  {
    if (objc_msgSend_count(v273, v181, v182, v183) >= 2)
    {
      v286 = 0u;
      v287 = 0u;
      v284 = 0u;
      v285 = 0u;
      v191 = v273;
      v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v191, v192, &v284, v349, 16);
      if (v196)
      {
        v197 = 0;
        v198 = *v285;
        v184 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_85:
        v199 = 0;
        v200 = v197;
        v197 += v196;
        while (1)
        {
          if (*v285 != v198)
          {
            objc_enumerationMutation(v191);
          }

          v201 = objc_msgSend_tableUID(*(*(&v284 + 1) + 8 * v199), v193, v194, v195) == v274 && v193 == v275;
          if (v201)
          {
            v201 = v184 == 0x7FFFFFFFFFFFFFFFLL;
            v184 = v200;
            if (!v201)
            {
              break;
            }
          }

          ++v200;
          if (v196 == ++v199)
          {
            v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v191, v193, &v284, v349, 16);
            if (v196)
            {
              goto LABEL_85;
            }

            if (v184 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_81;
            }

            goto LABEL_100;
          }
        }
      }
    }

LABEL_100:
    v174 = objc_msgSend_objectAtIndex_(v273, v181, 0, v183);
    v205 = objc_msgSend_preserveFlags(v174, v202, v203, v204);
    objc_msgSend_setPreserveFlags_(v278, v206, v205, v207);
  }

LABEL_102:
  v211 = objc_msgSend_referencesMatchingInputAsPrefix(v278, v171, v172, v173);
  if (v211)
  {
    v212 = objc_opt_class();
    v214 = objc_msgSend_p_chromeReferencesForMixedReferences_calcEngine_(v212, v213, v211, v272);
    v218 = objc_msgSend_referencesMatchingInputAsPrefix(v278, v215, v216, v217);
    objc_msgSend_removeAllObjects(v218, v219, v220, v221);

    v225 = objc_msgSend_referencesMatchingInputAsPrefix(v278, v222, v223, v224);
    objc_msgSend_addObjectsFromArray_(v225, v226, v214, v227);
  }

  v288.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v288._tableUID._lower = 0;
  v288._tableUID._upper = 0;
  v228 = v332[5];
  if (v228)
  {
    if (objc_msgSend_wasConstructedViaNames(v228, v208, v209, v210) && (objc_msgSend_parseAsBaseTableReference(v278, v229, v230, v231) & 1) == 0)
    {
      v240 = objc_msgSend_rangeReference(v332[5], v229, v230, v231);
      v244 = v240;
      if (v240)
      {
        objc_msgSend_rangeRef(v240, v241, v242, v243);
        v246 = *&v281[0]._flags;
        v245 = *&v281[8]._flags;
      }

      else
      {
        v245 = 0;
        v246 = 0;
        *&v281[0]._flags = 0u;
        v282 = 0;
      }

      v283 = v282;

      v247 = objc_opt_class();
      v279[0] = v246;
      v279[1] = v245;
      v280 = v282;
      if (v247)
      {
        objc_msgSend_p_chromeRangeRefForBaseRangeRef_calcEngine_(v247, v237, v279, v272);
      }

      else
      {
        *&v281[0]._flags = 0u;
        v282 = 0;
      }

      v288.range = *&v281[0]._flags;
      v288._tableUID = v282;
    }

    else
    {
      v232 = objc_msgSend_rangeReference(v332[5], v229, v230, v231);
      v236 = v232;
      if (v232)
      {
        objc_msgSend_rangeRef(v232, v233, v234, v235);
      }

      else
      {
        *&v281[0]._flags = 0u;
        v282 = 0;
      }

      v288.range = *&v281[0]._flags;
      v288._tableUID = v282;
    }

    v281[0]._flags = objc_msgSend_preserveFlags(v278, v237, v238, v239);
    TSCERangeRef::setPreserveFlags(&v288, v281);
  }

  tableUID = v288._tableUID;
  retstr->var0.range = v288.range;
  retstr->var0._tableUID = tableUID;

  _Block_object_dispose(v327, 8);
  _Block_object_dispose(v329, 8);
  _Block_object_dispose(&v331, 8);

  _Block_object_dispose(v337, 8);
  _Block_object_dispose(v339, 8);
  _Block_object_dispose(v341, 8);

  sub_22107C800(&v343, v344);
  _Block_object_dispose(v346, 8);

  return result;
}

- (id)parseAsTractRefWithParsingContext:(id)context
{
  contextCopy = context;
  stringManipulator = self->_stringManipulator;
  v9 = objc_msgSend_sheetName(contextCopy, v6, v7, v8);
  v10 = sub_221140460(stringManipulator, v9);
  objc_msgSend_setSheetNameUnquoted_(contextCopy, v11, v10, v12);

  v13 = self->_stringManipulator;
  v17 = objc_msgSend_tableName(contextCopy, v14, v15, v16);
  v18 = sub_221140460(v13, v17);
  objc_msgSend_setTableNameUnquoted_(contextCopy, v19, v18, v20);

  v24 = objc_msgSend_sheetNameUnquoted(contextCopy, v21, v22, v23);
  v28 = objc_msgSend_tableNameUnquoted(contextCopy, v25, v26, v27);
  v109 = v28;
  v32 = objc_msgSend_calcEngine(self, v29, v30, v31);
  v108 = v32;
  v36 = objc_msgSend_contextResolver(contextCopy, v33, v34, v35);
  v39 = v36;
  v110 = v36;
  if (v24)
  {
    v40 = objc_msgSend_resolverContainerMatchingName_(v32, v37, v24, v36);
    v43 = v40;
    if (!v40)
    {
      goto LABEL_9;
    }

    if (v28)
    {
      v44 = objc_msgSend_resolverMatchingName_(v40, v41, v28, v42);
      if (v44)
      {
        v48 = v44;
        v107 = v48;
LABEL_25:
        v52 = v48 != 0;
        goto LABEL_26;
      }

LABEL_9:
      v51 = 0;
      goto LABEL_43;
    }

    v39 = v110;
    goto LABEL_12;
  }

  if (!v28)
  {
    v43 = 0;
LABEL_12:
    v48 = v39;
    v50 = 0;
    v49 = v43;
    goto LABEL_13;
  }

  if (!v36)
  {
    v62 = objc_msgSend_contextSheetName(contextCopy, v37, v38, 0);

    if (v62)
    {
      v63 = objc_msgSend_contextSheetName(contextCopy, v45, v46, v47);
      v48 = objc_msgSend_resolverMatchingNameWithContextContainer_contextContainerName_(v32, v64, v28, v63);

      v43 = 0;
    }

    else
    {
      v43 = 0;
      v48 = 0;
    }

    v107 = 0;
    goto LABEL_25;
  }

  v49 = 0;
  v48 = objc_msgSend_resolverMatchingName_contextResolver_(v32, v37, v28, v36);
  v50 = 1;
LABEL_13:
  v52 = v48 != 0;
  if (v24)
  {
    v50 = 0;
  }

  if ((v50 & 1) != 0 || !v110 || v48)
  {
    v107 = 0;
  }

  else
  {
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSTRefParser parseAsTractRefWithParsingContext:]", v47);
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefParser.mm", v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v58, v54, v57, 618, 0, "We should only have a nil preferred geometric resolver if a non-unique table name on another sheet is given without sheet name");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60, v61);
    v52 = 0;
    v107 = 0;
    v48 = 0;
  }

  v43 = v49;
LABEL_26:
  v65 = self->_stringManipulator;
  v66 = objc_msgSend_rest(contextCopy, v45, v46, v47);
  v67 = sub_221140460(v65, v66);

  v71 = objc_msgSend_length(v67, v68, v69, v70);
  v75 = objc_msgSend_rest(contextCopy, v72, v73, v74);
  v79 = objc_msgSend_length(v75, v76, v77, v78);

  if (v71 == v79)
  {
    v83 = objc_msgSend_rest(contextCopy, v80, v81, v82);
    v51 = sub_2210F05E8(v83);

    if (v52)
    {
      v87 = objc_msgSend_resolverUID(v48, v84, v85, v86);
    }

    else
    {
      v99 = objc_msgSend_tableUID(v51, v84, v85, v86);
      if (v99 | v80 || !objc_msgSend_hasPrefix_(v109, v80, @"SFTGlobalID_", v82))
      {
        goto LABEL_31;
      }

      v87 = objc_msgSend_ownerUIDForLegacyGlobalID_registeringIfNeeded_(v108, v80, v109, 1);
    }

    objc_msgSend_setTableUID_(v51, v88, v87, v88);
  }

  else
  {
    v51 = 0;
  }

LABEL_31:
  if ((objc_msgSend_isValid(v51, v80, v81, v82) & 1) == 0)
  {
    v91 = objc_msgSend_parseAsChromeRefWithParsingContext_(self, v89, contextCopy, v90);
    if (objc_msgSend_isValid(v91, v92, v93, v94))
    {
      v98 = [TSCECellTractRef alloc];
      if (v91)
      {
        objc_msgSend_rangeRef(v91, v95, v96, v97);
      }

      else
      {
        memset(v111, 0, sizeof(v111));
      }

      v100 = objc_msgSend_initWithRangeRef_(v98, v95, v111, v97);

      v104 = objc_msgSend_tableUID(v91, v101, v102, v103);
      objc_msgSend_setTableUID_(v100, v105, v104, v105);
    }

    else
    {
      v100 = v51;
    }

    v51 = v100;
  }

LABEL_43:

  return v51;
}

- (id)parseAsChromeRefWithParsingContext:(id)context
{
  v449 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v420 = contextCopy;
  v397 = objc_msgSend_sheetNameUnquoted(contextCopy, v4, v5, v6);
  v10 = objc_msgSend_tableNameUnquoted(contextCopy, v7, v8, v9);
  v395 = objc_msgSend_rest(contextCopy, v11, v12, v13);
  v417 = objc_msgSend_calcEngine(self, v14, v15, v16);
  v20 = objc_msgSend_contextTableResolver(contextCopy, v17, v18, v19);
  v446 = 0;
  v445 = 0;
  v408 = v20;
  if (v20)
  {
    v445 = objc_msgSend_tableUID(v20, v21, v22, v23);
    v446 = v24;
  }

  else
  {
    v446 = 0;
    v445 = 0;
  }

  v25 = v10;
  v28 = v25;
  v399 = v25;
  if (!v397)
  {
    if (v25)
    {
      if (!v408)
      {
        v333 = objc_msgSend_contextSheetName(contextCopy, v26, 0, v27);

        if (v333)
        {
          v337 = objc_msgSend_contextSheetName(contextCopy, v334, v335, v336);
          v339 = objc_msgSend_resolverMatchingNameWithContextContainer_contextContainerName_(v417, v338, v28, v337);
          v35 = objc_msgSend_tableResolverForRefResolver_(v417, v340, v339, v341);

          v393 = 0;
          v394 = 0;
        }

        else
        {
          v393 = 0;
          v394 = 0;
          v35 = 0;
        }

        goto LABEL_23;
      }

      v36 = objc_msgSend_referenceResolverObject(v408, v26, 0, v27);
      v38 = objc_msgSend_resolverMatchingName_contextResolver_(v417, v37, v28, v36);
      v35 = objc_msgSend_tableResolverForRefResolver_(v417, v39, v38, v40);

      v43 = 0;
      v44 = 1;
LABEL_16:
      v394 = 0;
      if (v397)
      {
        v44 = 0;
      }

      if ((v44 & 1) == 0 && v408 && !v35)
      {
        v46 = MEMORY[0x277D81150];
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSTRefParser parseAsChromeRefWithParsingContext:]", v42);
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefParser.mm", v49);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v51, v47, v50, 700, 0, "We should only have a nil preferred geometric resolver if a non-unique table name on another sheet is given without sheet name");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54);
        v394 = 0;
        v35 = 0;
      }

      v393 = v43;
LABEL_23:
      v444.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v444._tableUID._upper = 0;
      v444._tableUID._lower = 0;
      v392 = v35;
      v391 = sub_221140FC8(&self->_stringManipulator->super.isa, v395);
      v58 = objc_msgSend_count(v391, v55, v56, v57);
      if (v58 != 2)
      {
        if (v58 == 1)
        {
          v62 = objc_msgSend_objectAtIndex_(v391, v59, 0, v61);
          objc_msgSend_p_parseStringAsReferenceComponentIntersection_inResolver_inTableNamed_preferredGeometricResolver_withParsingContext_(self, v63, v62, v394, v399, v35, v420);

          v64 = TSCERangeRef::wrapped(v421);
LABEL_270:
          v45 = v64;

          goto LABEL_271;
        }

        v444._tableUID._lower = 0;
        v444._tableUID._upper = 0;
        v444.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
LABEL_269:
        v64 = TSCERangeRef::wrapped(&v444);
        goto LABEL_270;
      }

      v405 = objc_msgSend_array(MEMORY[0x277CBEB18], v59, v60, v61);
      v412 = objc_msgSend_objectAtIndex_(v391, v65, 0, v66);
      v416 = objc_msgSend_objectAtIndex_(v391, v67, 1, v68);
      v402 = objc_msgSend_copy(v420, v69, v70, v71);
      objc_msgSend_reset(v402, v72, v73, v74);
      v78 = objc_msgSend_array(MEMORY[0x277CBEB18], v75, v76, v77);
      objc_msgSend_setReferencesMatchingInputAsPrefix_(v402, v79, v78, v80);

      objc_msgSend_setReferenceIsComplete_(v402, v81, 1, v82);
      objc_msgSend_p_parseStringAsReferenceComponentIntersection_inResolver_inTableNamed_preferredGeometricResolver_withParsingContext_(self, v83, v412, v394, v399, v35, v402);
      v407 = objc_msgSend_preserveFlags(v402, v84, v85, v86);
      v403 = objc_msgSend_copy(v420, v87, v88, v89);
      objc_msgSend_reset(v403, v90, v91, v92);
      v96 = objc_msgSend_array(MEMORY[0x277CBEB18], v93, v94, v95);
      objc_msgSend_setReferencesMatchingInputAsPrefix_(v403, v97, v96, v98);

      objc_msgSend_p_parseStringAsReferenceComponentIntersection_inResolver_inTableNamed_preferredGeometricResolver_withParsingContext_(self, v99, v416, v394, v399, v35, v403);
      v100 = v420;
      if (objc_msgSend_namesUsed(v402, v101, v102, v103))
      {
        objc_msgSend_setNamesUsed_(v420, v104, 1, v106);
      }

      else
      {
        v110 = objc_msgSend_namesUsed(v403, v104, v105, v106);
        objc_msgSend_setNamesUsed_(v420, v111, v110, v112);
      }

      v435 = 0u;
      v436 = 0u;
      v433 = 0u;
      v434 = 0u;
      obj = objc_msgSend_referencesMatchingInputAsPrefix(v402, v107, v108, v109);
      v401 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v113, &v433, v448, 16);
      if (v401)
      {
        v400 = *v434;
LABEL_32:
        v406 = 0;
LABEL_33:
        if (*v434 != v400)
        {
          objc_enumerationMutation(obj);
        }

        v414 = *(*(&v433 + 1) + 8 * v406);
        v117 = objc_msgSend_abortObject(v100, v114, v115, v116);
        isAborted = objc_msgSend_isAborted(v117, v118, v119, v120);

        if ((isAborted & 1) == 0)
        {
          context = objc_autoreleasePoolPush();
          if (v414)
          {
            v125 = v420;
            objc_msgSend_rangeRef(v414, v122, v123, v124);
          }

          else
          {
            memset(v421, 0, 32);
            v125 = v420;
          }

          if (v408)
          {
            v126 = objc_msgSend_preserveFlags(v402, v122, v123, v124);
            v128 = objc_msgSend_referenceTextForAutocompleteWithCalculationEngine_hostTableUID_preserveFlags_inputString_inputStringIsComplete_(v414, v127, v417, &v421[16], v126, v412, 1);
            objc_msgSend_referenceTextWithCalculationEngine_hostTableUID_(v414, v129, v417, &v421[16]);
            v411 = v128;
            v412 = v130 = v412;
          }

          else
          {
            v131 = objc_msgSend_contextSheetName(v125, v122, v123, v124);
            v135 = objc_msgSend_preserveFlags(v402, v132, v133, v134);
            v137 = objc_msgSend_referenceTextForAutocompleteWithCalculationEngine_contextSheetName_preserveFlags_inputString_inputStringIsComplete_(v414, v136, v417, v131, v135, v412, 1);

            v130 = objc_msgSend_contextSheetName(v420, v138, v139, v140);
            v142 = objc_msgSend_referenceTextWithCalculationEngine_contextSheetName_(v414, v141, v417, v130);

            v411 = v137;
            v412 = v142;
          }

          v146 = objc_msgSend_referencesMatchingInputAsPrefix(v403, v143, v144, v145);
          v150 = objc_msgSend_count(v146, v147, v148, v149) == 0;

          v154 = v411;
          if (v150)
          {
            goto LABEL_132;
          }

          v431 = 0u;
          v432 = 0u;
          v429 = 0u;
          v430 = 0u;
          v155 = objc_msgSend_referencesMatchingInputAsPrefix(v403, v151, v152, v153);
          v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v156, &v429, v447, 16);
          if (!v157)
          {

            v154 = v411;
            goto LABEL_132;
          }

          v409 = 0;
          v419 = *v430;
LABEL_45:
          v418 = v157;
          v161 = 0;
          while (1)
          {
            if (*v430 != v419)
            {
              objc_enumerationMutation(v155);
            }

            v162 = *(*(&v429 + 1) + 8 * v161);
            v163 = objc_msgSend_abortObject(v420, v158, v159, v160);
            v167 = objc_msgSend_isAborted(v163, v164, v165, v166);

            if (v167)
            {
LABEL_129:

              v154 = v411;
              if (!v409)
              {
LABEL_132:
                if (!objc_msgSend_length(v416, v151, v152, v153) || objc_msgSend_isEqualToString_(v416, v280, @"$", v281))
                {
                  if (objc_msgSend_isEqualToString_(v416, v280, @"$", v281))
                  {
                    v285 = objc_msgSend_preserveFlags(v402, v282, v283, v284) >> 2;
                  }

                  else
                  {
                    v285 = 0;
                  }

                  LOBYTE(v424[0]) = 0;
                  HIBYTE(v426) = 0;
                  *&v427 = sub_221494F70(*v421, *&v421[8], *v421, *&v421[8], v407 & 3, v285, v424, &v426 + 1, 0);
                  *(&v427 + 1) = v286;
                  v428 = *&v421[16];
                  v287 = [TSCEAnyReference alloc];
                  v290 = objc_msgSend_initWithRangeRef_(v287, v288, &v427, v289);
                  v294 = objc_msgSend_wasConstructedViaNames(v414, v291, v292, v293);
                  objc_msgSend_setWasConstructedViaNames_(v290, v295, v294, v296);
                  objc_msgSend_setPreserveFlags_(v290, v297, v424[0] & 3 | (4 * (HIBYTE(v426) & 3)), v298);
                  v301 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v299, @"%@:%@", v300, v412, v416);
                  objc_msgSend_setOverrideText_(v290, v302, v301, v303);

                  v306 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v304, @"%@:%@", v305, v411, v416);
                  objc_msgSend_setOverrideTextAsTyped_(v290, v307, v306, v308);

                  objc_msgSend_addObject_(v405, v309, v290, v310);
                  v154 = v411;
                }
              }

              v100 = v420;
              objc_autoreleasePoolPop(context);
              if (++v406 == v401)
              {
                v401 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v114, &v433, v448, 16);
                if (!v401)
                {
                  goto LABEL_140;
                }

                goto LABEL_32;
              }

              goto LABEL_33;
            }

            v171 = objc_autoreleasePoolPush();
            if (v162)
            {
              objc_msgSend_rangeRef(v162, v168, v169, v170);
            }

            else
            {
              v427 = 0u;
              v428 = 0u;
            }

            v172 = objc_msgSend_preserveFlags(v162, v168, v169, v170);
            v426 = 0;
            if (*&v421[16] == v428)
            {
              break;
            }

LABEL_127:
            objc_autoreleasePoolPop(v171);
            if (v418 == ++v161)
            {
              v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(v155, v158, &v429, v447, 16);
              if (v157)
              {
                goto LABEL_45;
              }

              goto LABEL_129;
            }
          }

          v173 = v172;
          v177 = sub_221494F70(*v421, *&v421[8], v427, *(&v427 + 1), v407 & 3, v172 >> 2, &v426 + 1, &v426, 0);
          v178 = v174;
          if (v408)
          {
            v179 = objc_msgSend_referenceTextWithCalculationEngine_hostTableUID_(v162, v174, v417, &v445);
            IsComplete = objc_msgSend_referenceIsComplete(v420, v180, v181, v182);
            v415 = objc_msgSend_referenceTextForAutocompleteWithCalculationEngine_hostTableUID_preserveFlags_inputString_inputStringIsComplete_(v162, v184, v417, &v445, v173, v416, IsComplete);
            v413 = v179;
          }

          else
          {
            v188 = objc_msgSend_contextSheetName(v420, v174, v175, v176);
            v190 = objc_msgSend_referenceTextWithCalculationEngine_contextSheetName_(v162, v189, v417, v188);

            v194 = objc_msgSend_contextSheetName(v420, v191, v192, v193);
            v198 = objc_msgSend_referenceIsComplete(v420, v195, v196, v197);
            v415 = objc_msgSend_referenceTextForAutocompleteWithCalculationEngine_contextSheetName_preserveFlags_inputString_inputStringIsComplete_(v162, v199, v417, v194, v173, v416, v198);

            v413 = v190;
          }

          v200 = v177 & 0xFFFF00000000;
          v201 = v177 == 0x7FFFFFFFLL || v200 == 0x7FFF00000000;
          v202 = !v201;
          if (v201)
          {
            v203 = v178 & 0xFFFF00000000;
          }

          else
          {
            v203 = v178 & 0xFFFF00000000;
            if (v178 != 0x7FFFFFFF && v203 != 0x7FFF00000000 && WORD2(v177) <= WORD2(v178) && v177 <= v178)
            {
              v204 = 0;
LABEL_103:
              if (v203 != 0x7FFF00000000 && WORD2(v177) <= WORD2(v178) && v177 <= v178)
              {
                goto LABEL_122;
              }

              goto LABEL_108;
            }
          }

          v410 = v202;
          if (v177 != 0x7FFFFFFFLL && v200 == 0x7FFF00000000 && v203 == 0x7FFF00000000)
          {
            if (v178 != 0x7FFFFFFF && v177 <= v178)
            {
              goto LABEL_80;
            }
          }

          else if (v177 == 0x7FFFFFFFLL && v200 != 0x7FFF00000000 && v203 != 0x7FFF00000000 && v178 == 0x7FFFFFFF && WORD2(v177) <= WORD2(v178))
          {
            goto LABEL_80;
          }

          v204 = 0;
          if (*v421 != 0x7FFFFFFF && (*v421 & 0xFFFF00000000) != 0x7FFF00000000)
          {
            v204 = 0;
            if (*&v421[8] != 0x7FFFFFFF && (*&v421[8] & 0xFFFF00000000) != 0x7FFF00000000)
            {
              v204 = 0;
              if (*&v421[4] <= *&v421[12] && *v421 <= *&v421[8] && *&v421[4] == *&v421[12] && *v421 == *&v421[8])
              {
                v205 = v427 & 0xFFFF00000000;
                v206 = *(&v427 + 1) & 0xFFFF00000000;
                if (v427 == 0x7FFFFFFFLL && v205 != 0x7FFF00000000 && v206 != 0x7FFF00000000)
                {
                  if (DWORD2(v427) == 0x7FFFFFFF)
                  {
LABEL_98:
                    if (objc_msgSend_wasConstructedViaNames(v162, v185, v186, v187))
                    {
                      v389 = objc_msgSend_stringByAppendingString_(v413, v207, @" ", v208);
                      v209 = [TSCEReferenceParsingContext alloc];
                      v390 = objc_msgSend_initWithContextTableResolver_(v209, v210, v408, v211);
                      v215 = objc_msgSend_contextSheetName(v420, v212, v213, v214);
                      objc_msgSend_setContextSheetName_(v390, v216, v215, v217);

                      v221 = objc_msgSend_array(MEMORY[0x277CBEB18], v218, v219, v220);
                      objc_msgSend_setReferencesMatchingInputAsPrefix_(v390, v222, v221, v223);

                      objc_msgSend_setReferenceIsComplete_(v390, v224, 0, v225);
                      v229 = objc_msgSend_filterColons(v420, v226, v227, v228);
                      objc_msgSend_setFilterColons_(v390, v230, v229, v231);
                      v235 = objc_msgSend_abortObject(v420, v232, v233, v234);
                      objc_msgSend_setAbortObject_(v390, v236, v235, v237);

                      objc_msgSend_p_parseStringAsReferenceComponentIntersection_inResolver_inTableNamed_preferredGeometricResolver_withParsingContext_(self, v238, v389, v394, v399, v392, v390);
                      v242 = objc_msgSend_namesUsed(v390, v239, v240, v241);
                      objc_msgSend_setNamesUsed_(v420, v243, v242, v244);
                      v388 = objc_msgSend_referencesMatchingInputAsPrefix(v390, v245, v246, v247);
                      v204 = objc_msgSend_count(v388, v248, v249, v250) != 0;
                    }

                    else
                    {
                      v204 = 1;
                    }

                    goto LABEL_101;
                  }

LABEL_80:
                  v204 = 0;
                  goto LABEL_101;
                }

                v204 = 0;
                if (v427 != 0x7FFFFFFFLL && v205 == 0x7FFF00000000 && v206 == 0x7FFF00000000 && DWORD2(v427) != 0x7FFFFFFFLL)
                {
                  goto LABEL_98;
                }
              }
            }
          }

LABEL_101:
          if (v410)
          {
            v203 = v178 & 0xFFFF00000000;
            if (v178 != 0x7FFFFFFF)
            {
              goto LABEL_103;
            }
          }

          else
          {
            v203 = v178 & 0xFFFF00000000;
          }

LABEL_108:
          if (v177 == 0x7FFFFFFFLL || v200 != 0x7FFF00000000 || v203 != 0x7FFF00000000)
          {
            v251 = 0;
            if (v177 == 0x7FFFFFFFLL && v200 != 0x7FFF00000000 && v203 != 0x7FFF00000000)
            {
              v251 = v178 == 0x7FFFFFFF;
            }

LABEL_118:
            v252 = WORD2(v177) <= WORD2(v178) && v251;
            if (!v252 && !v204)
            {
              goto LABEL_126;
            }

            goto LABEL_122;
          }

          v251 = 0;
          if (v178 == 0x7FFFFFFF || v177 > v178)
          {
            goto LABEL_118;
          }

LABEL_122:
          v424[0] = v177;
          v424[1] = v178;
          v425 = v428;
          v253 = [TSCEAnyReference alloc];
          v256 = objc_msgSend_initWithRangeRef_(v253, v254, v424, v255);
          if (objc_msgSend_wasConstructedViaNames(v414, v257, v258, v259))
          {
            objc_msgSend_setWasConstructedViaNames_(v256, v260, 1, v262);
          }

          else
          {
            v265 = objc_msgSend_wasConstructedViaNames(v162, v260, v261, v262);
            objc_msgSend_setWasConstructedViaNames_(v256, v266, v265, v267);
          }

          objc_msgSend_setPreserveFlags_(v256, v263, HIBYTE(v426) & 3 | (4 * (v426 & 3)), v264);
          v270 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v268, @"%@:%@", v269, v412, v416);
          objc_msgSend_setOverrideText_(v256, v271, v270, v272);

          v275 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v273, @"%@:%@", v274, v411, v415);
          objc_msgSend_setOverrideTextAsTyped_(v256, v276, v275, v277);

          objc_msgSend_addObject_(v405, v278, v256, v279);
          ++v409;
LABEL_126:

          goto LABEL_127;
        }
      }

LABEL_140:

      v314 = objc_msgSend_referencesMatchingInputAsPrefix(v420, v311, v312, v313);
      v315 = v314 == 0;

      if (!v315)
      {
        v319 = objc_msgSend_referencesMatchingInputAsPrefix(v420, v316, v317, v318);
        objc_msgSend_removeAllObjects(v319, v320, v321, v322);

        v326 = objc_msgSend_referencesMatchingInputAsPrefix(v420, v323, v324, v325);
        objc_msgSend_addObjectsFromArray_(v326, v327, v405, v328);
      }

      v329 = v437 & 0xFFFF00000000;
      if (v437 == 0x7FFFFFFFLL || v329 == 0x7FFF00000000)
      {
        v330 = v438 & 0xFFFF00000000;
      }

      else
      {
        v330 = v438 & 0xFFFF00000000;
        if (v438 != 0x7FFFFFFF && v330 != 0x7FFF00000000 && WORD2(v437) <= WORD2(v438) && v437 <= v438)
        {
          goto LABEL_161;
        }
      }

      if (v437 != 0x7FFFFFFFLL && v329 == 0x7FFF00000000 && v330 == 0x7FFF00000000)
      {
        v331 = 0;
        if (v438 == 0x7FFFFFFF || v437 > v438)
        {
          goto LABEL_253;
        }
      }

      else
      {
        v331 = 0;
        if (v437 != 0x7FFFFFFFLL || v329 == 0x7FFF00000000 || v330 == 0x7FFF00000000 || (v331 = 0, v438 != 0x7FFFFFFF) || WORD2(v437) > WORD2(v438))
        {
LABEL_253:
          if (objc_msgSend_count(v405, v316, v317, v318) != 1)
          {
LABEL_268:

            goto LABEL_269;
          }

          v358 = objc_msgSend_objectAtIndex_(v405, v356, 0, v357);
          v362 = v358;
          if (v358)
          {
            objc_msgSend_anyRef(v358, v359, v360, v361);
            if (*v421 == 1)
            {
LABEL_259:
              v373 = objc_msgSend_preserveFlags(v362, v359, v363, v361);
              objc_msgSend_setPreserveFlags_(v420, v374, v373, v375);
              if (v331 && (v444.range._topLeft.row != *&v421[8] || ((*&v421[8] ^ *&v444.range._topLeft) & 0xFFFF00000000) != 0 || v444.range._bottomRight.row != *&v421[16] || ((*&v421[16] ^ *&v444.range._bottomRight) & 0xFFFF00000000) != 0 || v444._tableUID._lower != *&v421[24] || v444._tableUID._upper != *&v421[32]))
              {
                v378 = MEMORY[0x277D81150];
                v379 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v376, "[TSTRefParser parseAsChromeRefWithParsingContext:]", v377);
                v382 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v380, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefParser.mm", v381);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v378, v383, v379, v382, 907, 0, "If there is only one range reference, it should match resultRangeRef.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v384, v385, v386);
              }

              v444 = *&v421[8];

              goto LABEL_268;
            }
          }

          else
          {
            v422 = 0u;
            v423 = 0u;
            memset(v421, 0, sizeof(v421));
          }

          v364 = MEMORY[0x277D81150];
          v365 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v359, "[TSTRefParser parseAsChromeRefWithParsingContext:]", v361);
          v368 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v366, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRefParser.mm", v367);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v364, v369, v365, v368, 901, 0, "bug in reference parser - only ranges expected here");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v370, v371, v372);
          goto LABEL_259;
        }
      }

LABEL_161:
      v316 = HIDWORD(v441);
      v318 = v441;
      v317 = v441 & 0xFFFF00000000;
      if (v441 == 0x7FFFFFFFLL || v317 == 0x7FFF00000000)
      {
        v332 = v442 & 0xFFFF00000000;
      }

      else
      {
        v332 = v442 & 0xFFFF00000000;
        if (v442 != 0x7FFFFFFF && v332 != 0x7FFF00000000 && WORD2(v441) <= WORD2(v442) && v441 <= v442)
        {
          goto LABEL_183;
        }
      }

      if (v441 != 0x7FFFFFFFLL && v317 == 0x7FFF00000000 && v332 == 0x7FFF00000000)
      {
        v331 = 0;
        if (v442 == 0x7FFFFFFF || v441 > v442)
        {
          goto LABEL_253;
        }
      }

      else
      {
        v331 = 0;
        if (v441 != 0x7FFFFFFFLL)
        {
          goto LABEL_253;
        }

        if (v317 == 0x7FFF00000000)
        {
          goto LABEL_253;
        }

        if (v332 == 0x7FFF00000000)
        {
          goto LABEL_253;
        }

        v331 = 0;
        if (v442 != 0x7FFFFFFF || WORD2(v441) > WORD2(v442))
        {
          goto LABEL_253;
        }
      }

LABEL_183:
      v331 = 0;
      if (v443._lower != v439 || v443._upper != v440)
      {
        goto LABEL_253;
      }

      v342 = v442 & 0xFFFF00000000;
      if (v441 != 0x7FFFFFFFLL && v317 == 0x7FFF00000000 && v342 == 0x7FFF00000000)
      {
        v318 = 0;
        v343 = v442 != 0x7FFFFFFF;
      }

      else
      {
        v343 = 0;
        if (v441 != 0x7FFFFFFFLL || v317 == 0x7FFF00000000)
        {
          v318 = 0;
        }

        else
        {
          v318 = 0;
          if (v342 != 0x7FFF00000000)
          {
            v343 = 0;
            v318 = v442 == 0x7FFFFFFF;
          }
        }
      }

      v344 = v438 & 0xFFFF00000000;
      if (v437 != 0x7FFFFFFFLL && v329 == 0x7FFF00000000 && v344 == 0x7FFF00000000)
      {
        v345 = 0;
        v346 = v438 != 0x7FFFFFFF;
      }

      else
      {
        v346 = 0;
        if (v437 != 0x7FFFFFFFLL || v329 == 0x7FFF00000000)
        {
          v345 = 0;
        }

        else
        {
          v345 = 0;
          if (v344 != 0x7FFF00000000)
          {
            v346 = 0;
            v345 = v438 == 0x7FFFFFFF;
          }
        }
      }

      v347 = 0x7FFF7FFFFFFFLL;
      v348 = 0x7FFFLL;
      if (v343 == v346)
      {
        v317 = 0x7FFFFFFFLL;
        if (((v318 ^ v345) & 1) == 0)
        {
          if (v343)
          {
            if (v441 >= v437)
            {
              v317 = v437;
            }

            else
            {
              v317 = v441;
            }

            if (v442 <= v438)
            {
              v349 = v438;
            }

            else
            {
              v349 = v442;
            }

            v347 = (v349 | 0x7FFF00000000);
            v348 = 0x7FFFLL;
          }

          else
          {
            if (WORD2(v441) >= WORD2(v437))
            {
              v348 = HIDWORD(v437);
            }

            else
            {
              v348 = HIDWORD(v441);
            }

            if (v318)
            {
              if (WORD2(v442) >= WORD2(v438))
              {
                v350 = HIDWORD(v442);
              }

              else
              {
                v350 = HIDWORD(v438);
              }

              v317 = 0x7FFFFFFFLL;
              v347 = ((v350 << 32) | 0x7FFFFFFF);
            }

            else
            {
              if (v441 >= v437)
              {
                v317 = v437;
              }

              else
              {
                v317 = v441;
              }

              if (WORD2(v442) >= WORD2(v438))
              {
                v351 = HIDWORD(v442);
              }

              else
              {
                v351 = HIDWORD(v438);
              }

              if (v442 <= v438)
              {
                v352 = v438;
              }

              else
              {
                v352 = v442;
              }

              v347 = (v352 & 0xFFFF0000FFFFFFFFLL | (v351 << 32));
            }
          }
        }
      }

      else
      {
        v317 = 0x7FFFFFFFLL;
      }

      v353 = (v348 << 32) & 0xFFFF00000000;
      v354 = HIDWORD(*&v347);
      if (v317 == 0x7FFFFFFF || v353 == 0x7FFF00000000)
      {
        v355 = *&v347 & 0xFFFF00000000;
      }

      else
      {
        v355 = *&v347 & 0xFFFF00000000;
        if (v347.row != 0x7FFFFFFF && v355 != 0x7FFF00000000 && v317 <= v347.row && v348 <= v354)
        {
          goto LABEL_252;
        }
      }

      if (v317 != 0x7FFFFFFF && v353 == 0x7FFF00000000 && v355 == 0x7FFF00000000)
      {
        v331 = 0;
        if (v347.row == 0x7FFFFFFF || v317 > v347.row)
        {
          goto LABEL_253;
        }
      }

      else
      {
        v331 = 0;
        if (v317 != 0x7FFFFFFF)
        {
          goto LABEL_253;
        }

        if (v353 == 0x7FFF00000000)
        {
          goto LABEL_253;
        }

        if (v355 == 0x7FFF00000000)
        {
          goto LABEL_253;
        }

        v331 = 0;
        if (v347.row != 0x7FFFFFFF || v348 > v354)
        {
          goto LABEL_253;
        }
      }

LABEL_252:
      v444.range._topLeft.row = v317;
      v444.range._topLeft.column = v348;
      v444.range._bottomRight = v347;
      v444._tableUID = v443;
      v331 = 1;
      goto LABEL_253;
    }

    v43 = 0;
LABEL_15:
    v35 = v408;
    v44 = 0;
    goto LABEL_16;
  }

  v393 = objc_msgSend_resolverContainerMatchingName_(v417, v26, v397, v27);
  if (!v393)
  {
    *v421 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    *&v421[16] = 0;
    *&v421[24] = 0;
    v45 = TSCERangeRef::wrapped(v421);
    goto LABEL_272;
  }

  if (!v28)
  {
    v43 = v393;
    goto LABEL_15;
  }

  v31 = objc_msgSend_resolverMatchingName_(v393, v29, v28, v30);
  v34 = objc_msgSend_tableResolverForRefResolver_(v417, v32, v31, v33);

  if (v34)
  {
    v35 = v34;
    v394 = v35;
    goto LABEL_23;
  }

  *v421 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  *&v421[16] = 0;
  *&v421[24] = 0;
  v45 = TSCERangeRef::wrapped(v421);

LABEL_271:
  v28 = v399;
LABEL_272:

  return v45;
}

- (BOOL)p_parseComponentsOfReference:(id)reference gettingSheetName:(id *)name gettingTableName:(id *)tableName gettingRest:(id *)rest
{
  v9 = sub_221140BD4(self->_stringManipulator, reference);
  v15 = objc_msgSend_count(v9, v10, v11, v12);
  v16 = v15 - 1;
  if ((v15 - 1) >= 3)
  {
    v24 = 0;
    v22 = 0;
    v19 = 0;
  }

  else
  {
    v19 = objc_msgSend_objectAtIndex_(v9, v13, v16, v14);
    if (v15 == 1)
    {
      v24 = 0;
      v22 = 0;
    }

    else
    {
      v22 = objc_msgSend_objectAtIndex_(v9, v17, v15 - 2, v18);
      if (v16 == 2)
      {
        v23 = objc_msgSend_objectAtIndex_(v9, v20, 0, v21);
        v24 = v23;
        if (name && v23)
        {
          v25 = v23;
          *name = v24;
        }
      }

      else
      {
        v24 = 0;
      }

      if (tableName && v22)
      {
        v26 = v22;
        *tableName = v22;
      }
    }

    if (rest && v19)
    {
      v27 = v19;
      *rest = v19;
    }
  }

  return v16 < 3;
}

- (RefTypeHolder<TSCERangeRef,)parseStringAsChromeReference:(TSTRefParser *)self withParsingContext:(SEL)context
{
  v8 = a4;
  v9 = a5;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v11 = objc_msgSend_p_parseComponentsOfReference_gettingSheetName_gettingTableName_gettingRest_(self, v10, v8, &v54, &v53, &v52);
  v12 = v54;
  v13 = v53;
  v17 = v52;
  if (v11)
  {
    if (objc_msgSend_trimNames(v9, v14, v15, v16))
    {
      v49 = v8;
      v21 = objc_msgSend_whitespaceCharSet(self, v18, v19, v20);
      v24 = objc_msgSend_stringByTrimmingCharactersInSet_(v13, v22, v21, v23);

      v27 = objc_msgSend_stringByTrimmingCharactersInSet_(v12, v25, v21, v26);

      v30 = objc_msgSend_stringByTrimmingCharactersInSet_(v17, v28, v21, v29);

      v17 = v30;
      v13 = v24;
      v12 = v27;
      v8 = v49;
    }

    objc_msgSend_setSheetName_(v9, v18, v12, v20);
    objc_msgSend_setTableName_(v9, v31, v13, v32);
    objc_msgSend_setRest_(v9, v33, v17, v34);
    v35 = sub_221140460(self->_stringManipulator, v12);
    objc_msgSend_setSheetNameUnquoted_(v9, v36, v35, v37);

    v38 = sub_221140460(self->_stringManipulator, v13);
    objc_msgSend_setTableNameUnquoted_(v9, v39, v38, v40);

    v43 = objc_msgSend_parseAsChromeRefWithParsingContext_(self, v41, v9, v42);
    v47 = v43;
    if (v43)
    {
      objc_msgSend_rangeRef(v43, v44, v45, v46);
    }

    else
    {
      v50 = 0;
      v51 = 0;
    }

    retstr->var0.range = v50;
    retstr->var0._tableUID = v51;
  }

  else
  {
    retstr->var0._tableUID._lower = 0;
    retstr->var0._tableUID._upper = 0;
    retstr->var0.range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  }

  return result;
}

- (RefTypeHolder<TSCERangeRef,)parseStringAsBaseReference:(TSTRefParser *)self withParsingContext:(SEL)context
{
  v8 = a5;
  objc_msgSend_parseStringAsChromeReference_withParsingContext_(self, v9, a4, v8);
  v13 = objc_msgSend_calcEngine(self, v10, v11, v12);
  v20 = objc_msgSend_referencesMatchingInputAsPrefix(v8, v14, v15, v16);
  if (v20)
  {
    v21 = objc_opt_class();
    v23 = objc_msgSend_p_baseReferencesForChromeReferences_calcEngine_(v21, v22, v20, v13);
    v27 = objc_msgSend_referencesMatchingInputAsPrefix(v8, v24, v25, v26);
    objc_msgSend_removeAllObjects(v27, v28, v29, v30);

    v34 = objc_msgSend_referencesMatchingInputAsPrefix(v8, v31, v32, v33);
    objc_msgSend_addObjectsFromArray_(v34, v35, v23, v36);
  }

  if (objc_msgSend_parseAsBaseTableReference(v8, v17, v18, v19))
  {
    v37 = v43;
    retstr->var0.range = v42;
    retstr->var0._tableUID = v37;
  }

  else
  {
    v38 = objc_opt_class();
    v41[0] = v42;
    v41[1] = v43;
    if (v38)
    {
      objc_msgSend_p_baseRangeRefForChromeRangeRef_calcEngine_(v38, v39, v41, v13);
    }

    else
    {
      retstr->var0.range = 0u;
      retstr->var0._tableUID = 0u;
    }
  }

  return result;
}

- (TSCERangeRef)parseR1C1Reference:(SEL)reference containingCell:(id)cell preserveFlagsOut:(const TSCECellRef *)out
{
  cellCopy = cell;
  objc_msgSend_calcEngine(self, v10, v11, v12);
  v79 = 0;
  v80 = 0;
  v76 = v78 = 0;
  v14 = objc_msgSend_p_parseComponentsOfReference_gettingSheetName_gettingTableName_gettingRest_(self, v13, cellCopy, &v80, &v79, &v78);
  v15 = v80;
  v16 = v79;
  v17 = v78;
  v21 = v17;
  if (v14)
  {
    v72 = a6;
    v74 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v18, v19, v20);
    v24 = objc_msgSend_stringByTrimmingCharactersInSet_(v16, v22, v74, v23);

    v27 = objc_msgSend_stringByTrimmingCharactersInSet_(v15, v25, v74, v26);

    v30 = objc_msgSend_stringByTrimmingCharactersInSet_(v21, v28, v74, v29);

    v31 = sub_221140460(self->_stringManipulator, v27);

    v32 = sub_221140460(self->_stringManipulator, v24);

    v36 = objc_msgSend_resolverForTableUID_(v76, v33, out->_tableUID._lower, out->_tableUID._upper);
    if (v31)
    {
      v37 = objc_msgSend_resolverContainerMatchingName_(v76, v34, v31, v35);
      if (!v37)
      {
        retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        retstr->_tableUID._lower = 0;
        retstr->_tableUID._upper = 0;
        goto LABEL_36;
      }

      v73 = v37;
      if (!v32)
      {
        goto LABEL_14;
      }

      v40 = objc_msgSend_resolverMatchingName_(v37, v38, v32, v39);
    }

    else
    {
      if (!v32)
      {
        v73 = 0;
LABEL_14:
        v43 = sub_221140FC8(&self->_stringManipulator->super.isa, v30);
        v47 = objc_msgSend_count(v43, v44, v45, v46);
        if (v47 == 2)
        {
          v77 = 0;
          v59 = objc_msgSend_objectAtIndex_(v43, v48, 0, v49);
          v61 = objc_msgSend_parseR1C1Coord_containingCell_preserveFlagsOut_(self, v60, v59, out, &v77 + 1);

          v64 = objc_msgSend_objectAtIndex_(v43, v62, 1, v63);
          v66 = objc_msgSend_parseR1C1Coord_containingCell_preserveFlagsOut_(self, v65, v64, out, &v77);

          v72->_flags = HIBYTE(v77) & 3 | (4 * (v77 & 3));
          v56 = 0x7FFF7FFFFFFFLL;
          if (v61 == 0x7FFFFFFF)
          {
            v52 = 0x7FFF7FFFFFFFLL;
          }

          else
          {
            v52 = 0x7FFF7FFFFFFFLL;
            if ((v61 & 0xFFFF00000000) != 0x7FFF00000000 && v66 != 0x7FFFFFFF && (v66 & 0xFFFF00000000) != 0x7FFF00000000)
            {
              v67 = HIDWORD(v61);
              if (WORD2(v61) >= WORD2(v66))
              {
                v68 = HIDWORD(v66);
              }

              else
              {
                v68 = HIDWORD(v61);
              }

              if (WORD2(v61) < WORD2(v66))
              {
                v67 = HIDWORD(v66);
              }

              if (v61 >= v66)
              {
                v69 = v66;
              }

              else
              {
                v69 = v61;
              }

              v56 = v69 & 0xFFFF0000FFFFFFFFLL | (v68 << 32);
              if (v61 <= v66)
              {
                v70 = v66;
              }

              else
              {
                v70 = v61;
              }

              v52 = (v70 & 0xFFFF0000FFFFFFFFLL | (v67 << 32));
            }
          }
        }

        else
        {
          if (v47 != 1)
          {
            retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
            retstr->_tableUID._lower = 0;
            retstr->_tableUID._upper = 0;
            goto LABEL_35;
          }

          v50 = objc_msgSend_objectAtIndex_(v43, v48, 0, v49);
          v52 = objc_msgSend_parseR1C1Coord_containingCell_preserveFlagsOut_(self, v51, v50, out, v72);

          v56 = v52;
        }

        v57 = objc_msgSend_resolverUID(v36, v53, v54, v55);
        retstr->range._topLeft = v56;
        retstr->range._bottomRight = v52;
        retstr->_tableUID._lower = v57;
        retstr->_tableUID._upper = v58;
LABEL_35:

        goto LABEL_36;
      }

      v41 = objc_msgSend_resolverForTableUID_(v76, v34, out->_tableUID._lower, out->_tableUID._upper);
      v40 = objc_msgSend_resolverMatchingName_contextResolver_(v76, v42, v32, v41);

      v73 = 0;
      v36 = v41;
    }

    if (v40)
    {
      v36 = v40;
      goto LABEL_14;
    }

    retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    retstr->_tableUID._lower = 0;
    retstr->_tableUID._upper = 0;
    v36 = v73;
LABEL_36:

    goto LABEL_37;
  }

  retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  v30 = v17;
  v32 = v16;
  v31 = v15;
LABEL_37:

  return result;
}

- (TSUCellCoord)parseR1C1Coord:(id)coord containingCell:(const TSCECellRef *)cell preserveFlagsOut:(TSUPreserveFlags *)out
{
  coordCopy = coord;
  v9 = objc_msgSend_rangeOfString_options_(coordCopy, v8, @"R", 1);
  v11 = v10;
  v12 = objc_msgSend_rangeOfString_options_(coordCopy, v10, @"C", 1);
  v15 = v12;
  v16 = v13;
  v17 = 0x7FFF7FFFFFFFLL;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL && v12 != 0x7FFFFFFFFFFFFFFFLL && v12 < v9 || v9 != 0x7FFFFFFFFFFFFFFFLL && v9 || v9 == 0x7FFFFFFFFFFFFFFFLL && v12)
  {
    goto LABEL_54;
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = objc_msgSend_substringFromIndex_(coordCopy, v13, 1, v14);
      v22 = 0;
      goto LABEL_13;
    }

    v22 = 0;
    v23 = 0;
  }

  else
  {
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = objc_msgSend_substringWithRange_(coordCopy, v13, &v11[v9], v12 - 1);
      v21 = objc_msgSend_substringFromIndex_(coordCopy, v19, &v16[v15], v20);
      v22 = v18;
LABEL_13:
      v23 = v21;
      goto LABEL_16;
    }

    v23 = 0;
    v22 = objc_msgSend_substringFromIndex_(coordCopy, v13, 1, v14);
  }

LABEL_16:
  if (v22 | v23)
  {
    out->_flags = out->_flags & 0xF0 | 3;
    if (objc_msgSend_hasPrefix_(v22, v13, @"[", v14) && objc_msgSend_hasSuffix_(v22, v24, @"]", v25))
    {
      out->_flags &= ~2u;
      v27 = objc_msgSend_length(v22, v24, v26, v25);
      v29 = objc_msgSend_substringWithRange_(v22, v28, 1, v27 - 2);

      v22 = v29;
    }

    if (objc_msgSend_hasPrefix_(v23, v24, @"[", v25) && objc_msgSend_hasSuffix_(v23, v30, @"]", v32))
    {
      out->_flags &= ~1u;
      v33 = objc_msgSend_length(v23, v30, v31, v32);
      v35 = objc_msgSend_substringWithRange_(v23, v34, 1, v33 - 2);

      v23 = v35;
    }

    if (v22)
    {
      row = cell->coordinate.row;
    }

    else
    {
      row = 0x7FFFFFFF;
    }

    if (objc_msgSend_length(v22, v30, v31, v32))
    {
      v40 = objc_alloc(MEMORY[0x277CCAC80]);
      v43 = objc_msgSend_initWithString_(v40, v41, v22, v42);
      objc_msgSend_setCharactersToBeSkipped_(v43, v44, 0, v45);
      v69 = 0;
      objc_msgSend_scanInt_(v43, v46, &v69, v47);
      v51 = objc_msgSend_isAtEnd(v43, v48, v49, v50);
      if ((v69 + 0x7FFFFFFF) < 0xFFFFFFFE)
      {
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      if ((v52 & 1) == 0)
      {
        goto LABEL_52;
      }

      if ((out->_flags & 2) != 0)
      {
        row = v69 - 1;
        if ((v69 - 1) >= 0xF4240)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v69 < -cell->coordinate.row || v69 > (999999 - cell->coordinate.row))
        {
          goto LABEL_52;
        }

        row += v69;
      }
    }

    if (v23)
    {
      column = cell->coordinate.column;
    }

    else
    {
      column = 0x7FFF;
    }

    if (!objc_msgSend_length(v23, v37, v38, v39))
    {
      goto LABEL_51;
    }

    v54 = objc_alloc(MEMORY[0x277CCAC80]);
    v43 = objc_msgSend_initWithString_(v54, v55, v23, v56);
    objc_msgSend_setCharactersToBeSkipped_(v43, v57, 0, v58);
    v68 = 0;
    objc_msgSend_scanInt_(v43, v59, &v68, v60);
    v64 = objc_msgSend_isAtEnd(v43, v61, v62, v63);
    if ((v68 + 0x7FFFFFFF) < 0xFFFFFFFE)
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }

    if (v65)
    {
      if (out->_flags)
      {
        column = v68 - 1;
        if (v68 >= 1 && v68 <= 0x3E8u)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v66 = cell->coordinate.column;
        if (v68 + v66 < 0 == __OFADD__(v68, v66) && v68 <= 999 - v66)
        {
          column += v68;
LABEL_50:

LABEL_51:
          v17 = row | (column << 32);
LABEL_53:

          goto LABEL_54;
        }
      }
    }

LABEL_52:

    goto LABEL_53;
  }

LABEL_54:

  return v17;
}

- (TSKUIDStruct)p_findFirstColumnNameInComponent:(id)component tableName:(id)name refResolver:(id)resolver calcEngine:(id)engine outPreserveFlags:(TSUPreserveFlags *)flags usedWordCount:(unint64_t *)count
{
  componentCopy = component;
  nameCopy = name;
  resolverCopy = resolver;
  engineCopy = engine;
  v87 = 0;
  v88 = &v87;
  v89 = 0x4012000000;
  v90 = sub_221099028;
  v91 = nullsub_5;
  v92 = &unk_22188E88F;
  v93 = 0;
  v94 = 0;
  v16 = objc_msgSend_wordAtIndex_(componentCopy, v14, 0, v15);
  v20 = objc_msgSend_trimmedString(v16, v17, v18, v19);
  v24 = objc_msgSend_numWords(componentCopy, v21, v22, v23);
  if (objc_msgSend_hasPreserveFlag(v16, v25, v26, v27))
  {
    flags->_flags |= 1u;
  }

  v34 = objc_msgSend_headerNameMgr(engineCopy, v28, v29, v30);
  v86 = 0uLL;
  if (nameCopy && resolverCopy)
  {
    *&v86 = objc_msgSend_resolverUID(resolverCopy, v31, v32, v33);
    *(&v86 + 1) = v31;
  }

  countCopy = count;
  v35 = 0;
  v36 = v24 - 1;
  if (v24 != 1 && v16)
  {
    v35 = 1;
    if (v34)
    {
LABEL_9:
      objc_msgSend_headerCellsMatching_limitToTable_includePrefixes_(v34, v31, v20, &v86, 0);
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = sub_221099038;
      v78[3] = &unk_27845DB70;
      v79 = v34;
      v80 = nameCopy;
      v83 = v86;
      v81 = engineCopy;
      v82 = &v87;
      TSCECellRefSet::enumerateCellRefsUsingBlock(v84, v78);

      sub_22107C800(v84, v85);
      goto LABEL_10;
    }

    while (1)
    {
LABEL_10:
      if (!v88[6] && !v88[7])
      {
        v37 = TSUCellCoord::coordFromString(v20, 0x3E8);
        if (v37 == 0x7FFFFFFF)
        {
          v38 = WORD2(v37);
          if (WORD2(v37) != 0x7FFFLL)
          {
            v39 = objc_msgSend_tableInfo(resolverCopy, v31, v32, v33);
            v43 = v39;
            if (v39)
            {
              v44 = objc_msgSend_translator(v39, v40, v41, v42);
              v47 = objc_msgSend_viewColumnIndexForChromeColumnIndex_(v44, v45, v38, v46);

              v50 = objc_msgSend_columnUIDForColumnIndex_(v43, v48, v47, v49);
              v51 = v88;
              v88[6] = v50;
              v51[7] = v52;
            }
          }
        }
      }

      if (v88[6] || v88[7] || (v35 >= v36) | objc_msgSend_wasQuoted(v16, v31, v32, v33) & 1)
      {
        break;
      }

      v55 = objc_msgSend_wordAtIndex_(componentCopy, v53, v35, v54);

      if (!v55)
      {
        v16 = 0;
        break;
      }

      if (objc_msgSend_hasPreserveFlag(v55, v56, v57, v58) & 1) != 0 || (objc_msgSend_wasQuoted(v55, v59, v60, v61))
      {
        v16 = v55;
        break;
      }

      v65 = MEMORY[0x277CCACA8];
      v66 = objc_msgSend_trimmedString(v55, v62, v63, v64);
      v69 = objc_msgSend_stringWithFormat_(v65, v67, @"%@ %@", v68, v20, v66);

      ++v35;
      v16 = v55;
      v20 = v69;
      if (v34)
      {
        goto LABEL_9;
      }
    }
  }

  v70 = v88[6];
  v71 = v88[7];
  if (*(v88 + 3) == 0)
  {
    v71 = 0;
  }

  else
  {
    *countCopy = v35;
  }

  _Block_object_dispose(&v87, 8);
  v72 = v70;
  v73 = v71;
  result._upper = v73;
  result._lower = v72;
  return result;
}

- (id)p_parseAsCategoryRefWithSheet:(id)sheet tableName:(id)name columnNameAndGroupValuesStartAt:(unint64_t)at withParsingContext:(id)context
{
  sheetCopy = sheet;
  nameCopy = name;
  contextCopy = context;
  v13 = objc_opt_new();
  v17 = objc_msgSend_refPathSplitter(contextCopy, v14, v15, v16);
  if (objc_msgSend_numComponents(v17, v18, v19, v20) > at)
  {
    v193 = objc_msgSend_calcEngine(self, v21, v22, v23);
    if (sheetCopy)
    {
      v191 = objc_msgSend_resolverContainerMatchingName_(v193, v24, sheetCopy, v26);
      if (!nameCopy)
      {
        v190 = 0;
        v192 = 0;
        v185 = 11;
        goto LABEL_34;
      }

      if (v191)
      {
        v28 = objc_msgSend_resolverMatchingName_(v191, v24, nameCopy, v26);
        if (!v28)
        {
          goto LABEL_13;
        }

        goto LABEL_16;
      }
    }

    else if (!nameCopy)
    {
      v36 = objc_msgSend_contextResolver(contextCopy, v24, v25, v26);
      v191 = 0;
      if (!v36)
      {
        v185 = 11;
        v190 = 0;
        v192 = 0;
        goto LABEL_34;
      }

      v28 = v36;
LABEL_16:
      v190 = v28;
      v188 = objc_msgSend_tableInfo(v28, v24, v27, v26);
      v192 = objc_msgSend_groupBy(v188, v37, v38, v39);
      if (v192)
      {
        v43 = objc_msgSend_aggregateFunction(contextCopy, v40, v41, v42);

        if (!v43)
        {
          v52 = objc_msgSend_numComponents(v17, v44, v45, v46);
          v186 = objc_msgSend_componentAtIndex_(v17, v53, v52 - 1, v54);
          v58 = objc_msgSend_numWords(v186, v55, v56, v57);
          v183 = objc_msgSend_wordAtIndex_(v186, v59, v58 - 1, v60);
          v64 = objc_msgSend_trimmedString(v183, v61, v62, v63);
          v67 = objc_msgSend_rangeOfString_(v64, v65, @"("), v66;
          if (v68)
          {
            v71 = v67;
            v72 = objc_msgSend_length(v64, v68, v69, v70);
            v74 = objc_msgSend_rangeOfString_options_range_(v64, v73, @""), 6, v71 + 1, v72 + ~v71);
            if (v75)
            {
              v76 = objc_msgSend_substringWithRange_(v64, v75, v71 + 1, v74 + ~v71);
              v185 = objc_msgSend_aggregateTypeForAggregateLabel_(v192, v77, v76, v78);
              if (v185 == 255)
              {
                v185 = 11;
              }

              else
              {
                objc_msgSend_setAggregateFunction_(contextCopy, v79, v76, v80);
                v84 = objc_msgSend_numWords(v186, v81, v82, v83);
                objc_msgSend_removeRefPathWordAtIndex_(v186, v85, v84 - 1, v86);
              }
            }

            else
            {
              v185 = 11;
            }
          }

          else
          {
            v185 = 11;
          }

          goto LABEL_33;
        }

        v47 = objc_msgSend_aggregateFunction(contextCopy, v44, v45, v46);
        v50 = objc_msgSend_aggregateTypeForAggregateLabel_(v192, v48, v47, v49);

        if (v50 == 255)
        {
          v51 = 11;
        }

        else
        {
          v51 = v50;
        }
      }

      else
      {
        v51 = 11;
      }

      v185 = v51;
LABEL_33:

LABEL_34:
      v189 = objc_msgSend_componentAtIndex_(v17, v24, at, v26);
      v198 = 1;
      v197 = objc_msgSend_preserveFlags(v13, v87, v88, v89);
      *&v196 = objc_msgSend_p_findFirstColumnNameInComponent_tableName_refResolver_calcEngine_outPreserveFlags_usedWordCount_(self, v90, v189, nameCopy, v190, v193, &v197, &v198);
      *(&v196 + 1) = v91;
      objc_msgSend_setPreserveFlags_(v13, v91, v197, v92);
      if (v192 && v196 != 0)
      {
        v182 = sheetCopy;
        v96 = objc_msgSend_tableInfo(v192, v93, v94, v95);
        v181 = v96;
        v184 = objc_msgSend_tableModel(v192, v97, v98, v99);
        v187 = objc_msgSend_objectLocale(v184, v100, v101, v102);
        v105 = objc_msgSend_localizedNameForBlankGroupForDocumentLocale_(TSTGroupBy, v103, v187, v104);
        objc_msgSend_setLocalizedBlankGroupName_(v17, v106, v105, v107);

        v110 = objc_msgSend_localizedNameForErrorGroupForDocumentLocale_(TSTGroupBy, v108, v187, v109);
        objc_msgSend_setLocalizedErrorGroupName_(v17, v111, v110, v112);

        v116 = objc_msgSend_trueString(v187, v113, v114, v115);
        objc_msgSend_setLocalizedTrueGroupName_(v17, v117, v116, v118);

        v122 = objc_msgSend_falseString(v187, v119, v120, v121);
        objc_msgSend_setLocalizedFalseGroupName_(v17, v123, v122, v124);

        if (v96)
        {
          v126 = v96;
          v127 = objc_msgSend_columnIndexForColumnUID_(v96, v125, v196, *(&v196 + 1));
          v131 = objc_msgSend_translator(v126, v128, v129, v130);
          v195 = objc_msgSend_chromeColumnIndexForViewColumnIndex_(v131, v132, v127, v133);
        }

        else
        {
          v195 = objc_msgSend_columnIndexForColumnUID_(v184, v125, v196, *(&v196 + 1));
        }

        v137 = objc_msgSend_namer(v193, v134, v135, v136);
        v194[0] = objc_msgSend_tableUID(v184, v138, v139, v140);
        v194[1] = v141;
        v142 = objc_msgSend_nameForChromeColumnIndex_inTable_useSymbolicNames_(v137, v141, &v195, v194, 1);

        v144 = objc_msgSend_localizedTrueStringForBooleanGroupWithString_documentLocale_(TSTGroupBy, v143, v142, v187);
        v147 = objc_msgSend_normalizedStringForCompare_(TSTGroupNode, v145, v144, v146);
        objc_msgSend_setLocalizedTrueGroupNameForColumn_(v17, v148, v147, v149);

        v151 = objc_msgSend_localizedFalseStringForBooleanGroupWithString_documentLocale_(TSTGroupBy, v150, v142, v187);
        v154 = objc_msgSend_normalizedStringForCompare_(TSTGroupNode, v152, v151, v153);
        objc_msgSend_setLocalizedFalseGroupNameForColumn_(v17, v155, v154, v156);

        v158 = objc_msgSend_groupNodeForGroupValueHierarchyFromSplitter_startAtComponent_startAtWord_preserveFlags_(v192, v157, v17, at, v198, &v197);
        v162 = v158;
        if (v158)
        {
          v163 = objc_msgSend_groupLevel(v158, v159, v160, v161);
          if (v163 <= 1)
          {
            objc_msgSend_aggregateRefForType_atLevel_forColumnUid_(v162, v164, v185, 1, &v196);
          }

          else
          {
            objc_msgSend_aggregateRefForType_atLevel_forColumnUid_(v162, v164, v185, v163, &v196);
          }
          v165 = ;

          v13 = v165;
          objc_msgSend_setPreserveFlags_(v165, v166, v197, v167);
        }

        sheetCopy = v182;
      }

      v168 = v192;
      v169 = objc_msgSend_groupByUid(v13, v93, v94, v95);
      if (v169 | v170)
      {
        objc_msgSend_setSheetName_(contextCopy, v170, sheetCopy, v171);
        objc_msgSend_setTableName_(contextCopy, v172, nameCopy, v173);
        v174 = sub_221140460(self->_stringManipulator, sheetCopy);
        objc_msgSend_setSheetNameUnquoted_(contextCopy, v175, v174, v176);

        v177 = sub_221140460(self->_stringManipulator, nameCopy);
        objc_msgSend_setTableNameUnquoted_(contextCopy, v178, v177, v179);

        v168 = v192;
      }

      goto LABEL_48;
    }

    v29 = objc_msgSend_contextResolver(contextCopy, v24, v25, v26);

    if (!v29)
    {
      v191 = 0;
LABEL_13:

      v35 = 0;
      goto LABEL_49;
    }

    v33 = objc_msgSend_contextResolver(contextCopy, v30, v31, v32);
    v28 = objc_msgSend_resolverMatchingName_contextResolver_(v193, v34, nameCopy, v33);

    v191 = 0;
    if (!v28)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_48:
  v13 = v13;
  v35 = v13;
LABEL_49:

  return v35;
}

- (id)parseStringAsCategoryRef:(id)ref withParsingContext:(id)context
{
  refCopy = ref;
  contextCopy = context;
  v8 = [TSCEQuotedRefPathSplitter alloc];
  v11 = objc_msgSend_initWithReferenceString_(v8, v9, refCopy, v10);
  objc_msgSend_setRefPathSplitter_(contextCopy, v12, v11, v13);

  v16 = objc_msgSend_parseAsCategoryRefWithParsingContext_(self, v14, contextCopy, v15);

  return v16;
}

- (id)parseAsCategoryRefWithParsingContext:(id)context
{
  contextCopy = context;
  v8 = objc_msgSend_refPathSplitter(contextCopy, v5, v6, v7);
  if (objc_msgSend_numComponents(v8, v9, v10, v11))
  {
    v14 = objc_msgSend_componentAtIndex_(v8, v12, 0, v13);
    if (objc_msgSend_numWords(v14, v15, v16, v17) && (objc_msgSend_wordAtIndex_(v14, v18, 0, v20), v21 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend_hasPreserveFlag(v21, v22, v23, v24), v21, (v25 & 1) != 0))
    {
      v26 = 0;
      v27 = 1;
      isValid = objc_msgSend_isValid(0, v18, v19, v20);
    }

    else if (objc_msgSend_numComponents(v8, v18, v19, v20) < 3)
    {
      v27 = 0;
      v26 = 0;
      isValid = objc_msgSend_isValid(0, v32, v33, v34);
    }

    else
    {
      v35 = objc_msgSend_trimmedStringStartingAtWord_(v14, v32, 0, v34);
      v38 = objc_msgSend_componentAtIndex_(v8, v36, 1, v37);
      v41 = objc_msgSend_wordAtIndex_(v38, v39, 0, v40);
      hasPreserveFlag = objc_msgSend_hasPreserveFlag(v41, v42, v43, v44);

      if (hasPreserveFlag)
      {
        v26 = 0;
      }

      else
      {
        v48 = objc_msgSend_trimmedStringStartingAtWord_(v38, v46, 0, v47);
        v26 = objc_msgSend_p_parseAsCategoryRefWithSheet_tableName_columnNameAndGroupValuesStartAt_withParsingContext_(self, v49, v35, v48, 2, contextCopy);
      }

      v27 = 0;
      isValid = objc_msgSend_isValid(v26, v50, v51, v52);
    }

    if (((v27 | isValid) & 1) == 0 && objc_msgSend_numComponents(v8, v29, v30, v31) >= 2)
    {
      v53 = objc_msgSend_trimmedStringStartingAtWord_(v14, v29, 0, v31);
      v55 = objc_msgSend_p_parseAsCategoryRefWithSheet_tableName_columnNameAndGroupValuesStartAt_withParsingContext_(self, v54, 0, v53, 1, contextCopy);

      v26 = v55;
    }

    if ((objc_msgSend_isValid(v26, v29, v30, v31) & 1) == 0 && objc_msgSend_numComponents(v8, v56, v57, v58))
    {
      v60 = objc_msgSend_p_parseAsCategoryRefWithSheet_tableName_columnNameAndGroupValuesStartAt_withParsingContext_(self, v59, 0, 0, 0, contextCopy);

      v26 = v60;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (id)p_baseReferencesForChromeReferences:(id)references calcEngine:(id)engine
{
  v53 = *MEMORY[0x277D85DE8];
  referencesCopy = references;
  engineCopy = engine;
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = referencesCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v48, v52, 16);
  if (v13)
  {
    v14 = *v49;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v48 + 1) + 8 * i);
        v17 = objc_opt_class();
        v19 = objc_msgSend_p_baseReferenceForChromeReference_calcEngine_(v17, v18, v16, engineCopy);
        v23 = objc_msgSend_preserveFlags(v16, v20, v21, v22);
        objc_msgSend_setPreserveFlags_(v19, v24, v23, v25);
        v29 = objc_msgSend_wasConstructedViaNames(v16, v26, v27, v28);
        objc_msgSend_setWasConstructedViaNames_(v19, v30, v29, v31);
        v35 = objc_msgSend_overrideText(v16, v32, v33, v34);
        objc_msgSend_setOverrideText_(v19, v36, v35, v37);

        v41 = objc_msgSend_overrideTextAsTyped(v16, v38, v39, v40);
        objc_msgSend_setOverrideTextAsTyped_(v19, v42, v41, v43);

        objc_msgSend_addObject_(v10, v44, v19, v45);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v46, &v48, v52, 16);
    }

    while (v13);
  }

  return v10;
}

+ (id)p_chromeReferencesForMixedReferences:(id)references calcEngine:(id)engine
{
  v57 = *MEMORY[0x277D85DE8];
  referencesCopy = references;
  engineCopy = engine;
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = referencesCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v52, v56, 16);
  if (v16)
  {
    v17 = *v53;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v53 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v52 + 1) + 8 * i);
        if (objc_msgSend_wasConstructedViaNames(v19, v13, v14, v15))
        {
          v22 = objc_opt_class();
          v24 = objc_msgSend_p_chromeReferenceForBaseReference_calcEngine_(v22, v23, v19, engineCopy);
          v28 = objc_msgSend_preserveFlags(v19, v25, v26, v27);
          objc_msgSend_setPreserveFlags_(v24, v29, v28, v30);
          v34 = objc_msgSend_wasConstructedViaNames(v19, v31, v32, v33);
          objc_msgSend_setWasConstructedViaNames_(v24, v35, v34, v36);
          v40 = objc_msgSend_overrideText(v19, v37, v38, v39);
          objc_msgSend_setOverrideText_(v24, v41, v40, v42);

          v46 = objc_msgSend_overrideTextAsTyped(v19, v43, v44, v45);
          objc_msgSend_setOverrideTextAsTyped_(v24, v47, v46, v48);

          objc_msgSend_addObject_(v10, v49, v24, v50);
        }

        else
        {
          objc_msgSend_addObject_(v10, v20, v19, v21);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v52, v56, 16);
    }

    while (v16);
  }

  return v10;
}

+ (id)p_baseReferenceForChromeReference:(id)reference calcEngine:(id)engine
{
  referenceCopy = reference;
  engineCopy = engine;
  if (referenceCopy)
  {
    objc_msgSend_rangeRef(referenceCopy, v6, v7, v8);
    v10 = *(&v22 + 1);
    v11 = v22;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v23;
  v12 = objc_opt_class();
  v19 = v11;
  v20 = v10;
  v21 = v23;
  if (v12)
  {
    objc_msgSend_p_baseRangeRefForChromeRangeRef_calcEngine_(v12, v13, &v19, engineCopy);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v14 = [TSCEAnyReference alloc];
  v17 = objc_msgSend_initWithRangeRef_(v14, v15, &v22, v16, v19, v20, v21);

  return v17;
}

+ (id)p_chromeReferenceForBaseReference:(id)reference calcEngine:(id)engine
{
  referenceCopy = reference;
  engineCopy = engine;
  if (referenceCopy)
  {
    objc_msgSend_rangeRef(referenceCopy, v6, v7, v8);
    v10 = *(&v22 + 1);
    v11 = v22;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v23;
  v12 = objc_opt_class();
  v19 = v11;
  v20 = v10;
  v21 = v23;
  if (v12)
  {
    objc_msgSend_p_chromeRangeRefForBaseRangeRef_calcEngine_(v12, v13, &v19, engineCopy);
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v14 = [TSCEAnyReference alloc];
  v17 = objc_msgSend_initWithRangeRef_(v14, v15, &v22, v16, v19, v20, v21);

  return v17;
}

+ (RefTypeHolder<TSCERangeRef,)p_baseRangeRefForChromeRangeRef:(id)ref calcEngine:(SEL)engine
{
  v7 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, engine, a4->var0._tableUID._lower, a4->var0._tableUID._upper, a5);
  v8 = [TSCECellTractRef alloc];
  v11 = objc_msgSend_initWithRangeRef_(v8, v9, a4, v10);
  v15 = objc_msgSend_translator(v7, v12, v13, v14);
  v18 = objc_msgSend_baseTractRefForChromeTractRef_(v15, v16, v11, v17);

  v26 = 0;
  if (v18)
  {
    objc_msgSend_boundingRangeRef(v18, v19, v20, v21);
    v22 = v24;
    v26 = v25;
  }

  else
  {
    v22 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  }

  retstr->var0.range = v22;
  retstr->var0._tableUID = v26;

  return result;
}

+ (RefTypeHolder<TSCERangeRef,)p_chromeRangeRefForBaseRangeRef:(id)ref calcEngine:(SEL)engine
{
  v7 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, engine, a4->var0._tableUID._lower, a4->var0._tableUID._upper, a5);
  v8 = [TSCECellTractRef alloc];
  v11 = objc_msgSend_initWithRangeRef_(v8, v9, a4, v10);
  v15 = objc_msgSend_translator(v7, v12, v13, v14);
  v18 = objc_msgSend_chromeTractRefForBaseTractRef_(v15, v16, v11, v17);

  v29 = 0;
  if (objc_msgSend_isValid(v18, v19, v20, v21))
  {
    if (v18)
    {
      objc_msgSend_boundingRangeRef(v18, v22, v23, v24);
      v25 = v27;
    }

    else
    {
      v25 = 0;
      v28 = 0;
    }

    v29 = v28;
  }

  else
  {
    v25 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  }

  retstr->var0.range = v25;
  retstr->var0._tableUID = v29;

  return result;
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

@end