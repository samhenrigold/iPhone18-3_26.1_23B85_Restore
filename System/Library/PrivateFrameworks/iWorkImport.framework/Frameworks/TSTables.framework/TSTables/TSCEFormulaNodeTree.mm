@interface TSCEFormulaNodeTree
- (TSCEFormulaNodeTree)initWithFormula:(id)formula options:(unsigned int)options partialResults:(id)results calcEngine:(id)engine hostCellRef:(const TSCECellRef *)ref;
- (TSCEFormulaNodeTree)initWithRootNode:(id)node calcEngine:(id)engine hostCellRef:(const TSCECellRef *)ref;
- (TSKUIDStruct)hostColumnUID;
- (TSKUIDStruct)hostRowUID;
- (TSKUIDStruct)hostTableUID;
- (id).cxx_construct;
- (id)convertToFormula:(id *)formula;
- (id)variableUsageError;
- (void)resolveIdentifiers;
@end

@implementation TSCEFormulaNodeTree

- (TSCEFormulaNodeTree)initWithRootNode:(id)node calcEngine:(id)engine hostCellRef:(const TSCECellRef *)ref
{
  nodeCopy = node;
  engineCopy = engine;
  v15.receiver = self;
  v15.super_class = TSCEFormulaNodeTree;
  v11 = [(TSCEFormulaNodeTree *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_calcEngine, engine);
    v13 = *&ref->coordinate.row;
    v12->_hostCellRef._tableUID._upper = ref->_tableUID._upper;
    *&v12->_hostCellRef.coordinate.row = v13;
    v12->_translationFlags._flags = 0;
    objc_storeStrong(&v12->_root, node);
    v12->_hostRowUID = 0u;
    v12->_hostColumnUID = 0u;
    v12->_hostTableUID = 0u;
  }

  return v12;
}

- (TSCEFormulaNodeTree)initWithFormula:(id)formula options:(unsigned int)options partialResults:(id)results calcEngine:(id)engine hostCellRef:(const TSCECellRef *)ref
{
  v10 = *&options;
  formulaCopy = formula;
  resultsCopy = results;
  engineCopy = engine;
  v26.receiver = self;
  v26.super_class = TSCEFormulaNodeTree;
  v15 = [(TSCEFormulaNodeTree *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_calcEngine, engine);
    v20 = *&ref->coordinate.row;
    v16->_hostCellRef._tableUID._upper = ref->_tableUID._upper;
    *&v16->_hostCellRef.coordinate.row = v20;
    v16->_translationFlags._flags = 0;
    if (formulaCopy)
    {
      v16->_translationFlags._flags = objc_msgSend_translationFlags(formulaCopy, v17, v18, v19);
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v25, engineCopy, ref);
      v22 = TSCEFormulaNodeTreeCreator::formulaNodeTreeFromFormula(formulaCopy, v10, resultsCopy, &v25, v21);
      root = v16->_root;
      v16->_root = v22;
    }

    v16->_hostRowUID = 0u;
    v16->_hostColumnUID = 0u;
    v16->_hostTableUID = 0u;
  }

  return v16;
}

- (void)resolveIdentifiers
{
  selfCopy = self;
  v5 = objc_msgSend_documentLocale(self->_calcEngine, a2, v2, v3);
  TSCESymbolTable::TSCESymbolTable(&v188, v5);

  p_undoSymbolTableMaps = 0;
  v186 = 0;
  v187 = 0;
  v6 = selfCopy->_root;
  v184 = 0;
  v183 = v6;
  sub_221458860(&p_undoSymbolTableMaps, &v183, v7, v8, v9, v10);

  v11 = [TSCEEndScopeFormulaNode alloc];
  inited = objc_msgSend_initAsEndScope(v11, v12, v13, v14);
  v15 = v186;
  if (p_undoSymbolTableMaps != v186)
  {
    v179 = selfCopy;
    do
    {
      v16 = *(v15 - 3);
      v17 = *(v15 - 2);
      v18 = *(v15 - 1);
      sub_221459050(&p_undoSymbolTableMaps, (v186 - 3));
      v19 = v16;
      v23 = objc_msgSend_nodeType(v19, v20, v21, v22);
      v27 = 0;
      if (v23 > 23)
      {
        if (v23 == 24)
        {
          v37 = v19;
          v91 = objc_msgSend_identifier(v37, v88, v89, v90);
          v92 = TSCESymbolTable::lookup(&v188, v91, 0);

          objc_msgSend_setSymbol_(v37, v93, v92, v94);
LABEL_21:
          v27 = 0;
LABEL_39:

          goto LABEL_40;
        }

        if (v23 != 25)
        {
          if (v23 != 26)
          {
            goto LABEL_40;
          }

LABEL_11:
          v28 = MEMORY[0x277D81150];
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSCEFormulaNodeTree resolveIdentifiers]", v26);
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTree.mm", v31);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 231, 0, "Consider handling these, so we don't REQUIRE formula to be in the vague setup using FunctionNode for Let/Lambda?");

          v27 = 0;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
          goto LABEL_40;
        }

        v27 = 0;
        TSCESymbolTable::endScope(&v188, v24, v25, v26);
      }

      else
      {
        v182 = v17;
        switch(v23)
        {
          case 14:
            v37 = v19;
            v41 = objc_msgSend_functionIndex(v37, v38, v39, v40);
            if (v41 == 363)
            {
              TSCESymbolTable::beginScope(&v188);
              v106 = objc_msgSend_children(v37, v103, v104, v105);
              v110 = objc_msgSend_count(v106, v107, v108, v109);
              v114 = v110;
              v115 = v110 - 2;
              if (v110 >= 2)
              {
                v178 = v110 - 2;
                v181 = v106;
                v116 = 1;
                v117 = 1;
                v118 = 1;
                do
                {
                  v119 = v116;
                  v120 = objc_msgSend_objectAtIndexedSubscript_(v181, v111, v118 - 1, v113);
                  TSCESymbolTable::beginScope(&v188);
                  if (objc_msgSend_isIdentifierNode(v120, v121, v122, v123))
                  {
                    v124 = v120;
                    v128 = objc_msgSend_fullIdentifier(v124, v125, v126, v127);
                    v129 = TSCESymbolTable::createSymbol(&v188, v128);

                    objc_msgSend_setSymbol_(v124, v130, v129, v131);
                  }

                  v118 += 2;
                  --v117;
                  v116 = v119 + 1;
                }

                while (v118 < v114);
                v132 = v117 == 1;
                v106 = v181;
                v115 = v178;
                if (!v132)
                {
                  do
                  {
                    v133 = inited;
                    v134 = v37;
                    *&v183 = v133;
                    *(&v183 + 1) = v134;
                    v184 = 0;
                    sub_221458860(&p_undoSymbolTableMaps, &v183, v135, v136, v137, v138);

                    --v119;
                  }

                  while (v119);
                }
              }

              v139 = objc_msgSend_children(v37, v111, v112, v113);
              v143 = objc_msgSend_lastObject(v139, v140, v141, v142);
              v83 = v37;
              *&v183 = v143;
              *(&v183 + 1) = v83;
              v184 = v114 - 1;
              sub_221458860(&p_undoSymbolTableMaps, &v183, v144, v145, v146, v147);
              selfCopy = v179;

              v17 = v182;
              if (v115 >= 1)
              {
                do
                {
                  v114 -= 2;
                  v150 = objc_msgSend_objectAtIndexedSubscript_(v106, v148, v114, v149);
                  v151 = v83;
                  *&v183 = v150;
                  *(&v183 + 1) = v151;
                  v184 = v114;
                  sub_221458860(&p_undoSymbolTableMaps, &v183, v152, v153, v154, v155);
                }

                while (v114 > 2);
              }

              v27 = 0;
              goto LABEL_44;
            }

            if (v41 == 364)
            {
              TSCESymbolTable::beginScope(&v188);
              v45 = objc_msgSend_children(v37, v42, v43, v44);
              v49 = objc_msgSend_count(v45, v46, v47, v48) - 1;

              if (v49)
              {
                for (i = 0; i != v49; ++i)
                {
                  v54 = objc_msgSend_children(v37, v50, v51, v52);
                  v57 = objc_msgSend_objectAtIndexedSubscript_(v54, v55, i, v56);

                  if (objc_msgSend_isIdentifierNode(v57, v58, v59, v60))
                  {
                    v61 = v57;
                    v65 = objc_msgSend_fullIdentifier(v61, v62, v63, v64);
                    v66 = TSCESymbolTable::createSymbol(&v188, v65);

                    objc_msgSend_setSymbol_(v61, v67, v66, v68);
                  }
                }
              }

              v69 = inited;
              v70 = v37;
              *&v183 = v69;
              *(&v183 + 1) = v70;
              v184 = 0;
              sub_221458860(&p_undoSymbolTableMaps, &v183, v71, v72, v73, v74);

              v78 = objc_msgSend_children(v70, v75, v76, v77);
              v82 = objc_msgSend_lastObject(v78, v79, v80, v81);
              v83 = v70;
              *&v183 = v82;
              *(&v183 + 1) = v83;
              v184 = v49;
              sub_221458860(&p_undoSymbolTableMaps, &v183, v84, v85, v86, v87);

              v27 = 0;
              v17 = v182;
              selfCopy = v179;
              goto LABEL_44;
            }

            goto LABEL_21;
          case 21:
            v95 = v19;
            v27 = objc_msgSend_resolveIdentifier_hostTable_baseHostCell_symbolTable_(v95, v96, selfCopy->_calcEngine, 0, *&selfCopy->_hostCellRef.coordinate, &v188);

            if (v27 && v27 != v95)
            {
              v97 = v17;
              v37 = v97;
              if (v97)
              {
                root = objc_msgSend_children(v97, v98, v99, v100);
                objc_msgSend_setObject_atIndexedSubscript_(root, v102, v27, v18);
              }

              else
              {
                v156 = v27;
                root = selfCopy->_root;
                selfCopy->_root = v156;
              }

              goto LABEL_39;
            }

            break;
          case 23:
            goto LABEL_11;
        }
      }

LABEL_40:
      v157 = objc_msgSend_children(v19, v24, v25, v26);
      v161 = objc_msgSend_count(v157, v158, v159, v160);

      if (v161)
      {
        v83 = objc_msgSend_children(v19, v162, v163, v164);
        v168 = objc_msgSend_count(v83, v165, v166, v167);
        if (v168)
        {
          v171 = v168 - 1;
          do
          {
            v172 = objc_msgSend_objectAtIndexedSubscript_(v83, v169, v171, v170);
            v173 = v19;
            *&v183 = v172;
            *(&v183 + 1) = v173;
            v184 = v171;
            sub_221458860(&p_undoSymbolTableMaps, &v183, v174, v175, v176, v177);

            --v171;
          }

          while (v171 != -1);
        }

LABEL_44:
      }

      v15 = v186;
    }

    while (p_undoSymbolTableMaps != v186);
  }

  *&v183 = &p_undoSymbolTableMaps;
  sub_221458FFC(&v183);
  p_undoSymbolTableMaps = &v188._undoSymbolTableMaps;
  sub_2210C8268(&p_undoSymbolTableMaps);
  sub_221087B80(&v188._identifierMap);
  sub_2210C82EC(&v188._symbolTableMap);
}

- (id)variableUsageError
{
  v5 = objc_msgSend_documentLocale(self->_calcEngine, a2, v2, v3);
  TSCESymbolTable::TSCESymbolTable(&v102, v5);

  p_undoSymbolTableMaps = 0;
  v100 = 0;
  v101 = 0;
  v6 = self->_root;
  v98 = 0;
  v97 = v6;
  sub_221458860(&p_undoSymbolTableMaps, &v97, v7, v8, v9, v10);

  while (1)
  {
    v11 = v100;
    if (p_undoSymbolTableMaps == v100)
    {
      v88 = 0;
      goto LABEL_43;
    }

    v12 = *(v100 - 3);
    v13 = *(v11 - 2);
    sub_221459050(&p_undoSymbolTableMaps, (v100 - 3));
    v14 = v12;
    v18 = objc_msgSend_nodeType(v14, v15, v16, v17);
    if (v18 <= 24)
    {
      break;
    }

    if (v18 != 25)
    {
      if (v18 != 26)
      {
        goto LABEL_25;
      }

LABEL_9:
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCEFormulaNodeTree variableUsageError]", v21);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaNodeTree.mm", v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 368, 0, "Consider handling these, so we don't REQUIRE formula to be in the vague setup using FunctionNode for Let/Lambda?");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
      goto LABEL_25;
    }

    TSCESymbolTable::endScope(&v102, v19, v20, v21);
LABEL_25:
    v66 = objc_msgSend_children(v14, v19, v20, v21);
    v70 = objc_msgSend_count(v66, v67, v68, v69);

    if (v70)
    {
      v74 = objc_msgSend_children(v14, v71, v72, v73);
      v78 = objc_msgSend_count(v74, v75, v76, v77);
      if (v78)
      {
        v81 = v78 - 1;
        do
        {
          v82 = objc_msgSend_objectAtIndexedSubscript_(v74, v79, v81, v80);
          v83 = v14;
          *&v97 = v82;
          *(&v97 + 1) = v83;
          v98 = v81;
          sub_221458860(&p_undoSymbolTableMaps, &v97, v84, v85, v86, v87);

          --v81;
        }

        while (v81 != -1);
      }
    }
  }

  if (v18 != 14)
  {
    if (v18 == 23)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  v31 = v14;
  v38 = objc_msgSend_functionIndex(v31, v32, v33, v34);
  if ((v38 - 363) > 1u)
  {
LABEL_23:

    goto LABEL_25;
  }

  v96 = objc_msgSend_children(v31, v35, v36, v37);
  v42 = objc_msgSend_count(v96, v39, v40, v41);
  if (v42 < 2)
  {
LABEL_22:

    goto LABEL_23;
  }

  TSCESymbolTable::beginScope(&v102);
  v45 = 0;
  if (v38 == 363)
  {
    v46 = 2;
  }

  else
  {
    v46 = 1;
  }

  v47 = v42 - 1;
  while (1)
  {
    v48 = objc_msgSend_objectAtIndexedSubscript_(v96, v43, v45, v44);
    if (!objc_msgSend_isIdentifierNode(v48, v49, v50, v51))
    {
      break;
    }

    v55 = v48;
    v59 = objc_msgSend_fullIdentifier(v55, v56, v57, v58);
    if ((TSCESymbolTable::isAcceptableIdentifier(v59, v60) & 1) == 0)
    {
      v94 = objc_msgSend_unacceptableIdentifierError_(TSCEError, v61, v59, v62);
LABEL_41:
      v88 = v94;

      goto LABEL_42;
    }

    if (v38 == 364 && TSCESymbolTable::lookup(&v102, &v59->_locale, 1))
    {
      v94 = objc_msgSend_repeatedIdentifierError_(TSCEError, v63, v59, v64);
      goto LABEL_41;
    }

    TSCESymbolTable::createSymbol(&v102, &v59->_locale);

    v45 += v46;
    if (v45 >= v47)
    {
      TSCESymbolTable::endScope(&v102, v43, v65, v44);
      goto LABEL_22;
    }
  }

  isEmptyNode = objc_msgSend_isEmptyNode(v48, v52, v53, v54);
  if (v38 == 364)
  {
    v92 = isEmptyNode;
  }

  else
  {
    v92 = 0;
  }

  if (v92 == 1)
  {
    objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v90, 364, v91);
  }

  else
  {
    objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v90, v38, v91);
  }
  v55 = ;
  v88 = objc_msgSend_requiresIdentifierError_argIndex_(TSCEError, v93, v55, (v45 + 1));
LABEL_42:

LABEL_43:
  *&v97 = &p_undoSymbolTableMaps;
  sub_221458FFC(&v97);
  p_undoSymbolTableMaps = &v102._undoSymbolTableMaps;
  sub_2210C8268(&p_undoSymbolTableMaps);
  sub_221087B80(&v102._identifierMap);
  sub_2210C82EC(&v102._symbolTableMap);

  return v88;
}

- (id)convertToFormula:(id *)formula
{
  objc_msgSend_resolveIdentifiers(self, a2, formula, v3);
  v9 = objc_msgSend_variableUsageError(self, v6, v7, v8);
  v10 = v9;
  if (!v9)
  {
    __C(8uLL);
  }

  if (formula)
  {
    v11 = v9;
    *formula = v10;
  }

  return 0;
}

- (TSKUIDStruct)hostTableUID
{
  upper = self->_hostTableUID._upper;
  lower = self->_hostTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)hostColumnUID
{
  upper = self->_hostColumnUID._upper;
  lower = self->_hostColumnUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)hostRowUID
{
  upper = self->_hostRowUID._upper;
  lower = self->_hostRowUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0x7FFF7FFFFFFFLL;
  return self;
}

@end