@interface TSTTableResolver
- (BOOL)hasCellCoord:(const TSUCellCoord *)coord;
- (BOOL)hasNamesInHeaders;
- (BOOL)isCategorized;
- (BOOL)isFooterCell:(const TSUCellCoord *)cell;
- (BOOL)isHeaderCell:(const TSUCellCoord *)cell;
- (BOOL)isPivotDataModel;
- (BOOL)rangeIsWithinTable:(const TSCERangeRef *)table;
- (BOOL)rangeIsWithinTableInView:(const TSCERangeRef *)view;
- (NSString)sheetName;
- (TSCECalculationEngine)calcEngine;
- (TSCECellCoordSet)cellsModifiedInCurrentRecalcCycle;
- (TSCECellRef)allAggsInGroupRootPrecedent:(SEL)precedent;
- (TSCECellRef)groupingColumnHeadersPrecedent:(SEL)precedent;
- (TSCECellRef)groupingColumnOrderPrecedent:(SEL)precedent;
- (TSCECellRef)groupingColumnsPrecedent:(SEL)precedent;
- (TSCECellRef)groupingColumnsPrecedentForCategoryRef:(SEL)ref;
- (TSCECellRef)groupingRowOrderPrecedent:(SEL)precedent ignoreRecalc:(const TSKUIDStruct *)recalc;
- (TSCECellRef)indirectAggTypeChangePrecedent:(SEL)precedent;
- (TSCECellTractRefCore)apparentTractRefForTractRef:(SEL)ref rangeContext:(const TSCECellTractRefCore *)context;
- (TSCECoordMapper)coordMapper;
- (TSCEFormat)format:(SEL)format fromCell:(id)cell;
- (TSCERangeCoordinate)apparentRangeForRange:(const TSCERangeCoordinate *)range rangeContext:(unsigned __int8)context;
- (TSCERangeCoordinate)bodyRangeCoordinate;
- (TSCERangeCoordinate)expandCellRangeToCoverMergedCells:(const TSCERangeCoordinate *)cells;
- (TSCERangeCoordinate)footerRangeCoordinate;
- (TSCERangeCoordinate)preMergeRangeFromUidTract:(id)tract;
- (TSCERangeCoordinate)tableRangeCoordinate;
- (TSCERangeCoordinate)viewBodyRangeCoordinate;
- (TSCERangeCoordinate)viewTableRangeCoordinate;
- (TSKUIDStruct)UIDForIndex:(unsigned int)index isRows:(BOOL)rows;
- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index;
- (TSKUIDStruct)conditionalStyleFormulaOwnerUID;
- (TSKUIDStruct)convertToRelativeAncestorUid:(const TSKUIDStruct *)uid rowUid:(const TSKUIDStruct *)rowUid;
- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows;
- (TSKUIDStruct)groupByUUID;
- (TSKUIDStruct)mergeOwnerUID;
- (TSKUIDStruct)relativeAncestorGroupUid:(int)uid;
- (TSKUIDStruct)resolveRelativeAncestorUid:(const TSKUIDStruct *)uid sourceRowUID:(const TSKUIDStruct *)d;
- (TSKUIDStruct)resolverUID;
- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index;
- (TSKUIDStruct)tableUID;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForIndexes:(SEL)indexes isRows:(id)rows;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForRange:(SEL)range isRows:(_NSRange)rows;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)viewOrderedRowUids:(SEL)uids;
- (TSTTableInfo)tableInfo;
- (TSTTableResolver)initWithTableModel:(id)model;
- (TSTTableTranslator)tableTranslator;
- (TSUCellCoord)resolvedCellCoordForIntersection:(const TSCERangeCoordinate *)intersection hostCell:(const TSUCellCoord *)cell useImplicitIntersection:(BOOL)implicitIntersection;
- (TSUCellCoord)resolvedCellCoordForIntersectionRef:(id)ref hostCell:(const TSUCellCoord *)cell useImplicitIntersection:(BOOL)intersection;
- (TSUModelCellRect)mergedRangeForBaseCellCoord:(const TSUModelCellCoord *)coord;
- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows;
- (id)UIDSetForRange:(_NSRange)range isRows:(BOOL)rows;
- (id)apparentGridForRangeContext:(id)context rangeContext:(unsigned __int8)rangeContext spansAllColumns:(BOOL)columns spansAllRows:(BOOL)rows;
- (id)canonicalCellReferenceForReference:(id)reference;
- (id)cellTractRefForViewTractRef:(id)ref;
- (id)filteredCellTractRef:(id)ref hidingActionMask:(unsigned __int8)mask;
- (id)makeReferenceWithTopLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right preserveFlags:(const TSUPreserveFlags *)flags;
- (id)mutableColumnIndexesForUIDs:(const void *)ds;
- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds;
- (id)mutableIndexesForUIDs:(const void *)ds isRows:(BOOL)rows;
- (id)mutableRowIndexesForUIDs:(const void *)ds;
- (id)readValueForReference:(id)reference fromCellRef:(const TSCECellRef *)ref outValue:(id *)value readOptions:(unsigned __int16)options;
- (id)resolveCategoryRefAtRowUid:(id)uid rowUid:(const TSKUIDStruct *)rowUid containingTableUID:(const TSKUIDStruct *)d;
- (id)solveGetPivotData:(id)data functionSpec:(id)spec context:(id)context;
- (id)unpersistedFormulaStorageForCoord:(const TSUCellCoord *)coord withPrefix:(id)prefix withStyle:(id)style allowHeaderNames:(BOOL)names;
- (id)valueForCellCoord:(const TSUCellCoord *)coord fetchRichTextAttributesIfPlainText:(BOOL)text;
- (id)valueForCellUID:(const TSKUIDStructCoord *)d outGeometricPrecedent:(TSCECellRef *)precedent fetchRichTextAttributesIfPlainText:(BOOL)text;
- (id)valuesForViewTractRef:(id)ref hidingActionMask:(unsigned __int8)mask outError:(id *)error;
- (id)valuesForViewTractRef:(id)ref hidingActionMask:(unsigned __int8)mask outError:(id *)error outGeometricPrecedents:(void *)precedents forceHidingOfPivotFiltered:(BOOL)filtered;
- (id)viewTractRefForCellTractRef:(id)ref;
- (int64_t)interactionTypeForCell:(const TSUModelCellCoord *)cell;
- (unordered_set<TSKUIDStruct,)ownerUIDsInterestedInGroupByChange:()std:(std:(TSTTableResolver *)self :(SEL)a3 allocator<TSKUIDStruct>> *__return_ptr)retstr :(id)a4 equal_to<TSKUIDStruct>;
- (unsigned)columnIndexForColumnUID:(const TSKUIDStruct *)d;
- (unsigned)columnWidthInBodyOfTable:(id)table;
- (unsigned)getHidingAction:(id)action forRow:(BOOL)row;
- (unsigned)getNumberOfGroupByLevels;
- (unsigned)groupLevelForGroupUid:(const TSKUIDStruct *)uid;
- (unsigned)rowHeightInBodyOfTable:(id)table;
- (unsigned)rowIndexForRowUID:(const TSKUIDStruct *)d;
- (vector<TSUModelCellRect,)mergeRangesIntersectingCellRange:(TSTTableResolver *)self;
- (void)dirtyColumnOrderChanged;
- (void)resetAllFormulaDependenciesForCell:(const TSUCellCoord *)cell calcEngine:(id)engine;
- (void)resetDependenciesForCell:(const TSUCellCoord *)cell calcEngine:(id)engine;
- (void)upgradeStyleForFormulatextForCellCoord:(const TSUCellCoord *)coord;
- (void)willClose;
@end

@implementation TSTTableResolver

- (TSTTableResolver)initWithTableModel:(id)model
{
  modelCopy = model;
  v25.receiver = self;
  v25.super_class = TSTTableResolver;
  v6 = [(TSTTableResolver *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableModel, model);
    v11 = objc_msgSend_tableInfo(modelCopy, v8, v9, v10);
    tableInfo = v7->_tableInfo;
    v7->_tableInfo = v11;

    v16 = objc_msgSend_calcEngine(modelCopy, v13, v14, v15);
    v7->_calcEngine = v16;

    v20 = objc_msgSend_tableInfo(v7->_tableModel, v17, v18, v19);
    v7->_isPivotTable = objc_msgSend_isAPivotTable(v20, v21, v22, v23);
  }

  return v7;
}

- (TSTTableInfo)tableInfo
{
  tableInfo = self->_tableInfo;
  if (!tableInfo)
  {
    v6 = objc_msgSend_tableInfo(self->_tableModel, a2, v2, v3);
    v7 = self->_tableInfo;
    self->_tableInfo = v6;

    tableInfo = self->_tableInfo;
  }

  return tableInfo;
}

- (TSCECalculationEngine)calcEngine
{
  calcEngine = self->_calcEngine;
  if (!calcEngine)
  {
    v6 = objc_msgSend_calcEngine(self->_tableModel, a2, v2, v3);
    self->_calcEngine = v6;

    calcEngine = self->_calcEngine;
  }

  return calcEngine;
}

- (TSTTableTranslator)tableTranslator
{
  v4 = objc_msgSend_tableInfo(self->_tableModel, a2, v2, v3);
  v8 = objc_msgSend_translator(v4, v5, v6, v7);

  return v8;
}

- (BOOL)isCategorized
{
  v4 = objc_msgSend_tableInfo(self->_tableModel, a2, v2, v3);
  isCategorized = objc_msgSend_isCategorized(v4, v5, v6, v7);

  return isCategorized;
}

- (BOOL)isPivotDataModel
{
  v4 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v5 = v4 == 0;

  return v5;
}

- (void)willClose
{
  objc_msgSend_willClose(self->_tableInfo, a2, v2, v3);
  tableInfo = self->_tableInfo;
  self->_tableInfo = 0;

  tableModel = self->_tableModel;
  self->_tableModel = 0;
}

- (TSKUIDStruct)resolverUID
{
  v4 = objc_msgSend_tableUID(self->_tableModel, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)tableUID
{
  v4 = objc_msgSend_tableUID(self->_tableModel, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)conditionalStyleFormulaOwnerUID
{
  v4 = objc_msgSend_conditionalStyleFormulaOwnerUID(self->_tableModel, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)mergeOwnerUID
{
  v4 = objc_msgSend_mergeOwner(self->_tableModel, a2, v2, v3);
  v8 = objc_msgSend_ownerUID(v4, v5, v6, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (TSCERangeCoordinate)tableRangeCoordinate
{
  v4 = objc_msgSend_range(self->_tableModel, a2, v2, v3);

  v6 = j__TSUCellRectToTSCERangeCoordinate(v4, v5);
  result._bottomRight = v7;
  result._topLeft = v6;
  return result;
}

- (TSCERangeCoordinate)bodyRangeCoordinate
{
  v4 = objc_msgSend_bodyRange(self->_tableModel, a2, v2, v3);

  v6 = j__TSUCellRectToTSCERangeCoordinate(v4, v5);
  result._bottomRight = v7;
  result._topLeft = v6;
  return result;
}

- (TSCERangeCoordinate)footerRangeCoordinate
{
  v4 = objc_msgSend_footerRowRange(self->_tableModel, a2, v2, v3);

  v6 = j__TSUCellRectToTSCERangeCoordinate(v4, v5);
  result._bottomRight = v7;
  result._topLeft = v6;
  return result;
}

- (TSCERangeCoordinate)viewTableRangeCoordinate
{
  v4 = objc_msgSend_range(self->_tableInfo, a2, v2, v3);

  v6 = j__TSUCellRectToTSCERangeCoordinate(v4, v5);
  result._bottomRight = v7;
  result._topLeft = v6;
  return result;
}

- (TSCERangeCoordinate)viewBodyRangeCoordinate
{
  v4 = objc_msgSend_bodyRange(self->_tableInfo, a2, v2, v3);

  v6 = j__TSUCellRectToTSCERangeCoordinate(v4, v5);
  result._bottomRight = v7;
  result._topLeft = v6;
  return result;
}

- (NSString)sheetName
{
  v5 = objc_msgSend_documentRoot(self->_tableModel, a2, v2, v3);
  v6 = TSUProtocolCast();

  v9 = objc_msgSend_resolverContainerNameForResolver_(v6, v7, self->_tableModel, v8, &unk_283599058);

  return v9;
}

- (id)unpersistedFormulaStorageForCoord:(const TSUCellCoord *)coord withPrefix:(id)prefix withStyle:(id)style allowHeaderNames:(BOOL)names
{
  namesCopy = names;
  prefixCopy = prefix;
  styleCopy = style;
  v14 = objc_msgSend_context(self->_tableModel, v11, v12, v13);
  v15 = *coord;
  v19 = objc_msgSend_stylesheet(styleCopy, v16, v17, v18);
  v23 = objc_msgSend_documentRoot(self->_tableModel, v20, v21, v22);
  v27 = objc_msgSend_documentLocale(v23, v24, v25, v26);
  isLanguageFormulasDirectionRightToLeft = objc_msgSend_isLanguageFormulasDirectionRightToLeft(v27, v28, v29, v30);

  v32 = [TSCEUnpersistedStorage alloc];
  v36 = objc_msgSend_defaultListStyle(v19, v33, v34, v35);
  v38 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_paragraphDirection_(v32, v37, v14, prefixCopy, 5, v19, styleCopy, v36, 0, 0, isLanguageFormulasDirectionRightToLeft);

  v41 = objc_msgSend_formulaAtBaseCellCoord_(self->_tableModel, v39, v15, v40);
  if (objc_msgSend_isSpillFormula(v41, v42, v43, v44))
  {
  }

  else if (v41)
  {
    v48 = objc_msgSend_calcEngine(self->_tableModel, v45, v46, v47);
    v68[0] = objc_msgSend_tableUID(self->_tableModel, v49, v50, v51);
    v68[1] = v52;
    v53 = [TSTFormula alloc];
    v55 = objc_msgSend_initWithContext_calculationEngine_baseHostCell_formula_ownerUID_suppressAutomaticNamedReferenceInvalidation_(v53, v54, v14, v48, v15, v41, v68, 1);
    v57 = v55;
    if (namesCopy)
    {
      objc_msgSend_insertFormulaTextNonRecursive_printingOptions_(v55, v56, v38, 1);
    }

    else
    {
      objc_msgSend_insertFormulaTextNonRecursive_printingOptions_(v55, v56, v38, 3);
    }

    if (!v38)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v63 = objc_msgSend_formulaSyntaxErrorAtBaseCellCoord_(self->_tableModel, v45, v15, v47);
  if (v63)
  {
    v64 = objc_msgSend_copyStorageUnpersisted_(TSCEUnpersistedStorage, v61, v63, v62);

    if (v64)
    {
      objc_msgSend_insertString_atCharIndex_undoTransaction_(v64, v65, prefixCopy, 0, 0);
    }
  }

  else
  {

    v64 = 0;
  }

  v41 = 0;
  v38 = v64;
  if (v64)
  {
LABEL_14:
    objc_msgSend_detokenizeEntireStorage(v38, v58, v59, v60);
  }

LABEL_15:

  return v38;
}

- (BOOL)hasNamesInHeaders
{
  v5 = objc_msgSend_bodyRange(self->_tableModel, a2, v2, v3);
  v7 = v6;
  v10 = objc_msgSend_range(self->_tableModel, v6, v8, v9);
  if (v5 != v10)
  {
    return 1;
  }

  return ((v10 ^ v5) & 0x101FFFF00000000) != 0 || v7 != v11;
}

- (BOOL)isHeaderCell:(const TSUCellCoord *)cell
{
  v5 = *cell;
  v15.origin = objc_msgSend_headerRowRange(self->_tableModel, a2, cell, v3);
  v15.size = v6;
  v7 = v5;
  if (TSUCellRect::contains(&v15, v7))
  {
    return 1;
  }

  v14.origin = objc_msgSend_headerColumnRange(self->_tableModel, v8, v9, v10);
  v14.size = v12;
  v13 = v5;
  return TSUCellRect::contains(&v14, v13);
}

- (BOOL)isFooterCell:(const TSUCellCoord *)cell
{
  v4 = *cell;
  v8.origin = objc_msgSend_footerRowRange(self->_tableModel, a2, cell, v3);
  v8.size = v5;
  v6 = v4;
  return TSUCellRect::contains(&v8, v6);
}

- (BOOL)hasCellCoord:(const TSUCellCoord *)coord
{
  v8.origin = objc_msgSend_range(self->_tableModel, a2, coord, v3);
  v8.size = v5;
  v6 = *coord;
  return TSUCellRect::contains(&v8, v6);
}

- (id)makeReferenceWithTopLeft:(const TSUCellCoord *)left bottomRight:(const TSUCellCoord *)right preserveFlags:(const TSUPreserveFlags *)flags
{
  v9 = objc_msgSend_calcEngine(self, a2, left, right);
  v18[0] = objc_msgSend_tableUID(self, v10, v11, v12);
  v18[1] = v13;
  v15 = objc_msgSend_tableResolverWrapperForTableUID_(v9, v13, v18, v14);

  if (v15)
  {
    v16 = TSCETableResolverWrapper::makeReferenceWithTopLeft(v15, left, right, flags);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)rangeIsWithinTable:(const TSCERangeRef *)table
{
  v6 = objc_msgSend_tableRangeCoordinate(self, a2, table, v3);
  v8 = v7;
  if (!objc_msgSend_isPivotTable(self, v7, v9, v10))
  {
    topLeft = table->range._topLeft;
    bottomRight = table->range._bottomRight;
    v16 = *&table->range._topLeft;
    v17 = *&table->range._topLeft & 0xFFFF00000000;
    if (v16 == 0x7FFFFFFF || v17 == 0x7FFF00000000)
    {
      v19 = *&bottomRight & 0xFFFF00000000;
    }

    else
    {
      v19 = *&bottomRight & 0xFFFF00000000;
      if (bottomRight.row != 0x7FFFFFFF && v19 != 0x7FFF00000000 && WORD2(*&table->range._topLeft) <= bottomRight.column && topLeft.row <= bottomRight.row)
      {
        goto LABEL_31;
      }
    }

    v20 = v16 != 0x7FFFFFFF && v17 == 0x7FFF00000000;
    result = 0;
    if (v20 && v19 == 0x7FFF00000000)
    {
      if (bottomRight.row == 0x7FFFFFFF || topLeft.row > bottomRight.row)
      {
        return result;
      }
    }

    else
    {
      if (v16 != 0x7FFFFFFF)
      {
        return result;
      }

      if (v17 == 0x7FFF00000000)
      {
        return result;
      }

      if (v19 == 0x7FFF00000000)
      {
        return result;
      }

      result = 0;
      if (bottomRight.row != 0x7FFFFFFF || WORD2(*&table->range._topLeft) > WORD2(*&table->range._bottomRight))
      {
        return result;
      }
    }

LABEL_31:
    v22 = v6 & 0xFFFF00000000;
    if (v6 == 0x7FFFFFFFLL || v22 == 0x7FFF00000000)
    {
      v23 = v8 & 0xFFFF00000000;
    }

    else
    {
      v23 = v8 & 0xFFFF00000000;
      if (v8 != 0x7FFFFFFF && v23 != 0x7FFF00000000)
      {
        v24 = WORD2(v6);
        if (WORD2(v6) <= WORD2(v8) && v6 <= v8)
        {
          goto LABEL_50;
        }
      }
    }

    if (v6 != 0x7FFFFFFFLL && v22 == 0x7FFF00000000 && v23 == 0x7FFF00000000)
    {
      result = 1;
      if (v8 == 0x7FFFFFFF || v6 > v8)
      {
        return result;
      }

      v24 = 0x7FFF;
    }

    else
    {
      result = 1;
      if (v6 != 0x7FFFFFFFLL)
      {
        return result;
      }

      if (v22 == 0x7FFF00000000)
      {
        return result;
      }

      if (v23 == 0x7FFF00000000)
      {
        return result;
      }

      if (v8 != 0x7FFFFFFF)
      {
        return result;
      }

      v24 = WORD2(v6);
      if (WORD2(v6) > WORD2(v8))
      {
        return result;
      }
    }

LABEL_50:
    if (v24 <= topLeft.column && bottomRight.column <= WORD2(v8))
    {
      result = 1;
    }

    else
    {
      result = 0;
      if (v6 != 0x7FFFFFFFLL && v22 == 0x7FFF00000000 && (v8 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        result = v8 != 0x7FFFFFFF;
      }
    }

    if (v6 > topLeft.row || bottomRight.row > v8)
    {
      v25 = 0;
      if (v6 == 0x7FFFFFFFLL && v22 != 0x7FFF00000000 && (v8 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v25 = v8 == 0x7FFFFFFF;
      }
    }

    else
    {
      v25 = 1;
    }

    v26 = *&topLeft & 0xFFFF00000000;
    v27 = *&bottomRight & 0xFFFF00000000;
    if (topLeft.row != 0x7FFFFFFFLL || v26 == 0x7FFF00000000 || v27 == 0x7FFF00000000)
    {
      if (topLeft.row != 0x7FFFFFFFLL && v26 == 0x7FFF00000000 && v27 == 0x7FFF00000000)
      {
        if (bottomRight.row == 0x7FFFFFFF)
        {
          return result && v25;
        }

        else
        {
          return v25;
        }
      }
    }

    else if (bottomRight.row == 0x7FFFFFFF)
    {
      return result;
    }

    return result && v25;
  }

  return objc_msgSend_rangeIsWithinTableInView_(self, v11, table, v12);
}

- (BOOL)rangeIsWithinTableInView:(const TSCERangeRef *)view
{
  v5 = objc_msgSend_range(self->_tableInfo, a2, view, v3);
  v7 = j__TSUCellRectToTSCERangeCoordinate(v5, v6);
  topLeft = view->range._topLeft;
  bottomRight = view->range._bottomRight;
  v11 = *&view->range._topLeft;
  v12 = *&view->range._topLeft & 0xFFFF00000000;
  if (v11 == 0x7FFFFFFF || v12 == 0x7FFF00000000)
  {
    v14 = *&bottomRight & 0xFFFF00000000;
  }

  else
  {
    v14 = *&bottomRight & 0xFFFF00000000;
    if (bottomRight.row != 0x7FFFFFFF && v14 != 0x7FFF00000000 && WORD2(*&view->range._topLeft) <= bottomRight.column && topLeft.row <= bottomRight.row)
    {
      goto LABEL_27;
    }
  }

  if (v11 != 0x7FFFFFFF && v12 == 0x7FFF00000000 && v14 == 0x7FFF00000000)
  {
    v17 = 0;
    if (bottomRight.row == 0x7FFFFFFF || topLeft.row > bottomRight.row)
    {
      return v17;
    }
  }

  else
  {
    v17 = 0;
    if (v11 != 0x7FFFFFFF)
    {
      return v17;
    }

    if (v12 == 0x7FFF00000000)
    {
      return v17;
    }

    if (v14 == 0x7FFF00000000)
    {
      return v17;
    }

    v17 = 0;
    if (bottomRight.row != 0x7FFFFFFF || WORD2(*&view->range._topLeft) > WORD2(*&view->range._bottomRight))
    {
      return v17;
    }
  }

LABEL_27:
  v18 = v7 & 0xFFFF00000000;
  if (v7 == 0x7FFFFFFFLL || v18 == 0x7FFF00000000)
  {
    v19 = v8 & 0xFFFF00000000;
    goto LABEL_35;
  }

  v19 = v8 & 0xFFFF00000000;
  if (v8 == 0x7FFFFFFF || v19 == 0x7FFF00000000 || (v20 = WORD2(v7), WORD2(v7) > WORD2(v8)) || v7 > v8)
  {
LABEL_35:
    if (v7 != 0x7FFFFFFFLL && v18 == 0x7FFF00000000 && v19 == 0x7FFF00000000)
    {
      v17 = 1;
      if (v8 == 0x7FFFFFFF || v7 > v8)
      {
        return v17;
      }

      v20 = 0x7FFF;
    }

    else
    {
      v17 = 1;
      if (v7 != 0x7FFFFFFFLL)
      {
        return v17;
      }

      if (v18 == 0x7FFF00000000)
      {
        return v17;
      }

      if (v19 == 0x7FFF00000000)
      {
        return v17;
      }

      if (v8 != 0x7FFFFFFF)
      {
        return v17;
      }

      v20 = WORD2(v7);
      if (WORD2(v7) > WORD2(v8))
      {
        return v17;
      }
    }
  }

  if (v20 <= topLeft.column && bottomRight.column <= WORD2(v8))
  {
    v17 = 1;
  }

  else
  {
    v17 = 0;
    if (v7 != 0x7FFFFFFFLL && v18 == 0x7FFF00000000 && (v8 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v17 = v8 != 0x7FFFFFFF;
    }
  }

  if (v7 > topLeft.row || bottomRight.row > v8)
  {
    v21 = 0;
    if (v7 == 0x7FFFFFFFLL && v18 != 0x7FFF00000000 && (v8 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v21 = v8 == 0x7FFFFFFF;
    }
  }

  else
  {
    v21 = 1;
  }

  v22 = *&topLeft & 0xFFFF00000000;
  v23 = *&bottomRight & 0xFFFF00000000;
  if (topLeft.row == 0x7FFFFFFFLL && v22 != 0x7FFF00000000 && v23 != 0x7FFF00000000)
  {
    if (bottomRight.row == 0x7FFFFFFF)
    {
      return v17;
    }

    return v17 & v21;
  }

  if (topLeft.row == 0x7FFFFFFFLL || v22 != 0x7FFF00000000 || v23 != 0x7FFF00000000)
  {
    return v17 & v21;
  }

  v17 &= v21;
  if (bottomRight.row != 0x7FFFFFFF)
  {
    return v21;
  }

  return v17;
}

- (unsigned)rowHeightInBodyOfTable:(id)table
{
  tableCopy = table;
  v8 = objc_msgSend_bodyRowRange(self->_tableModel, v5, v6, v7);
  v10 = j__TSUCellRectToTSCERangeCoordinate(v8, v9);
  v12 = v11;
  if (objc_msgSend_isAPivotTable(self->_tableInfo, v11, v13, v14))
  {
    v18 = objc_msgSend_bodyRowRange(self->_tableInfo, v15, v16, v17);
    v10 = j__TSUCellRectToTSCERangeCoordinate(v18, v19);
    v12 = v15;
  }

  if (objc_msgSend_spansAllRows(tableCopy, v15, v16, v17))
  {
    v20 = v12 - v10 + 1;
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x5012000000;
    v28 = sub_221589234;
    v29 = sub_221589258;
    v30 = &unk_22188E88F;
    TSUIndexSet::TSUIndexSet(&v31);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_221589260;
    v24[3] = &unk_278467068;
    v24[5] = v10;
    v24[6] = v12;
    v24[4] = &v25;
    objc_msgSend_foreachRangeRef_(tableCopy, v21, v24, v22);
    v20 = TSUIndexSet::count((v26 + 6));
    _Block_object_dispose(&v25, 8);
    TSUIndexSet::~TSUIndexSet(&v31);
  }

  return v20;
}

- (unsigned)columnWidthInBodyOfTable:(id)table
{
  tableCopy = table;
  v8 = objc_msgSend_bodyColumnRange(self->_tableModel, v5, v6, v7);
  v10 = j__TSUCellRectToTSCERangeCoordinate(v8, v9);
  v12 = v11;
  if (objc_msgSend_isAPivotTable(self->_tableInfo, v11, v13, v14))
  {
    v18 = objc_msgSend_bodyColumnRange(self->_tableInfo, v15, v16, v17);
    v10 = j__TSUCellRectToTSCERangeCoordinate(v18, v19);
    v12 = v15;
  }

  if (objc_msgSend_spansAllColumns(tableCopy, v15, v16, v17))
  {
    v20 = WORD2(v12) - WORD2(v10) + 1;
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x5012000000;
    v28 = sub_221589234;
    v29 = sub_221589258;
    v30 = &unk_22188E88F;
    TSUIndexSet::TSUIndexSet(&v31);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_221589850;
    v24[3] = &unk_278467068;
    v24[5] = v10;
    v24[6] = v12;
    v24[4] = &v25;
    objc_msgSend_foreachRangeRef_(tableCopy, v21, v24, v22);
    v20 = TSUIndexSet::count((v26 + 6));
    _Block_object_dispose(&v25, 8);
    TSUIndexSet::~TSUIndexSet(&v31);
  }

  return v20;
}

- (void)upgradeStyleForFormulatextForCellCoord:(const TSUCellCoord *)coord
{
  if ((*coord & 0x101FFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    v7 = objc_msgSend_cellsPendingWrite(self->_tableModel, a2, coord, v3);
    objc_msgSend_upgradeStyleForFormulatextForCellCoord_(v7, v5, coord, v6);
  }
}

- (TSCECoordMapper)coordMapper
{
  v4 = objc_msgSend_translator(self->_tableInfo, a2, v2, v3);
  v8 = objc_msgSend_coordinateMapper(v4, v5, v6, v7);

  return v8;
}

- (TSKUIDStruct)rowUIDForRowIndex:(unsigned int)index
{
  v4 = *&index;
  v5 = objc_msgSend_columnRowUIDMap(self->_tableModel, a2, *&index, v3);
  v8 = objc_msgSend_rowUIDForRowIndex_(v5, v6, v4, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (unsigned)rowIndexForRowUID:(const TSKUIDStruct *)d
{
  dCopy = d;
  v5 = objc_msgSend_columnRowUIDMap(self->_tableModel, a2, d, v3);
  LODWORD(dCopy) = objc_msgSend_rowIndexForRowUID_(v5, v6, dCopy->_lower, dCopy->_upper);

  return dCopy;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowIndexes:(SEL)indexes
{
  v14 = a4;
  v9 = objc_msgSend_columnRowUIDMap(self->_tableModel, v6, v7, v8);
  v12 = v9;
  if (v9)
  {
    objc_msgSend_rowUIDsForRowIndexes_(v9, v10, v14, v11);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (id)mutableRowIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_columnRowUIDMap(self->_tableModel, a2, ds, v3);
  v8 = objc_msgSend_mutableRowIndexesForUIDs_(v5, v6, ds, v7);

  return v8;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUIDsForRowRange:(SEL)range
{
  length = a4.length;
  location = a4.location;
  v7 = objc_msgSend_columnRowUIDMap(self->_tableModel, range, a4.location, a4.length);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_rowUIDsForRowRange_(v7, v8, location, length);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)viewOrderedRowUids:(SEL)uids
{
  v7 = objc_msgSend_rowIndexesForUIDs_(self->_tableInfo, uids, a4, v4);
  tableInfo = self->_tableInfo;
  v11 = v7;
  if (tableInfo)
  {
    objc_msgSend_rowUIDsForRowIndexes_(tableInfo, v7, v7, v8);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStruct)columnUIDForColumnIndex:(unsigned __int16)index
{
  indexCopy = index;
  v5 = objc_msgSend_columnRowUIDMap(self->_tableModel, a2, index, v3);
  v8 = objc_msgSend_columnUIDForColumnIndex_(v5, v6, indexCopy, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (unsigned)columnIndexForColumnUID:(const TSKUIDStruct *)d
{
  dCopy = d;
  v5 = objc_msgSend_columnRowUIDMap(self->_tableModel, a2, d, v3);
  LOWORD(dCopy) = objc_msgSend_columnIndexForColumnUID_(v5, v6, dCopy->_lower, dCopy->_upper);

  return dCopy;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnIndexes:(SEL)indexes
{
  v14 = a4;
  v9 = objc_msgSend_columnRowUIDMap(self->_tableModel, v6, v7, v8);
  v12 = v9;
  if (v9)
  {
    objc_msgSend_columnUIDsForColumnIndexes_(v9, v10, v14, v11);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (id)mutableColumnIndexesForUIDs:(const void *)ds
{
  v5 = objc_msgSend_columnRowUIDMap(self->_tableModel, a2, ds, v3);
  v8 = objc_msgSend_mutableColumnIndexesForUIDs_(v5, v6, ds, v7);

  return v8;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)columnUIDsForColumnRange:(SEL)range
{
  length = a4.length;
  location = a4.location;
  v7 = objc_msgSend_columnRowUIDMap(self->_tableModel, range, a4.location, a4.length);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_columnUIDsForColumnRange_(v7, v8, location, length);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (TSKUIDStruct)UIDForIndex:(unsigned int)index isRows:(BOOL)rows
{
  if (rows)
  {
    v4 = objc_msgSend_rowUIDForRowIndex_(self, a2, *&index, rows);
  }

  else
  {
    v4 = objc_msgSend_columnUIDForColumnIndex_(self, a2, index, rows);
  }

  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForIndexes:(SEL)indexes isRows:(id)rows
{
  v5 = a5;
  rowsCopy = rows;
  v10 = rowsCopy;
  if (v5)
  {
    objc_msgSend_rowUIDsForRowIndexes_(self, rowsCopy, rowsCopy, v8);
  }

  else
  {
    objc_msgSend_columnUIDsForColumnIndexes_(self, rowsCopy, rowsCopy, v8);
  }

  return result;
}

- (id)mutableIndexesForUIDs:(const void *)ds isRows:(BOOL)rows
{
  if (rows)
  {
    objc_msgSend_mutableRowIndexesForUIDs_(self, a2, ds, rows);
  }

  else
  {
    objc_msgSend_mutableColumnIndexesForUIDs_(self, a2, ds, rows);
  }
  v4 = ;

  return v4;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)UIDsForRange:(SEL)range isRows:(_NSRange)rows
{
  if (a5)
  {
    return objc_msgSend_rowUIDsForRowRange_(self, range, rows.location, rows.length);
  }

  else
  {
    return objc_msgSend_columnUIDsForColumnRange_(self, range, rows.location, rows.length);
  }
}

- (id)UIDSetForIndexes:(id)indexes isRows:(BOOL)rows
{
  rowsCopy = rows;
  indexesCopy = indexes;
  v10 = objc_msgSend_columnRowUIDMap(self->_tableModel, v7, v8, v9);
  v12 = objc_msgSend_UIDSetForIndexes_isRows_(v10, v11, indexesCopy, rowsCopy);

  return v12;
}

- (id)mutableIndexesForUIDSet:(id)set isRows:(BOOL)rows notFoundUIDs:(id)ds
{
  rowsCopy = rows;
  setCopy = set;
  dsCopy = ds;
  v13 = objc_msgSend_columnRowUIDMap(self->_tableModel, v10, v11, v12);
  v15 = objc_msgSend_mutableIndexesForUIDSet_isRows_notFoundUIDs_(v13, v14, setCopy, rowsCopy, dsCopy);

  return v15;
}

- (TSKUIDStruct)firstUidFromUIDSet:(id)set isRows:(BOOL)rows
{
  rowsCopy = rows;
  setCopy = set;
  v10 = objc_msgSend_columnRowUIDMap(self->_tableModel, v7, v8, v9);
  isRows = objc_msgSend_firstUidFromUIDSet_isRows_(v10, v11, setCopy, rowsCopy);
  v14 = v13;

  v15 = isRows;
  v16 = v14;
  result._upper = v16;
  result._lower = v15;
  return result;
}

- (id)UIDSetForRange:(_NSRange)range isRows:(BOOL)rows
{
  rowsCopy = rows;
  v6 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, range.location, range.length);
  v8 = objc_msgSend_UIDSetForIndexes_isRows_(self, v7, v6, rowsCopy);

  return v8;
}

- (TSCERangeCoordinate)expandCellRangeToCoverMergedCells:(const TSCERangeCoordinate *)cells
{
  topLeft = cells->_topLeft;
  bottomRight = cells->_bottomRight;
  v7 = objc_msgSend_range(self->_tableModel, a2, cells, v3);
  v8 = __C(topLeft, bottomRight, v7);
  v10 = v9;
  v13 = objc_msgSend_mergeOwner(self->_tableModel, v9, v11, v12);
  v15 = objc_msgSend_expandBaseCellRectToCoverMergedCells_(v13, v14, v8, v10);
  v17 = v16;

  v18 = j__TSUCellRectToTSCERangeCoordinate(v15, v17);
  result._bottomRight = v19;
  result._topLeft = v18;
  return result;
}

- (vector<TSUModelCellRect,)mergeRangesIntersectingCellRange:(TSTTableResolver *)self
{
  topLeft = a4->_topLeft;
  bottomRight = a4->_bottomRight;
  v9 = objc_msgSend_range(self->_tableModel, a3, a4, v4);
  v10 = __C(topLeft, bottomRight, v9);
  v12 = v11;
  v15 = objc_msgSend_mergeOwner(self->_tableModel, v11, v13, v14);
  v18 = v15;
  if (v15)
  {
    objc_msgSend_mergeRangesIntersectingBaseCellRect_(v15, v16, v10, v12);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (TSUModelCellRect)mergedRangeForBaseCellCoord:(const TSUModelCellCoord *)coord
{
  v4 = objc_msgSend_mergedRangeForBaseCellCoord_(self->_tableModel, a2, *coord, v3);
  result.var0.size = v5;
  result.var0.origin = v4;
  return result;
}

- (id)canonicalCellReferenceForReference:(id)reference
{
  referenceCopy = reference;
  v7 = objc_msgSend_rangeCoord(referenceCopy, v4, v5, v6);
  v27._topLeft = v7;
  v27._bottomRight = v8;
  if (v7 == 0x7FFFFFFF || (v7 & 0xFFFF00000000) == 0x7FFF00000000 || v8.row == 0x7FFFFFFF || (*&v8 & 0xFFFF00000000) == 0x7FFF00000000 || WORD2(v7) > v8.column || v7 > v8.row || !TSCERangeCoordinate::isSingleCell(&v27) || (v15 = objc_msgSend_tableResolver(referenceCopy, v9, v10, v11)) == 0 || (v26.origin = objc_msgSend_topLeft(referenceCopy, v12, v13, v14), v26.origin = TSCETableResolverWrapper::mergedRangeForBaseCellCoord(v15, &v26, v16, v17), v26.size = v18, !TSUCellRect::isValid(&v26)))
  {
    v21 = referenceCopy;
  }

  else
  {
    origin = v26.origin;
    v19 = [TSCEEvalRef alloc];
    v24 = 0;
    v21 = objc_msgSend_initWithTableResolver_topLeft_bottomRight_preserveFlags_(v19, v20, v15, &origin, &origin, &v24);
  }

  v22 = v21;

  return v22;
}

- (TSCERangeCoordinate)preMergeRangeFromUidTract:(id)tract
{
  tractCopy = tract;
  v8 = tractCopy;
  if (!tractCopy)
  {
    goto LABEL_7;
  }

  v9 = objc_msgSend_columnUids(tractCopy, v5, v6, v7);
  v12 = objc_msgSend_mutableColumnIndexesForUIDs_(self, v10, v9, v11);
  v16 = objc_msgSend_rowUids(v8, v13, v14, v15);
  v19 = objc_msgSend_mutableRowIndexesForUIDs_(self, v17, v16, v18);
  if (!objc_msgSend_count(v19, v20, v21, v22) || !objc_msgSend_count(v12, v23, v24, v25))
  {

    goto LABEL_7;
  }

  Index = objc_msgSend_firstIndex(v12, v26, v27, v28);
  v33 = objc_msgSend_firstIndex(v19, v30, v31, v32);
  v37 = objc_msgSend_lastIndex(v12, v34, v35, v36);
  v41 = objc_msgSend_lastIndex(v19, v38, v39, v40);
  v44 = v33 | (Index << 32);
  v45 = v41;
  v46 = v41 | (v37 << 32);
  if (v44 != 0x7FFF7FFFFFFFLL)
  {
    v48 = Index;
    if (v46 == 0x7FFF7FFFFFFFLL)
    {
LABEL_10:
      v47 = 0x100000001;
      v45 = v33;
      goto LABEL_47;
    }

    if (Index == 0x7FFFLL || v33 != 0x7FFFFFFFLL)
    {
      v53 = Index != 0x7FFFLL && v33 == 0x7FFFFFFF;
      if (v33 <= v41)
      {
        v53 = 1;
      }

      if (v33 < v41 || !v53)
      {
        goto LABEL_32;
      }

      if (Index == 0x7FFFLL && v33 != 0x7FFFFFFFLL)
      {
        v47 = 0x100000001;
        v45 = v33;
        v48 = 0x7FFFLL;
        goto LABEL_47;
      }
    }

    if (Index <= v37)
    {
      v51 = Index == 0x7FFFLL ? 0x7FFF : Index;
      if (v51 >= v37)
      {
        goto LABEL_10;
      }
    }

LABEL_32:
    if (Index >= v37)
    {
      v54 = v37;
    }

    else
    {
      v54 = Index;
    }

    if (Index == 0x7FFFLL)
    {
      v55 = 0x7FFF;
    }

    else
    {
      v55 = Index;
    }

    if (v37 > v55)
    {
      v55 = v37;
    }

    if (v33 >= v41)
    {
      v45 = v41;
    }

    else
    {
      v45 = v33;
    }

    if (v33 <= v41)
    {
      v56 = v41;
    }

    else
    {
      v56 = v33;
    }

    v47 = (((v55 - v54 + 1) | ((v56 - v45) << 32)) + 0x100000000);
    v48 = v54;
    goto LABEL_47;
  }

  v47 = 0x100000001;
  v48 = v37;
LABEL_47:
  v60.origin = (v45 | (v48 << 32));
  v60.size = v47;
  v59.origin = objc_msgSend_mergedRangeForBaseCellCoord_(self->_tableModel, v42, *&v60.origin, v43);
  v59.size = v57;
  if (TSUCellRect::isValid(&v59) & 1) == 0 || TSUCellRect::isSingleCell(&v60) && v60.origin.row == v59.origin.row && ((*&v59.origin ^ *&v60.origin) & 0x101FFFF00000000) == 0 || (TSUCellRect::contains(&v60, &v59))
  {

    goto LABEL_8;
  }

  v58 = TSUCellRect::contains(&v59, &v60);

  if (!v58)
  {
    goto LABEL_8;
  }

LABEL_7:
  v44 = 0x7FFF7FFFFFFFLL;
  v46 = 0x7FFF7FFFFFFFLL;
LABEL_8:

  v49 = v44;
  v50 = v46;
  result._bottomRight = v50;
  result._topLeft = v49;
  return result;
}

- (TSCERangeCoordinate)apparentRangeForRange:(const TSCERangeCoordinate *)range rangeContext:(unsigned __int8)context
{
  contextCopy = context;
  v7 = 0x7FFF7FFFFFFFLL;
  v8 = objc_msgSend_bodyRange(self->_tableModel, a2, range, context);
  v10 = j__TSUCellRectToTSCERangeCoordinate(v8, v9);
  v12 = v11;
  v15 = objc_msgSend_range(self->_tableModel, v11, v13, v14);
  v17 = j__TSUCellRectToTSCERangeCoordinate(v15, v16);
  v19 = v18;
  topLeft = range->_topLeft;
  bottomRight = range->_bottomRight;
  v22 = WORD2(*&range->_topLeft);
  v28 = v22 >= WORD2(v17) && topLeft <= v19 && topLeft >= v17 && v22 <= WORD2(v19) && WORD2(bottomRight) >= WORD2(v17) && bottomRight <= v19 && bottomRight >= v17;
  v29 = topLeft & 0xFFFF00000000;
  if (v28 && WORD2(bottomRight) <= WORD2(v19))
  {
    v33 = bottomRight & 0xFFFF00000000;
    v34 = topLeft;
    goto LABEL_34;
  }

  v31 = bottomRight & 0xFFFF00000000;
  v34 = topLeft;
  if (topLeft == 0x7FFFFFFFLL && v29 != 0x7FFF00000000 && v31 != 0x7FFF00000000)
  {
    v34 = 0x7FFFFFFFLL;
    if (bottomRight == 0x7FFFFFFF)
    {
      v33 = bottomRight & 0xFFFF00000000;
      goto LABEL_42;
    }

LABEL_33:
    v32 = 0x7FFF7FFFFFFFLL;
    goto LABEL_55;
  }

  if (topLeft == 0x7FFFFFFFLL)
  {
    goto LABEL_33;
  }

  v33 = 0x7FFF00000000;
  if (v29 != 0x7FFF00000000)
  {
    goto LABEL_33;
  }

  v29 = 0x7FFF00000000;
  if (v31 != 0x7FFF00000000 || bottomRight == 0x7FFFFFFFLL)
  {
    goto LABEL_33;
  }

LABEL_34:
  if (v34 != 0x7FFFFFFF && v29 == 0x7FFF00000000 && v33 == 0x7FFF00000000)
  {
    if (bottomRight != 0x7FFFFFFF)
    {
      v32 = 0x7FFF7FFFFFFFLL;
      if (bottomRight <= v19)
      {
        if (contextCopy != 1)
        {
          if ((contextCopy & 0xFFFFFFFD) == 0)
          {
            v12 = v12 & 0xFFFFFFFF00000000 | v19;
            v17 = v10 & 0xFFFFFFFF00000000;
LABEL_52:
            v19 = v12;
            goto LABEL_53;
          }

          goto LABEL_54;
        }

        goto LABEL_53;
      }

      goto LABEL_55;
    }

LABEL_50:
    if (contextCopy == 2)
    {
      v17 = v10;
      goto LABEL_52;
    }

    goto LABEL_54;
  }

LABEL_42:
  if (v34 != 0x7FFFFFFF || v29 == 0x7FFF00000000 || v33 == 0x7FFF00000000 || bottomRight != 0x7FFFFFFFLL)
  {
    goto LABEL_50;
  }

  v32 = 0x7FFF7FFFFFFFLL;
  if (WORD2(bottomRight) <= WORD2(v19))
  {
    if (contextCopy != 1)
    {
      if ((contextCopy & 0xFFFFFFFD) == 0)
      {
        v12 = v12 & 0xFFFF0000FFFFFFFFLL | (WORD2(v19) << 32);
        v17 = v10 & 0xFFFF0000FFFFFFFFLL;
        goto LABEL_52;
      }

LABEL_54:
      v7 = topLeft;
      v32 = bottomRight;
      goto LABEL_55;
    }

LABEL_53:
    topLeft = sub_22158AA80(topLeft, bottomRight, v17, v19);
    goto LABEL_54;
  }

LABEL_55:
  v35 = v7;
  v36 = v32;
  result._bottomRight = v36;
  result._topLeft = v35;
  return result;
}

- (TSCECellTractRefCore)apparentTractRefForTractRef:(SEL)ref rangeContext:(const TSCECellTractRefCore *)context
{
  v5 = a5;
  sub_2210F0C3C(retstr);
  v44.origin = objc_msgSend_range(self->_tableModel, v9, v10, v11);
  v44.size = v12;
  v13 = TSCECellTractRefCore::topLeft(context);
  v14 = TSCECellTractRefCore::bottomRight(context);
  v43.origin = v13;
  v43.size = (((WORD2(v14) - WORD2(v13) + 1) | ((v14 - v13) << 32)) + 0x100000000);
  isPivotTable = objc_msgSend_isPivotTable(self, v15, v16, v17);
  if (isPivotTable)
  {
    v44.origin = objc_msgSend_range(self->_tableInfo, v18, v19, v20);
    v44.size = v22;
  }

  if ((TSUCellRect::contains(&v44, &v43) & 1) != 0 || (result = TSUCellRect::isSpanning(&v43), result))
  {
    spanType = context->_spanType;
    if (spanType != 2)
    {
      if (spanType != 1)
      {
        if (v5 == 2)
        {
          TSUIndexSet::operator=();
          TSUIndexSet::operator=();
          retstr->_tableUID = context->_tableUID;
          *(&retstr->_tableUID._upper + 5) = *(&context->_tableUID._upper + 5);
          if (isPivotTable)
          {
            v42.origin = objc_msgSend_bodyRange(self->_tableInfo, v34, v35, v36);
            v42.size = v37;
            return TSCECellTractRefCore::intersectWithCellRect(retstr, &v42);
          }

          else
          {
            v42.origin = objc_msgSend_bodyRange(self->_tableModel, v34, v35, v36);
            v42.size = v38;
            return TSCECellTractRefCore::intersectWithCellRect(retstr, &v42);
          }
        }

        else
        {
          TSUIndexSet::operator=();
          result = TSUIndexSet::operator=();
          retstr->_tableUID = context->_tableUID;
          *(&retstr->_tableUID._upper + 5) = *(&context->_tableUID._upper + 5);
        }

        return result;
      }

      v25 = TSUCellRect::lastRow(&v44);
      result = TSUCellRect::lastRow(&v43);
      if (v25 < result)
      {
        return result;
      }

      TSUIndexSet::operator=();
      result = TSUIndexSet::operator=();
      retstr->_tableUID = context->_tableUID;
      *(&retstr->_tableUID._upper + 5) = *(&context->_tableUID._upper + 5);
      if (v5 != 1)
      {
        if ((v5 & 0xFFFFFFFD) == 0)
        {
          if (isPivotTable)
          {
            v42.origin = objc_msgSend_bodyColumnRange(self->_tableInfo, v26, v27, v28);
            v42.size = v29;
            return TSCECellTractRefCore::intersectWithCellRect(retstr, &v42);
          }

          else
          {
            v42.origin = objc_msgSend_bodyColumnRange(self->_tableModel, v26, v27, v28);
            v42.size = v40;
            return TSCECellTractRefCore::intersectWithCellRect(retstr, &v42);
          }
        }

        return result;
      }

      return TSCECellTractRefCore::intersectWithCellRect(retstr, &v44);
    }

    v30 = TSUCellRect::lastColumn(&v44);
    result = TSUCellRect::lastColumn(&v43);
    if (v30 < result)
    {
      return result;
    }

    TSUIndexSet::operator=();
    result = TSUIndexSet::operator=();
    retstr->_tableUID = context->_tableUID;
    *(&retstr->_tableUID._upper + 5) = *(&context->_tableUID._upper + 5);
    if (v5 == 1)
    {
      return TSCECellTractRefCore::intersectWithCellRect(retstr, &v44);
    }

    if ((v5 & 0xFFFFFFFD) == 0)
    {
      if (isPivotTable)
      {
        v42.origin = objc_msgSend_bodyRowRange(self->_tableInfo, v31, v32, v33);
        v42.size = v39;
        return TSCECellTractRefCore::intersectWithCellRect(retstr, &v42);
      }

      else
      {
        v42.origin = objc_msgSend_bodyRowRange(self->_tableModel, v31, v32, v33);
        v42.size = v41;
        return TSCECellTractRefCore::intersectWithCellRect(retstr, &v42);
      }
    }
  }

  return result;
}

- (id)apparentGridForRangeContext:(id)context rangeContext:(unsigned __int8)rangeContext spansAllColumns:(BOOL)columns spansAllRows:(BOOL)rows
{
  rowsCopy = rows;
  columnsCopy = columns;
  rangeContextCopy = rangeContext;
  contextCopy = context;
  v56.origin = objc_msgSend_range(self->_tableModel, v11, v12, v13);
  v56.size = v14;
  v17 = objc_msgSend_topLeftCoord(contextCopy, v14, v15, v16);
  v21 = objc_msgSend_topLeftCoord(contextCopy, v18, v19, v20);
  v25 = objc_msgSend_dimensions(contextCopy, v22, v23, v24);
  v29 = objc_msgSend_dimensions(contextCopy, v26, v27, v28);
  *(&v30 + 1) = v17;
  *&v30 = v21;
  isPivotTable = objc_msgSend_isPivotTable(self, v31, v32, v33, (v30 >> 32) & 0xFFFFFFFFFFFFLL, v29 & 0xFFFFFFFF00000000 | v25);
  if (isPivotTable)
  {
    v56.origin = objc_msgSend_range(self->_tableInfo, v34, v35, v36);
    v56.size = v38;
  }

  if (TSUCellRect::contains(&v56, &v55))
  {
    if (columnsCopy)
    {
      if (rangeContextCopy != 1)
      {
        if ((rangeContextCopy & 0xFFFFFFFD) == 0)
        {
          if (isPivotTable)
          {
            v42 = objc_msgSend_bodyColumnRange(self->_tableInfo, v39, v40, v41);
LABEL_22:
            objc_msgSend_intersectionWithCellRect_(contextCopy, v43, v42, v43);
            goto LABEL_23;
          }

          v49 = objc_msgSend_bodyColumnRange(self->_tableModel, v39, v40, v41);
          v48 = objc_msgSend_intersectionWithCellRect_(contextCopy, v50, v49, v50);
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (!rowsCopy)
      {
        if (rangeContextCopy == 2)
        {
          if (isPivotTable)
          {
            v42 = objc_msgSend_bodyRange(self->_tableInfo, v39, v40, v41);
            goto LABEL_22;
          }

          v46 = objc_msgSend_bodyRange(self->_tableModel, v39, v40, v41);
          v48 = objc_msgSend_intersectionWithCellRect_(contextCopy, v47, v46, v47);
LABEL_24:
          v45 = v48;
          goto LABEL_25;
        }

LABEL_17:
        v45 = 0;
LABEL_25:
        if (v45)
        {
          v51 = v45;
        }

        else
        {
          v51 = contextCopy;
        }

        v44 = v51;

        goto LABEL_29;
      }

      if (rangeContextCopy != 1)
      {
        if ((rangeContextCopy & 0xFFFFFFFD) == 0)
        {
          if (!isPivotTable)
          {
            v53 = objc_msgSend_bodyRowRange(self->_tableModel, v39, v40, v41);
            v48 = objc_msgSend_intersectionWithCellRect_(contextCopy, v54, v53, v54);
            goto LABEL_24;
          }

          v42 = objc_msgSend_bodyRowRange(self->_tableInfo, v39, v40, v41);
          goto LABEL_22;
        }

        goto LABEL_17;
      }
    }

    objc_msgSend_intersectionWithCellRect_(contextCopy, v39, *&v56.origin, *&v56.size);
    v48 = LABEL_23:;
    goto LABEL_24;
  }

  v44 = objc_opt_new();
LABEL_29:

  return v44;
}

- (TSCECellCoordSet)cellsModifiedInCurrentRecalcCycle
{
  result = self->_tableModel;
  if (result)
  {
    return (MEMORY[0x2821F9670])(result, sel_cellsModifiedInCurrentRecalcCycle);
  }

  retstr->_rowsPerColumn.__tree_.__size_ = 0;
  retstr->_rectRepresentation = 0u;
  *&retstr->_rowsPerColumn.__tree_.__begin_node_ = 0u;
  return result;
}

- (void)resetDependenciesForCell:(const TSUCellCoord *)cell calcEngine:(id)engine
{
  engineCopy = engine;
  v6 = *cell;
  v10 = objc_msgSend_formulaSpecAtBaseCellCoord_(self->_tableModel, v7, *cell, v8);
  if (v10)
  {
    objc_msgSend_updateCalculationEngineForFormula_inBaseCellCoord_usingCalcEngine_(self->_tableModel, v9, v10, v6, engineCopy);
  }
}

- (void)resetAllFormulaDependenciesForCell:(const TSUCellCoord *)cell calcEngine:(id)engine
{
  engineCopy = engine;
  v7 = *cell;
  if (!objc_msgSend_cellExistsAtBaseCellCoord_(self->_tableModel, v8, *cell, v9))
  {
    goto LABEL_4;
  }

  v13 = objc_msgSend_newCell(self->_tableModel, v10, v11, v12);
  if (objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self->_tableModel, v14, v13, v7, 1))
  {

LABEL_4:
    v46 = objc_msgSend_tableUID(self->_tableModel, v10, v11, v12);
    v47 = v15;
    objc_msgSend_removeFormulaAt_inOwner_(engineCopy, v15, cell, &v46);
    v19 = objc_msgSend_conditionalStyleFormulaOwner(self->_tableModel, v16, v17, v18);
    objc_msgSend_removeFormulaAtCellID_(v19, v20, *cell, v21);
    v13 = v19;
    goto LABEL_5;
  }

  if (!v13)
  {
    goto LABEL_4;
  }

  if (objc_msgSend_hasFormula(v13, v10, v11, v12))
  {
    v25 = objc_msgSend_cellSpec(v13, v22, v23, v24);
    v29 = objc_msgSend_asFormulaSpec(v25, v26, v27, v28);

    if (v29)
    {
      objc_msgSend_updateCalculationEngineForFormula_inBaseCellCoord_usingCalcEngine_(self->_tableModel, v30, v29, v7, engineCopy);
    }
  }

  else
  {
    v46 = objc_msgSend_tableUID(self->_tableModel, v22, v23, v24);
    v47 = v34;
    objc_msgSend_removeFormulaAt_inOwner_(engineCopy, v34, cell, &v46);
  }

  if (objc_msgSend_hasConditionalStyle(v13, v31, v32, v33))
  {
    v38 = objc_msgSend_conditionalStyle(v13, v35, v36, v37);
    v42 = objc_msgSend_conditionalStyleFormulaOwner(self->_tableModel, v39, v40, v41);
    objc_msgSend_replaceFormulaForConditionalStyle_atCellID_(v42, v43, v38, *cell);
  }

  else
  {
    v38 = objc_msgSend_conditionalStyleFormulaOwner(self->_tableModel, v35, v36, v37);
    objc_msgSend_removeFormulaAtCellID_(v38, v44, *cell, v45);
  }

LABEL_5:
}

- (TSUCellCoord)resolvedCellCoordForIntersectionRef:(id)ref hostCell:(const TSUCellCoord *)cell useImplicitIntersection:(BOOL)intersection
{
  intersectionCopy = intersection;
  refCopy = ref;
  v11 = objc_msgSend_rangeCoord(refCopy, v8, v9, v10);
  if (objc_msgSend_tableResolver(refCopy, v12, v13, v14, v11, v12))
  {
    v18 = objc_msgSend_tableResolver(refCopy, v15, v16, v17);
    v11 = TSCETableResolverWrapper::resolvedCellCoordForIntersection(v18, &v20, cell, intersectionCopy);
  }

  return v11;
}

- (TSUCellCoord)resolvedCellCoordForIntersection:(const TSCERangeCoordinate *)intersection hostCell:(const TSUCellCoord *)cell useImplicitIntersection:(BOOL)implicitIntersection
{
  implicitIntersectionCopy = implicitIntersection;
  topLeft = intersection->_topLeft;
  bottomRight = intersection->_bottomRight;
  if (bottomRight.row == *&intersection->_topLeft && ((*&intersection->_topLeft ^ *&bottomRight) & 0x101FFFF00000000) == 0)
  {
    v27 = *&topLeft & 0xFFFF00000000;
    v28 = *&bottomRight & 0xFFFF00000000;
    if (topLeft.row != 0x7FFFFFFFLL || v28 == 0x7FFF00000000 || v27 == 0x7FFF00000000)
    {
      if (bottomRight.row == 0x7FFFFFFF || topLeft.row == 0x7FFFFFFFLL || v28 != 0x7FFF00000000 || v27 != 0x7FFF00000000)
      {
        return topLeft;
      }
    }

    else if (bottomRight.row != 0x7FFFFFFF)
    {
      return topLeft;
    }
  }

  v12 = objc_msgSend_apparentRangeForRange_rangeContext_(self, a2, intersection, 0);
  v13 = v12;
  v15 = v14;
  v16 = HIDWORD(v12);
  v17 = WORD2(v12);
  v18 = v12 & 0xFFFF000000000000;
  v22 = objc_msgSend_bodyRangeCoordinate(self, v14, v19, v20);
  v23 = v18 & 0xFFFF0000FFFFFFFFLL | (v16 << 32);
  if (v13 == v15 && ((v23 ^ v15) & 0x101FFFF00000000) == 0)
  {
    v31 = v13 == 0x7FFFFFFFLL || v17 == 0x7FFF;
    if (v31)
    {
      topLeft = 0x7FFF7FFFFFFFLL;
    }

    else
    {
      topLeft = (v23 & 0xFFFFFFFF00000000 | v13);
    }

    if (!v31 || !implicitIntersectionCopy)
    {
      return topLeft;
    }
  }

  else if (!implicitIntersectionCopy)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  if (v13 == v15 && v13 != 0x7FFFFFFF)
  {
    column = cell->column;
    topLeft = (v13 | (column << 32));
    v25 = v15 & 0xFFFF00000000;
    if (v13 != 0x7FFFFFFFLL && v17 == 0x7FFF && v25 == 0x7FFF00000000)
    {
      if (v15 != 0x7FFFFFFF)
      {
        return topLeft;
      }
    }

    else if (v13 == 0x7FFFFFFFLL && v17 != 0x7FFF && v25 != 0x7FFF00000000 && v15 == 0x7FFFFFFFLL)
    {
      if (column != 0x7FFF && WORD2(v23) <= column)
      {
LABEL_49:
        if (WORD2(v15) >= column)
        {
          return topLeft;
        }
      }

LABEL_50:
      v32.i64[0] = 0xFFFFFFFFLL;
      v32.i64[1] = 0xFFFFFFFFLL;
      v33.i64[0] = 0xFFFF00000000;
      v33.i64[1] = 0xFFFF00000000;
      v34 = vmovn_s64(vceqq_s64(vandq_s8(*intersection, v33), vdupq_n_s64(0x7FFF00000000uLL)));
      v35 = vuzp1_s16(v34, v34);
      v35.i32[1] = vuzp1_s16(v35, vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(*intersection, v32), vdupq_n_s64(0x7FFFFFFFuLL))))).i32[1];
      if ((vminv_u16(v35) & (column < WORD2(v22))) == 0)
      {
        return 0x7FFF7FFFFFFFLL;
      }

      return topLeft;
    }

    if (column >= WORD2(v23))
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  if (v17 != WORD2(v15) || v17 == 0x7FFF)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  row = cell->row;
  topLeft = ((v17 << 32) | row);
  if (v13 == 0x7FFFFFFFLL && (v15 & 0xFFFF00000000) != 0x7FFF00000000 && v15 == 0x7FFFFFFFLL)
  {
    if (v17 >= WORD2(v23) && WORD2(v15) >= v17)
    {
      return topLeft;
    }
  }

  else if (v17 >= WORD2(v23) && row <= v15 && WORD2(v15) >= v17 && row >= v13)
  {
    return topLeft;
  }

  if (*&intersection->_topLeft != 0x7FFFFFFF)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  if ((*&intersection->_topLeft & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  v36 = intersection->_bottomRight;
  if ((*&v36 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  v37 = row < v22 || row > v21;
  v38 = v37;
  if (v36.row != 0x7FFFFFFF || !v38)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  return topLeft;
}

- (id)valueForCellCoord:(const TSUCellCoord *)coord fetchRichTextAttributesIfPlainText:(BOOL)text
{
  if (coord->row == 0x7FFFFFFF || (*coord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v5 = objc_msgSend_invalidReferenceError(TSCEError, a2, coord, text);
    v8 = objc_msgSend_errorValue_(TSCEErrorValue, v6, v5, v7);
  }

  else
  {
    textCopy = text;
    if (objc_msgSend_isPivotTable(self, a2, coord, text))
    {
      tableInfo = self->_tableInfo;
      v39 = 0;
      v15 = &v39;
      RichTextAttributesIfPlainText = objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(tableInfo, v13, &v39, *coord, textCopy);
    }

    else
    {
      v17 = *coord;
      tableModel = self->_tableModel;
      v38 = 0;
      v15 = &v38;
      RichTextAttributesIfPlainText = objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(tableModel, v13, &v38, v17, textCopy);
    }

    v19 = RichTextAttributesIfPlainText;
    v8 = *v15;
    if (v19)
    {
      if (v19 == 3)
      {
        v23 = objc_msgSend_invalidReferenceError(TSCEError, v20, v21, v22);
        v26 = objc_msgSend_errorValue_(TSCEErrorValue, v24, v23, v25);

        v8 = v26;
      }

      else
      {
        if (v19 != 1000)
        {
          v27 = MEMORY[0x277D81150];
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTTableResolver valueForCellCoord:fetchRichTextAttributesIfPlainText:]", v22);
          v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v30);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 866, 0, "something went wrong fetching data from the table.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
        }

        v36 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v20, v21, v22);

        v8 = v36;
      }
    }
  }

  return v8;
}

- (id)valueForCellUID:(const TSKUIDStructCoord *)d outGeometricPrecedent:(TSCECellRef *)precedent fetchRichTextAttributesIfPlainText:(BOOL)text
{
  if (*&d->_column == 0 || *&d->_row == 0)
  {
    v26 = objc_msgSend_invalidReferenceError(TSCEError, a2, d, precedent, text);
    v17 = objc_msgSend_errorValue_(TSCEErrorValue, v27, v26, v28);

    goto LABEL_8;
  }

  textCopy = text;
  tableInfo = self->_tableInfo;
  if (!tableInfo)
  {
    v30 = objc_msgSend_identityTranslator(self->_tableModel, a2, d, precedent);
    row = d->_row;
    column = d->_column;
    v59 = row;
    v34 = objc_msgSend_baseCellCoordForCellUID_(v30, v32, &column, v33);

    v38 = objc_msgSend_tableUID(self->_tableModel, v35, v36, v37, v34);
    precedent->coordinate = v34;
    precedent->_tableUID._lower = v38;
    precedent->_tableUID._upper = v39;
    v17 = objc_msgSend_valueForCellCoord_fetchRichTextAttributesIfPlainText_(self, v39, &v56, textCopy);
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  v10 = objc_msgSend_translator(tableInfo, a2, d, precedent);
  v11 = d->_row;
  column = d->_column;
  v59 = v11;
  v14 = objc_msgSend_viewCellCoordForCellUID_(v10, v12, &column, v13);
  v15 = self->_tableInfo;
  v57 = 0;
  objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(v15, v16, &v57, v14, textCopy);
  v17 = v57;
  v23 = objc_msgSend_baseCellCoordForViewCellCoord_(v10, v18, v14, v19);
  if (v23 == 0x7FFFFFFF || (v23 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v43 = objc_msgSend_coordinateMapper(v10, v20, v21, v22);
    v46 = objc_msgSend_summaryCellCoordForViewCellCoord_(v43, v44, v14, v45);

    if (v46 != 0x7FFFFFFF && (v46 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v50 = objc_msgSend_summaryModel(self->_tableInfo, v47, v48, v49);
      v54 = objc_msgSend_aggregateFormulaOwnerUID(v50, v51, v52, v53);
      precedent->coordinate = v46;
      precedent->_tableUID._lower = v54;
      precedent->_tableUID._upper = v55;
    }
  }

  else
  {
    v24 = objc_msgSend_tableUID(self->_tableInfo, v20, v21, v22);
    precedent->coordinate = v23;
    precedent->_tableUID._lower = v24;
    precedent->_tableUID._upper = v25;
  }

  if (!v17)
  {
LABEL_17:
    v17 = objc_msgSend_nilValue(TSCENilValue, v40, v41, v42);
  }

LABEL_8:

  return v17;
}

- (id)readValueForReference:(id)reference fromCellRef:(const TSCECellRef *)ref outValue:(id *)value readOptions:(unsigned __int16)options
{
  optionsCopy = options;
  referenceCopy = reference;
  coordinate = ref->coordinate;
  v14 = objc_msgSend_tableResolver(referenceCopy, v11, v12, v13);
  v18 = v14;
  if (v14)
  {
    v22 = TSCETableResolverWrapper::tableUID(v14, v15, v16, v17) == ref->_tableUID._lower && v19 == ref->_tableUID._upper;
    goto LABEL_9;
  }

  v23 = objc_msgSend_tableUID(referenceCopy, v15, v16, v17);
  v22 = (v23 | v24) == 0;
  if (v23 | v24)
  {
    v27 = objc_msgSend_calcEngine(self, v24, v25, v26);
    *&v127._columns = objc_msgSend_tableUID(referenceCopy, v34, v35, v36);
    v127._columns._singleRange._begin = v37;
    v33 = objc_msgSend_tableResolverWrapperForTableUID_(v27, v37, &v127, v38);
  }

  else
  {
    v27 = objc_msgSend_calcEngine(self, v24, v25, v26);
    *&v127._columns = objc_msgSend_tableUID(self, v28, v29, v30);
    v127._columns._singleRange._begin = v31;
    v33 = objc_msgSend_tableResolverWrapperForTableUID_(v27, v31, &v127, v32);
  }

  v18 = v33;

  if (v18)
  {
LABEL_9:
    v39 = objc_msgSend_tractRef(referenceCopy, v19, v20, v21);
    *&v127._columns |= 3u;
    *&v40.f64[0] = 0x8000000080000000;
    *&v40.f64[1] = 0x8000000080000000;
    v120 = vnegq_f64(v40);
    v127._columns._singleRange = v120;
    v127._columns._multipleRanges = 0;
    TSUIndexSet::operator=();
    *&v127._rows |= 3u;
    v127._rows._singleRange = v120;
    v127._rows._multipleRanges = 0;
    TSUIndexSet::operator=();
    v41 = *(v39 + 64);
    *(&v127._tableUID._upper + 5) = *(v39 + 77);
    v127._tableUID = v41;
    if ((sub_2210EE8F8(&v127._columns) & 1) == 0)
    {
      v58 = objc_msgSend_invalidReferenceError(TSCEError, v42, v43, v44);
      *value = objc_msgSend_errorValue_(TSCEErrorValue, v59, v58, v60);
      v61 = v58;
      v62 = 0;
      optionsCopy = v61;
      goto LABEL_53;
    }

    if (TSCECellTractRefCore::isSingleCell(&v127) && v127._spanType != 2)
    {
      if ((optionsCopy & 4) == 0 || v127._spanType != 1)
      {
LABEL_13:
        *&v123 = TSCETableResolverWrapper::tableUID(v18, v45, v46, v47);
        v123._singleRange._begin = v48;
        v49 = objc_msgSend_resolvedCellCoordForIntersectionRef_hostCell_useImplicitIntersection_(self, v48, referenceCopy, &coordinate, (optionsCopy & 4) == 0);
        v122 = v49;
        if (v22 && v49 == coordinate.row && ((*&coordinate ^ v49) & 0x101FFFF00000000) == 0)
        {
          v122 = 0x7FFF7FFFFFFFLL;
        }

        else if (v49 != 0x7FFFFFFF && (v49 & 0xFFFF00000000) != 0x7FFF00000000)
        {
          *&v126._columns = v49;
          v121.origin = TSCETableResolverWrapper::mergedRangeForBaseCellCoord(v18, &v126, v51, v52);
          v121.size = v53;
          if (!TSUCellRect::isValid(&v121) || v121.origin.row == v122.row && ((*&v122 ^ *&v121.origin) & 0x101FFFF00000000) == 0)
          {
            v57 = TSCETableResolverWrapper::valueForCellCoord(v18, &v122, (optionsCopy >> 1) & 1);
            goto LABEL_44;
          }

          if (optionsCopy)
          {
            v57 = objc_msgSend_emptyCellValue(TSCEEmptyCellValue, v54, v55, v56);
LABEL_44:
            v62 = 0;
            v61 = 0;
            optionsCopy = 0;
            *value = v57;
            goto LABEL_53;
          }

          *&v126._columns = v122;
          v126._columns._singleRange._begin = v122;
          *&v126._columns._singleRange._end = v123;
          v61 = objc_msgSend_invalidMergeReference_contextEntityUID_(TSCEError, v54, &v126, &v123);
          v116 = objc_msgSend_errorValue_(TSCEErrorValue, v118, v61, v119);
          goto LABEL_51;
        }

        *&v126._columns = objc_msgSend_rangeCoord(referenceCopy, v50, v51, v52, v120);
        v126._columns._singleRange._begin = v110;
        *&v126._columns._singleRange._end = v123;
        if (v22 && TSCERangeRef::containsCellRef(&v126, ref))
        {
          v113 = objc_msgSend_circularReferenceError(TSCEError, v110, v112, v111);
        }

        else
        {
          v113 = objc_msgSend_invalidRangeUsageErrorForReference_(TSCEError, v110, &v126, v111);
        }

        v61 = v113;
        v116 = objc_msgSend_errorValue_(TSCEErrorValue, v114, v113, v115);
LABEL_51:
        *value = v116;
        optionsCopy = 0;
LABEL_52:
        v62 = 1;
LABEL_53:
        TSUIndexSet::~TSUIndexSet(&v127._rows);
        TSUIndexSet::~TSUIndexSet(&v127._columns);
        if ((v62 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }
    }

    else if ((optionsCopy & 4) == 0)
    {
      goto LABEL_13;
    }

    v80 = objc_msgSend_rangeContextOverride(referenceCopy, v45, v46, v47, v120);
    if (v80 == 3)
    {
      v81 = 1;
    }

    else
    {
      v81 = objc_msgSend_rangeContextOverride(referenceCopy, v77, v78, v79);
    }

    *&v126._columns = -1;
    *&v82.f64[0] = 0x8000000080000000;
    *&v82.f64[1] = 0x8000000080000000;
    v126._columns._singleRange = vnegq_f64(v82);
    v126._columns._multipleRanges = 0;
    TSUIndexSet::operator=();
    *&v126._rows |= 3u;
    v126._rows._singleRange = v126._columns._singleRange;
    v126._rows._multipleRanges = 0;
    TSUIndexSet::operator=();
    v126._tableUID = v127._tableUID;
    *(&v126._tableUID._upper + 5) = *(&v127._tableUID._upper + 5);
    if (v81 != 1)
    {
      TSCETableResolverWrapper::apparentTractRefForTractRef(v18, &v126, v81, &v123);
      TSUIndexSet::operator=();
      TSUIndexSet::operator=();
      v126._tableUID = *v125;
      *(&v126._tableUID._upper + 5) = *&v125[13];
      TSUIndexSet::~TSUIndexSet(&v124);
      TSUIndexSet::~TSUIndexSet(&v123);
    }

    if (v22 && TSCECellTractRefCore::containsCoord(&v126, &coordinate))
    {
      v86 = objc_msgSend_circularReferenceError(TSCEError, v83, v84, v85);
      *value = objc_msgSend_errorValue_(TSCEErrorValue, v87, v86, v88);
      v61 = v86;
      v89 = 0;
      optionsCopy = v61;
    }

    else
    {
      if (v127._spanType - 1 > 1)
      {
        v102 = [TSCEReferenceValue alloc];
        *&v123 = 0;
        isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v102, v103, referenceCopy, &coordinate, &v123, optionsCopy & 1, 0);
        v104 = [TSCEReferenceBackedGrid alloc];
        inited = objc_msgSend_initWitRefValue_rangeContext_(v104, v105, isOutputOfAFunction, v81);
      }

      else
      {
        v90 = [TSCEEvalRef alloc];
        v92 = objc_msgSend_initWithTableResolver_tractRefCore_(v90, v91, v18, &v126);
        isOutputOfAFunction = v92;
        if (v80 != 3)
        {
          objc_msgSend_setRangeContextOverride_(v92, v93, v81, v94);
        }

        v96 = [TSCEReferenceValue alloc];
        *&v123 = 0;
        v98 = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v96, v97, isOutputOfAFunction, &coordinate, &v123, optionsCopy & 1, 0);
        v99 = [TSCEReferenceBackedGrid alloc];
        inited = objc_msgSend_initWitRefValue_rangeContext_(v99, v100, v98, v81);
      }

      objc_msgSend_setPermitsAccessInsideMergeRegions_(inited, v106, optionsCopy & 1, v107);
      *value = objc_msgSend_gridValue_(TSCEGridValue, v108, inited, v109);

      v61 = 0;
      v89 = 1;
    }

    TSUIndexSet::~TSUIndexSet(&v126._rows);
    TSUIndexSet::~TSUIndexSet(&v126._columns);
    if ((v89 & 1) == 0)
    {
      v62 = 0;
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v63 = MEMORY[0x277D81150];
  v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTTableResolver readValueForReference:fromCellRef:outValue:readOptions:]", v21);
  v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v66);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v68, v64, v67, 1041, 0, "Invalid table pointer in a reference to be resolved. Returning a bogus value. Please file a bug.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71);
  *value = objc_msgSend_nilValue(TSCENilValue, v72, v73, v74);
  v61 = objc_msgSend_errorForErrorType_(TSCEError, v75, 17, v76);
LABEL_54:
  v61 = v61;
  optionsCopy = v61;
LABEL_55:

  return optionsCopy;
}

- (TSCEFormat)format:(SEL)format fromCell:(id)cell
{
  cellCopy = cell;
  v10 = objc_msgSend_resolvedCellCoordForIntersectionRef_hostCell_useImplicitIntersection_(self, v9, cellCopy, a5, 1);
  v19 = 0;
  v14 = objc_msgSend_tableResolver(cellCopy, v11, v12, v13);
  v18 = v10;
  if (v14)
  {
    v15 = TSCETableResolverWrapper::formatAtBaseCellCoord(v14, &v18, &v19);
    v16 = v19;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  TSCEFormat::TSCEFormat(retstr, v15, v16);

  return result;
}

- (int64_t)interactionTypeForCell:(const TSUModelCellCoord *)cell
{
  v6 = objc_msgSend_newCell(self->_tableModel, a2, cell, v3);
  objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(self->_tableModel, v7, v6, *cell, 1);
  v11 = objc_msgSend_interactionType(v6, v8, v9, v10);

  return v11;
}

- (unsigned)getHidingAction:(id)action forRow:(BOOL)row
{
  rowCopy = row;
  actionCopy = action;
  v9 = objc_msgSend_topLeft(actionCopy, v6, v7, v8);
  v13 = objc_msgSend_bottomRight(actionCopy, v10, v11, v12);
  if (v9 != v13 || ((v13 ^ v9) & 0x101FFFF00000000) != 0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableResolver getHidingAction:forRow:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 1079, 0, "can't get hiding action of a range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  v26 = objc_msgSend_tableResolver(actionCopy, v14, v15, v16);
  if (v26)
  {
    v30 = TSCETableResolverWrapper::tableModel(v26, v27, v28, v29);
    objc_msgSend_tableInfo(v30, v31, v32, v33);
  }

  else
  {
    v30 = 0;
    objc_msgSend_tableInfo(0, v27, v28, v29);
  }
  v34 = ;
  v38 = objc_msgSend_hiddenStates(v34, v35, v36, v37);

  v42 = objc_msgSend_topLeft(actionCopy, v39, v40, v41);
  if (rowCopy)
  {
    v45 = objc_msgSend_hidingActionForBaseRowAtIndex_(v38, v43, v42, v44);
  }

  else
  {
    v45 = objc_msgSend_hidingActionForBaseColumnAtIndex_(v38, v43, WORD2(v42), v44);
  }

  v46 = sub_221387F28(v45);

  return v46;
}

- (unordered_set<TSKUIDStruct,)ownerUIDsInterestedInGroupByChange:()std:(std:(TSTTableResolver *)self :(SEL)a3 allocator<TSKUIDStruct>> *__return_ptr)retstr :(id)a4 equal_to<TSKUIDStruct>
{
  retstr->__table_.__bucket_list_ = 0u;
  *&retstr->__table_.__first_node_.__next_ = 0u;
  retstr->__table_.__max_load_factor_ = 1.0;
  v6 = objc_msgSend_tableInfo(self->_tableModel, a3, a4, v4);
  v10 = objc_msgSend_hiddenStates(v6, v7, v8, v9);

  if (objc_msgSend_hasCollapsedRows(v10, v11, v12, v13))
  {
    *&v19 = objc_msgSend_hiddenStateOwnerForRowsUID(v10, v14, v15, v16);
    *(&v19 + 1) = v17;
    sub_2211D6484(retstr, &v19, &v19);
  }

  return result;
}

- (TSKUIDStruct)resolveRelativeAncestorUid:(const TSKUIDStruct *)uid sourceRowUID:(const TSKUIDStruct *)d
{
  v6 = objc_msgSend_tableInfo(self->_tableModel, a2, uid, d);
  v10 = objc_msgSend_groupBy(v6, v7, v8, v9);

  v12 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(v10, v11, uid, d);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result._upper = v16;
  result._lower = v15;
  return result;
}

- (TSKUIDStruct)convertToRelativeAncestorUid:(const TSKUIDStruct *)uid rowUid:(const TSKUIDStruct *)rowUid
{
  v6 = objc_msgSend_tableInfo(self->_tableModel, a2, uid, rowUid);
  v10 = objc_msgSend_groupBy(v6, v7, v8, v9);

  v12 = objc_msgSend_convertToRelativeAncestorUid_atRowUid_(v10, v11, uid, rowUid);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result._upper = v16;
  result._lower = v15;
  return result;
}

- (TSKUIDStruct)groupByUUID
{
  v4 = objc_msgSend_tableInfo(self->_tableModel, a2, v2, v3);
  v8 = objc_msgSend_groupBy(v4, v5, v6, v7);
  v12 = objc_msgSend_groupByUid(v8, v9, v10, v11);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result._upper = v16;
  result._lower = v15;
  return result;
}

- (id)resolveCategoryRefAtRowUid:(id)uid rowUid:(const TSKUIDStruct *)rowUid containingTableUID:(const TSKUIDStruct *)d
{
  uidCopy = uid;
  v12 = objc_msgSend_tableInfo(self->_tableModel, v9, v10, v11);
  v16 = objc_msgSend_groupBy(v12, v13, v14, v15);

  v18 = objc_msgSend_resolveCategoryRef_atRowUid_inHostTable_(v16, v17, uidCopy, rowUid, d);

  return v18;
}

- (unsigned)groupLevelForGroupUid:(const TSKUIDStruct *)uid
{
  v5 = objc_msgSend_tableInfo(self->_tableModel, a2, uid, v3);
  v9 = objc_msgSend_groupBy(v5, v6, v7, v8);

  LOBYTE(v5) = objc_msgSend_groupLevelForGroupUid_(v9, v10, uid->_lower, uid->_upper);
  return v5;
}

- (unsigned)getNumberOfGroupByLevels
{
  v4 = objc_msgSend_tableInfo(self->_tableModel, a2, v2, v3);
  v8 = objc_msgSend_groupBy(v4, v5, v6, v7);
  v12 = objc_msgSend_numberOfLevels(v8, v9, v10, v11);

  return v12;
}

- (TSKUIDStruct)relativeAncestorGroupUid:(int)uid
{
  v4 = objc_msgSend_relativeAncestorGroupUid_(TSTGroupBy, a2, *&uid, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSCECellRef)indirectAggTypeChangePrecedent:(SEL)precedent
{
  v15 = objc_msgSend_calcEngine(self->_tableModel, precedent, a4, v4);
  v8 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v7, a4->_lower, a4->_upper);
  v12 = v8;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  if (v8)
  {
    v13 = objc_msgSend_indirectAggTypeChangeFormulaCoord(v8, v9, v10, v11);
    retstr->_tableUID = *a4;
    retstr->coordinate = v13;
  }

  return result;
}

- (TSCECellRef)groupingColumnsPrecedent:(SEL)precedent
{
  v15 = objc_msgSend_calcEngine(self->_tableModel, precedent, a4, v4);
  v8 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v7, a4->_lower, a4->_upper);
  v12 = v8;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  if (v8)
  {
    v13 = objc_msgSend_groupingColumnsFormulaCoord(v8, v9, v10, v11);
    retstr->_tableUID = *a4;
    retstr->coordinate = v13;
  }

  return result;
}

- (TSCECellRef)groupingColumnsPrecedentForCategoryRef:(SEL)ref
{
  v6 = a4;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  if (objc_msgSend_refersToPivotTable(v6, v7, v8, v9))
  {
    v13 = objc_msgSend_calcEngine(self, v10, v11, v12);
    v15 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v14, v6, v13);

    if (v15)
    {
      v24 = objc_msgSend_groupByUid(v15, v16, v17, v18);
      v25 = v19;
      objc_msgSend_groupingColumnsPrecedent_(self, v19, &v24, v20);
      *&retstr->coordinate.row = v26;
      retstr->_tableUID._upper = v27;
    }
  }

  else
  {
    v24 = objc_msgSend_groupByUid(v6, v10, v11, v12);
    v25 = v21;
    objc_msgSend_groupingColumnsPrecedent_(self, v21, &v24, v22);
    *&retstr->coordinate.row = v26;
    retstr->_tableUID._upper = v27;
  }

  return result;
}

- (TSCECellRef)groupingColumnHeadersPrecedent:(SEL)precedent
{
  v15 = objc_msgSend_calcEngine(self->_tableModel, precedent, a4, v4);
  v8 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v7, a4->_lower, a4->_upper);
  v12 = v8;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  if (v8)
  {
    v13 = objc_msgSend_groupingColumnHeadersFormulaCoord(v8, v9, v10, v11);
    retstr->_tableUID = *a4;
    retstr->coordinate = v13;
  }

  return result;
}

- (TSCECellRef)allAggsInGroupRootPrecedent:(SEL)precedent
{
  v15 = objc_msgSend_calcEngine(self->_tableModel, precedent, a4, v4);
  v8 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v7, a4->_lower, a4->_upper);
  v12 = v8;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  if (v8)
  {
    v13 = objc_msgSend_allAggsInGroupRootFormulaCoord(v8, v9, v10, v11);
    retstr->_tableUID = *a4;
    retstr->coordinate = v13;
  }

  return result;
}

- (TSCECellRef)groupingColumnOrderPrecedent:(SEL)precedent
{
  v7 = objc_msgSend_calcEngine(self->_tableModel, precedent, a4, v4);
  v9 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v8, a4->_lower, a4->_upper, v7);
  v13 = v9;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  if (v9)
  {
    objc_msgSend_columnOrderChangedPrecedent(v9, v10, v11, v12);
    *&retstr->coordinate.row = v15;
    retstr->_tableUID._upper = v16;
  }

  return result;
}

- (TSCECellRef)groupingRowOrderPrecedent:(SEL)precedent ignoreRecalc:(const TSKUIDStruct *)recalc
{
  v5 = a5;
  v8 = objc_msgSend_calcEngine(self->_tableModel, precedent, recalc, a5);
  v10 = objc_msgSend_groupByForUID_withCalcEngine_(TSTGroupBy, v9, recalc->_lower, recalc->_upper, v8);
  v14 = v10;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  if (v10)
  {
    if (v5)
    {
      objc_msgSend_rowOrderChangedPrecedentIgnoringRecalc(v10, v11, v12, v13);
    }

    else
    {
      objc_msgSend_rowOrderChangedPrecedent(v10, v11, v12, v13);
    }

    *&retstr->coordinate.row = v16;
    retstr->_tableUID._upper = v17;
  }

  return result;
}

- (void)dirtyColumnOrderChanged
{
  v5 = objc_msgSend_calcEngine(self->_tableModel, a2, v2, v3);
  v9 = objc_msgSend_groupBy(self->_tableInfo, v6, v7, v8);
  v13 = v9;
  if (v9)
  {
    objc_msgSend_columnOrderChangedPrecedent(v9, v10, v11, v12);
    objc_msgSend_markCellRefAsDirty_(v5, v14, v16, v15);
  }
}

- (id)valuesForViewTractRef:(id)ref hidingActionMask:(unsigned __int8)mask outError:(id *)error outGeometricPrecedents:(void *)precedents forceHidingOfPivotFiltered:(BOOL)filtered
{
  filteredCopy = filtered;
  maskCopy = mask;
  refCopy = ref;
  v13 = objc_msgSend_tableUID(refCopy, v10, v11, v12);
  if (!(v13 | v14))
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTTableResolver valuesForViewTractRef:hidingActionMask:outError:outGeometricPrecedents:forceHidingOfPivotFiltered:]", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 1255, 0, "Need a tableUID set to use this interface");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  v198 = self->_tableModel;
  if (v198 && objc_msgSend_isValidOrSpanning(refCopy, v25, v26, v27))
  {
    v200 = objc_msgSend_tableInfo(v198, v25, v26, v27);
    v31 = objc_msgSend_spansAllColumns(refCopy, v28, v29, v30);
    v35 = objc_msgSend_spansAllRows(refCopy, v32, v33, v34);
    if (objc_msgSend_isFixedAtZeroRef(refCopy, v36, v37, v38))
    {
      v45 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v39, 0, v41);
      v46 = v45;
    }

    else
    {
      v48 = objc_msgSend_tract(refCopy, v39, v40, v41);
      v52 = objc_msgSend_columnUids(v48, v49, v50, v51);

      v56 = objc_msgSend_tract(refCopy, v53, v54, v55);
      v60 = objc_msgSend_rowUids(v56, v57, v58, v59);

      if ((v31 & v35) == 1)
      {
        v64 = MEMORY[0x277CCAA78];
        v227.origin = objc_msgSend_bodyRange(v200, v61, v62, v63);
        v227.size = v65;
        v66 = TSUCellRect::columns(&v227);
        v46 = objc_msgSend_indexSetWithIndexesInRange_(v64, v67, v66, v67);
        v68 = MEMORY[0x277CCAA78];
        v227.origin = objc_msgSend_bodyRange(v200, v69, v70, v71);
        v227.size = v72;
        v73 = TSUCellRect::rows(&v227);
        v75 = objc_msgSend_indexSetWithIndexesInRange_(v68, v74, v73, v74);
      }

      else
      {
        if (v31)
        {
          v76 = MEMORY[0x277CCAA78];
          v227.origin = objc_msgSend_range(v200, v61, v62, v63);
          v227.size = v77;
          v78 = TSUCellRect::columns(&v227);
          v80 = objc_msgSend_indexSetWithIndexesInRange_(v76, v79, v78, v79);
        }

        else
        {
          v80 = objc_msgSend_columnIndexesForUIDs_(v200, v61, v52, v63);
        }

        v46 = v80;
        if (v35)
        {
          v84 = MEMORY[0x277CCAA78];
          v227.origin = objc_msgSend_range(v200, v81, v82, v83);
          v227.size = v85;
          v86 = TSUCellRect::rows(&v227);
          objc_msgSend_indexSetWithIndexesInRange_(v84, v87, v86, v87);
        }

        else
        {
          objc_msgSend_rowIndexesForUIDs_(v200, v81, v60, v83);
        }
        v75 = ;
      }

      v45 = v75;
    }

    if (objc_msgSend_isAPivotTable(v200, v42, v43, v44))
    {
      v91 = objc_msgSend_pivotOwner(v198, v88, v89, v90);
      v95 = objc_msgSend_groupBySet(v91, v92, v93, v94);

      v99 = objc_msgSend_columnGroupLevel(refCopy, v96, v97, v98);
      v101 = objc_msgSend_restrictColumnIndexes_toColumnGroupLevel_forPivotTable_(v95, v100, v46, v99, v200);

      v105 = objc_msgSend_rowGroupLevel(refCopy, v102, v103, v104);
      v107 = objc_msgSend_restrictRowIndexes_toRowGroupLevel_forPivotTable_(v95, v106, v45, v105, v200);

      v111 = objc_msgSend_aggregateIndexLevel(refCopy, v108, v109, v110);
      v46 = objc_msgSend_restrictColumnIndexes_forAggrIndexLevel_forPivotTable_(v95, v112, v101, v111, v200);

      v45 = objc_msgSend_restrictRowIndexes_forAggrIndexLevel_forPivotTable_(v95, v113, v107, v111, v200);

      v114 = maskCopy;
      if (filteredCopy)
      {
        v114 = maskCopy | 2;
      }

      maskCopy = v114;
    }

    else if (objc_msgSend_isCategorized(v200, v88, v89, v90))
    {
      v118 = MEMORY[0x277D81150];
      v119 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "[TSTTableResolver valuesForViewTractRef:hidingActionMask:outError:outGeometricPrecedents:forceHidingOfPivotFiltered:]", v117);
      v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v121);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v118, v123, v119, v122, 1313, 0, "Need to implement group level restrictions for categorized tables");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v124, v125, v126);
    }

    Index = objc_msgSend_firstIndex(v46, v115, v116, v117);
    v131 = objc_msgSend_lastIndex(v46, v128, v129, v130);
    v135 = objc_msgSend_firstIndex(v46, v132, v133, v134);
    v139 = objc_msgSend_firstIndex(v45, v136, v137, v138);
    v143 = objc_msgSend_lastIndex(v45, v140, v141, v142);
    v147 = objc_msgSend_firstIndex(v45, v144, v145, v146);
    if (objc_msgSend_count(v46, v148, v149, v150) && objc_msgSend_count(v45, v151, v152, v153))
    {
      v154 = [TSCEValueGrid alloc];
      v156 = objc_msgSend_initWithColumnRange_rowRange_(v154, v155, Index, v131 - v135 + 1, v139, v143 - v147 + 1);
    }

    else
    {
      v156 = objc_opt_new();
    }

    v160 = v156;
    if (precedents)
    {
      v195 = v156;
      v161 = objc_msgSend_coordMapper(self, v157, v158, v159);
      v227.origin = 0;
      v227.size = &v227;
      v228 = 0x5812000000;
      v229 = sub_22158DD70;
      v230 = sub_22158DD7C;
      v231 = &unk_22188E88F;
      v235[0] = 0;
      v235[1] = 0;
      v232 = 0;
      v233 = 0;
      v234 = v235;
      v217 = 0;
      v218 = &v217;
      v219 = 0x5812000000;
      v220 = sub_22158DD70;
      v221 = sub_22158DD7C;
      v222 = &unk_22188E88F;
      v226[0] = 0;
      v226[1] = 0;
      v223 = 0;
      v224 = 0;
      v225 = v226;
      v212[0] = MEMORY[0x277D85DD0];
      v212[1] = 3221225472;
      v212[2] = sub_22158DD88;
      v212[3] = &unk_2784670B8;
      v213 = v45;
      v162 = v161;
      v214 = v162;
      v215 = &v217;
      v216 = &v227;
      objc_msgSend_enumerateIndexesUsingBlock_(v46, v163, v212, v164);
      v211._lower = objc_msgSend_tableUID(v200, v165, v166, v167);
      v211._upper = v168;
      TSCECellRefSet::addCellRefs(precedents, &v211, (*&v227.size + 48));
      v172 = objc_msgSend_summaryModel(v200, v169, v170, v171);
      v211._lower = objc_msgSend_aggregateFormulaOwnerUID(v172, v173, v174, v175);
      v211._upper = v176;
      TSCECellRefSet::addCellRefs(precedents, &v211, (v218 + 6));

      _Block_object_dispose(&v217, 8);
      sub_22107C860(&v225, v226[0]);
      _Block_object_dispose(&v227, 8);
      sub_22107C860(&v234, v235[0]);

      v160 = v195;
    }

    if (maskCopy)
    {
      v177 = objc_msgSend_hiddenStates(v200, v157, v158, v159);
    }

    else
    {
      v177 = 0;
    }

    v202[0] = MEMORY[0x277D85DD0];
    v202[1] = 3221225472;
    v202[2] = sub_22158DEF0;
    v202[3] = &unk_278467108;
    v178 = v46;
    v203 = v178;
    v209 = maskCopy != 0;
    v179 = v177;
    v204 = v179;
    v210 = maskCopy;
    v180 = v200;
    v205 = v180;
    selfCopy = self;
    precedentsCopy = precedents;
    v47 = v160;
    v207 = v47;
    objc_msgSend_enumerateIndexesUsingBlock_(v45, v181, v202, v182);
    v186 = objc_msgSend_count(v47, v183, v184, v185);
    if (error && v186 == 1)
    {
      v201[0] = MEMORY[0x277D85DD0];
      v201[1] = 3221225472;
      v201[2] = sub_22158E200;
      v201[3] = &unk_278467128;
      v201[4] = error;
      objc_msgSend_enumerateValuesUsingBlock_(v47, v187, v201, v189);
    }

    else
    {
      v190 = objc_msgSend_count(v47, v187, v188, v189);
      if (error && !v190)
      {
        *error = objc_msgSend_invalidReferenceError(TSCEError, v191, v192, v193);

        v47 = 0;
      }
    }
  }

  else if (error)
  {
    objc_msgSend_invalidReferenceError(TSCEError, v25, v26, v27);
    *error = v47 = 0;
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (id)valuesForViewTractRef:(id)ref hidingActionMask:(unsigned __int8)mask outError:(id *)error
{
  v5 = objc_msgSend_valuesForViewTractRef_hidingActionMask_outError_outGeometricPrecedents_forceHidingOfPivotFiltered_(self, a2, ref, mask, error, 0, 0);

  return v5;
}

- (id)filteredCellTractRef:(id)ref hidingActionMask:(unsigned __int8)mask
{
  maskCopy = mask;
  refCopy = ref;
  v7 = refCopy;
  if (maskCopy)
  {
    v11 = self->_tableModel;
    v7 = refCopy;
    if (v11)
    {
      v7 = refCopy;
      if (objc_msgSend_isValid(refCopy, v8, v9, v10))
      {
        v15 = objc_msgSend_tableInfo(v11, v12, v13, v14);
        v75 = v15;
        v76 = objc_msgSend_hiddenStates(v15, v16, v17, v18);
        v22 = objc_msgSend_spansAllColumns(refCopy, v19, v20, v21);
        v26 = objc_msgSend_spansAllRows(refCopy, v23, v24, v25);
        v30 = objc_msgSend_columns(refCopy, v27, v28, v29);
        v31 = TSUIndexSet::asNSIndexSet(v30);
        v35 = objc_msgSend_rows(refCopy, v32, v33, v34);
        v39 = TSUIndexSet::asNSIndexSet(v35);
        if (v22)
        {
          v40 = MEMORY[0x277CCAA78];
          v90.origin = objc_msgSend_range(v15, v36, v37, v38);
          v90.size = v41;
          v42 = TSUCellRect::columns(&v90);
          v44 = objc_msgSend_indexSetWithIndexesInRange_(v40, v43, v42, v43);

          v31 = v44;
        }

        if (v26)
        {
          v45 = MEMORY[0x277CCAA78];
          v90.origin = objc_msgSend_range(v15, v36, v37, v38);
          v90.size = v46;
          v47 = TSUCellRect::rows(&v90);
          v49 = objc_msgSend_indexSetWithIndexesInRange_(v45, v48, v47, v48);

          v39 = v49;
        }

        v90.origin = 0;
        v90.size = &v90;
        v91 = 0x2020000000;
        v92 = 0;
        v74 = objc_msgSend_mutableCopy(v31, v36, v37, v38);
        v53 = objc_msgSend_mutableCopy(v39, v50, v51, v52);
        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = sub_22158E740;
        v85[3] = &unk_278467150;
        v54 = v76;
        v86 = v54;
        v89 = maskCopy;
        v55 = v53;
        v87 = v55;
        v88 = &v90;
        objc_msgSend_enumerateIndexesUsingBlock_(v39, v56, v85, v57);
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = sub_22158E798;
        v80[3] = &unk_278467150;
        v58 = v54;
        v81 = v58;
        v84 = maskCopy;
        v59 = v74;
        v82 = v59;
        v83 = &v90;
        objc_msgSend_enumerateIndexesUsingBlock_(v31, v60, v80, v61);
        v7 = refCopy;
        if (*(*&v90.size + 24) == 1)
        {
          v62 = [TSCECellTractRef alloc];
          MEMORY[0x223D9F7A0](&v79, v59);
          MEMORY[0x223D9F7A0](&v78, v55);
          v77[0] = objc_msgSend_tableUID(refCopy, v63, v64, v65);
          v77[1] = v66;
          v7 = objc_msgSend_initWithColumns_rows_tableUID_(v62, v66, &v79, &v78, v77);

          TSUIndexSet::~TSUIndexSet(&v78);
          TSUIndexSet::~TSUIndexSet(&v79);
          v70 = objc_msgSend_preserveFlags(refCopy, v67, v68, v69);
          objc_msgSend_setPreserveFlags_(v7, v71, v70, v72);
        }

        _Block_object_dispose(&v90, 8);
      }
    }
  }

  return v7;
}

- (id)solveGetPivotData:(id)data functionSpec:(id)spec context:(id)context
{
  dataCopy = data;
  specCopy = spec;
  contextCopy = context;
  v13 = objc_msgSend_nilValue(TSCENilValue, v10, v11, v12);
  v174 = objc_msgSend_pivotOwner(self->_tableModel, v14, v15, v16);
  v23 = objc_msgSend_groupBySet(v174, v17, v18, v19);
  if (v23)
  {
    v173 = specCopy;
    v24 = objc_msgSend_calcEngine(self, v20, v21, v22);
    v176 = objc_msgSend_documentLocale(v24, v25, v26, v27);

    v172 = objc_msgSend_aggregateFieldName(dataCopy, v28, v29, v30);
    v35 = objc_msgSend_aggregateIndexForAggName_locale_(v23, v31, v172, v176);
    if (v35 == 0xFFFF)
    {
      v47 = objc_msgSend_functionName(specCopy, v32, v33, v34);
      v49 = objc_msgSend_invalidAggregateColumnErrorForFunctionName_argumentNumber_(TSCEError, v48, v47, 1);
      v52 = objc_msgSend_errorValue_(TSCEErrorValue, v50, v49, v51);

      v13 = v52;
LABEL_33:
      specCopy = v173;

      goto LABEL_34;
    }

    v197 = 0;
    v198 = &v197;
    v199 = 0x2020000000;
    v200 = 0;
    v189 = 0;
    v190 = &v189;
    v191 = 0x5812000000;
    v192 = sub_22158F0AC;
    v193 = sub_22158F0B8;
    v194 = &unk_22188E88F;
    memset(v195, 0, sizeof(v195));
    v196 = 1065353216;
    v183[0] = MEMORY[0x277D85DD0];
    v183[1] = 3221225472;
    v183[2] = sub_22158F0C0;
    v183[3] = &unk_278467178;
    v36 = v23;
    v184 = v36;
    v187 = &v189;
    v185 = v176;
    v37 = dataCopy;
    v186 = v37;
    v188 = &v197;
    objc_msgSend_enumerateDataKeyValuePairsUsingBlock_(v37, v38, v183, v39);
    if (*(v198 + 24) == 1)
    {
      v43 = objc_msgSend_invalidReferenceError(TSCEError, v40, v41, v42);
      v46 = objc_msgSend_errorValue_(TSCEErrorValue, v44, v43, v45);

      v13 = v46;
LABEL_32:

      _Block_object_dispose(&v189, 8);
      sub_221087B80(v195);
      _Block_object_dispose(&v197, 8);
      goto LABEL_33;
    }

    v182[0] = 0;
    v182[1] = 0;
    v181 = v182;
    v180 = 0uLL;
    v179 = 0uLL;
    if (objc_msgSend_keyValuePairCount(v37, v40, v41, v42))
    {
      v171 = dataCopy;
      v56 = objc_msgSend_groupByForColumnGroups(v36, v53, v54, v55);
      v57 = v190;
      v61 = objc_msgSend_columnGroupings(v36, v58, v59, v60);
      v65 = objc_msgSend_count(v61, v62, v63, v64);
      v67 = objc_msgSend_findExistingGroupNodeInGroupBy_usingValues_upToLevel_coerceForDateFields_(v36, v66, v56, (v57 + 6), v65, 0);

      v71 = objc_msgSend_groupByForRowGroups(v36, v68, v69, v70);
      v72 = v190;
      v76 = objc_msgSend_rowGroupings(v36, v73, v74, v75);
      v80 = objc_msgSend_count(v76, v77, v78, v79);
      v82 = objc_msgSend_findExistingGroupNodeInGroupBy_usingValues_upToLevel_coerceForDateFields_(v36, v81, v71, (v72 + 6), v80, 0);

      if (!v67)
      {
        v86 = objc_msgSend_groupByForColumnGroups(v36, v83, v84, v85);
        v87 = v190;
        v91 = objc_msgSend_columnGroupings(v36, v88, v89, v90);
        v95 = objc_msgSend_count(v91, v92, v93, v94);
        v67 = objc_msgSend_findExistingGroupNodeInGroupBy_usingValues_upToLevel_coerceForDateFields_(v36, v96, v86, (v87 + 6), v95, 1);
      }

      if (!v82)
      {
        v97 = objc_msgSend_groupByForRowGroups(v36, v83, v84, v85);
        v98 = v190;
        v102 = objc_msgSend_rowGroupings(v36, v99, v100, v101);
        v106 = objc_msgSend_count(v102, v103, v104, v105);
        v82 = objc_msgSend_findExistingGroupNodeInGroupBy_usingValues_upToLevel_coerceForDateFields_(v36, v107, v97, (v98 + 6), v106, 1);
      }

      dataCopy = v171;
      if (v67)
      {
        if (v82)
        {
          v108 = objc_msgSend_groupLevel(v67, v83, v84, v85);
          v112 = objc_msgSend_groupLevel(v82, v109, v110, v111);
          v116 = objc_msgSend_keyValuePairCount(v37, v113, v114, v115);
          v120 = v112 + v108;
          dataCopy = v171;
          if (v120 == v116)
          {
            *&v180 = objc_msgSend_groupUid(v67, v117, v118, v119);
            *(&v180 + 1) = v121;
            *&v179 = objc_msgSend_groupUid(v82, v121, v122, v123);
            *(&v179 + 1) = v124;
          }
        }
      }
    }

    else
    {
      v125 = objc_msgSend_groupByForRowGroups(v36, v53, v54, v55);
      *&v180 = objc_msgSend_topLevelGroupUid(v125, v126, v127, v128);
      *(&v180 + 1) = v129;

      v67 = objc_msgSend_groupByForRowGroups(v36, v130, v131, v132);
      *&v179 = objc_msgSend_topLevelGroupUid(v67, v133, v134, v135);
      *(&v179 + 1) = v136;
    }

    if (v180 == 0 || v179 == 0)
    {
      v144 = objc_msgSend_invalidReferenceError(TSCEError, v137, v138, v139);
      objc_msgSend_errorValue_(TSCEErrorValue, v145, v144, v146);
      v13 = v147 = v13;
LABEL_31:

      sub_22107C800(&v181, v182[0]);
      goto LABEL_32;
    }

    if (v35)
    {
      if (objc_msgSend_activeFlatteningDimension(v36, v137, v138, v139) == 1)
      {
        *&v180 = sub_2211A8E7C(&v180, v35, v141, v142);
        *(&v180 + 1) = v143;
      }

      else if (!objc_msgSend_activeFlatteningDimension(v36, v140, v141, v142))
      {
        *&v179 = sub_2211A8E7C(&v179, v35, v148, v149);
        *(&v179 + 1) = v150;
      }
    }

    v151 = [TSCEUndoTract alloc];
    v144 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v151, v152, v180, *(&v180 + 1), v179, 4);
    v153 = [TSCEViewTractRef alloc];
    v178[0] = objc_msgSend_tableUID(self, v154, v155, v156);
    v178[1] = v157;
    v147 = objc_msgSend_initWithTract_tableUID_preserveFlags_(v153, v157, v144, v178, 0);
    v177 = 0;
    v161 = objc_msgSend_isForChartFormulas(contextCopy, v158, v159, v160);
    v163 = objc_msgSend_valuesForViewTractRef_hidingActionMask_outError_outGeometricPrecedents_forceHidingOfPivotFiltered_(self, v162, v147, 0, &v177, &v181, v161 ^ 1u);
    v167 = v177;
    if (v167)
    {
      v168 = objc_msgSend_errorValue_(TSCEErrorValue, v164, v167, v166);
    }

    else
    {
      if (!v163)
      {
LABEL_30:
        objc_msgSend_addCalculatedPrecedents_(contextCopy, v164, &v181, v166);

        goto LABEL_31;
      }

      v168 = objc_msgSend_firstValue(v163, v164, v165, v166);
    }

    v169 = v168;

    v13 = v169;
    goto LABEL_30;
  }

LABEL_34:

  return v13;
}

- (id)cellTractRefForViewTractRef:(id)ref
{
  refCopy = ref;
  v123[0] = objc_msgSend_tableUID(refCopy, v5, v6, v7);
  v123[1] = v8;
  if (!(v123[0] | v8))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableResolver cellTractRefForViewTractRef:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 1613, 0, "Need a tableUID set to use this interface");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v22 = self->_tableModel;
  if (v22 && objc_msgSend_isValidOrSpanning(refCopy, v19, v20, v21))
  {
    v26 = objc_msgSend_tableInfo(v22, v23, v24, v25);
    v30 = objc_msgSend_spansAllColumns(refCopy, v27, v28, v29);
    v34 = objc_msgSend_spansAllRows(refCopy, v31, v32, v33);
    if (objc_msgSend_isFixedAtZeroRef(refCopy, v35, v36, v37))
    {
      v44 = objc_msgSend_indexSetWithIndex_(MEMORY[0x277CCAA78], v38, 0, v40);
      v45 = v44;
    }

    else
    {
      v47 = objc_msgSend_tract(refCopy, v38, v39, v40);
      v51 = objc_msgSend_columnUids(v47, v48, v49, v50);

      v55 = objc_msgSend_tract(refCopy, v52, v53, v54);
      v59 = objc_msgSend_rowUids(v55, v56, v57, v58);

      if (v30)
      {
        v63 = MEMORY[0x277CCAA78];
        *&v122 = objc_msgSend_bodyColumnRange(v26, v60, v61, v62);
        v122._singleRange._begin = v64;
        v65 = TSUCellRect::columns(&v122);
        v67 = objc_msgSend_indexSetWithIndexesInRange_(v63, v66, v65, v66);
      }

      else
      {
        v67 = objc_msgSend_columnIndexesForUIDs_(v26, v60, v51, v62);
      }

      v45 = v67;
      if (v34)
      {
        v71 = MEMORY[0x277CCAA78];
        *&v122 = objc_msgSend_bodyRowRange(v26, v68, v69, v70);
        v122._singleRange._begin = v72;
        v73 = TSUCellRect::rows(&v122);
        objc_msgSend_indexSetWithIndexesInRange_(v71, v74, v73, v74);
      }

      else
      {
        objc_msgSend_rowIndexesForUIDs_(v26, v68, v59, v70);
      }
      v44 = ;
    }

    if (objc_msgSend_isAPivotTable(v26, v41, v42, v43))
    {
      v78 = objc_msgSend_pivotOwner(v22, v75, v76, v77);
      v82 = objc_msgSend_groupBySet(v78, v79, v80, v81);

      v86 = objc_msgSend_columnGroupLevel(refCopy, v83, v84, v85);
      v88 = objc_msgSend_restrictColumnIndexes_toColumnGroupLevel_forPivotTable_(v82, v87, v45, v86, v26);

      v92 = objc_msgSend_rowGroupLevel(refCopy, v89, v90, v91);
      v94 = objc_msgSend_restrictRowIndexes_toRowGroupLevel_forPivotTable_(v82, v93, v44, v92, v26);

      v98 = objc_msgSend_aggregateIndexLevel(refCopy, v95, v96, v97);
      v45 = objc_msgSend_restrictColumnIndexes_forAggrIndexLevel_forPivotTable_(v82, v99, v88, v98, v26);

      v44 = objc_msgSend_restrictRowIndexes_forAggrIndexLevel_forPivotTable_(v82, v100, v94, v98, v26);
    }

    else if (objc_msgSend_isCategorized(v26, v75, v76, v77))
    {
      v103 = MEMORY[0x277D81150];
      v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "[TSTTableResolver cellTractRefForViewTractRef:]", v102);
      v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v106);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v108, v104, v107, 1659, 0, "Need to implement group level restrictions for categorized tables");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v110, v111);
    }

    v112 = [TSCECellTractRef alloc];
    MEMORY[0x223D9F7A0](&v122, v45);
    MEMORY[0x223D9F7A0](&v121, v44);
    v46 = objc_msgSend_initWithColumns_rows_tableUID_(v112, v113, &v122, &v121, v123);
    TSUIndexSet::~TSUIndexSet(&v121);
    TSUIndexSet::~TSUIndexSet(&v122);
    v117 = objc_msgSend_preserveFlags(refCopy, v114, v115, v116);
    objc_msgSend_setPreserveFlags_(v46, v118, v117, v119);
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

- (id)viewTractRefForCellTractRef:(id)ref
{
  refCopy = ref;
  v8 = objc_msgSend_translator(self->_tableInfo, v5, v6, v7);
  v12 = objc_msgSend_viewMap(v8, v9, v10, v11);
  v15 = objc_msgSend_uidRectRefForCellTractRef_(v12, v13, refCopy, v14);

  if (v15)
  {
    objc_msgSend_uidRange(v15, v16, v17, v18);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    sub_221086EBC(&v44, v47, v48, (v48 - v47) >> 4);
    __p = 0;
    v42 = 0;
    v43 = 0;
    sub_221086EBC(&__p, v49, v50, (v50 - v49) >> 4);
    if (objc_msgSend_spansAllRows(refCopy, v19, v20, v21))
    {
      operator new();
    }

    if (objc_msgSend_spansAllColumns(refCopy, v22, v23, v24))
    {
      operator new();
    }

    v26 = [TSCEUndoTract alloc];
    v28 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v26, v27, &v44, &__p, 4);
    v29 = [TSCEViewTractRef alloc];
    v33 = objc_msgSend_tableUID(self->_tableInfo, v30, v31, v32);
    v37 = objc_msgSend_preserveFlags(refCopy, v34, v35, v36, v33, v34);
    v25 = objc_msgSend_initWithTract_tableUID_preserveFlags_(v29, v38, v28, &v40, v37);

    if (__p)
    {
      v42 = __p;
      operator delete(__p);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v49)
    {
      v50 = v49;
      operator delete(v49);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end