@interface TSCECellRecordTile
+ (int)compareTilesBefore:(id)before after:(id)after;
- (BOOL)applyBlockToRecords:(unint64_t)records doWillModify:(BOOL)modify block:(id)block;
- (BOOL)applyBlockToSortedRecords:(unint64_t)records doWillModify:(BOOL)modify block:(id)block;
- (BOOL)insertCellRecord:(TSCECellRecord *)record cellDependencies:(id)dependencies;
- (BOOL)intersectsRange:(TSCERangeCoordinate)range;
- (BOOL)replaceCellRecord:(TSCECellRecord *)record cellDependencies:(id)dependencies;
- (TSCECellRecord)findCellRecord:(TSUCellCoord)record;
- (TSCECellRecordTile)initWithOwnerId:(unsigned __int16)id tileColumnBegin:(unsigned __int16)begin tileRowBegin:(unsigned int)rowBegin context:(id)context;
- (id).cxx_construct;
- (unint64_t)cellRecordIndexInSortedSection:(unsigned __int16)section startingRow:(unsigned int)row beginIndex:(unint64_t)index endIndex:(unint64_t)endIndex guessIndex:(unint64_t)guessIndex;
- (unint64_t)memoryUseEstimate;
- (unsigned)tileColumnEnd;
- (unsigned)tileRowEnd;
- (vector<TSCECellRecord)sortedCellRecordVector;
- (void)appendExpandedEdgeToArchive:(void *)archive edge:(const TSCEInternalCellReference *)edge;
- (void)applyBlockToRecordsInRange:(TSCERangeCoordinate)range cellRestrictions:(unint64_t)restrictions doWillModify:(BOOL)modify block:(id)block;
- (void)collectDependencies:(id)dependencies cellDependencies:(id)cellDependencies;
- (void)dealloc;
- (void)deleteCellRecord:(TSCECellRecord *)record cellDependencies:(id)dependencies;
- (void)encodeCellRecordsToArchive:(void *)archive;
- (void)incrementPruningNeededRecords;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)pruneEmptyRecords:(id)records;
- (void)removeCellRecord:(TSUCellCoord)record cellDependencies:(id)dependencies;
- (void)saveToArchiver:(id)archiver;
- (void)sortCellRecords;
- (void)unpackAfterUnarchiveForCellDependencies:(id)dependencies;
@end

@implementation TSCECellRecordTile

+ (int)compareTilesBefore:(id)before after:(id)after
{
  beforeCopy = before;
  afterCopy = after;
  v10 = objc_msgSend_tileRowBegin(beforeCopy, v7, v8, v9);
  if (v10 >= objc_msgSend_tileRowBegin(afterCopy, v11, v12, v13))
  {
    v18 = objc_msgSend_tileRowBegin(beforeCopy, v14, v15, v16);
    if (v18 > objc_msgSend_tileRowBegin(afterCopy, v19, v20, v21))
    {
      v17 = 1;
      goto LABEL_7;
    }

    v25 = objc_msgSend_tileColumnBegin(beforeCopy, v22, v23, v24);
    if (v25 >= objc_msgSend_tileColumnBegin(afterCopy, v26, v27, v28))
    {
      v32 = objc_msgSend_tileColumnBegin(beforeCopy, v29, v30, v31);
      v17 = v32 > objc_msgSend_tileColumnBegin(afterCopy, v33, v34, v35);
      goto LABEL_7;
    }
  }

  v17 = -1;
LABEL_7:

  return v17;
}

- (TSCECellRecordTile)initWithOwnerId:(unsigned __int16)id tileColumnBegin:(unsigned __int16)begin tileRowBegin:(unsigned int)rowBegin context:(id)context
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = TSCECellRecordTile;
  v11 = [(TSCECellRecordTile *)&v14 initWithContext:contextCopy];
  v12 = v11;
  if (v11)
  {
    v11->_internalOwnerID = id;
    v11->_tileColumnBegin = begin;
    v11->_tileRowBegin = rowBegin;
    v11->_unsortedCellsSize = 0;
    v11->_pruningNeededRecords = 0;
    sub_22111B7CC(&v11->_cellRecords.__begin_, 0x80uLL);
    v12->_cellsLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v12;
}

- (void)dealloc
{
  begin = self->_cellRecords.__begin_;
  for (i = self->_cellRecords.__end_; begin != i; ++begin)
  {
    if (*begin)
    {
      v5 = sub_2211226F4(*begin);
      MEMORY[0x223DA1450](v5, 0x1020C4012755DA7);
    }
  }

  unarchivedCellRecords = self->_unarchivedCellRecords;
  if (unarchivedCellRecords)
  {
    v7 = *unarchivedCellRecords;
    if (*unarchivedCellRecords)
    {
      unarchivedCellRecords[1] = v7;
      operator delete(v7);
    }

    MEMORY[0x223DA1450](unarchivedCellRecords, 0x80C40D6874129);
  }

  self->_unarchivedCellRecords = 0;
  v8.receiver = self;
  v8.super_class = TSCECellRecordTile;
  [(TSCECellRecordTile *)&v8 dealloc];
}

- (unsigned)tileColumnEnd
{
  tileColumnBegin = self->_tileColumnBegin;
  if (tileColumnBegin == 0x7FFF)
  {
    return 0x7FFF;
  }

  else
  {
    return tileColumnBegin + 31;
  }
}

- (unsigned)tileRowEnd
{
  tileRowBegin = self->_tileRowBegin;
  if (tileRowBegin == 0x7FFFFFFF)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return tileRowBegin + 127;
  }
}

- (unint64_t)memoryUseEstimate
{
  begin = self->_cellRecords.__begin_;
  end = self->_cellRecords.__end_;
  v4 = 40;
  while (begin != end)
  {
    v5 = *begin++;
    v4 += sub_2215C4F5C(v5);
  }

  return v4;
}

- (void)incrementPruningNeededRecords
{
  pruningNeededRecords = self->_pruningNeededRecords;
  if (pruningNeededRecords + 1 < 0x1000)
  {
    v3 = pruningNeededRecords + 1;
  }

  else
  {
    v3 = 4096;
  }

  self->_pruningNeededRecords = v3;
}

- (TSCECellRecord)findCellRecord:(TSUCellCoord)record
{
  begin = self->_cellRecords.__begin_;
  end = self->_cellRecords.__end_;
  if (begin == end)
  {
    return 0;
  }

  v5 = end - begin;
  unsortedCellsSize = self->_unsortedCellsSize;
  v7 = ~unsortedCellsSize + (v5 >> 3);
  if (v7 >= 0)
  {
    v8 = 0;
    while (1)
    {
      v9 = v8 + (v7 - v8) / 2;
      result = begin[v9];
      var4 = result->var4;
      if (var4 >= record.row)
      {
        if (var4 > record.row)
        {
          goto LABEL_9;
        }

        var5 = result->var5;
        if (record.column <= var5)
        {
          break;
        }
      }

      v8 = v9 + 1;
LABEL_10:
      if (v8 > v7)
      {
        goto LABEL_11;
      }
    }

    if (record.column >= var5)
    {
      return result;
    }

LABEL_9:
    v7 = v9 - 1;
    goto LABEL_10;
  }

LABEL_11:
  v13 = v5 >> 3;
  if (!unsortedCellsSize || v13 < unsortedCellsSize)
  {
    return 0;
  }

  v15 = v13 - unsortedCellsSize;
  while (1)
  {
    result = begin[v15];
    if (result->var4 == record.row && result->var5 == record.column)
    {
      break;
    }

    if (++v15 >= v13)
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)cellRecordIndexInSortedSection:(unsigned __int16)section startingRow:(unsigned int)row beginIndex:(unint64_t)index endIndex:(unint64_t)endIndex guessIndex:(unint64_t)guessIndex
{
  if (endIndex > index)
  {
    v8 = guessIndex < index || guessIndex == 0 || guessIndex >= endIndex;
    endIndexCopy2 = index + ((endIndex - index) >> 1);
    if (!v8)
    {
      endIndexCopy2 = guessIndex;
    }

    begin = self->_cellRecords.__begin_;
    endIndexCopy = endIndex;
    while (1)
    {
      v12 = begin[endIndexCopy2];
      var4 = v12->var4;
      if (var4 >= row)
      {
        if (var4 > row)
        {
          endIndex = endIndexCopy2;
          goto LABEL_17;
        }

        var5 = v12->var5;
        if (var5 >= section)
        {
          endIndex = endIndexCopy2;
          if (var5 <= section)
          {
            return endIndexCopy2;
          }

          goto LABEL_17;
        }
      }

      index = endIndexCopy2 + 1;
      endIndexCopy2 = endIndexCopy;
LABEL_17:
      endIndexCopy = endIndexCopy2;
      v15 = endIndexCopy2 > index;
      endIndexCopy2 = index + ((endIndexCopy2 - index) >> 1);
      if (!v15)
      {
        goto LABEL_20;
      }
    }
  }

  begin = self->_cellRecords.__begin_;
LABEL_20:
  if (endIndex >= self->_cellRecords.__end_ - begin - self->_unsortedCellsSize)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v16 = begin - 1;
  do
  {
    endIndexCopy2 = endIndex;
    if (!endIndex)
    {
      break;
    }

    v17 = v16[endIndex];
    if (v17->var4 < row)
    {
      break;
    }

    --endIndex;
  }

  while (v17->var5 >= section);
  return endIndexCopy2;
}

- (BOOL)intersectsRange:(TSCERangeCoordinate)range
{
  bottomRight = range._bottomRight;
  column = range._topLeft.column;
  v6 = *&range._topLeft & 0xFFFF00000000;
  v7 = *&range._bottomRight & 0xFFFF00000000;
  if (range._topLeft.row == 0x7FFFFFFFLL && v6 != 0x7FFF00000000 && v7 != 0x7FFF00000000 && range._bottomRight.row == 0x7FFFFFFFLL)
  {
    if (objc_msgSend_tileRowEnd(self, a2, *&range._topLeft, *&range._bottomRight) >= range._topLeft.row)
    {
      v11 = objc_msgSend_tileRowBegin(self, v8, v9, v10) > bottomRight.row;
      return !v11;
    }

    return 0;
  }

  if ((range._topLeft.row == 0x7FFFFFFFLL || v6 != 0x7FFF00000000 || v7 != 0x7FFF00000000 || range._bottomRight.row == 0x7FFFFFFFLL) && (objc_msgSend_tileRowEnd(self, a2, *&range._topLeft, *&range._bottomRight) < range._topLeft.row || objc_msgSend_tileRowBegin(self, v16, v17, v18) > bottomRight.row) || objc_msgSend_tileColumnEnd(self, a2, *&range._topLeft, *&range._bottomRight) < column)
  {
    return 0;
  }

  v11 = objc_msgSend_tileColumnBegin(self, v12, v13, v14) > bottomRight.column;
  return !v11;
}

- (void)applyBlockToRecordsInRange:(TSCERangeCoordinate)range cellRestrictions:(unint64_t)restrictions doWillModify:(BOOL)modify block:(id)block
{
  restrictionsCopy = restrictions;
  bottomRight = range._bottomRight;
  topLeft = range._topLeft;
  blockCopy = block;
  v52 = topLeft;
  v53 = bottomRight;
  if (!objc_msgSend_intersectsRange_(self, v10, topLeft, bottomRight))
  {
    goto LABEL_96;
  }

  v12 = bottomRight;
  v13 = bottomRight & 0xFFFF00000000;
  v15 = (topLeft & 0xFFFF00000000) != 0x7FFF00000000 && v13 != 0x7FFF00000000 && topLeft == 0x7FFFFFFFLL;
  v16 = v15;
  v48 = v16;
  if (v15)
  {
    v54 = 0;
    if (bottomRight == 0x7FFFFFFFLL)
    {
      v17 = 0;
    }

    else
    {
      v17 = topLeft;
    }

    if (bottomRight == 0x7FFFFFFFLL)
    {
      v18 = 0x7FFFFFFFLL;
    }

    else
    {
      v18 = bottomRight;
    }

    goto LABEL_25;
  }

  v54 = 0;
  if (topLeft == 0x7FFFFFFFLL || (topLeft & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v17 = topLeft;
    v18 = bottomRight;
LABEL_25:
    selfCopy2 = self;
    goto LABEL_26;
  }

  v17 = topLeft;
  v18 = bottomRight;
  selfCopy2 = self;
  if (v13 == 0x7FFF00000000)
  {
    v54 = 1;
    if (v53 != 0x7FFFFFFF)
    {
      LOWORD(v20) = 0;
      LOWORD(v21) = 0x7FFF;
      v17 = v52;
      v18 = v53;
      goto LABEL_27;
    }

    v17 = topLeft;
    v18 = v12;
  }

LABEL_26:
  v20 = HIDWORD(topLeft);
  v21 = HIDWORD(v53);
LABEL_27:
  p_cellRecords = &selfCopy2->_cellRecords;
  v23 = selfCopy2->_cellRecords.__end_ - selfCopy2->_cellRecords.__begin_ - selfCopy2->_unsortedCellsSize;
  v27 = objc_msgSend_cellRecordIndexInSortedSection_startingRow_beginIndex_endIndex_guessIndex_(selfCopy2, v11, v20, v17, 0, v23, 0);
  v28 = !modify;
  if (v27 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v18 != 0x7FFFFFFF && v21 != 0x7FFF)
    {
      v29 = objc_msgSend_cellRecordIndexInSortedSection_startingRow_beginIndex_endIndex_guessIndex_(selfCopy2, v24, v21, v18, v27, v23, 0);
      if (v29 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = v29 + 1;
      }
    }

    if (v27 < v23)
    {
      v49 = 0;
      do
      {
        v30 = p_cellRecords->__begin_[v27];
        if (v18 != 0x7FFFFFFF && v30->var4 > v18)
        {
          break;
        }

        var5 = v30->var5;
        v32 = v21 != 0x7FFF && var5 > v21;
        v33 = v32;
        if (var5 < v20 || v33)
        {
          if (v33)
          {
            v34 = objc_msgSend_cellRecordIndexInSortedSection_startingRow_beginIndex_endIndex_guessIndex_(selfCopy2, v24, v20, v30->var4 + 1, v27, v23, v49 + v27);
            if (v34 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            v49 = v34 - v27;
            v27 = v34 - 1;
          }
        }

        else if (((restrictionsCopy & 2) == 0 || v30->var2) && ((restrictionsCopy & 1) == 0 || (v30->var6 & 4) != 0) && ((restrictionsCopy & 4) == 0 || (v30->var6 & 2) == 0))
        {
          if (!v28)
          {
            objc_msgSend_willModify(selfCopy2, v24, v25, v26);
          }

          (blockCopy)[2](blockCopy, v30);
          v28 = 1;
        }

        ++v27;
      }

      while (v27 < v23);
    }
  }

  v35 = selfCopy2->_cellRecords.__end_ - selfCopy2->_cellRecords.__begin_;
  unsortedCellsSize = selfCopy2->_unsortedCellsSize;
  if (v35 - unsortedCellsSize < v35)
  {
    v37 = v28;
    if (v53 == 0x7FFFFFFFLL)
    {
      v38 = v48;
    }

    else
    {
      v38 = 0;
    }

    v39 = 8 * v35 - 8 * unsortedCellsSize;
    while (1)
    {
      v40 = *(p_cellRecords->__begin_ + v39);
      v41 = *(v40 + 36);
      v42 = *(v40 + 32);
      if (v54)
      {
        break;
      }

      if (!v38)
      {
        goto LABEL_76;
      }

      if (v41 != 0x7FFF && WORD2(v52) <= v41 && WORD2(v53) >= v41)
      {
LABEL_86:
        if (((restrictionsCopy & 2) == 0 || *(v40 + 16)) && ((restrictionsCopy & 1) == 0 || (*(v40 + 38) & 4) != 0) && ((restrictionsCopy & 4) == 0 || (*(v40 + 38) & 2) == 0))
        {
          if ((v37 & 1) == 0)
          {
            objc_msgSend_willModify(self, v24, v25, v26);
          }

          blockCopy[2](blockCopy, v40);
          v37 = 1;
        }
      }

LABEL_95:
      v39 += 8;
      if (!--unsortedCellsSize)
      {
        goto LABEL_96;
      }
    }

    if (v53 == 0x7FFFFFFFLL)
    {
LABEL_76:
      v43 = WORD2(v52) <= v41 && v42 >= v52 && WORD2(v53) >= v41;
    }

    else
    {
      v43 = v42 != 0x7FFFFFFF && v42 >= v52;
    }

    if (v43 && v42 <= v53)
    {
      goto LABEL_86;
    }

    goto LABEL_95;
  }

LABEL_96:
}

- (BOOL)applyBlockToRecords:(unint64_t)records doWillModify:(BOOL)modify block:(id)block
{
  recordsCopy = records;
  blockCopy = block;
  v20 = 0;
  v12 = self->_cellRecords.__end_ - self->_cellRecords.__begin_;
  if (v12)
  {
    v13 = 0;
    v14 = v12 >> 3;
    v15 = !modify;
    if (v14 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14;
    }

    do
    {
      v17 = self->_cellRecords.__begin_[v13];
      if (v17 && ((recordsCopy & 2) == 0 || v17->var2) && ((recordsCopy & 1) == 0 || (v17->var6 & 4) != 0) && ((recordsCopy & 4) == 0 || (v17->var6 & 2) == 0))
      {
        if (!v15)
        {
          objc_msgSend_willModify(self, v8, v9, v10);
        }

        blockCopy[2](blockCopy, v17, &v20);
        v15 = 1;
      }

      ++v13;
    }

    while (v16 != v13);
    v18 = v20 ^ 1;
  }

  else
  {
    v18 = 1;
  }

  return v18 & 1;
}

- (BOOL)applyBlockToSortedRecords:(unint64_t)records doWillModify:(BOOL)modify block:(id)block
{
  recordsCopy = records;
  blockCopy = block;
  v22 = 0;
  objc_msgSend_sortedCellRecordVector(self, v9, v10, v11);
  v15 = __p;
  if (__p == v21)
  {
    v18 = 1;
    if (!__p)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v16 = !modify;
  do
  {
    v17 = *v15;
    if (((recordsCopy & 2) == 0 || *(v17 + 16)) && ((recordsCopy & 1) == 0 || (*(v17 + 38) & 4) != 0) && ((recordsCopy & 4) == 0 || (*(v17 + 38) & 2) == 0))
    {
      if (!v16)
      {
        objc_msgSend_willModify(self, v12, v13, v14);
      }

      blockCopy[2](blockCopy, v17, &v22);
      v16 = 1;
    }

    ++v15;
  }

  while (v15 != v21);
  v15 = __p;
  v18 = v22 ^ 1;
  if (__p)
  {
LABEL_14:
    operator delete(v15);
  }

LABEL_15:

  return v18 & 1;
}

- (BOOL)insertCellRecord:(TSCECellRecord *)record cellDependencies:(id)dependencies
{
  recordCopy = record;
  dependenciesCopy = dependencies;
  v10 = dependenciesCopy;
  if (record)
  {
    if (!dependenciesCopy)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSCECellRecordTile insertCellRecord:cellDependencies:]", v9);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 434, 0, "invalid nil value for '%{public}s'", "cellDependencies");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    objc_msgSend_willModify(self, v7, v8, v9);
    lock = &self->_cellsLock;
    os_unfair_lock_lock(&self->_cellsLock);
    v38 = 1;
    record->var1._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    sub_221126E28(&self->_cellRecords, &recordCopy);
    v20 = self->_cellRecords.__end_ - self->_cellRecords.__begin_;
    unsortedCellsSize = self->_unsortedCellsSize;
    if (unsortedCellsSize || v20 >= 2 && (end = self->_cellRecords.__end_, v23 = *(end - 2), v24 = *(end - 1), v25 = *(v23 + 32), v26 = *(v24 + 32), v25 >= v26) && (v25 > v26 || *(v23 + 36) > *(v24 + 36)))
    {
      self->_unsortedCellsSize = unsortedCellsSize + 1;
    }

    os_unfair_lock_unlock(lock);
    v38 = 0;
    if (v10)
    {
      objc_msgSend_incrNumCells(v10, v27, v28, v29);
      objc_msgSend_setDirtyInGrid_row_isDirty_(v10, v30, recordCopy->var5, recordCopy->var4, recordCopy->var2 != 0);
      objc_msgSend_setInACycleInGrid_row_inACycle_(v10, v31, recordCopy->var5, recordCopy->var4, (recordCopy->var6 >> 1) & 1);
      objc_msgSend_setContainsAFormulaInGrid_row_containsFormula_(v10, v32, recordCopy->var5, recordCopy->var4, (recordCopy->var6 >> 2) & 1);
    }

    if (20 * vcvtps_u32_f32(logf((v20 - self->_unsortedCellsSize))) < self->_unsortedCellsSize)
    {
      objc_msgSend_sortCellRecords(self, v33, v34, v35);
    }

    sub_2212E22F0(&lock);
  }

  return record != 0;
}

- (void)removeCellRecord:(TSUCellCoord)record cellDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  CellRecord = objc_msgSend_findCellRecord_(self, v7, *&record, v8);
  if (CellRecord)
  {
    objc_msgSend_willModify(self, v9, v10, v11);
    if (*(CellRecord + 16))
    {
      LODWORD(v19) = self->_internalOwnerID;
      v16 = objc_msgSend_dependencyTracker(dependenciesCopy, v13, v14, v15, *&record & 0xFFFFFFFFFFFFLL, v19);
      objc_msgSend_dgl_updateGraphWithCleanReference_cellRecord_(v16, v17, &v18, CellRecord);
    }

    objc_msgSend_deleteCellRecord_cellDependencies_(self, v13, CellRecord, dependenciesCopy);
  }
}

- (BOOL)replaceCellRecord:(TSCECellRecord *)record cellDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  v10 = record->var4 | (record->var5 << 32);
  internalOwnerID = self->_internalOwnerID;
  v102 = v10;
  v103 = internalOwnerID;
  if (!dependenciesCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCECellRecordTile replaceCellRecord:cellDependencies:]", v8);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 498, 0, "invalid nil value for '%{public}s'", "cellDependencies");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = objc_msgSend_dependencyTracker(dependenciesCopy, v6, v7, v8);
  CellRecord = objc_msgSend_findCellRecord_(self, v22, v10, v23);
  v28 = CellRecord;
  v94 = 0;
  v95 = &v94;
  v96 = 0x5812000000;
  v97 = sub_22145C420;
  v98 = sub_22145C42C;
  v99 = &unk_22188E88F;
  memset(v100, 0, sizeof(v100));
  v101 = 1065353216;
  memset(v92, 0, sizeof(v92));
  v93 = 1065353216;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  if (CellRecord)
  {
    v29 = *CellRecord;
    v30 = sub_2215C5B34(CellRecord, v100);
    sub_2212DFCA0((v95 + 6), v30);
    if (!v29)
    {
      v31 = sub_2215C5B9C(v28, v92);
      sub_2212DFCA0(v92, v31);
    }

    sub_2215C5A5C(v28, 0);
  }

  else
  {
    v29 = 0;
  }

  objc_msgSend_willModify(self, v25, v26, v27);
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = 0;
  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x3032000000;
  v82[3] = sub_22145C434;
  v82[4] = sub_22145C444;
  v32 = dependenciesCopy;
  v83 = v32;
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = sub_22145C44C;
  v74[3] = &unk_278465770;
  v76 = v82;
  v33 = v21;
  v75 = v33;
  v77 = &v94;
  v78 = &v84;
  v81 = v103;
  v79 = &v88;
  v80 = v102;
  sub_2215C574C(record, v74);
  if (!v28)
  {
    v37 = *(v85 + 6);
    if (v37 >= 2)
    {
      v38 = MEMORY[0x277D81150];
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSCECellRecordTile replaceCellRecord:cellDependencies:]", v35);
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 651, 0, "cellRecord can't handle multiple self references");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
      v37 = *(v85 + 6);
    }

    if (v37)
    {
      sub_2215C52D0(record, &v102, 0);
    }

    sub_2215C4E48(record);
  }

  if (*(v89 + 24) == 1)
  {
    v28 = objc_msgSend_findCellRecord_(self, v34, v10, v35);
  }

  v36 = *(v28 + 16);
  if (record->var2)
  {
    if (!v36)
    {
      objc_msgSend_setDirtyInGrid_row_isDirty_(v32, v34, record->var5, record->var4, 1);
    }
  }

  else
  {
    objc_msgSend_setDirtySelfPlusPrecedentsCount_dirtyCount_(v32, v34, record, v36 != 0);
  }

  objc_msgSend_setInACycleInGrid_row_inACycle_(v32, v34, record->var5, record->var4, (record->var6 >> 1) & 1);
  objc_msgSend_setContainsAFormulaInGrid_row_containsFormula_(v32, v47, record->var5, record->var4, (record->var6 >> 2) & 1);
  if (v29)
  {
    sub_2215C5120(record, v29);
  }

  else
  {
    sub_2215C51E0(record, v92, 0);
  }

  v50 = *(v85 + 6);
  if (v50 >= 2)
  {
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSCECellRecordTile replaceCellRecord:cellDependencies:]", v49);
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v54);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v56, v52, v55, 637, 0, "cellRecord can't handle multiple self references");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59);
    v50 = *(v85 + 6);
  }

  if (v50)
  {
    sub_2215C52D0(record, &v102, 0);
  }

  p_cellsLock = &self->_cellsLock;
  os_unfair_lock_lock(&self->_cellsLock);
  sub_2215C4EA0(v28, record);
  os_unfair_lock_unlock(&self->_cellsLock);
  LOBYTE(v73) = 0;
  sub_2212E22F0(&p_cellsLock);
  objc_msgSend_setCurrentCellBeingModified_(v33, v60, v102, v103);
  p_cellsLock = v102;
  v73 = v103;
  v61 = v95;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = sub_22145C6D8;
  v65[3] = &unk_2784657C0;
  v68 = v102;
  v69 = v103;
  v66 = v32;
  v62 = v33;
  v67 = v62;
  v70 = p_cellsLock;
  v71 = v73;
  sub_2212E03B0((v61 + 6), v65);
  objc_msgSend_setCurrentCellBeingModified_(v62, v63, 0x7FFF7FFFFFFFLL, 0xFFFFLL);
  record->var0 = 0;

  _Block_object_dispose(v82, 8);
  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(&v88, 8);
  sub_221122744(v92);
  _Block_object_dispose(&v94, 8);
  sub_221122744(v100);

  return 1;
}

- (void)deleteCellRecord:(TSCECellRecord *)record cellDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  objc_msgSend_willModify(self, v7, v8, v9);
  p_cellsLock = &self->_cellsLock;
  v23 = &self->_cellsLock;
  os_unfair_lock_lock(&self->_cellsLock);
  LOBYTE(v24) = 1;
  begin = self->_cellRecords.__begin_;
  end = self->_cellRecords.__end_;
  if (begin != end)
  {
    v13 = 0;
    v14 = end - begin;
    v15 = end - begin - 8;
    while (*begin != record)
    {
      ++v13;
      ++begin;
      v15 -= 8;
      if (begin == end)
      {
        goto LABEL_15;
      }
    }

    unsortedCellsSize = self->_unsortedCellsSize;
    if (unsortedCellsSize && v13 >= (v14 >> 3) - unsortedCellsSize)
    {
      self->_unsortedCellsSize = unsortedCellsSize - 1;
    }

    v17 = begin + 1;
    if (begin + 1 != end)
    {
      memmove(begin, v17, v15);
    }

    self->_cellRecords.__end_ = (begin + v15);
    if (dependenciesCopy)
    {
      if (record->var2)
      {
        objc_msgSend_setDirtyInGrid_row_isDirty_(dependenciesCopy, v17, record->var5, record->var4, 0);
      }

      objc_msgSend_setInACycleInGrid_row_inACycle_(dependenciesCopy, v17, record->var5, record->var4, 0, v23, v24);
      objc_msgSend_setContainsAFormulaInGrid_row_containsFormula_(dependenciesCopy, v18, record->var5, record->var4, 0);
      objc_msgSend_decrNumCells(dependenciesCopy, v19, v20, v21);
      v22 = sub_2211226F4(record);
      MEMORY[0x223DA1450](v22, 0x1020C4012755DA7);
      p_cellsLock = v23;
    }
  }

LABEL_15:
  os_unfair_lock_unlock(p_cellsLock);
  LOBYTE(v24) = 0;
  sub_2212E22F0(&v23);
}

- (void)pruneEmptyRecords:(id)records
{
  recordsCopy = records;
  if (self->_pruningNeededRecords)
  {
    objc_msgSend_willModify(self, v4, v5, v6);
    lock = &self->_cellsLock;
    os_unfair_lock_lock(&self->_cellsLock);
    v31 = 1;
    p_cellRecords = &self->_cellRecords;
    begin = self->_cellRecords.__begin_;
    end = self->_cellRecords.__end_;
    if (begin != end)
    {
      v14 = 0;
      do
      {
        v15 = *begin;
        if ((*(*begin + 38) & 4) == 0 && (sub_2215C5AB8(*begin) & 1) == 0 && !sub_2215C5AF0(v15))
        {
          if (*(v15 + 16))
          {
            internalOwnerID = self->_internalOwnerID;
            *&v28 = *(v15 + 32) | (*(v15 + 36) << 32);
            DWORD2(v28) = internalOwnerID;
            v17 = objc_msgSend_dependencyTracker(recordsCopy, v8, v9, v10);
            objc_msgSend_dgl_updateGraphWithCleanReference_cellRecord_(v17, v18, &v28, v15);
          }

          v14 = 1;
        }

        ++begin;
      }

      while (begin != end);
      if (v14)
      {
        v20 = p_cellRecords->__begin_;
        v19 = self->_cellRecords.__end_;
        v21 = v19 - p_cellRecords->__begin_;
        if (p_cellRecords->__begin_ != end)
        {
          v22 = 0;
          v27 = v21 - self->_unsortedCellsSize;
          v23 = p_cellRecords->__begin_;
          do
          {
            v24 = *v20;
            if ((*(*v20 + 38) & 4) != 0 || (sub_2215C5AB8(*v20) & 1) != 0 || sub_2215C5AF0(v24))
            {
              if (v20 != v23)
              {
                *v23 = *v20;
              }

              ++v23;
            }

            else
            {
              if (v22 >= v27)
              {
                --self->_unsortedCellsSize;
              }

              --v21;
              v25 = sub_2211226F4(v24);
              MEMORY[0x223DA1450](v25, 0x1020C4012755DA7);
              *v20 = 0;
            }

            ++v22;
            ++v20;
          }

          while (v20 != end);
          end = p_cellRecords->__begin_;
          v19 = self->_cellRecords.__end_;
        }

        if (v21 != v19 - end)
        {
          sub_22145CCE8(&self->_cellRecords.__begin_, v21);
        }

        if (self->_unsortedCellsSize >= 8)
        {
          objc_msgSend_sortedCellRecordVector(self, v8, v9, v10);
          v26 = p_cellRecords->__begin_;
          if (p_cellRecords->__begin_)
          {
            self->_cellRecords.__end_ = v26;
            operator delete(v26);
            p_cellRecords->__begin_ = 0;
            self->_cellRecords.__end_ = 0;
            self->_cellRecords.__cap_ = 0;
          }

          *&p_cellRecords->__begin_ = v28;
          self->_cellRecords.__cap_ = v29;
          self->_unsortedCellsSize = 0;
        }
      }
    }

    self->_pruningNeededRecords = 0;
    os_unfair_lock_unlock(lock);
    v31 = 0;
    sub_2212E22F0(&lock);
  }
}

- (void)sortCellRecords
{
  if (self->_unsortedCellsSize)
  {
    p_cellRecords = &self->_cellRecords;
    if ((self->_cellRecords.__end_ - self->_cellRecords.__begin_) > 8)
    {
      objc_msgSend_willModify(self, a2, v2, v3);
      p_cellsLock = &self->_cellsLock;
      v13 = &self->_cellsLock;
      os_unfair_lock_lock(&self->_cellsLock);
      v14 = 1;
      objc_msgSend_sortedCellRecordVector(self, v7, v8, v9);
      begin = p_cellRecords->__begin_;
      if (p_cellRecords->__begin_)
      {
        p_cellRecords->__end_ = begin;
        operator delete(begin);
        p_cellRecords->__begin_ = 0;
        p_cellRecords->__end_ = 0;
        p_cellRecords->__cap_ = 0;
        p_cellsLock = v13;
      }

      *&p_cellRecords->__begin_ = v11;
      p_cellRecords->__cap_ = v12;
      self->_unsortedCellsSize = 0;
      os_unfair_lock_unlock(p_cellsLock);
      v14 = 0;
      sub_2212E22F0(&v13);
    }

    else
    {
      self->_unsortedCellsSize = 0;
    }
  }
}

- (vector<TSCECellRecord)sortedCellRecordVector
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v5 = self + 3;
  begin = self[4].__begin_;
  v7 = ((self[3].__end_ - self[3].__begin_) >> 3) - begin;
  if (v7 >= 1)
  {
    selfCopy = self;
    for (i = 0; i != v7; ++i)
    {
      v30 = v5->__begin_[i];
      sub_221126E28(retstr, &v30);
    }

    begin = selfCopy[4].__begin_;
  }

  if (begin)
  {
    v10 = (v5->__end_ - v5->__begin_) >> 3;
    if (v7 < v10)
    {
      v11 = v7;
      while (1)
      {
        v12 = v5->__begin_[v11];
        v30 = v12;
        if (v11 >= 1)
        {
          break;
        }

        v15 = v11 - 1;
LABEL_20:
        if (v15 >= v11 - 1)
        {
          sub_221126E28(retstr, &v30);
        }

        else
        {
          self = sub_22145D054(retstr, &retstr->__begin_[v15 + 1], &v30);
        }

        if (++v11 == v10)
        {
          return self;
        }
      }

      v13 = 0;
      var4 = v12->var4;
      v15 = v11 - 1;
      while (1)
      {
        v16 = v13 + (v15 - v13) / 2;
        v17 = retstr->__begin_[v16];
        v18 = v17->var4;
        if (v18 >= var4)
        {
          if (v18 > var4)
          {
            goto LABEL_16;
          }

          var5 = v17->var5;
          v20 = v12->var5;
          if (var5 >= v20)
          {
            break;
          }
        }

        v13 = v16 + 1;
LABEL_17:
        if (v13 > v15)
        {
          goto LABEL_20;
        }
      }

      if (var5 <= v20)
      {
        v21 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCECellRecordTile sortedCellRecordVector]", v3);
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v23);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v29, v24, 877, 0, "no duplicate cell records permitted, %lu vs %lu", v11, v16);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
        goto LABEL_20;
      }

LABEL_16:
      v15 = v16 - 1;
      goto LABEL_17;
    }
  }

  return self;
}

- (void)appendExpandedEdgeToArchive:(void *)archive edge:(const TSCEInternalCellReference *)edge
{
  row = edge->coordinate.row;
  column = edge->coordinate.column;
  if (edge->tableID == self->_internalOwnerID)
  {
    v7 = *(archive + 4);
    if (v7 == *(archive + 5))
    {
      v8 = v7 + 1;
      sub_2210BBC64(archive + 4, v7 + 1);
      *(*(archive + 3) + 4 * v7) = row;
    }

    else
    {
      *(*(archive + 3) + 4 * v7) = row;
      v8 = v7 + 1;
    }

    v12 = *(archive + 8);
    *(archive + 4) = v8;
    if (v12 == *(archive + 9))
    {
      v13 = v12 + 1;
      sub_2210BBC64(archive + 8, v12 + 1);
      *(*(archive + 5) + 4 * v12) = column;
    }

    else
    {
      *(*(archive + 5) + 4 * v12) = column;
      v13 = v12 + 1;
    }

    *(archive + 8) = v13;
  }

  else
  {
    v10 = *(archive + 12);
    if (v10 == *(archive + 13))
    {
      v11 = v10 + 1;
      sub_2210BBC64(archive + 12, v10 + 1);
      *(*(archive + 7) + 4 * v10) = row;
    }

    else
    {
      *(*(archive + 7) + 4 * v10) = row;
      v11 = v10 + 1;
    }

    v14 = *(archive + 16);
    *(archive + 12) = v11;
    if (v14 == *(archive + 17))
    {
      v15 = v14 + 1;
      sub_2210BBC64(archive + 16, v14 + 1);
      *(*(archive + 9) + 4 * v14) = column;
    }

    else
    {
      *(*(archive + 9) + 4 * v14) = column;
      v15 = v14 + 1;
    }

    v16 = *(archive + 20);
    *(archive + 16) = v15;
    tableID = edge->tableID;
    if (v16 == *(archive + 21))
    {
      v18 = v16 + 1;
      sub_2210BBC64(archive + 20, v16 + 1);
      *(*(archive + 11) + 4 * v16) = tableID;
    }

    else
    {
      *(*(archive + 11) + 4 * v16) = tableID;
      v18 = v16 + 1;
    }

    *(archive + 20) = v18;
  }
}

- (void)encodeCellRecordsToArchive:(void *)archive
{
  p_cellsLock = &self->_cellsLock;
  v8 = &self->_cellsLock;
  os_unfair_lock_lock(&self->_cellsLock);
  v9 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22145D488;
  v7[3] = &unk_27845F240;
  v7[4] = self;
  v7[5] = archive;
  objc_msgSend_applyBlockToSortedRecords_doWillModify_block_(self, v6, 1, 0, v7);
  os_unfair_lock_unlock(p_cellsLock);
  v9 = 0;
  sub_2212E22F0(&v8);
}

- (void)collectDependencies:(id)dependencies cellDependencies:(id)cellDependencies
{
  dependenciesCopy = dependencies;
  cellDependenciesCopy = cellDependencies;
  v29 = objc_msgSend_dependencyTracker(cellDependenciesCopy, v6, v7, v8);
  v9 = self->_cellRecords.__end_ - self->_cellRecords.__begin_;
  if (v9)
  {
    v10 = 0;
    v11 = v9 >> 3;
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    do
    {
      v13 = self->_cellRecords.__begin_[v10];
      v14 = [TSCECellDependencyRowPrinter alloc];
      v15 = NSStringFromTSUCellCoord();
      v17 = objc_msgSend_initWithCellID_dirtyPrecedentCount_(v14, v16, v15, v13->var2);

      objc_msgSend_setIsFormula_(v17, v18, (v13->var6 >> 2) & 1, v19);
      objc_msgSend_setIsInCycle_(v17, v20, (v13->var6 >> 1) & 1, v21);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_22145D8F0;
      v33[3] = &unk_2784657E8;
      v33[4] = self;
      v22 = v29;
      v34 = v22;
      v23 = v17;
      v35 = v23;
      sub_2215C574C(v13, v33);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_22145D9A8;
      v30[3] = &unk_2784657E8;
      v30[4] = self;
      v31 = v22;
      v24 = v23;
      v32 = v24;
      sub_2215C57F8(v13, v30);
      objc_msgSend_addDependencyRow_(dependenciesCopy, v25, v24, v26);

      ++v10;
    }

    while (v12 != v10);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22145E204, off_2812E2AC8[62]);

  internalOwnerID = self->_internalOwnerID;
  v7 = v5[4];
  v5[4] = v7 | 3;
  tileColumnBegin = self->_tileColumnBegin;
  v5[12] = internalOwnerID;
  v5[13] = tileColumnBegin;
  tileRowBegin = self->_tileRowBegin;
  v5[4] = v7 | 7;
  v5[14] = tileRowBegin;
  objc_msgSend_encodeCellRecordsToArchive_(self, v10, v5, v11);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E2AC8[62], v5);

  self->_internalOwnerID = v6[12];
  self->_tileColumnBegin = v6[13];
  self->_tileRowBegin = v6[14];
  self->_unsortedCellsSize = 0;
  self->_pruningNeededRecords = 0;
  sub_22111B7CC(&self->_cellRecords.__begin_, 0x80uLL);
  self->_cellsLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  operator new();
}

- (void)unpackAfterUnarchiveForCellDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  if (!dependenciesCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCECellRecordTile unpackAfterUnarchiveForCellDependencies:]", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1054, 0, "invalid nil value for '%{public}s'", "cellDependencies");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v19 = objc_msgSend_dependencyTracker(dependenciesCopy, v4, v5, v6);
  if (!v19)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSCECellRecordTile unpackAfterUnarchiveForCellDependencies:]", v18);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRecordTile.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 1056, 0, "invalid nil value for '%{public}s'", "depTracker");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  unarchivedCellRecords = self->_unarchivedCellRecords;
  if (unarchivedCellRecords)
  {
    v30 = *unarchivedCellRecords;
    v31 = unarchivedCellRecords[1];
    if (*unarchivedCellRecords == v31)
    {
      goto LABEL_11;
    }

    do
    {
      v32 = *v30;
      objc_msgSend_replaceCellRecord_cellDependencies_(self, v17, *v30, dependenciesCopy);
      if (*(v32 + 16) == 1)
      {
        internalOwnerID = self->_internalOwnerID;
        v37 = *(v32 + 32) | (*(v32 + 36) << 32);
        v38 = internalOwnerID;
        objc_msgSend_dgl_pushReferenceForImmediateEvaluation_pushOnFront_(v19, v33, &v37, 0);
      }

      v35 = sub_2211226F4(v32);
      MEMORY[0x223DA1450](v35, 0x1020C4012755DA7);
      ++v30;
    }

    while (v30 != v31);
    unarchivedCellRecords = self->_unarchivedCellRecords;
    if (unarchivedCellRecords)
    {
LABEL_11:
      v36 = *unarchivedCellRecords;
      if (*unarchivedCellRecords)
      {
        unarchivedCellRecords[1] = v36;
        operator delete(v36);
      }

      MEMORY[0x223DA1450](unarchivedCellRecords, 0x80C40D6874129);
    }

    self->_unarchivedCellRecords = 0;
  }
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 9) = 0;
  return self;
}

@end