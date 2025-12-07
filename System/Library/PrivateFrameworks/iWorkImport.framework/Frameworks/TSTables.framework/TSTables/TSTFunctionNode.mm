@interface TSTFunctionNode
+ (id)newDefaultFunctionNodeWithContext:(id)context functionIndex:(unsigned __int16)index parentFunctionIndex:(unsigned __int16)functionIndex argumentIndexInParent:(unsigned int)parent;
+ (id)newSumNodeWithContext:(id)context children:(id)children;
+ (id)placeholderWithContext:(id)context argSpec:(id)spec;
- (BOOL)isDescendantOfChild:(id)child;
- (BOOL)isEmptyFunctionNode;
- (BOOL)isEqualToExpressionNode:(id)node;
- (BOOL)isInvalidFunction;
- (BOOL)isMissingRequiredArgument;
- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions;
- (TSTFunctionNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex;
- (TSTFunctionNode)initWithContext:(id)context functionIndex:(unsigned __int16)index children:(id)children firstIndex:(unint64_t)firstIndex lastIndex:(unint64_t)lastIndex;
- (id)convertEmptyArgumentsToPlaceholders;
- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map;
- (id)exportString;
- (id)formulaPlainText;
- (id)initAsCopyOf:(id)of intoContext:(id)context children:(id)children;
- (id)mostSpecificNodeContainingIndex:(unint64_t)index correspondingIndex:(unint64_t)correspondingIndex;
- (id)p_functionSpec;
- (id)p_whitespaceBeforeParam:(unint64_t)param;
- (id)string;
- (id)transformToUseScopedVariables:(void *)variables;
- (id)variableUsageErrorWithSymbolTable:(void *)table;
- (unint64_t)allowsNewIdentifier;
- (unint64_t)lastIndexOfSubtree;
- (unint64_t)maxArguments;
- (unint64_t)minArguments;
- (unint64_t)numArguments;
- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0;
- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table;
- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options unwrapped:(BOOL)unwrapped;
- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_fixupNodeIfFunctionNode:(id)node;
- (void)p_resetArgumentSpecForChildren;
- (void)resurrectModeTokens;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setChildren:(id)children;
- (void)setFunctionEndNode:(id)node;
@end

@implementation TSTFunctionNode

+ (id)placeholderWithContext:(id)context argSpec:(id)spec
{
  contextCopy = context;
  specCopy = spec;
  v7 = [TSTArgumentPlaceholderNode alloc];
  Index_lastIndex = objc_msgSend_initWithContext_argumentSpec_firstIndex_lastIndex_(v7, v8, contextCopy, specCopy, 0, 0);

  return Index_lastIndex;
}

+ (id)newDefaultFunctionNodeWithContext:(id)context functionIndex:(unsigned __int16)index parentFunctionIndex:(unsigned __int16)functionIndex argumentIndexInParent:(unsigned int)parent
{
  functionIndexCopy = functionIndex;
  indexCopy = index;
  contextCopy = context;
  v12 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v10, indexCopy, v11);
  v16 = objc_msgSend_numArguments(v12, v13, v14, v15);
  v19 = v16;
  v78 = indexCopy;
  if (indexCopy == 364 && (functionIndexCopy == 372 || functionIndexCopy == 366) && v16 <= parent + 1)
  {
    v19 = parent + 1;
  }

  v20 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v17, v19, v18);
  v24 = objc_msgSend_objectLocale(contextCopy, v21, v22, v23);
  if (v19)
  {
    v26 = v24;
    v27 = 0;
    v80 = v12;
    v81 = v20;
    v79 = v19;
    do
    {
      v28 = objc_msgSend_argumentSpecForIndex_numArgs_(v12, v25, v27, v19);
      if (objc_msgSend_argumentType(v28, v29, v30, v31) == 19)
      {
        v34 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v32, 364, v33);
        v35 = objc_opt_new();
        v39 = objc_msgSend_numLambdaIdentifiers(v28, v36, v37, v38);
        if (v39)
        {
          v43 = 0;
          v44 = v39;
          do
          {
            v46 = objc_msgSend_localizedLambdaIdentifierForLambdaIndex_locale_(v28, v40, v43, v26);
            if (!v46)
            {
              v47 = objc_msgSend_argumentSpecForIndex_numArgs_(v34, v45, v43, 0);
              v46 = objc_msgSend_localizedArgumentNameForLocale_(v47, v48, v26, v49);
            }

            v50 = [TSTIdentifierNode alloc];
            Index_lastIndex = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v50, v51, contextCopy, v46, 0, 0);
            objc_msgSend_addObject_(v35, v53, Index_lastIndex, v54);

            ++v43;
          }

          while (v44 != v43);
        }

        v55 = objc_msgSend_numArguments(v34, v40, v41, v42);
        v59 = objc_msgSend_numArguments(v34, v56, v57, v58);
        v61 = objc_msgSend_argumentSpecForIndex_numArgs_(v34, v60, v55 - 1, v59);
        v62 = [TSTArgumentPlaceholderNode alloc];
        v64 = objc_msgSend_initWithContext_argumentSpec_firstIndex_lastIndex_(v62, v63, contextCopy, v61, 0, 0);
        objc_msgSend_addObject_(v35, v65, v64, v66);
        v67 = [TSTFunctionNode alloc];
        v69 = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v67, v68, contextCopy, 364, v35, 0, 0);

        v12 = v80;
        v20 = v81;
        v19 = v79;
        if (v69)
        {
LABEL_18:
          objc_msgSend_addObject_(v20, v70, v69, v71);
          goto LABEL_19;
        }
      }

      else
      {
        v69 = objc_msgSend_placeholderWithContext_argSpec_(self, v32, contextCopy, v28);
        if (v69)
        {
          goto LABEL_18;
        }
      }

      v72 = [TSTArgumentPlaceholderNode alloc];
      v69 = objc_msgSend_initWithContext_argumentSpec_firstIndex_lastIndex_(v72, v73, contextCopy, v28, 0, 0);
      if (v69)
      {
        goto LABEL_18;
      }

LABEL_19:

      ++v27;
    }

    while (v27 != v19);
  }

  v74 = [self alloc];
  v76 = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v74, v75, contextCopy, v78, v20, 0, 0);

  return v76;
}

+ (id)newSumNodeWithContext:(id)context children:(id)children
{
  contextCopy = context;
  childrenCopy = children;
  v8 = [self alloc];
  Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v8, v9, contextCopy, 168, childrenCopy, 0, 0);

  return Index_lastIndex;
}

- (TSTFunctionNode)initWithContext:(id)context functionIndex:(unsigned __int16)index children:(id)children firstIndex:(unint64_t)firstIndex lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  childrenCopy = children;
  v24.receiver = self;
  v24.super_class = TSTFunctionNode;
  v14 = [(TSTExpressionNode *)&v24 initWithContext:contextCopy children:childrenCopy firstIndex:firstIndex lastIndex:lastIndex];
  v18 = v14;
  if (v14)
  {
    v14->_functionIndex = index;
    objc_msgSend_p_resetArgumentSpecForChildren(v14, v15, v16, v17);
    v19 = [TSTFunctionEndNode alloc];
    Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v19, v20, contextCopy, v18, firstIndex, lastIndex);
    functionEndNode = v18->_functionEndNode;
    v18->_functionEndNode = Index_lastIndex;
  }

  return v18;
}

- (TSTFunctionNode)initWithContext:(id)context children:(id)children firstIndex:(unint64_t)index lastIndex:(unint64_t)lastIndex
{
  contextCopy = context;
  childrenCopy = children;
  if (objc_msgSend_count(childrenCopy, v12, v13, v14))
  {
    Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(self, v15, contextCopy, 168, childrenCopy, index, lastIndex);
  }

  else
  {
    Index_lastIndex = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(self, v15, contextCopy, 104, childrenCopy, index, lastIndex);
  }

  v17 = Index_lastIndex;

  return v17;
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
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTFunctionNode initAsCopyOf:intoContext:children:]", v12);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v17);
    v20 = @"nil";
    if (ofCopy)
    {
      v20 = ofCopy;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v19, 204, 0, "Unexpected object in initAsCopyOf:... expected TSTFunctionNode, got %@", v20);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v39.receiver = self;
  v39.super_class = TSTFunctionNode;
  v24 = [(TSTExpressionNode *)&v39 initAsCopyOf:ofCopy intoContext:contextCopy children:childrenCopy];
  v25 = v24;
  if (v24)
  {
    v24[68] = *(v13 + 136);
    v26 = [TSTFunctionEndNode alloc];
    Index = objc_msgSend_firstIndex(*(v13 + 128), v27, v28, v29);
    v34 = objc_msgSend_lastIndex(*(v13 + 128), v31, v32, v33);
    Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v26, v35, contextCopy, v25, Index, v34);
    v37 = *(v25 + 128);
    *(v25 + 128) = Index_lastIndex;

    objc_storeStrong((v25 + 160), *(v13 + 160));
    objc_storeStrong((v25 + 144), *(v13 + 144));
    objc_storeStrong((v25 + 152), *(v13 + 152));
    objc_storeStrong((v25 + 168), *(v13 + 168));
  }

  return v25;
}

- (void)p_fixupNodeIfFunctionNode:(id)node
{
  nodeCopy = node;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [TSTFunctionEndNode alloc];
    v8 = objc_msgSend_context(self, v5, v6, v7);
    Index = objc_msgSend_firstIndex(self, v9, v10, v11);
    v16 = objc_msgSend_lastIndex(self, v13, v14, v15);
    Index_lastIndex = objc_msgSend_initWithContext_functionNode_firstIndex_lastIndex_(v4, v17, v8, nodeCopy, Index, v16);

    objc_msgSend_setFunctionEndNode_(nodeCopy, v19, Index_lastIndex, v20);
  }
}

- (id)copyByResolvingIdentifiers:(id)identifiers hostTable:(id)table baseHostCell:(TSUCellCoord)cell forceReferenceInterpretation:(BOOL)interpretation symbolTable:(void *)symbolTable oldToNewNodeMap:(id)map
{
  interpretationCopy = interpretation;
  identifiersCopy = identifiers;
  tableCopy = table;
  mapCopy = map;
  selfCopy = self;
  if (objc_msgSend_isLambdaFunction(self, v12, v13, v14))
  {
    v369 = objc_msgSend_forceReferenceInterpretationOfChildren(self, v15, v16, v17);
    v21 = objc_msgSend_children(self, v18, v19, v20);
    v368 = v21;
    v28 = objc_msgSend_count(v21, v22, v23, v24);
    if (!v28)
    {
      inited = 0;
      goto LABEL_68;
    }

    v360 = objc_msgSend_lastObject(v21, v25, v26, v27);
    v366 = objc_opt_new();
    TSCESymbolTable::beginScope(symbolTable);
    v31 = v28 - 1;
    if (v28 == 1)
    {
LABEL_4:
      v35 = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(v360, v29, identifiersCopy, tableCopy, cell, v369, symbolTable, mapCopy);
      if (v35)
      {
        objc_msgSend_p_fixupNodeIfFunctionNode_(selfCopy, v32, v35, v34);
        objc_msgSend_addObject_(v366, v36, v35, v37);
      }

      TSCESymbolTable::endScope(symbolTable, v32, v33, v34);
      v38 = [TSTFunctionNode alloc];
      v42 = objc_msgSend_context(selfCopy, v39, v40, v41);
      inited = objc_msgSend_initAsCopyOf_intoContext_children_(v38, v43, selfCopy, v42, v366);

      if (inited)
      {
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    v201 = 0;
    while (1)
    {
      v202 = objc_msgSend_objectAtIndex_(v368, v29, v201, v30);
      if (objc_msgSend_isIdentifierNode(v202, v203, v204, v205))
      {
        v209 = objc_msgSend_string(v202, v206, v207, v208);
        v213 = TSCESymbolTable::trimIdentifierString(v209, v210, v211, v212);

        Symbol = TSCESymbolTable::createSymbol(symbolTable, v213);
        v215 = [TSTIdentifierNode alloc];
        v219 = objc_msgSend_context(v202, v216, v217, v218);
        Index = objc_msgSend_firstIndex(v202, v220, v221, v222);
        v227 = objc_msgSend_lastIndex(v202, v224, v225, v226);
        Index_lastIndex = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v215, v228, v219, v213, Index, v227);

        objc_msgSend_setSymbol_(Index_lastIndex, v230, Symbol, v231);
        v235 = objc_msgSend_whitespaceBefore(v202, v232, v233, v234);
        objc_msgSend_setWhitespaceBefore_(Index_lastIndex, v236, v235, v237);

        v241 = objc_msgSend_whitespaceAfter(v202, v238, v239, v240);
        objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v242, v241, v243);
        goto LABEL_50;
      }

      if (objc_msgSend_isVariableNode(v202, v206, v207, v208))
      {
        break;
      }

      if (objc_msgSend_isArgumentPlaceholderNode(v202, v244, v245, v246))
      {
        v303 = objc_msgSend_string(v202, v300, v301, v302);
        v213 = TSCESymbolTable::trimIdentifierString(v303, v304, v305, v306);

        if (objc_msgSend_length(v213, v307, v308, v309))
        {
          v310 = TSCESymbolTable::createSymbol(symbolTable, v213);
          v311 = [TSTIdentifierNode alloc];
          v315 = objc_msgSend_context(v202, v312, v313, v314);
          v319 = objc_msgSend_firstIndex(v202, v316, v317, v318);
          v323 = objc_msgSend_lastIndex(v202, v320, v321, v322);
          Index_lastIndex = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v311, v324, v315, v213, v319, v323);

          objc_msgSend_setSymbol_(Index_lastIndex, v325, v310, v326);
          v330 = objc_msgSend_whitespaceBefore(v202, v327, v328, v329);
          objc_msgSend_setWhitespaceBefore_(Index_lastIndex, v331, v330, v332);

          v241 = objc_msgSend_whitespaceAfter(v202, v333, v334, v335);
          objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v336, v241, v337);
LABEL_50:

LABEL_51:
          goto LABEL_52;
        }

LABEL_58:
        Index_lastIndex = 0;
        goto LABEL_51;
      }

      Index_lastIndex = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(v202, v300, identifiersCopy, tableCopy, cell, v369, symbolTable, mapCopy);
      objc_msgSend_p_fixupNodeIfFunctionNode_(selfCopy, v344, Index_lastIndex, v345);
LABEL_52:
      if (Index_lastIndex)
      {
        objc_msgSend_addObject_(v366, v338, Index_lastIndex, v339);
        if (v202)
        {
          if (objc_msgSend_isIdentifierNode(Index_lastIndex, v340, v341, v342))
          {
            objc_msgSend_setObject_forUncopiedKey_(mapCopy, v343, Index_lastIndex, v202);
          }
        }
      }

      if (v31 == ++v201)
      {
        goto LABEL_4;
      }
    }

    objc_opt_class();
    v213 = TSUDynamicCast();
    v250 = objc_msgSend_identifier(v213, v247, v248, v249);

    if (!v250)
    {
      v254 = MEMORY[0x277D81150];
      v255 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v251, "[TSTFunctionNode copyByResolvingIdentifiers:hostTable:baseHostCell:forceReferenceInterpretation:symbolTable:oldToNewNodeMap:]", v253);
      v258 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v256, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v257);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v254, v259, v255, v258, 278, 0, "We require the identifier name is set to convert this this variable back to an identifier");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v260, v261, v262);
    }

    v263 = objc_msgSend_identifier(v213, v251, v252, v253);

    if (v263)
    {
      v267 = objc_msgSend_identifier(v213, v264, v265, v266);
      v241 = TSCESymbolTable::trimIdentifierString(v267, v268, v269, v270);

      v271 = TSCESymbolTable::createSymbol(symbolTable, v241);
      v272 = [TSTIdentifierNode alloc];
      v276 = objc_msgSend_context(v202, v273, v274, v275);
      v280 = objc_msgSend_firstIndex(v202, v277, v278, v279);
      v284 = objc_msgSend_lastIndex(v202, v281, v282, v283);
      Index_lastIndex = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v272, v285, v276, v241, v280, v284);

      objc_msgSend_setSymbol_(Index_lastIndex, v286, v271, v287);
      v291 = objc_msgSend_whitespaceBefore(v213, v288, v289, v290);
      objc_msgSend_setWhitespaceBefore_(Index_lastIndex, v292, v291, v293);

      v297 = objc_msgSend_whitespaceAfter(v213, v294, v295, v296);
      objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v298, v297, v299);

      goto LABEL_50;
    }

    goto LABEL_58;
  }

  if (!objc_msgSend_isLetFunction(self, v15, v16, v17))
  {
    v372.receiver = self;
    v372.super_class = TSTFunctionNode;
    inited = [(TSTExpressionNode *)&v372 copyByResolvingIdentifiers:identifiersCopy hostTable:tableCopy baseHostCell:cell forceReferenceInterpretation:interpretationCopy symbolTable:symbolTable oldToNewNodeMap:mapCopy];
    goto LABEL_69;
  }

  v361 = objc_msgSend_forceReferenceInterpretationOfChildren(self, v46, v47, v48);
  v368 = objc_msgSend_children(self, v49, v50, v51);
  v55 = objc_msgSend_count(v368, v52, v53, v54);
  v59 = v55;
  inited = 0;
  if (v55 < 3 || (v55 & 1) == 0)
  {
    goto LABEL_68;
  }

  v360 = objc_msgSend_lastObject(v368, v56, v57, v58);
  v366 = objc_opt_new();
  v60 = 0;
  v61 = 1;
  do
  {
    TSCESymbolTable::beginScope(symbolTable);
    v64 = objc_msgSend_objectAtIndex_(v368, v62, v61 - 1, v63);
    v370 = objc_msgSend_objectAtIndex_(v368, v65, v61, v66);
    if (objc_msgSend_isIdentifierNode(v64, v67, v68, v69))
    {
      v73 = objc_msgSend_string(v64, v70, v71, v72);
      v77 = TSCESymbolTable::trimIdentifierString(v73, v74, v75, v76);

      v78 = TSCESymbolTable::nextSymbol(symbolTable);
      v79 = [TSTIdentifierNode alloc];
      v83 = objc_msgSend_context(v64, v80, v81, v82);
      v87 = objc_msgSend_firstIndex(v64, v84, v85, v86);
      v91 = objc_msgSend_lastIndex(v64, v88, v89, v90);
      v93 = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v79, v92, v83, v77, v87, v91);

      objc_msgSend_setSymbol_(v93, v94, v78, v95);
      v99 = objc_msgSend_whitespaceBefore(v64, v96, v97, v98);
      objc_msgSend_setWhitespaceBefore_(v93, v100, v99, v101);

      v105 = objc_msgSend_whitespaceAfter(v64, v102, v103, v104);
      objc_msgSend_setWhitespaceAfter_(v93, v106, v105, v107);
LABEL_24:

      v190 = v77;
      goto LABEL_25;
    }

    if (objc_msgSend_isVariableNode(v64, v70, v71, v72))
    {
      objc_opt_class();
      v105 = TSUDynamicCast();
      v114 = objc_msgSend_identifier(v105, v111, v112, v113);

      if (!v114)
      {
        v118 = MEMORY[0x277D81150];
        v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "[TSTFunctionNode copyByResolvingIdentifiers:hostTable:baseHostCell:forceReferenceInterpretation:symbolTable:oldToNewNodeMap:]", v117);
        v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v121);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v123, v119, v122, 396, 0, "We require the identifier name is set to convert this this variable back to an identifier");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v124, v125, v126);
      }

      v127 = objc_msgSend_identifier(v105, v115, v116, v117);

      if (v127)
      {
        v131 = objc_msgSend_identifier(v105, v128, v129, v130);
        v77 = TSCESymbolTable::trimIdentifierString(v131, v132, v133, v134);

        v78 = TSCESymbolTable::nextSymbol(symbolTable);
        v135 = [TSTIdentifierNode alloc];
        v139 = objc_msgSend_context(v64, v136, v137, v138);
        v143 = objc_msgSend_firstIndex(v64, v140, v141, v142);
        v147 = objc_msgSend_lastIndex(v64, v144, v145, v146);
        v93 = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v135, v148, v139, v77, v143, v147);

        objc_msgSend_setSymbol_(v93, v149, v78, v150);
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (objc_msgSend_isArgumentPlaceholderNode(v64, v108, v109, v110))
    {
      v154 = objc_msgSend_string(v64, v151, v152, v153);
      v105 = TSCESymbolTable::trimIdentifierString(v154, v155, v156, v157);

      if (objc_msgSend_length(v105, v158, v159, v160))
      {
        v78 = TSCESymbolTable::nextSymbol(symbolTable);
        v161 = [TSTIdentifierNode alloc];
        v165 = objc_msgSend_context(v64, v162, v163, v164);
        v169 = objc_msgSend_firstIndex(v64, v166, v167, v168);
        v173 = objc_msgSend_lastIndex(v64, v170, v171, v172);
        v93 = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v161, v174, v165, v105, v169, v173);

        objc_msgSend_setSymbol_(v93, v175, v78, v176);
        v180 = objc_msgSend_whitespaceBefore(v64, v177, v178, v179);
        objc_msgSend_setWhitespaceBefore_(v93, v181, v180, v182);

        v186 = objc_msgSend_whitespaceAfter(v64, v183, v184, v185);
        objc_msgSend_setWhitespaceAfter_(v93, v187, v186, v188);

LABEL_23:
        v77 = 0;
        goto LABEL_24;
      }

LABEL_22:
      v93 = 0;
      LODWORD(v78) = 0;
      goto LABEL_23;
    }

    v93 = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(v64, v151, identifiersCopy, tableCopy, cell, v361, symbolTable, mapCopy);
    v190 = 0;
    objc_msgSend_p_fixupNodeIfFunctionNode_(selfCopy, v199, v93, v200);
    LODWORD(v78) = 0;
LABEL_25:
    v194 = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(v370, v189, identifiersCopy, tableCopy, cell, v361, symbolTable, mapCopy);
    if (v78)
    {
      TSCESymbolTable::setSymbol(symbolTable, v78, v190);
    }

    if (v93)
    {
      objc_msgSend_addObject_(v366, v191, v93, v193);
    }

    if (v194)
    {
      objc_msgSend_p_fixupNodeIfFunctionNode_(selfCopy, v191, v194, v193);
      objc_msgSend_addObject_(v366, v195, v194, v196);
    }

    if (v93 && objc_msgSend_isIdentifierNode(v93, v191, v192, v193))
    {
      objc_msgSend_setObject_forUncopiedKey_(mapCopy, v197, v93, v64);
    }

    v61 += 2;
    --v60;
  }

  while (v61 < v59);
  v346 = objc_msgSend_copyByResolvingIdentifiers_hostTable_baseHostCell_forceReferenceInterpretation_symbolTable_oldToNewNodeMap_(v360, v198, identifiersCopy, tableCopy, cell, v361, symbolTable, mapCopy);
  v35 = v346;
  if (v346)
  {
    objc_msgSend_p_fixupNodeIfFunctionNode_(selfCopy, v347, v346, v349);
    objc_msgSend_addObject_(v366, v350, v35, v351);
  }

  if (v60)
  {
    do
    {
      TSCESymbolTable::endScope(symbolTable, v347, v348, v349);
    }

    while (!__CFADD__(v60++, 1));
  }

  v353 = [TSTFunctionNode alloc];
  v357 = objc_msgSend_context(selfCopy, v354, v355, v356);
  inited = objc_msgSend_initAsCopyOf_intoContext_children_(v353, v358, selfCopy, v357, v366);

  if (inited)
  {
LABEL_66:
    objc_msgSend_setObject_forUncopiedKey_(mapCopy, v45, inited, selfCopy);
  }

LABEL_67:

LABEL_68:
LABEL_69:

  return inited;
}

- (id)convertEmptyArgumentsToPlaceholders
{
  v5 = objc_msgSend_children(self, a2, v2, v3);
  v9 = objc_msgSend_count(v5, v6, v7, v8);

  if (v9 && ((objc_msgSend_isLetFunction(self, v10, v11, v12) & 1) != 0 || (objc_msgSend_isLambdaFunction(self, v13, v14, v15) & 1) != 0))
  {
    v16 = objc_msgSend_children(self, v13, v14, v15);
    v74 = objc_msgSend_mutableCopy(v16, v17, v18, v19);
    v23 = objc_msgSend_functionIndex(self, v20, v21, v22);
    v26 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v24, v23, v25);
    v33 = v9;
    if (objc_msgSend_maxArguments(v26, v27, v28, v29) == -1 || ((v34 = objc_msgSend_maxArguments(v26, v30, v31, v32), v34 >= v9) ? (v33 = v9) : (v33 = v34), v34))
    {
      v73 = v26;
      v35 = 0;
      do
      {
        v36 = objc_msgSend_objectAtIndexedSubscript_(v16, v30, v35, v32, v73);
        v40 = objc_msgSend_convertEmptyArgumentsToPlaceholders(v36, v37, v38, v39);

        if (objc_msgSend_isEmptyNode(v40, v41, v42, v43) && (objc_msgSend_isArgumentPlaceholderNode(v40, v44, v45, v46) & 1) == 0)
        {
          v48 = objc_msgSend_argumentSpecForIndex_numArgs_(v73, v47, v35, v9);
          v49 = [TSTArgumentPlaceholderNode alloc];
          v53 = objc_msgSend_context(self, v50, v51, v52);
          Index = objc_msgSend_firstIndex(v40, v54, v55, v56);
          v61 = objc_msgSend_lastIndex(v40, v58, v59, v60);
          Index_lastIndex = objc_msgSend_initWithContext_argumentSpec_firstIndex_lastIndex_(v49, v62, v53, v48, Index, v61);

          objc_msgSend_replaceObjectAtIndex_withObject_(v74, v64, v35, Index_lastIndex);
        }

        ++v35;
      }

      while (v33 != v35);
    }

    v65 = [TSTFunctionNode alloc];
    v69 = objc_msgSend_context(self, v66, v67, v68);
    inited = objc_msgSend_initAsCopyOf_intoContext_children_(v65, v70, self, v69, v74);
  }

  else
  {
    inited = self;
  }

  return inited;
}

- (id)variableUsageErrorWithSymbolTable:(void *)table
{
  if ((objc_msgSend_isLambdaFunction(self, a2, table, v3) & 1) != 0 || objc_msgSend_isLetFunction(self, v6, v7, v8))
  {
    v9 = objc_msgSend_children(self, v6, v7, v8);
    v13 = objc_msgSend_count(v9, v10, v11, v12);
    v17 = objc_msgSend_functionIndex(self, v14, v15, v16);
    v20 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v18, v17, v19);
    if (v13 > objc_msgSend_maxArguments(v20, v21, v22, v23))
    {
      v27 = objc_msgSend_tooManyVariablesError(TSCEError, v24, v25, v26);
LABEL_27:

      goto LABEL_28;
    }

    v28 = v13 - 1;
    v29 = v13 > 1;
    if (v13 >= 2)
    {
      TSCESymbolTable::beginScope(table);
      v35 = 0;
      if (objc_msgSend_isLetFunction(self, v30, v31, v32))
      {
        v36 = 2;
      }

      else
      {
        v36 = 1;
      }

      while (1)
      {
        v37 = objc_msgSend_objectAtIndexedSubscript_(v9, v33, v35, v34);
        if ((objc_msgSend_isIdentifierNode(v37, v38, v39, v40) & 1) == 0 && !objc_msgSend_isArgumentPlaceholderNode(v37, v41, v42, v43))
        {
          if (objc_msgSend_isEmptyNode(v37, v41, v42, v43))
          {
            objc_msgSend_isLambdaFunction(self, v66, v67, v68);
          }

          v69 = objc_msgSend_functionIndex(self, v66, v67, v68);
          v44 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v70, v69, v71);
          v65 = objc_msgSend_requiresIdentifierError_argIndex_(TSCEError, v72, v44, (v35 + 1));
          goto LABEL_25;
        }

        v44 = objc_msgSend_string(v37, v41, v42, v43);
        if ((TSCESymbolTable::isAcceptableIdentifier(v44, v45) & 1) == 0)
        {
          break;
        }

        if (TSCESymbolTable::lookup(table, &v44->_locale, 1))
        {
          v65 = objc_msgSend_repeatedIdentifierError_(TSCEError, v48, v44, v49);
          goto LABEL_25;
        }

        TSCESymbolTable::createSymbol(table, &v44->_locale);

        v35 += v36;
        if (v35 >= v28)
        {
          goto LABEL_14;
        }
      }

      v53 = objc_msgSend_argumentSpecForIndex_(v20, v46, v35, v47);
      if (objc_msgSend_argumentType(v53, v54, v55, v56) == 20)
      {
        v60 = objc_msgSend_functionIndex(self, v57, v58, v59);
        v63 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v61, v60, v62);
        v27 = objc_msgSend_requiresIdentifierError_argIndex_(TSCEError, v64, v63, (v35 + 1));

        goto LABEL_26;
      }

      v65 = objc_msgSend_unacceptableIdentifierError_(TSCEError, v57, v44, v59);
LABEL_25:
      v27 = v65;
LABEL_26:

      goto LABEL_27;
    }

LABEL_14:
  }

  else
  {
    v29 = 0;
  }

  v74.receiver = self;
  v74.super_class = TSTFunctionNode;
  v27 = [(TSTExpressionNode *)&v74 variableUsageErrorWithSymbolTable:table];
  if (v29)
  {
    TSCESymbolTable::endScope(table, v50, v51, v52);
  }

LABEL_28:

  return v27;
}

- (id)transformToUseScopedVariables:(void *)variables
{
  selfCopy = self;
  if (!objc_msgSend_isLambdaFunction(selfCopy, v5, v6, v7))
  {
    if (!objc_msgSend_isLetFunction(selfCopy, v8, v9, v10))
    {
      v129.receiver = selfCopy;
      v129.super_class = TSTFunctionNode;
      v116 = [(TSTExpressionNode *)&v129 transformToUseScopedVariables:variables];

      v117 = v116;
      goto LABEL_39;
    }

    v126 = selfCopy;
    v68 = objc_msgSend_children(selfCopy, v65, v66, v67);
    v128 = v68;
    v72 = objc_msgSend_count(v68, v69, v70, v71);
    v75 = v72 - 1;
    if (v72 == 1)
    {
      v77 = 0;
      v76 = 0;
LABEL_29:
      v118 = objc_msgSend_objectAtIndexedSubscript_(v68, v73, v75, v74);
      v124 = objc_msgSend_transformToUseScopedVariables_(v118, v119, variables, v120);
      if (v118 != v124)
      {
        if (!v77)
        {
          v77 = objc_msgSend_mutableCopy(v68, v121, v122, v123);
        }

        objc_msgSend_setObject_atIndexedSubscript_(v77, v121, v124, v75);
      }

      if (v77)
      {
        objc_msgSend_setChildren_(v126, v121, v77, v123);
      }

      for (; v76; --v76)
      {
        TSCESymbolTable::endScope(variables, v121, v122, v123);
      }

      goto LABEL_38;
    }

    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 1;
    v127 = v72 - 1;
    while (1)
    {
      v80 = objc_msgSend_objectAtIndexedSubscript_(v68, v73, v78, v74);
      v83 = v80;
      if (v79)
      {
        TSCESymbolTable::beginScope(variables);
        ++v76;
        if (!objc_msgSend_isIdentifierNode(v83, v84, v85, v86))
        {
          v106 = MEMORY[0x277D81150];
          v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "[TSTFunctionNode transformToUseScopedVariables:]", v88);
          v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v109);
          v111 = objc_opt_class();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v106, v112, v107, v110, 680, 0, "LET argument %lu is not an identifier: %@", v78, v111);

          v68 = v128;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v113, v114, v115);
          v75 = v127;
          goto LABEL_25;
        }

        v89 = v83;
        v92 = objc_msgSend_trimIdentifier_(v89, v90, variables, v91);
        v96 = objc_msgSend_fullIdentifier(v92, v93, v94, v95);
        Symbol = TSCESymbolTable::createSymbol(variables, v96);

        objc_msgSend_setSymbol_(v92, v98, Symbol, v99);
        if (v92 != v89)
        {
          if (!v77)
          {
            v77 = objc_msgSend_mutableCopy(v128, v100, v101, v102);
          }

          objc_msgSend_setObject_atIndexedSubscript_(v77, v100, v92, v78);
        }

        v75 = v127;
        v68 = v128;
      }

      else
      {
        v89 = objc_msgSend_transformToUseScopedVariables_(v80, v81, variables, v82);
        if (v89 != v83)
        {
          if (!v77)
          {
            v77 = objc_msgSend_mutableCopy(v68, v103, v104, v105);
          }

          objc_msgSend_setObject_atIndexedSubscript_(v77, v103, v89, v78);
        }
      }

LABEL_25:
      v79 ^= 1u;

      if (v75 == ++v78)
      {
        goto LABEL_29;
      }
    }
  }

  TSCESymbolTable::beginScope(variables);
  v126 = selfCopy;
  v14 = objc_msgSend_children(selfCopy, v11, v12, v13);
  v15 = objc_opt_new();
  v19 = objc_msgSend_count(v14, v16, v17, v18);
  v22 = v19 - 1;
  if (v19 != 1)
  {
    v23 = 0;
    do
    {
      v24 = objc_msgSend_objectAtIndexedSubscript_(v14, v20, v23, v21);
      if (objc_msgSend_isIdentifierNode(v24, v25, v26, v27))
      {
        v30 = v24;
        v33 = objc_msgSend_trimIdentifier_(v30, v31, variables, v32);

        v37 = objc_msgSend_fullIdentifier(v33, v34, v35, v36);
        v38 = TSCESymbolTable::createSymbol(variables, v37);

        objc_msgSend_setSymbol_(v33, v39, v38, v40);
        objc_msgSend_addObject_(v15, v41, v33, v42);
      }

      else
      {
        v43 = MEMORY[0x277D81150];
        v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTFunctionNode transformToUseScopedVariables:]", v29);
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v46);
        v48 = objc_opt_class();
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v49, v44, v47, 636, 0, "LAMBDA argument %lu is not an identifier: %@", v23, v48);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52);
        objc_msgSend_addObject_(v15, v53, v24, v54);
      }

      ++v23;
    }

    while (v22 != v23);
  }

  v55 = objc_msgSend_objectAtIndexedSubscript_(v14, v20, v22, v21);
  v58 = objc_msgSend_transformToUseScopedVariables_(v55, v56, variables, v57);
  objc_msgSend_setObject_atIndexedSubscript_(v15, v59, v58, v22);
  objc_msgSend_setChildren_(v126, v60, v15, v61);
  TSCESymbolTable::endScope(variables, v62, v63, v64);

LABEL_38:
  v117 = v126;
LABEL_39:

  return v117;
}

- (unint64_t)lastIndexOfSubtree
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v14.receiver = self;
  v14.super_class = TSTFunctionNode;
  lastIndexOfSubtree = [(TSTExpressionNode *)&v14 lastIndexOfSubtree];
  if (v16[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = objc_msgSend_children(self, v3, v4, v5);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_221291414;
    v13[3] = &unk_278462538;
    v13[4] = &v15;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v6, v7, 2, v13);

    if (v16[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12.receiver = self;
      v12.super_class = TSTFunctionNode;
      lastIndex = [(TSTExpressionNode *)&v12 lastIndex];
      v16[3] = lastIndex;
    }
  }

  v9 = objc_msgSend_functionEndNode(self, v3, v4, v5);

  v10 = v16[3];
  if (v9)
  {
    v16[3] = ++v10;
  }

  _Block_object_dispose(&v15, 8);
  return v10;
}

- (unint64_t)numArguments
{
  v4 = objc_msgSend_p_functionSpec(self, a2, v2, v3);
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_numArguments(v4, v5, v6, v7);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unint64_t)minArguments
{
  v4 = objc_msgSend_p_functionSpec(self, a2, v2, v3);
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_minArguments(v4, v5, v6, v7);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unint64_t)maxArguments
{
  v4 = objc_msgSend_p_functionSpec(self, a2, v2, v3);
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_maxArguments(v4, v5, v6, v7);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)setChildren:(id)children
{
  childrenCopy = children;
  v11.receiver = self;
  v11.super_class = TSTFunctionNode;
  [(TSTExpressionNode *)&v11 setChildren:childrenCopy];
  objc_msgSend_p_resetArgumentSpecForChildren(self, v5, v6, v7);
  objc_msgSend_resurrectModeTokens(self, v8, v9, v10);
}

- (void)setFunctionEndNode:(id)node
{
  nodeCopy = node;
  if (self->_functionEndNode != nodeCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_msgSend_setFunctionNode_(self->_functionEndNode, v8, 0, v9);
    objc_msgSend_setFunctionNode_(nodeCopy, v10, self, v11);
    objc_storeStrong(&self->_functionEndNode, node);
  }
}

- (id)mostSpecificNodeContainingIndex:(unint64_t)index correspondingIndex:(unint64_t)correspondingIndex
{
  v7 = objc_msgSend_functionEndNode(self, a2, index, correspondingIndex);
  if (v7)
  {
    v10 = v7;
    v11 = objc_msgSend_subtreeContainsIndex_(self, v8, index, v9);

    if (v11)
    {
      if (!objc_msgSend_subtreeContainsIndex_(self, v12, correspondingIndex, v13) || objc_msgSend_firstIndex(self, v14, v15, v16) == correspondingIndex || (objc_msgSend_functionEndNode(self, v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), Index = objc_msgSend_firstIndex(v17, v18, v19, v20), v17, Index == correspondingIndex))
      {
        if (index <= correspondingIndex)
        {
          selfCopy = self;
          if (selfCopy)
          {
            goto LABEL_11;
          }
        }

        else
        {
          selfCopy = objc_msgSend_functionEndNode(self, v14, v15, v16);
          if (selfCopy)
          {
            goto LABEL_11;
          }
        }
      }
    }
  }

  v24.receiver = self;
  v24.super_class = TSTFunctionNode;
  selfCopy = [(TSTExpressionNode *)&v24 mostSpecificNodeContainingIndex:index correspondingIndex:correspondingIndex];
LABEL_11:

  return selfCopy;
}

- (void)resurrectModeTokens
{
  v104 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_functionIndex(self, a2, v2, v3))
  {
    selfCopy = self;
    v8 = objc_msgSend_children(self, v5, v6, v7);
    v93 = objc_msgSend_mutableCopy(v8, v9, v10, v11);

    v15 = objc_msgSend_functionIndex(selfCopy, v12, v13, v14);
    v96 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v16, v15, v17);
    if (!objc_msgSend_numArguments(v96, v18, v19, v20))
    {
      goto LABEL_26;
    }

    v24 = objc_msgSend_children(selfCopy, v21, v22, v23);
    v95 = objc_msgSend_count(v24, v25, v26, v27);

    v31 = objc_msgSend_maxArguments(v96, v28, v29, v30);
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    obj = objc_msgSend_children(selfCopy, v32, v33, v34);
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v99, v103, 16);
    if (v37)
    {
      v92 = 0;
      v38 = 0;
      v39 = *v100;
      while (1)
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v100 != v39)
          {
            objc_enumerationMutation(obj);
          }

          if (v31 != -1 && v38 >= v31)
          {
            v41 = 0;
            goto LABEL_20;
          }

          v41 = objc_msgSend_argumentSpecForIndex_numArgs_(v96, v36, v38, v95);
          if (v41)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              v42 = TSUDynamicCast();
              v98._decimal.w[0] = objc_msgSend_number(v42, v43, v44, v45);
              v98._decimal.w[1] = v46;
              TSUDecimal::doubleValue(&v98);
              v48 = v47;
              v52 = objc_msgSend_objectLocale(selfCopy, v49, v50, v51);
              v55 = objc_msgSend_indexForModeNumber_locale_(v41, v53, v52, v54, v48);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                v56 = TSUDynamicCast();
                v60 = objc_msgSend_value(v56, v57, v58, v59);
                v64 = objc_msgSend_objectLocale(selfCopy, v61, v62, v63);
                v55 = objc_msgSend_indexForModeBool_locale_(v41, v65, v60, v64);
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_20;
                }

                objc_opt_class();
                v66 = TSUDynamicCast();
                v70 = objc_msgSend_value(v66, v67, v68, v69);
                v74 = objc_msgSend_objectLocale(selfCopy, v71, v72, v73);
                v55 = objc_msgSend_indexForModeString_locale_(v41, v75, v70, v74);
              }
            }

            if (v55 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v76 = [TSTArgumentPlaceholderNode alloc];
              v80 = objc_msgSend_context(selfCopy, v77, v78, v79);
              Index_lastIndex = objc_msgSend_initWithContext_argumentSpec_firstIndex_lastIndex_(v76, v81, v80, v41, 0, 0);

              objc_msgSend_setMode_(Index_lastIndex, v83, v55, v84);
              objc_msgSend_replaceObjectAtIndex_withObject_(v93, v85, v38, Index_lastIndex);

              v92 = 1;
            }
          }

LABEL_20:

          ++v38;
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v99, v103, 16);
        if (!v37)
        {

          if (v92)
          {
            v89 = objc_msgSend_copy(v93, v86, v87, v88);
            objc_msgSend_setChildren_(selfCopy, v90, v89, v91);
            goto LABEL_25;
          }

          goto LABEL_26;
        }
      }
    }

    v89 = obj;
LABEL_25:

LABEL_26:
  }
}

- (BOOL)isEmptyFunctionNode
{
  v5 = objc_msgSend_children(self, a2, v2, v3);
  if (objc_msgSend_count(v5, v6, v7, v8))
  {
    v12 = objc_msgSend_children(self, v9, v10, v11);
    if (objc_msgSend_count(v12, v13, v14, v15) == 1)
    {
      v19 = objc_msgSend_children(self, v16, v17, v18);
      v22 = objc_msgSend_objectAtIndex_(v19, v20, 0, v21);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 1;
  }

  return isKindOfClass & 1;
}

- (BOOL)isMissingRequiredArgument
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = objc_msgSend_children(self, a2, v2, v3);
  v8 = objc_msgSend_count(v34, v5, v6, v7);
  v13 = objc_msgSend_minArguments(self, v9, v10, v11);
  if (v13 <= v8)
  {
    objc_msgSend_subarrayWithRange_(v34, v12, 0, v13);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v15 = v36 = 0u;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v35, v39, 16);
    if (v17)
    {
      v18 = *v36;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v15);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_17;
          }

          objc_opt_class();
          v20 = TSUDynamicCast();
          v24 = v20;
          if (v20)
          {
            v25 = objc_msgSend_argumentSpec(v20, v21, v22, v23);
            if ((objc_msgSend_isMode(v25, v26, v27, v28) & 1) == 0)
            {

LABEL_17:
              v14 = 1;
              goto LABEL_18;
            }

            v32 = objc_msgSend_mode(v24, v29, v30, v31) == 0xFFFF;

            if (v32)
            {
              goto LABEL_17;
            }
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v21, &v35, v39, 16);
        v14 = 0;
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_18:
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)isDescendantOfChild:(id)child
{
  v36 = *MEMORY[0x277D85DE8];
  childCopy = child;
  v8 = objc_msgSend_children(self, v5, v6, v7);
  v11 = objc_msgSend_containsObject_(v8, v9, childCopy, v10);

  if (v11)
  {
    isDescendantOfChild = 0;
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = objc_msgSend_children(self, v12, v13, v14, 0);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v31, v35, 16);
    if (v21)
    {
      v22 = *v32;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v24 = objc_msgSend_children(*(*(&v31 + 1) + 8 * i), v18, v19, v20);
          v27 = objc_msgSend_containsObject_(v24, v25, childCopy, v26);

          if (v27)
          {
            isDescendantOfChild = 1;
            goto LABEL_16;
          }

          objc_opt_class();
          v28 = TSUDynamicCast();
          v29 = v28;
          if (v28)
          {
            isDescendantOfChild = objc_msgSend_isDescendantOfChild_(v28, v18, childCopy, v20);

            goto LABEL_16;
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v31, v35, 16);
        isDescendantOfChild = 0;
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      isDescendantOfChild = 0;
    }

LABEL_16:
  }

  return isDescendantOfChild;
}

- (TSTCSENodeData)recordHashesForSubexpressions:(id)subexpressions
{
  v31 = *MEMORY[0x277D85DE8];
  subexpressionsCopy = subexpressions;
  functionIndex = self->_functionIndex;
  v9 = objc_msgSend_hash(self->_invalidFunctionName, v6, v7, v8);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = objc_msgSend_children(self, v10, v11, v12, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v26, v30, 16);
  v18 = v9 ^ (functionIndex | 0x8000000);
  if (v17)
  {
    v19 = 0;
    v20 = *v27;
    do
    {
      v21 = 0;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v18 ^= objc_msgSend_recordHashesForSubexpressions_(*(*(&v26 + 1) + 8 * v21), v15, subexpressionsCopy, v16);
        v19 += v15;
        ++v21;
      }

      while (v17 != v21);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v26, v30, 16);
    }

    while (v17);
    v22 = v19 + 1;
  }

  else
  {
    v22 = 1;
  }

  objc_msgSend_recordExpression_data_(subexpressionsCopy, v23, self, v18, v22);
  v24 = v18;
  v25 = v22;
  result.var1 = v25;
  result.var0 = v24;
  return result;
}

- (BOOL)isEqualToExpressionNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSTFunctionNode;
    v5 = [(TSTExpressionNode *)&v7 isEqualToExpressionNode:nodeCopy]&& self->_functionIndex == nodeCopy->_functionIndex;
  }

  return v5;
}

- (BOOL)isInvalidFunction
{
  if (!self->_functionIndex)
  {
    return 1;
  }

  v4 = objc_msgSend_functionIndex(self, a2, v2, v3);
  v7 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v5, v4, v6);
  v8 = v7 == 0;

  return v8;
}

- (id)string
{
  if (self->_functionIndex)
  {
    v5 = objc_msgSend_functionIndex(self, a2, v2, v3);
    v8 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v6, v5, v7);
    v14 = objc_msgSend_objectLocale(self, v9, v10, v11);
    if (v8)
    {
      objc_msgSend_localizedFunctionNameForLocale_(v8, v12, v14, v13);
    }

    else
    {
      objc_msgSend_unsupportedFunctionNameForLocale_(TSCEFunctionSpec, v12, v14, v13);
    }
    v16 = ;
  }

  else
  {
    invalidFunctionName = self->_invalidFunctionName;
    if (invalidFunctionName)
    {
      v16 = invalidFunctionName;
      goto LABEL_9;
    }

    v8 = objc_msgSend_objectLocale(self, a2, v2, v3);
    v16 = objc_msgSend_unsupportedFunctionNameForLocale_(TSCEFunctionSpec, v18, v8, v19);
  }

LABEL_9:

  return v16;
}

- (void)insertFormulaText:(id)text printingOptions:(unsigned int)options unwrapped:(BOOL)unwrapped
{
  v6 = *&options;
  textCopy = text;
  v14 = objc_msgSend_context(self, v8, v9, v10);
  unwrappedCopy = unwrapped;
  v74 = v14;
  if (!unwrapped)
  {
    if (v6)
    {
      v15 = objc_msgSend_whitespaceBefore(self, v11, whitespaceAfterLeftParen, v13);

      if (v15)
      {
        v17 = objc_msgSend_whitespaceBefore(self, v11, v16, v13);
        objc_msgSend_takeText_(textCopy, v18, v17, v19);
      }
    }

    if (self->_functionIndex)
    {
      v20 = [TSTWPTokenAttachment alloc];
      v22 = objc_msgSend_initWithContext_expressionNode_(v20, v21, v14, self);
      objc_msgSend_insertUIGraphicalAttachment_withLanguage_(textCopy, v23, v22, *MEMORY[0x277D81448]);
    }

    else
    {
      objc_msgSend_takeText_(textCopy, v11, self->_invalidFunctionName, v13);
      if (v6)
      {
        whitespaceAfterFunctionName = self->_whitespaceAfterFunctionName;
        if (whitespaceAfterFunctionName)
        {
          objc_msgSend_takeText_(textCopy, v24, whitespaceAfterFunctionName, v25);
        }
      }

      objc_msgSend_takeText_withLanguage_(textCopy, v24, @"("), *MEMORY[0x277D81448];
    }
  }

  if (v6)
  {
    whitespaceAfterLeftParen = self->_whitespaceAfterLeftParen;
    if (whitespaceAfterLeftParen)
    {
      objc_msgSend_takeText_(textCopy, v11, whitespaceAfterLeftParen, v13);
    }
  }

  v27 = objc_msgSend_objectLocale(v14, v11, whitespaceAfterLeftParen, v13);
  v31 = objc_msgSend_listSeparator(v27, v28, v29, v30);

  v35 = objc_msgSend_count(self->_whitespaceAfterDelimiters, v32, v33, v34);
  v39 = objc_msgSend_children(self, v36, v37, v38);
  v46 = objc_msgSend_count(v39, v40, v41, v42);
  if (v46)
  {
    v47 = objc_msgSend_objectAtIndex_(v39, v43, 0, v45);
    objc_msgSend_insertFormulaText_printingOptions_(v47, v48, textCopy, v6);

    if (v46 != 1)
    {
      v49 = *MEMORY[0x277D81448];
      for (i = 1; i != v46; ++i)
      {
        objc_msgSend_takeText_withLanguage_(textCopy, v43, v31, v49);
        if ((v6 & 1) != 0 && v35 >= i)
        {
          v53 = objc_msgSend_objectAtIndex_(self->_whitespaceAfterDelimiters, v51, i - 1, v52);
          objc_msgSend_takeText_(textCopy, v54, v53, v55);
        }

        v56 = objc_msgSend_objectAtIndex_(v39, v51, i, v52);
        objc_msgSend_insertFormulaText_printingOptions_(v56, v57, textCopy, v6);
      }
    }
  }

  if (!unwrappedCopy)
  {
    if (self->_functionIndex)
    {
      v58 = objc_msgSend_functionEndNode(self, v43, v44, v45);
      v59 = [TSTWPTokenAttachment alloc];
      v61 = objc_msgSend_initWithContext_expressionNode_(v59, v60, v74, v58);
      objc_msgSend_insertUIGraphicalAttachment_withLanguage_(textCopy, v62, v61, *MEMORY[0x277D81448]);
    }

    else
    {
      objc_msgSend_takeText_withLanguage_(textCopy, v43, @""), *MEMORY[0x277D81448]);
    }

    if (v6)
    {
      v66 = objc_msgSend_whitespaceAfter(self, v63, v64, v65);

      if (v66)
      {
        v70 = objc_msgSend_whitespaceAfter(self, v67, v68, v69);
        objc_msgSend_takeText_(textCopy, v71, v70, v72);
      }
    }
  }
}

- (void)insertFormulaTextNonRecursive:(id)recursive phase:(unint64_t)phase deferredWorkStack:(id)stack
{
  recursiveCopy = recursive;
  stackCopy = stack;
  v13 = objc_msgSend_printingOptions(stackCopy, v10, v11, v12);
  v20 = objc_msgSend_context(self, v14, v15, v16);
  if (!phase)
  {
    if (v13)
    {
      v21 = objc_msgSend_whitespaceBefore(self, v17, whitespaceAfterLeftParen, v19);

      if (v21)
      {
        v23 = objc_msgSend_whitespaceBefore(self, v17, v22, v19);
        objc_msgSend_takeText_(recursiveCopy, v24, v23, v25);
      }
    }

    if (self->_functionIndex)
    {
      v26 = [TSTWPTokenAttachment alloc];
      v28 = objc_msgSend_initWithContext_expressionNode_(v26, v27, v20, self);
      objc_msgSend_insertUIGraphicalAttachment_withLanguage_(recursiveCopy, v29, v28, *MEMORY[0x277D81448]);
    }

    else
    {
      objc_msgSend_takeText_(recursiveCopy, v17, self->_invalidFunctionName, v19);
      if (v13)
      {
        whitespaceAfterFunctionName = self->_whitespaceAfterFunctionName;
        if (whitespaceAfterFunctionName)
        {
          objc_msgSend_takeText_(recursiveCopy, v30, whitespaceAfterFunctionName, v31);
        }
      }

      objc_msgSend_takeText_withLanguage_(recursiveCopy, v30, @"("), *MEMORY[0x277D81448];
    }

    if (v13)
    {
      whitespaceAfterLeftParen = self->_whitespaceAfterLeftParen;
      if (whitespaceAfterLeftParen)
      {
        objc_msgSend_takeText_(recursiveCopy, v17, whitespaceAfterLeftParen, v19);
      }
    }
  }

  v33 = objc_msgSend_children(self, v17, whitespaceAfterLeftParen, v19);
  v40 = objc_msgSend_count(v33, v34, v35, v36);
  if (v40 > phase)
  {
    v81 = v20;
    selfCopy = self;
    v82 = selfCopy;
    v83 = phase + 1;
    v80 = stackCopy;
    objc_msgSend_push_(stackCopy, v42, &v82, v43);

    if (phase)
    {
      v47 = objc_msgSend_count(selfCopy->_whitespaceAfterDelimiters, v44, v45, v46);
      v51 = objc_msgSend_objectLocale(v81, v48, v49, v50);
      v55 = objc_msgSend_listSeparator(v51, v52, v53, v54);

      objc_msgSend_takeText_withLanguage_(recursiveCopy, v56, v55, *MEMORY[0x277D81448]);
      if ((v13 & 1) != 0 && v47 >= phase)
      {
        v59 = objc_msgSend_objectAtIndex_(selfCopy->_whitespaceAfterDelimiters, v57, phase - 1, v58);
        objc_msgSend_takeText_(recursiveCopy, v60, v59, v61);
      }
    }

    v82 = objc_msgSend_objectAtIndex_(v33, v44, phase, v46);
    v83 = 0;
    v62 = v82;
    stackCopy = v80;
    v20 = v81;
    objc_msgSend_push_(v80, v63, &v82, v64);
  }

  if (v40 == phase)
  {
    if (self->_functionIndex)
    {
      v65 = objc_msgSend_functionEndNode(self, v37, v38, v39);
      v66 = [TSTWPTokenAttachment alloc];
      v68 = objc_msgSend_initWithContext_expressionNode_(v66, v67, v20, v65);
      objc_msgSend_insertUIGraphicalAttachment_withLanguage_(recursiveCopy, v69, v68, *MEMORY[0x277D81448]);
    }

    else
    {
      objc_msgSend_takeText_withLanguage_(recursiveCopy, v37, @""), *MEMORY[0x277D81448]);
    }

    if (v13)
    {
      v73 = objc_msgSend_whitespaceAfter(self, v70, v71, v72);

      if (v73)
      {
        v77 = objc_msgSend_whitespaceAfter(self, v74, v75, v76);
        objc_msgSend_takeText_(recursiveCopy, v78, v77, v79);
      }
    }
  }
}

- (id)p_whitespaceBeforeParam:(unint64_t)param
{
  if (param)
  {
    if (objc_msgSend_count(self->_whitespaceAfterDelimiters, a2, param, v3) >= param)
    {
      v8 = objc_msgSend_objectAtIndex_(self->_whitespaceAfterDelimiters, v6, param - 1, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = self->_whitespaceAfterLeftParen;
  }

  return v8;
}

- (void)buildASTNodeArray:(TSCEASTNodeArray *)array hostCell:(TSUCellCoord)cell symbolTable:(void *)table
{
  v188 = objc_msgSend_children(self, a2, array, *&cell);
  v9 = objc_msgSend_count(v188, v6, v7, v8);
  selfCopy = self;
  if (objc_msgSend_isLambdaFunction(self, v10, v11, v12))
  {
    if (v9)
    {
      v183 = objc_msgSend_lastObject(v188, v13, v14, v15);
      v19 = objc_msgSend_whitespaceBefore(self, v16, v17, v18);
      TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v19);

      v185 = objc_opt_new();
      TSCESymbolTable::beginScope(table);
      TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v193, 0);
      TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v192, 0);
      v22 = v9 - 1;
      if (v9 == 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        do
        {
          v26 = objc_msgSend_objectAtIndex_(v188, v20, v25, v21);
          v29 = objc_msgSend_p_whitespaceBeforeParam_(selfCopy, v27, v25, v28);

          if (objc_msgSend_length(v29, v30, v31, v32))
          {
            TSCEASTCompactWhitespace::setStringAtIndex(v193, v29, v25);
          }

          v36 = objc_msgSend_whitespaceBefore(v26, v33, v34, v35);

          if (objc_msgSend_length(v36, v37, v38, v39))
          {
            TSCEASTCompactWhitespace::setStringAtIndex(v193, v36, v25);
          }

          v23 = objc_msgSend_whitespaceAfter(v26, v40, v41, v42);

          if (objc_msgSend_length(v23, v43, v44, v45))
          {
            TSCEASTCompactWhitespace::setStringAtIndex(v192, v23, v25);
          }

          v52 = objc_msgSend_string(v26, v46, v47, v48);
          if (v52)
          {
            v53 = objc_msgSend_symbol(v26, v49, v50, v51);
            if (v53)
            {
              TSCESymbolTable::setSymbol(table, v53, &v52->isa);
            }

            else
            {
              TSCESymbolTable::createSymbol(table, &v52->isa);
            }

            if (!v24)
            {
              v24 = v53;
            }

            objc_msgSend_addObject_(v185, v54, v52, v55);
          }

          else
          {
            v56 = MEMORY[0x277D81150];
            v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSTFunctionNode buildASTNodeArray:hostCell:symbolTable:]", v51);
            v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v59);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v61, v57, v60, 1206, 0, "This likely messes up our TSCESymbol offsetting - I don't think its reachable though");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64);
            v52 = &stru_2834BADA0;
            objc_msgSend_addObject_(v185, v65, &stru_2834BADA0, v66);
          }

          ++v25;
        }

        while (v22 != v25);
      }

      v126 = objc_msgSend_p_whitespaceBeforeParam_(selfCopy, v20, v22, v21);

      if (objc_msgSend_length(v126, v127, v128, v129))
      {
        objc_msgSend_setWhitespaceBefore_(v183, v130, v126, v131);
      }

      __C(0);
    }

    goto LABEL_66;
  }

  if (!objc_msgSend_isLetFunction(self, v13, v14, v15))
  {
    if (v9 == 1)
    {
      v124 = objc_msgSend_firstObject(v188, v67, v68, v69);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (selfCopy->_functionIndex)
        {
          TSCEASTFunctionElement::appendFunctionElement(array, selfCopy->_functionIndex, 0, selfCopy->_whitespaceAfterFunctionName, v125);
        }

        else
        {
          TSCEASTUnknownFunctionElement::appendUnknownFunctionElement(array, selfCopy->_invalidFunctionName, 0);
        }

LABEL_65:

        goto LABEL_66;
      }
    }

    v132 = objc_msgSend_functionIndex(selfCopy, v67, v68, v69);
    v135 = objc_msgSend_functionIndexUsesThunks_(TSCEFunctionSpec, v133, v132, v134);
    if (v9)
    {
      v139 = v135;
      v140 = objc_msgSend_objectAtIndex_(v188, v136, 0, v138);
      objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v140, v141, array, *&cell, table);

      TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, selfCopy->_whitespaceAfterLeftParen);
      if (v9 != 1)
      {
        for (i = 1; i != v9; ++i)
        {
          v144 = objc_msgSend_objectAtIndex_(v188, v136, i, v138);
          if (v139)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              __C(9 * v9);
            }
          }

          objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v144, v143, array, *&cell, table);
          v147 = objc_msgSend_p_whitespaceBeforeParam_(selfCopy, v145, i, v146);
          TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v147);
        }
      }
    }

    functionIndex = selfCopy->_functionIndex;
    if (selfCopy->_functionIndex)
    {
      v149 = objc_msgSend_count(v188, v136, v137, v138);
      v153 = v149;
      if (HIDWORD(v149))
      {
        v165 = MEMORY[0x277D81150];
        v166 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v150, "[TSTFunctionNode buildASTNodeArray:hostCell:symbolTable:]", v151);
        v169 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v167, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v168);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v165, v170, v166, v169, 1340, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v171, v172, v173);
        v153 = -1;
      }

      TSCEASTFunctionElement::appendFunctionElement(array, functionIndex, v153, selfCopy->_whitespaceAfterFunctionName, v152);
    }

    else
    {
      invalidFunctionName = selfCopy->_invalidFunctionName;
      v159 = objc_msgSend_count(v188, v136, v137, v138);
      if (HIDWORD(v159))
      {
        v174 = MEMORY[0x277D81150];
        v175 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v158, "[TSTFunctionNode buildASTNodeArray:hostCell:symbolTable:]", v160);
        v178 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v176, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFunctionNode.mm", v177);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v174, v179, v175, v178, 1338, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v180, v181, v182);
        v159 = 0xFFFFFFFFLL;
      }

      TSCEASTUnknownFunctionElement::appendUnknownFunctionElement(array, invalidFunctionName, v159);
    }

    v161 = objc_msgSend_whitespaceBefore(selfCopy, v154, v155, v156);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v161);

    v124 = objc_msgSend_whitespaceAfter(selfCopy, v162, v163, v164);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v124);
    goto LABEL_65;
  }

  if (v9 >= 3 && (v9 & 1) != 0)
  {
    v186 = v9;
    v184 = objc_msgSend_lastObject(v188, v67, v68, v69);
    v72 = 0;
    v73 = 0;
    v74 = 0;
    do
    {
      v75 = objc_msgSend_objectAtIndex_(v188, v70, v72, v71, v184);
      v78 = objc_msgSend_objectAtIndex_(v188, v76, v72 + 1, v77);
      objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v78, v79, array, *&cell, table);
      v82 = objc_msgSend_p_whitespaceBeforeParam_(selfCopy, v80, v72 + 1, v81);

      TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v82);
      v86 = objc_msgSend_string(v75, v83, v84, v85);
      Symbol = objc_msgSend_symbol(v75, v87, v88, v89);
      TSCESymbolTable::beginScope(table);
      if (v86)
      {
        if (Symbol)
        {
          TSCESymbolTable::setSymbol(table, Symbol, &v86->var0);
        }

        else
        {
          Symbol = TSCESymbolTable::createSymbol(table, &v86->var0);
        }
      }

      v94 = objc_msgSend_whitespaceBefore(v75, v91, v92, v93);
      v74 = objc_msgSend_p_whitespaceBeforeParam_(selfCopy, v95, v72, v96);

      if (objc_msgSend_length(v74, v97, v98, v99))
      {
        if (v94)
        {
          v103 = objc_msgSend_stringByAppendingString_(v74, v100, v94, v102);

          v94 = v103;
        }

        else
        {
          v94 = v74;
        }
      }

      v104 = objc_msgSend_whitespaceAfter(v75, v100, v101, v102);
      TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v193, v94, v104, 0, 0);

      TSCEASTLetBindElement::appendLetNodeHeader(array, v86, v193, Symbol, v72 != 0);
      v192[0] = v193;
      sub_22107C2C0(v192);

      --v73;
      v105 = v72 + 3;
      v72 += 2;
    }

    while (v105 < v186);
    v106 = objc_msgSend_p_whitespaceBeforeParam_(selfCopy, v70, v186 - 1, v71);

    if (objc_msgSend_length(v106, v107, v108, v109))
    {
      objc_msgSend_setWhitespaceBefore_(v184, v110, v106, v111);
    }

    objc_msgSend_buildASTNodeArray_hostCell_symbolTable_(v184, v110, array, *&cell, table);
    if (v73)
    {
      do
      {
        TSCEASTLetBindElement::appendEndScopeNode(array, v112, v113, v114);
        TSCESymbolTable::endScope(table, v115, v116, v117);
      }

      while (!__CFADD__(v73++, 1));
    }

    v119 = objc_msgSend_whitespaceBefore(selfCopy, v112, v113, v114);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 31, v119);

    v123 = objc_msgSend_whitespaceAfter(selfCopy, v120, v121, v122);
    TSCEASTWhitespaceElement::appendWhitespaceElement(array, 32, v123);
  }

LABEL_66:
}

- (id)exportString
{
  if (self->_functionIndex)
  {
    v3 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, a2, self->_functionIndex, v2);
    v7 = objc_msgSend_functionName(v3, v4, v5, v6);

    v8 = v7;
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%@("), v10, v7;
  }

  else
  {
    v8 = self->_invalidFunctionName;
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%@("), v12, v8;
  }
  v13 = ;

  return v13;
}

- (id)formulaPlainText
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_string(self, a2, v2, v3);
  v8 = objc_msgSend_stringWithFormat_(v4, v6, @"%@("), v7, v5;

  return v8;
}

- (void)addTSTCanvasReferencesToSet:(id)set inRangeContext:(unsigned __int8)context withColorHelper:(id)helper preferringNodesFromStorage:(id)storage showingSpillRanges:(BOOL)ranges deepSearch:(BOOL)search calcEngine:(id)engine allVisitedNodes:(id)self0
{
  searchCopy = search;
  rangesCopy = ranges;
  v109 = *MEMORY[0x277D85DE8];
  setCopy = set;
  helperCopy = helper;
  storageCopy = storage;
  engineCopy = engine;
  nodesCopy = nodes;
  selfCopy = self;
  v21 = selfCopy;
  if (storageCopy)
  {
    Index = objc_msgSend_firstIndex(selfCopy, v19, selfCopy, v20);
    v21 = selfCopy;
    if (Index != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_opt_class();
      v26 = objc_msgSend_firstIndex(selfCopy, v23, v24, v25);
      v29 = objc_msgSend_attachmentAtCharIndex_(storageCopy, v27, v26, v28);
      v30 = TSUDynamicCast();

      v34 = selfCopy;
      if (v30)
      {
        v35 = objc_msgSend_expressionNode(v30, v31, v32, v33);
        v36 = objc_opt_class();
        isMemberOfClass = objc_msgSend_isMemberOfClass_(v35, v37, v36, v38);

        v34 = selfCopy;
        if (isMemberOfClass)
        {
          v34 = objc_msgSend_expressionNode(v30, v40, v41, v42);
        }
      }

      v21 = v34;
    }
  }

  v100 = v21;
  if ((objc_msgSend_containsObject_(nodesCopy, v19, v21, v20) & 1) == 0)
  {
    objc_msgSend_addObject_(nodesCopy, v43, v100, v44);
    functionIndex = selfCopy->_functionIndex;
    if (selfCopy->_functionIndex)
    {
      v48 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v45, functionIndex, v46);
      v52 = objc_msgSend_children(selfCopy, v49, v50, v51);
      v102 = objc_msgSend_count(v52, v53, v54, v55);

      v59 = selfCopy->_functionIndex;
      if (v59 == 130)
      {
        if (v102 != 2)
        {
          v101 = 0;
LABEL_36:
          if (objc_msgSend_numArguments(v48, v56, v57, v58) && searchCopy && v102)
          {
            v81 = 0;
            while (1)
            {
              v82 = objc_msgSend_children(selfCopy, v78, v79, v80);
              v85 = objc_msgSend_objectAtIndex_(v82, v83, v81, v84);

              if (objc_msgSend_maxArguments(v48, v86, v87, v88) != -1 && v81 >= objc_msgSend_maxArguments(v48, v89, v90, v91))
              {
                break;
              }

              v92 = objc_msgSend_argumentSpecForIndex_numArgs_(v48, v89, v81, v102);
              v95 = v92;
              if (!v92)
              {
                goto LABEL_45;
              }

              v96 = objc_msgSend_rangeContext(v92, v89, v93, v94);
LABEL_46:
              if ((v101 & (v81 == 0)) != 0)
              {
                objc_msgSend_addTSTCanvasReferencesToSet_inRangeContext_withColorHelper_preferringNodesFromStorage_showingSpillRanges_deepSearch_calcEngine_allVisitedNodes_(v85, v89, setCopy, 0, helperCopy, storageCopy, rangesCopy, 1, engineCopy, nodesCopy);
              }

              else
              {
                objc_msgSend_addTSTCanvasReferencesToSet_inRangeContext_withColorHelper_preferringNodesFromStorage_showingSpillRanges_deepSearch_calcEngine_allVisitedNodes_(v85, v89, setCopy, v96, helperCopy, storageCopy, rangesCopy, 1, engineCopy, nodesCopy);
              }

              if (v102 == ++v81)
              {
                goto LABEL_50;
              }
            }

            v95 = 0;
LABEL_45:
            v96 = 0;
            goto LABEL_46;
          }

          goto LABEL_50;
        }
      }

      else
      {
        v101 = 0;
        if (v59 != 23 || v102 != 2)
        {
          goto LABEL_35;
        }
      }

      v65 = objc_msgSend_children(selfCopy, v56, v57, v58);
      v68 = objc_msgSend_objectAtIndex_(v65, v66, 1, v67);

      v69 = v68;
      if (v68)
      {
        objc_opt_class();
        v70 = TSUDynamicCast();
        if (v70)
        {
          v74 = v70;
          v101 = objc_msgSend_mode(v70, v71, v72, v73) == 1;
        }

        else
        {
          v74 = 0;
          objc_opt_class();
          v98 = TSUDynamicCast();
          objc_opt_class();
          v97 = TSUDynamicCast();
          if (v98)
          {
            objc_msgSend_number(v98, v75, v76, v77);
            TSUDecimal::operator=();
            v101 = TSUDecimal::operator==();
          }

          else if (v97)
          {
            v101 = objc_msgSend_value(v97, v75, v76, v77);
          }

          else
          {
            v101 = 0;
          }
        }
      }

      else
      {
        v101 = 0;
      }

      v59 = selfCopy->_functionIndex;
LABEL_35:
      if (v59 != 337)
      {
        goto LABEL_36;
      }

LABEL_50:

      goto LABEL_51;
    }

    if (searchCopy)
    {
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v48 = objc_msgSend_children(selfCopy, v45, functionIndex, v46);
      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v60, &v104, v108, 16);
      if (v62)
      {
        v63 = *v105;
        do
        {
          for (i = 0; i != v62; ++i)
          {
            if (*v105 != v63)
            {
              objc_enumerationMutation(v48);
            }

            objc_msgSend_addTSTCanvasReferencesToSet_inRangeContext_withColorHelper_preferringNodesFromStorage_showingSpillRanges_deepSearch_calcEngine_allVisitedNodes_(*(*(&v104 + 1) + 8 * i), v61, setCopy, 0, helperCopy, storageCopy, rangesCopy, 1, engineCopy, nodesCopy);
          }

          v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v61, &v104, v108, 16);
        }

        while (v62);
      }

      goto LABEL_50;
    }
  }

LABEL_51:
}

- (unint64_t)allowsNewIdentifier
{
  if (objc_msgSend_isLetFunction(self, a2, v2, v3))
  {
    return 1;
  }

  else
  {
    return objc_msgSend_isLambdaFunction(self, v5, v6, v7);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[218], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212949DC, off_2812E4498[218]);

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

  v14.receiver = self;
  v14.super_class = TSTFunctionNode;
  [(TSTExpressionNode *)&v14 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v10 = *(archive + 10);
  self->_functionIndex = v10;
  if (!v10)
  {
    v11 = *(archive + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      v11 = *v11;
    }

    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v11, v9);
    invalidFunctionName = self->_invalidFunctionName;
    self->_invalidFunctionName = v12;
  }
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

  v15.receiver = self;
  v15.super_class = TSTFunctionNode;
  [(TSTExpressionNode *)&v15 saveToArchive:v7 archiver:archiverCopy];
  functionIndex = self->_functionIndex;
  *(archive + 4) |= 4u;
  *(archive + 10) = functionIndex;
  invalidFunctionName = self->_invalidFunctionName;
  if (invalidFunctionName)
  {
    v14 = objc_msgSend_UTF8String(invalidFunctionName, v9, v10, v11);
    sub_22129452C(archive, v14);
  }
}

- (id)p_functionSpec
{
  if (objc_msgSend_functionIndex(self, a2, v2, v3))
  {
    v8 = objc_msgSend_functionIndex(self, v5, v6, v7);
    v11 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v9, v8, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)p_resetArgumentSpecForChildren
{
  v51 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_functionIndex(self, a2, v2, v3))
  {
    v8 = objc_msgSend_functionIndex(self, v5, v6, v7);
    v11 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v9, v8, v10);
    v15 = objc_msgSend_children(self, v12, v13, v14);
    v19 = objc_msgSend_count(v15, v16, v17, v18);

    if (objc_msgSend_numArguments(v11, v20, v21, v22))
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v26 = objc_msgSend_children(self, v23, v24, v25, 0);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v46, v50, 16);
      if (v31)
      {
        v32 = 0;
        v33 = *v47;
        do
        {
          v34 = 0;
          do
          {
            if (*v47 != v33)
            {
              objc_enumerationMutation(v26);
            }

            v35 = *(*(&v46 + 1) + 8 * v34);
            v36 = objc_msgSend_maxArguments(v11, v28, v29, v30);
            if (v36 == -1 || v32 < v36)
            {
              v40 = objc_msgSend_functionIndex(v11, v37, v38, v39);
              if ((v19 & 1) == 0 && v40 == 363)
              {
                ++v19;
              }

              v43 = objc_msgSend_argumentSpecForIndex_numArgs_(v11, v41, v32, v19);
              objc_msgSend_setArgumentSpec_(v35, v44, v43, v45);

              ++v32;
            }

            else
            {
              objc_msgSend_setArgumentSpec_(v35, v37, 0, v39);
            }

            ++v34;
          }

          while (v31 != v34);
          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v46, v50, 16);
        }

        while (v31);
      }
    }
  }
}

@end