@interface TSCERangeDependencies
- (BOOL)addRangeReference:(const TSCEInternalCellReference *)reference toRange:(const TSCERangeCoordinate *)range;
- (BOOL)cellHasDeepPrecedentInRange:(const TSUCellCoord *)range cellRange:(const TSCEInternalRangeReference *)cellRange;
- (BOOL)hasDependentsAtCoord:(const TSUCellCoord *)coord;
- (BOOL)hasPrecedentsAtCoord:(const TSUCellCoord *)coord;
- (BOOL)isEmpty;
- (TSCERangeDependencies)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d;
- (TSKUIDStruct)ownerUID;
- (id)explainDirtyPrecedentCount:(TSUCellCoord)count cellIsInACycle:(BOOL)cycle;
- (id)findTileForToOwnerId:(unsigned __int16)id createIfMissing:(BOOL)missing;
- (id)precedentsAsString:(TSUCellCoord)string dirtyOnly:(BOOL)only;
- (unint64_t)computedNumberOfDirtyPrecedents:(TSUCellCoord)precedents cellIsInACycle:(BOOL)cycle;
- (void)RTreeSearchWithBlock:(const TSUCellRect *)block block:(id)a4;
- (void)addPrecedentsAtCoord:(const TSUCellCoord *)coord toReferenceSet:(void *)set;
- (void)addUnarchivedPrecedent:(const TSCEUnarchiveRangePrecedent *)precedent;
- (void)cellRefsForCycleCellsReferringToCell:(const TSUCellCoord *)cell outCellRefs:(void *)refs;
- (void)decrementReferringDirtyCountAndPushNextLeaves:(const TSCECellToEvaluate *)leaves referencingCellIsInACycle:(BOOL)cycle;
- (void)deleteAllReferencesFromThisTable;
- (void)deleteRangeReferencesForFromCell:(const TSUCellCoord *)cell;
- (void)dirtyAllFormulasReferencingRange:(TSCERangeCoordinate)range;
- (void)dirtyAllReferencingFormulas;
- (void)encodeToArchive:(void *)archive;
- (void)encodeToTiledArchive:(void *)archive archiver:(id)archiver;
- (void)enumerateAllRanges:(id)ranges;
- (void)enumerateAllRangesForFromCoord:(const TSUCellCoord *)coord block:(id)block;
- (void)formulaCellsReferencingIndexes:(id)indexes rowIndexes:(id)rowIndexes outFormulaCells:(void *)cells;
- (void)formulaCellsReferencingRange:(const TSCERangeCoordinate *)range outFormulaCells:(void *)cells;
- (void)formulaCellsReferencingRangesAffectedByRewriteSpec:(id)spec outFormulaCells:(void *)cells;
- (void)formulaCoordsReferencingRange:(TSCERangeCoordinate)range inOwnerID:(unsigned __int16)d outFormulaCells:(void *)cells;
- (void)processDependentsForDFS:(id)s coord:(const TSUCellCoord *)coord outCells:(void *)cells;
- (void)pushDependents:(const TSUCellCoord *)dependents outDependents:(id)outDependents referencingCellIsInACycle:(BOOL)cycle;
- (void)readFromArchive:(const void *)archive;
- (void)readFromExpandedArchive:(const void *)archive;
- (void)readFromTiledArchive:(const void *)archive unarchiver:(id)unarchiver ownerDepends:(id)depends;
- (void)unpackAfterUnarchive;
@end

@implementation TSCERangeDependencies

- (TSCERangeDependencies)initWithDependTracker:(id)tracker ownerID:(unsigned __int16)d
{
  v7.receiver = self;
  v7.super_class = TSCERangeDependencies;
  result = [(TSCERangeDependencies *)&v7 init];
  if (result)
  {
    result->_dependencyTracker = tracker;
    result->_internalOwnerID = d;
  }

  return result;
}

- (void)RTreeSearchWithBlock:(const TSUCellRect *)block block:(id)a4
{
  v6 = a4;
  v8[0] = TSUCellRect::nonSpanningCellRectWithTableRange(block, &unk_2217E1ED0);
  v8[1] = v7;
  sub_221495334(&self->_rTree, v8, v6);
}

- (void)addUnarchivedPrecedent:(const TSCEUnarchiveRangePrecedent *)precedent
{
  end = self->_unarchivedPrecedentList.__end_;
  cap = self->_unarchivedPrecedentList.__cap_;
  if (end >= cap)
  {
    begin = self->_unarchivedPrecedentList.__begin_;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((end - begin) >> 2);
    v10 = v9 + 1;
    if ((v9 + 1) > 0x924924924924924)
    {
      sub_22107C148();
    }

    v11 = 0x6DB6DB6DB6DB6DB7 * ((cap - begin) >> 2);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x492492492492492)
    {
      v12 = 0x924924924924924;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_221499AF8(&self->_unarchivedPrecedentList, v12);
    }

    v13 = 28 * v9;
    v14 = *&precedent->var0.row;
    *(v13 + 12) = precedent->var2;
    *v13 = v14;
    v7 = (28 * v9 + 28);
    v15 = self->_unarchivedPrecedentList.__begin_;
    v16 = (self->_unarchivedPrecedentList.__end_ - v15);
    v17 = (v13 - v16);
    memcpy((v13 - v16), v15, v16);
    v18 = self->_unarchivedPrecedentList.__begin_;
    self->_unarchivedPrecedentList.__begin_ = v17;
    self->_unarchivedPrecedentList.__end_ = v7;
    self->_unarchivedPrecedentList.__cap_ = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *&precedent->var0.row;
    end->var2 = precedent->var2;
    *&end->var0.row = v6;
    v7 = end + 1;
  }

  self->_unarchivedPrecedentList.__end_ = v7;
}

- (BOOL)addRangeReference:(const TSCEInternalCellReference *)reference toRange:(const TSCERangeCoordinate *)range
{
  TSCERangeCoordinate::asCellRect(range);
  v16[0] = v6;
  v16[1] = v7;
  objc_msgSend_RTreeInsert_fromCellRef_(self, v7, v16, reference);
  v10 = objc_msgSend_dgl_rangeDependenciesForOwnerID_(self->_dependencyTracker, v8, reference->tableID, v9);
  v12 = v10;
  if (v10)
  {
    v13 = objc_msgSend_findTileForToOwnerId_createIfMissing_(v10, v11, self->_internalOwnerID, 1);
    objc_msgSend_addRect_fromCoord_(v13, v14, v16, reference);
  }

  return 1;
}

- (void)deleteRangeReferencesForFromCell:(const TSUCellCoord *)cell
{
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = sub_221495868;
  v40[4] = sub_221495878;
  v41 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_221495880;
  v39[3] = &unk_278465B28;
  v39[4] = self;
  v39[5] = v40;
  objc_msgSend_enumerateAllRangesForFromCoord_block_(self, a2, cell, v39);
  __src = 0;
  v37 = 0;
  v38 = 0;
  begin = self->_rangePrecedentsTiles.__begin_;
  var0 = self->_rangePrecedentsTiles.var0;
  if (begin != var0)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = begin[v8];
      if (objc_msgSend_containsFromCoord_(v9, v10, cell, v11))
      {
        objc_msgSend_removeRectsForFromCoord_(v9, v12, cell, v13);
        if (objc_msgSend_isEmpty(v9, v14, v15, v16))
        {
          v17 = v37;
          if (v37 >= v38)
          {
            v19 = __src;
            v20 = v37 - __src;
            v21 = (v37 - __src) >> 3;
            v22 = v21 + 1;
            if ((v21 + 1) >> 61)
            {
              sub_22107C148();
            }

            v23 = v38 - __src;
            if ((v38 - __src) >> 2 > v22)
            {
              v22 = v23 >> 2;
            }

            v24 = v23 >= 0x7FFFFFFFFFFFFFF8;
            v25 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v24)
            {
              v25 = v22;
            }

            if (v25)
            {
              sub_2210874C4(&__src, v25);
            }

            *(8 * v21) = v8;
            v18 = 8 * v21 + 8;
            memcpy(0, v19, v20);
            v26 = __src;
            __src = 0;
            v37 = v18;
            v38 = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v37 = v8;
            v18 = (v17 + 8);
          }

          v37 = v18;
        }
      }

      ++v8;

      ++v7;
    }

    while (&begin[v7] != var0);
    v27 = __src;
    v28 = v37;
    if (__src != v37)
    {
      v29 = self->_rangePrecedentsTiles.var0;
      do
      {
        v30 = *(v28 - 1);
        v28 -= 8;
        v31 = &self->_rangePrecedentsTiles.__begin_[v30];
        v32 = v31 + 1;
        if (v31 + 1 == v29)
        {
          v34 = v29;
          v29 = v31;
        }

        else
        {
          do
          {
            v33 = *(v32 - 1);
            *(v32 - 1) = *v32;
            *v32 = 0;

            ++v32;
          }

          while (v32 != v29);
          v34 = self->_rangePrecedentsTiles.var0;
          v29 = v32 - 1;
        }

        while (v34 != v29)
        {
          v35 = *--v34;
        }

        self->_rangePrecedentsTiles.var0 = v29;
        v27 = __src;
      }

      while (v28 != __src);
    }

    if (v27)
    {
      v37 = v27;
      operator delete(v27);
    }
  }

  _Block_object_dispose(v40, 8);
}

- (void)deleteAllReferencesFromThisTable
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_221495868;
  v8[4] = sub_221495878;
  v9 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221495A40;
  v7[3] = &unk_278465B28;
  v7[4] = self;
  v7[5] = v8;
  objc_msgSend_enumerateAllRanges_(self, a2, v7, v2);
  begin = self->_rangePrecedentsTiles.__begin_;
  for (i = self->_rangePrecedentsTiles.var0; i != begin; --i)
  {
    v6 = *(i - 1);
  }

  self->_rangePrecedentsTiles.var0 = begin;
  _Block_object_dispose(v8, 8);
}

- (void)pushDependents:(const TSUCellCoord *)dependents outDependents:(id)outDependents referencingCellIsInACycle:(BOOL)cycle
{
  cycleCopy = cycle;
  outDependentsCopy = outDependents;
  v9 = outDependentsCopy;
  v10 = *dependents;
  v26[0] = *dependents;
  v26[1] = 0x100000001;
  if (cycleCopy)
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = sub_221495868;
    v24[4] = sub_221495878;
    v25 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_221495CB0;
    v20[3] = &unk_278465B50;
    v22 = v24;
    v20[4] = self;
    v21 = outDependentsCopy;
    dependentsCopy = dependents;
    objc_msgSend_RTreeSearchWithBlock_block_(self, v11, v26, v20);

    _Block_object_dispose(v24, 8);
    v12 = v25;
  }

  else
  {
    internalOwnerID = self->_internalOwnerID;
    v14 = *&v10 & 0xFFFFFFFFFFFFLL;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_221495D6C;
    v16[3] = &unk_278465B78;
    v17 = outDependentsCopy;
    v18 = v14;
    v19 = internalOwnerID;
    objc_msgSend_RTreeSearchWithBlock_block_(self, v15, v26, v16);
    v12 = v17;
  }
}

- (void)dirtyAllReferencingFormulas
{
  v3 = xmmword_2217E1EB0;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_221495DFC;
  v2[3] = &unk_278461180;
  v2[4] = self;
  objc_msgSend_RTreeSearchWithBlock_block_(self, a2, &v3, v2);
}

- (void)dirtyAllFormulasReferencingRange:(TSCERangeCoordinate)range
{
  rangeCopy = range;
  TSCERangeCoordinate::asCellRect(&rangeCopy);
  v7[0] = v4;
  v7[1] = v5;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221495EA8;
  v6[3] = &unk_278461180;
  v6[4] = self;
  objc_msgSend_RTreeSearchWithBlock_block_(self, v5, v7, v6);
}

- (void)formulaCoordsReferencingRange:(TSCERangeCoordinate)range inOwnerID:(unsigned __int16)d outFormulaCells:(void *)cells
{
  rangeCopy = range;
  TSCERangeCoordinate::asCellRect(&rangeCopy);
  v12[0] = v8;
  v12[1] = v9;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221495F64;
  v10[3] = &unk_278465B98;
  dCopy = d;
  v10[4] = cells;
  objc_msgSend_RTreeSearchWithBlock_block_(self, v9, v12, v10);
}

- (void)decrementReferringDirtyCountAndPushNextLeaves:(const TSCECellToEvaluate *)leaves referencingCellIsInACycle:(BOOL)cycle
{
  v20[0] = leaves->var0.coordinate;
  v20[1] = 0x100000001;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_221495868;
  v18[4] = sub_221495878;
  v6 = leaves->var1;
  v19 = objc_msgSend_cellDependencies(v6, v7, v8, v9);

  v13 = objc_msgSend_currentCellBeingModified(self->_dependencyTracker, v10, v11, v12);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_221496190;
  v15[3] = &unk_278465BC0;
  v16 = v14;
  v15[5] = v18;
  v15[6] = v13;
  v15[4] = self;
  cycleCopy = cycle;
  objc_msgSend_RTreeSearchWithBlock_block_(self, v14, v20, v15);
  _Block_object_dispose(v18, 8);
}

- (BOOL)hasDependentsAtCoord:(const TSUCellCoord *)coord
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = *coord;
  v6[1] = 0x100000001;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_221496444;
  v5[3] = &unk_278465BE8;
  v5[4] = &v7;
  objc_msgSend_RTreeSearchWithBlock_block_(self, a2, v6, v5);
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)processDependentsForDFS:(id)s coord:(const TSUCellCoord *)coord outCells:(void *)cells
{
  sCopy = s;
  v14[0] = *coord;
  v14[1] = 0x100000001;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_221496528;
  v11[3] = &unk_278465C10;
  v12 = sCopy;
  cellsCopy = cells;
  v9 = sCopy;
  objc_msgSend_RTreeSearchWithBlock_block_(self, v10, v14, v11);
}

- (unint64_t)computedNumberOfDirtyPrecedents:(TSUCellCoord)precedents cellIsInACycle:(BOOL)cycle
{
  v13 = 0;
  precedentsCopy = precedents;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_221495868;
  v8[4] = sub_221495878;
  v9 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221496664;
  v6[3] = &unk_278465C38;
  v6[4] = self;
  v6[5] = v8;
  cycleCopy = cycle;
  v6[6] = &v10;
  objc_msgSend_enumerateAllRangesForFromCoord_block_(self, a2, &precedentsCopy, v6);
  v4 = v11[3];
  _Block_object_dispose(v8, 8);

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (id)explainDirtyPrecedentCount:(TSUCellCoord)count cellIsInACycle:(BOOL)cycle
{
  objc_msgSend_stringWithFormat_(MEMORY[0x277CCAB68], a2, @"Range dependencies:\n", cycle);

  return 0;
}

- (id)precedentsAsString:(TSUCellCoord)string dirtyOnly:(BOOL)only
{
  v4 = MEMORY[0x277CCAB68];
  v5 = NSStringFromTSUCellCoord();
  v8 = objc_msgSend_stringWithFormat_(v4, v6, @"%@: Range precedents:\n", v7, v5);

  return v8;
}

- (void)cellRefsForCycleCellsReferringToCell:(const TSUCellCoord *)cell outCellRefs:(void *)refs
{
  v7[0] = *cell;
  v7[1] = 0x100000001;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = sub_221495868;
  v5[4] = sub_221495878;
  v6 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2214968CC;
  v4[3] = &unk_278465C60;
  v4[4] = self;
  v4[5] = v5;
  v4[6] = refs;
  objc_msgSend_RTreeSearchWithBlock_block_(self, a2, v7, v4);
  _Block_object_dispose(v5, 8);
}

- (BOOL)hasPrecedentsAtCoord:(const TSUCellCoord *)coord
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_221496A38;
  v5[3] = &unk_278465C88;
  v5[4] = &v6;
  objc_msgSend_enumerateAllRangesForFromCoord_block_(self, a2, coord, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)addPrecedentsAtCoord:(const TSUCellCoord *)coord toReferenceSet:(void *)set
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_221496AC0;
  v4[3] = &unk_278465CB0;
  v4[4] = self;
  v4[5] = set;
  objc_msgSend_enumerateAllRangesForFromCoord_block_(self, a2, coord, v4);
}

- (BOOL)cellHasDeepPrecedentInRange:(const TSUCellCoord *)range cellRange:(const TSCEInternalRangeReference *)cellRange
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221496BEC;
  v6[3] = &unk_278465CD8;
  v6[4] = &v7;
  v6[5] = cellRange;
  objc_msgSend_enumerateAllRangesForFromCoord_block_(self, a2, range, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)formulaCellsReferencingRange:(const TSCERangeCoordinate *)range outFormulaCells:(void *)cells
{
  TSCERangeCoordinate::asCellRect(range);
  v20.origin = v6;
  v20.size = v7;
  v19[0] = TSUCellRect::nonSpanningCellRectWithTableRange(&v20, &unk_2217E1ED0);
  v19[1] = v8;
  v11 = 0;
  v12 = &v11;
  v13 = 0x5812000000;
  v14 = sub_221496DF8;
  v15 = sub_221496E04;
  v16 = &unk_22188E88F;
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221496E0C;
  v10[3] = &unk_278465D00;
  v10[4] = &v11;
  objc_msgSend_RTreeSearchWithBlock_block_(self, v8, v19, v10);
  if (!sub_2212E0280((v12 + 6)))
  {
    sub_2212E0430((v12 + 6), self->_dependencyTracker, &v9);
    TSCECellRefSet::addCellRefs(cells, &v9);
    sub_22107C800(&v9, v9._coordsForOwnerUid.__tree_.__end_node_.__left_);
  }

  _Block_object_dispose(&v11, 8);
  sub_221122744(v17);
}

- (void)formulaCellsReferencingIndexes:(id)indexes rowIndexes:(id)rowIndexes outFormulaCells:(void *)cells
{
  rowIndexesCopy = rowIndexes;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221496EE0;
  v12[3] = &unk_278463340;
  v13 = rowIndexesCopy;
  selfCopy = self;
  cellsCopy = cells;
  v9 = rowIndexesCopy;
  objc_msgSend_enumerateRangesUsingBlock_(indexes, v10, v12, v11);
}

- (void)formulaCellsReferencingRangesAffectedByRewriteSpec:(id)spec outFormulaCells:(void *)cells
{
  specCopy = spec;
  v11[0] = objc_msgSend_affectedRange(specCopy, v7, v8, v9);
  v11[1] = v10;
  objc_msgSend_formulaCellsReferencingRange_outFormulaCells_(self, v10, v11, cells);
}

- (BOOL)isEmpty
{
  if (self->_rangePrecedentsTiles.__begin_ == self->_rangePrecedentsTiles.var0)
  {
    return sub_221499B54(&self->_rTree, self->_rTree.m_root);
  }

  else
  {
    return 0;
  }
}

- (TSKUIDStruct)ownerUID
{
  v3 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(self->_dependencyTracker, a2, self->_internalOwnerID, v2);
  result._upper = v4;
  result._lower = v3;
  return result;
}

- (id)findTileForToOwnerId:(unsigned __int16)id createIfMissing:(BOOL)missing
{
  if (id == 0xFFFF)
  {
    v19 = 0;
    goto LABEL_21;
  }

  missingCopy = missing;
  idCopy = id;
  v38 = 0;
  p_rangePrecedentsTiles = &self->_rangePrecedentsTiles;
  v8 = 0;
  v9 = self->_rangePrecedentsTiles.var0 - self->_rangePrecedentsTiles.__begin_;
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9 >> 3;
  while (1)
  {
    v11 = v8 + ((v10 - v8) >> 1);
    v12 = p_rangePrecedentsTiles->__begin_[v11];
    if (objc_msgSend_toInternalOwnerID(v12, v13, v14, v15) >= idCopy)
    {
      break;
    }

    v8 = v11 + 1;
LABEL_8:

    if (v8 >= v10)
    {
      goto LABEL_12;
    }
  }

  if (objc_msgSend_toInternalOwnerID(v12, v16, v17, v18) > idCopy)
  {
    v10 = v8 + ((v10 - v8) >> 1);
    goto LABEL_8;
  }

  v38 = v12;
  if (!v12)
  {
LABEL_12:
    if (missingCopy)
    {
      if (!self->_dependencyTracker)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCERangeDependencies findTileForToOwnerId:createIfMissing:]", missing);
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERangeDependencies.mm", v23);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 479, 0, "invalid nil value for '%{public}s'", "_dependencyTracker", v38);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
      }

      v29 = [TSCERangePrecedentsTile alloc];
      v33 = objc_msgSend_objectContext(self->_dependencyTracker, v30, v31, v32);
      v38 = objc_msgSend_initWithOwnerId_context_(v29, v34, idCopy, v33);

      begin = self->_rangePrecedentsTiles.__begin_;
      v36 = self->_rangePrecedentsTiles.var0 - begin;
      if (v8 == v36 >> 3)
      {
        sub_2214972D4(p_rangePrecedentsTiles, &v38);
      }

      else
      {
        if (v8 + 1 < v36 >> 3)
        {
          begin = p_rangePrecedentsTiles->__begin_;
        }

        sub_2214973C8(p_rangePrecedentsTiles, &begin[v8], &v38);
      }
    }
  }

  v19 = v38;

LABEL_21:

  return v19;
}

- (void)enumerateAllRangesForFromCoord:(const TSUCellCoord *)coord block:(id)block
{
  blockCopy = block;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  begin = self->_rangePrecedentsTiles.__begin_;
  for (i = self->_rangePrecedentsTiles.var0; begin != i; ++begin)
  {
    v12 = *begin;
    v13 = objc_msgSend_toInternalOwnerID(*begin, v6, v7, v8);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_22149764C;
    v16[3] = &unk_278465D50;
    v14 = blockCopy;
    v19 = v13;
    v17 = v14;
    v18 = v20;
    objc_msgSend_enumerateAllRangesForFromCoord_usingBlock_(v12, v15, coord, v16);
  }

  _Block_object_dispose(v20, 8);
}

- (void)enumerateAllRanges:(id)ranges
{
  rangesCopy = ranges;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  begin = self->_rangePrecedentsTiles.__begin_;
  for (i = self->_rangePrecedentsTiles.var0; begin != i; ++begin)
  {
    v10 = *begin;
    v11 = objc_msgSend_toInternalOwnerID(*begin, v4, v5, v6);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_2214977E4;
    v15[3] = &unk_278465D50;
    v12 = rangesCopy;
    v18 = v11;
    v16 = v12;
    v17 = v19;
    objc_msgSend_enumerateAllRanges_(v10, v13, v15, v14);
  }

  _Block_object_dispose(v19, 8);
}

- (void)encodeToArchive:(void *)archive
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2214978B0;
  v4[3] = &unk_278465D70;
  v4[4] = archive;
  objc_msgSend_enumerateAllRanges_(self, a2, v4, v3);
}

- (void)readFromArchive:(const void *)archive
{
  v3 = *(archive + 6);
  if (v3 >= 1)
  {
    v57 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v6 = 8;
    v7 = 0x277D81000uLL;
    v8 = TSCE::_InternalRangeReferenceArchive_default_instance_;
    while (1)
    {
      TSCE::RangeBackDependencyArchive::RangeBackDependencyArchive(v65, *(*(archive + 4) + v6));
      if (!(v70 >> 15) && (v69 & 0x80000000) == 0)
      {
        break;
      }

LABEL_31:
      TSCE::RangeBackDependencyArchive::~RangeBackDependencyArchive(v65);
      v6 += 8;
      if (!--v3)
      {
        return;
      }
    }

    v64 = v69 | (v70 << 32);
    v62 = v57;
    v63 = 0xFFFF;
    if (v66)
    {
      TSCERangeRefFromArchive(v67, &v60._topLeft);
      dependencyTracker = self->_dependencyTracker;
      if (dependencyTracker)
      {
        objc_msgSend_internalRangeReferenceForRangeRef_(dependencyTracker, v29, &v60, v25);
        v62 = v58;
        v63 = v59;
      }
    }

    else
    {
      if ((v66 & 2) == 0)
      {
        v11 = *(v7 + 336);
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSCERangeDependencies readFromArchive:]", v10);
        v13 = v8;
        v14 = v7;
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERangeDependencies.mm", v16);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v12, v17, 565, 0, "corrupted range dependencies archive");

        v7 = v14;
        objc_msgSend_logBacktraceThrottled(*(v14 + 336), v19, v20, v21);
        v8 = v13;
      }

      if (v68)
      {
        v22 = v68;
      }

      else
      {
        v22 = v8;
      }

      sub_2212F4E1C(v22, &v60);
      v62 = v60;
      v63 = v61;
      v26 = self->_dependencyTracker;
      if (v26)
      {
        v27 = objc_msgSend_idMap(v26, v23, v24, v25);
        v28 = v63;
        if (*(v27 + 144))
        {
          v28 = sub_2212602C8(v27, v63);
        }

        LOWORD(v63) = v28;
        goto LABEL_18;
      }
    }

    v28 = v63;
LABEL_18:
    if (v28 != 0xFFFF && v62._topLeft.row != 0x7FFFFFFF && (*&v62._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && v62._bottomRight.row != 0x7FFFFFFF && (*&v62._bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && v62._topLeft.column <= v62._bottomRight.column && v62._topLeft.row <= v62._bottomRight.row)
    {
      if (!self->_dependencyTracker)
      {
        v31 = *(v7 + 336);
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSCERangeDependencies readFromArchive:]", v25);
        v33 = v8;
        v34 = v7;
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERangeDependencies.mm", v36);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v32, v37, 574, 0, "invalid nil value for '%{public}s'", "_dependencyTracker");

        v7 = v34;
        objc_msgSend_logBacktraceThrottled(*(v34 + 336), v39, v40, v41);
        v8 = v33;
        v28 = v63;
      }

      v42 = objc_msgSend_findTileForToOwnerId_createIfMissing_(self, v28, v28, 1);
      objc_msgSend_willModifyForUpgrade(v42, v43, v44, v45);
      TSCERangeCoordinate::asCellRect(&v62);
      v60._topLeft = v46;
      v60._bottomRight = v47;
      objc_msgSend_addRect_fromCoord_(v42, v47, &v60, &v64);
      v51 = objc_msgSend_dgl_rangeDependenciesForOwnerID_(self->_dependencyTracker, v48, v63, v49);
      if (v51 || (objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self->_dependencyTracker, v50, v63, 0, 0), objc_msgSend_dgl_rangeDependenciesForOwnerID_(self->_dependencyTracker, v52, v63, v53), (v51 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v60 = 0;
        TSCERangeCoordinate::asCellRect(&v62);
        v60._topLeft = v54;
        v60._bottomRight = v55;
        internalOwnerID = self->_internalOwnerID;
        v58._topLeft = (v64 & 0xFFFFFFFFFFFFLL);
        v58._bottomRight.row = internalOwnerID;
        objc_msgSend_RTreeInsert_fromCellRef_(v51, v55, &v60, &v58);
      }
    }

    goto LABEL_31;
  }
}

- (void)readFromExpandedArchive:(const void *)archive
{
  v3 = *(archive + 6);
  if (v3 >= 1)
  {
    v5 = 8;
    v6 = 0x277D81000uLL;
    v7 = TSCE::_InternalRangeReferenceArchive_default_instance_;
    do
    {
      TSCE::RangeBackDependencyArchive::RangeBackDependencyArchive(v35, *(*(archive + 4) + v5));
      v10 = v38;
      if (!(v38 >> 15))
      {
        v11 = v37;
        if ((v37 & 0x80000000) == 0)
        {
          if ((v35[16] & 2) == 0)
          {
            v12 = *(v6 + 336);
            v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSCERangeDependencies readFromExpandedArchive:]", v9);
            v14 = v7;
            v15 = v6;
            v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERangeDependencies.mm", v17);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v13, v18, 609, 0, "corrupted range dependencies archive");

            v6 = v15;
            objc_msgSend_logBacktraceThrottled(*(v15 + 336), v20, v21, v22);
            v7 = v14;
          }

          v33._topLeft = 0;
          v33._bottomRight = 0;
          v34 = 0;
          if (v36)
          {
            v23 = v36;
          }

          else
          {
            v23 = v7;
          }

          sub_2212F4E1C(v23, &v33);
          v24 = v34;
          if (v34 != 0xFFFF && v33._topLeft.row != 0x7FFFFFFF && (*&v33._topLeft & 0xFFFF00000000) != 0x7FFF00000000 && v33._bottomRight.row != 0x7FFFFFFF && (*&v33._bottomRight & 0xFFFF00000000) != 0x7FFF00000000 && v33._topLeft.column <= v33._bottomRight.column && v33._topLeft.row <= v33._bottomRight.row)
          {
            TSCERangeCoordinate::asCellRect(&v33);
            v29 = v11 | (v10 << 32);
            v30 = v24;
            v31 = v25;
            v32 = v26;
            objc_msgSend_addUnarchivedPrecedent_(self, v26, &v29, v27);
          }
        }
      }

      TSCE::RangeBackDependencyArchive::~RangeBackDependencyArchive(v35);
      v5 += 8;
      --v3;
    }

    while (v3);
  }
}

- (void)encodeToTiledArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_initWithCapacity_(v6, v7, self->_rangePrecedentsTiles.var0 - self->_rangePrecedentsTiles.__begin_, v8);
  begin = self->_rangePrecedentsTiles.__begin_;
  var0 = self->_rangePrecedentsTiles.var0;
  while (begin != var0)
  {
    v13 = *begin;
    if ((objc_msgSend_isEmpty(v13, v14, v15, v16) & 1) == 0)
    {
      objc_msgSend_addObject_(v10, v17, v13, v18);
    }

    ++begin;
  }

  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v9, v10, archive + 16);
}

- (void)readFromTiledArchive:(const void *)archive unarchiver:(id)unarchiver ownerDepends:(id)depends
{
  unarchiverCopy = unarchiver;
  dependsCopy = depends;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2214981B4;
  v13[3] = &unk_27845D8D8;
  v9 = dependsCopy;
  v14 = v9;
  v10 = unarchiverCopy;
  v11 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v10, v12, archive + 16, v11, 0, v13);
}

- (void)unpackAfterUnarchive
{
  begin = self->_unarchivedPrecedentList.__begin_;
  end = self->_unarchivedPrecedentList.__end_;
  if (begin != end)
  {
    p_var2 = &begin->var2;
    do
    {
      v6 = objc_msgSend_findTileForToOwnerId_createIfMissing_(self, a2, *(p_var2 - 4), 1);
      objc_msgSend_willModifyForUpgrade(v6, v7, v8, v9);
      objc_msgSend_addRect_fromCoord_(v6, v10, p_var2, p_var2 - 12);
      p_var2 += 28;
    }

    while ((p_var2 - 12) != end);
    begin = self->_unarchivedPrecedentList.__begin_;
  }

  self->_unarchivedPrecedentList.__end_ = begin;
  v11 = self->_rangePrecedentsTiles.__begin_;
  var0 = self->_rangePrecedentsTiles.var0;
  if (v11 != var0)
  {
    v13 = 0;
    do
    {
      v14 = *v11;
      v21 = objc_msgSend_toInternalOwnerID(v14, v15, v16, v17);
      if (v13 && objc_msgSend_internalOwnerID(v13, v18, v19, v20) == v21 || (objc_msgSend_dgl_rangeDependenciesForOwnerID_(self->_dependencyTracker, v18, v21, v20), v22 = objc_claimAutoreleasedReturnValue(), v13, (v13 = v22) != 0) || (objc_msgSend_dgl_registerOwnerID_owner_ownerIndex_(self->_dependencyTracker, v23, v21, 0, 0), objc_msgSend_dgl_rangeDependenciesForOwnerID_(self->_dependencyTracker, v24, v21, v25), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        internalOwnerID = self->_internalOwnerID;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = sub_22149859C;
        v40[3] = &unk_278465D98;
        v42 = internalOwnerID;
        v13 = v13;
        v41 = v13;
        objc_msgSend_enumerateAllRanges_(v14, v29, v40, v30);
      }

      else
      {
        v31 = MEMORY[0x277D81150];
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSCERangeDependencies unpackAfterUnarchive]", v27);
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERangeDependencies.mm", v34);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 669, 0, "invalid nil value for '%{public}s'", "precedentRangeDependencies");

        v13 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
      }

      ++v11;
    }

    while (v11 != var0);
  }
}

@end