@interface TSTConditionalStyleSet
- (BOOL)containsUidReferences;
- (BOOL)hasBadRefWithUidInfo;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForInspector:(id)inspector;
- (TSTConditionalStyleSet)initWithConditionalStyleSet:(id)set;
- (TSTConditionalStyleSet)initWithContext:(id)context rules:(id)rules;
- (id)copyByClearingUids:(id)uids containingTableUID:(const TSKUIDStruct *)d;
- (id)copyByOffsettingRelativeReferencesWithOffset:(TSUColumnRowOffset)offset;
- (id)copyByRemappingHostCellAgnosticOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error;
- (id)copyByRemappingOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error;
- (id)copyByRepairingBadReferences:(TSCEFormulaRewriteContext *)references clearUidHistory:(BOOL)history;
- (id)copyByReparenting:(id)reparenting groupByUID:(const TSKUIDStruct *)d rewriteContext:(TSCEFormulaRewriteContext *)context;
- (id)copyByRewritingWithContext:(TSCEFormulaRewriteContext *)context rewriteBlock:(id)block;
- (id)copyByRewritingWithSpec:(id)spec inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate;
- (id)copyByUpdatingHostCellRef:(const TSCECellRef *)ref;
- (id)copyByUpgradingToLinkedRefAtHostCellRef:(const TSCECellRef *)ref;
- (id)copyToGeometricFormWithRewriteContext:(TSCEFormulaRewriteContext *)context;
- (id)copyToUidFormForTableInfo:(id)info inCellCoordinate:(TSUCellCoord)coordinate preserveHostCell:(BOOL)cell;
- (id)copyWithContext:(id)context;
- (id)description;
- (id)precedentsWithCalcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d hostCellID:(const TSUCellCoord *)iD;
- (id)ruleAtIndex:(unint64_t)index;
- (id)rulesDescription;
- (unint64_t)hash;
- (void)iterateFormulasWithContext:(TSCEFormulaRewriteContext *)context block:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setHostCell:(const TSKUIDStruct *)cell hostColumnUID:(const TSKUIDStruct *)d hostRowUID:(const TSKUIDStruct *)iD;
@end

@implementation TSTConditionalStyleSet

- (TSTConditionalStyleSet)initWithConditionalStyleSet:(id)set
{
  setCopy = set;
  v8 = objc_msgSend_context(setCopy, v5, v6, v7);
  v10 = objc_msgSend_initWithContext_rules_(self, v9, v8, setCopy[8]);

  return v10;
}

- (TSTConditionalStyleSet)initWithContext:(id)context rules:(id)rules
{
  contextCopy = context;
  rulesCopy = rules;
  v15.receiver = self;
  v15.super_class = TSTConditionalStyleSet;
  v8 = [(TSTConditionalStyleSet *)&v15 initWithContext:contextCopy];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v12 = objc_msgSend_initWithArray_(v9, v10, rulesCopy, v11);
    conditionalStyleSetRules = v8->_conditionalStyleSetRules;
    v8->_conditionalStyleSetRules = v12;
  }

  return v8;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7);
  for (i = 0; i < objc_msgSend_count(self->_conditionalStyleSetRules, v8, v9, v10); ++i)
  {
    v15 = objc_msgSend_objectAtIndex_(self->_conditionalStyleSetRules, v13, i, v14);
    v18 = objc_msgSend_copyWithContext_(v15, v16, contextCopy, v17);

    objc_msgSend_addObject_(v11, v19, v18, v20);
  }

  v21 = objc_alloc(objc_opt_class());
  v23 = objc_msgSend_initWithContext_rules_(v21, v22, contextCopy, v11);

  return v23;
}

- (id)copyByRemappingOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, map, context);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = self->_conditionalStyleSetRules;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v27, v31, 16);
  if (v13)
  {
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = objc_msgSend_copyByRemappingOwnerUIDsWithMap_rewriteContext_error_(*(*(&v27 + 1) + 8 * v15), v12, map, context, error, v27);
        objc_msgSend_addObject_(v9, v17, v16, v18);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v27, v31, 16);
    }

    while (v13);
  }

  v19 = objc_alloc(objc_opt_class());
  v23 = objc_msgSend_context(self, v20, v21, v22);
  v25 = objc_msgSend_initWithContext_rules_(v19, v24, v23, v9);

  return v25;
}

- (id)copyByRemappingHostCellAgnosticOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, map, context);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = self->_conditionalStyleSetRules;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v29, v33, 16);
  if (v13)
  {
    v14 = *v30;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v28 = 0;
        v17 = objc_msgSend_copyByRemappingHostCellAgnosticOwnerUIDsWithMap_rewriteContext_error_(v16, v12, map, context, &v28);
        v20 = v17;
        if (v28 == 1)
        {
          if (error)
          {
            *error = 1;
          }

          v26 = 0;
          goto LABEL_13;
        }

        objc_msgSend_addObject_(v9, v18, v17, v19);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v29, v33, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v21 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_context(self, v22, v23, v24);
  v26 = objc_msgSend_initWithContext_rules_(v21, v25, v10, v9);
LABEL_13:

  return v26;
}

- (id)copyByRewritingWithSpec:(id)spec inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate
{
  v36 = *MEMORY[0x277D85DE8];
  specCopy = spec;
  ownerCopy = owner;
  v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = self->_conditionalStyleSetRules;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v31, v35, 16);
  if (v17)
  {
    v18 = *v32;
    do
    {
      v19 = 0;
      do
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = objc_msgSend_copyByRewritingWithSpec_inOwner_inCellCoordinate_(*(*(&v31 + 1) + 8 * v19), v16, specCopy, ownerCopy, coordinate, v31);
        objc_msgSend_addObject_(v13, v21, v20, v22);

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v31, v35, 16);
    }

    while (v17);
  }

  v23 = objc_alloc(objc_opt_class());
  v27 = objc_msgSend_context(self, v24, v25, v26);
  v29 = objc_msgSend_initWithContext_rules_(v23, v28, v27, v13);

  return v29;
}

- (id)copyByOffsettingRelativeReferencesWithOffset:(TSUColumnRowOffset)offset
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, *&offset, v3);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_conditionalStyleSetRules;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v29, 16);
  if (v11)
  {
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend_copyByOffsettingRelativeReferencesWithOffset_(*(*(&v25 + 1) + 8 * v13), v9, *&offset, v10, v25);
        objc_msgSend_addObject_(v6, v15, v14, v16);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v25, v29, 16);
    }

    while (v11);
  }

  v17 = objc_alloc(objc_opt_class());
  v21 = objc_msgSend_context(self, v18, v19, v20);
  v23 = objc_msgSend_initWithContext_rules_(v17, v22, v21, v6);

  return v23;
}

- (id)copyByUpgradingToLinkedRefAtHostCellRef:(const TSCECellRef *)ref
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, ref, v3);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_conditionalStyleSetRules;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v29, 16);
  if (v11)
  {
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend_copyByUpgradingToLinkedRefAtHostCellRef_(*(*(&v25 + 1) + 8 * v13), v9, ref, v10, v25);
        objc_msgSend_addObject_(v6, v15, v14, v16);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v25, v29, 16);
    }

    while (v11);
  }

  v17 = objc_alloc(objc_opt_class());
  v21 = objc_msgSend_context(self, v18, v19, v20);
  v23 = objc_msgSend_initWithContext_rules_(v17, v22, v21, v6);

  return v23;
}

- (id)copyByUpdatingHostCellRef:(const TSCECellRef *)ref
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, ref, v3);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_conditionalStyleSetRules;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v29, 16);
  if (v11)
  {
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend_copyByUpdatingHostCellRef_(*(*(&v25 + 1) + 8 * v13), v9, ref, v10, v25);
        objc_msgSend_addObject_(v6, v15, v14, v16);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v25, v29, 16);
    }

    while (v11);
  }

  v17 = objc_alloc(objc_opt_class());
  v21 = objc_msgSend_context(self, v18, v19, v20);
  v23 = objc_msgSend_initWithContext_rules_(v17, v22, v21, v6);

  return v23;
}

- (id)copyByRewritingWithContext:(TSCEFormulaRewriteContext *)context rewriteBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = self->_conditionalStyleSetRules;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v31, v35, 16);
  selfCopy = self;
  if (!v14)
  {

LABEL_11:
    v28 = selfCopy;
    goto LABEL_12;
  }

  v15 = 0;
  v16 = *v32;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v32 != v16)
      {
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v31 + 1) + 8 * i);
      v19 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(v18, v13, context, blockCopy);
      objc_msgSend_addObject_(v10, v20, v19, v21);

      v15 |= v18 != v19;
    }

    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v31, v35, 16);
  }

  while (v14);

  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

  v22 = objc_alloc(objc_opt_class());
  v26 = objc_msgSend_context(selfCopy, v23, v24, v25);
  v28 = objc_msgSend_initWithContext_rules_(v22, v27, v26, v10);

LABEL_12:
  return v28;
}

- (void)iterateFormulasWithContext:(TSCEFormulaRewriteContext *)context block:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_conditionalStyleSetRules;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v13, v18, 16);
  if (v10)
  {
    v11 = *v14;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v7);
      }

      objc_msgSend_iterateFormulasWithContext_shouldStop_block_(*(*(&v13 + 1) + 8 * v12), v9, context, &v17, blockCopy, v13);
      if (v17)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v13, v18, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)copyByReparenting:(id)reparenting groupByUID:(const TSKUIDStruct *)d rewriteContext:(TSCEFormulaRewriteContext *)context
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22148AE2C;
  v6[3] = &unk_2784653E0;
  v6[4] = d;
  return objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, a2, context, v6);
}

- (id)copyByClearingUids:(id)uids containingTableUID:(const TSKUIDStruct *)d
{
  v33 = *MEMORY[0x277D85DE8];
  uidsCopy = uids;
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_conditionalStyleSetRules;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v28, v32, 16);
  if (v14)
  {
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = objc_msgSend_copyByClearingUids_containingTableUID_(*(*(&v28 + 1) + 8 * v16), v13, uidsCopy, d, v28);
        objc_msgSend_addObject_(v10, v18, v17, v19);

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v28, v32, 16);
    }

    while (v14);
  }

  v20 = objc_alloc(objc_opt_class());
  v24 = objc_msgSend_context(self, v21, v22, v23);
  v26 = objc_msgSend_initWithContext_rules_(v20, v25, v24, v10);

  return v26;
}

- (void)setHostCell:(const TSKUIDStruct *)cell hostColumnUID:(const TSKUIDStruct *)d hostRowUID:(const TSKUIDStruct *)iD
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_conditionalStyleSetRules;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v14, v18, 16);
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_setHostCell_hostColumnUID_hostRowUID_(*(*(&v14 + 1) + 8 * v13++), v10, cell, d, iD, v14);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v14, v18, 16);
    }

    while (v11);
  }
}

- (id)copyToUidFormForTableInfo:(id)info inCellCoordinate:(TSUCellCoord)coordinate preserveHostCell:(BOOL)cell
{
  cellCopy = cell;
  v35 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10, v11);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = self->_conditionalStyleSetRules;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v30, v34, 16);
  if (v16)
  {
    v17 = *v31;
    do
    {
      v18 = 0;
      do
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = objc_msgSend_copyToUidFormForTableInfo_inCellCoordinate_preserveHostCell_(*(*(&v30 + 1) + 8 * v18), v15, infoCopy, *&coordinate, cellCopy, v30);
        objc_msgSend_addObject_(v12, v20, v19, v21);

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v30, v34, 16);
    }

    while (v16);
  }

  v22 = objc_alloc(objc_opt_class());
  v26 = objc_msgSend_context(self, v23, v24, v25);
  v28 = objc_msgSend_initWithContext_rules_(v22, v27, v26, v12);

  return v28;
}

- (id)copyToGeometricFormWithRewriteContext:(TSCEFormulaRewriteContext *)context
{
  v5 = context->var0;
  v6 = TSCEFormulaRewriteContext::containingTableUID(context);
  v8 = objc_msgSend_ownerKindForOwnerUID_(v5, v7, v6, v7);

  if (v8 == 1)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTConditionalStyleSet copyToGeometricFormWithRewriteContext:]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConditionalStyleSet.mm", v14);
    v23._lower = TSCEFormulaRewriteContext::containingTableUID(context);
    v23._upper = v16;
    v17 = TSKUIDStruct::description(&v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v12, v15, 226, 0, "Trying to rewrite a conditional style with a non-conditionalStyleFormulaOwner containing ownerUID: %@", v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  return objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v9, context, &unk_2834A86E8);
}

- (id)copyByRepairingBadReferences:(TSCEFormulaRewriteContext *)references clearUidHistory:(BOOL)history
{
  v7 = references->var0;
  v8 = TSCEFormulaRewriteContext::containingTableUID(references);
  v10 = objc_msgSend_ownerKindForOwnerUID_(v7, v9, v8, v9);

  if (v10 == 1)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTConditionalStyleSet copyByRepairingBadReferences:clearUidHistory:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConditionalStyleSet.mm", v16);
    v27._lower = TSCEFormulaRewriteContext::containingTableUID(references);
    v27._upper = v18;
    v19 = TSKUIDStruct::description(&v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v14, v17, 235, 0, "Trying to rewrite a conditional style with a non-conditionalStyleFormulaOwner containing ownerUID: %@", v19);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22148B6E8;
  v25[3] = &unk_278465A38;
  historyCopy = history;
  return objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v11, references, v25);
}

- (BOOL)containsUidReferences
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_conditionalStyleSetRules;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_containsUidReferences(*(*(&v11 + 1) + 8 * i), v4, v5, v6, v11))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)hasBadRefWithUidInfo
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_conditionalStyleSetRules;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_hasBadRefWithUidInfo(*(*(&v11 + 1) + 8 * i), v4, v5, v6, v11))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)precedentsWithCalcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d hostCellID:(const TSUCellCoord *)iD
{
  v31 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  v12 = engineCopy;
  if (engineCopy)
  {
    v13 = objc_msgSend_emptyReferenceSetWrapper(engineCopy, v9, v10, v11);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = self->_conditionalStyleSetRules;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v26, v30, 16);
    if (v19)
    {
      v20 = *v27;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = *(*(&v26 + 1) + 8 * i);
          v23 = objc_msgSend_referenceSet(v13, v16, v17, v18, v26);
          objc_msgSend_getPrecedents_calcEngine_hostOwnerUID_hostCellID_(v22, v24, v23, v12, d, iD);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v26, v30, 16);
      }

      while (v19);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  result = objc_msgSend_ruleCount(self, a2, v2, v3);
  if (result)
  {
    v9 = objc_msgSend_ruleCount(self, v6, v7, v8);
    v12 = v9;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    if (v9 <= 6)
    {
      v16 = 6;
    }

    else
    {
      v16 = v9;
    }

    do
    {
      v17 = objc_msgSend_ruleAtIndex_(self, v10, v14, v11);
      v21 = objc_msgSend_predicate(v17, v18, v19, v20);
      v15 |= (objc_msgSend_predicateType(v21, v22, v23, v24) << v13);

      ++v14;
      v13 += 8;
    }

    while (v16 != v14);
    return v15 | ((v12 & 0xFFF) << 48);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  p_isa = &equalCopy->super.super.isa;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v9 = objc_msgSend_count(self->_conditionalStyleSetRules, v6, v7, v8), v9 == objc_msgSend_count(p_isa[8], v10, v11, v12)))
  {
    v16 = 0;
    do
    {
      v17 = objc_msgSend_count(self->_conditionalStyleSetRules, v13, v14, v15);
      v20 = v16 >= v17;
      if (v16 >= v17)
      {
        break;
      }

      v21 = objc_msgSend_objectAtIndex_(self->_conditionalStyleSetRules, v18, v16, v19);
      v24 = objc_msgSend_objectAtIndex_(p_isa[8], v22, v16, v23);
      isEqual = objc_msgSend_isEqual_(v21, v25, v24, v26);

      ++v16;
    }

    while ((isEqual & 1) != 0);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)isEqualForInspector:(id)inspector
{
  inspectorCopy = inspector;
  p_isa = &inspectorCopy->super.super.isa;
  if (self == inspectorCopy)
  {
    v20 = 1;
  }

  else if (inspectorCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v9 = objc_msgSend_count(self->_conditionalStyleSetRules, v6, v7, v8), v9 == objc_msgSend_count(p_isa[8], v10, v11, v12)))
  {
    v16 = 0;
    do
    {
      v17 = objc_msgSend_count(self->_conditionalStyleSetRules, v13, v14, v15);
      v20 = v16 >= v17;
      if (v16 >= v17)
      {
        break;
      }

      v21 = objc_msgSend_objectAtIndex_(self->_conditionalStyleSetRules, v18, v16, v19);
      v24 = objc_msgSend_objectAtIndex_(p_isa[8], v22, v16, v23);
      isEqualForInspector = objc_msgSend_isEqualForInspector_(v21, v25, v24, v26);

      ++v16;
    }

    while ((isEqualForInspector & 1) != 0);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p>: Rules:\n", v6, v4, self);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_conditionalStyleSetRules;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_appendFormat_(v7, v10, @"\t%@\n", v11, *(*(&v16 + 1) + 8 * i));
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v16, v20, 16);
    }

    while (v12);
  }

  return v7;
}

- (id)rulesDescription
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], a2, @"CS Rules: ", v2);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_conditionalStyleSetRules;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_predicateDescription(*(*(&v17 + 1) + 8 * i), v7, v8, v9);
        objc_msgSend_appendFormat_(v4, v14, @"\t%@ ", v15, v13);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v17, v21, 16);
    }

    while (v10);
  }

  return v4;
}

- (id)ruleAtIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_conditionalStyleSetRules, a2, index, v3) <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndex_(self->_conditionalStyleSetRules, v6, index, v7);
  }

  return v8;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_fileFormatVersion(unarchiverCopy, v5, v6, v7, unarchiverCopy) == 0x300020000000ALL)
  {
    objc_msgSend_willModifyForUpgrade(self, v8, v9, v10);
  }

  v11 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v14 = objc_msgSend_messageWithDescriptor_(v11, v12, off_2812E4498[178], v13);

  v15 = *(v14 + 56);
  v16 = objc_alloc(MEMORY[0x277CBEB18]);
  v19 = objc_msgSend_initWithCapacity_(v16, v17, v15, v18);
  conditionalStyleSetRules = self->_conditionalStyleSetRules;
  self->_conditionalStyleSetRules = v19;

  selfCopy = self;
  if (*(v14 + 16))
  {
    v49 = *(v14 + 48);
    v50 = *(v49 + 24);
    if (v50 >= 1)
    {
      for (i = 0; i != v50; ++i)
      {
        v52 = *(*(v49 + 32) + 8 * i + 8);
        if (*(v52 + 16))
        {
          v53 = [TSTFormulaPredicate alloc];
          v56 = (*(v52 + 24) ? objc_msgSend_initFromArchive_(v53, v54, *(v52 + 24), v55) : objc_msgSend_initFromArchive_(v53, v54, TST::_FormulaPredicateArchive_default_instance_, v55));
          v59 = v56;
          if (v56)
          {
            objc_msgSend_setForConditionalStyle_(v56, v57, 1, v58);
            v60 = [TSTConditionalStyleRule alloc];
            v62 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v60, v61, v59, 0, 0);
            objc_msgSend_insertObject_atIndex_(selfCopy->_conditionalStyleSetRules, v63, v62, i);
            v94 = 0;
            v95 = &v94;
            v96 = 0x3032000000;
            v97 = sub_22148C95C;
            v98 = sub_22148C96C;
            v99 = 0;
            v88 = 0;
            v89 = &v88;
            v90 = 0x3032000000;
            v91 = sub_22148C95C;
            v92 = sub_22148C96C;
            v93 = 0;
            v64 = *(v52 + 32);
            v87[0] = MEMORY[0x277D85DD0];
            v87[1] = 3221225472;
            v87[2] = sub_22148C974;
            v87[3] = &unk_278465A60;
            v87[4] = &v94;
            v65 = v11;
            v67 = objc_opt_class();
            if (v64)
            {
              objc_msgSend_readReferenceMessage_class_protocol_completion_(v65, v66, v64, v67, 0, v87);
            }

            else
            {
              objc_msgSend_readReferenceMessage_class_protocol_completion_(v65, v66, MEMORY[0x277D80A18], v67, 0, v87);
            }

            v68 = *(v52 + 40);
            v86[0] = MEMORY[0x277D85DD0];
            v86[1] = 3221225472;
            v86[2] = sub_22148C984;
            v86[3] = &unk_278465A88;
            v86[4] = &v88;
            v69 = v65;
            v71 = objc_opt_class();
            if (v68)
            {
              objc_msgSend_readReferenceMessage_class_protocol_completion_(v69, v70, v68, v71, 0, v86);
            }

            else
            {
              objc_msgSend_readReferenceMessage_class_protocol_completion_(v69, v70, MEMORY[0x277D80A18], v71, 0, v86);
            }

            v82[0] = MEMORY[0x277D85DD0];
            v82[1] = 3221225472;
            v82[2] = sub_22148CA04;
            v82[3] = &unk_2784604D0;
            v72 = v62;
            v83 = v72;
            v84 = &v94;
            v85 = &v88;
            objc_msgSend_addFinalizeHandler_(v69, v73, v82, v74);

            _Block_object_dispose(&v88, 8);
            _Block_object_dispose(&v94, 8);
          }
        }
      }
    }
  }

  else
  {
    objc_msgSend_willModifyForUpgrade(self, v21, v22, v23);
    v24 = *(v14 + 32);
    if (v24 >= 1)
    {
      for (j = 0; j != v24; ++j)
      {
        v26 = *(*(v14 + 40) + 8 * j + 8);
        v27 = [TSTFormulaPredicate alloc];
        if (v26[3])
        {
          v30 = objc_msgSend_initFromPrePivotArchive_(v27, v28, v26[3], v29);
        }

        else
        {
          v30 = objc_msgSend_initFromPrePivotArchive_(v27, v28, TST::_FormulaPredicatePrePivotArchive_default_instance_, v29);
        }

        v33 = v30;
        if (v30)
        {
          objc_msgSend_setForConditionalStyle_(v30, v31, 1, v32);
          v34 = [TSTConditionalStyleRule alloc];
          v36 = objc_msgSend_initWithPredicate_cellStyle_textStyle_(v34, v35, v33, 0, 0);
          objc_msgSend_insertObject_atIndex_(self->_conditionalStyleSetRules, v37, v36, j);
          v94 = 0;
          v95 = &v94;
          v96 = 0x3032000000;
          v97 = sub_22148C95C;
          v98 = sub_22148C96C;
          v99 = 0;
          v88 = 0;
          v89 = &v88;
          v90 = 0x3032000000;
          v91 = sub_22148C95C;
          v92 = sub_22148C96C;
          v93 = 0;
          v38 = v26[4];
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = sub_22148CA78;
          v81[3] = &unk_278465A60;
          v81[4] = &v94;
          v39 = v11;
          v41 = objc_opt_class();
          if (v38)
          {
            objc_msgSend_readReferenceMessage_class_protocol_completion_(v39, v40, v38, v41, 0, v81);
          }

          else
          {
            objc_msgSend_readReferenceMessage_class_protocol_completion_(v39, v40, MEMORY[0x277D80A18], v41, 0, v81);
          }

          v42 = v26[5];
          v80[0] = MEMORY[0x277D85DD0];
          v80[1] = 3221225472;
          v80[2] = sub_22148CA88;
          v80[3] = &unk_278465A88;
          v80[4] = &v88;
          v43 = v39;
          v45 = objc_opt_class();
          if (v42)
          {
            objc_msgSend_readReferenceMessage_class_protocol_completion_(v43, v44, v42, v45, 0, v80);
          }

          else
          {
            objc_msgSend_readReferenceMessage_class_protocol_completion_(v43, v44, MEMORY[0x277D80A18], v45, 0, v80);
          }

          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = sub_22148CB08;
          v76[3] = &unk_2784604D0;
          v46 = v36;
          v77 = v46;
          v78 = &v94;
          v79 = &v88;
          objc_msgSend_addFinalizeHandler_(v43, v47, v76, v48);

          _Block_object_dispose(&v88, 8);
          _Block_object_dispose(&v94, 8);
        }
      }
    }
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22148D134, off_2812E4498[178]);

  v9 = objc_msgSend_ruleCount(self, v6, v7, v8);
  *(v5 + 16) |= 2u;
  *(v5 + 56) = v9;
  v83 = objc_msgSend_objectLocale(self, v10, v11, v12);
  *(v5 + 16) |= 1u;
  v15 = *(v5 + 48);
  if (!v15)
  {
    v16 = *(v5 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TST::ConditionalStyleSetArchive_ConditionalStyleRules>(v16);
    *(v5 + 48) = v15;
  }

  v82 = v9;
  if (v9)
  {
    v17 = 0;
    v18 = v9;
    LOBYTE(canDowngradeForPrePivotFormat) = 1;
    while (1)
    {
      v20 = *(v15 + 32);
      if (!v20)
      {
        goto LABEL_12;
      }

      v21 = *(v15 + 24);
      v22 = *v20;
      if (v21 >= *v20)
      {
        break;
      }

      *(v15 + 24) = v21 + 1;
      v23 = *&v20[2 * v21 + 2];
LABEL_14:
      v26 = objc_msgSend_ruleAtIndex_(self, v13, v17, v14);
      v31 = objc_msgSend_predicate(v26, v27, v28, v29);
      *(v23 + 16) |= 1u;
      v32 = *(v23 + 24);
      if (!v32)
      {
        v33 = *(v23 + 8);
        if (v33)
        {
          v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
        }

        v32 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicateArchive>(v33, v30);
        *(v23 + 24) = v32;
      }

      objc_msgSend_encodeToArchive_archiver_(v31, v30, v32, archiverCopy);
      if (canDowngradeForPrePivotFormat)
      {
        if (objc_msgSend_backwardCompatiblePrePivot(v31, v34, v35, v36))
        {
          canDowngradeForPrePivotFormat = 1;
        }

        else
        {
          canDowngradeForPrePivotFormat = objc_msgSend_canDowngradeForPrePivotFormat(v31, v34, v35, v36);
        }
      }

      else
      {
        canDowngradeForPrePivotFormat = 0;
      }

      v38 = objc_msgSend_privateTextStyle(v26, v34, v35, v36);
      *(v23 + 16) |= 4u;
      v39 = *(v23 + 40);
      if (!v39)
      {
        v40 = *(v23 + 8);
        if (v40)
        {
          v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
        }

        v39 = MEMORY[0x223DA0390](v40);
        *(v23 + 40) = v39;
      }

      objc_msgSend_setStrongReference_message_(archiverCopy, v37, v38, v39);

      v45 = objc_msgSend_privateCellStyle(v26, v41, v42, v43);
      *(v23 + 16) |= 2u;
      v46 = *(v23 + 32);
      if (!v46)
      {
        v47 = *(v23 + 8);
        if (v47)
        {
          v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
        }

        v46 = MEMORY[0x223DA0390](v47);
        *(v23 + 32) = v46;
      }

      objc_msgSend_setStrongReference_message_(archiverCopy, v44, v45, v46);

      if (v18 == ++v17)
      {
        goto LABEL_34;
      }
    }

    if (v22 == *(v15 + 28))
    {
LABEL_12:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v15 + 16));
      v20 = *(v15 + 32);
      v22 = *v20;
    }

    *v20 = v22 + 1;
    v23 = google::protobuf::Arena::CreateMaybeMessage<TST::ConditionalStyleSetArchive_ConditionalStyleRule>(*(v15 + 16));
    v24 = *(v15 + 24);
    v25 = *(v15 + 32) + 8 * v24;
    *(v15 + 24) = v24 + 1;
    *(v25 + 8) = v23;
    goto LABEL_14;
  }

  canDowngradeForPrePivotFormat = 1;
LABEL_34:
  objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v13, 3, v5);
  if (canDowngradeForPrePivotFormat)
  {
    if (v82)
    {
      v50 = 0;
      while (1)
      {
        v51 = *(v5 + 40);
        if (!v51)
        {
          goto LABEL_42;
        }

        v52 = *(v5 + 32);
        v53 = *v51;
        if (v52 >= *v51)
        {
          break;
        }

        *(v5 + 32) = v52 + 1;
        v54 = *&v51[2 * v52 + 2];
LABEL_44:
        v57 = objc_msgSend_ruleAtIndex_(self, v48, v50, v49);
        v61 = objc_msgSend_predicate(v57, v58, v59, v60);
        if ((objc_msgSend_backwardCompatiblePrePivot(v61, v62, v63, v64) & 1) == 0)
        {
          v68 = objc_msgSend_downgradeForPrePivotFormatForLocale_(v61, v65, v83, v67);

          v61 = v68;
        }

        if (v61)
        {
          *(v54 + 16) |= 1u;
          v69 = *(v54 + 24);
          if (!v69)
          {
            v70 = *(v54 + 8);
            if (v70)
            {
              v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
            }

            v69 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredicatePrePivotArchive>(v70, v65);
            *(v54 + 24) = v69;
          }

          objc_msgSend_encodeToPrePivotArchive_archiver_(v61, v65, v69, archiverCopy);
        }

        v72 = objc_msgSend_privateTextStyle(v57, v65, v66, v67);
        *(v54 + 16) |= 4u;
        v73 = *(v54 + 40);
        if (!v73)
        {
          v74 = *(v54 + 8);
          if (v74)
          {
            v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
          }

          v73 = MEMORY[0x223DA0390](v74);
          *(v54 + 40) = v73;
        }

        objc_msgSend_setStrongReference_message_(archiverCopy, v71, v72, v73);

        v79 = objc_msgSend_privateCellStyle(v57, v75, v76, v77);
        *(v54 + 16) |= 2u;
        v80 = *(v54 + 32);
        if (!v80)
        {
          v81 = *(v54 + 8);
          if (v81)
          {
            v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
          }

          v80 = MEMORY[0x223DA0390](v81);
          *(v54 + 32) = v80;
        }

        objc_msgSend_setStrongReference_message_(archiverCopy, v78, v79, v80);

        if (v82 == ++v50)
        {
          goto LABEL_63;
        }
      }

      if (v53 == *(v5 + 36))
      {
LABEL_42:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24));
        v51 = *(v5 + 40);
        v53 = *v51;
      }

      *v51 = v53 + 1;
      v54 = google::protobuf::Arena::CreateMaybeMessage<TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot>(*(v5 + 24));
      v55 = *(v5 + 32);
      v56 = *(v5 + 40) + 8 * v55;
      *(v5 + 32) = v55 + 1;
      *(v56 + 8) = v54;
      goto LABEL_44;
    }
  }

  else
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v48, 0xB000200000006, @"TSTPivotTables");
  }

LABEL_63:
}

@end