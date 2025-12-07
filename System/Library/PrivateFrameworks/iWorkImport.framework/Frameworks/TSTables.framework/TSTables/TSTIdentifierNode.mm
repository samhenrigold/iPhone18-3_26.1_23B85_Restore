@interface TSTIdentifierNode
- (BOOL)isEqualToExpressionNode:(id)node;
- (NSString)fullIdentifier;
- (NSString)lastComponentWithWhitespaceAppended;
- (NSString)lastIdentifierComponent;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTIdentifierNode)initWithContext:(id)context identifier:(id)identifier firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map;
- (id)identifierComponents;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)sheetName;
- (id)tableName;
- (id)transformToUseScopedVariables:(void *)variables;
- (id)trimIdentifier:(void *)identifier;
- (void)addIdentifierComponent:(id)component;
- (void)appendToLastComponent:(id)component;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTIdentifierNode

- (TSTIdentifierNode)initWithContext:(id)context identifier:(id)identifier firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = TSTIdentifierNode;
  v12 = [(TSTExpressionNode *)&v19 initWithContext:contextCopy children:0 firstIndex:index lastIndex:lastIndex];
  v13 = v12;
  if (v12)
  {
    v12->_symbol = 0;
    v14 = objc_opt_new();
    components = v13->_components;
    v13->_components = v14;

    if (identifierCopy)
    {
      objc_msgSend_addObject_(v13->_components, v16, identifierCopy, v17);
    }
  }

  return v13;
}

- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children
{
  ofCopy = of;
  contextCopy = context;
  childrenCopy = children;
  objc_opt_class();
  v13 = TSUDynamicCast();
  if (!v13)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTIdentifierNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTIdentifierNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 78, 0, "Unexpected object in initAsCopyOf:... expected TSTIdentifierNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v31.receiver = self;
  v31.super_class = TSTIdentifierNode;
  v27 = [(TSTExpressionNode *)&v31 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  if (v27)
  {
    v28 = objc_msgSend_mutableCopy(*(v13 + 128), v24, v25, v26);
    v29 = v27[16];
    v27[16] = v28;

    *(v27 + 34) = *(v13 + 136);
  }

  return v27;
}

- (id)identifierComponents
{
  v4 = objc_msgSend_copy(self->_components, a2, v2, v3);

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

- (NSString)lastComponentWithWhitespaceAppended
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

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  subexpressionsCopy = subexpressions;
  v8 = objc_msgSend_fullIdentifier(self, v5, v6, v7);
  v12 = objc_msgSend_hash(v8, v9, v10, v11);

  objc_msgSend_recordExpression_data_(subexpressionsCopy, v13, self, v12 ^ 0x6000000, 1);
  v14 = v12 ^ 0x6000000;
  v15 = 1;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    isEqualToString = 1;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = TSTIdentifierNode;
    if ([(TSTExpressionNode *)&v20 isEqualToExpressionNode:nodeCopy])
    {
      v5 = nodeCopy;
      if (objc_msgSend_isEqual_(self->_components, v6, v5[16], v7))
      {
        v11 = objc_msgSend_aggregateFunction(self, v8, v9, v10);
        v15 = objc_msgSend_aggregateFunction(v5, v12, v13, v14);
        isEqualToString = objc_msgSend_isEqualToString_(v11, v16, v15, v17);
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }
  }

  return isEqualToString;
}

- (id)sheetName
{
  if (objc_msgSend_count(self->_components, a2, v2, v3) == 3)
  {
    v7 = objc_msgSend_objectAtIndexedSubscript_(self->_components, v5, 0, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableName
{
  v8 = objc_msgSend_count(self->_components, a2, v2, v3);
  components = self->_components;
  if (v8 == 3)
  {
    objc_msgSend_objectAtIndexedSubscript_(components, v5, 1, v7);
    v12 = LABEL_5:;
    goto LABEL_7;
  }

  if (objc_msgSend_count(components, v5, v6, v7) == 2)
  {
    objc_msgSend_objectAtIndexedSubscript_(self->_components, v10, 0, v11);
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:

  return v12;
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

- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map
{
  identifiersCopy = identifiers;
  tableCopy = table;
  mapCopy = map;
  if (objc_msgSend_componentCount(self, v16, v17, v18) == 1 && !interpretation)
  {
    v22 = [TSTNumberNode alloc];
    v26 = objc_msgSend_context(self, v23, v24, v25);
    v30 = objc_msgSend_fullIdentifier(self, v27, v28, v29);
    v34 = objc_msgSend_documentLocale(identifiersCopy, v31, v32, v33);
    Index = objc_msgSend_firstIndex(self, v35, v36, v37);
    v42 = objc_msgSend_lastIndex(self, v39, v40, v41);
    Index_lastIndex = objc_msgSend_initWithContext_string_locale_firstIndex_lastIndex_(v22, v43, v26, v30, v34, Index, v42);

    v48 = objc_msgSend_whitespaceAfter(self, v45, v46, v47);
    objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v49, v48, v50);

    if (Index_lastIndex)
    {
      goto LABEL_57;
    }

    v53 = objc_msgSend_documentLocale(identifiersCopy, v19, v51, v52);
    v57 = objc_msgSend_fullIdentifier(self, v54, v55, v56);
    IsTrue = objc_msgSend_localizedStringIsTrue_(v53, v58, v57, v59);

    if (IsTrue)
    {
      v64 = [TSTBooleanNode alloc];
      v68 = objc_msgSend_context(self, v65, v66, v67);
      v72 = objc_msgSend_firstIndex(self, v69, v70, v71);
      v76 = objc_msgSend_lastIndex(self, v73, v74, v75);
      Index_lastIndex = objc_msgSend_initWithContext_BOOLValue_firstIndex_lastIndex_(v64, v77, v68, 1, v72, v76);

      v81 = objc_msgSend_whitespaceAfter(self, v78, v79, v80);
      objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v82, v81, v83);
    }

    else
    {
      v84 = objc_msgSend_documentLocale(identifiersCopy, v61, v62, v63);
      v88 = objc_msgSend_fullIdentifier(self, v85, v86, v87);
      IsFalse = objc_msgSend_localizedStringIsFalse_(v84, v89, v88, v90);

      if (!IsFalse)
      {
        goto LABEL_9;
      }

      v92 = [TSTBooleanNode alloc];
      v96 = objc_msgSend_context(self, v93, v94, v95);
      v100 = objc_msgSend_firstIndex(self, v97, v98, v99);
      v104 = objc_msgSend_lastIndex(self, v101, v102, v103);
      Index_lastIndex = objc_msgSend_initWithContext_BOOLValue_firstIndex_lastIndex_(v92, v105, v96, 0, v100, v104);

      v81 = objc_msgSend_whitespaceAfter(self, v106, v107, v108);
      objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v109, v81, v110);
    }

    if (Index_lastIndex)
    {
      goto LABEL_57;
    }
  }

LABEL_9:
  v111 = objc_msgSend_fullIdentifier(self, v19, v20, v21);
  v112 = TSCESymbolTable::lookup(symbolTable, v111, 0);

  v113 = TSCESymbolTable::identifierForSymbol(symbolTable, v112);
  v114 = v113;
  if (v112)
  {
    v115 = [TSTVariableNode alloc];
    v119 = objc_msgSend_context(self, v116, v117, v118);
    v123 = objc_msgSend_firstIndex(self, v120, v121, v122);
    v127 = objc_msgSend_lastIndex(self, v124, v125, v126);
    Index_lastIndex = objc_msgSend_initWithContext_identifier_symbol_firstIndex_lastIndex_(v115, v128, v119, v114, v112, v123, v127);

    v132 = objc_msgSend_whitespaceAfter(self, v129, v130, v131);
    objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v133, v132, v134);

    if (Index_lastIndex)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  if (objc_msgSend_componentCount(self, v19, v135, v136) > 3)
  {
    goto LABEL_53;
  }

  v140 = objc_msgSend_aggregateFunction(self, v137, v138, v139);

  if (v140)
  {
    goto LABEL_53;
  }

  v141 = [TSCEReferenceParsingContext alloc];
  v145 = objc_msgSend_baseTableModel(tableCopy, v142, v143, v144);
  v148 = objc_msgSend_initWithContextResolver_(v141, v146, v145, v147);

  objc_msgSend_setReferenceIsComplete_(v148, v149, 1, v150);
  objc_msgSend_setFilterColons_(v148, v151, 0, v152);
  v156 = objc_msgSend_sheetName(self, v153, v154, v155);
  objc_msgSend_setSheetName_(v148, v157, v156, v158);

  v162 = objc_msgSend_tableName(self, v159, v160, v161);
  objc_msgSend_setTableName_(v148, v163, v162, v164);

  v168 = objc_msgSend_lastIdentifierComponent(self, v165, v166, v167);
  objc_msgSend_setRest_(v148, v169, v168, v170);

  v174 = objc_msgSend_refParser(identifiersCopy, v171, v172, v173);
  v177 = objc_msgSend_parseAsTractRefWithParsingContext_(v174, v175, v148, v176);

  v373 = v177;
  if (objc_msgSend_isValid(v177, v178, v179, v180))
  {
    v185 = objc_msgSend_tableUID(v177, v181, v182, v183);
    if (!v185)
    {
      if (v184)
      {
        objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v184, 0, v184, identifiersCopy);
        goto LABEL_22;
      }

      v185 = objc_msgSend_tableUID(tableCopy, 0, 0, v186);
    }

    objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v184, v185, v184, identifiersCopy);
    v372 = LABEL_22:;
    v190 = objc_msgSend_translator(v372, v187, v188, v189);

    if (v190)
    {
      v194 = objc_msgSend_translator(v372, v191, v192, v193);
      v197 = objc_msgSend_viewTractRefForChromeTractRef_(v194, v195, v177, v196);

      if (objc_msgSend_isAPivotTable(v372, v198, v199, v200))
      {
        v370 = 0;
      }

      else
      {
        v208 = objc_msgSend_translator(v372, v201, v202, v203);
        v370 = objc_msgSend_baseTractRefForViewTractRef_(v208, v209, v197, v210);
      }

      v207 = v372;
    }

    else
    {
      v370 = v177;
      v207 = v372;
    }

    memset(v383, 0, sizeof(v383));
    *__p = 0u;
    v381.origin = objc_msgSend_range(v207, v204, v205, v206, v370);
    v381.size = v211;
    v380.origin = 0;
    v380.size = 0;
    v379._topLeft = objc_msgSend_boundingRange(v371, v211, v212, v213);
    v379._bottomRight = v214;
    TSCERangeCoordinate::asCellRect(&v379);
    v375.origin = v215;
    v375.size = v216;
    v380.origin = TSUCellRect::nonSpanningCellRectWithTableRange(&v375, &v381);
    v380.size = v217;
    if (v371 && TSUCellRect::contains(&v381, &v380))
    {
      v379._topLeft = objc_msgSend_tableUID(tableCopy, v217, v218, v219);
      v379._bottomRight = v220;
      objc_msgSend_uidTractWithCalcEngine_hostTableUID_(v371, v220, identifiersCopy, &v379);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = v375;
      v383[0] = v376;
      v375.size = 0;
      v376 = 0;
      v375.origin = 0;
      origin = v383[1];
      if (v383[1])
      {
        v383[2] = v383[1];
        operator delete(v383[1]);
        origin = v375.origin;
      }

      *&v383[1] = v377;
      v383[3] = v378;
      v378 = 0;
      v377 = 0uLL;
      if (origin)
      {
        v375.size = origin;
        operator delete(origin);
      }

      v207 = v372;
    }

    if (((v383[2] - v383[1]) >> 4) * ((__p[1] - __p[0]) >> 4))
    {
      v222 = [TSTUIDRectRef alloc];
      v375.origin = objc_msgSend_tableUID(v371, v223, v224, v225);
      v375.size = v226;
      v229 = objc_msgSend_preserveFlags(v371, v226, v227, v228);
      v231 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v222, v230, identifiersCopy, &v375, __p, v229);
LABEL_39:
      v232 = v231;
      goto LABEL_48;
    }

    v233 = objc_msgSend_translator(v207, v217, v218, v219);

    if (v233)
    {
      v237 = objc_msgSend_translator(v372, v234, v235, v236);
      v240 = objc_msgSend_viewTractRefForChromeTractRef_(v237, v238, v373, v239);

      if (objc_msgSend_isValid(v240, v241, v242, v243))
      {
        v244 = [TSTUIDRectRef alloc];
        v232 = objc_msgSend_initWithCalcEngine_viewTractRef_(v244, v245, identifiersCopy, v240);
      }

      else
      {
        v232 = 0;
      }
    }

    else
    {
      if (objc_msgSend_isValid(v373, v234, v235, v236))
      {
        v246 = [TSTUIDRectRef alloc];
        v231 = objc_msgSend_initWithCalcEngine_viewTractRef_(v246, v247, identifiersCopy, v373);
        goto LABEL_39;
      }

      v232 = 0;
    }

LABEL_48:
    v248 = [TSTReferenceNode alloc];
    v252 = objc_msgSend_context(self, v249, v250, v251);
    v256 = objc_msgSend_tableUID(tableCopy, v253, v254, v255);
    v375.origin = cell;
    v375.size = v256;
    v376 = v257;
    Index_lastIndex = objc_msgSend_initWithContext_calculationEngine_uidRectRef_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v248, v257, v252, identifiersCopy, v232, &v375, 0, 0);

    v261 = objc_msgSend_firstIndex(self, v258, v259, v260);
    objc_msgSend_setFirstIndex_(Index_lastIndex, v262, v261, v263);
    v267 = objc_msgSend_lastIndex(self, v264, v265, v266);
    objc_msgSend_setLastIndex_(Index_lastIndex, v268, v267, v269);
    v273 = objc_msgSend_whitespaceAfter(self, v270, v271, v272);
    objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v274, v273, v275);

    if (v383[1])
    {
      v383[2] = v383[1];
      operator delete(v383[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (Index_lastIndex)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_53:
  v276 = [TSCEReferenceParsingContext alloc];
  v280 = objc_msgSend_baseTableModel(tableCopy, v277, v278, v279);
  v284 = objc_msgSend_identifierComponents(self, v281, v282, v283);
  v286 = objc_msgSend_initWithContextResolver_components_(v276, v285, v280, v284);

  objc_msgSend_setReferenceIsComplete_(v286, v287, 1, v288);
  objc_msgSend_setFilterColons_(v286, v289, 0, v290);
  v291 = [TSCEQuotedRefPathSplitter alloc];
  v295 = objc_msgSend_identifierComponents(self, v292, v293, v294);
  v299 = objc_msgSend_aggregateFunction(self, v296, v297, v298);
  v301 = objc_msgSend_initWithComponents_aggregateFunction_(v291, v300, v295, v299);

  objc_msgSend_setRefPathSplitter_(v286, v302, v301, v303);
  v307 = objc_msgSend_refParser(identifiersCopy, v304, v305, v306);
  v310 = objc_msgSend_parseAsCategoryRefWithParsingContext_(v307, v308, v286, v309);

  v314 = objc_msgSend_groupByUid(v310, v311, v312, v313);
  if (v314 | v315)
  {
    objc_msgSend_setType_(v310, v315, 11, v316);
    v317 = [TSTReferenceNode alloc];
    v321 = objc_msgSend_context(self, v318, v319, v320);
    v325 = objc_msgSend_tableUID(tableCopy, v322, v323, v324);
    __p[0] = cell;
    __p[1] = v325;
    v383[0] = v326;
    Index_lastIndex = objc_msgSend_initWithContext_calculationEngine_categoryRef_hostCellRef_referenceColorHelper_(v317, v326, v321, identifiersCopy, v310, __p, 0);

    v330 = objc_msgSend_firstIndex(self, v327, v328, v329);
    objc_msgSend_setFirstIndex_(Index_lastIndex, v331, v330, v332);
    v336 = objc_msgSend_lastIndex(self, v333, v334, v335);
    objc_msgSend_setLastIndex_(Index_lastIndex, v337, v336, v338);
    v342 = objc_msgSend_whitespaceAfter(self, v339, v340, v341);
    objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v343, v342, v344);
  }

  else
  {
    Index_lastIndex = 0;
  }

  if (!Index_lastIndex)
  {
    v346 = [TSTVariableNode alloc];
    v350 = objc_msgSend_context(self, v347, v348, v349);
    v354 = objc_msgSend_fullIdentifier(self, v351, v352, v353);
    v358 = objc_msgSend_firstIndex(self, v355, v356, v357);
    v362 = objc_msgSend_lastIndex(self, v359, v360, v361);
    Index_lastIndex = objc_msgSend_initWithContext_identifier_symbol_firstIndex_lastIndex_(v346, v363, v350, v354, 0, v358, v362);

    v367 = objc_msgSend_whitespaceAfter(self, v364, v365, v366);
    objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v368, v367, v369);

    goto LABEL_58;
  }

LABEL_57:
  objc_msgSend_setObject_forUncopiedKey_(mapCopy, v19, Index_lastIndex, self);
LABEL_58:

  return Index_lastIndex;
}

- (id)transformToUseScopedVariables:(void *)variables
{
  selfCopy = self;
  v8 = objc_msgSend_fullIdentifier(selfCopy, v5, v6, v7);
  v9 = TSCESymbolTable::lookup(variables, v8, 0);

  if (v9)
  {
    v10 = TSCESymbolTable::identifierForSymbol(variables, v9);
    v11 = [TSTVariableNode alloc];
    v15 = objc_msgSend_context(selfCopy, v12, v13, v14);
    Index = objc_msgSend_firstIndex(selfCopy, v16, v17, v18);
    v23 = objc_msgSend_lastIndex(selfCopy, v20, v21, v22);
    Index_lastIndex = objc_msgSend_initWithContext_identifier_symbol_firstIndex_lastIndex_(v11, v24, v15, v10, v9, Index, v23);

    selfCopy = Index_lastIndex;
  }

  return selfCopy;
}

- (id)trimIdentifier:(void *)identifier
{
  selfCopy = self;
  v8 = objc_msgSend_fullIdentifier(selfCopy, v5, v6, v7);
  v9 = TSCESymbolTable::lookup(identifier, v8, 0);

  if (v9)
  {
    v10 = TSCESymbolTable::identifierForSymbol(identifier, v9);
    v14 = objc_msgSend_fullIdentifier(selfCopy, v11, v12, v13);
    isEqualToString = objc_msgSend_isEqualToString_(v10, v15, v14, v16);

    if ((isEqualToString & 1) == 0)
    {
      v18 = [TSTIdentifierNode alloc];
      v22 = objc_msgSend_context(selfCopy, v19, v20, v21);
      Index = objc_msgSend_firstIndex(selfCopy, v23, v24, v25);
      v30 = objc_msgSend_lastIndex(selfCopy, v27, v28, v29);
      Index_lastIndex = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v18, v31, v22, v10, Index, v30);

      v36 = objc_msgSend_symbol(selfCopy, v33, v34, v35);
      objc_msgSend_setSymbol_(Index_lastIndex, v37, v36, v38);
      v42 = objc_msgSend_aggregateFunction(selfCopy, v39, v40, v41);
      objc_msgSend_setAggregateFunction_(Index_lastIndex, v43, v42, v44);

      selfCopy = Index_lastIndex;
    }
  }

  return selfCopy;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options
{
  optionsCopy = options;
  textCopy = text;
  if (optionsCopy)
  {
    v9 = objc_msgSend_whitespaceBefore(self, v6, v7, v8);

    if (v9)
    {
      v13 = objc_msgSend_whitespaceBefore(self, v10, v11, v12);
      objc_msgSend_takeText_(textCopy, v14, v13, v15);
    }
  }

  v16 = [TSTWPTokenAttachment alloc];
  v20 = objc_msgSend_context(self, v17, v18, v19);
  v22 = objc_msgSend_initWithContext_expressionNode_(v16, v21, v20, self);

  objc_msgSend_insertUIGraphicalAttachment_(textCopy, v23, v22, v24);
  if (optionsCopy)
  {
    v28 = objc_msgSend_whitespaceAfter(self, v25, v26, v27);

    if (v28)
    {
      v32 = objc_msgSend_whitespaceAfter(self, v29, v30, v31);
      objc_msgSend_takeText_(textCopy, v33, v32, v34);
    }
  }
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v28 = objc_msgSend_children(self, a2, array, *&cell, table);
  v10 = objc_msgSend_count(v28, v7, v8, v9);

  if (v10)
  {
    v13 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTIdentifierNode buildASTNodeArray:hostCell:symbolTable:]", v12);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTIdentifierNode.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v29, v16, 442, 0, "IdentifierNode shouldn't have any children");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  TSCEASTNodeArray::appendReferenceError(array, v11);
  v24 = objc_msgSend_whitespaceAfter(self, v21, v22, v23);

  if (v24)
  {
    v30 = objc_msgSend_whitespaceAfter(self, v25, v26, v27);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v30);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[206], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221480138, off_2812E4498[206]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 4))
  {
    v7 = *(archive + 4);
  }

  else
  {
    v7 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  v29.receiver = self;
  v29.super_class = TSTIdentifierNode;
  [(TSTExpressionNode *)&v29 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v10 = *(archive + 4);
  if (v10)
  {
    v11 = *(archive + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      v11 = *v11;
    }

    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v11, v9);
    if (v12)
    {
      v13 = [TSCEQuotedRefPathSplitter alloc];
      v16 = objc_msgSend_initWithReferenceString_(v13, v14, v12, v15);
      v22 = objc_msgSend_numComponents(v16, v17, v18, v19);
      if (v22)
      {
        for (i = 0; i != v22; ++i)
        {
          v24 = objc_msgSend_componentAtIndex_(v16, v20, i, v21);
          v26 = objc_msgSend_trimmedStringStartingAtWord_withPreserveFlags_(v24, v25, 0, 1);
          objc_msgSend_addIdentifierComponent_(self, v27, v26, v28);
        }
      }
    }

    v10 = *(archive + 4);
  }

  self->_symbol = *(archive + 10) & (v10 << 29 >> 31);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 2u;
  v7 = *(archive + 4);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v8);
    *(archive + 4) = v7;
  }

  v20.receiver = self;
  v20.super_class = TSTIdentifierNode;
  [(TSTExpressionNode *)&v20 saveToArchive:v7 archiver:archiverCopy];
  v12 = objc_msgSend_fullIdentifier(self, v9, v10, v11);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    v18 = objc_msgSend_UTF8String(v14, v15, v16, v17);
    sub_22147FF8C(archive, v18);
  }

  symbol = self->_symbol;
  if (symbol)
  {
    *(archive + 4) |= 4u;
    *(archive + 10) = symbol;
  }
}

@end