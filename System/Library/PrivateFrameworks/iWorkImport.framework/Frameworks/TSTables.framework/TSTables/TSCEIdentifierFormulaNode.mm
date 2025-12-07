@interface TSCEIdentifierFormulaNode
- (NSString)fullIdentifier;
- (NSString)lastIdentifierComponent;
- (TSCEIdentifierFormulaNode)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)lastComponentWithWhitespaceAppended;
- (id)resolveIdentifier:(id)identifier hostTable:(id)table baseHostCell:(TSUCellCoord)cell symbolTable:(void *)symbolTable;
- (void)addIdentifierComponent:(id)component;
- (void)appendToLastComponent:(id)component;
@end

@implementation TSCEIdentifierFormulaNode

- (TSCEIdentifierFormulaNode)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = TSCEIdentifierFormulaNode;
  v5 = [(TSCEFormulaNode *)&v10 initWithNodeType:21];
  v8 = v5;
  if (v5)
  {
    v5->_symbol = 0;
    objc_msgSend_addIdentifierComponent_(v5, v6, identifierCopy, v7);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = TSCEIdentifierFormulaNode;
  v4 = [(TSCEIdentifierFormulaNode *)&v24 copy];
  v4[16] = self->_symbol;
  v5 = objc_opt_new();
  v6 = *(v4 + 6);
  *(v4 + 6) = v5;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_components;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v25, 16);
  if (v12)
  {
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(v4 + 6);
        v16 = objc_msgSend_copy(*(*(&v20 + 1) + 8 * v14), v9, v10, v11, v20);
        objc_msgSend_addObject_(v15, v17, v16, v18);

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v25, 16);
    }

    while (v12);
  }

  return v4;
}

- (void)addIdentifierComponent:(id)component
{
  componentCopy = component;
  if (componentCopy)
  {
    components = self->_components;
    if (!components)
    {
      v7 = objc_opt_new();
      v8 = self->_components;
      self->_components = v7;

      components = self->_components;
    }

    objc_msgSend_addObject_(components, v4, componentCopy, v5);
  }
}

- (NSString)lastIdentifierComponent
{
  v5 = objc_msgSend_count(self->_components, a2, v2, v3);
  if (v5)
  {
    v5 = objc_msgSend_lastObject(self->_components, v6, v7, v8);
  }

  return v5;
}

- (NSString)fullIdentifier
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = self->_components;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v25, v29, 16);
  if (v8)
  {
    v9 = *v26;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        if ((v10 & 1) == 0)
        {
          objc_msgSend_appendString_(v3, v6, @"::", v7);
        }

        objc_msgSend_appendString_(v3, v6, v12, v7);
        v10 = 0;
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v25, v29, 16);
      v10 = 0;
    }

    while (v8);
  }

  v16 = objc_msgSend_aggregateFunction(self, v13, v14, v15);
  v17 = v16 == 0;

  if (!v17)
  {
    v21 = objc_msgSend_aggregateFunction(self, v18, v19, v20);
    objc_msgSend_appendFormat_(v3, v22, @" %@", v23, v21);
  }

  return v3;
}

- (id)lastComponentWithWhitespaceAppended
{
  v5 = objc_msgSend_whitespaceAfter(self, a2, v2, v3);
  objc_msgSend_lastIdentifierComponent(self, v6, v7, v8);
  if (v5)
    v9 = {;
    v13 = objc_msgSend_whitespaceAfter(self, v10, v11, v12);
    v16 = objc_msgSend_stringByAppendingString_(v9, v14, v13, v15);
  }

  else
    v16 = {;
  }

  return v16;
}

- (void)appendToLastComponent:(id)component
{
  componentCopy = component;
  v10 = objc_msgSend_count(self->_components, v4, v5, v6);
  v11 = componentCopy;
  if (componentCopy)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_msgSend_lastComponentWithWhitespaceAppended(self, v7, v8, v9);
    v16 = objc_msgSend_stringWithFormat_(v12, v14, @"%@%@", v15, v13, componentCopy);

    objc_msgSend_replaceObjectAtIndex_withObject_(self->_components, v17, v10 - 1, v16);
    objc_msgSend_setWhitespaceAfter_(self, v18, 0, v19);

    v11 = componentCopy;
  }
}

- (id)resolveIdentifier:(id)identifier hostTable:(id)table baseHostCell:(TSUCellCoord)cell symbolTable:(void *)symbolTable
{
  identifierCopy = identifier;
  tableCopy = table;
  v15 = objc_msgSend_fullIdentifier(self, v12, v13, v14);
  if (objc_msgSend_componentCount(self, v16, v17, v18) == 1)
  {
    if (v15)
    {
      v22 = objc_msgSend_documentLocale(identifierCopy, v19, v20, v21);
      MEMORY[0x223D9F8D0](__p, v22);

      TSUUnivNumberParser::parseAsNumber(&v255, __p, v15);
      if (v255.size.numberOfColumns == -999 || ((isInfOrNaN = TSUParsedNumber::isInfOrNaN(&v255), LOBYTE(v255.size.numberOfRows) != 10) ? (v24 = 1) : (v24 = isInfOrNaN), (v24 & 1) != 0))
      {
        v25 = 0;
      }

      else
      {
        TSUDecimal::operator=();
        v26 = [TSCENumberFormulaNode alloc];
        v25 = objc_msgSend_initWithNumber_(v26, v27, &v254, v28);
        v32 = objc_msgSend_whitespaceAfter(self, v29, v30, v31);
        objc_msgSend_setWhitespaceAfter_(v25, v33, v32, v34);
      }

      MEMORY[0x223D9F890](&v255);

      if (v25)
      {
        goto LABEL_24;
      }
    }

    v35 = objc_msgSend_documentLocale(identifierCopy, v19, v20, v21);
    IsTrue = objc_msgSend_localizedStringIsTrue_(v35, v36, v15, v37);

    if (IsTrue)
    {
      v42 = [TSCEBooleanFormulaNode alloc];
      v25 = objc_msgSend_initWithBoolean_(v42, v43, 1, v44);
      v48 = objc_msgSend_whitespaceAfter(self, v45, v46, v47);
      objc_msgSend_setWhitespaceAfter_(v25, v49, v48, v50);
    }

    else
    {
      v51 = objc_msgSend_documentLocale(identifierCopy, v39, v40, v41);
      IsFalse = objc_msgSend_localizedStringIsFalse_(v51, v52, v15, v53);

      if (!IsFalse)
      {
        goto LABEL_16;
      }

      v55 = [TSCEBooleanFormulaNode alloc];
      v25 = objc_msgSend_initWithBoolean_(v55, v56, 0, v57);
      v48 = objc_msgSend_whitespaceAfter(self, v58, v59, v60);
      objc_msgSend_setWhitespaceAfter_(v25, v61, v48, v62);
    }

    if (v25)
    {
      goto LABEL_24;
    }
  }

LABEL_16:
  v66 = TSCESymbolTable::lookup(symbolTable, v15, 0);
  if (v66)
  {
    v67 = [TSCEVariableFormulaNode alloc];
    v25 = objc_msgSend_initWithSymbol_identifier_(v67, v68, v66, v15);
    v72 = objc_msgSend_whitespaceAfter(self, v69, v70, v71);
    objc_msgSend_setWhitespaceAfter_(v25, v73, v72, v74);

    if (v25)
    {
      goto LABEL_24;
    }
  }

  if (objc_msgSend_componentCount(self, v63, v64, v65) > 3 || (objc_msgSend_aggregateFunction(self, v75, v76, v77), v78 = objc_claimAutoreleasedReturnValue(), v78, v78))
  {
LABEL_20:
    v79 = [TSCEReferenceParsingContext alloc];
    v83 = objc_msgSend_identifierComponents(self, v80, v81, v82);
    v85 = objc_msgSend_initWithContextResolver_components_(v79, v84, tableCopy, v83);

    objc_msgSend_setReferenceIsComplete_(v85, v86, 1, v87);
    objc_msgSend_setFilterColons_(v85, v88, 0, v89);
    v90 = [TSCEQuotedRefPathSplitter alloc];
    v94 = objc_msgSend_identifierComponents(self, v91, v92, v93);
    v98 = objc_msgSend_aggregateFunction(self, v95, v96, v97);
    v100 = objc_msgSend_initWithComponents_aggregateFunction_(v90, v99, v94, v98);

    objc_msgSend_setRefPathSplitter_(v85, v101, v100, v102);
    v106 = objc_msgSend_refParser(identifierCopy, v103, v104, v105);
    v109 = objc_msgSend_parseAsCategoryRefWithParsingContext_(v106, v107, v85, v108);

    v113 = objc_msgSend_groupByUid(v109, v110, v111, v112);
    if (v113 | v114)
    {
      objc_msgSend_setType_(v109, v114, 11, v115);
      v116 = [TSCECombinedReferenceFormulaNode alloc];
      v120 = objc_msgSend_tableUID(tableCopy, v117, v118, v119);
      __p[0] = cell;
      __p[1] = v120;
      v260[0] = v121;
      v25 = objc_msgSend_initWithCategoryRef_hostCellRef_(v116, v121, v109, __p);
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_24;
  }

  v123 = [TSCEReferenceParsingContext alloc];
  v126 = objc_msgSend_initWithContextResolver_(v123, v124, tableCopy, v125);
  objc_msgSend_setReferenceIsComplete_(v126, v127, 1, v128);
  objc_msgSend_setFilterColons_(v126, v129, 0, v130);
  if (objc_msgSend_componentCount(self, v131, v132, v133) == 3)
  {
    v137 = objc_msgSend_identifierComponents(self, v134, v135, v136);
    v249 = objc_msgSend_objectAtIndexedSubscript_(v137, v138, 0, v139);
  }

  else
  {
    v249 = 0;
  }

  if (objc_msgSend_componentCount(self, v134, v135, v136) == 3)
  {
    v143 = objc_msgSend_identifierComponents(self, v140, v141, v142);
    v251 = objc_msgSend_objectAtIndexedSubscript_(v143, v144, 1, v145);
LABEL_34:

    goto LABEL_36;
  }

  if (objc_msgSend_count(self->_components, v140, v141, v142) == 2)
  {
    v143 = objc_msgSend_identifierComponents(self, v146, v147, v148);
    v251 = objc_msgSend_objectAtIndexedSubscript_(v143, v149, 0, v150);
    goto LABEL_34;
  }

  v251 = 0;
LABEL_36:
  objc_msgSend_setSheetName_(v126, v146, v249, v148);
  objc_msgSend_setTableName_(v126, v151, v251, v152);
  v156 = objc_msgSend_lastIdentifierComponent(self, v153, v154, v155);
  objc_msgSend_setRest_(v126, v157, v156, v158);

  v162 = objc_msgSend_refParser(identifierCopy, v159, v160, v161);
  v165 = objc_msgSend_parseAsTractRefWithParsingContext_(v162, v163, v126, v164);

  v250 = v165;
  if (!objc_msgSend_isValid(v165, v166, v167, v168))
  {
    v25 = 0;
    goto LABEL_73;
  }

  v173 = objc_msgSend_tableUID(v165, v169, v170, v171);
  if (!v173)
  {
    if (v172)
    {
      objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v172, 0, v172, identifierCopy);
      goto LABEL_43;
    }

    v173 = objc_msgSend_tableUID(tableCopy, 0, 0, v174);
  }

  objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v172, v173, v172, identifierCopy);
  v248 = LABEL_43:;
  v178 = objc_msgSend_translator(v248, v175, v176, v177);

  if (v178)
  {
    v182 = objc_msgSend_translator(v248, v179, v180, v181);
    v185 = objc_msgSend_viewTractRefForChromeTractRef_(v182, v183, v250, v184);

    if (objc_msgSend_isAPivotTable(v248, v186, v187, v188))
    {
      v247 = 0;
    }

    else
    {
      v195 = objc_msgSend_translator(v248, v189, v190, v191);
      v247 = objc_msgSend_baseTractRefForViewTractRef_(v195, v196, v185, v197);
    }
  }

  else
  {
    v247 = v165;
  }

  memset(v260, 0, 32);
  *__p = 0u;
  v254.origin = 0;
  v254.size = 0;
  v254.origin = objc_msgSend_range(v248, v192, v193, v194);
  v254.size = v198;
  v253.origin = 0;
  v253.size = 0;
  v252._topLeft = objc_msgSend_boundingRange(v247, v198, v199, v200);
  v252._bottomRight = v201;
  TSCERangeCoordinate::asCellRect(&v252);
  v255.origin = v202;
  v255.size = v203;
  v253.origin = TSUCellRect::nonSpanningCellRectWithTableRange(&v255, &v254);
  v253.size = v204;
  if (v247 && TSUCellRect::contains(&v254, &v253))
  {
    v252._topLeft = objc_msgSend_tableUID(tableCopy, v204, v205, v206);
    v252._bottomRight = v207;
    objc_msgSend_uidTractWithCalcEngine_hostTableUID_(v247, v207, identifierCopy, &v252);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v255;
    v260[0] = v256;
    v255.size = 0;
    v256 = 0;
    v255.origin = 0;
    origin = v260[1];
    if (v260[1])
    {
      v260[2] = v260[1];
      operator delete(v260[1]);
      origin = v255.origin;
    }

    *&v260[1] = v257;
    v260[3] = v258;
    v258 = 0;
    v257 = 0uLL;
    if (origin)
    {
      v255.size = origin;
      operator delete(origin);
    }
  }

  if (((v260[2] - v260[1]) >> 4) * ((__p[1] - __p[0]) >> 4))
  {
    v209 = [TSTUIDRectRef alloc];
    v255.origin = objc_msgSend_tableUID(v247, v210, v211, v212);
    v255.size = v213;
    v216 = objc_msgSend_preserveFlags(v247, v213, v214, v215);
    v218 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v209, v217, identifierCopy, &v255, __p, v216);
  }

  else
  {
    v220 = objc_msgSend_translator(v248, v204, v205, v206);

    if (v220)
    {
      v224 = objc_msgSend_translator(v248, v221, v222, v223);
      v227 = objc_msgSend_viewTractRefForChromeTractRef_(v224, v225, v250, v226);

      if (objc_msgSend_isValid(v227, v228, v229, v230))
      {
        v231 = [TSTUIDRectRef alloc];
        v219 = objc_msgSend_initWithCalcEngine_viewTractRef_(v231, v232, identifierCopy, v227);
      }

      else
      {
        v219 = 0;
      }

      goto LABEL_68;
    }

    if (!objc_msgSend_isValid(v250, v221, v222, v223))
    {
      v219 = 0;
      goto LABEL_68;
    }

    v233 = [TSTUIDRectRef alloc];
    v218 = objc_msgSend_initWithCalcEngine_viewTractRef_(v233, v234, identifierCopy, v250);
  }

  v219 = v218;
LABEL_68:
  v235 = [TSCECombinedReferenceFormulaNode alloc];
  v239 = objc_msgSend_tableUID(tableCopy, v236, v237, v238);
  v255.origin = cell;
  v255.size = v239;
  v256 = v240;
  v25 = objc_msgSend_initWithUidRectRef_hostCellRef_(v235, v240, v219, &v255);
  v244 = objc_msgSend_whitespaceAfter(self, v241, v242, v243);
  objc_msgSend_setWhitespaceAfter_(v25, v245, v244, v246);

  if (v260[1])
  {
    v260[2] = v260[1];
    operator delete(v260[1]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_73:
  if (!v25)
  {
    goto LABEL_20;
  }

LABEL_24:

  return v25;
}

@end