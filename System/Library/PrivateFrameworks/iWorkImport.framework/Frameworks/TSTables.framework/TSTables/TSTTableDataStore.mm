@interface TSTTableDataStore
- (BOOL)_needToUpgradeCellStorage;
- (BOOL)auditColumnRowCellCountsReturningResult:(id *)result hasUndercounts:(BOOL *)undercounts;
- (BOOL)auditDatalistDuplicationReturningResult:(id *)result;
- (BOOL)confirmRefCountsReturningResult:(id *)result;
- (BOOL)containsControlCellSpecs;
- (BOOL)containsFormulas;
- (BOOL)containsImportWarnings;
- (BOOL)containsRatingFormats;
- (BOOL)getCell:(id)cell atCellID:(TSUCellCoord)d;
- (BOOL)hasCellOrTextStyles;
- (BOOL)hasFormulaAtCellID:(TSUCellCoord)d;
- (BOOL)hasFormulaSyntaxErrorAtCellID:(TSUCellCoord)d;
- (BOOL)hasMigratableStylesInCells;
- (BOOL)mightHaveCustomFormats;
- (BOOL)repairStyleDatalistStylesheetIfNecessary;
- (TSDContainerInfo)richTextParentInfo;
- (TSTCellStorage)cellStorageRefAtCellID:(TSUCellCoord)d;
- (TSTTableDataStore)initWithArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner;
- (TSTTableDataStore)initWithOwner:(id)owner;
- (id).cxx_construct;
- (id)_loadDatalist:(id *)datalist forLazyReference:(id)reference completionBlock:(id)block;
- (id)addPasteboardCustomFormatsToDocumentAndTableReturningBadIDs;
- (id)allRichTextStorages;
- (id)cellMapForRepairingPasteboardCustomFormats:(id)formats;
- (id)cellStyleAtCellID:(TSUCellCoord)d;
- (id)commentStorageAtCellID:(TSUCellCoord)d;
- (id)conditionalStyleSetAtCellID:(TSUCellCoord)d;
- (id)copyWithOwner:(id)owner;
- (id)formatForCalcEngineAtCellID:(TSUCellCoord)d formatIsExplicitOut:(BOOL *)out refIfAvailable:(TSTCellStorage *)available;
- (id)formulaAtCellID:(TSUCellCoord)d;
- (id)formulaSpecAtCellID:(TSUCellCoord)d;
- (id)formulaSpecForStorageRef:(TSTCellStorage *)ref;
- (id)formulaSyntaxErrorAtCellID:(TSUCellCoord)d;
- (id)i_cellStyleHandleForDataListKey:(unsigned int)key;
- (id)i_formatForDataListKey:(unsigned int)key;
- (id)i_stringForDataListKey:(unsigned int)key outShouldWrap:(BOOL *)wrap outIsShared:(BOOL *)shared;
- (id)i_textStyleHandleForDataListKey:(unsigned int)key;
- (id)mapReassigningPasteboardCustomFormatKeys:(id)keys;
- (id)p_cellMapForUpgradingToBraveNewCell;
- (id)p_makeALazyDatalistOfType:(int)type isNewForBNC:(BOOL)c;
- (id)p_populatedMultipleChoiceListFormat:(id)format;
- (id)p_preBNCpopulatedCustomFormat:(id)format value:(double)value;
- (id)richTextStorageForCalcEngineAtCellID:(TSUCellCoord)d refIfAvailable:(TSTCellStorage *)available;
- (id)stringAtCellID:(TSUCellCoord)d;
- (id)stringForCalcEngineAtCellID:(TSUCellCoord)d refIfAvailable:(TSTCellStorage *)available;
- (id)textStyleAtCellID:(TSUCellCoord)d;
- (id)tsceValueFromCell:(id)cell atCellID:(TSUCellCoord)d tableUID:(const TSKUIDStruct *)iD;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)numberOfComments;
- (unsigned)numberOfConditionalStyles;
- (unsigned)valueTypeAtCellID:(TSUCellCoord)d;
- (vector<TSTCell)accumulateCurrentCellsConcurrentlyInRow:(TSTTableDataStore *)self rowInfo:(SEL)info atColumns:(TSUModelRowIndex)columns usingCellCreationBlock:(id)block;
- (vector<TSUCellRect,)mergedRects;
- (void)_setCell:(id)cell atCellID:(TSUCellCoord)d tableUID:(const TSKUIDStruct *)iD calculationEngine:(id)engine conditionalStyleOwner:(id)owner ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings richTextDOLCHint:(BOOL *)self0;
- (void)decrementCellCountsAtCellID:(TSUCellCoord)d;
- (void)decrementColumnCellCount:(unsigned __int16)count byAmount:(unint64_t)amount;
- (void)didApplyConcurrentCellMap:(id)map;
- (void)embiggenTableForUpgrade;
- (void)enumerateCellStoragesInRange:(TSUCellRect)range withBlock:(id)block;
- (void)incrementCellCountsAtCellID:(TSUCellCoord)d;
- (void)insertColumns:(_NSRange)columns;
- (void)insertRows:(_NSRange)rows;
- (void)loadAllLazyReferences;
- (void)moveColumnIndexRange:(_NSRange)range toIndex:(unsigned __int16)index;
- (void)moveRowIndexRange:(_NSRange)range toIndex:(unsigned int)index;
- (void)p_clearDataListEntriesForStorageRef:(TSTCellStorage *)ref cellID:(TSUCellCoord)d;
- (void)p_clearDataListEntriesInRange:(TSUCellRect)range;
- (void)p_enumerateCellStoragesRowByRowToMaxID:(TSUCellCoord)d getPreBNC:(BOOL)c withBlock:(id)block;
- (void)p_forceLoadHeaderStorages;
- (void)p_loadLazyDatalists;
- (void)p_stashBadKey:(unint64_t)key forList:(id)list;
- (void)p_updateNumberOfPopulatedCells;
- (void)purgePreBNCDatalists;
- (void)removeColumns:(_NSRange)columns;
- (void)removeRows:(_NSRange)rows;
- (void)replaceCommentStoragesUsingBlock:(id)block;
- (void)replaceConditionalStyleSetsUsingBlock:(id)block;
- (void)replaceFormulasUsingBlock:(id)block;
- (void)replaceStylesUsingBlock:(id)block;
- (void)resetAllColumnRowSizes;
- (void)resetAlmostEverything;
- (void)resolveDataListKeysForCell:(id)cell cache:(id)cache suppressTransmutation:(BOOL)transmutation sourceStorageVersion:(unsigned __int8)version;
- (void)resolveDataListKeysForPreBNCCell:(id)cell suppressTransmutation:(BOOL)transmutation sourceStorageVersion:(unsigned __int8)version;
- (void)saveToArchive:(void *)archive archiver:(id)archiver isInTheDocument:(BOOL)document;
- (void)setCellMap:(id)map tableUID:(const TSKUIDStruct *)d calculationEngine:(id)engine conditionalStyleOwner:(id)owner ignoreFormulas:(BOOL)formulas skipDirtyingNonFormulaCells:(BOOL)cells doRichTextDOLC:(BOOL)c;
- (void)setCellsConcurrently:(id)concurrently tableUID:(const TSKUIDStruct *)d calculationEngine:(id)engine conditionalStyleOwner:(id)owner ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings;
- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex;
- (void)tsceValueForCellStorageRef:(TSTCellStorage *)ref cellCoord:(const TSUCellCoord *)coord hostTableUID:(const TSKUIDStruct *)d outValue:(id *)value;
- (void)updateCustomFormatsAtKey:(id)key;
- (void)updateDataListsConcurrentlyWithConcurrentCellMap:(id)map clearImportWarnings:(BOOL)warnings;
- (void)updateHeaderStorageStylesWithBlock:(id)block;
- (void)upgradeCellFormatsU2_0;
- (void)upgradeConditionalStylesToLinkedRefWithTableUID:(const TSKUIDStruct *)d;
- (void)upgradeDataStoreCellStorageIfNeededWithTableUID:(const TSKUIDStruct *)d conditionalStyleOwner:(id)owner fileFormatVersion:(unint64_t)version;
@end

@implementation TSTTableDataStore

- (void)loadAllLazyReferences
{
  if (!self->_lazyReferencesAreLoaded)
  {
    objc_msgSend_p_loadLazyDatalists(self, a2, v2, v3);
    objc_msgSend_p_loadLazyTileStorage(self, v5, v6, v7);
    objc_msgSend_p_forceLoadHeaderStorages(self, v8, v9, v10);
    self->_lazyReferencesAreLoaded = 1;
  }
}

- (void)p_forceLoadHeaderStorages
{
  objc_msgSend_forceLoadHeaders(self->_rowHeaderStorage, a2, v2, v3);
  columnHeaderStorage = self->_columnHeaderStorage;

  objc_msgSend_forceLoadHeaders(columnHeaderStorage, v5, v6, v7);
}

- (void)updateHeaderStorageStylesWithBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_updateStylesWithBlock_(self->_rowHeaderStorage, v4, blockCopy, v5);
  objc_msgSend_updateStylesWithBlock_(self->_columnHeaderStorage, v6, blockCopy, v7);
}

- (BOOL)hasMigratableStylesInCells
{
  styleDataList = self->_styleDataList;
  v6 = styleDataList;
  if (!styleDataList)
  {
    v6 = sub_22170A75C(self);
  }

  if (objc_msgSend_count(v6, a2, v2, v3))
  {
    v10 = 1;
    if (!styleDataList)
    {
      goto LABEL_16;
    }

    return v10;
  }

  richTextDataList = self->_richTextDataList;
  v12 = richTextDataList;
  if (!richTextDataList)
  {
    v12 = sub_22170A7B0(self, v7);
  }

  if (objc_msgSend_count(v12, v7, v8, v9))
  {
    v10 = 1;
    if (!richTextDataList)
    {
LABEL_19:

      if (styleDataList)
      {
        return v10;
      }

      goto LABEL_16;
    }
  }

  else
  {
    formulaErrorDataList = self->_formulaErrorDataList;
    v17 = formulaErrorDataList;
    if (!formulaErrorDataList)
    {
      v17 = sub_22170A7F8(self);
    }

    v10 = objc_msgSend_count(v17, v13, v14, v15) != 0;
    if (formulaErrorDataList)
    {
      if (!richTextDataList)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (!richTextDataList)
      {
        goto LABEL_19;
      }
    }
  }

  if (!styleDataList)
  {
LABEL_16:
  }

  return v10;
}

- (BOOL)hasCellOrTextStyles
{
  styleDataList = self->_styleDataList;
  v5 = styleDataList;
  if (!styleDataList)
  {
    v5 = sub_22170A75C(self);
  }

  v6 = objc_msgSend_count(v5, a2, v2, v3);
  if (!styleDataList)
  {
  }

  return v6 != 0;
}

- (void)replaceStylesUsingBlock:(id)block
{
  blockCopy = block;
  styleDataList = self->_styleDataList;
  v6 = styleDataList;
  if (!styleDataList)
  {
    v6 = sub_22170A75C(self);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22169D7B8;
  v10[3] = &unk_27845E4E0;
  v7 = blockCopy;
  v11 = v7;
  objc_msgSend_replaceStylesUsingBlock_(v6, v8, v10, v9);
  if (!styleDataList)
  {
  }
}

- (void)decrementColumnCellCount:(unsigned __int16)count byAmount:(unint64_t)amount
{
  objc_msgSend_decrementCellCountAtIndex_byAmount_(self->_columnHeaderStorage, a2, count, amount);
  if (self->_cellCountValid)
  {
    cellCount = self->_cellCount;
    if (cellCount < amount)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataStore decrementColumnCellCount:byAmount:]", v7);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 377, 0, "Can't drive cell count below zero!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
      LODWORD(cellCount) = self->_cellCount;
    }

    self->_cellCount = cellCount - amount;
  }
}

- (void)decrementCellCountsAtCellID:(TSUCellCoord)d
{
  column = d.column;
  objc_msgSend_decrementCellCountAtIndex_byAmount_(self->_rowHeaderStorage, a2, *&d, 1);

  MEMORY[0x2821F9670](self, sel_decrementColumnCellCount_byAmount_, column, 1);
}

- (void)incrementCellCountsAtCellID:(TSUCellCoord)d
{
  column = d.column;
  objc_msgSend_incrementCellCountAtIndex_byAmount_(self->_rowHeaderStorage, a2, *&d, 1);
  objc_msgSend_incrementCellCountAtIndex_byAmount_(self->_columnHeaderStorage, v5, column, 1);
  if (self->_cellCountValid)
  {
    ++self->_cellCount;
  }
}

- (void)p_updateNumberOfPopulatedCells
{
  if (!self->_cellCountValid)
  {
    self->_cellCount = objc_msgSend_totalCellCount(self->_columnHeaderStorage, a2, v2, v3);
    self->_cellCountValid = 1;
  }
}

- (unsigned)numberOfConditionalStyles
{
  conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
  v5 = conditionalStyleSetDataList;
  if (!conditionalStyleSetDataList)
  {
    v5 = sub_22170A84C(self);
  }

  v6 = objc_msgSend_count(v5, a2, v2, v3);
  if (!conditionalStyleSetDataList)
  {
  }

  return v6;
}

- (unint64_t)numberOfComments
{
  commentStorageDataList = self->_commentStorageDataList;
  v5 = commentStorageDataList;
  if (!commentStorageDataList)
  {
    v5 = sub_22170A8A0(self);
  }

  v6 = objc_msgSend_count(v5, a2, v2, v3);
  if (!commentStorageDataList)
  {
  }

  return v6;
}

- (id)commentStorageAtCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3);
  v8 = sub_221145078(v5, 0x80000, v6, v7);
  if (v8)
  {
    v11 = v8;
    commentStorageDataList = self->_commentStorageDataList;
    v13 = commentStorageDataList;
    if (!commentStorageDataList)
    {
      v13 = sub_22170A8A0(self);
    }

    v14 = objc_msgSend_commentStorageForKey_(v13, v9, v11, v10);
    if (!commentStorageDataList)
    {
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)upgradeConditionalStylesToLinkedRefWithTableUID:(const TSKUIDStruct *)d
{
  conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
  v6 = conditionalStyleSetDataList;
  if (!conditionalStyleSetDataList)
  {
    v6 = sub_22170A84C(self);
  }

  v7 = v6;
  objc_msgSend_upgradeConditionalStylesToLinkedRefWithTableUID_(v6, v6, d, v3);
  if (!conditionalStyleSetDataList)
  {
  }
}

- (TSTCellStorage)cellStorageRefAtCellID:(TSUCellCoord)d
{
  column = d.column;
  v5 = objc_msgSend_rowInfoAtIndex_(self->_tileStorage, a2, *&d, v3);
  v8 = objc_msgSend_cellStorageRefAtIndex_(v5, v6, column, v7);

  return v8;
}

- (BOOL)getCell:(id)cell atCellID:(TSUCellCoord)d
{
  cellCopy = cell;
  if (!cellCopy)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTTableDataStore getCell:atCellID:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 459, 0, "invalid nil value for '%{public}s'", "cell");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = objc_msgSend_cellStorageRefAtCellID_(self, v6, *&d, v7);
  v22 = v18;
  if (!v18)
  {
    goto LABEL_7;
  }

  if (!sub_22169DEF8(v18, v19, v20, v21))
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTTableDataStore getCell:atCellID:]", v24);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v29);
    v31 = NSStringFromTSUCellCoord();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v32, v27, v30, 466, 0, "Retrieving corrupt cell storage data for cellID:%@", v31);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
LABEL_7:
    v25 = 0;
    goto LABEL_8;
  }

  objc_msgSend_inflateFromStorageRef_dataStore_(cellCopy, v23, v22, self);
  v25 = 1;
LABEL_8:

  return v25;
}

- (id)stringAtCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3);
  if (!v5)
  {
    goto LABEL_14;
  }

  v9 = v5;
  sub_22169DEF8(v5, v6, v7, v8);
  v12 = *(v9 + 1);
  if (v12 == 9)
  {
    v20 = sub_221145078(v9, 0x10, v10, v11);
    if (v20)
    {
      v23 = v20;
      richTextDataList = self->_richTextDataList;
      v18 = richTextDataList;
      if (!richTextDataList)
      {
        v18 = sub_22170A7B0(self, v21);
      }

      v25 = objc_msgSend_richTextForKey_(v18, v21, v23, v22);
      v19 = objc_msgSend_string(v25, v26, v27, v28);

      if (!richTextDataList)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_17;
  }

  if (v12 != 3)
  {
    v29 = [TSTCell alloc];
    v18 = objc_msgSend_initWithStorageRef_dataStore_(v29, v30, v9, self);
    v19 = objc_msgSend_formattedValue(v18, v31, v32, v33);
LABEL_16:

    goto LABEL_17;
  }

  v13 = sub_221145078(v9, 8, v10, v11);
  if (!v13)
  {
    goto LABEL_14;
  }

  v16 = v13;
  stringDataList = self->_stringDataList;
  v18 = stringDataList;
  if (!stringDataList)
  {
    v18 = sub_22170A8F4(self);
  }

  v19 = objc_msgSend_stringForKey_(v18, v14, v16, v15);
  if (!stringDataList)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v19;
}

- (void)enumerateCellStoragesInRange:(TSUCellRect)range withBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  tileStorage = self->_tileStorage;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22169E254;
  v12[3] = &unk_2784684B8;
  v9 = HIDWORD(*&size);
  column = origin.column;
  numberOfColumns = size.numberOfColumns;
  v13 = blockCopy;
  v10 = blockCopy;
  objc_msgSend_enumerateRowsInRange_withBlock_(tileStorage, v11, origin.row, v9, v12);
}

- (void)p_enumerateCellStoragesRowByRowToMaxID:(TSUCellCoord)d getPreBNC:(BOOL)c withBlock:(id)block
{
  blockCopy = block;
  tileStorage = self->_tileStorage;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22169E4AC;
  v12[3] = &unk_2784684E0;
  v14 = 0;
  v15 = d.column + 1;
  cCopy = c;
  v13 = blockCopy;
  v10 = blockCopy;
  objc_msgSend_enumerateRowByRowInRange_withBlock_(tileStorage, v11, 0, d.row + 1, v12);
}

- (id)cellStyleAtCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3);
  if (v5 && (v8 = sub_221145078(v5, 0x20, v6, v7), v8))
  {
    v9 = v8;
    objc_opt_class();
    styleDataList = self->_styleDataList;
    v13 = styleDataList;
    if (!styleDataList)
    {
      v13 = sub_22170A75C(self);
    }

    v14 = objc_msgSend_styleForKey_(v13, v10, v9, v11);
    v15 = TSUCheckedDynamicCast();

    if (!styleDataList)
    {
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)conditionalStyleSetAtCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3);
  if (v5 && (v8 = sub_221145078(v5, 0x80, v6, v7), v8))
  {
    v9 = v8;
    objc_opt_class();
    conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
    v13 = conditionalStyleSetDataList;
    if (!conditionalStyleSetDataList)
    {
      v13 = sub_22170A84C(self);
    }

    v14 = objc_msgSend_conditionalStyleSetForKey_(v13, v10, v9, v11);
    v15 = TSUCheckedDynamicCast();

    if (!conditionalStyleSetDataList)
    {
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)textStyleAtCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3);
  if (v5 && (v8 = sub_221145078(v5, 0x40, v6, v7), v8))
  {
    v9 = v8;
    objc_opt_class();
    styleDataList = self->_styleDataList;
    v13 = styleDataList;
    if (!styleDataList)
    {
      v13 = sub_22170A75C(self);
    }

    v14 = objc_msgSend_styleForKey_(v13, v10, v9, v11);
    v15 = TSUCheckedDynamicCast();

    if (!styleDataList)
    {
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)formatForCalcEngineAtCellID:(TSUCellCoord)d formatIsExplicitOut:(BOOL *)out refIfAvailable:(TSTCellStorage *)available
{
  availableCopy = available;
  if (available || (v8 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, out), (availableCopy = v8) != 0))
  {
    v9 = sub_221145078(availableCopy, 0x1000, *&d, out);
    v10 = sub_221143624(v9);
    v13 = sub_221145078(availableCopy, v10, v11, v12);
    if (v13)
    {
      v16 = v13;
      formatDataList = self->_formatDataList;
      if (!formatDataList)
      {
        formatDataList = sub_22170A948(self, v14);
      }

      v18 = objc_msgSend_cellFormatForKey_(formatDataList, v14, v16, v15);
      v22 = objc_msgSend_formatType(v18, v19, v20, v21);
      if (!objc_msgSend_formatTypeIsExpected_(TSTCell, v23, v22, v24))
      {
        v18 = 0;
      }

      if (out)
      {
        if (v18)
        {
          v27 = sub_221145078(availableCopy, 0x1000, v25, v26);
          v28 = (*(&availableCopy->var0 + 3) & (sub_22121E814(v27) | 0x8000)) != 0;
        }

        else
        {
          v28 = 0;
        }

        *out = v28;
      }

      v8 = v18;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)stringForCalcEngineAtCellID:(TSUCellCoord)d refIfAvailable:(TSTCellStorage *)available
{
  if ((available || (available = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, 0)) != 0) && (v5 = sub_221145078(available, 8, *&d, available), v5))
  {
    v8 = v5;
    stringDataList = self->_stringDataList;
    v10 = stringDataList;
    if (!stringDataList)
    {
      v10 = sub_22170A8F4(self);
    }

    v11 = objc_msgSend_stringForKey_(v10, v6, v8, v7);
    if (!stringDataList)
    {
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)richTextStorageForCalcEngineAtCellID:(TSUCellCoord)d refIfAvailable:(TSTCellStorage *)available
{
  if ((available || (available = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, 0)) != 0) && (v5 = sub_221145078(available, 0x10, *&d, available), v5))
  {
    v8 = v5;
    richTextDataList = self->_richTextDataList;
    v10 = richTextDataList;
    if (!richTextDataList)
    {
      v10 = sub_22170A7B0(self, v6);
    }

    v11 = objc_msgSend_richTextForKey_(v10, v6, v8, v7);
    if (!richTextDataList)
    {
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)valueTypeAtCellID:(TSUCellCoord)d
{
  v4 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3);
  if (!v4 || (v8 = v4, sub_22169DEF8(v4, v5, v6, v7), v9 = v8[1], (objc_msgSend_cellValueTypeIsExpected_(TSTCell, v10, v9, v11) & 1) == 0))
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)hasFormulaSyntaxErrorAtCellID:(TSUCellCoord)d
{
  result = 0;
  if (d.row != 0x7FFFFFFF && (*&d & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v6 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3);
    return sub_221145078(v6, 0x800, v7, v8) != 0;
  }

  return result;
}

- (BOOL)hasFormulaAtCellID:(TSUCellCoord)d
{
  result = 0;
  if (d.row != 0x7FFFFFFF && (*&d & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v6 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3);
    return sub_221145078(v6, 0x200, v7, v8) != 0;
  }

  return result;
}

- (BOOL)containsFormulas
{
  formulaDataList = self->_formulaDataList;
  v5 = formulaDataList;
  if (!formulaDataList)
  {
    v5 = sub_22170A990(self);
  }

  v6 = objc_msgSend_containsFormulas(v5, a2, v2, v3);
  if (!formulaDataList)
  {
  }

  return v6;
}

- (BOOL)containsImportWarnings
{
  importWarningSetDataList = self->_importWarningSetDataList;
  v5 = importWarningSetDataList;
  if (!importWarningSetDataList)
  {
    v5 = sub_22170A9E4(self);
  }

  v6 = objc_msgSend_count(v5, a2, v2, v3);
  if (!importWarningSetDataList)
  {
  }

  return v6 != 0;
}

- (BOOL)containsControlCellSpecs
{
  controlCellSpecDataList = self->_controlCellSpecDataList;
  v5 = controlCellSpecDataList;
  if (!controlCellSpecDataList)
  {
    v5 = sub_22170AA38(self, a2);
  }

  v6 = objc_msgSend_containsControlCellSpecs(v5, a2, v2, v3);
  if (!controlCellSpecDataList)
  {
  }

  return v6;
}

- (BOOL)containsRatingFormats
{
  formatDataList = self->_formatDataList;
  v5 = formatDataList;
  if (!formatDataList)
  {
    v5 = sub_22170A948(self, a2);
  }

  v6 = objc_msgSend_containsRatingFormats(v5, a2, v2, v3);
  if (!formatDataList)
  {
  }

  return v6;
}

- (id)allRichTextStorages
{
  richTextDataList = self->_richTextDataList;
  v5 = richTextDataList;
  if (!richTextDataList)
  {
    v5 = sub_22170A7B0(self, a2);
  }

  v6 = objc_msgSend_allRichTextStorages(v5, a2, v2, v3);
  if (!richTextDataList)
  {
  }

  return v6;
}

- (void)_setCell:(id)cell atCellID:(TSUCellCoord)d tableUID:(const TSKUIDStruct *)iD calculationEngine:(id)engine conditionalStyleOwner:(id)owner ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings richTextDOLCHint:(BOOL *)self0
{
  cellCopy = cell;
  engineCopy = engine;
  ownerCopy = owner;
  objc_msgSend_assertIsNotIterating(self, v15, v16, v17);
  objc_msgSend_validateAndRepair(cellCopy, v18, v19, v20);
  if (objc_msgSend_isEmptyForDataStore(cellCopy, v21, v22, v23))
  {
  }

  else if (cellCopy)
  {
    v25 = objc_msgSend_tileForWritingAtRowIndex_outTileRange_(self->_tileStorage, v24, *&d, v152);

    if (!v25)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSTTableDataStore _setCell:atCellID:tableUID:calculationEngine:conditionalStyleOwner:ignoreFormula:clearImportWarnings:richTextDOLCHint:]", v27);
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v31);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 1167, 0, "Failed to get tile for cell!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
    }

    v144 = d.row - LODWORD(v152[0]);
    v40 = objc_msgSend_cellStorageRefAtColumnIndex_tileRowIndex_(v25, v26, d.column, d.row - LODWORD(v152[0]));
    v143 = 1;
LABEL_12:
    shouldUseWideRows = objc_msgSend_shouldUseWideRows(v25, v37, v38, v39);
    v145 = objc_msgSend_shouldUseWideRows(self->_tileStorage, v43, v44, v45);
    if (HIWORD(d.row) || d.column >= 0x100u)
    {
      if ((shouldUseWideRows & 1) == 0)
      {
        objc_msgSend_setShouldUseWideRows_(v25, v46, 1, v48);
      }

      if (v145)
      {
LABEL_22:
        v142 = sub_221145078(v40, 0x80, v47, v48);
        if (objc_msgSend_hasFormula(cellCopy, v50, v51, v52))
        {
          v56 = objc_msgSend_formulaObject(cellCopy, v53, v54, v55);
          v60 = v56;
          if (v56 && objc_msgSend_containsUidReferences(v56, v57, v58, v59))
          {
            v64 = objc_msgSend_calcEngine(engineCopy, v61, v62, v63);
            v150.coordinate = d;
            v150._tableUID = *iD;
            TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v151, v64, &v150);

            v67 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(v60, v65, &v151, v66);
            objc_msgSend_setFormulaObject_(cellCopy, v68, v67, v69);
          }
        }

        if (objc_msgSend_hasFormulaSyntaxError(cellCopy, v53, v54, v55))
        {
          objc_msgSend_formulaDefinitionPrecedentForTableUID_(TSCEHauntedOwner, v70, iD, v72);
          objc_msgSend_markCellRefAsDirty_(engineCopy, v73, &v151, v74);
        }

        if (objc_msgSend_hasConditionalStyle(cellCopy, v70, v71, v72))
        {
          v78 = objc_msgSend_conditionalStyle(cellCopy, v75, v76, v77);
          if (objc_msgSend_containsUidReferences(v78, v79, v80, v81))
          {
            v85 = objc_msgSend_calcEngine(engineCopy, v82, v83, v84);
            v89 = objc_msgSend_ownerUID(ownerCopy, v86, v87, v88);
            v150.coordinate = d;
            v150._tableUID._lower = v89;
            v150._tableUID._upper = v90;
            TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v151, v85, &v150);

            TSCEFormulaRewriteContext::setHostCellOverridesTableID(&v151, 0);
            v93 = objc_msgSend_copyToGeometricFormWithRewriteContext_(v78, v91, &v151, v92);

            objc_msgSend_setConditionalStyle_(cellCopy, v94, v93, v95);
          }

          else
          {
            v93 = v78;
          }

          if (formula)
          {
            v96 = v93;
          }

          else
          {
            v97 = objc_msgSend_calcEngine(engineCopy, v82, v83, v84);
            v150.coordinate = d;
            v150._tableUID = *iD;
            TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v151, v97, &v150);

            v96 = objc_msgSend_copyByConvertingToRelativeAncestorsWithRewriteContext_(v93, v98, &v151, v99);
            objc_msgSend_setConditionalStyle_(cellCopy, v100, v96, v101);
          }
        }

        v102 = objc_msgSend_richTextValue(cellCopy, v75, v76, v77);
        if (v102)
        {
        }

        else
        {
          v105 = sub_221145078(v40, 0x10, v103, v104);
          if (!v105)
          {
            goto LABEL_45;
          }
        }

        if (hint)
        {
          if (!*hint)
          {
            goto LABEL_45;
          }

          goto LABEL_44;
        }

        v109 = objc_msgSend_owner(self, v106, v107, v108);
        v113 = objc_msgSend_tsp_isInDocument(v109, v110, v111, v112);

        if (v113)
        {
LABEL_44:
          sub_22169EEEC(self, cellCopy, v40);
        }

LABEL_45:
        sub_22169F148(v105, cellCopy, v40);
        sub_22169F450(self, cellCopy, v40, v114, v115, warnings);
        v121 = sub_221145078(v40, 0x200, v116, v117);
        if (warnings && objc_msgSend_hasImportWarningSet(cellCopy, v118, v119, v120))
        {
          v124 = objc_msgSend_importWarningSet(cellCopy, v118, v122, v123);
          v128 = objc_msgSend_importWarningSetID(cellCopy, v125, v126, v127);
          v129 = v124;
          objc_msgSend_setImportWarningSet_(cellCopy, v130, 0, v131);
        }

        else
        {
          v129 = 0;
          v128 = 0;
        }

        objc_msgSend_setCell_atColumnIndex_tileRowIndex_(v25, v118, cellCopy, d.column, v144);
        if (v128)
        {
          objc_msgSend_setImportWarningSet_(cellCopy, v132, v129, v134);
        }

        if ((v145 & 1) == 0 && objc_msgSend_shouldUseWideRows(v25, v132, v133, v134))
        {
          objc_msgSend_setShouldUseWideRows_(self->_tileStorage, v132, 1, v134);
        }

        if (!cellCopy)
        {
          objc_msgSend_pruneTileForRowIndex_(self->_tileStorage, v132, *&d, v134);
        }

        if (engineCopy)
        {
          if (!formula)
          {
            sub_2216A0654(cellCopy, v121, *&d, iD, engineCopy, self, 0);
            if (ownerCopy)
            {
              if (v142 != objc_msgSend_conditionalStyleID(cellCopy, v135, v137, v136))
              {
                v139 = objc_msgSend_conditionalStyle(cellCopy, v135, v138, v136);
                objc_msgSend_replaceFormulaForConditionalStyle_atCellID_(ownerCopy, v140, v139, *&d);
              }
            }
          }
        }

        if (v40)
        {
          v141 = 0;
        }

        else
        {
          v141 = v143;
        }

        if (v141 == 1)
        {
          objc_msgSend_incrementCellCountsAtCellID_(self, v135, *&d, v136);
          goto LABEL_70;
        }

        if (!cellCopy && v40)
        {
          objc_msgSend_decrementCellCountsAtCellID_(self, v135, *&d, v136);
          goto LABEL_69;
        }

        goto LABEL_70;
      }
    }

    else if (v145 & 1 | ((shouldUseWideRows & 1) == 0))
    {
      tileStorage = v25;
      if (shouldUseWideRows & 1 | ((v145 & 1) == 0))
      {
        goto LABEL_22;
      }

LABEL_21:
      objc_msgSend_setShouldUseWideRows_(tileStorage, v46, 1, v48);
      goto LABEL_22;
    }

    tileStorage = self->_tileStorage;
    goto LABEL_21;
  }

  v25 = objc_msgSend_tileStartingAtOrBeforeRowIndex_outTileRange_(self->_tileStorage, v24, *&d, v152);

  if (!v25)
  {
LABEL_69:
    cellCopy = 0;
    goto LABEL_70;
  }

  cellCopy = 0;
  if (d.row >= v152[0] && d.row - v152[0] < v152[1])
  {
    v144 = d.row - LODWORD(v152[0]);
    v40 = objc_msgSend_cellStorageRefAtColumnIndex_tileRowIndex_(v25, v41, d.column, d.row - LODWORD(v152[0]));
    cellCopy = 0;
    if (v40)
    {
      v143 = 0;
      goto LABEL_12;
    }
  }

LABEL_70:
}

- (void)setCellMap:(id)map tableUID:(const TSKUIDStruct *)d calculationEngine:(id)engine conditionalStyleOwner:(id)owner ignoreFormulas:(BOOL)formulas skipDirtyingNonFormulaCells:(BOOL)cells doRichTextDOLC:(BOOL)c
{
  mapCopy = map;
  engineCopy = engine;
  ownerCopy = owner;
  v18 = MEMORY[0x277D86228];
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2050000000;
  v77[3] = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v76 = 0x7FFFFFFF;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v74 = 0x7FFFFFFF;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_2216A140C;
  v71 = sub_2216A141C;
  v72 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v19, v20, v21);
  if (formulas)
  {
    mayModifyFormulasInCells = 0;
  }

  else
  {
    mayModifyFormulasInCells = objc_msgSend_mayModifyFormulasInCells(mapCopy, v22, v23, v24);
  }

  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x9812000000;
  v65[3] = sub_2216A1424;
  v65[4] = nullsub_86;
  v65[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
  v26 = objc_msgSend_calcEngine(engineCopy, v22, v23, v24);
  v60.coordinate = 0;
  v60._tableUID = *d;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v66, v26, &v60);

  v60.coordinate = 0;
  v60._tableUID._lower = &v60;
  v60._tableUID._upper = 0x9812000000;
  v61 = sub_2216A1424;
  v62 = nullsub_86;
  v63 = TSTCategoryAggregateFormulaOwner__ivarLayout;
  v30 = objc_msgSend_calcEngine(engineCopy, v27, v28, v29);
  v58.coordinate = 0;
  v58._tableUID._lower = objc_msgSend_ownerUID(ownerCopy, v31, v32, v33);
  v58._tableUID._upper = v34;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v64, v30, &v58);

  TSCEFormulaRewriteContext::setHostCellOverridesTableID((v60._tableUID._lower + 48), 0);
  v58.coordinate = 0;
  v58._tableUID._lower = &v58;
  v58._tableUID._upper = 0x2020000000;
  v59 = 0;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_2216A1474;
  v42[3] = &unk_278468508;
  v47 = v75;
  v48 = v73;
  v46 = v77;
  v42[4] = self;
  v49 = &v67;
  v50 = v65;
  v51 = &v58;
  v35 = engineCopy;
  v43 = v35;
  v52 = &v60;
  dCopy = d;
  formulasCopy = formulas;
  cCopy = c;
  v56 = mayModifyFormulasInCells;
  cellsCopy = cells;
  v36 = ownerCopy;
  v44 = v36;
  v37 = mapCopy;
  v45 = v37;
  objc_msgSend_enumerateCellsWithIDsUsingBlock_(v37, v38, v42, v39);
  objc_msgSend_pruneTilesForRows_(self->_tileStorage, v40, v68[5], v41);

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(v65, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(v73, 8);
  _Block_object_dispose(v75, 8);
  _Block_object_dispose(v77, 8);
}

- (void)upgradeCellFormatsU2_0
{
  v10 = sub_22170AA80(self);
  objc_msgSend_upgradeCellFormatsU2_0(v10, v3, v4, v5);

  v11 = sub_22170A948(self, v6);
  objc_msgSend_upgradeCellFormatsU2_0(v11, v7, v8, v9);
}

- (void)updateCustomFormatsAtKey:(id)key
{
  keyCopy = key;
  v5 = sub_22170A948(self, v4);
  objc_msgSend_updateCustomFormatsAtKey_(v5, v6, keyCopy, v7);
}

- (id)p_preBNCpopulatedCustomFormat:(id)format value:(double)value
{
  formatCopy = format;
  v9 = objc_msgSend_asCustomFormatWrapper(formatCopy, v6, v7, v8);
  v13 = v9;
  if (v9)
  {
    v14 = objc_msgSend_customFormatKey(v9, v10, v11, v12);
    v18 = objc_msgSend_documentRoot(self, v15, v16, v17);

    if (v18)
    {
      v22 = objc_msgSend_documentRoot(self, v19, v20, v21);
      v26 = objc_msgSend_customFormatList(v22, v23, v24, v25);

      v29 = objc_msgSend_customFormatForKey_(v26, v27, v14, v28);

      v33 = v13;
      if (v29)
      {
        v34 = objc_msgSend_formatType(v29, v30, v31, v32);
        if (v34 == objc_msgSend_formatType(v33, v35, v36, v37))
        {
          v41 = objc_msgSend_populatedCustomFormatWrapperFromCFWrapper_customFormat_(MEMORY[0x277D80650], v38, v33, v29);
        }

        else if (objc_msgSend_formatType(v29, v38, v39, v40) == 274 && objc_msgSend_formatType(v33, v42, v43, v44) == 270)
        {
          v45 = objc_alloc(MEMORY[0x277D80650]);
          v41 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v45, v46, 274, v14, v29);
        }

        else
        {
          v47 = objc_alloc(MEMORY[0x277D80650]);
          v41 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v47, v48, 274, v14, 0);
        }

        v49 = v41;

        v33 = v49;
      }
    }

    else
    {
      v33 = v13;
    }
  }

  else
  {
    v33 = formatCopy;
  }

  return v33;
}

- (id)p_populatedMultipleChoiceListFormat:(id)format
{
  formatCopy = format;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v9 = v5;
  if (v5)
  {
    multipleChoiceListFormatDataList = self->_multipleChoiceListFormatDataList;
    v11 = objc_msgSend_multipleChoiceListFormatID(v5, v6, v7, v8);
    v17 = objc_msgSend_multipleChoiceListFormatForKey_(multipleChoiceListFormatDataList, v12, v11, v13);
    if (!v17)
    {
      v18 = objc_msgSend_multipleChoiceListFormatID(v9, v14, v15, v16);
      objc_msgSend_p_stashBadKey_forList_(self, v19, v18, @"preBNCPopupTable");
    }

    v20 = objc_alloc(MEMORY[0x277D80698]);
    v24 = objc_msgSend_initialValue(v9, v21, v22, v23);
    v28 = objc_msgSend_multipleChoiceListFormatID(v9, v25, v26, v27);
    v30 = objc_msgSend_initWithInitialValue_multipleChoiceListFormatID_popupModel_(v20, v29, v24, v28, v17);
  }

  else
  {
    v30 = formatCopy;
  }

  return v30;
}

- (void)p_stashBadKey:(unint64_t)key forList:(id)list
{
  if (!self->_foundABadDatalistKey)
  {
    obj = self;
    objc_sync_enter(obj);
    if (!self->_foundABadDatalistKey)
    {
      v8 = objc_msgSend_owner(obj, v5, v6, v7);
      objc_opt_class();
      objc_opt_isKindOfClass();

      self->_foundABadDatalistKey = 1;
    }

    objc_sync_exit(obj);
  }
}

- (void)resolveDataListKeysForPreBNCCell:(id)cell suppressTransmutation:(BOOL)transmutation sourceStorageVersion:(unsigned __int8)version
{
  versionCopy = version;
  transmutationCopy = transmutation;
  cellCopy = cell;
  if (objc_msgSend_valueType(cellCopy, v9, v10, v11) == 3)
  {
    v18 = objc_msgSend_stringID(cellCopy, v12, v13, v14);
    if (v18)
    {
      v270 = 0;
      stringDataList = self->_stringDataList;
      v20 = stringDataList;
      if (!stringDataList)
      {
        v20 = sub_22170A8F4(self);
      }

      v21 = objc_msgSend_stringForKey_outShouldWrap_outIsShared_(v20, v15, v18, &v270, 0);
      v23 = v21;
      if (stringDataList)
      {
        if (!v21)
        {
          goto LABEL_12;
        }
      }

      else
      {

        if (!v23)
        {
LABEL_12:
          objc_msgSend_p_stashBadKey_forList_(self, v22, v18, @"StringTable");
        }
      }

      objc_msgSend_setStringValue_clearingID_shouldWrap_(cellCopy, v22, v23, 0, v270);

      goto LABEL_14;
    }

    if ((objc_msgSend_upgrading(self, v15, v16, v17) & 1) == 0)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableDataStore resolveDataListKeysForPreBNCCell:suppressTransmutation:sourceStorageVersion:]", v25);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 1576, 0, "String cell has bad string!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
    }

    objc_msgSend_setValueType_(cellCopy, v24, 0, v25);
  }

LABEL_14:
  if (!objc_msgSend_hasCellSpec(cellCopy, v12, v13, v14))
  {
    goto LABEL_32;
  }

  v38 = objc_msgSend_formulaID(cellCopy, v35, v36, v37);
  v42 = objc_msgSend_upgrading(self, v39, v40, v41);
  if (v38)
  {
    v45 = 1;
  }

  else
  {
    v45 = v42;
  }

  if ((v45 & 1) == 0)
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSTTableDataStore resolveDataListKeysForPreBNCCell:suppressTransmutation:sourceStorageVersion:]", v44);
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v49);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v51, v47, v50, 1590, 0, "Formula cell has bad formula!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54);
  }

  formulaDataList = self->_formulaDataList;
  v56 = formulaDataList;
  if (!formulaDataList)
  {
    v56 = sub_22170A990(self);
  }

  v57 = objc_msgSend_formulaForKey_(v56, v43, v38, v44);
  v61 = v57;
  if (formulaDataList)
  {
    if (v57)
    {
      goto LABEL_24;
    }

LABEL_27:
    objc_msgSend_p_stashBadKey_forList_(self, v58, v38, @"FormulaTable");
    goto LABEL_28;
  }

  if (!v61)
  {
    goto LABEL_27;
  }

LABEL_24:
  if (!objc_msgSend_interactionType(v61, v58, v59, v60))
  {
LABEL_28:
    if ((objc_msgSend_upgrading(self, v62, v63, v64) & 1) == 0)
    {
      v67 = MEMORY[0x277D81150];
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "[TSTTableDataStore resolveDataListKeysForPreBNCCell:suppressTransmutation:sourceStorageVersion:]", v66);
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v70);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v72, v68, v71, 1600, 0, "NULL formula");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75);
    }

    objc_msgSend_setFormulaID_(cellCopy, v65, 0, v66);
    goto LABEL_31;
  }

  objc_msgSend_setCellSpec_clearingID_(cellCopy, v62, v61, 0);
LABEL_31:

LABEL_32:
  v79 = objc_msgSend_formulaSyntaxErrorID(cellCopy, v35, v36, v37);
  if (!v79)
  {
    goto LABEL_41;
  }

  formulaErrorDataList = self->_formulaErrorDataList;
  v81 = formulaErrorDataList;
  if (!formulaErrorDataList)
  {
    v81 = sub_22170A7F8(self);
  }

  v82 = objc_msgSend_formulaErrorForKey_(v81, v76, v79, v78);
  v84 = v82;
  if (formulaErrorDataList)
  {
    if (!v82)
    {
      goto LABEL_39;
    }
  }

  else
  {

    if (!v84)
    {
LABEL_39:
      objc_msgSend_p_stashBadKey_forList_(self, v83, v79, @"FormulaErrorTable");
    }
  }

  objc_msgSend_setFormulaSyntaxError_clearingID_(cellCopy, v83, v84, 0);

LABEL_41:
  v88 = objc_msgSend_richTextID(cellCopy, v76, v77, v78);
  if (!v88)
  {
    goto LABEL_53;
  }

  richTextDataList = self->_richTextDataList;
  v90 = richTextDataList;
  if (!richTextDataList)
  {
    v90 = sub_22170A7B0(self, v85);
  }

  v91 = objc_msgSend_richTextForKey_(v90, v85, v88, v87);
  v93 = v91;
  if (richTextDataList)
  {
    if (!v91)
    {
      goto LABEL_48;
    }
  }

  else
  {

    if (!v93)
    {
LABEL_48:
      objc_msgSend_p_stashBadKey_forList_(self, v92, v88, @"RichTextTable");
    }
  }

  if (versionCopy > 4)
  {
    objc_msgSend_setRichTextValue_clearingID_convertToPlaintextIfPossible_(cellCopy, v92, v93, 0, !transmutationCopy);
  }

  else
  {
    objc_msgSend_setRichTextValue_clearingID_convertToPlaintextIfPossible_(cellCopy, v92, v93, 0, 0);
  }

LABEL_53:
  v97 = objc_msgSend_commentStorageID(cellCopy, v85, v86, v87);
  if (!v97)
  {
    goto LABEL_62;
  }

  commentStorageDataList = self->_commentStorageDataList;
  v99 = commentStorageDataList;
  if (!commentStorageDataList)
  {
    v99 = sub_22170A8A0(self);
  }

  v100 = objc_msgSend_commentStorageForKey_(v99, v94, v97, v96);
  v102 = v100;
  if (commentStorageDataList)
  {
    if (!v100)
    {
      goto LABEL_60;
    }
  }

  else
  {

    if (!v102)
    {
LABEL_60:
      objc_msgSend_p_stashBadKey_forList_(self, v101, v97, @"CommentTable");
    }
  }

  objc_msgSend_setCommentStorage_clearingID_(cellCopy, v101, v102, 0);

LABEL_62:
  v106 = objc_msgSend_importWarningSetID(cellCopy, v94, v95, v96);
  if (!v106)
  {
    goto LABEL_71;
  }

  importWarningSetDataList = self->_importWarningSetDataList;
  v108 = importWarningSetDataList;
  if (!importWarningSetDataList)
  {
    v108 = sub_22170A9E4(self);
  }

  v109 = objc_msgSend_importWarningSetForKey_(v108, v103, v106, v105);
  v111 = v109;
  if (importWarningSetDataList)
  {
    if (!v109)
    {
      goto LABEL_69;
    }
  }

  else
  {

    if (!v111)
    {
LABEL_69:
      objc_msgSend_p_stashBadKey_forList_(self, v110, v106, @"ImportWarningTable");
    }
  }

  objc_msgSend_setImportWarningSet_clearingID_(cellCopy, v110, v111, 0);

LABEL_71:
  v115 = objc_msgSend_cellStyleID(cellCopy, v103, v104, v105);
  if (!v115)
  {
    goto LABEL_80;
  }

  styleDataList = self->_styleDataList;
  v117 = styleDataList;
  if (!styleDataList)
  {
    v117 = sub_22170A75C(self);
  }

  v118 = objc_msgSend_styleForKey_(v117, v112, v115, v114);
  v120 = v118;
  if (styleDataList)
  {
    if (!v118)
    {
      goto LABEL_78;
    }
  }

  else
  {

    if (!v120)
    {
LABEL_78:
      objc_msgSend_p_stashBadKey_forList_(self, v119, v115, @"StyleTable");
    }
  }

  objc_msgSend_setCellStyle_clearingID_(cellCopy, v119, v120, 0);

LABEL_80:
  v124 = objc_msgSend_textStyleID(cellCopy, v112, v113, v114);
  if (!v124)
  {
    goto LABEL_89;
  }

  v125 = self->_styleDataList;
  v126 = v125;
  if (!v125)
  {
    v126 = sub_22170A75C(self);
  }

  v127 = objc_msgSend_styleForKey_(v126, v121, v124, v123);
  v129 = v127;
  if (v125)
  {
    if (!v127)
    {
      goto LABEL_87;
    }
  }

  else
  {

    if (!v129)
    {
LABEL_87:
      objc_msgSend_p_stashBadKey_forList_(self, v128, v124, @"StyleTable");
    }
  }

  objc_msgSend_setTextStyle_clearingID_(cellCopy, v128, v129, 0);

LABEL_89:
  v133 = objc_msgSend_conditionalStyleID(cellCopy, v121, v122, v123);
  if (!v133)
  {
    goto LABEL_98;
  }

  conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
  v135 = conditionalStyleSetDataList;
  if (!conditionalStyleSetDataList)
  {
    v135 = sub_22170A84C(self);
  }

  v136 = objc_msgSend_conditionalStyleSetForKey_(v135, v130, v133, v132);
  v138 = v136;
  if (conditionalStyleSetDataList)
  {
    if (!v136)
    {
      goto LABEL_96;
    }
  }

  else
  {

    if (!v138)
    {
LABEL_96:
      objc_msgSend_p_stashBadKey_forList_(self, v137, v133, @"ConditionalStyleTable");
    }
  }

  objc_msgSend_setConditionalStyle_clearingID_(cellCopy, v137, v138, 0);

LABEL_98:
  v142 = objc_msgSend_currentFormatID(cellCopy, v130, v131, v132);
  if (!v142)
  {
    goto LABEL_123;
  }

  preBNCFormatDataList = self->_preBNCFormatDataList;
  v144 = preBNCFormatDataList;
  if (!preBNCFormatDataList)
  {
    v144 = sub_22170AA80(self);
  }

  v145 = objc_msgSend_cellFormatForKey_(v144, v139, v142, v141);
  v149 = v145;
  if (preBNCFormatDataList)
  {
    if (v145)
    {
      goto LABEL_106;
    }
  }

  else
  {

    if (v149)
    {
      goto LABEL_106;
    }
  }

  objc_msgSend_p_stashBadKey_forList_(self, v146, v142, @"preBNCFormatTable");
LABEL_106:
  v153 = objc_msgSend_asCustomFormatWrapper(v149, v146, v147, v148);
  if (v153)
  {
    v157 = 0.0;
    if (objc_msgSend_valueType(cellCopy, v150, v151, v152) == 2 && objc_msgSend_formatType(v149, v154, v155, v156) == 270)
    {
      objc_msgSend_doubleValue(cellCopy, v154, v158, v156);
      v157 = v159;
    }

    v160 = objc_msgSend_p_preBNCpopulatedCustomFormat_value_(self, v154, v153, v156, v157);

    v164 = objc_msgSend_asCustomFormatWrapper(v160, v161, v162, v163);
    v171 = objc_msgSend_customFormat(v164, v165, v166, v167);
    if (v171 || !objc_msgSend_hasFormula(cellCopy, v168, v169, v170) || (objc_msgSend_currentFormatIsExplicit(cellCopy, v172, v173, v174) & 1) != 0)
    {
    }

    else
    {

      if (versionCopy >= 2)
      {
        objc_msgSend_setDefaultFormatForValue(cellCopy, v267, v268, v269);
        v175 = 0;
        goto LABEL_116;
      }
    }

    v175 = 1;
  }

  else
  {
    v175 = 1;
    v160 = v149;
  }

LABEL_116:
  objc_opt_class();
  v179 = TSUDynamicCast();
  if (v179)
  {
    v180 = objc_msgSend_p_populatedMultipleChoiceListFormat_(self, v176, v179, v178);

    v160 = v180;
  }

  if (v175)
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v176, v160, 0, 1, 1, 0);
  }

  if (versionCopy <= 1)
  {
    v181 = objc_msgSend_currentFormat(cellCopy, v176, v177, v178);
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v182, v181, 1, 1, 1, 0);
  }

LABEL_123:
  v186 = objc_msgSend_numberFormatID(cellCopy, v139, v140, v141);
  if (!v186)
  {
    goto LABEL_132;
  }

  v187 = self->_preBNCFormatDataList;
  v188 = v187;
  if (!v187)
  {
    v188 = sub_22170AA80(self);
  }

  v189 = objc_msgSend_cellFormatForKey_(v188, v183, v186, v185);
  v191 = v189;
  if (v187)
  {
    if (!v189)
    {
      goto LABEL_130;
    }
  }

  else
  {

    if (!v191)
    {
LABEL_130:
      objc_msgSend_p_stashBadKey_forList_(self, v190, v186, @"preBNCFormatTable");
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v190, v191, 0, 1, 0, 0);

LABEL_132:
  v195 = objc_msgSend_currencyFormatID(cellCopy, v183, v184, v185);
  if (!v195)
  {
    goto LABEL_141;
  }

  v196 = self->_preBNCFormatDataList;
  v197 = v196;
  if (!v196)
  {
    v197 = sub_22170AA80(self);
  }

  v198 = objc_msgSend_cellFormatForKey_(v197, v192, v195, v194);
  v200 = v198;
  if (v196)
  {
    if (!v198)
    {
      goto LABEL_139;
    }
  }

  else
  {

    if (!v200)
    {
LABEL_139:
      objc_msgSend_p_stashBadKey_forList_(self, v199, v195, @"preBNCFormatTable");
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v199, v200, 0, 1, 0, 0);

LABEL_141:
  v204 = objc_msgSend_dateFormatID(cellCopy, v192, v193, v194);
  if (!v204)
  {
    goto LABEL_150;
  }

  v205 = self->_preBNCFormatDataList;
  v206 = v205;
  if (!v205)
  {
    v206 = sub_22170AA80(self);
  }

  v207 = objc_msgSend_cellFormatForKey_(v206, v201, v204, v203);
  v209 = v207;
  if (v205)
  {
    if (!v207)
    {
      goto LABEL_148;
    }
  }

  else
  {

    if (!v209)
    {
LABEL_148:
      objc_msgSend_p_stashBadKey_forList_(self, v208, v204, @"preBNCFormatTable");
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v208, v209, 0, 1, 0, 0);

LABEL_150:
  v213 = objc_msgSend_durationFormatID(cellCopy, v201, v202, v203);
  if (!v213)
  {
    goto LABEL_159;
  }

  v214 = self->_preBNCFormatDataList;
  v215 = v214;
  if (!v214)
  {
    v215 = sub_22170AA80(self);
  }

  v216 = objc_msgSend_cellFormatForKey_(v215, v210, v213, v212);
  v218 = v216;
  if (v214)
  {
    if (!v216)
    {
      goto LABEL_157;
    }
  }

  else
  {

    if (!v218)
    {
LABEL_157:
      objc_msgSend_p_stashBadKey_forList_(self, v217, v213, @"preBNCFormatTable");
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v217, v218, 0, 1, 0, 0);

LABEL_159:
  v222 = objc_msgSend_controlFormatID(cellCopy, v210, v211, v212);
  if (!v222)
  {
    goto LABEL_168;
  }

  v223 = self->_preBNCFormatDataList;
  v224 = v223;
  if (!v223)
  {
    v224 = sub_22170AA80(self);
  }

  v225 = objc_msgSend_cellFormatForKey_(v224, v219, v222, v221);
  v227 = v225;
  if (v223)
  {
    if (!v225)
    {
      goto LABEL_166;
    }
  }

  else
  {

    if (!v227)
    {
LABEL_166:
      objc_msgSend_p_stashBadKey_forList_(self, v226, v222, @"preBNCFormatTable");
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v226, v227, 0, 1, 0, 0);

LABEL_168:
  v231 = objc_msgSend_customFormatID(cellCopy, v219, v220, v221);
  if (!v231)
  {
    goto LABEL_180;
  }

  v232 = self->_preBNCFormatDataList;
  v233 = v232;
  if (!v232)
  {
    v233 = sub_22170AA80(self);
  }

  v234 = objc_msgSend_cellFormatForKey_(v233, v228, v231, v230);
  v238 = v234;
  if (v232)
  {
    if (v234)
    {
      goto LABEL_176;
    }
  }

  else
  {

    if (v238)
    {
      goto LABEL_176;
    }
  }

  objc_msgSend_p_stashBadKey_forList_(self, v235, v231, @"preBNCFormatTable");
LABEL_176:
  v242 = 0.0;
  if (objc_msgSend_valueType(cellCopy, v235, v236, v237) == 2 && objc_msgSend_formatType(v238, v239, v240, v241) == 270)
  {
    objc_msgSend_doubleValue(cellCopy, v239, v243, v241);
    v242 = v244;
  }

  v245 = objc_msgSend_p_preBNCpopulatedCustomFormat_value_(self, v239, v238, v241, v242);

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v246, v245, 0, 1, 0, 0);
LABEL_180:
  v250 = objc_msgSend_baseFormatID(cellCopy, v228, v229, v230);
  if (!v250)
  {
    goto LABEL_189;
  }

  v251 = self->_preBNCFormatDataList;
  v252 = v251;
  if (!v251)
  {
    v252 = sub_22170AA80(self);
  }

  v253 = objc_msgSend_cellFormatForKey_(v252, v247, v250, v249);
  v255 = v253;
  if (v251)
  {
    if (!v253)
    {
      goto LABEL_187;
    }
  }

  else
  {

    if (!v255)
    {
LABEL_187:
      objc_msgSend_p_stashBadKey_forList_(self, v254, v250, @"preBNCFormatTable");
    }
  }

  objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v254, v255, 0, 1, 0, 0);

LABEL_189:
  v258 = objc_msgSend_multipleChoiceListFormatID(cellCopy, v247, v248, v249);
  if (v258)
  {
    v259 = self->_preBNCFormatDataList;
    v260 = v259;
    if (!v259)
    {
      v260 = sub_22170AA80(self);
    }

    v261 = objc_msgSend_cellFormatForKey_(v260, v256, v258, v257);
    v264 = v261;
    if (v259)
    {
      if (!v261)
      {
        goto LABEL_196;
      }
    }

    else
    {

      if (!v264)
      {
LABEL_196:
        objc_msgSend_p_stashBadKey_forList_(self, v262, v258, @"preBNCFormatTable");
      }
    }

    v265 = objc_msgSend_p_populatedMultipleChoiceListFormat_(self, v262, v264, v263);
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cellCopy, v266, v265, 0, 1, 0, 0);
  }
}

- (void)resolveDataListKeysForCell:(id)cell cache:(id)cache suppressTransmutation:(BOOL)transmutation sourceStorageVersion:(unsigned __int8)version
{
  versionCopy = version;
  transmutationCopy = transmutation;
  v11 = objc_msgSend_stringID(cell, a2, cell, cache);
  if (!v11)
  {
    goto LABEL_11;
  }

  v15 = v11;
  v199 = 0;
  if (cache)
  {
    v16 = objc_msgSend_stringForKey_shouldWrap_(cache, v12, v11, &v199);
    v17 = v16;
  }

  else
  {
    stringDataList = self->_stringDataList;
    v16 = stringDataList;
    if (stringDataList)
    {
      objc_msgSend_stringForKey_outShouldWrap_outIsShared_(stringDataList, v12, v11, &v199, 0);
    }

    else
    {
      v16 = sub_22170A8F4(self);
      objc_msgSend_stringForKey_outShouldWrap_outIsShared_(v16, v197, v15, &v199, 0);
    }
    v17 = ;

    if (stringDataList)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  if (!v17)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v18, v15, @"StringTable");
  }

  objc_msgSend_setStringValue_clearingID_shouldWrap_(cell, v18, v17, 0, v199);
LABEL_11:
  v20 = objc_msgSend_formulaID(cell, v12, v13, v14);
  if (!v20)
  {
    v45 = objc_msgSend_controlCellSpecID(cell, v21, v22, v23);
    if (!v45)
    {
      goto LABEL_24;
    }

    v46 = v45;
    controlCellSpecDataList = self->_controlCellSpecDataList;
    v48 = controlCellSpecDataList;
    if (!controlCellSpecDataList)
    {
      v48 = sub_22170AA38(self, v33);
    }

    v49 = objc_msgSend_controlCellSpecForKey_(v48, v33, v46, v35);
    v51 = v49;
    if (controlCellSpecDataList)
    {
      if (v49)
      {
LABEL_23:
        objc_msgSend_setCellSpec_clearingID_(cell, v50, v51, 0);
        goto LABEL_24;
      }
    }

    else
    {

      if (v51)
      {
        goto LABEL_23;
      }
    }

    objc_msgSend_p_stashBadKey_forList_(self, v50, v46, @"ControlCellSpecTable");
    goto LABEL_23;
  }

  v24 = v20;
  formulaDataList = self->_formulaDataList;
  v26 = formulaDataList;
  if (!formulaDataList)
  {
    v26 = sub_22170A990(self);
  }

  v27 = objc_msgSend_formulaForKey_(v26, v21, v24, v23);
  v29 = v27;
  if (formulaDataList)
  {
    if (v27)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v29)
    {
      goto LABEL_16;
    }
  }

  objc_msgSend_p_stashBadKey_forList_(self, v28, v24, @"FormulaTable");
LABEL_16:
  objc_msgSend_setCellSpec_clearingID_(cell, v28, v29, 0);
  if (objc_msgSend_controlCellSpecID(cell, v30, v31, v32))
  {
    v36 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTTableDataStore resolveDataListKeysForCell:cache:suppressTransmutation:sourceStorageVersion:]", v35);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v39);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 1809, 0, "This cell is corrupt. It has a key for both formula and control.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
  }

LABEL_24:
  v52 = objc_msgSend_formulaSyntaxErrorID(cell, v33, v34, v35);
  if (!v52)
  {
    goto LABEL_30;
  }

  v56 = v52;
  formulaErrorDataList = self->_formulaErrorDataList;
  v58 = formulaErrorDataList;
  if (!formulaErrorDataList)
  {
    v58 = sub_22170A7F8(self);
  }

  v59 = objc_msgSend_formulaErrorForKey_(v58, v53, v56, v55);
  v61 = v59;
  if (!formulaErrorDataList)
  {

    if (v61)
    {
      goto LABEL_29;
    }

LABEL_57:
    objc_msgSend_p_stashBadKey_forList_(self, v60, v56, @"FormulaErrorTable");
    goto LABEL_29;
  }

  if (!v59)
  {
    goto LABEL_57;
  }

LABEL_29:
  objc_msgSend_setFormulaSyntaxError_clearingID_(cell, v60, v61, 0);
LABEL_30:
  v62 = objc_msgSend_richTextID(cell, v53, v54, v55);
  if (!v62)
  {
    goto LABEL_38;
  }

  v66 = v62;
  richTextDataList = self->_richTextDataList;
  v68 = richTextDataList;
  if (!richTextDataList)
  {
    v68 = sub_22170A7B0(self, v63);
  }

  v69 = objc_msgSend_richTextForKey_(v68, v63, v66, v65);
  v71 = v69;
  if (richTextDataList)
  {
    if (v69)
    {
      goto LABEL_35;
    }
  }

  else
  {

    if (v71)
    {
      goto LABEL_35;
    }
  }

  objc_msgSend_p_stashBadKey_forList_(self, v70, v66, @"RichTextTable");
LABEL_35:
  if (versionCopy > 4)
  {
    objc_msgSend_setRichTextValue_clearingID_convertToPlaintextIfPossible_(cell, v70, v71, 0, !transmutationCopy);
  }

  else
  {
    objc_msgSend_setRichTextValue_clearingID_convertToPlaintextIfPossible_(cell, v70, v71, 0, 0);
  }

LABEL_38:
  v72 = objc_msgSend_commentStorageID(cell, v63, v64, v65);
  if (!v72)
  {
    goto LABEL_44;
  }

  v76 = v72;
  commentStorageDataList = self->_commentStorageDataList;
  v78 = commentStorageDataList;
  if (!commentStorageDataList)
  {
    v78 = sub_22170A8A0(self);
  }

  v79 = objc_msgSend_commentStorageForKey_(v78, v73, v76, v75);
  v81 = v79;
  if (!commentStorageDataList)
  {

    if (v81)
    {
      goto LABEL_43;
    }

LABEL_61:
    objc_msgSend_p_stashBadKey_forList_(self, v80, v76, @"CommentTable");
    goto LABEL_43;
  }

  if (!v79)
  {
    goto LABEL_61;
  }

LABEL_43:
  objc_msgSend_setCommentStorage_clearingID_(cell, v80, v81, 0);
LABEL_44:
  v82 = objc_msgSend_importWarningSetID(cell, v73, v74, v75);
  if (!v82)
  {
    goto LABEL_50;
  }

  v86 = v82;
  importWarningSetDataList = self->_importWarningSetDataList;
  v88 = importWarningSetDataList;
  if (!importWarningSetDataList)
  {
    v88 = sub_22170A9E4(self);
  }

  v89 = objc_msgSend_importWarningSetForKey_(v88, v83, v86, v85);
  v91 = v89;
  if (!importWarningSetDataList)
  {

    if (v91)
    {
      goto LABEL_49;
    }

LABEL_91:
    objc_msgSend_p_stashBadKey_forList_(self, v90, v86, @"ImportWarningTable");
    goto LABEL_49;
  }

  if (!v89)
  {
    goto LABEL_91;
  }

LABEL_49:
  objc_msgSend_setImportWarningSet_clearingID_(cell, v90, v91, 0);
LABEL_50:
  v92 = objc_msgSend_cellStyleID(cell, v83, v84, v85);
  if (!v92)
  {
    goto LABEL_69;
  }

  v96 = v92;
  if (!cache)
  {
    objc_opt_class();
    styleDataList = self->_styleDataList;
    v102 = styleDataList;
    if (!styleDataList)
    {
      v102 = sub_22170A75C(self);
    }

    v103 = objc_msgSend_styleForKey_(v102, v99, v96, v100);
    v104 = TSUCheckedDynamicCast();

    if (!styleDataList)
    {
    }

    v98 = objc_msgSend_handleForCellStyle_(TSTCellStyleHandle, v105, v104, v106);

    if (v98)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  v98 = objc_msgSend_cellStyleHandleForKey_(cache, v93, v92, v95);
  if (!v98)
  {
LABEL_67:
    objc_msgSend_p_stashBadKey_forList_(self, v97, v96, @"StyleTable");
  }

LABEL_68:
  objc_msgSend_setCellStyleHandle_clearingID_(cell, v97, v98, 0);

LABEL_69:
  v107 = objc_msgSend_textStyleID(cell, v93, v94, v95);
  if (!v107)
  {
    goto LABEL_74;
  }

  v111 = v107;
  if (!cache)
  {
    objc_opt_class();
    v190 = sub_22170A75C(self);
    v193 = objc_msgSend_styleForKey_(v190, v191, v111, v192);
    v194 = TSUCheckedDynamicCast();

    v113 = objc_msgSend_handleForTextStyle_(TSTTextStyleHandle, v195, v194, v196);

    if (v113)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v113 = objc_msgSend_textStyleHandleForKey_(cache, v108, v107, v110);
  if (!v113)
  {
LABEL_72:
    objc_msgSend_p_stashBadKey_forList_(self, v112, v111, @"StyleTable");
  }

LABEL_73:
  objc_msgSend_setTextStyleHandle_clearingID_(cell, v112, v113, 0);

LABEL_74:
  v114 = objc_msgSend_conditionalStyleID(cell, v108, v109, v110);
  if (v114)
  {
    v118 = v114;
    conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
    v120 = conditionalStyleSetDataList;
    if (!conditionalStyleSetDataList)
    {
      v120 = sub_22170A84C(self);
    }

    v121 = objc_msgSend_conditionalStyleSetForKey_(v120, v115, v118, v117);
    v123 = v121;
    if (conditionalStyleSetDataList)
    {
      if (v121)
      {
LABEL_79:
        objc_msgSend_setConditionalStyle_clearingID_(cell, v122, v123, 0);
        goto LABEL_80;
      }
    }

    else
    {

      if (v123)
      {
        goto LABEL_79;
      }
    }

    objc_msgSend_p_stashBadKey_forList_(self, v122, v118, @"ConditionalStyleTable");
    goto LABEL_79;
  }

LABEL_80:
  v124 = objc_msgSend_numberFormatID(cell, v115, v116, v117);
  v128 = objc_msgSend_currencyFormatID(cell, v125, v126, v127);
  v132 = objc_msgSend_dateFormatID(cell, v129, v130, v131);
  v136 = objc_msgSend_durationFormatID(cell, v133, v134, v135);
  v140 = objc_msgSend_textFormatID(cell, v137, v138, v139);
  v144 = objc_msgSend_BOOLeanFormatID(cell, v141, v142, v143);
  v147 = v144;
  if (!v124 && !v128 && !v132 && !v136 && !v140 && !v144)
  {
    return;
  }

  formatDataList = self->_formatDataList;
  if (formatDataList)
  {
    if (!v124)
    {
      goto LABEL_100;
    }
  }

  else
  {
    formatDataList = sub_22170A948(self, v145);

    if (!v124)
    {
      goto LABEL_100;
    }
  }

  if (cache)
  {
    objc_msgSend_formatForKey_(cache, v145, v124, v146);
  }

  else
  {
    objc_msgSend_cellFormatForKey_(formatDataList, v145, v124, v146);
  }
  v148 = ;

  if (!v148)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v149, v124, @"FormatTable");
  }

  v152 = objc_msgSend_formatType(v148, v149, v150, v151, formatDataList);
  if (sub_22121E75C(v152))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cell, v153, v148, 0, 1, 0, 0);
  }

  else
  {
    objc_msgSend_clearFormatOfType_(cell, v153, 256, v154);
  }

LABEL_100:
  if (!v128)
  {
    goto LABEL_108;
  }

  if (cache)
  {
    objc_msgSend_formatForKey_(cache, v145, v128, v146);
  }

  else
  {
    objc_msgSend_cellFormatForKey_(formatDataList, v145, v128, v146);
  }
  v155 = ;

  if (!v155)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v156, v128, @"FormatTable");
  }

  v159 = objc_msgSend_formatType(v155, v156, v157, v158, formatDataList);
  if (sub_22121E75C(v159))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cell, v160, v155, 0, 1, 0, 0);
LABEL_108:
    if (!v132)
    {
      goto LABEL_118;
    }

    goto LABEL_109;
  }

  objc_msgSend_clearFormatOfType_(cell, v160, 257, v161);
  if (!v132)
  {
LABEL_118:
    if (!v136)
    {
      goto LABEL_128;
    }

    goto LABEL_119;
  }

LABEL_109:
  if (cache)
  {
    objc_msgSend_formatForKey_(cache, v145, v132, v146);
  }

  else
  {
    objc_msgSend_cellFormatForKey_(formatDataList, v145, v132, v146);
  }
  v162 = ;

  if (!v162)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v163, v132, @"FormatTable");
  }

  v166 = objc_msgSend_formatType(v162, v163, v164, v165, formatDataList);
  if (sub_22121E75C(v166))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cell, v167, v162, 0, 1, 0, 0);
    goto LABEL_118;
  }

  objc_msgSend_clearFormatOfType_(cell, v167, 261, v168);
  if (!v136)
  {
LABEL_128:
    if (!v140)
    {
      goto LABEL_138;
    }

    goto LABEL_129;
  }

LABEL_119:
  if (cache)
  {
    objc_msgSend_formatForKey_(cache, v145, v136, v146);
  }

  else
  {
    objc_msgSend_cellFormatForKey_(formatDataList, v145, v136, v146);
  }
  v169 = ;

  if (!v169)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v170, v136, @"FormatTable");
  }

  v173 = objc_msgSend_formatType(v169, v170, v171, v172, formatDataList);
  if (sub_22121E75C(v173))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cell, v174, v169, 0, 1, 0, 0);
    goto LABEL_128;
  }

  objc_msgSend_clearFormatOfType_(cell, v174, 268, v175);
  if (!v140)
  {
LABEL_138:
    if (!v147)
    {
      return;
    }

    goto LABEL_139;
  }

LABEL_129:
  if (cache)
  {
    objc_msgSend_formatForKey_(cache, v145, v140, v146);
  }

  else
  {
    objc_msgSend_cellFormatForKey_(formatDataList, v145, v140, v146);
  }
  v176 = ;

  if (!v176)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v177, v140, @"FormatTable");
  }

  v180 = objc_msgSend_formatType(v176, v177, v178, v179, formatDataList);
  if (sub_22121E75C(v180))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cell, v181, v176, 0, 1, 0, 0);
    goto LABEL_138;
  }

  objc_msgSend_clearFormatOfType_(cell, v181, 260, v182);
  if (!v147)
  {
    return;
  }

LABEL_139:
  if (cache)
  {
    objc_msgSend_formatForKey_(cache, v145, v147, v146);
  }

  else
  {
    objc_msgSend_cellFormatForKey_(formatDataList, v145, v147, v146);
  }
  v183 = ;

  if (!v183)
  {
    objc_msgSend_p_stashBadKey_forList_(self, v184, v147, @"FormatTable");
  }

  v187 = objc_msgSend_formatType(v183, v184, v185, v186, formatDataList);
  if (sub_22121E75C(v187))
  {
    objc_msgSend_setFormat_shouldSetExplFlags_isExplicit_makeCurrent_clearingID_(cell, v188, v183, 0, 1, 0, 0);
  }

  else
  {
    objc_msgSend_clearFormatOfType_(cell, v188, 1, v189);
  }
}

- (void)p_clearDataListEntriesInRange:(TSUCellRect)range
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2216A3A28;
  v3[3] = &unk_278468530;
  v3[4] = self;
  objc_msgSend_enumerateCellStoragesInRange_withBlock_(self, a2, *&range.origin, *&range.size, v3);
}

- (void)p_clearDataListEntriesForStorageRef:(TSTCellStorage *)ref cellID:(TSUCellCoord)d
{
  v7 = sub_221145078(ref, 8, ref, *&d);
  if (v7)
  {
    v11 = v7;
    stringDataList = self->_stringDataList;
    v4 = stringDataList;
    if (!stringDataList)
    {
      v4 = sub_22170A8F4(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v4, v8, v11, 1);
    if (!stringDataList)
    {
    }
  }

  v13 = sub_221145078(ref, 0x200, v9, v10);
  if (v13)
  {
    v17 = v13;
    formulaDataList = self->_formulaDataList;
    v4 = formulaDataList;
    if (!formulaDataList)
    {
      v4 = sub_22170A990(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v4, v14, v17, 1);
    if (!formulaDataList)
    {
    }
  }

  v19 = sub_221145078(ref, 0x400, v15, v16);
  if (v19)
  {
    v23 = v19;
    controlCellSpecDataList = self->_controlCellSpecDataList;
    v4 = controlCellSpecDataList;
    if (!controlCellSpecDataList)
    {
      v4 = sub_22170AA38(self, v20);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v4, v20, v23, 1);
    if (!controlCellSpecDataList)
    {
    }
  }

  v25 = sub_221145078(ref, 0x800, v21, v22);
  if (v25)
  {
    v29 = v25;
    formulaErrorDataList = self->_formulaErrorDataList;
    v4 = formulaErrorDataList;
    if (!formulaErrorDataList)
    {
      v4 = sub_22170A7F8(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v4, v26, v29, 1);
    if (!formulaErrorDataList)
    {
    }
  }

  v31 = sub_221145078(ref, 0x10, v27, v28);
  if (v31)
  {
    v35 = v31;
    richTextDataList = self->_richTextDataList;
    v4 = richTextDataList;
    if (!richTextDataList)
    {
      v4 = sub_22170A7B0(self, v32);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v4, v32, v35, 1);
    if (!richTextDataList)
    {
    }
  }

  v37 = sub_221145078(ref, 0x80000, v33, v34);
  if (v37)
  {
    v41 = v37;
    commentStorageDataList = self->_commentStorageDataList;
    v4 = commentStorageDataList;
    if (!commentStorageDataList)
    {
      v4 = sub_22170A8A0(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v4, v38, v41, 1);
    if (!commentStorageDataList)
    {
    }
  }

  v43 = sub_221145078(ref, 0x100000, v39, v40);
  if (v43)
  {
    v47 = v43;
    importWarningSetDataList = self->_importWarningSetDataList;
    v4 = importWarningSetDataList;
    if (!importWarningSetDataList)
    {
      v4 = sub_22170A9E4(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v4, v44, v47, 1);
    if (!importWarningSetDataList)
    {
    }
  }

  v49 = sub_221145078(ref, 0x20, v45, v46);
  if (v49)
  {
    v53 = v49;
    styleDataList = self->_styleDataList;
    v4 = styleDataList;
    if (!styleDataList)
    {
      v4 = sub_22170A75C(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v4, v50, v53, 1);
    if (!styleDataList)
    {
    }
  }

  v55 = sub_221145078(ref, 0x40, v51, v52);
  if (v55)
  {
    v59 = v55;
    v60 = self->_styleDataList;
    v4 = v60;
    if (!v60)
    {
      v4 = sub_22170A75C(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v4, v56, v59, 1);
    if (!v60)
    {
    }
  }

  v61 = sub_221145078(ref, 0x80, v57, v58);
  if (v61)
  {
    v65 = v61;
    conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
    v4 = conditionalStyleSetDataList;
    if (!conditionalStyleSetDataList)
    {
      v4 = sub_22170A84C(self);
    }

    objc_msgSend_dropReferenceForKey_callWillModify_(v4, v62, v65, 1);
    if (!conditionalStyleSetDataList)
    {
    }
  }

  v69 = sub_221143644(&ref->var0.var0, v62, v63, v64);
  for (i = 0; i != 6; ++i)
  {
    v71 = dword_2218038DC[i];
    if ((v71 & v69) != 0)
    {
      v73 = sub_221145078(ref, v71, v67, v68);
      formatDataList = self->_formatDataList;
      v75 = formatDataList;
      if (!formatDataList)
      {
        v75 = sub_22170A948(self, v72);
        v4 = v75;
      }

      objc_msgSend_dropReferenceForKey_callWillModify_(v75, v72, v73, 1);
      if (!formatDataList)
      {
      }
    }
  }
}

- (void)insertRows:(_NSRange)rows
{
  length = rows.length;
  location = rows.location;
  objc_msgSend_willModify(self, a2, rows.location, rows.length);
  objc_msgSend_insertRowsAtIndex_count_(self->_tileStorage, v6, location, length);
  rowHeaderStorage = self->_rowHeaderStorage;

  objc_msgSend_shiftIndexesForwardAtIndex_count_(rowHeaderStorage, v7, location, length);
}

- (void)insertColumns:(_NSRange)columns
{
  length = columns.length;
  location = columns.location;
  objc_msgSend_willModify(self, a2, columns.location, columns.length);
  objc_msgSend_insertColumnsAtIndex_count_(self->_tileStorage, v6, location, length);
  columnHeaderStorage = self->_columnHeaderStorage;

  objc_msgSend_shiftIndexesForwardAtIndex_count_(columnHeaderStorage, v7, location, length);
}

- (void)removeRows:(_NSRange)rows
{
  length = rows.length;
  location = rows.location;
  objc_msgSend_willModify(self, a2, rows.location, rows.length);
  if (location >= 0xF4240)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 382, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  if (location + length >= 0xF4241)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSUCellRect TSUCellRangeFromRowRange(NSRange, TSUColumnRowSize)", v7);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 383, 0, "out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  objc_msgSend_p_clearDataListEntriesInRange_(self, v6, location, (length << 32) | 0x3E8);
  v27 = objc_msgSend_columnCellCountsOfRowsInRange_(self->_tileStorage, v26, location, length);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_2216A41AC;
  v36[3] = &unk_278468558;
  v36[4] = self;
  objc_msgSend_enumerateKeysAndValuesUsingBlock_(v27, v28, v36, v29);
  objc_msgSend_removeRowsAtIndex_count_(self->_tileStorage, v30, location, length);
  objc_msgSend_removeIndexesAtIndex_count_(self->_rowHeaderStorage, v31, location, length);
  objc_msgSend_shiftIndexesBackAtIndex_count_(self->_rowHeaderStorage, v32, (location + length), length);
  self->_cellCountValid = 0;
  objc_msgSend_p_updateNumberOfPopulatedCells(self, v33, v34, v35);
}

- (void)removeColumns:(_NSRange)columns
{
  length = columns.length;
  location = columns.location;
  objc_msgSend_willModify(self, a2, columns.location, columns.length);
  if (location != 0x7FFFFFFFFFFFFFFFLL && location + length)
  {
    if (location >= 0x3E8)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", v7);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 373, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    }

    if (location + length >= 0x3EA)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "TSUCellRect TSUCellRangeFromColumnRange(NSRange, TSUColumnRowSize)", v7);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Binaries/iWorkImport/install/Symbols/BuiltProducts/TSUtility.framework/Headers/TSUColumnRowRect.h", v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 374, 0, "out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    }
  }

  objc_msgSend_p_clearDataListEntriesInRange_(self, v6, location << 32, length | 0xF424000000000);
  v27 = objc_msgSend_removeColumnsAtIndex_count_(self->_tileStorage, v26, location, length);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2216A43FC;
  v35[3] = &unk_278468558;
  v35[4] = self;
  objc_msgSend_enumerateKeysAndValuesUsingBlock_(v27, v28, v35, v29);
  objc_msgSend_removeIndexesAtIndex_count_(self->_columnHeaderStorage, v30, location, length);
  objc_msgSend_shiftIndexesBackAtIndex_count_(self->_columnHeaderStorage, v31, (location + length), length);
  self->_cellCountValid = 0;
  objc_msgSend_p_updateNumberOfPopulatedCells(self, v32, v33, v34);
}

- (void)moveRowIndexRange:(_NSRange)range toIndex:(unsigned int)index
{
  v4 = *&index;
  length = range.length;
  location = range.location;
  objc_msgSend_willModify(self, a2, range.location, range.length);
  objc_msgSend_moveIndexRange_toIndex_(self->_rowHeaderStorage, v8, location, length, v4);
  tileStorage = self->_tileStorage;

  objc_msgSend_moveRowIndexRange_toIndex_(tileStorage, v9, location, length, v4);
}

- (void)moveColumnIndexRange:(_NSRange)range toIndex:(unsigned __int16)index
{
  indexCopy = index;
  length = range.length;
  location = range.location;
  objc_msgSend_willModify(self, a2, range.location, range.length);
  objc_msgSend_moveIndexRange_toIndex_(self->_columnHeaderStorage, v8, location, length, indexCopy);
  tileStorage = self->_tileStorage;

  objc_msgSend_moveColumnIndexRange_toIndex_(tileStorage, v9, location, length, indexCopy);
}

- (void)swapRowAtIndex:(unsigned int)index withRowAtIndex:(unsigned int)atIndex
{
  v4 = *&atIndex;
  v5 = *&index;
  objc_msgSend_swapRowAtIndex_withRowAtIndex_(self->_tileStorage, a2, *&index, *&atIndex);
  rowHeaderStorage = self->_rowHeaderStorage;

  MEMORY[0x2821F9670](rowHeaderStorage, sel_swapIndex_withIndex_, v5, v4);
}

- (id)formulaSyntaxErrorAtCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3);
  if (v5 && (v8 = sub_221145078(v5, 0x800, v6, v7), v8))
  {
    v11 = v8;
    formulaErrorDataList = self->_formulaErrorDataList;
    v13 = formulaErrorDataList;
    if (!formulaErrorDataList)
    {
      v13 = sub_22170A7F8(self);
    }

    v14 = objc_msgSend_formulaErrorForKey_(v13, v9, v11, v10);
    if (!formulaErrorDataList)
    {
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)formulaAtCellID:(TSUCellCoord)d
{
  v4 = objc_msgSend_formulaSpecAtCellID_(self, a2, *&d, v3);
  v8 = objc_msgSend_formulaObject(v4, v5, v6, v7);

  return v8;
}

- (id)formulaSpecAtCellID:(TSUCellCoord)d
{
  v5 = objc_msgSend_cellStorageRefAtCellID_(self, a2, *&d, v3);
  if (v5 && (v8 = sub_221145078(v5, 0x200, v6, v7), v8))
  {
    v11 = v8;
    formulaDataList = self->_formulaDataList;
    v13 = formulaDataList;
    if (!formulaDataList)
    {
      v13 = sub_22170A990(self);
    }

    v14 = objc_msgSend_formulaForKey_(v13, v9, v11, v10);
    v18 = objc_msgSend_asFormulaSpec(v14, v15, v16, v17);

    if (!formulaDataList)
    {
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)formulaSpecForStorageRef:(TSTCellStorage *)ref
{
  if (ref && (v5 = sub_221145078(ref, 0x200, ref, v3), v5))
  {
    v8 = v5;
    formulaDataList = self->_formulaDataList;
    v10 = formulaDataList;
    if (!formulaDataList)
    {
      v10 = sub_22170A990(self);
    }

    v11 = objc_msgSend_formulaForKey_(v10, v6, v8, v7);
    v15 = objc_msgSend_asFormulaSpec(v11, v12, v13, v14);

    if (!formulaDataList)
    {
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (vector<TSUCellRect,)mergedRects
{
  p_mergedRects = &self->_mergedRects;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  result = sub_22116C9DC(retstr, self->_mergedRects.__begin_, self->_mergedRects.__end_, self->_mergedRects.__end_ - self->_mergedRects.__begin_);
  if (p_mergedRects->__end_ != p_mergedRects->__begin_)
  {
    result = objc_msgSend_willModifyForUpgrade(self, v6, v7, v8);
    p_mergedRects->__end_ = p_mergedRects->__begin_;
  }

  return result;
}

- (id)_loadDatalist:(id *)datalist forLazyReference:(id)reference completionBlock:(id)block
{
  referenceCopy = reference;
  blockCopy = block;
  v10 = *datalist;
  if (!*datalist)
  {
    v11 = referenceCopy;
    objc_sync_enter(v11);
    if (!*datalist)
    {
      if (v11)
      {
        v92 = 0;
        v14 = objc_msgSend_objectAndReturnError_(v11, v12, &v92, v13);
        v15 = v92;
        v19 = v15;
        if (v14 && !v15)
        {
          v20 = v14;
          if (blockCopy)
          {
            blockCopy[2](blockCopy, v20);
          }

          v21 = *datalist;
          *datalist = v20;

          goto LABEL_9;
        }

        if (!v15)
        {
          v77 = MEMORY[0x277D81150];
          v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTTableDataStore _loadDatalist:forLazyReference:completionBlock:]", v18);
          v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v80);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v82, v78, v81, 2299, 0, "invalid nil value for '%{public}s'", "error");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84, v85);
        }

        v32 = objc_msgSend_owner(self, v16, v17, v18);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v38 = objc_msgSend_domain(v19, v35, v36, v37);
        v42 = objc_msgSend_code(v19, v39, v40, v41);
        isRecoverable = objc_msgSend_tsp_isRecoverable(v19, v43, v44, v45);
        v90 = objc_msgSend_tsp_hintsDescription(v19, v47, v48, v49);
        v50 = &stru_2834BADA0;
        if (isRecoverable)
        {
          v50 = @"recoverable=YES, ";
        }

        TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Failed to load a lazy datalist in TSTTableDataStore: %@ in table: %@ with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", "[TSTTableDataStore _loadDatalist:forLazyReference:completionBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", 2300, self, v32, v34, v38, v42, v50, v90, v19);

        v51 = MEMORY[0x277D81150];
        v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "[TSTTableDataStore _loadDatalist:forLazyReference:completionBlock:]", v53);
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v56);
        v61 = objc_msgSend_owner(self, v58, v59, v60);
        v62 = objc_opt_class();
        v91 = NSStringFromClass(v62);
        v89 = objc_msgSend_domain(v19, v63, v64, v65);
        v88 = objc_msgSend_code(v19, v66, v67, v68);
        v87 = objc_msgSend_tsp_isRecoverable(v19, v69, v70, v71);
        v86 = objc_msgSend_tsp_hintsDescription(v19, v72, v73, v74);
        if (v87)
        {
          v76 = @"recoverable=YES, ";
        }

        else
        {
          v76 = &stru_2834BADA0;
        }

        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v75, v54, v57, 2300, 1, "Failed to load a lazy datalist in TSTTableDataStore: %@ in table: %@ with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", self, v61, v91, v89, v88, v76, v86, v19);

        TSUCrashBreakpoint();
      }

      else
      {
        TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Datalist reference is unexpectedly nil during load!", "[TSTTableDataStore _loadDatalist:forLazyReference:completionBlock:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", 2295);
        v24 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTTableDataStore _loadDatalist:forLazyReference:completionBlock:]", v26);
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v29);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v27, v30, 2295, 1, "Datalist reference is unexpectedly nil during load!");

        TSUCrashBreakpoint();
      }

      abort();
    }

LABEL_9:
    objc_sync_exit(v11);

    v10 = *datalist;
  }

  v22 = v10;

  return v10;
}

- (BOOL)repairStyleDatalistStylesheetIfNecessary
{
  v2 = sub_22170A75C(self);
  v6 = objc_msgSend_repairStyleDatalistStylesheetIfNecessary(v2, v3, v4, v5);

  return v6;
}

- (id)p_makeALazyDatalistOfType:(int)type isNewForBNC:(BOOL)c
{
  cCopy = c;
  v5 = *&type;
  v7 = [TSTTableDataList alloc];
  v11 = objc_msgSend_owner(self, v8, v9, v10);
  v15 = objc_msgSend_context(v11, v12, v13, v14);
  v17 = objc_msgSend_initWithType_context_(v7, v16, v5, v15);

  objc_msgSend_setIsNewForBraveNewCell_(v17, v18, cCopy, v19);
  v20 = objc_alloc(MEMORY[0x277D80868]);
  v23 = objc_msgSend_initWithObject_(v20, v21, v17, v22);
  objc_msgSend_setKeepObjectInMemory_(v23, v24, 1, v25);

  return v23;
}

- (id)i_formatForDataListKey:(unsigned int)key
{
  v4 = *&key;
  formatDataList = self->_formatDataList;
  if (!formatDataList)
  {
    formatDataList = sub_22170A948(self, a2);
  }

  return objc_msgSend_cellFormatForKey_(formatDataList, a2, v4, v3);
}

- (id)i_textStyleHandleForDataListKey:(unsigned int)key
{
  v3 = *&key;
  objc_opt_class();
  styleDataList = self->_styleDataList;
  v8 = styleDataList;
  if (!styleDataList)
  {
    v8 = sub_22170A75C(self);
  }

  v9 = objc_msgSend_styleForKey_(v8, v5, v3, v6);
  v10 = TSUCheckedDynamicCast();
  v13 = objc_msgSend_handleForTextStyle_(TSTTextStyleHandle, v11, v10, v12);

  if (!styleDataList)
  {
  }

  return v13;
}

- (id)i_cellStyleHandleForDataListKey:(unsigned int)key
{
  v3 = *&key;
  objc_opt_class();
  styleDataList = self->_styleDataList;
  v8 = styleDataList;
  if (!styleDataList)
  {
    v8 = sub_22170A75C(self);
  }

  v9 = objc_msgSend_styleForKey_(v8, v5, v3, v6);
  v10 = TSUCheckedDynamicCast();
  v13 = objc_msgSend_handleForCellStyle_(TSTCellStyleHandle, v11, v10, v12);

  if (!styleDataList)
  {
  }

  return v13;
}

- (id)i_stringForDataListKey:(unsigned int)key outShouldWrap:(BOOL *)wrap outIsShared:(BOOL *)shared
{
  v7 = *&key;
  stringDataList = self->_stringDataList;
  if (!stringDataList)
  {
    stringDataList = sub_22170A8F4(self);
  }

  return objc_msgSend_stringForKey_outShouldWrap_outIsShared_(stringDataList, a2, v7, wrap, shared);
}

- (void)resetAllColumnRowSizes
{
  v5 = objc_msgSend_populatedIndexes(self->_columnHeaderStorage, a2, v2, v3);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2216A54D4;
  v15[3] = &unk_27845E958;
  v15[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(v5, v6, v15, v7);

  v11 = objc_msgSend_populatedIndexes(self->_rowHeaderStorage, v8, v9, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2216A54F0;
  v14[3] = &unk_27845E958;
  v14[4] = self;
  objc_msgSend_enumerateIndexesUsingBlock_(v11, v12, v14, v13);
}

- (void)resetAlmostEverything
{
  objc_msgSend_willModify(self, a2, v2, v3);
  objc_msgSend_willModify(self->_tileStorage, v5, v6, v7);
  v8 = sub_22170A8F4(self);
  objc_msgSend_willModify(v8, v9, v10, v11);

  v12 = sub_22170A75C(self);
  objc_msgSend_willModify(v12, v13, v14, v15);

  v16 = sub_22170A84C(self);
  objc_msgSend_willModify(v16, v17, v18, v19);

  v21 = sub_22170A948(self, v20);
  objc_msgSend_willModify(v21, v22, v23, v24);

  v25 = sub_22170A990(self);
  objc_msgSend_willModify(v25, v26, v27, v28);

  v30 = sub_22170AA38(self, v29);
  objc_msgSend_willModify(v30, v31, v32, v33);

  v34 = sub_22170A7F8(self);
  objc_msgSend_willModify(v34, v35, v36, v37);

  v39 = sub_22170A7B0(self, v38);
  objc_msgSend_willModify(v39, v40, v41, v42);

  v43 = sub_22170A8A0(self);
  objc_msgSend_willModify(v43, v44, v45, v46);

  v47 = sub_22170A9E4(self);
  objc_msgSend_willModify(v47, v48, v49, v50);

  v54 = objc_msgSend_multipleChoiceListFormatDataList(self, v51, v52, v53);
  objc_msgSend_willModify(v54, v55, v56, v57);

  v58 = sub_22170AA80(self);
  objc_msgSend_willModify(v58, v59, v60, v61);

  self->_cellCount = 0;
  self->_cellCountValid = 1;
  shouldUseWideRows = objc_msgSend_shouldUseWideRows(self->_tileStorage, v62, v63, v64);
  v66 = [TSTTableTileStorage alloc];
  v70 = objc_msgSend_owner(self, v67, v68, v69);
  v73 = objc_msgSend_initWithOwner_(v66, v71, v70, v72);
  tileStorage = self->_tileStorage;
  self->_tileStorage = v73;

  objc_msgSend_setShouldUseWideRows_(self->_tileStorage, v75, shouldUseWideRows, v76);
  styleDataList = self->_styleDataList;
  self->_styleDataList = 0;

  conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
  self->_conditionalStyleSetDataList = 0;

  stringDataList = self->_stringDataList;
  self->_stringDataList = 0;

  formulaDataList = self->_formulaDataList;
  self->_formulaDataList = 0;

  controlCellSpecDataList = self->_controlCellSpecDataList;
  self->_controlCellSpecDataList = 0;

  formulaErrorDataList = self->_formulaErrorDataList;
  self->_formulaErrorDataList = 0;

  richTextDataList = self->_richTextDataList;
  self->_richTextDataList = 0;

  formatDataList = self->_formatDataList;
  self->_formatDataList = 0;

  commentStorageDataList = self->_commentStorageDataList;
  self->_commentStorageDataList = 0;

  importWarningSetDataList = self->_importWarningSetDataList;
  self->_importWarningSetDataList = 0;

  preBNCFormatDataList = self->_preBNCFormatDataList;
  self->_preBNCFormatDataList = 0;

  v90 = objc_msgSend_p_makeALazyDatalistOfType_(self, v88, 1, v89);
  stringTableReference = self->_stringTableReference;
  self->_stringTableReference = v90;

  v94 = objc_msgSend_p_makeALazyDatalistOfType_(self, v92, 4, v93);
  styleTableReference = self->_styleTableReference;
  self->_styleTableReference = v94;

  v98 = objc_msgSend_p_makeALazyDatalistOfType_(self, v96, 9, v97);
  conditionalStyleSetTableReference = self->_conditionalStyleSetTableReference;
  self->_conditionalStyleSetTableReference = v98;

  v101 = objc_msgSend_p_makeALazyDatalistOfType_isNewForBNC_(self, v100, 2, 1);
  formatTableReference = self->_formatTableReference;
  self->_formatTableReference = v101;

  v105 = objc_msgSend_p_makeALazyDatalistOfType_(self, v103, 3, v104);
  formulaTableReference = self->_formulaTableReference;
  self->_formulaTableReference = v105;

  v108 = objc_msgSend_p_makeALazyDatalistOfType_isNewForBNC_(self, v107, 12, 1);
  controlCellSpecTableReference = self->_controlCellSpecTableReference;
  self->_controlCellSpecTableReference = v108;

  v112 = objc_msgSend_p_makeALazyDatalistOfType_(self, v110, 5, v111);
  formulaErrorTableReference = self->_formulaErrorTableReference;
  self->_formulaErrorTableReference = v112;

  v116 = objc_msgSend_p_makeALazyDatalistOfType_(self, v114, 8, v115);
  richTextTableReference = self->_richTextTableReference;
  self->_richTextTableReference = v116;

  v120 = objc_msgSend_p_makeALazyDatalistOfType_(self, v118, 10, v119);
  commentStorageTableReference = self->_commentStorageTableReference;
  self->_commentStorageTableReference = v120;

  v124 = objc_msgSend_p_makeALazyDatalistOfType_(self, v122, 11, v123);
  importWarningSetTableReference = self->_importWarningSetTableReference;
  self->_importWarningSetTableReference = v124;

  v126 = [TSTTableDataList alloc];
  v130 = objc_msgSend_owner(self, v127, v128, v129);
  v134 = objc_msgSend_context(v130, v131, v132, v133);
  v136 = objc_msgSend_initWithType_context_(v126, v135, 7, v134);
  multipleChoiceListFormatDataList = self->_multipleChoiceListFormatDataList;
  self->_multipleChoiceListFormatDataList = v136;

  v140 = objc_msgSend_p_makeALazyDatalistOfType_(self, v138, 2, v139);
  preBNCFormatTableReference = self->_preBNCFormatTableReference;
  self->_preBNCFormatTableReference = v140;

  objc_msgSend_resetAllCellCounts(self->_rowHeaderStorage, v142, v143, v144);
  columnHeaderStorage = self->_columnHeaderStorage;

  objc_msgSend_resetAllCellCounts(columnHeaderStorage, v145, v146, v147);
}

- (id)addPasteboardCustomFormatsToDocumentAndTableReturningBadIDs
{
  if (objc_msgSend_mightHaveCustomFormats(self, a2, v2, v3))
  {
    v8 = objc_msgSend_documentRoot(self, v5, v6, v7);
    v12 = objc_msgSend_customFormatList(v8, v9, v10, v11);

    v17 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v13, v14, v15);
    formatDataList = self->_formatDataList;
    v19 = formatDataList;
    if (!formatDataList)
    {
      v19 = sub_22170A948(self, v16);
    }

    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = sub_2216A5BCC;
    v31 = &unk_2784685C8;
    v20 = v12;
    v32 = v20;
    v21 = v17;
    v33 = v21;
    objc_msgSend_replaceFormatsUsingBlock_(v19, v22, &v28, v23);
    if (!formatDataList)
    {
    }

    if (!objc_msgSend_count(v21, v24, v25, v26, v28, v29, v30, v31))
    {

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)cellMapForRepairingPasteboardCustomFormats:(id)formats
{
  formatsCopy = formats;
  if (objc_msgSend_mightHaveCustomFormats(self, v5, v6, v7))
  {
    v11 = objc_msgSend_owner(self, v8, v9, v10);
    v15 = objc_msgSend_context(v11, v12, v13, v14);
    v18 = objc_msgSend_cellMapWithContext_(TSTCellMap, v16, v15, v17);

    v19 = [TSTCell alloc];
    v23 = objc_msgSend_documentRoot(self, v20, v21, v22);
    v27 = objc_msgSend_documentLocale(v23, v24, v25, v26);
    v30 = objc_msgSend_initWithLocale_(v19, v28, v27, v29);

    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = sub_2216A6048;
    v41 = &unk_2784685F0;
    v31 = v30;
    v42 = v31;
    selfCopy = self;
    v44 = formatsCopy;
    v32 = v18;
    v45 = v32;
    objc_msgSend_enumerateCellStoragesInRange_withBlock_(self, v33, 0, 0xF4240000003E8, &v38);
    if (!objc_msgSend_count(v32, v34, v35, v36, v38, v39, v40, v41))
    {

      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (BOOL)mightHaveCustomFormats
{
  formatDataList = self->_formatDataList;
  v5 = formatDataList;
  if (!formatDataList)
  {
    v5 = sub_22170A948(self, a2);
  }

  HaveCustomFormats = objc_msgSend_mightHaveCustomFormats(v5, a2, v2, v3);
  if (!formatDataList)
  {
  }

  return HaveCustomFormats;
}

- (id)mapReassigningPasteboardCustomFormatKeys:(id)keys
{
  keysCopy = keys;
  if (objc_msgSend_mightHaveCustomFormats(self, v5, v6, v7))
  {
    v9 = sub_22170A948(self, v8);
    v12 = objc_msgSend_reassignCustomFormatUIDForPaste_(v9, v10, keysCopy, v11);

    keysCopy = v12;
  }

  return keysCopy;
}

- (void)replaceFormulasUsingBlock:(id)block
{
  blockCopy = block;
  formulaDataList = self->_formulaDataList;
  v8 = formulaDataList;
  v9 = blockCopy;
  if (!formulaDataList)
  {
    v8 = sub_22170A990(self);
    blockCopy = v9;
  }

  objc_msgSend_replaceFormulasUsingBlock_(v8, v4, blockCopy, v6);
  if (!formulaDataList)
  {
  }
}

- (void)replaceConditionalStyleSetsUsingBlock:(id)block
{
  blockCopy = block;
  conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
  v8 = conditionalStyleSetDataList;
  v9 = blockCopy;
  if (!conditionalStyleSetDataList)
  {
    v8 = sub_22170A84C(self);
    blockCopy = v9;
  }

  objc_msgSend_replaceConditionalStyleSetsUsingBlock_(v8, v4, blockCopy, v6);
  if (!conditionalStyleSetDataList)
  {
  }
}

- (void)replaceCommentStoragesUsingBlock:(id)block
{
  blockCopy = block;
  v4 = sub_22170A8A0(self);
  objc_msgSend_replaceCommentStoragesUsingBlock_(v4, v5, blockCopy, v6);
}

- (TSTTableDataStore)initWithOwner:(id)owner
{
  ownerCopy = owner;
  v77.receiver = self;
  v77.super_class = TSTTableDataStore;
  v5 = [(TSTTableDataStore *)&v77 initWithOwner:ownerCopy];
  v6 = v5;
  if (v5)
  {
    v5->_storageVersionPreBNC = 4;
    v5->_cellCount = 0;
    v5->_cellCountValid = 1;
    v7 = [TSTTableHeaderStorage alloc];
    v10 = objc_msgSend_initWithOwner_(v7, v8, ownerCopy, v9);
    rowHeaderStorage = v6->_rowHeaderStorage;
    v6->_rowHeaderStorage = v10;

    v12 = [TSTTableHeaderStorage alloc];
    v15 = objc_msgSend_initWithOwner_(v12, v13, ownerCopy, v14);
    columnHeaderStorage = v6->_columnHeaderStorage;
    v6->_columnHeaderStorage = v15;

    v17 = [TSTTableTileStorage alloc];
    v20 = objc_msgSend_initWithOwner_(v17, v18, ownerCopy, v19);
    tileStorage = v6->_tileStorage;
    v6->_tileStorage = v20;

    v24 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v22, 1, v23);
    stringTableReference = v6->_stringTableReference;
    v6->_stringTableReference = v24;

    v28 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v26, 4, v27);
    styleTableReference = v6->_styleTableReference;
    v6->_styleTableReference = v28;

    v32 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v30, 9, v31);
    conditionalStyleSetTableReference = v6->_conditionalStyleSetTableReference;
    v6->_conditionalStyleSetTableReference = v32;

    v35 = objc_msgSend_p_makeALazyDatalistOfType_isNewForBNC_(v6, v34, 2, 1);
    formatTableReference = v6->_formatTableReference;
    v6->_formatTableReference = v35;

    v39 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v37, 3, v38);
    formulaTableReference = v6->_formulaTableReference;
    v6->_formulaTableReference = v39;

    v42 = objc_msgSend_p_makeALazyDatalistOfType_isNewForBNC_(v6, v41, 12, 1);
    controlCellSpecTableReference = v6->_controlCellSpecTableReference;
    v6->_controlCellSpecTableReference = v42;

    v46 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v44, 5, v45);
    formulaErrorTableReference = v6->_formulaErrorTableReference;
    v6->_formulaErrorTableReference = v46;

    v50 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v48, 8, v49);
    richTextTableReference = v6->_richTextTableReference;
    v6->_richTextTableReference = v50;

    v54 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v52, 10, v53);
    commentStorageTableReference = v6->_commentStorageTableReference;
    v6->_commentStorageTableReference = v54;

    v58 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v56, 11, v57);
    importWarningSetTableReference = v6->_importWarningSetTableReference;
    v6->_importWarningSetTableReference = v58;

    v60 = [TSTTableDataList alloc];
    v64 = objc_msgSend_owner(v6, v61, v62, v63);
    v68 = objc_msgSend_context(v64, v65, v66, v67);
    v70 = objc_msgSend_initWithType_context_(v60, v69, 7, v68);
    multipleChoiceListFormatDataList = v6->_multipleChoiceListFormatDataList;
    v6->_multipleChoiceListFormatDataList = v70;

    v74 = objc_msgSend_p_makeALazyDatalistOfType_(v6, v72, 2, v73);
    preBNCFormatTableReference = v6->_preBNCFormatTableReference;
    v6->_preBNCFormatTableReference = v74;
  }

  return v6;
}

- (TSTTableDataStore)initWithArchive:(const void *)archive unarchiver:(id)unarchiver owner:(id)owner
{
  unarchiverCopy = unarchiver;
  ownerCopy = owner;
  v218.receiver = self;
  v218.super_class = TSTTableDataStore;
  v13 = [(TSTTableDataStore *)&v218 initWithOwner:ownerCopy];
  if (v13)
  {
    v14 = objc_msgSend_fileFormatVersion(unarchiverCopy, v10, v11, v12);
    v15 = *(archive + 4);
    v215[0] = MEMORY[0x277D85DD0];
    v215[1] = 3221225472;
    v215[2] = sub_2216A754C;
    v215[3] = &unk_278468618;
    v16 = v13;
    v216 = v16;
    v17 = ownerCopy;
    v217 = v17;
    v18 = unarchiverCopy;
    v20 = objc_opt_class();
    if (v15)
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v18, v19, v15, v20, 0, v215);
    }

    else
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v18, v19, MEMORY[0x277D80A18], v20, 0, v215);
    }

    v21 = [TSTTableHeaderStorage alloc];
    if (*(archive + 3))
    {
      v23 = objc_msgSend_initFromArchive_unarchiver_owner_(v21, v22, *(archive + 3), v18, v17);
    }

    else
    {
      v23 = objc_msgSend_initFromArchive_unarchiver_owner_(v21, v22, &TST::_HeaderStorage_default_instance_, v18, v17);
    }

    rowHeaderStorage = v16->_rowHeaderStorage;
    v16->_rowHeaderStorage = v23;

    if ((*(archive + 16) & 4) != 0)
    {
      v29 = [TSTTableTileStorage alloc];
      if (*(archive + 5))
      {
        v31 = *(archive + 5);
      }

      else
      {
        v31 = &TST::_TileStorage_default_instance_;
      }

      if (*(archive + 9))
      {
        TileID_unarchiver_owner = objc_msgSend_initWithStorageArchive_treeArchive_nextTileID_unarchiver_owner_(v29, v30, v31, *(archive + 9), *(archive + 44), v18, v17);
      }

      else
      {
        TileID_unarchiver_owner = objc_msgSend_initWithStorageArchive_treeArchive_nextTileID_unarchiver_owner_(v29, v30, v31, &TST::_TableRBTree_default_instance_, *(archive + 44), v18, v17);
      }
    }

    else
    {
      v25 = [TSTTableTileStorage alloc];
      TileID_unarchiver_owner = objc_msgSend_initWithOwner_(v25, v26, v17, v27);
    }

    v179 = v13;
    v180 = v14;
    tileStorage = v16->_tileStorage;
    v16->_tileStorage = TileID_unarchiver_owner;

    v181 = objc_msgSend_archivingCompatibilityVersion(v16->_tileStorage, v33, v34, v35);
    v36 = *(archive + 6);
    v213[0] = MEMORY[0x277D85DD0];
    v213[1] = 3221225472;
    v213[2] = sub_2216A75D4;
    v213[3] = &unk_278468640;
    v37 = v16;
    v214 = v37;
    v38 = v18;
    v40 = objc_opt_class();
    if (v36)
    {
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v38, v39, v36, v40, 0, v213);
    }

    else
    {
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v38, v39, MEMORY[0x277D80A18], v40, 0, v213);
    }

    if ((*(archive + 16) & 0x10) != 0)
    {
      v48 = *(archive + 7);
      v211[0] = MEMORY[0x277D85DD0];
      v211[1] = 3221225472;
      v211[2] = sub_2216A7638;
      v211[3] = &unk_278468640;
      v212 = v37;
      v49 = v38;
      v50 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v49, v51, v48, v50, 0, v211);

      styleTableReference = v212;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(v17, v41, v42, v43);
      v46 = objc_msgSend_p_makeALazyDatalistOfType_(v37, v44, 4, v45);
      styleTableReference = v37->_styleTableReference;
      v37->_styleTableReference = v46;
    }

    if ((*(archive + 18) & 4) != 0)
    {
      v55 = *(archive + 21);
      v209[0] = MEMORY[0x277D85DD0];
      v209[1] = 3221225472;
      v209[2] = sub_2216A769C;
      v209[3] = &unk_278468640;
      v210 = v37;
      v56 = v38;
      v57 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v56, v58, v55, v57, 0, v209);

      formatTableReference = v210;
    }

    else
    {
      v37->_missingPostBNCDatalists = 1;
      v53 = objc_msgSend_p_makeALazyDatalistOfType_isNewForBNC_(v37, v52, 2, 1);
      formatTableReference = v37->_formatTableReference;
      v37->_formatTableReference = v53;
    }

    v59 = *(archive + 8);
    v207[0] = MEMORY[0x277D85DD0];
    v207[1] = 3221225472;
    v207[2] = sub_2216A7700;
    v207[3] = &unk_278468640;
    v60 = v37;
    v208 = v60;
    v61 = v38;
    v63 = objc_opt_class();
    if (v59)
    {
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v61, v62, v59, v63, 0, v207);
    }

    else
    {
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v61, v62, MEMORY[0x277D80A18], v63, 0, v207);
    }

    if ((*(archive + 18) & 2) != 0)
    {
      v67 = *(archive + 20);
      v205[0] = MEMORY[0x277D85DD0];
      v205[1] = 3221225472;
      v205[2] = sub_2216A7764;
      v205[3] = &unk_278468640;
      v206 = v60;
      v68 = v61;
      v69 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v68, v70, v67, v69, 0, v205);

      controlCellSpecTableReference = v206;
    }

    else
    {
      v60->_missingPostBNCDatalists = 1;
      v65 = objc_msgSend_p_makeALazyDatalistOfType_isNewForBNC_(v60, v64, 12, 1);
      controlCellSpecTableReference = v60->_controlCellSpecTableReference;
      v60->_controlCellSpecTableReference = v65;
    }

    v74 = *(archive + 4);
    if ((v74 & 0x400) != 0)
    {
      v75 = *(archive + 13);
      v203[0] = MEMORY[0x277D85DD0];
      v203[1] = 3221225472;
      v203[2] = sub_2216A77C8;
      v203[3] = &unk_278468668;
      v204 = v60;
      v76 = v61;
      v77 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v76, v78, v75, v77, 0, v203);

      v74 = *(archive + 4);
    }

    if ((v74 & 0x200) != 0)
    {
      v83 = *(archive + 12);
      v201[0] = MEMORY[0x277D85DD0];
      v201[1] = 3221225472;
      v201[2] = sub_2216A7854;
      v201[3] = &unk_278468640;
      v202 = v60;
      v84 = v61;
      v85 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v84, v86, v83, v85, 0, v201);

      formulaErrorTableReference = v202;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(v17, v71, v72, v73);
      v81 = objc_msgSend_p_makeALazyDatalistOfType_(v60, v79, 5, v80);
      formulaErrorTableReference = v60->_formulaErrorTableReference;
      v60->_formulaErrorTableReference = v81;
    }

    if ((*(archive + 17) & 0x20) != 0)
    {
      v94 = *(archive + 16);
      v199[0] = MEMORY[0x277D85DD0];
      v199[1] = 3221225472;
      v199[2] = sub_2216A78B8;
      v199[3] = &unk_278468640;
      v200 = v60;
      v95 = v61;
      v96 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v95, v97, v94, v96, 0, v199);

      richTextTableReference = v200;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(v17, v87, v88, v89);
      v92 = objc_msgSend_p_makeALazyDatalistOfType_(v60, v90, 8, v91);
      richTextTableReference = v60->_richTextTableReference;
      v60->_richTextTableReference = v92;
    }

    if ((*(archive + 17) & 0x80) != 0)
    {
      v105 = *(archive + 18);
      v197[0] = MEMORY[0x277D85DD0];
      v197[1] = 3221225472;
      v197[2] = sub_2216A791C;
      v197[3] = &unk_278468640;
      v198 = v60;
      v106 = v61;
      v107 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v106, v108, v105, v107, 0, v197);

      commentStorageTableReference = v198;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(v17, v98, v99, v100);
      v103 = objc_msgSend_p_makeALazyDatalistOfType_(v60, v101, 10, v102);
      commentStorageTableReference = v60->_commentStorageTableReference;
      v60->_commentStorageTableReference = v103;
    }

    if (*(archive + 18))
    {
      v116 = *(archive + 19);
      v195[0] = MEMORY[0x277D85DD0];
      v195[1] = 3221225472;
      v195[2] = sub_2216A7980;
      v195[3] = &unk_278468640;
      v196 = v60;
      v117 = v61;
      v118 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v117, v119, v116, v118, 0, v195);

      importWarningSetTableReference = v196;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(v17, v109, v110, v111);
      v114 = objc_msgSend_p_makeALazyDatalistOfType_(v60, v112, 11, v113);
      importWarningSetTableReference = v60->_importWarningSetTableReference;
      v60->_importWarningSetTableReference = v114;
    }

    if ((*(archive + 17) & 0x40) != 0)
    {
      v127 = *(archive + 17);
      v193[0] = MEMORY[0x277D85DD0];
      v193[1] = 3221225472;
      v193[2] = sub_2216A79E4;
      v193[3] = &unk_278468640;
      v194 = v60;
      v128 = v61;
      v129 = objc_opt_class();
      objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v128, v130, v127, v129, 0, v193);

      conditionalStyleSetTableReference = v194;
    }

    else
    {
      objc_msgSend_willModifyForUpgrade(v17, v120, v121, v122);
      v125 = objc_msgSend_p_makeALazyDatalistOfType_(v60, v123, 9, v124);
      conditionalStyleSetTableReference = v60->_conditionalStyleSetTableReference;
      v60->_conditionalStyleSetTableReference = v125;
    }

    if (v181 <= 0xA000000000002)
    {
      v183 = unarchiverCopy;
      v139 = *(archive + 11);
      v191[0] = MEMORY[0x277D85DD0];
      v191[1] = 3221225472;
      v191[2] = sub_2216A7A48;
      v191[3] = &unk_278468640;
      v140 = v60;
      v192 = v140;
      v141 = v61;
      v143 = objc_opt_class();
      if (v139)
      {
        objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v141, v142, v139, v143, 0, v191);
      }

      else
      {
        objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v141, v142, MEMORY[0x277D80A18], v143, 0, v191);
      }

      if ((*(archive + 17) & 0x10) != 0)
      {
        v171 = *(archive + 15);
        v189[0] = MEMORY[0x277D85DD0];
        v189[1] = 3221225472;
        v189[2] = sub_2216A7A5C;
        v189[3] = &unk_2784685A0;
        v190 = v140;
        v172 = v141;
        unarchiverCopy = v183;
        v173 = objc_opt_class();
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v172, v174, v171, v173, 0, v189);

        v151 = v190;
      }

      else
      {
        unarchiverCopy = v183;
        objc_msgSend_willModifyForUpgrade(v17, v144, v145, v146);
        v147 = [TSTTableDataList alloc];
        v151 = objc_msgSend_context(v17, v148, v149, v150);
        v153 = objc_msgSend_initWithType_context_(v147, v152, 7, v151);
        multipleChoiceListFormatDataList = v140->_multipleChoiceListFormatDataList;
        v140->_multipleChoiceListFormatDataList = v153;
      }

      v138 = v192;
    }

    else if ((*(archive + 17) & 0x10) != 0)
    {
      objc_msgSend_willModifyForUpgrade(v17, v131, v132, v133);
      preBNCFormatDataList = v60->_preBNCFormatDataList;
      v60->_preBNCFormatDataList = 0;

      v158 = objc_msgSend_p_makeALazyDatalistOfType_(v60, v156, 2, v157);
      preBNCFormatTableReference = v60->_preBNCFormatTableReference;
      v60->_preBNCFormatTableReference = v158;

      v160 = [TSTTableDataList alloc];
      v138 = objc_msgSend_owner(v60, v161, v162, v163);
      v167 = objc_msgSend_context(v138, v164, v165, v166);
      v169 = objc_msgSend_initWithType_context_(v160, v168, 7, v167);
      v170 = v60->_multipleChoiceListFormatDataList;
      v60->_multipleChoiceListFormatDataList = v169;
    }

    else
    {
      v182 = unarchiverCopy;
      v134 = *(archive + 11);
      v187[0] = MEMORY[0x277D85DD0];
      v187[1] = 3221225472;
      v187[2] = sub_2216A7A70;
      v187[3] = &unk_278468640;
      v188 = v60;
      v135 = v61;
      v137 = objc_opt_class();
      if (v134)
      {
        objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v135, v136, v134, v137, 0, v187);
      }

      else
      {
        objc_msgSend_readLazyReferenceMessage_class_protocol_completion_(v135, v136, MEMORY[0x277D80A18], v137, 0, v187);
      }

      v138 = v188;
      unarchiverCopy = v182;
    }

    v60->_cellCount = 0;
    v60->_cellCountValid = 0;
    if ((*(archive + 4) & 0x200000) != 0)
    {
      v175 = *(archive + 184);
    }

    else
    {
      v175 = 4;
    }

    v60->_storageVersionPreBNC = v175;
    v184[0] = MEMORY[0x277D85DD0];
    v184[1] = 3221225472;
    v184[2] = sub_2216A7A84;
    v184[3] = &unk_278461DA8;
    v186 = v180;
    v185 = v60;
    objc_msgSend_addFinalizeHandler_(v61, v176, v184, v177);

    v13 = v179;
  }

  return v13;
}

- (BOOL)_needToUpgradeCellStorage
{
  if (self->_missingPostBNCDatalists)
  {
    return 1;
  }

  else
  {
    return (MEMORY[0x2821F9670])(self->_tileStorage, sel_needToUpgradeCellStorage);
  }
}

- (void)upgradeDataStoreCellStorageIfNeededWithTableUID:(const TSKUIDStruct *)d conditionalStyleOwner:(id)owner fileFormatVersion:(unint64_t)version
{
  ownerCopy = owner;
  if (objc_msgSend__needToUpgradeCellStorage(self, v9, v10, v11))
  {
    objc_msgSend_willModifyForUpgrade(self, v12, v13, v14);
    v18 = objc_msgSend_documentRoot(self, v15, v16, v17);
    v22 = objc_msgSend_calculationEngine(v18, v19, v20, v21);

    v26 = objc_msgSend_upgradingFormulasMinion(v22, v23, v24, v25);
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v22;
    }

    v29 = v28;

    v36 = objc_msgSend_upgradeRepairedTiles(self->_tileStorage, v30, v31, v32);
    if (v36)
    {
      objc_msgSend_removeAllFormulasFromOwner_(v29, v33, d, v35);
      v47[0] = objc_msgSend_ownerUID(ownerCopy, v37, v38, v39);
      v47[1] = v40;
      objc_msgSend_removeAllFormulasFromOwner_(v29, v40, v47, v41);
    }

    v42 = objc_msgSend_p_cellMapForUpgradingToBraveNewCell(self, v33, v34, v35);
    objc_msgSend_resetAlmostEverything(self, v43, v44, v45);
    objc_msgSend_setCellMap_tableUID_calculationEngine_conditionalStyleOwner_ignoreFormulas_skipDirtyingNonFormulaCells_doRichTextDOLC_(self, v46, v42, d, v29, ownerCopy, v36 ^ 1u, 1, 1);
    self->_storageVersionPreBNC = 4;
    self->_missingPostBNCDatalists = 0;
  }

  else if (version <= 0x3000200000009)
  {
    objc_msgSend_purgePreBNCData(self->_tileStorage, v12, v13, v14);
  }
}

- (id)p_cellMapForUpgradingToBraveNewCell
{
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_2216A140C;
  v41[4] = sub_2216A141C;
  v42 = objc_alloc_init(MEMORY[0x277D81210]);
  v3 = sub_22170AA80(self);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_2216A7F70;
  v40[3] = &unk_278468690;
  v40[4] = self;
  v40[5] = v41;
  objc_msgSend_enumerateFormatsUsingBlock_(v3, v4, v40, v5);

  v6 = [TSTCell_PreBNC alloc];
  v10 = objc_msgSend_documentRoot(self, v7, v8, v9);
  v14 = objc_msgSend_documentLocale(v10, v11, v12, v13);
  v17 = objc_msgSend_initWithLocale_(v6, v15, v14, v16);

  v21 = objc_msgSend_owner(self, v18, v19, v20);
  v25 = objc_msgSend_context(v21, v22, v23, v24);
  v28 = objc_msgSend_cellMapWithContext_(TSTCellMap, v26, v25, v27);

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_2216A8064;
  v35[3] = &unk_2784686B8;
  v29 = v17;
  v36 = v29;
  selfCopy = self;
  v39 = v41;
  v30 = v28;
  v38 = v30;
  objc_msgSend_p_enumerateCellStoragesRowByRowToMaxID_getPreBNC_withBlock_(self, v31, 0x3E7000F423FLL, 1, v35);
  v32 = v38;
  v33 = v30;

  _Block_object_dispose(v41, 8);

  return v33;
}

- (void)embiggenTableForUpgrade
{
  objc_msgSend_widenTilesForUpgrade(self->_tileStorage, a2, v2, v3);

  objc_msgSend_purgePreBNCDatalists(self, v5, v6, v7);
}

- (void)purgePreBNCDatalists
{
  preBNCFormatDataList = self->_preBNCFormatDataList;
  self->_preBNCFormatDataList = 0;

  v6 = objc_msgSend_p_makeALazyDatalistOfType_(self, v4, 2, v5);
  preBNCFormatTableReference = self->_preBNCFormatTableReference;
  self->_preBNCFormatTableReference = v6;

  v8 = [TSTTableDataList alloc];
  v19 = objc_msgSend_owner(self, v9, v10, v11);
  v15 = objc_msgSend_context(v19, v12, v13, v14);
  v17 = objc_msgSend_initWithType_context_(v8, v16, 7, v15);
  multipleChoiceListFormatDataList = self->_multipleChoiceListFormatDataList;
  self->_multipleChoiceListFormatDataList = v17;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver isInTheDocument:(BOOL)document
{
  archiverCopy = archiver;
  TileID = objc_msgSend_nextTileID(self->_tileStorage, v7, v8, v9);
  v12 = *(archive + 4);
  *(archive + 4) = v12 | 0x80000;
  *(archive + 44) = TileID;
  tileStorage = self->_tileStorage;
  v14 = v12 | 0x80004;
  *(archive + 4) = v14;
  v15 = *(archive + 5);
  if (!v15)
  {
    v16 = *(archive + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TST::TileStorage>(v16);
    *(archive + 5) = v15;
    v14 = *(archive + 4);
  }

  *(archive + 4) = v14 | 0x40;
  v17 = *(archive + 9);
  if (!v17)
  {
    v18 = *(archive + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = google::protobuf::Arena::CreateMaybeMessage<TST::TableRBTree>(v18);
    *(archive + 9) = v17;
  }

  objc_msgSend_saveToStorageArchive_treeArchive_archiver_(tileStorage, v11, v15, v17, archiverCopy);
  v23 = objc_msgSend_firstBucketForArchiving(self->_columnHeaderStorage, v19, v20, v21);
  *(archive + 4) |= 2u;
  v24 = *(archive + 4);
  if (!v24)
  {
    v25 = *(archive + 1);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = MEMORY[0x223DA0390](v25);
    *(archive + 4) = v24;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v22, v23, v24);

  rowHeaderStorage = self->_rowHeaderStorage;
  *(archive + 4) |= 1u;
  v28 = *(archive + 3);
  if (!v28)
  {
    v29 = *(archive + 1);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderStorage>(v29);
    *(archive + 3) = v28;
  }

  objc_msgSend_encodeToArchive_archiver_(rowHeaderStorage, v26, v28, archiverCopy);
  stringTableReference = self->_stringTableReference;
  *(archive + 4) |= 8u;
  v32 = *(archive + 6);
  if (!v32)
  {
    v33 = *(archive + 1);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = MEMORY[0x223DA0390](v33);
    *(archive + 6) = v32;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v30, stringTableReference, v32);
  styleTableReference = self->_styleTableReference;
  *(archive + 4) |= 0x10u;
  v36 = *(archive + 7);
  if (!v36)
  {
    v37 = *(archive + 1);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = MEMORY[0x223DA0390](v37);
    *(archive + 7) = v36;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v34, styleTableReference, v36);
  formulaTableReference = self->_formulaTableReference;
  *(archive + 4) |= 0x20u;
  v40 = *(archive + 8);
  if (!v40)
  {
    v41 = *(archive + 1);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x223DA0390](v41);
    *(archive + 8) = v40;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v38, formulaTableReference, v40);
  formulaErrorTableReference = self->_formulaErrorTableReference;
  *(archive + 4) |= 0x200u;
  v44 = *(archive + 12);
  if (!v44)
  {
    v45 = *(archive + 1);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x223DA0390](v45);
    *(archive + 12) = v44;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v42, formulaErrorTableReference, v44);
  richTextTableReference = self->_richTextTableReference;
  *(archive + 4) |= 0x2000u;
  v48 = *(archive + 16);
  if (!v48)
  {
    v49 = *(archive + 1);
    if (v49)
    {
      v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
    }

    v48 = MEMORY[0x223DA0390](v49);
    *(archive + 16) = v48;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v46, richTextTableReference, v48);
  commentStorageTableReference = self->_commentStorageTableReference;
  *(archive + 4) |= 0x8000u;
  v52 = *(archive + 18);
  if (!v52)
  {
    v53 = *(archive + 1);
    if (v53)
    {
      v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
    }

    v52 = MEMORY[0x223DA0390](v53);
    *(archive + 18) = v52;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v50, commentStorageTableReference, v52);
  importWarningSetTableReference = self->_importWarningSetTableReference;
  *(archive + 4) |= 0x10000u;
  v56 = *(archive + 19);
  if (!v56)
  {
    v57 = *(archive + 1);
    if (v57)
    {
      v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
    }

    v56 = MEMORY[0x223DA0390](v57);
    *(archive + 19) = v56;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v54, importWarningSetTableReference, v56);
  conditionalStyleSetTableReference = self->_conditionalStyleSetTableReference;
  *(archive + 4) |= 0x4000u;
  v60 = *(archive + 17);
  if (!v60)
  {
    v61 = *(archive + 1);
    if (v61)
    {
      v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
    }

    v60 = MEMORY[0x223DA0390](v61);
    *(archive + 17) = v60;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v58, conditionalStyleSetTableReference, v60);
  v65 = *(archive + 4);
  *(archive + 46) = self->_storageVersionPreBNC;
  v66 = v65 | 0x200080;
  *(archive + 4) = v65 | 0x200080;
  if (!*(archive + 10))
  {
    v67 = *(archive + 1);
    if (v67)
    {
      v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 10) = google::protobuf::Arena::CreateMaybeMessage<TST::TableRBTree>(v67);
    v66 = *(archive + 4);
  }

  *(archive + 4) = v66 | 0x100000;
  *(archive + 45) = 0;
  v69 = objc_msgSend_archivingCompatibilityVersion(self->_tileStorage, v62, v63, v64);
  preBNCFormatTableReference = self->_preBNCFormatTableReference;
  *(archive + 4) |= 0x100u;
  v71 = *(archive + 11);
  if (!v71)
  {
    v72 = *(archive + 1);
    if (v72)
    {
      v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
    }

    v71 = MEMORY[0x223DA0390](v72);
    *(archive + 11) = v71;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v68, preBNCFormatTableReference, v71);
  if (v69 <= 0xA000000000002)
  {
    multipleChoiceListFormatDataList = self->_multipleChoiceListFormatDataList;
    *(archive + 4) |= 0x1000u;
    v75 = *(archive + 15);
    if (!v75)
    {
      v76 = *(archive + 1);
      if (v76)
      {
        v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
      }

      v75 = MEMORY[0x223DA0390](v76);
      *(archive + 15) = v75;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v73, multipleChoiceListFormatDataList, v75);
  }

  controlCellSpecTableReference = self->_controlCellSpecTableReference;
  *(archive + 4) |= 0x20000u;
  v78 = *(archive + 20);
  if (!v78)
  {
    v79 = *(archive + 1);
    if (v79)
    {
      v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
    }

    v78 = MEMORY[0x223DA0390](v79);
    *(archive + 20) = v78;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v73, controlCellSpecTableReference, v78);
  formatTableReference = self->_formatTableReference;
  *(archive + 4) |= 0x40000u;
  v82 = *(archive + 21);
  if (!v82)
  {
    v83 = *(archive + 1);
    if (v83)
    {
      v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
    }

    v82 = MEMORY[0x223DA0390](v83);
    *(archive + 21) = v82;
  }

  objc_msgSend_setStrongLazyReference_message_(archiverCopy, v80, formatTableReference, v82);
}

- (unint64_t)archivingCompatibilityVersion
{
  v19[3] = *MEMORY[0x277D85DE8];
  rowHeaderStorage = self->_rowHeaderStorage;
  v19[0] = self->_tileStorage;
  v19[1] = rowHeaderStorage;
  v19[2] = self->_columnHeaderStorage;
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v19, 3);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16);
  v9 = 0x300020000000ALL;
  if (v8)
  {
    v10 = *v15;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v3);
      }

      v12 = objc_msgSend_archivingCompatibilityVersion(*(*(&v14 + 1) + 8 * v11), v5, v6, v7, v14);
      if (v12 > v9)
      {
        v9 = v12;
      }

      if (v12 >= 0xA000000000003)
      {
        break;
      }

      if (v8 == ++v11)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v14, v18, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v9;
}

- (id)copyWithOwner:(id)owner
{
  ownerCopy = owner;
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithOwner_(v4, v5, ownerCopy, v6);

  return v7;
}

- (BOOL)confirmRefCountsReturningResult:(id *)result
{
  tileStorage = self->_tileStorage;
  if (tileStorage)
  {
    objc_msgSend_makeStorageMap(tileStorage, a2, result, v3);
    v7 = v120;
  }

  else
  {
    v7 = 0;
    v120 = 0;
    v121[0] = 0;
    v121[1] = 0;
  }

  memset(v118, 0, sizeof(v118));
  v119 = 1065353216;
  memset(v116, 0, sizeof(v116));
  v117 = 1065353216;
  memset(v114, 0, sizeof(v114));
  v115 = 1065353216;
  memset(v112, 0, sizeof(v112));
  v113 = 1065353216;
  memset(v110, 0, sizeof(v110));
  v111 = 1065353216;
  memset(v108, 0, sizeof(v108));
  v109 = 1065353216;
  memset(v106, 0, sizeof(v106));
  v107 = 1065353216;
  memset(v104, 0, sizeof(v104));
  v105 = 1065353216;
  memset(v102, 0, sizeof(v102));
  v103 = 1065353216;
  v101 = 1065353216;
  memset(v100, 0, sizeof(v100));
  if (v7 != v121)
  {
    do
    {
      v8 = v7[7];
      v9 = sub_221145078(v8, 0x80, result, v3);
      sub_2216A926C(v118, v9);
      v12 = sub_221145078(v8, 8, v10, v11);
      sub_2216A926C(v116, v12);
      v15 = sub_221145078(v8, 0x20, v13, v14);
      sub_2216A926C(v114, v15);
      v18 = sub_221145078(v8, 0x40, v16, v17);
      sub_2216A926C(v114, v18);
      v21 = sub_221145078(v8, 0x200, v19, v20);
      sub_2216A926C(v112, v21);
      v24 = sub_221145078(v8, 0x400, v22, v23);
      sub_2216A926C(v110, v24);
      v27 = sub_221145078(v8, 0x800, v25, v26);
      sub_2216A926C(v108, v27);
      v30 = sub_221145078(v8, 0x10, v28, v29);
      sub_2216A926C(v106, v30);
      v33 = sub_221145078(v8, 0x2000, v31, v32);
      sub_2216A926C(v104, v33);
      v36 = sub_221145078(v8, 0x4000, v34, v35);
      sub_2216A926C(v104, v36);
      v39 = sub_221145078(v8, 0x8000, v37, v38);
      sub_2216A926C(v104, v39);
      v42 = sub_221145078(v8, 0x10000, v40, v41);
      sub_2216A926C(v104, v42);
      v45 = sub_221145078(v8, 0x20000, v43, v44);
      sub_2216A926C(v104, v45);
      v48 = sub_221145078(v8, 0x40000, v46, v47);
      sub_2216A926C(v104, v48);
      v51 = sub_221145078(v8, 0x80000, v49, v50);
      sub_2216A926C(v102, v51);
      v54 = sub_221145078(v8, 0x100000, v52, v53);
      sub_2216A926C(v100, v54);
      v55 = v7[1];
      if (v55)
      {
        do
        {
          v56 = v55;
          v55 = *v55;
        }

        while (v55);
      }

      else
      {
        do
        {
          v56 = v7[2];
          v57 = *v56 == v7;
          v7 = v56;
        }

        while (!v57);
      }

      v7 = v56;
    }

    while (v56 != v121);
  }

  LODWORD(v96) = 0;
  sub_2216AE0F4(v118, &v96);
  LODWORD(v96) = 0;
  sub_2216AE0F4(v116, &v96);
  LODWORD(v96) = 0;
  sub_2216AE0F4(v114, &v96);
  LODWORD(v96) = 0;
  sub_2216AE0F4(v112, &v96);
  LODWORD(v96) = 0;
  sub_2216AE0F4(v110, &v96);
  LODWORD(v96) = 0;
  sub_2216AE0F4(v108, &v96);
  LODWORD(v96) = 0;
  sub_2216AE0F4(v106, &v96);
  LODWORD(v96) = 0;
  sub_2216AE0F4(v104, &v96);
  LODWORD(v96) = 0;
  sub_2216AE0F4(v102, &v96);
  LODWORD(v96) = 0;
  sub_2216AE0F4(v100, &v96);
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  v60 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v58, &stru_2834BADA0, v59);
  v80 = MEMORY[0x277D85DD0];
  v81 = 3221225472;
  v82 = sub_2216A92FC;
  v83 = &unk_278468708;
  v85 = &v92;
  v61 = v60;
  v84 = v61;
  v86 = &v96;
  v87 = &v88;
  v62 = MEMORY[0x223DA1C10](&v80);
  v63 = sub_22170A84C(self);
  (v62)[2](v62, v63, v118, @"condStyles");

  v64 = sub_22170A8F4(self);
  (v62)[2](v62, v64, v116, @"strings");

  v65 = sub_22170A75C(self);
  (v62)[2](v62, v65, v114, @"styles");

  v66 = sub_22170A990(self);
  (v62)[2](v62, v66, v112, @"cellSpecs");

  v68 = sub_22170AA38(self, v67);
  (v62)[2](v62, v68, v110, @"cellSpecs");

  v69 = sub_22170A7F8(self);
  (v62)[2](v62, v69, v108, @"f-errors");

  v71 = sub_22170A7B0(self, v70);
  (v62)[2](v62, v71, v106, @"rich text");

  v73 = sub_22170A948(self, v72);
  (v62)[2](v62, v73, v104, @"formats");

  v74 = sub_22170A8A0(self);
  (v62)[2](v62, v74, v102, @"comments");

  v75 = sub_22170A9E4(self);
  (v62)[2](v62, v75, v100, @"imp warns");

  if (result)
  {
    *result = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v76, @"DataList RefCount Audit good:%d bad:%d dead:%d\n%@", v77, *(v97 + 6), *(v93 + 6), *(v89 + 6), v61, v80, v81, v82, v83);
  }

  v78 = *(v93 + 6) == 0;

  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v96, 8);
  sub_2210BDEC0(v100);
  sub_2210BDEC0(v102);
  sub_2210BDEC0(v104);
  sub_2210BDEC0(v106);
  sub_2210BDEC0(v108);
  sub_2210BDEC0(v110);
  sub_2210BDEC0(v112);
  sub_2210BDEC0(v114);
  sub_2210BDEC0(v116);
  sub_2210BDEC0(v118);
  sub_2210BC9F8(&v120, v121[0]);
  return v78;
}

- (BOOL)auditDatalistDuplicationReturningResult:(id *)result
{
  v6 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"Datalist Duplication Audit\n", v3);
  v7 = sub_22170A84C(self);
  hasDuplicatedElements = objc_msgSend_hasDuplicatedElements(v7, v8, v9, v10);

  if (hasDuplicatedElements)
  {
    objc_msgSend_appendString_(v6, v12, @"Conditional Styles list has dupes.\n", v13);
  }

  v14 = sub_22170A8F4(self);
  v18 = objc_msgSend_hasDuplicatedElements(v14, v15, v16, v17);

  if (v18)
  {
    objc_msgSend_appendString_(v6, v19, @"Strings List has dupes.\n", v20);
  }

  v21 = sub_22170A75C(self);
  v25 = objc_msgSend_hasDuplicatedElements(v21, v22, v23, v24);

  if (v25)
  {
    objc_msgSend_appendString_(v6, v26, @"Styles List has dupes.\n", v27);
  }

  v28 = sub_22170A990(self);
  v32 = objc_msgSend_hasDuplicatedElements(v28, v29, v30, v31);

  if (v32)
  {
    objc_msgSend_appendString_(v6, v33, @"Formula List has dupes.\n", v34);
  }

  v35 = sub_22170AA38(self, v33);
  v39 = objc_msgSend_hasDuplicatedElements(v35, v36, v37, v38);

  if (v39)
  {
    objc_msgSend_appendString_(v6, v40, @"Control Cell Spec List has dupes.\n", v41);
  }

  v42 = sub_22170A948(self, v40);
  v46 = objc_msgSend_hasDuplicatedElements(v42, v43, v44, v45);

  if (v46)
  {
    objc_msgSend_appendString_(v6, v47, @"Format List has dupes.\n", v48);
  }

  v49 = sub_22170A9E4(self);
  v53 = objc_msgSend_hasDuplicatedElements(v49, v50, v51, v52);

  if (v53)
  {
    objc_msgSend_appendString_(v6, v54, @"Import Warnings List has dupes.\n", v55);
  }

  if (result)
  {
    v56 = v6;
    *result = v6;
  }

  return 1;
}

- (BOOL)auditColumnRowCellCountsReturningResult:(id *)result hasUndercounts:(BOOL *)undercounts
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_2216A140C;
  v26 = sub_2216A141C;
  v27 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, @"ColumnRowCellCount Audit\n", undercounts);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = malloc_type_calloc(0x3E8uLL, 8uLL, 0x100004000313F17uLL);
  tileStorage = self->_tileStorage;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2216A99CC;
  v17[3] = &unk_278468730;
  v17[6] = &v22;
  v17[7] = &v18;
  v17[4] = self;
  v17[5] = &v32;
  v17[8] = &v28;
  objc_msgSend_enumerateRowsWithBlock_(tileStorage, v8, v17, v9);
  for (i = 0; i != 1000; ++i)
  {
    v13 = *(v19[3] + 8 * i);
    v14 = objc_msgSend_cellCountAtIndex_(self->_columnHeaderStorage, v10, i, v11);
    if (v14 != v13)
    {
      objc_msgSend_appendFormat_(v23[5], v10, @"Cell count mismatch at column %d: header should have %td, has %td\n", v11, i, v13, v14);
      *(v33 + 24) = 0;
      if (v14 < v13)
      {
        *(v29 + 24) = 1;
      }
    }
  }

  free(v19[3]);
  if (result)
  {
    *result = v23[5];
  }

  if (undercounts)
  {
    *undercounts = *(v29 + 24);
  }

  v15 = *(v33 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  return v15;
}

- (void)updateDataListsConcurrentlyWithConcurrentCellMap:(id)map clearImportWarnings:(BOOL)warnings
{
  mapCopy = map;
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  commentStorageDataList = self->_commentStorageDataList;
  v56 = mapCopy;
  if (commentStorageDataList)
  {
    v8 = commentStorageDataList;
  }

  else
  {
    v8 = sub_22170A8A0(self);
  }

  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = sub_2216AA400;
  v94[3] = &unk_278468758;
  selfCopy = self;
  v97 = &v98;
  v95 = v8;
  v9 = v8;
  v57 = MEMORY[0x223DA1C10](v94);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  conditionalStyleSetDataList = self->_conditionalStyleSetDataList;
  if (conditionalStyleSetDataList)
  {
    v11 = conditionalStyleSetDataList;
  }

  else
  {
    v11 = sub_22170A84C(self);
  }

  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = sub_2216AA5F8;
  v90[3] = &unk_278468758;
  selfCopy2 = self;
  v93 = &v98;
  v91 = v11;
  v12 = v11;
  v13 = MEMORY[0x223DA1C10](v90);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  controlCellSpecDataList = self->_controlCellSpecDataList;
  if (controlCellSpecDataList)
  {
    v16 = controlCellSpecDataList;
  }

  else
  {
    v16 = sub_22170AA38(self, v14);
  }

  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = sub_2216AA7F0;
  v86[3] = &unk_278468758;
  selfCopy3 = self;
  v89 = &v98;
  v87 = v16;
  v17 = v16;
  v18 = MEMORY[0x223DA1C10](v86);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  formulaDataList = self->_formulaDataList;
  if (formulaDataList)
  {
    v20 = formulaDataList;
  }

  else
  {
    v20 = sub_22170A990(self);
  }

  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = sub_2216AAA70;
  v82[3] = &unk_278468758;
  selfCopy4 = self;
  v85 = &v98;
  v83 = v20;
  v21 = v20;
  v22 = MEMORY[0x223DA1C10](v82);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  formulaErrorDataList = self->_formulaErrorDataList;
  if (formulaErrorDataList)
  {
    v24 = formulaErrorDataList;
  }

  else
  {
    v24 = sub_22170A7F8(self);
  }

  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = sub_2216AACFC;
  v78[3] = &unk_278468758;
  selfCopy5 = self;
  v81 = &v98;
  v79 = v24;
  v25 = v24;
  v26 = MEMORY[0x223DA1C10](v78);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  importWarningSetDataList = self->_importWarningSetDataList;
  if (importWarningSetDataList)
  {
    v28 = importWarningSetDataList;
  }

  else
  {
    v28 = sub_22170A9E4(self);
  }

  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = sub_2216AAEF4;
  v73[3] = &unk_278468780;
  selfCopy6 = self;
  v76 = &v98;
  warningsCopy = warnings;
  v74 = v28;
  v29 = v28;
  v30 = MEMORY[0x223DA1C10](v73);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  richTextDataList = self->_richTextDataList;
  v55 = v22;
  if (richTextDataList)
  {
    v33 = v30;
    v34 = v26;
    v35 = richTextDataList;
  }

  else
  {
    v35 = sub_22170A7B0(self, v31);
    v33 = v30;
    v34 = v26;
  }

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = sub_2216AB0F4;
  v69[3] = &unk_278468758;
  selfCopy7 = self;
  v72 = &v98;
  v70 = v35;
  v36 = v35;
  v37 = MEMORY[0x223DA1C10](v69);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  stringDataList = self->_stringDataList;
  v39 = v18;
  if (stringDataList)
  {
    v40 = v13;
    v41 = stringDataList;
  }

  else
  {
    v41 = sub_22170A8F4(self);
    v40 = v13;
  }

  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = sub_2216AB2EC;
  v65[3] = &unk_278468758;
  selfCopy8 = self;
  v68 = &v98;
  v66 = v41;
  v42 = v41;
  v43 = MEMORY[0x223DA1C10](v65);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  styleDataList = self->_styleDataList;
  if (styleDataList)
  {
    v45 = styleDataList;
  }

  else
  {
    v45 = sub_22170A75C(self);
  }

  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = sub_2216AB590;
  v61[3] = &unk_278468758;
  selfCopy9 = self;
  v64 = &v98;
  v62 = v45;
  v46 = v45;
  v47 = MEMORY[0x223DA1C10](v61);

  _Block_object_dispose(&v98, 8);
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  formatDataList = self->_formatDataList;
  if (formatDataList)
  {
    v50 = formatDataList;
    v51 = v57;
  }

  else
  {
    v51 = v57;
    v50 = sub_22170A948(self, v48);
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_2216AB964;
  v58[3] = &unk_2784687C8;
  v59 = v50;
  v60 = &v98;
  v52 = v50;
  v53 = MEMORY[0x223DA1C10](v58);

  _Block_object_dispose(&v98, 8);
  objc_msgSend_updateDataListsConcurrentlyUsingCommentStorageBlock_conditionalStyleSetBlock_controlCellSpecBlock_formulaBlock_formulaErrorBlock_importWarningSetBlock_richTextBlock_stringBlock_styleBlock_customFormatBlock_formatBlock_(v56, v54, v51, v40, v39, v55, v34, v33, v37, v43, v47, &unk_2834B9FC8, v53);
}

- (void)setCellsConcurrently:(id)concurrently tableUID:(const TSKUIDStruct *)d calculationEngine:(id)engine conditionalStyleOwner:(id)owner ignoreFormula:(BOOL)formula clearImportWarnings:(BOOL)warnings
{
  concurrentlyCopy = concurrently;
  engineCopy = engine;
  ownerCopy = owner;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_2216ABF74;
  v56[3] = &unk_2784687E8;
  warningsCopy = warnings;
  objc_msgSend_enumerateRowsOfCellsConcurrentlyUsingBlock_(concurrentlyCopy, v16, v56, v17);
  if (engineCopy && !formula)
  {
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_2216AC290;
    v53[3] = &unk_278468810;
    v18 = engineCopy;
    v54 = v18;
    dCopy = d;
    objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(concurrentlyCopy, v19, 2, 0, v53);
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v52 = 0;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_2216AC484;
    v47[3] = &unk_278468838;
    v49 = v51;
    v20 = v18;
    v48 = v20;
    dCopy2 = d;
    objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(concurrentlyCopy, v21, 4, 0, v47);
    if (ownerCopy)
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = sub_2216AC540;
      v45[3] = &unk_27845E670;
      v46 = ownerCopy;
      objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(concurrentlyCopy, v25, 6, 0, v45);
    }

    if ((objc_msgSend_skipDirtyingRanges(concurrentlyCopy, v22, v23, v24) & 1) == 0)
    {
      v29 = objc_msgSend_affectedBaseColumnAndRowIndexes(concurrentlyCopy, v26, v27, v28);
      v33 = objc_msgSend_first(v29, v30, v31, v32);
      v37 = objc_msgSend_second(v29, v34, v35, v36);
      v39 = objc_msgSend_regionFromColumnIndexes_rowIndexes_(TSTCellRegion, v38, v33, v37);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_2216AC5E0;
      v42[3] = &unk_278468860;
      dCopy3 = d;
      v43 = v20;
      objc_msgSend_enumerateCellRangesUsingBlock_(v39, v40, v42, v41);
    }

    _Block_object_dispose(v51, 8);
  }
}

- (void)didApplyConcurrentCellMap:(id)map
{
  mapCopy = map;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_2216AC850;
  v36[3] = &unk_278468888;
  v36[4] = self;
  objc_msgSend_enumerateColumnCellCountDiffUsingBlock_(mapCopy, v5, v36, v6);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v7 = objc_alloc(MEMORY[0x277CCAB00]);
  v9 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v7, v8, 512, 0, 4);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = sub_2216AC898;
  v28 = &unk_2784688B0;
  selfCopy = self;
  v31 = &v32;
  v10 = v9;
  v30 = v10;
  objc_msgSend_enumerateRowCellCountDiffUsingBlock_(mapCopy, v11, &v25, v12);
  if (self->_cellCountValid)
  {
    self->_cellCount += *(v33 + 6);
  }

  objc_msgSend_tsu_enumerateKeysAndObjectsUsingBlock_(v10, v13, &unk_2834B9FE8, v14, v25, v26, v27, v28, selfCopy);
  v18 = objc_msgSend_affectedBaseColumnAndRowIndexes(mapCopy, v15, v16, v17);
  v22 = objc_msgSend_second(v18, v19, v20, v21);

  objc_msgSend_pruneTilesForRows_(self->_tileStorage, v23, v22, v24);
  _Block_object_dispose(&v32, 8);
}

- (vector<TSTCell)accumulateCurrentCellsConcurrentlyInRow:(TSTTableDataStore *)self rowInfo:(SEL)info atColumns:(TSUModelRowIndex)columns usingCellCreationBlock:(id)block
{
  blockCopy = block;
  v12 = a7;
  if (blockCopy)
  {
    objc_msgSend_accumulateCurrentCellsConcurrentlyAtColumns_usingCellCreationBlock_(blockCopy, v10, a6, v12);
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableDataStore accumulateCurrentCellsConcurrentlyInRow:rowInfo:atColumns:usingCellCreationBlock:]", v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 3900, 0, "invalid nil value for '%{public}s'", "rowInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    retstr->__begin_ = 0;
    retstr->var0 = 0;
    retstr->var1 = 0;
  }

  return result;
}

- (id)tsceValueFromCell:(id)cell atCellID:(TSUCellCoord)d tableUID:(const TSKUIDStruct *)iD
{
  cellCopy = cell;
  v11 = objc_msgSend_valueType(cellCopy, v8, v9, v10);
  if (v11 > 5)
  {
    if (v11 <= 7)
    {
      if (v11 == 6)
      {
        IsExplicitForCalcEngine = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v12, v13, v14);
        v102 = objc_msgSend_BOOLValue(cellCopy, v99, v100, v101);
        v51 = objc_msgSend_currentFormat(cellCopy, v103, v104, v105);
        TSCEFormat::TSCEFormat(&v149, v51, IsExplicitForCalcEngine);
        v78 = objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v106, v102, &v149);
      }

      else
      {
        v58 = objc_msgSend_currentFormat(cellCopy, v12, v13, v14);
        v51 = objc_msgSend_asDurationFormat(v58, v59, v60, v61);

        objc_msgSend_durationTimeIntervalValue(cellCopy, v62, v63, v64);
        if (v51)
        {
          v68 = objc_msgSend_durationUnitLargestWithTimeInterval_(v51, v65, v66, v67);
          v69 = sub_221387C78(v68);
          v73 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v70, v71, v72);
          objc_msgSend_durationTimeIntervalValue(cellCopy, v74, v75, v76);
          TSUDecimal::operator=();
          TSCEFormat::TSCEFormat(&v149, v51, v73);
          v78 = objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v77, &v147, &v149, v69);
        }

        else
        {
          TSUDecimal::operator=();
          v78 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v140, &v149, 6);
        }
      }

      goto LABEL_37;
    }

    switch(v11)
    {
      case 8:
        v149._tskFormat = d;
        *&v149._formatType = d;
        *&v149._durationFormat = *iD;
        v51 = objc_msgSend_indirectErrorForRangeReference_hostTableUID_(TSCEError, v12, &v149, iD);
        v78 = objc_msgSend_errorValue_(TSCEErrorValue, v96, v51, v97);
LABEL_37:
        v57 = v78;
        goto LABEL_38;
      case 9:
        v51 = objc_msgSend_richTextValue(cellCopy, v12, v13, v14);
        v146 = 0;
        v108 = objc_msgSend_errorForRichTextStorage_outValue_(TSCEError, v107, v51, &v146);
        v57 = v146;
        if ((v108 & 1) == 0)
        {
          v112 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v109, v110, v111);
          v116 = objc_msgSend_currentFormat(cellCopy, v113, v114, v115);
          TSCEFormat::TSCEFormat(&v149, v116, v112);
          v118 = objc_msgSend_richTextValue_format_(TSCERichTextValue, v117, v51, &v149);

          v57 = v118;
        }

        goto LABEL_38;
      case 10:
        objc_msgSend_currencyDoubleValue(cellCopy, v12, v13, v14);
        v16 = v15;
        v20 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v17, v18, v19);
        v24 = objc_msgSend_currentFormat(cellCopy, v21, v22, v23);
        if (objc_msgSend_formatType(v24, v25, v26, v27) == 257)
        {
          v31 = objc_msgSend_asCurrencyFormat(v24, v28, v29, v30);
          v35 = objc_msgSend_currencyCode(v31, v32, v33, v34);
        }

        else
        {
          if (objc_msgSend_formatType(v24, v28, v29, v30) != 274)
          {
            v51 = 0;
            goto LABEL_35;
          }

          v31 = objc_msgSend_asCustomFormatWrapper(v24, v131, v132, v133);
          v35 = objc_msgSend_currencyCodeForValue_(v31, v134, v135, v136, v16);
        }

        v51 = v35;

        if (v51)
        {
          v139 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v137, v51, v138);
LABEL_36:
          TSCEFormat::TSCEFormat(&v149, v24, v20);
          v147 = objc_msgSend_currencyDecimalValue(cellCopy, v141, v142, v143);
          v148 = v144;
          v78 = objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v144, &v147, &v149, v139);
          goto LABEL_37;
        }

LABEL_35:
        v139 = 0;
        goto LABEL_36;
    }

    goto LABEL_27;
  }

  if (v11 <= 2)
  {
    if (!v11)
    {
      v79 = objc_msgSend_currentFormat(cellCopy, v12, v13, v14);
      v83 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v80, v81, v82);
      TSCEFormat::TSCEFormat(&v149, v79, v83);
      v46 = objc_msgSend_emptyCellValueWithFormat_(TSCEEmptyCellValue, v84, &v149, v85);
      goto LABEL_28;
    }

    if (v11 == 2)
    {
      v36 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v12, v13, v14);
      v40 = objc_msgSend_currentFormat(cellCopy, v37, v38, v39);
      TSCEFormat::TSCEFormat(&v149, v40, v36);
      v41 = [TSCENumberValue alloc];
      v147 = objc_msgSend_numberDecimalValue(cellCopy, v42, v43, v44);
      v148 = v45;
      v46 = objc_msgSend_initWithDecimal_format_(v41, v45, &v147, &v149);
LABEL_28:
      v57 = v46;
      goto LABEL_39;
    }

LABEL_27:
    v119 = MEMORY[0x277D81150];
    v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTTableDataStore tsceValueFromCell:atCellID:tableUID:]", v14);
    v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v122);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v119, v124, v120, v123, 4008, 0, "unhandled table cell type found");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v125, v126, v127);
    v46 = objc_msgSend_nilValue(TSCENilValue, v128, v129, v130);
    goto LABEL_28;
  }

  if (v11 == 3)
  {
    v86 = objc_msgSend_stringValue(cellCopy, v12, v13, v14);
    if (v86)
    {
      v51 = v86;
    }

    else
    {
      v51 = &stru_2834BADA0;
    }

    v90 = objc_msgSend_currentFormat(cellCopy, v87, v88, v89);
    v94 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v91, v92, v93);
    TSCEFormat::TSCEFormat(&v149, v90, v94);
    v78 = objc_msgSend_stringValue_format_(TSCEStringValue, v95, v51, &v149);
    goto LABEL_37;
  }

  if (v11 != 5)
  {
    goto LABEL_27;
  }

  v47 = objc_msgSend_currentFormatIsExplicitForCalcEngine(cellCopy, v12, v13, v14);
  v51 = objc_msgSend_dateValue(cellCopy, v48, v49, v50);
  v55 = objc_msgSend_currentFormat(cellCopy, v52, v53, v54);
  TSCEFormat::TSCEFormat(&v149, v55, v47);
  v57 = objc_msgSend_dateValue_format_(TSCEDateValue, v56, v51, &v149);

LABEL_38:
LABEL_39:

  return v57;
}

- (void)tsceValueForCellStorageRef:(TSTCellStorage *)ref cellCoord:(const TSUCellCoord *)coord hostTableUID:(const TSKUIDStruct *)d outValue:(id *)value
{
  if (!ref)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableDataStore tsceValueForCellStorageRef:cellCoord:hostTableUID:outValue:]", coord, d);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 4020, 0, "Can't get a value from a null cell reference!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
    goto LABEL_10;
  }

  sub_22169DEF8(&ref->var0.var0, a2, ref, coord);
  v14 = *(&ref->var0 + 1);
  if (v14 <= 5)
  {
    if (*(&ref->var0 + 1) <= 2u)
    {
      if (v14 == 2)
      {
        v139._decimal.w[0] = sub_2216AD93C(&ref->var0.var0, v11, v12, v13);
        v139._decimal.w[1] = v44;
        v138 = 0;
        v45 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v44, *coord, &v138, ref);
        TSCEFormat::TSCEFormat(&v140, v45, v138);
        v43 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v46, &v139, &v140);
        goto LABEL_11;
      }

LABEL_10:
      LOBYTE(v139._decimal.w[0]) = 0;
      v40 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v11, *coord, &v139, ref);
      TSCEFormat::TSCEFormat(&v140, v40, v139._decimal.w[0]);
      v43 = objc_msgSend_emptyCellValueWithFormat_(TSCEEmptyCellValue, v41, &v140, v42);
LABEL_11:
      *value = v43;
      return;
    }

    if (v14 == 3)
    {
      v93 = objc_msgSend_stringForCalcEngineAtCellID_refIfAvailable_(self, v11, *coord, ref);
      LOBYTE(v139._decimal.w[0]) = 0;
      v95 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v94, *coord, &v139, ref);
      TSCEFormat::TSCEFormat(&v140, v95, v139._decimal.w[0]);
      v97 = objc_msgSend_stringValue_format_(TSCEStringValue, v96, v93, &v140);
      goto LABEL_34;
    }

    if (v14 != 5)
    {
      goto LABEL_10;
    }

    LOBYTE(v139._decimal.w[0]) = 0;
    v47 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v11, *coord, &v139, ref);
    v48 = MEMORY[0x277CBEAA8];
    sub_22169DEF8(&ref->var0.var0, v49, v50, v51);
    sub_22169DEF8(&ref->var0.var0, v52, v53, v54);
    if (*(&ref->var0 + 1) != 5)
    {
      v58 = MEMORY[0x277D81150];
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "double TSTCellStorageRawDateValue(TSTCellStorage *)", v57);
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v61);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v63, v59, v62, 324, 0, "Asked for date value from non-date cell.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66);
    }

    v67 = sub_2211450B8(ref, 4, v56, v57);
    v71 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v48, v68, v69, v70, v67);
    TSCEFormat::TSCEFormat(&v140, v47, v139._decimal.w[0]);
    v73 = objc_msgSend_dateValue_format_(TSCEDateValue, v72, v71, &v140);
LABEL_27:
    *value = v73;

    return;
  }

  if (*(&ref->var0 + 1) <= 7u)
  {
    if (v14 == 6)
    {
      LOBYTE(v139._decimal.w[0]) = 0;
      v100 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v11, *coord, &v139, ref);
      TSCEFormat::TSCEFormat(&v140, v100, v139._decimal.w[0]);
      sub_22169DEF8(&ref->var0.var0, v101, v102, v103);
      sub_22169DEF8(&ref->var0.var0, v104, v105, v106);
      if (*(&ref->var0 + 1) != 6)
      {
        v110 = MEMORY[0x277D81150];
        v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "BOOL TSTCellStorageBoolValue(TSTCellStorage *)", v109);
        v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v113);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v110, v115, v111, v114, 314, 0, "Asked for BOOL value from non-BOOL cell.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v116, v117, v118);
      }

      if ((*(&ref->var0 + 8) & 2) != 0)
      {
        v123 = sub_2211450B8(ref, 2, v108, v109) != 0.0;
        objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v124, v123, &v140);
      }

      else
      {
        objc_msgSend_BOOLValue_format_(TSCEBooleanValue, v107, 0, &v140);
      }
      v43 = ;
      goto LABEL_11;
    }

    if (v14 == 7)
    {
      v138 = 0;
      v74 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v11, *coord, &v138, ref);
      if (v74)
      {
        v78 = v74;
        v79 = objc_msgSend_asDurationFormat(v74, v75, v76, v77);
        v83 = sub_2216ADA3C(&ref->var0.var0, v80, v81, v82);
        v87 = objc_msgSend_durationUnitLargestWithTimeInterval_(v79, v84, v85, v86, v83);
        v88 = sub_221387C78(v87);

        sub_2216ADA3C(&ref->var0.var0, v89, v90, v91);
        TSUDecimal::operator=();
        TSCEFormat::TSCEFormat(&v140, v78, v138);
        objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v92, &v139, &v140, v88);
      }

      else
      {
        sub_2216ADA3C(&ref->var0.var0, v75, v76, v77);
        TSUDecimal::operator=();
        objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v137, &v140, 6);
      }
      v43 = ;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v14 == 8)
  {
    v140._tskFormat = *coord;
    *&v140._formatType = v140._tskFormat;
    *&v140._durationFormat = *d;
    v71 = objc_msgSend_indirectErrorForRangeReference_hostTableUID_(TSCEError, v11, &v140, d);
    v73 = objc_msgSend_errorValue_(TSCEErrorValue, v98, v71, v99);
    goto LABEL_27;
  }

  if (v14 == 9)
  {
    v93 = objc_msgSend_richTextStorageForCalcEngineAtCellID_refIfAvailable_(self, v11, *coord, ref);
    if (objc_msgSend_errorForRichTextStorage_outValue_(TSCEError, v119, v93, value))
    {
LABEL_35:

      return;
    }

    LOBYTE(v139._decimal.w[0]) = 0;
    v121 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v120, *coord, &v139, ref);
    TSCEFormat::TSCEFormat(&v140, v121, v139._decimal.w[0]);
    v97 = objc_msgSend_richTextValue_format_(TSCERichTextValue, v122, v93, &v140);
LABEL_34:
    *value = v97;
    goto LABEL_35;
  }

  if (v14 != 10)
  {
    goto LABEL_10;
  }

  v139._decimal.w[0] = sub_2216AD93C(&ref->var0.var0, v11, v12, v13);
  v139._decimal.w[1] = v15;
  TSUDecimal::doubleValue(&v139);
  v17 = v16;
  v138 = 0;
  v19 = objc_msgSend_formatForCalcEngineAtCellID_formatIsExplicitOut_refIfAvailable_(self, v18, *coord, &v138, ref);
  if (objc_msgSend_formatType(v19, v20, v21, v22) == 257)
  {
    v26 = objc_msgSend_asCurrencyFormat(v19, v23, v24, v25);
    v30 = objc_msgSend_currencyCode(v26, v27, v28, v29);
  }

  else
  {
    if (objc_msgSend_formatType(v19, v23, v24, v25) != 274)
    {
LABEL_42:
      v135 = 0;
      v134 = 0;
      goto LABEL_43;
    }

    v26 = objc_msgSend_asCustomFormatWrapper(v19, v125, v126, v127);
    v30 = objc_msgSend_currencyCodeForValue_(v26, v128, v129, v130, v17);
  }

  v131 = v30;

  if (!v131)
  {
    goto LABEL_42;
  }

  v134 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v132, v131, v133);
  v135 = v131;
LABEL_43:
  TSCEFormat::TSCEFormat(&v140, v19, v138);
  *value = objc_msgSend_numberWithDecimal_format_baseUnit_(TSCENumberValue, v136, &v139, &v140, v134);
}

- (TSDContainerInfo)richTextParentInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_richTextParentInfo);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  return self;
}

- (void)p_loadLazyDatalists
{
  v3 = sub_22170A75C(self);
  v4 = sub_22170A84C(self);
  v5 = sub_22170A8F4(self);
  v6 = sub_22170A990(self);
  v8 = sub_22170AA38(self, v7);
  v9 = sub_22170A7F8(self);
  v11 = sub_22170A7B0(self, v10);
  v13 = sub_22170A948(self, v12);
  v14 = sub_22170A8A0(self);
  v15 = sub_22170A9E4(self);
  v16 = sub_22170AA80(self);
}

@end