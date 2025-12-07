@interface TSTGroupBy
+ (BOOL)validateNumberOfGroupsForGroupingColumnList:(id)list sourceTableModel:(id)model sourceBodyTract:(id)tract limit:(unint64_t)limit groupNodeCount:(unint64_t *)count;
+ (TSKUIDStruct)relativeAncestorGroupUid:(int)uid;
+ (TSKUIDStruct)tableUIDForCategoryRef:(id)ref withCalcEngine:(id)engine;
+ (id)groupByForCategoryRef:(id)ref withCalcEngine:(id)engine;
+ (id)groupByForUID:(TSKUIDStruct)d withCalcEngine:(id)engine;
+ (id)localizedFalseStringForBooleanGroupWithString:(id)string documentLocale:(id)locale;
+ (id)localizedNameForBlankGroupForDocumentLocale:(id)locale;
+ (id)localizedNameForErrorGroupForDocumentLocale:(id)locale;
+ (id)localizedTrueStringForBooleanGroupWithString:(id)string documentLocale:(id)locale;
+ (id)p_dateBySettingUnit:(unint64_t)unit value:(int64_t)value ofDate:(id)date inCalendar:(id)calendar;
+ (unsigned)aggregateTypeForAggregateLabel:(id)label locale:(id)locale;
+ (unsigned)groupingComboForGroupingType:(int64_t)type;
- (BOOL)changeCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d toBeInGroup:(id)group;
- (BOOL)createAggregatorsIfMissingAndAssert:(BOOL)assert;
- (BOOL)isBlankGroupUid:(const TSKUIDStruct *)uid;
- (BOOL)isCategorized;
- (BOOL)isErrorGroupUid:(const TSKUIDStruct *)uid;
- (BOOL)isGroupingColumn:(const TSKUIDStruct *)column;
- (BOOL)isPrePivotV2Compatible;
- (BOOL)isSpanningCategoryRef:(id)ref;
- (BOOL)isValidCategoryRef:(id)ref;
- (BOOL)p_setCell:(id)cell groupingCellPlan:(const void *)plan groupValue:(id)value toGroup:(id)group templateCell:(id)templateCell;
- (BOOL)usesPrePivotAggregateTypesOnly;
- (TSCECalculationEngine)calcEngine;
- (TSCECellRef)columnOrderChangedPrecedent;
- (TSCECellRef)hiddenStatesChangedPrecedent;
- (TSCECellRef)rowOrderChangedPrecedent;
- (TSCECellRef)rowOrderChangedPrecedentIgnoringRecalc;
- (TSCEFormulaReplacing)minion;
- (TSCERangeRef)aggregateRangeRefForCategoryRef:(SEL)ref;
- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options;
- (TSKUIDStruct)baseTableUID;
- (TSKUIDStruct)convertToRelativeAncestorUid:(const TSKUIDStruct *)uid atRowUid:(const TSKUIDStruct *)rowUid;
- (TSKUIDStruct)groupByUid;
- (TSKUIDStruct)ownerUID;
- (TSKUIDStruct)resolveRelativeAncestorUid:(const TSKUIDStruct *)uid atRowUid:(const TSKUIDStruct *)rowUid;
- (TSKUIDStruct)rowUIDForLookupKey:(unsigned int)key;
- (TSKUIDStruct)topLevelGroupUid;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)bodyRowUidsForCategoryRef:(SEL)ref atRowUid:(id)uid ordered:(const TSKUIDStruct *)ordered;
- (TSTCategoryOwner)categoryOwner;
- (TSTGroupBy)initWithArchive:(const void *)archive forCategoryOwner:(id)owner unarchiver:(id)unarchiver;
- (TSTGroupBy)initWithGroupings:(id)groupings categoryOwner:(id)owner;
- (TSTGroupBy)initWithGroupings:(id)groupings categoryOwner:(id)owner groupByUid:(const TSKUIDStruct *)uid ownerIndex:(unsigned __int16)index;
- (TSTGroupBy)initWithGroupings:(id)groupings isEnabled:(BOOL)enabled categoryOwner:(id)owner groupByUid:(const TSKUIDStruct *)uid ownerIndex:(unsigned __int16)index;
- (TSTGroupBySet)groupBySet;
- (TSTTableInfo)tableInfo;
- (TSTTableModel)tableModel;
- (TSUCellCoord)getNextAggFormulaCoord;
- (TSULocale)locale;
- (id).cxx_construct;
- (id)aggNodeForAggFormulaCoord:(const TSUCellCoord *)coord;
- (id)aggregateLabelForCategoryRef:(id)ref;
- (id)aggregateRefOnValue:(id)value forColumnUid:(const TSKUIDStruct *)uid forType:(unsigned __int8)type atLevel:(unsigned __int8)level;
- (id)aggregatesOnLevel:(unsigned __int8)level;
- (id)aggregatorForColumn:(TSKUIDStruct)column;
- (id)allGroupNodeUids;
- (id)anyAggregator;
- (id)categoryRefForAggregateRangeRef:(const TSCERangeRef *)ref;
- (id)cellDiffForCell:(id)cell applyingGroupCellValue:(id)value groupingType:(int64_t)type toBeInGroup:(id)group;
- (id)changeCellDiffMapToMoveRows:(const void *)rows toGroup:(id)group templateRowUID:(const TSKUIDStruct *)d;
- (id)changeForMovingBaseRows:(const void *)rows toDestGroup:(id)group;
- (id)changeForSettingGroupingColumnList:(id)list;
- (id)changeForUpdatingGroupValueOnNode:(const TSKUIDStruct *)node toValue:(id)value;
- (id)childGroupUidsForGroupUids:(id)uids;
- (id)columnAggregateListCopy;
- (id)columnAggregatesOnColumnUids:(const void *)uids;
- (id)columnNameForCategoryLevel:(unsigned __int8)level shortForm:(BOOL)form;
- (id)columnNameForCategoryRef:(id)ref;
- (id)convertCategoryRefToRelativeAncestorUid:(id)uid atRowUid:(const TSKUIDStruct *)rowUid inHostTable:(const TSKUIDStruct *)table;
- (id)createAggregatorOnColumn:(TSKUIDStruct)column;
- (id)defaultDateForGrouping;
- (id)distinctValuesAtLevel:(unsigned __int8)level;
- (id)findGroupNodeForValue:(id)value atLevel:(unsigned __int8)level createIfMissing:(BOOL)missing;
- (id)groupHierarchyTreeAsFiltered:(BOOL)filtered usingOrder:(id)order forDimension:(int64_t)dimension;
- (id)groupNodeForGroupUid:(TSKUIDStruct)uid;
- (id)groupNodeForGroupUuid:(id)uuid;
- (id)groupNodeForGroupValueHierarchyFromSplitter:(id)splitter startAtComponent:(unint64_t)component startAtWord:(unint64_t)word preserveFlags:(TSUPreserveFlags *)flags;
- (id)groupNodeForRowUid:(TSKUIDStruct)uid atLevel:(unsigned __int8)level;
- (id)groupValueHierarchyRefOnValue:(id)value atLevel:(unsigned __int8)level;
- (id)groupValueHierarchyStringForCategoryRef:(id)ref forHostCellRef:(const TSCECellRef *)cellRef namingContext:(id)context;
- (id)groupValueRefOnValue:(id)value atLevel:(unsigned __int8)level;
- (id)groupValueTupleForRowUid:(TSKUIDStruct)uid atLevel:(unsigned __int8)level;
- (id)groupingColumnAtCategoryLevel:(unsigned __int8)level;
- (id)groupingColumnListCopy;
- (id)groupsAtLevel:(unsigned __int8)level;
- (id)indexesOfGroupUidsInUids:(const void *)uids;
- (id)labelForCategoryRef:(id)ref;
- (id)labelRowUIDSet;
- (id)labelRowUIDSetForCategoryLevel:(unsigned __int8)level labelRowVisibility:(unint64_t)visibility;
- (id)labelRowUidsForGroupUids:(id)uids;
- (id)linkedResolver;
- (id)p_cellDiffForFinishedCell:(id)cell;
- (id)p_columnNameForColumnUid:(const TSKUIDStruct *)uid;
- (id)prettyStringForCategoryRef:(id)ref forHostCellRef:(const TSCECellRef *)cellRef namingContext:(id)context;
- (id)resolveCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid inHostTable:(const TSKUIDStruct *)table;
- (id)rowUIDSetForCategoryLevel:(unsigned __int8)level;
- (id)rowUidsForGroupUids:(id)uids;
- (id)rowsForGroupValue:(id)value atLevel:(unsigned __int8)level;
- (id)sortedValuesAtLevel:(unsigned __int8)level;
- (id)stringForCategoryRef:(id)ref hostTableUID:(const TSKUIDStruct *)d;
- (id)uidRectRefForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid;
- (id)valueForFormulaCoord:(const TSUCellCoord *)coord;
- (id)valueGridForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid hidingActionMask:(unsigned __int8)mask outError:(id *)error;
- (id)valueGridForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid outError:(id *)error;
- (id)valueGridForCategoryRef:(id)ref outError:(id *)error;
- (id)viewCellTractRefForCategoryRef:(id)ref;
- (id)viewCellTractRefForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid;
- (unint64_t)archivingCompatibilityVersion;
- (unint64_t)countOfValuesForCategoryRef:(id)ref;
- (unint64_t)indexOfGroupingColumn:(id)column;
- (unint64_t)numberOfAggregatesAtLevel:(unsigned __int8)level;
- (unint64_t)numberOfGroupsAtLevel:(unsigned __int8)level;
- (unint64_t)numberOfGroupsUptoLevel:(unsigned __int8)level;
- (unordered_map<TSKUIDStruct,)changesPerColumnMapToBeInGroup:()std:()std:(std:(TSTPlanForGroupingCell>>> *__return_ptr)retstr :(TSTGroupBy *)self allocator<std:(SEL)std :(id)a4 pair<const)TSKUIDStruct :equal_to<TSKUIDStruct> :hash<TSKUIDStruct>;
- (unsigned)aggregateTypeForAggregateLabel:(id)label;
- (unsigned)aggregateTypeForCategoryRef:(id)ref;
- (unsigned)aggregateTypeForColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level;
- (unsigned)anyAggregateTypeForColumnUID:(TSKUIDStruct)d;
- (unsigned)groupLevelForGroupUid:(TSKUIDStruct)uid;
- (unsigned)groupLevelForGroupUid:(const TSKUIDStruct *)uid isBlank:(BOOL *)blank isError:(BOOL *)error;
- (unsigned)groupLevelForGroupingColumnUid:(TSKUIDStruct)uid;
- (vector<TSCECategoryLevel,)groupingColumnLevelsForColumn:(TSTGroupBy *)self;
- (vector<TSCECategoryRef)captureAnyCategoryRefsForViewRegion:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning;
- (vector<TSCECategoryRef)captureCategoryLabelRefsForViewRegion:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning forRows:(unsigned __int8)rows;
- (vector<TSCECategoryRef)captureCategoryRefsForViewRegion:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning;
- (vector<TSCECategoryRef)captureCategoryRefsFromIterator:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning;
- (vector<TSCECategoryRef)categoryRefsForSpanningCategoryRef:(TSTGroupBy *)self;
- (vector<TSCECategoryRef)expandSpanningCategoryRef:(TSTGroupBy *)self;
- (vector<TSCECategoryRef)p_promoteSpanningReferences:(TSTGroupBy *)self withCaptured:(SEL)captured atLevel:(vector<TSCECategoryRef *);
- (vector<TSCECategoryRef)promoteSpanningReferences:(TSTGroupBy *)self;
- (vector<TSCECellRef,)cellRefsForCategoryRef:(TSTGroupBy *)self atRowUid:(SEL)uid ordered:(id)ordered;
- (vector<TSCEValue)valuesForCategoryRef:(TSTGroupBy *)self atRowUid:(SEL)uid hidingActionMask:(id)mask outError:(const TSKUIDStruct *)error;
- (vector<TSCEValue)valuesForCategoryRef:(TSTGroupBy *)self atRowUid:(SEL)uid outError:(id)error;
- (vector<TSCEValue)valuesForCategoryRef:(TSTGroupBy *)self outError:(SEL)error;
- (void)_addAggregates:(id)aggregates atLevel:(unsigned __int8)level;
- (void)_removeAggregates:(id)aggregates;
- (void)addAggregator:(id)aggregator;
- (void)beginDeferringRebuildFormulas;
- (void)checkForFormulaCoordUpgrade;
- (void)deferGroupByChangeNotifications;
- (void)didAddGroupNode:(id)node;
- (void)didAddRowUID:(TSKUIDStruct)d toGroup:(id)group;
- (void)didChangeGroupByStructure;
- (void)didCreateGroup:(id)group;
- (void)didRemoveGroup:(id)group;
- (void)didRemoveRowUID:(TSKUIDStruct)d fromGroup:(id)group;
- (void)dropAggregator:(id)aggregator;
- (void)dropAllAggregators;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver backwardCompatOptions:(unint64_t)options;
- (void)endDeferringRebuildFormulas;
- (void)endOfGroupingChangesBatch;
- (void)enterCalcEngineMode;
- (void)enumerateAggregates:(id)aggregates;
- (void)enumerateAggregatesAtLevel:(unsigned __int8)level withBlock:(id)block;
- (void)enumerateGroupingColumnsForColumn:(TSKUIDStruct)column withBlock:(id)block;
- (void)enumerateRowsUidsAtLevel:(unsigned __int8)level withBlock:(id)block;
- (void)exitCalcEngineMode;
- (void)freeAggFormulaCoord:(const TSUCellCoord *)coord;
- (void)insertRowUid:(const TSKUIDStruct *)uid atRowIndex:(unsigned int)index forGroupValue:(id)value;
- (void)insertRowUids:(id)uids;
- (void)invalidateForCalcEngine:(id)engine;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)mapGroupUidsForChange:(id)change;
- (void)markAllAggregatesAsDirty;
- (void)markAllDependentsAsDirty;
- (void)markAllGroupNodesDirty;
- (void)p_setCell:(id)cell forDayGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forDayOfWeekGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forMonthGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forMonthOfYearGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forQuarterOfYearGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forUniqueGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forYearGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forYearQuarterGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell forYearWeekGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group;
- (void)p_setCell:(id)cell groupingTypeCombo:(unsigned __int16)combo groupingCellValue:(id)value toBeInGroup:(id)group;
- (void)p_setupCustomFormatsWithLocale:(id)locale;
- (void)rebuildAllAggFormulas;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine;
- (void)removeRowUid:(const TSKUIDStruct *)uid;
- (void)removeRowUid:(const TSKUIDStruct *)uid forGroupValue:(id)value;
- (void)removeRowUids:(id)uids;
- (void)resetAllAggsFormula;
- (void)resetGroupBy;
- (void)resetGroupingColumnsFormula;
- (void)resetGroupings;
- (void)resetWithGroupings:(id)groupings categoryOwner:(id)owner hiddenStates:(id)states groupBySet:(id)set;
- (void)resumeGroupByChangeNotifications;
- (void)runChange:(id)change withAggregates:(id)aggregates;
- (void)saveToArchiver:(id)archiver;
- (void)sendDeferredNotifictions:(id)notifictions;
- (void)setAggNode:(id)node forFormulaCoord:(const TSUCellCoord *)coord;
- (void)setAggregateType:(unsigned __int8)type forColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level;
- (void)setAggregates:(id)aggregates;
- (void)setCategoryOwner:(id)owner;
- (void)setGroupingColumnList:(id)list;
- (void)setHiddenStates:(id)states;
- (void)setIsEnabled:(BOOL)enabled;
- (void)setValue:(id)value forFormulaCoord:(const TSUCellCoord *)coord;
- (void)startOfGroupingChangesBatch;
- (void)teardown;
- (void)updateAggFormulaCoord:(TSUCellCoord)coord;
- (void)updateWithDocumentRoot:(id)root;
- (void)upgradeForNewAggregateTypes:(id)types;
- (void)usedAggFormulaCoord:(const TSUCellCoord *)coord;
- (void)willMakeGroupingChangesInRowUIDs:(id)ds;
- (void)willModify;
- (void)willRemoveGroup:(id)group;
- (void)willRemoveGroupNode:(id)node;
@end

@implementation TSTGroupBy

- (TSTGroupBy)initWithGroupings:(id)groupings categoryOwner:(id)owner
{
  groupingsCopy = groupings;
  ownerCopy = owner;
  v11 = ownerCopy;
  v21 = 0uLL;
  if (!ownerCopy)
  {
    v20 = 0;
    goto LABEL_5;
  }

  *&v21 = objc_msgSend_baseTableUID(ownerCopy, v8, v9, v10);
  *(&v21 + 1) = v12;
  v20 = 0;
  if (!(v21 | v12))
  {
LABEL_5:
    v15 = TSKMakeUIDStructRandom();
    goto LABEL_6;
  }

  v15 = sub_2212C4930(&v21, 8, v13, v14);
LABEL_6:
  v19 = v15;
  v20 = v16;
  v17 = objc_msgSend_initWithGroupings_categoryOwner_groupByUid_ownerIndex_(self, v16, groupingsCopy, v11, &v19, 8);

  return v17;
}

- (TSTGroupBy)initWithGroupings:(id)groupings categoryOwner:(id)owner groupByUid:(const TSKUIDStruct *)uid ownerIndex:(unsigned __int16)index
{
  indexCopy = index;
  groupingsCopy = groupings;
  ownerCopy = owner;
  v15 = objc_msgSend_count(groupingsCopy, v12, v13, v14) != 0;
  isEnabled_categoryOwner_groupByUid_ownerIndex = objc_msgSend_initWithGroupings_isEnabled_categoryOwner_groupByUid_ownerIndex_(self, v16, groupingsCopy, v15, ownerCopy, uid, indexCopy);

  return isEnabled_categoryOwner_groupByUid_ownerIndex;
}

- (TSTGroupBy)initWithGroupings:(id)groupings isEnabled:(BOOL)enabled categoryOwner:(id)owner groupByUid:(const TSKUIDStruct *)uid ownerIndex:(unsigned __int16)index
{
  indexCopy = index;
  groupingsCopy = groupings;
  ownerCopy = owner;
  v18 = objc_msgSend_context(ownerCopy, v15, v16, v17);
  v36.receiver = self;
  v36.super_class = TSTGroupBy;
  v19 = [(TSTGroupBy *)&v36 initWithContext:v18];

  if (v19)
  {
    objc_storeStrong(&v19->_groupingColumns, groupings);
    objc_storeWeak(&v19->_categoryOwner, ownerCopy);
    v19->_groupByUid = *uid;
    v20 = [TSTGroupNode alloc];
    inited = objc_msgSend_initAsRootNodeForGroupBy_(v20, v21, v19, v22);
    groupRoot = v19->_groupRoot;
    v19->_groupRoot = inited;

    v19->_isEnabled = enabled;
    v25 = objc_opt_new();
    groupByChangeDistributor = v19->_groupByChangeDistributor;
    v19->_groupByChangeDistributor = v25;

    v27 = v19->_groupRoot;
    v35[0] = objc_msgSend_groupUid(v27, v28, v29, v30);
    v35[1] = v31;
    v37 = v35;
    v32 = sub_2210880A0(&v19->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, v35, &unk_2217E17E0, &v37);
    objc_storeStrong(v32 + 4, v27);
    v19->_nextAggFormulaCoord = 0;
    if (indexCopy)
    {
      v33 = indexCopy;
    }

    else
    {
      v33 = 8;
    }

    v19->_ownerIndex = v33;
    v19->_indirectAggTypeChangeFormulaCoord = 0x7FFF7FFFFFFFLL;
    v19->_groupingColumnsFormulaCoord = 0x7FFF7FFFFFFFLL;
    v19->_groupingColumnHeadersFormulaCoord = 0x7FFF7FFFFFFFLL;
    v19->_allAggsInGroupRootFormulaCoord = 0x7FFF7FFFFFFFLL;
    v19->_columnOrderChangedCoord = 0x7FFF7FFFFFFFLL;
    v19->_rowOrderChangedCoord = 0x7FFF7FFFFFFFLL;
    v19->_rowOrderChangedIgnoringRecalcCoord = 0x7FFF7FFFFFFFLL;
    v19->_hiddenStatesChangedCoord = 0x7FFF7FFFFFFFLL;
    v19->_lock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v19;
}

- (void)willModify
{
  v7.receiver = self;
  v7.super_class = TSTGroupBy;
  [(TSTGroupBy *)&v7 willModify];
  if (self->_ownerIndex == 8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
    objc_msgSend_willModify(WeakRetained, v4, v5, v6);
  }
}

- (void)resetWithGroupings:(id)groupings categoryOwner:(id)owner hiddenStates:(id)states groupBySet:(id)set
{
  groupingsCopy = groupings;
  ownerCopy = owner;
  statesCopy = states;
  setCopy = set;
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  if (WeakRetained == ownerCopy && self->_hiddenStates == statesCopy)
  {
  }

  objc_msgSend_willModify(self, v15, v16, v17);
  objc_storeStrong(&self->_groupingColumns, groupings);
  objc_storeWeak(&self->_categoryOwner, ownerCopy);
  self->_isEnabled = 1;
  objc_msgSend_setHiddenStates_(self, v18, statesCopy, v19);
  objc_msgSend_setGroupBySet_(self, v20, setCopy, v21);
  objc_msgSend_resetGroupings(self, v22, v23, v24);
  objc_msgSend_didChangeGroupByStructure(self, v25, v26, v27);
}

- (TSKUIDStruct)groupByUid
{
  p_groupByUid = &self->_groupByUid;
  lower = self->_groupByUid.var0.var0._lower;
  upper = p_groupByUid->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)teardown
{
  objc_msgSend_dropAllTargets(self->_groupByChangeDistributor, a2, v2, v3);
  groupByChangeDistributor = self->_groupByChangeDistributor;
  self->_groupByChangeDistributor = 0;

  objc_storeWeak(&self->_categoryOwner, 0);
}

- (void)setCategoryOwner:(id)owner
{
  objc_storeWeak(&self->_categoryOwner, owner);
  groupRoot = self->_groupRoot;

  objc_msgSend_setGroupBy_(groupRoot, v4, self, v5);
}

+ (id)groupByForUID:(TSKUIDStruct)d withCalcEngine:(id)engine
{
  upper = d._upper;
  lower = d._lower;
  engineCopy = engine;
  v8 = engineCopy;
  if (lower | upper)
  {
    v9 = objc_msgSend_ownerForOwnerUID_(engineCopy, v7, lower, upper);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)groupByForCategoryRef:(id)ref withCalcEngine:(id)engine
{
  refCopy = ref;
  engineCopy = engine;
  if (!objc_msgSend_refersToPivotTable(refCopy, v8, v9, v10))
  {
    v33 = objc_msgSend_groupByUid(refCopy, v11, v12, v13);
    v28 = objc_msgSend_groupByForUID_withCalcEngine_(self, v34, v33, v34, engineCopy);
    goto LABEL_12;
  }

  v14 = objc_msgSend_pivotTableUid(refCopy, v11, v12, v13);
  v16 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v15, v14, v15, engineCopy);
  v20 = objc_msgSend_pivotOwner(v16, v17, v18, v19);
  v24 = objc_msgSend_groupBySet(v20, v21, v22, v23);

  v28 = 0;
  if (v16 && v24)
  {
    if (objc_msgSend_refersToPivotTableRows(refCopy, v25, v26, v27))
    {
      v32 = objc_msgSend_groupByForRowGroups(v24, v29, v30, v31);
    }

    else
    {
      if (!objc_msgSend_refersToPivotTableColumns(refCopy, v29, v30, v31))
      {
        v28 = 0;
        goto LABEL_11;
      }

      v32 = objc_msgSend_groupByForColumnGroups(v24, v35, v36, v37);
    }

    v28 = v32;
  }

LABEL_11:

LABEL_12:

  return v28;
}

+ (TSKUIDStruct)tableUIDForCategoryRef:(id)ref withCalcEngine:(id)engine
{
  refCopy = ref;
  engineCopy = engine;
  if (objc_msgSend_isValid(refCopy, v7, v8, v9) && objc_msgSend_refersToPivotTable(refCopy, v10, v11, v12))
  {
    v15 = objc_msgSend_pivotTableUid(refCopy, v10, v13, v14);
    v17 = v16;
  }

  else
  {
    v18 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v10, refCopy, engineCopy);
    v25 = objc_msgSend_tableInfo(v18, v19, v20, v21);
    if (v25)
    {
      v26 = objc_msgSend_tableInfo(v18, v22, v23, v24);
      v15 = objc_msgSend_tableUID(v26, v27, v28, v29);
      v17 = v30;
    }

    else
    {
      v17 = 0;
      v15 = 0;
    }
  }

  v31 = v15;
  v32 = v17;
  result._upper = v32;
  result._lower = v31;
  return result;
}

+ (TSKUIDStruct)relativeAncestorGroupUid:(int)uid
{
  v4 = objc_msgSend_relativeAncestorGroupUid_(TSCECategoryRef, a2, *&uid, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)resolveRelativeAncestorUid:(const TSKUIDStruct *)uid atRowUid:(const TSKUIDStruct *)rowUid
{
  v6 = objc_msgSend_relativeLevelOfAncestorGroupUid_(TSTGroupBy, a2, uid, rowUid);
  if (v6 >= 1 && (v10 = v6, v6 <= objc_msgSend_numberOfLevels(self, v7, v8, v9) + 1))
  {
    lower = rowUid->_lower;
    upper = rowUid->_upper;
    v18 = objc_msgSend_numberOfLevels(self, v11, v12, v13);
    v20 = objc_msgSend_groupNodeForRowUid_atLevel_(self, v19, lower, upper, (v18 - v10 + 1));
    v24 = v20;
    if (v20)
    {
      v15 = objc_msgSend_groupUid(v20, v21, v22, v23);
      v14 = v25;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v26 = v15;
  v27 = v14;
  result._upper = v27;
  result._lower = v26;
  return result;
}

- (TSKUIDStruct)convertToRelativeAncestorUid:(const TSKUIDStruct *)uid atRowUid:(const TSKUIDStruct *)rowUid
{
  lower = rowUid->_lower;
  upper = rowUid->_upper;
  v8 = objc_msgSend_numberOfLevels(self, a2, uid, rowUid);
  v10 = objc_msgSend_groupNodeForRowUid_atLevel_(self, v9, lower, upper, v8);
  if (v10)
  {
    v14 = v10;
    v15 = 1;
    while (objc_msgSend_groupUid(v14, v11, v12, v13) != uid->_lower || v16 != uid->_upper)
    {
      v20 = objc_msgSend_parentNode(v14, v16, v17, v18);

      v15 = (v15 + 1);
      v14 = v20;
      if (!v20)
      {
        goto LABEL_8;
      }
    }

    v22 = objc_msgSend_relativeAncestorGroupUid_(TSTGroupBy, v16, v15, v18);
    v21 = v23;
  }

  else
  {
LABEL_8:
    v21 = 0;
    v22 = 0;
  }

  v24 = v22;
  v25 = v21;
  result._upper = v25;
  result._lower = v24;
  return result;
}

- (id)resolveCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid inHostTable:(const TSKUIDStruct *)table
{
  refCopy = ref;
  v15 = objc_msgSend_copy(refCopy, v9, v10, v11);
  if (*uid == 0 || (objc_msgSend_isBadRef(refCopy, v12, v13, v14) & 1) != 0)
  {
    goto LABEL_17;
  }

  v19 = objc_msgSend_tableModel(self, v16, v17, v18);
  if (objc_msgSend_tableUID(v19, v20, v21, v22) != table->_lower)
  {

LABEL_10:
    if (*table != 0)
    {
      v57 = objc_msgSend_absoluteGroupUid(refCopy, v26, v27, v28);
      v58 = v38;
      objc_msgSend_setAsAbsoluteWithGroupUid_(v15, v38, &v57, v39);
    }

    goto LABEL_17;
  }

  v24 = v23;
  upper = table->_upper;

  if (v24 != upper)
  {
    goto LABEL_10;
  }

  v29 = objc_msgSend_relativeGroupUid(refCopy, v26, v27, v28);
  if (v29 | v30)
  {
    v57 = objc_msgSend_relativeGroupUid(refCopy, v30, v31, v32);
    v58 = v33;
    if (objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v33, &v57, v34))
    {
      v36 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(self, v30, &v57, uid);
      if (v36 | v35)
      {
        objc_msgSend_setAbsoluteGroupUid_(v15, v35, v36, v35);
        goto LABEL_17;
      }

      v55 = objc_msgSend_absoluteGroupUid(refCopy, v35, v36, v37);
      v56 = v40;
      objc_msgSend_setAsAbsoluteWithGroupUid_(v15, v40, &v55, v41);
    }
  }

  v42 = objc_msgSend_absoluteGroupUid(refCopy, v30, v31, v32);
  if (v42 | v43)
  {
    v55 = objc_msgSend_absoluteGroupUid(refCopy, v43, v44, v45);
    v56 = v46;
    v57 = objc_msgSend_convertToRelativeAncestorUid_atRowUid_(self, v46, &v55, uid);
    v58 = v47;
    if (objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v47, &v57, v48))
    {
      objc_msgSend_setAsRelativeWithGroupUid_(v15, v49, &v57, v51);
    }

    else
    {
      v55 = objc_msgSend_absoluteGroupUid(refCopy, v49, v50, v51);
      v56 = v52;
      objc_msgSend_setAsAbsoluteWithGroupUid_(v15, v52, &v55, v53);
    }
  }

LABEL_17:

  return v15;
}

- (id)convertCategoryRefToRelativeAncestorUid:(id)uid atRowUid:(const TSKUIDStruct *)rowUid inHostTable:(const TSKUIDStruct *)table
{
  uidCopy = uid;
  v12 = objc_msgSend_copy(uidCopy, v9, v10, v11);
  if ((objc_msgSend_preserveFlags(uidCopy, v13, v14, v15) & 2) == 0 && *rowUid != 0)
  {
    v19 = objc_msgSend_tableModel(self, v16, v17, v18);
    if (objc_msgSend_tableUID(v19, v20, v21, v22) == table->_lower)
    {
      v24 = v23;
      upper = table->_upper;

      if (v24 == upper)
      {
        v33 = objc_msgSend_absoluteGroupUid(uidCopy, v26, v27, v28);
        v34 = v29;
        if (v33 | v29)
        {
          v31 = objc_msgSend_convertToRelativeAncestorUid_atRowUid_(self, v29, &v33, rowUid);
          if (v31 != v33 || v30 != v34)
          {
            objc_msgSend_setRelativeGroupUid_(v12, v30, v31, v30, v33);
          }
        }
      }
    }

    else
    {
    }
  }

  return v12;
}

- (TSCEFormulaReplacing)minion
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v6 = objc_msgSend_minion(WeakRetained, v3, v4, v5);

  return v6;
}

- (TSKUIDStruct)baseTableUID
{
  v4 = objc_msgSend_tableModel(self, a2, v2, v3);
  v8 = objc_msgSend_tableUID(v4, v5, v6, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (TSULocale)locale
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v6 = objc_msgSend_calcEngine(WeakRetained, v3, v4, v5);
  v10 = objc_msgSend_documentLocale(v6, v7, v8, v9);

  return v10;
}

- (void)setHiddenStates:(id)states
{
  statesCopy = states;
  objc_msgSend_willModify(self, v5, v6, v7);
  objc_storeStrong(&self->_hiddenStates, states);
  objc_msgSend_rebuildAllAggFormulas(self, v8, v9, v10);
}

- (void)resetGroupBy
{
  objc_msgSend_willModify(self, a2, v2, v3);
  objc_msgSend_dropAllAggregators(self, v5, v6, v7);
  groupingColumns = self->_groupingColumns;
  self->_groupingColumns = MEMORY[0x277CBEBF8];

  v9 = [TSTGroupNode alloc];
  inited = objc_msgSend_initAsRootNodeForGroupBy_(v9, v10, self, v11);
  groupRoot = self->_groupRoot;
  self->_groupRoot = inited;

  self->_isEnabled = 0;
  sub_221087B24(&self->_groupNodesByGroupUid);
  v14 = self->_groupRoot;
  v27[0] = objc_msgSend_groupUid(v14, v15, v16, v17);
  v27[1] = v18;
  v28 = v27;
  v19 = sub_2210880A0(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, v27, &unk_2217E17E0, &v28);
  objc_storeStrong(v19 + 4, v14);
  columnAggregates = self->_columnAggregates;
  self->_columnAggregates = 0;

  objc_msgSend_resetGroupings(self, v21, v22, v23);
  objc_msgSend_didChangeGroupByStructure(self, v24, v25, v26);
}

- (void)setIsEnabled:(BOOL)enabled
{
  objc_msgSend_willModify(self, a2, enabled, v3);
  self->_isEnabled = enabled;
  objc_msgSend_didChangeGroupByStructure(self, v6, v7, v8);
  v12 = objc_msgSend_calcEngine(self, v9, v10, v11);
  objc_msgSend_markIndirectCallsAsDirty(v12, v13, v14, v15);

  isEnabled = self->_isEnabled;
  v20 = objc_msgSend_calcEngine(self, v17, v18, v19);
  v28[0] = objc_msgSend_baseTableUID(self, v21, v22, v23);
  v28[1] = v24;
  if (isEnabled)
  {
    objc_msgSend_spillBlockedByContentPrecedentForTableUID_(TSCEHauntedOwner, v24, v28, v25);
  }

  else
  {
    objc_msgSend_spillBlockedByBeingVerticalPrecedentForTableUID_(TSCEHauntedOwner, v24, v28, v25);
  }

  objc_msgSend_markCellRefAsDirty_(v20, v26, v29, v27);
}

- (BOOL)isCategorized
{
  isEnabled = objc_msgSend_isEnabled(self, a2, v2, v3);
  if (isEnabled)
  {
    LOBYTE(isEnabled) = objc_msgSend_numberOfLevels(self, v6, v7, v8) != 0;
  }

  return isEnabled;
}

- (TSKUIDStruct)topLevelGroupUid
{
  v4 = objc_msgSend_groupUid(self->_groupRoot, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSCECellRef)columnOrderChangedPrecedent
{
  columnOrderChangedCoord = self->_columnOrderChangedCoord;
  if (columnOrderChangedCoord.row == 0x7FFFFFFF || (*&columnOrderChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_columnOrderChangedCoord = objc_msgSend_getNextAggFormulaCoord(self, a3, v3, v4);
  }

  result = objc_msgSend_groupByUid(self, a3, v3, v4);
  retstr->coordinate = self->_columnOrderChangedCoord;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v10;
  return result;
}

- (TSCECellRef)rowOrderChangedPrecedent
{
  rowOrderChangedCoord = self->_rowOrderChangedCoord;
  if (rowOrderChangedCoord.row == 0x7FFFFFFF || (*&rowOrderChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_rowOrderChangedCoord = objc_msgSend_getNextAggFormulaCoord(self, a3, v3, v4);
  }

  result = objc_msgSend_groupByUid(self, a3, v3, v4);
  retstr->coordinate = self->_rowOrderChangedCoord;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v10;
  return result;
}

- (TSCECellRef)rowOrderChangedPrecedentIgnoringRecalc
{
  rowOrderChangedIgnoringRecalcCoord = self->_rowOrderChangedIgnoringRecalcCoord;
  if (rowOrderChangedIgnoringRecalcCoord.row == 0x7FFFFFFF || (*&rowOrderChangedIgnoringRecalcCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_rowOrderChangedIgnoringRecalcCoord = objc_msgSend_getNextAggFormulaCoord(self, a3, v3, v4);
  }

  result = objc_msgSend_groupByUid(self, a3, v3, v4);
  retstr->coordinate = self->_rowOrderChangedIgnoringRecalcCoord;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v10;
  return result;
}

- (TSCECellRef)hiddenStatesChangedPrecedent
{
  hiddenStatesChangedCoord = self->_hiddenStatesChangedCoord;
  if (hiddenStatesChangedCoord.row == 0x7FFFFFFF || (*&hiddenStatesChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    objc_msgSend_willModify(self, a3, v3, v4);
    self->_hiddenStatesChangedCoord = objc_msgSend_getNextAggFormulaCoord(self, v9, v10, v11);
  }

  result = objc_msgSend_groupByUid(self, a3, v3, v4);
  retstr->coordinate = self->_hiddenStatesChangedCoord;
  retstr->_tableUID._lower = result;
  retstr->_tableUID._upper = v13;
  return result;
}

- (void)resetGroupingColumnsFormula
{
  v114 = *MEMORY[0x277D85DE8];
  groupingColumnsFormulaCoord = self->_groupingColumnsFormulaCoord;
  if (groupingColumnsFormulaCoord.row == 0x7FFFFFFF || (*&groupingColumnsFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_groupingColumnsFormulaCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3);
  }

  groupingColumnHeadersFormulaCoord = self->_groupingColumnHeadersFormulaCoord;
  if (groupingColumnHeadersFormulaCoord.row == 0x7FFFFFFF || (*&groupingColumnHeadersFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_groupingColumnHeadersFormulaCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3);
  }

  selfCopy = self;
  v9 = objc_msgSend_categoryOwner(self, a2, v2, v3);
  v13 = objc_msgSend_calcEngine(v9, v10, v11, v12);

  if (v13)
  {
    objc_msgSend_willModify(self, v14, v15, v16);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v112, 0, 1);
    v94 = objc_msgSend_emptyReferenceSetWrapper(v13, v17, v18, v19);
    v92 = objc_msgSend_emptyReferenceSetWrapper(v13, v20, v21, v22);
    *&v111 = objc_msgSend_baseTableUID(self, v23, v24, v25);
    *(&v111 + 1) = v26;
    v93 = objc_msgSend_tableModel(self, v26, v27, v28);
    v32 = objc_msgSend_tableInfo(self, v29, v30, v31);
    v36 = objc_msgSend_translator(v32, v33, v34, v35);

    v40 = objc_msgSend_tableModel(self, v37, v38, v39);
    v110.origin = objc_msgSend_headerRowRange(v40, v41, v42, v43);
    v110.size = v44;

    v45 = TSUCellRect::numRows(&v110);
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v46 = self->_groupingColumns;
    v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, &v106, v113, 16);
    if (v51)
    {
      v52 = (v45 - 1);
      v53 = *v107;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v107 != v53)
          {
            objc_enumerationMutation(v46);
          }

          v55 = *(*(&v106 + 1) + 8 * i);
          if (v36)
          {
            v56 = objc_msgSend_columnUid(*(*(&v106 + 1) + 8 * i), v48, v49, v50);
            v58 = objc_msgSend_baseColumnIndexForColumnUID_(v36, v57, v56, v57);
          }

          else
          {
            v59 = objc_msgSend_columnRowUIDMap(v93, v48, v49, v50);
            v63 = objc_msgSend_columnUid(v55, v60, v61, v62);
            v58 = objc_msgSend_columnIndexForColumnUID_(v59, v64, v63, v64);
          }

          if (v58 != 0x7FFF)
          {
            v104 = v111;
            v102 = (v58 << 32) | 0x7FFFFFFF;
            v103 = v102;
            v105 = 0;
            objc_msgSend_insertSpanningRangeRef_(v94, v48, &v102, v50);
            if (TSUCellRect::numRows(&v110))
            {
              v99 = v58 << 32;
              v100 = v99 | v52;
              v101 = v111;
              objc_msgSend_insertRangeRef_(v92, v48, &v99, v50);
            }
          }
        }

        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v48, &v106, v113, 16);
      }

      while (v51);
    }

    v112.var2 = 1;
    v102 = objc_msgSend_groupByUid(selfCopy, v65, v66, v67);
    v103 = v68;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v98, &v112);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v13, v69, &selfCopy->_groupingColumnsFormulaCoord, &v102, v94, &v98);

    v102 = objc_msgSend_groupByUid(selfCopy, v70, v71, v72);
    v103 = v73;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v97, &v112);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v13, v74, &selfCopy->_groupingColumnHeadersFormulaCoord, &v102, v92, &v97);

    objc_msgSend_hiddenStatesChangedPrecedent(selfCopy, v75, v76, v77);
    v81 = objc_msgSend_emptyReferenceSetWrapper(v13, v78, v79, v80);
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v82, &v111, v83);
    objc_msgSend_insertCellRef_(v81, v84, &v99, v85);
    v96 = v102;
    v99 = objc_msgSend_groupByUid(selfCopy, v86, v87, v88);
    v100 = v89;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v95, &v112);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v13, v90, &v96, &v99, v81, &v95);
  }
}

- (void)resetAllAggsFormula
{
  indirectAggTypeChangeFormulaCoord = self->_indirectAggTypeChangeFormulaCoord;
  if (indirectAggTypeChangeFormulaCoord.row == 0x7FFFFFFF || (*&indirectAggTypeChangeFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_indirectAggTypeChangeFormulaCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3);
  }

  groupingColumnsFormulaCoord = self->_groupingColumnsFormulaCoord;
  if (groupingColumnsFormulaCoord.row == 0x7FFFFFFF || (*&groupingColumnsFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_groupingColumnsFormulaCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3);
  }

  groupingColumnHeadersFormulaCoord = self->_groupingColumnHeadersFormulaCoord;
  if (groupingColumnHeadersFormulaCoord.row == 0x7FFFFFFF || (*&groupingColumnHeadersFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_groupingColumnHeadersFormulaCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3);
  }

  allAggsInGroupRootFormulaCoord = self->_allAggsInGroupRootFormulaCoord;
  if (allAggsInGroupRootFormulaCoord.row == 0x7FFFFFFF || (*&allAggsInGroupRootFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_allAggsInGroupRootFormulaCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3);
  }

  columnOrderChangedCoord = self->_columnOrderChangedCoord;
  if (columnOrderChangedCoord.row == 0x7FFFFFFF || (*&columnOrderChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_columnOrderChangedCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3);
  }

  rowOrderChangedCoord = self->_rowOrderChangedCoord;
  if (rowOrderChangedCoord.row == 0x7FFFFFFF || (*&rowOrderChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_rowOrderChangedCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3);
  }

  rowOrderChangedIgnoringRecalcCoord = self->_rowOrderChangedIgnoringRecalcCoord;
  if (rowOrderChangedIgnoringRecalcCoord.row == 0x7FFFFFFF || (*&rowOrderChangedIgnoringRecalcCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_rowOrderChangedIgnoringRecalcCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3);
  }

  hiddenStatesChangedCoord = self->_hiddenStatesChangedCoord;
  if (hiddenStatesChangedCoord.row == 0x7FFFFFFF || (*&hiddenStatesChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    self->_hiddenStatesChangedCoord = objc_msgSend_getNextAggFormulaCoord(self, a2, v2, v3);
  }

  v17 = objc_msgSend_categoryOwner(self, a2, v2, v3);
  v24 = objc_msgSend_minion(v17, v18, v19, v20);
  if (!v24)
  {
    v24 = objc_msgSend_calcEngine(v17, v21, v22, v23);
  }

  v28 = objc_msgSend_calcEngine(v17, v21, v22, v23);
  if (v24 && objc_msgSend_allowRegistrationOfAggFormulas(v17, v25, v26, v27))
  {
    objc_msgSend_willModify(self, v29, v30, v31);
    v86 = v28;
    v35 = objc_msgSend_emptyReferenceSetWrapper(v28, v32, v33, v34);
    for (i = *(objc_msgSend_aggNodes(self->_groupRoot, v36, v37, v38) + 16); i; i = *i)
    {
      v43 = objc_msgSend_formulaCoord(i[4], v39, v40, v41);
      v47 = objc_msgSend_groupByUid(self, v44, v45, v46);
      *&v94.var0 = v43;
      v94.var6._lower = v47;
      v94.var6._upper = v48;
      objc_msgSend_insertCellRef_(v35, v48, &v94, v49);
    }

    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v94, 0, 1);
    v94.var2 = 1;
    v90 = objc_msgSend_groupByUid(self, v50, v51, v52);
    v91 = v53;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v93, &v94);
    v28 = v86;
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v24, v54, &self->_allAggsInGroupRootFormulaCoord, &v90, v35, &v93);

    v58 = objc_msgSend_emptyReferenceSetWrapper(v86, v55, v56, v57);
    v62 = objc_msgSend_groupByUid(self, v59, v60, v61);
    v90 = self->_groupingColumnHeadersFormulaCoord;
    v91 = v62;
    v92 = v63;
    objc_msgSend_insertCellRef_(v58, v63, &v90, v64);
    v90 = objc_msgSend_groupByUid(self, v65, v66, v67);
    v91 = v68;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v89, &v94);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v24, v69, &self->_indirectAggTypeChangeFormulaCoord, &v90, v58, &v89);

    v73 = objc_msgSend_emptyReferenceSetWrapper(v86, v70, v71, v72);
    v88[0] = objc_msgSend_baseTableUID(v17, v74, v75, v76);
    v88[1] = v77;
    objc_msgSend_filteringChangedPrecedentForTableUID_(TSCEHauntedOwner, v77, v88, v78);
    objc_msgSend_insertCellRef_(v73, v79, &v90, v80);
    v90 = objc_msgSend_groupByUid(self, v81, v82, v83);
    v91 = v84;
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v87, &v94);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v24, v85, &self->_hiddenStatesChangedCoord, &v90, v73, &v87);
  }
}

- (void)didCreateGroup:(id)group
{
  groupCopy = group;
  v28 = groupCopy;
  if (self->_calcEngineGroupByChangeNotifications)
  {
    if (!groupCopy)
    {
      goto LABEL_11;
    }

    v8 = [TSTGroupByChangeDelayedNotification alloc];
    v10 = objc_msgSend_initWithNotifyType_group_(v8, v9, 3, v28);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v11, v10, v12);
    goto LABEL_9;
  }

  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v5, v6, v7))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTGroupBy didCreateGroup:]", v14);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 873, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    }

    if (v28)
    {
      v24 = [TSTGroupByChangeDelayedNotification alloc];
      v10 = objc_msgSend_initWithNotifyType_group_(v24, v25, 3, v28);
      objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v26, v10, v27);
LABEL_9:
    }
  }

  else
  {
    objc_msgSend_didCreateGroup_(self->_groupByChangeDistributor, v13, v28, v14);
  }

LABEL_11:
}

- (void)didAddGroupNode:(id)node
{
  nodeCopy = node;
  v9 = nodeCopy;
  if (nodeCopy)
  {
    v14[0] = objc_msgSend_groupUid(nodeCopy, v6, v7, v8);
    v14[1] = v10;
    v15 = v14;
    v11 = sub_2210880A0(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, v14, &unk_2217E17E0, &v15);
    objc_storeStrong(v11 + 4, node);
    objc_msgSend_didCreateGroup_(self, v12, v9, v13);
  }
}

- (void)willRemoveGroup:(id)group
{
  groupCopy = group;
  v28 = groupCopy;
  if (self->_calcEngineGroupByChangeNotifications)
  {
    if (!groupCopy)
    {
      goto LABEL_11;
    }

    v8 = [TSTGroupByChangeDelayedNotification alloc];
    v10 = objc_msgSend_initWithNotifyType_group_(v8, v9, 4, v28);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v11, v10, v12);
    goto LABEL_9;
  }

  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v5, v6, v7))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTGroupBy willRemoveGroup:]", v14);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 900, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    }

    if (v28)
    {
      v24 = [TSTGroupByChangeDelayedNotification alloc];
      v10 = objc_msgSend_initWithNotifyType_group_(v24, v25, 4, v28);
      objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v26, v10, v27);
LABEL_9:
    }
  }

  else
  {
    objc_msgSend_willRemoveGroup_(self->_groupByChangeDistributor, v13, v28, v14);
  }

LABEL_11:
}

- (void)didRemoveGroup:(id)group
{
  groupCopy = group;
  v28 = groupCopy;
  if (self->_calcEngineGroupByChangeNotifications)
  {
    if (!groupCopy)
    {
      goto LABEL_11;
    }

    v8 = [TSTGroupByChangeDelayedNotification alloc];
    v10 = objc_msgSend_initWithNotifyType_group_(v8, v9, 5, v28);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v11, v10, v12);
    goto LABEL_9;
  }

  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v5, v6, v7))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTGroupBy didRemoveGroup:]", v14);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 923, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    }

    if (v28)
    {
      v24 = [TSTGroupByChangeDelayedNotification alloc];
      v10 = objc_msgSend_initWithNotifyType_group_(v24, v25, 5, v28);
      objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v26, v10, v27);
LABEL_9:
    }
  }

  else
  {
    objc_msgSend_didRemoveGroup_(self->_groupByChangeDistributor, v13, v28, v14);
  }

LABEL_11:
}

- (void)willRemoveGroupNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    objc_msgSend_willRemoveGroup_(self, v4, nodeCopy, v5);
    v13[0] = objc_msgSend_groupUid(nodeCopy, v7, v8, v9);
    v13[1] = v10;
    v11 = sub_2210875C4(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, v13);
    if (v11)
    {
      sub_221087680(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, v11, v13);
      sub_221087224(v13);
    }

    objc_msgSend_didRemoveGroup_(self, v11, nodeCopy, v12);
  }
}

- (void)didAddRowUID:(TSKUIDStruct)d toGroup:(id)group
{
  upper = d._upper;
  lower = d._lower;
  groupCopy = group;
  v31 = groupCopy;
  if (self->_calcEngineGroupByChangeNotifications)
  {
    if (!groupCopy)
    {
      goto LABEL_11;
    }

    v11 = [TSTGroupByChangeDelayedNotification alloc];
    v13 = objc_msgSend_initWithNotifyType_group_rowUid_(v11, v12, 6, v31, lower, upper);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v14, v13, v15);
    goto LABEL_9;
  }

  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v8, v9, v10))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTGroupBy didAddRowUID:toGroup:]", v17);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 958, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
    }

    if (v31)
    {
      v27 = [TSTGroupByChangeDelayedNotification alloc];
      v13 = objc_msgSend_initWithNotifyType_group_rowUid_(v27, v28, 6, v31, lower, upper);
      objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v29, v13, v30);
LABEL_9:
    }
  }

  else
  {
    objc_msgSend_didAddRowUID_toGroup_(self->_groupByChangeDistributor, v16, lower, upper, v31);
  }

LABEL_11:
}

- (void)didRemoveRowUID:(TSKUIDStruct)d fromGroup:(id)group
{
  upper = d._upper;
  lower = d._lower;
  groupCopy = group;
  v31 = groupCopy;
  if (self->_calcEngineGroupByChangeNotifications)
  {
    if (!groupCopy)
    {
      goto LABEL_11;
    }

    v11 = [TSTGroupByChangeDelayedNotification alloc];
    v13 = objc_msgSend_initWithNotifyType_group_rowUid_(v11, v12, 7, v31, lower, upper);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v14, v13, v15);
    goto LABEL_9;
  }

  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v8, v9, v10))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTGroupBy didRemoveRowUID:fromGroup:]", v17);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 979, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
    }

    if (v31)
    {
      v27 = [TSTGroupByChangeDelayedNotification alloc];
      v13 = objc_msgSend_initWithNotifyType_group_rowUid_(v27, v28, 7, v31, lower, upper);
      objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v29, v13, v30);
LABEL_9:
    }
  }

  else
  {
    objc_msgSend_didRemoveRowUID_fromGroup_(self->_groupByChangeDistributor, v16, lower, upper, v31);
  }

LABEL_11:
}

- (void)startOfGroupingChangesBatch
{
  objc_msgSend_beginDeferringRebuildFormulas(self, a2, v2, v3);
  if (self->_calcEngineGroupByChangeNotifications)
  {
    v8 = [TSTGroupByChangeDelayedNotification alloc];
    v29 = objc_msgSend_initWithNotifyType_group_(v8, v9, 1, 0);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v10, v29, v11);
  }

  else
  {
    if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v5, v6, v7))
    {
      if (!self->_deferredGroupByChangeNotifications)
      {
        v15 = MEMORY[0x277D81150];
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTGroupBy startOfGroupingChangesBatch]", v14);
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v17);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v30, v18, 1000, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
      }

      v23 = [TSTGroupByChangeDelayedNotification alloc];
      v31 = objc_msgSend_initWithNotifyType_group_(v23, v24, 1, 0);
      objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v25, v31, v26);
    }

    else
    {
      objc_msgSend_startOfGroupingChangesBatch(self->_groupByChangeDistributor, v12, v13, v14);
    }

    MEMORY[0x2821F9670](self, sel_deferGroupByChangeNotifications, v27, v28);
  }
}

- (void)endOfGroupingChangesBatch
{
  objc_msgSend_endDeferringRebuildFormulas(self, a2, v2, v3);
  if (self->_calcEngineGroupByChangeNotifications)
  {
    v8 = [TSTGroupByChangeDelayedNotification alloc];
    v31 = objc_msgSend_initWithNotifyType_group_(v8, v9, 2, 0);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v10, v31, v11);
LABEL_7:

    return;
  }

  objc_msgSend_resumeGroupByChangeNotifications(self, v5, v6, v7);
  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, v12, v13, v14))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v18 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTGroupBy endOfGroupingChangesBatch]", v17);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v32, v21, 1023, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    }

    v26 = [TSTGroupByChangeDelayedNotification alloc];
    v31 = objc_msgSend_initWithNotifyType_group_(v26, v27, 2, 0);
    objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v28, v31, v29);
    goto LABEL_7;
  }

  groupByChangeDistributor = self->_groupByChangeDistributor;

  objc_msgSend_endOfGroupingChangesBatch(groupByChangeDistributor, v15, v16, v17);
}

- (void)didChangeGroupByStructure
{
  if (self->_calcEngineGroupByChangeNotifications)
  {
    v5 = [TSTGroupByChangeDelayedNotification alloc];
    v7 = objc_msgSend_initWithNotifyType_group_(v5, v6, 8, 0);
    objc_msgSend_addObject_(self->_calcEngineGroupByChangeNotifications, v8, v7, v9);
LABEL_7:

    goto LABEL_8;
  }

  if (objc_msgSend_isDeferringGroupByChangeNotifications(self, a2, v2, v3))
  {
    if (!self->_deferredGroupByChangeNotifications)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTGroupBy didChangeGroupByStructure]", v12);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 1041, 0, "invalid nil value for '%{public}s'", "_deferredGroupByChangeNotifications");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    }

    v22 = [TSTGroupByChangeDelayedNotification alloc];
    v7 = objc_msgSend_initWithNotifyType_group_(v22, v23, 8, 0);
    objc_msgSend_addObject_(self->_deferredGroupByChangeNotifications, v24, v7, v25);
    goto LABEL_7;
  }

  objc_msgSend_didChangeGroupByStructure(self->_groupByChangeDistributor, v10, v11, v12);
LABEL_8:

  objc_msgSend_markAllDependentsAsDirty(self, v26, v27, v28);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 15))
  {
    v7 = *(archive + 15);
  }

  else
  {
    v7 = MEMORY[0x277D809E0];
  }

  TSP::UUIDData::UUIDData(&v71, v7);
  self->_groupByUid = v71;
  v8 = objc_opt_new();
  v9 = *(archive + 8);
  if (v9 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = [TSTGroupingColumn alloc];
      v16 = objc_msgSend_initWithArchive_(v11, v12, *(*(archive + 5) + v10), v13);
      if (v16)
      {
        objc_msgSend_addObject_(v8, v14, v16, v15);
      }

      v10 += 8;
      --v9;
    }

    while (v9);
  }

  objc_storeStrong(&self->_groupingColumns, v8);
  self->_isEnabled = *(archive + 216);
  v17 = objc_opt_new();
  groupByChangeDistributor = self->_groupByChangeDistributor;
  self->_groupByChangeDistributor = v17;

  self->_nextAggFormulaCoord = 0;
  self->_ownerIndex = *(archive + 55);
  if (*(archive + 26) < 1)
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v19, 2, v20);
    v24 = *(archive + 14);
    if (v24 >= 1)
    {
      v25 = 8;
      do
      {
        v26 = [TSTAggregator alloc];
        v28 = objc_msgSend_initWithArchive_groupBy_(v26, v27, *(*(archive + 8) + v25), self);
        objc_msgSend_addAggregator_(self, v29, v28, v30);

        v25 += 8;
        --v24;
      }

      while (v24);
    }
  }

  else
  {
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = sub_22134F58C;
    v70[3] = &unk_27845D8D8;
    v70[4] = self;
    v21 = unarchiverCopy;
    v22 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v21, v23, archive + 96, v22, 0, v70);
  }

  if ((*(archive + 17) & 2) != 0)
  {
    sub_2210BCFE0(&self->_rowUidLookupList, *(archive + 24));
  }

  v31 = objc_opt_new();
  v32 = *(archive + 20);
  if (v32 >= 1)
  {
    v33 = 8;
    do
    {
      v34 = [TSTColumnAggregate alloc];
      v39 = objc_msgSend_initWithArchive_(v34, v35, *(*(archive + 11) + v33), v36);
      if (v39)
      {
        objc_msgSend_addObject_(v31, v37, v39, v38);
      }

      v33 += 8;
      --v32;
    }

    while (v32);
  }

  objc_storeStrong(&self->_columnAggregates, v31);
  if ((*(archive + 16) & 4) != 0)
  {
    self->_indirectAggTypeChangeFormulaCoord = sub_2212697C0(*(archive + 17));
    objc_msgSend_usedAggFormulaCoord_(self, v42, &self->_indirectAggTypeChangeFormulaCoord, v43);
  }

  else
  {
    self->_indirectAggTypeChangeFormulaCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 16) & 8) != 0)
  {
    self->_groupingColumnsFormulaCoord = sub_2212697C0(*(archive + 18));
    objc_msgSend_usedAggFormulaCoord_(self, v44, &self->_groupingColumnsFormulaCoord, v45);
  }

  else
  {
    self->_groupingColumnsFormulaCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 16) & 0x20) != 0)
  {
    self->_groupingColumnHeadersFormulaCoord = sub_2212697C0(*(archive + 20));
    objc_msgSend_usedAggFormulaCoord_(self, v46, &self->_groupingColumnHeadersFormulaCoord, v47);
  }

  else
  {
    self->_groupingColumnHeadersFormulaCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 16) & 0x10) != 0)
  {
    self->_allAggsInGroupRootFormulaCoord = sub_2212697C0(*(archive + 19));
    objc_msgSend_usedAggFormulaCoord_(self, v48, &self->_allAggsInGroupRootFormulaCoord, v49);
  }

  else
  {
    self->_allAggsInGroupRootFormulaCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 16) & 0x40) != 0)
  {
    self->_columnOrderChangedCoord = sub_2212697C0(*(archive + 21));
    objc_msgSend_usedAggFormulaCoord_(self, v50, &self->_columnOrderChangedCoord, v51);
  }

  else
  {
    self->_columnOrderChangedCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 16) & 0x80) != 0)
  {
    self->_rowOrderChangedCoord = sub_2212697C0(*(archive + 22));
    objc_msgSend_usedAggFormulaCoord_(self, v52, &self->_rowOrderChangedCoord, v53);
  }

  else
  {
    self->_rowOrderChangedCoord = 0x7FFF7FFFFFFFLL;
  }

  if (*(archive + 17))
  {
    self->_rowOrderChangedIgnoringRecalcCoord = sub_2212697C0(*(archive + 23));
    objc_msgSend_usedAggFormulaCoord_(self, v54, &self->_rowOrderChangedIgnoringRecalcCoord, v55);
  }

  else
  {
    self->_rowOrderChangedIgnoringRecalcCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 17) & 4) != 0)
  {
    self->_hiddenStatesChangedCoord = sub_2212697C0(*(archive + 25));
    objc_msgSend_usedAggFormulaCoord_(self, v56, &self->_hiddenStatesChangedCoord, v57);
  }

  else
  {
    self->_hiddenStatesChangedCoord = 0x7FFF7FFFFFFFLL;
  }

  if ((*(archive + 17) & 8) != 0)
  {
    v64 = *(archive + 26);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = sub_22134F6D4;
    v69[3] = &unk_278462F58;
    v69[4] = self;
    v65 = unarchiverCopy;
    v66 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v65, v67, v64, v66, 0, v69);
  }

  else
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v40, 2, v41);
    v58 = [TSTGroupNode alloc];
    if (*(archive + 16))
    {
      v60 = objc_msgSend_initWithArchive_forGroupBy_(v58, v59, *(archive + 16), self);
    }

    else
    {
      v60 = objc_msgSend_initWithArchive_forGroupBy_(v58, v59, &TST::_GroupByArchive_GroupNodeArchive_default_instance_, self);
    }

    groupRoot = self->_groupRoot;
    self->_groupRoot = v60;
  }

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = sub_22134F6E8;
  v68[3] = &unk_27845E3F8;
  v68[4] = self;
  objc_msgSend_addFinalizeHandler_(unarchiverCopy, v62, v68, v63);
}

- (TSTGroupBy)initWithArchive:(const void *)archive forCategoryOwner:(id)owner unarchiver:(id)unarchiver
{
  ownerCopy = owner;
  unarchiverCopy = unarchiver;
  v11 = objc_opt_new();
  v12 = *(archive + 8);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      v14 = [TSTGroupingColumn alloc];
      v19 = objc_msgSend_initWithArchive_(v14, v15, *(*(archive + 5) + v13), v16);
      if (v19)
      {
        objc_msgSend_addObject_(v11, v17, v19, v18);
      }

      if (*(archive + 17))
      {
        v20 = *(archive + 23);
        v30 = 0;
        v30 = sub_2212697C0(v20);
        objc_msgSend_usedAggFormulaCoord_(self, v21, &v30, v22);
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

  if (*(archive + 15))
  {
    v23 = *(archive + 15);
  }

  else
  {
    v23 = MEMORY[0x277D809E0];
  }

  v30 = TSKUIDStruct::loadFromMessage(v23, v10);
  v31 = v24;
  if ((*(archive + 4) & 0x2000) != 0)
  {
    v25 = *(archive + 110);
  }

  else
  {
    v25 = 8;
  }

  isEnabled_categoryOwner_groupByUid_ownerIndex = objc_msgSend_initWithGroupings_isEnabled_categoryOwner_groupByUid_ownerIndex_(self, v24, v11, *(archive + 216), ownerCopy, &v30, v25);
  v28 = isEnabled_categoryOwner_groupByUid_ownerIndex;
  if (isEnabled_categoryOwner_groupByUid_ownerIndex)
  {
    objc_msgSend_loadFromArchive_unarchiver_(isEnabled_categoryOwner_groupByUid_ownerIndex, v27, archive, unarchiverCopy, v30, v31);
  }

  return v28;
}

- (BOOL)isPrePivotV2Compatible
{
  if (objc_msgSend_rowCount(self->_groupRoot, a2, v2, v3) > 0x7A11F)
  {
    return 0;
  }

  v9 = objc_msgSend_count(self->_aggregators, v5, v6, v7);
  v12 = objc_msgSend_numberOfGroupsUptoLevel_(self, v10, 10, v11);
  if (v9 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v9;
  }

  return (v13 * v12) < 0x186A1;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver backwardCompatOptions:(unint64_t)options
{
  v140 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  if ((options & 2) != 0)
  {
    if ((objc_msgSend_isPrePivotV2Compatible(self, v8, v9, v10) & 1) == 0)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTGroupBy encodeToArchive:archiver:backwardCompatOptions:]", v14);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 1272, 0, "Caller should already have tested we think we can fit in a single message.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    }

    isPrePivotV2Compatible = 1;
  }

  else
  {
    isPrePivotV2Compatible = objc_msgSend_isPrePivotV2Compatible(self, v8, v9, v10);
  }

  *(archive + 4) |= 1u;
  v24 = *(archive + 15);
  if (!v24)
  {
    v25 = *(archive + 1);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = MEMORY[0x223DA0360](v25);
    *(archive + 15) = v24;
  }

  TSP::UUIDData::saveToMessage(&self->_groupByUid, v24);
  isEnabled = self->_isEnabled;
  v29 = *(archive + 4) | 0x1000;
  *(archive + 4) = v29;
  *(archive + 216) = isEnabled;
  ownerIndex = self->_ownerIndex;
  if (!self->_ownerIndex)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSTGroupBy encodeToArchive:archiver:backwardCompatOptions:]", v27);
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v34);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 1277, 0, "Wasn't expecting this not set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
    ownerIndex = self->_ownerIndex;
    v29 = *(archive + 4);
  }

  *(archive + 4) = v29 | 0x2000;
  *(archive + 55) = ownerIndex;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v124 = 88;
  v40 = self->_groupingColumns;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v133, v139, 16);
  if (v43)
  {
    v44 = *v134;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v134 != v44)
        {
          objc_enumerationMutation(v40);
        }

        v46 = *(*(&v133 + 1) + 8 * i);
        v47 = *(archive + 5);
        if (!v47)
        {
          goto LABEL_22;
        }

        v48 = *(archive + 8);
        v49 = *v47;
        if (v48 < *v47)
        {
          *(archive + 8) = v48 + 1;
          objc_msgSend_encodeToArchive_archiver_(v46, v42, *&v47[2 * v48 + 2], archiverCopy, v124);
          continue;
        }

        if (v49 == *(archive + 9))
        {
LABEL_22:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v47 = *(archive + 5);
          v49 = *v47;
        }

        *v47 = v49 + 1;
        v50 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnArchive>(*(archive + 3));
        v51 = *(archive + 8);
        v52 = *(archive + 5) + 8 * v51;
        *(archive + 8) = v51 + 1;
        *(v52 + 8) = v50;
        objc_msgSend_encodeToArchive_archiver_(v46, v53, v50, archiverCopy, v124);
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v42, &v133, v139, 16);
    }

    while (v43);
  }

  groupRoot = self->_groupRoot;
  if (groupRoot)
  {
    if ((options & 2) == 0)
    {
      *(archive + 4) |= 0x800u;
      v56 = *(archive + 26);
      if (!v56)
      {
        v57 = *(archive + 1);
        if (v57)
        {
          v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
        }

        v56 = MEMORY[0x223DA0390](v57);
        *(archive + 26) = v56;
      }

      objc_msgSend_setStrongReference_message_(archiverCopy, v54, groupRoot, v56, v124);
      objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v58, 18, archive);
    }

    if (isPrePivotV2Compatible)
    {
      v59 = self->_groupRoot;
      *(archive + 4) |= 2u;
      v60 = *(archive + 16);
      if (!v60)
      {
        v61 = *(archive + 1);
        if (v61)
        {
          v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
        }

        v60 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive>(v61);
        *(archive + 16) = v60;
      }

      objc_msgSend_encodeToArchive_backwardCompatOptions_archiver_(v59, v54, v60, options, archiverCopy, v124);
    }

    else
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v54, 0xC000000000007, @"TSTPivotTables_v2");
    }
  }

  indirectAggTypeChangeFormulaCoord = self->_indirectAggTypeChangeFormulaCoord;
  if (indirectAggTypeChangeFormulaCoord.row != 0x7FFFFFFF && (*&indirectAggTypeChangeFormulaCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 4u;
    v63 = *(archive + 17);
    if (!v63)
    {
      v64 = *(archive + 1);
      if (v64)
      {
        v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
      }

      v63 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v64);
      *(archive + 17) = v63;
    }

    sub_221269820(&self->_indirectAggTypeChangeFormulaCoord, v63);
  }

  groupingColumnsFormulaCoord = self->_groupingColumnsFormulaCoord;
  if (groupingColumnsFormulaCoord.row != 0x7FFFFFFF && (*&groupingColumnsFormulaCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 8u;
    v66 = *(archive + 18);
    if (!v66)
    {
      v67 = *(archive + 1);
      if (v67)
      {
        v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
      }

      v66 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v67);
      *(archive + 18) = v66;
    }

    sub_221269820(&self->_groupingColumnsFormulaCoord, v66);
  }

  groupingColumnHeadersFormulaCoord = self->_groupingColumnHeadersFormulaCoord;
  if (groupingColumnHeadersFormulaCoord.row != 0x7FFFFFFF && (*&groupingColumnHeadersFormulaCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 0x20u;
    v69 = *(archive + 20);
    if (!v69)
    {
      v70 = *(archive + 1);
      if (v70)
      {
        v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
      }

      v69 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v70);
      *(archive + 20) = v69;
    }

    sub_221269820(&self->_groupingColumnHeadersFormulaCoord, v69);
  }

  allAggsInGroupRootFormulaCoord = self->_allAggsInGroupRootFormulaCoord;
  if (allAggsInGroupRootFormulaCoord.row != 0x7FFFFFFF && (*&allAggsInGroupRootFormulaCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 0x10u;
    v72 = *(archive + 19);
    if (!v72)
    {
      v73 = *(archive + 1);
      if (v73)
      {
        v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
      }

      v72 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v73);
      *(archive + 19) = v72;
    }

    sub_221269820(&self->_allAggsInGroupRootFormulaCoord, v72);
  }

  columnOrderChangedCoord = self->_columnOrderChangedCoord;
  if (columnOrderChangedCoord.row != 0x7FFFFFFF && (*&columnOrderChangedCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 0x40u;
    v75 = *(archive + 21);
    if (!v75)
    {
      v76 = *(archive + 1);
      if (v76)
      {
        v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
      }

      v75 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v76);
      *(archive + 21) = v75;
    }

    sub_221269820(&self->_columnOrderChangedCoord, v75);
  }

  rowOrderChangedCoord = self->_rowOrderChangedCoord;
  if (rowOrderChangedCoord.row != 0x7FFFFFFF && (*&rowOrderChangedCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 0x80u;
    v78 = *(archive + 22);
    if (!v78)
    {
      v79 = *(archive + 1);
      if (v79)
      {
        v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
      }

      v78 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v79);
      *(archive + 22) = v78;
    }

    sub_221269820(&self->_rowOrderChangedCoord, v78);
  }

  rowOrderChangedIgnoringRecalcCoord = self->_rowOrderChangedIgnoringRecalcCoord;
  if (rowOrderChangedIgnoringRecalcCoord.row != 0x7FFFFFFF && (*&rowOrderChangedIgnoringRecalcCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 0x100u;
    v81 = *(archive + 23);
    if (!v81)
    {
      v82 = *(archive + 1);
      if (v82)
      {
        v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
      }

      v81 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v82);
      *(archive + 23) = v81;
    }

    sub_221269820(&self->_rowOrderChangedIgnoringRecalcCoord, v81);
  }

  hiddenStatesChangedCoord = self->_hiddenStatesChangedCoord;
  if (hiddenStatesChangedCoord.row != 0x7FFFFFFF && (*&hiddenStatesChangedCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    *(archive + 4) |= 0x400u;
    v84 = *(archive + 25);
    if (!v84)
    {
      v85 = *(archive + 1);
      if (v85)
      {
        v85 = *(v85 & 0xFFFFFFFFFFFFFFFELL);
      }

      v84 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v85);
      *(archive + 25) = v84;
    }

    sub_221269820(&self->_hiddenStatesChangedCoord, v84);
  }

  if ((options & 2) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v86, self->_aggregators, archive + 96);
    os_unfair_lock_unlock(&self->_lock);
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(archiverCopy, v87, 17, archive);
  }

  if (isPrePivotV2Compatible)
  {
    os_unfair_lock_lock(&self->_lock);
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v88 = self->_aggregators;
    v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v129, v138, 16);
    if (!v92)
    {
      goto LABEL_113;
    }

    v93 = *v130;
    while (1)
    {
      for (j = 0; j != v92; ++j)
      {
        if (*v130 != v93)
        {
          objc_enumerationMutation(v88);
        }

        v95 = *(*(&v129 + 1) + 8 * j);
        v96 = *(archive + 8);
        if (!v96)
        {
          goto LABEL_109;
        }

        v97 = *(archive + 14);
        v98 = *v96;
        if (v97 < *v96)
        {
          *(archive + 14) = v97 + 1;
          objc_msgSend_encodeToArchive_(v95, v90, *&v96[2 * v97 + 2], v91, v124);
          continue;
        }

        if (v98 == *(archive + 15))
        {
LABEL_109:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 48));
          v96 = *(archive + 8);
          v98 = *v96;
        }

        *v96 = v98 + 1;
        v99 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_AggregatorArchive>(*(archive + 6));
        v100 = *(archive + 14);
        v101 = *(archive + 8) + 8 * v100;
        *(archive + 14) = v100 + 1;
        *(v101 + 8) = v99;
        objc_msgSend_encodeToArchive_(v95, v102, v99, v103, v124);
      }

      v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v90, &v129, v138, 16);
      if (!v92)
      {
LABEL_113:

        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_115;
      }
    }
  }

  objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v54, 0xC000000000007, @"TSTPivotTables_v2");
LABEL_115:
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v104 = self->_columnAggregates;
  v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v105, &v125, v137, 16);
  if (v107)
  {
    v108 = *v126;
    do
    {
      for (k = 0; k != v107; ++k)
      {
        if (*v126 != v108)
        {
          objc_enumerationMutation(v104);
        }

        v110 = *(*(&v125 + 1) + 8 * k);
        v111 = *(archive + 11);
        if (!v111)
        {
          goto LABEL_125;
        }

        v112 = *(archive + 20);
        v113 = *v111;
        if (v112 < *v111)
        {
          *(archive + 20) = v112 + 1;
          objc_msgSend_encodeToArchive_archiver_(v110, v106, *&v111[2 * v112 + 2], archiverCopy, v124);
          continue;
        }

        if (v113 == *(archive + 21))
        {
LABEL_125:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 72));
          v111 = *(archive + 11);
          v113 = *v111;
        }

        *v111 = v113 + 1;
        v114 = google::protobuf::Arena::CreateMaybeMessage<TST::ColumnAggregateArchive>(*(archive + 9));
        v115 = *(archive + 20);
        v116 = *(archive + 11) + 8 * v115;
        *(archive + 20) = v115 + 1;
        *(v116 + 8) = v114;
        objc_msgSend_encodeToArchive_archiver_(v110, v117, v114, archiverCopy, v124);
      }

      v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v104, v106, &v125, v137, 16);
    }

    while (v107);
  }

  if (self->_isEnabled || objc_msgSend_count(*(&self->super.super.isa + v124), v118, v119, v120))
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v118, 0x300020000000ALL, @"TSTCategorizedTables", v124);
  }

  p_rowUidLookupList = &self->_rowUidLookupList;
  if (((p_rowUidLookupList->_uids.__end_ - p_rowUidLookupList->_uids.__begin_) & 0xFFFFFFFF0) != 0)
  {
    *(archive + 4) |= 0x200u;
    v122 = *(archive + 24);
    if (!v122)
    {
      v123 = *(archive + 1);
      if (v123)
      {
        v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
      }

      v122 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidLookupListArchive>(v123);
      *(archive + 24) = v122;
    }

    sub_2210BCF18(&p_rowUidLookupList->_uids.__begin_, v122);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[274], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221362684, off_2812E4498[274]);

  objc_msgSend_encodeToArchive_archiver_backwardCompatOptions_(self, v6, v5, archiverCopy, 1);
}

- (unint64_t)archivingCompatibilityVersion
{
  if (!self->_isEnabled)
  {
    objc_msgSend_count(self->_groupingColumns, a2, v2, v3);
  }

  return 0x300020000000ALL;
}

- (void)updateWithDocumentRoot:(id)root
{
  rootCopy = root;
  if (!rootCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTGroupBy updateWithDocumentRoot:]", v5);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 1398, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  objc_msgSend_updateWithDocumentRoot_(self->_groupRoot, v4, rootCopy, v5);
  v20 = objc_msgSend_documentLocale(rootCopy, v15, v16, v17);
  for (i = self->_aggNodesByFormulaCoord.__table_.__first_node_.__next_; i; i = *i)
  {
    v22 = i[3];
    v26 = objc_msgSend_accumulator(v22, v23, v24, v25);
    objc_msgSend_setLocale_(v26, v27, v20, v28);
  }

  objc_msgSend_p_setupCustomFormatsWithLocale_(self, v18, v20, v19);
}

- (void)checkForFormulaCoordUpgrade
{
  allAggsInGroupRootFormulaCoord = self->_allAggsInGroupRootFormulaCoord;
  if (allAggsInGroupRootFormulaCoord.row == 0x7FFFFFFF || (*&allAggsInGroupRootFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  indirectAggTypeChangeFormulaCoord = self->_indirectAggTypeChangeFormulaCoord;
  if (indirectAggTypeChangeFormulaCoord.row == 0x7FFFFFFF || (*&indirectAggTypeChangeFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  groupingColumnsFormulaCoord = self->_groupingColumnsFormulaCoord;
  if (groupingColumnsFormulaCoord.row == 0x7FFFFFFF || (*&groupingColumnsFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  groupingColumnHeadersFormulaCoord = self->_groupingColumnHeadersFormulaCoord;
  if (groupingColumnHeadersFormulaCoord.row == 0x7FFFFFFF || (*&groupingColumnHeadersFormulaCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  columnOrderChangedCoord = self->_columnOrderChangedCoord;
  if (columnOrderChangedCoord.row == 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  if ((*&columnOrderChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  rowOrderChangedCoord = self->_rowOrderChangedCoord;
  if (rowOrderChangedCoord.row == 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  if ((*&rowOrderChangedCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  rowOrderChangedIgnoringRecalcCoord = self->_rowOrderChangedIgnoringRecalcCoord;
  if (rowOrderChangedIgnoringRecalcCoord.row == 0x7FFFFFFF || (*&rowOrderChangedIgnoringRecalcCoord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_18;
  }

  v22 = objc_msgSend_categoryOwner(self, a2, v2, v3);
  v48 = objc_msgSend_calcEngine(v22, v23, v24, v25);

  if (v48 && objc_msgSend_isEnabled(self, v26, v27, v28))
  {
    v32 = objc_msgSend_groupByUid(self, v29, v30, v31);
    v49 = self->_groupingColumnHeadersFormulaCoord;
    v50 = v32;
    v51 = v33;
    if (objc_msgSend_cellHasPrecedents_(v48, v33, &v49, v34) && (v38 = objc_msgSend_groupByUid(self, v35, v36, v37), v49 = self->_groupingColumnsFormulaCoord, v50 = v38, v51 = v39, objc_msgSend_cellHasPrecedents_(v48, v39, &v49, v40)))
    {
      v44 = objc_msgSend_groupByUid(self, v41, v42, v43);
      v49 = self->_allAggsInGroupRootFormulaCoord;
      v50 = v44;
      v51 = v45;
      HasPrecedents = objc_msgSend_cellHasPrecedents_(v48, v45, &v49, v46);

      if (HasPrecedents)
      {
        return;
      }
    }

    else
    {
    }

LABEL_18:
    objc_msgSend_willModifyForUpgrade(self, a2, v2, v3, v48);
    objc_msgSend_resetAllAggsFormula(self, v13, v14, v15);
    objc_msgSend_resetGroupingColumnsFormula(self, v16, v17, v18);
    return;
  }
}

- (id)groupingColumnListCopy
{
  v3 = [TSTGroupingColumnList alloc];
  v6 = objc_msgSend_initWithGroupingColumns_(v3, v4, self->_groupingColumns, v5);

  return v6;
}

- (id)columnAggregateListCopy
{
  v3 = [TSTColumnAggregateList alloc];
  v6 = objc_msgSend_initWithColumnAggregates_(v3, v4, self->_columnAggregates, v5);

  return v6;
}

- (id)columnAggregatesOnColumnUids:(const void *)uids
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [TSCEUIDSet alloc];
  v8 = objc_msgSend_initWithUUIDVector_(v5, v6, uids, v7);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = self->_columnAggregates;
  v11 = 0;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v29, v33, 16);
  if (v15)
  {
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v29 + 1) + 8 * i);
        v19 = objc_msgSend_columnUid(v18, v12, v13, v14, v29);
        if (objc_msgSend_containsUuid_(v8, v20, v19, v20))
        {
          if (!v11)
          {
            v11 = objc_opt_new();
          }

          objc_msgSend_addObject_(v11, v12, v18, v14);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v29, v33, 16);
    }

    while (v15);
  }

  if (objc_msgSend_count(v11, v21, v22, v23))
  {
    v24 = [TSTColumnAggregateList alloc];
    v27 = objc_msgSend_initWithColumnAggregates_(v24, v25, v11, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)setGroupingColumnList:(id)list
{
  listCopy = list;
  objc_msgSend_willModify(self, v4, v5, v6);
  v10 = objc_msgSend_groupingColumns(listCopy, v7, v8, v9);
  groupingColumns = self->_groupingColumns;
  self->_groupingColumns = v10;

  objc_msgSend_resetGroupings(self, v12, v13, v14);
  objc_msgSend_resetGroupingColumnsFormula(self, v15, v16, v17);
  objc_msgSend_didChangeGroupByStructure(self, v18, v19, v20);
}

- (id)changeForUpdatingGroupValueOnNode:(const TSKUIDStruct *)node toValue:(id)value
{
  valueCopy = value;
  v8 = objc_msgSend_groupNodeForGroupUid_(self, v7, node->_lower, node->_upper);
  v12 = v8;
  if (v8)
  {
    v13 = objc_msgSend_groupLevel(v8, v9, v10, v11);
    v14 = [TSCEGroupByChange alloc];
    v24[0] = objc_msgSend_groupByUid(self, v15, v16, v17);
    v24[1] = v18;
    v19 = objc_msgSend_initWithType_groupByUid_(v14, v18, 1, v24);
    objc_msgSend_setPreviousLevel_(v19, v20, v13, v21);
    objc_msgSend_addChangesTo_forReplacingValue_atLevel_(v12, v22, v19, valueCopy, v13);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)changeForMovingBaseRows:(const void *)rows toDestGroup:(id)group
{
  groupCopy = group;
  v7 = [TSCEGroupByChange alloc];
  v29[0] = objc_msgSend_groupByUid(self, v8, v9, v10);
  v29[1] = v11;
  v12 = objc_msgSend_initWithType_groupByUid_(v7, v11, 1, v29);
  v13 = [TSCEUIDSet alloc];
  v16 = objc_msgSend_initWithUUIDVector_(v13, v14, rows, v15);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_221351024;
  v25[3] = &unk_278462F80;
  v17 = groupCopy;
  v26 = v17;
  v27 = v16;
  v18 = v12;
  v28 = v18;
  v19 = v16;
  objc_msgSend_enumerateAllGroupsWithBlock_(self, v20, v25, v21);
  v22 = v28;
  v23 = v18;

  return v18;
}

- (id)changeForSettingGroupingColumnList:(id)list
{
  v313 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (!listCopy)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTGroupBy changeForSettingGroupingColumnList:]", v4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 1509, 0, "New grouping column list is nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  v14 = self->_groupingColumns;
  v18 = objc_msgSend_groupingColumns(listCopy, v15, v16, v17);
  __p = 0;
  __dst = 0;
  v311 = 0;
  __src = 0;
  v307 = 0;
  v308 = 0;
  v22 = objc_msgSend_count(v14, v19, v20, v21);
  v28 = objc_msgSend_count(v18, v23, v24, v25);
  v303 = v14;
  if (v22)
  {
    v29 = 0;
    v30 = 0;
    for (i = 0; i != v22; ++i)
    {
      v32 = objc_msgSend_objectAtIndex_(v14, v26, i, v27);

      v29 = v32;
      v33 = 0;
      if (v28)
      {
        while (1)
        {
          v34 = objc_msgSend_objectAtIndex_(v18, v26, v33, v27);

          v30 = v34;
          v38 = objc_msgSend_groupingColumnUid(v29, v35, v36, v37);
          v40 = v39;
          if (v38 == objc_msgSend_groupingColumnUid(v30, v39, v41, v42) && v40 == v26)
          {
            break;
          }

          if (v28 == ++v33)
          {
            goto LABEL_27;
          }
        }

        if (i == v33)
        {
          v33 = i;
        }

        else
        {
          v43 = i + 1;
          v44 = v307;
          if (v307 >= v308)
          {
            v46 = __src;
            v47 = v307 - __src;
            v48 = (v307 - __src) >> 1;
            if (v48 <= -2)
            {
              sub_22107C148();
            }

            if (v308 - __src <= v48 + 1)
            {
              v49 = v48 + 1;
            }

            else
            {
              v49 = v308 - __src;
            }

            v50 = 0x7FFFFFFFFFFFFFFFLL;
            if (v308 - __src < 0x7FFFFFFFFFFFFFFELL)
            {
              v50 = v49;
            }

            if (v50)
            {
              sub_22115DB94(&__src, v50);
            }

            v51 = (2 * v48);
            *v51 = v43;
            v51[1] = v33 + 1;
            v45 = (2 * v48 + 2);
            memcpy(0, v46, v47);
            v52 = __src;
            __src = 0;
            v307 = v45;
            v308 = 0;
            if (v52)
            {
              operator delete(v52);
            }

            v14 = v303;
          }

          else
          {
            *v307 = v43;
            v44[1] = v33 + 1;
            v45 = v44 + 2;
          }

          v307 = v45;
        }
      }

      if (v33 == v28)
      {
LABEL_27:
        v53 = i + 1;
        v54 = __dst;
        if (__dst >= v311)
        {
          v56 = __p;
          v57 = __dst - __p;
          v58 = (__dst - __p) >> 1;
          if (v58 <= -2)
          {
            sub_22107C148();
          }

          if (v311 - __p <= v58 + 1)
          {
            v59 = v58 + 1;
          }

          else
          {
            v59 = v311 - __p;
          }

          v60 = 0x7FFFFFFFFFFFFFFFLL;
          if (v311 - __p < 0x7FFFFFFFFFFFFFFELL)
          {
            v60 = v59;
          }

          if (v60)
          {
            sub_22115DB94(&__p, v60);
          }

          v61 = (__dst - __p) >> 1;
          v62 = (2 * v58);
          *v62 = v53;
          v62[1] = -1;
          v55 = (2 * v58 + 2);
          v63 = &v62[-2 * v61];
          memcpy(v63, v56, v57);
          v64 = __p;
          __p = v63;
          __dst = v55;
          v311 = 0;
          if (v64)
          {
            operator delete(v64);
          }

          v14 = v303;
        }

        else
        {
          *__dst = v53;
          v54[1] = -1;
          v55 = v54 + 2;
        }

        __dst = v55;
      }
    }
  }

  else
  {
    v30 = 0;
    v29 = 0;
  }

  sub_2213626F0(&__p, __dst, __src, v307, (v307 - __src) >> 1);
  if (v28)
  {
    for (j = 0; j != v28; ++j)
    {
      v69 = objc_msgSend_objectAtIndex_(v18, v65, j, v67);

      v30 = v69;
      v70 = 0;
      if (v22)
      {
        while (1)
        {
          v71 = objc_msgSend_objectAtIndex_(v14, v65, v70, v67);

          v29 = v71;
          v75 = objc_msgSend_groupingColumnUid(v71, v72, v73, v74);
          v77 = v76;
          if (v75 == objc_msgSend_groupingColumnUid(v30, v76, v78, v79) && v77 == v65)
          {
            break;
          }

          if (v22 == ++v70)
          {
            goto LABEL_52;
          }
        }
      }

      if (v70 == v22)
      {
LABEL_52:
        v80 = j + 1;
        v81 = __dst;
        if (__dst >= v311)
        {
          v83 = __p;
          v84 = __dst - __p;
          v85 = (__dst - __p) >> 1;
          if (v85 <= -2)
          {
            sub_22107C148();
          }

          if (v311 - __p <= v85 + 1)
          {
            v86 = v85 + 1;
          }

          else
          {
            v86 = v311 - __p;
          }

          v87 = 0x7FFFFFFFFFFFFFFFLL;
          if (v311 - __p < 0x7FFFFFFFFFFFFFFELL)
          {
            v87 = v86;
          }

          if (v87)
          {
            sub_22115DB94(&__p, v87);
          }

          v88 = (__dst - __p) >> 1;
          v89 = (2 * v85);
          *v89 = -1;
          v89[1] = v80;
          v82 = (2 * v85 + 2);
          v90 = &v89[-2 * v88];
          memcpy(v90, v83, v84);
          v91 = __p;
          __p = v90;
          __dst = v82;
          v311 = 0;
          if (v91)
          {
            operator delete(v91);
          }

          v14 = v303;
        }

        else
        {
          *__dst = -1;
          v81[1] = v80;
          v82 = v81 + 2;
        }

        __dst = v82;
      }
    }
  }

  v301 = objc_msgSend_groupingColumnListCopy(self, v65, v66, v67);
  v95 = objc_msgSend_count(listCopy, v92, v93, v94);
  if (v95 > objc_msgSend_count(self->_groupingColumns, v96, v97, v98))
  {
    v102 = objc_msgSend_count(listCopy, v99, v100, v101);
    if (v102 == objc_msgSend_count(self->_groupingColumns, v103, v104, v105) + 1)
    {
      v111 = objc_msgSend_count(listCopy, v106, v107, v108);
      if (v111)
      {
        v112 = 1;
        while (1)
        {
          if (v112 >= v111)
          {
            v113 = 0;
          }

          else
          {
            v113 = objc_msgSend_ruleAtGroupLevel_(v301, v109, v112, v110);
          }

          v114 = objc_msgSend_ruleAtGroupLevel_(listCopy, v109, v112, v110);
          v118 = v114;
          if (v112 == v111)
          {
            break;
          }

          v119 = objc_msgSend_groupingColumnUid(v114, v115, v116, v117);
          v121 = v120;
          if (v119 != objc_msgSend_groupingColumnUid(v113, v120, v122, v123) || v121 != v124)
          {
            break;
          }

          if (++v112 > v111)
          {
            goto LABEL_140;
          }
        }

        v177 = [TSCEGroupByChange alloc];
        v304 = objc_msgSend_groupByUid(self, v178, v179, v180);
        v305 = v181;
        v111 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v177, v181, 4, &__p, &v304);
        objc_msgSend_setPreviousLevel_(v111, v182, v112, v183);
        objc_msgSend_addRule_atGroupLevel_(v301, v184, v118, v112);

        goto LABEL_127;
      }

LABEL_141:
      v270 = [TSCEGroupByChange alloc];
      v304 = objc_msgSend_groupByUid(self, v271, v272, v273);
      v305 = v274;
      v275 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v270, v274, 2, &__p, &v304);

      v111 = v275;
      goto LABEL_142;
    }

    goto LABEL_140;
  }

  v125 = objc_msgSend_count(listCopy, v99, v100, v101);
  if (v125 >= objc_msgSend_count(self->_groupingColumns, v126, v127, v128))
  {
    v155 = objc_msgSend_count(self->_groupingColumns, v129, v130, v131);
    v156 = v155 + 1;
    if (v155)
    {
      for (k = 1; k <= v155; ++k)
      {
        v158 = objc_msgSend_ruleAtGroupLevel_(v301, v153, k, v154);
        v161 = objc_msgSend_ruleAtGroupLevel_(listCopy, v159, k, v160);
        v165 = objc_msgSend_groupingColumnUid(v161, v162, v163, v164);
        v167 = v166;
        v172 = v165 == objc_msgSend_groupingColumnUid(v158, v166, v168, v169) && v167 == v170;
        v312[k] = v172;
      }

      v156 = v155 + 1;
      if (v312[1] == 1)
      {
        v173 = 2;
        do
        {
          v174 = v173;
          if (v173 > v155)
          {
            break;
          }

          v175 = v312[v173++];
        }

        while ((v175 & 1) != 0);
        v176 = v174 - 1;
      }

      else
      {
        v176 = 0;
      }

      if (v312[v155] == 1)
      {
        v196 = v155 - 1;
        v156 = 1;
        while (v196)
        {
          v197 = v312[v196--];
          if ((v197 & 1) == 0)
          {
            v156 = v196 + 2;
            break;
          }
        }
      }
    }

    else
    {
      v176 = 0;
    }

    if (v156 - v176 < 3)
    {
      v230 = [TSCEGroupByChange alloc];
      v304 = objc_msgSend_groupByUid(self, v231, v232, v233);
      v305 = v234;
      if (v156 - v176 == 2)
      {
        v111 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v230, v234, 2, &__p, &v304);
        v235 = v176 + 1;
        objc_msgSend_setPreviousLevel_(v111, v236, v235, v237);
        v240 = objc_msgSend_ruleAtGroupLevel_(listCopy, v238, v235, v239);
        objc_msgSend_replaceRuleAtGroupLevel_withRule_(v301, v241, v235, v240);
      }

      else
      {
        v111 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v230, v234, 0, &__p, &v304);
      }

      goto LABEL_127;
    }

    v299 = v176 + 1;
    v198 = objc_msgSend_ruleAtGroupLevel_(listCopy, v153, (v176 + 1), v154);
    v202 = objc_msgSend_groupingColumnUid(v198, v199, v200, v201);
    v204 = v203;
    v298 = v156 - 1;
    v206 = objc_msgSend_ruleAtGroupLevel_(v301, v203, (v156 - 1), v205);
    if (v202 == objc_msgSend_groupingColumnUid(v206, v207, v208, v209))
    {
      v211 = v204 == v210;

      if (v211)
      {
        v214 = v299;
        if (v298 <= v299)
        {
          v215 = v299;
        }

        else
        {
          v215 = v298;
        }

        while (v215 != v214)
        {
          v216 = objc_msgSend_ruleAtGroupLevel_(listCopy, v212, (v214 + 1), v213);
          v220 = objc_msgSend_groupingColumnUid(v216, v217, v218, v219);
          v222 = v221;
          v224 = objc_msgSend_ruleAtGroupLevel_(v301, v221, v214, v223);
          if (v220 != objc_msgSend_groupingColumnUid(v224, v225, v226, v227))
          {
            goto LABEL_139;
          }

          v229 = v222 == v228;

          ++v214;
          if (!v229)
          {
            goto LABEL_140;
          }
        }

        v278 = [TSCEGroupByChange alloc];
        v304 = objc_msgSend_groupByUid(self, v279, v280, v281);
        v305 = v282;
        v111 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v278, v282, 5, &__p, &v304);
        objc_msgSend_setPreviousLevel_(v111, v283, v298, v284);
        objc_msgSend_setUpdatedLevel_(v111, v285, v299, v286);
        objc_msgSend_moveRuleFromGroupLevel_toLevel_(v301, v287, v298, v299);
        goto LABEL_127;
      }
    }

    else
    {
    }

    v216 = objc_msgSend_ruleAtGroupLevel_(listCopy, v212, (v156 - 1), v213);
    v245 = objc_msgSend_groupingColumnUid(v216, v242, v243, v244);
    v247 = v246;
    v224 = objc_msgSend_ruleAtGroupLevel_(v301, v246, v299, v248);
    if (v245 != objc_msgSend_groupingColumnUid(v224, v249, v250, v251))
    {
LABEL_139:

      goto LABEL_140;
    }

    v253 = v247 == v252;

    if (!v253)
    {
LABEL_140:
      v111 = 0;
      goto LABEL_141;
    }

    v256 = v299;
    if (v298 <= v299)
    {
      v257 = v299;
    }

    else
    {
      v257 = v298;
    }

    while (v257 != v256)
    {
      v216 = objc_msgSend_ruleAtGroupLevel_(listCopy, v254, v256, v255);
      v261 = objc_msgSend_groupingColumnUid(v216, v258, v259, v260);
      v263 = v262;
      v224 = objc_msgSend_ruleAtGroupLevel_(v301, v262, (v256 + 1), v264);
      if (v261 != objc_msgSend_groupingColumnUid(v224, v265, v266, v267))
      {
        goto LABEL_139;
      }

      v269 = v263 == v268;

      ++v256;
      if (!v269)
      {
        goto LABEL_140;
      }
    }

    v288 = [TSCEGroupByChange alloc];
    v304 = objc_msgSend_groupByUid(self, v289, v290, v291);
    v305 = v292;
    v111 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v288, v292, 6, &__p, &v304);
    objc_msgSend_setPreviousLevel_(v111, v293, v299, v294);
    objc_msgSend_setUpdatedLevel_(v111, v295, v298, v296);
    objc_msgSend_moveRuleFromGroupLevel_toLevel_(v301, v297, v299, v298);
  }

  else
  {
    v132 = objc_msgSend_count(listCopy, v129, v130, v131);
    if (v132 + 1 != objc_msgSend_count(self->_groupingColumns, v133, v134, v135))
    {
      goto LABEL_140;
    }

    v111 = objc_msgSend_count(self->_groupingColumns, v136, v137, v138);
    if (!v111)
    {
      goto LABEL_141;
    }

    v141 = 1;
    while (1)
    {
      v145 = objc_msgSend_ruleAtGroupLevel_(v301, v139, v141, v140);
      if (v141 >= v111)
      {
        v146 = 0;
      }

      else
      {
        v146 = objc_msgSend_ruleAtGroupLevel_(listCopy, v142, v141, v144);
      }

      if (v141 == v111)
      {
        break;
      }

      v147 = objc_msgSend_groupingColumnUid(v146, v142, v143, v144);
      v149 = v148;
      if (v147 != objc_msgSend_groupingColumnUid(v145, v148, v150, v151) || v149 != v152)
      {
        break;
      }

      if (++v141 > v111)
      {
        goto LABEL_140;
      }
    }

    v187 = [TSCEGroupByChange alloc];
    v304 = objc_msgSend_groupByUid(self, v188, v189, v190);
    v305 = v191;
    v111 = objc_msgSend_initWithType_groupingColumnChanges_groupByUid_(v187, v191, 3, &__p, &v304);
    objc_msgSend_setPreviousLevel_(v111, v192, v141, v193);
    objc_msgSend_removeRuleAtGroupLevel_(v301, v194, v141, v195);
  }

LABEL_127:
  if ((objc_msgSend_isGroupingColumnUidsEqual_(v301, v185, listCopy, v186) & 1) == 0)
  {
    goto LABEL_141;
  }

LABEL_142:
  v276 = v111;

  if (__src)
  {
    v307 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return v276;
}

- (void)mapGroupUidsForChange:(id)change
{
  changeCopy = change;
  if (changeCopy)
  {
    v8 = objc_msgSend_groupByUid(self, v4, v5, v6);
    v10 = v9;
    if (v8 != objc_msgSend_groupByUid(changeCopy, v9, v11, v12) || v10 != v13)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTGroupBy mapGroupUidsForChange:]", v15);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 1703, 0, "wrong groupByUid");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    }

    v25 = objc_msgSend_groupByUid(self, v13, v14, v15);
    v27 = v26;
    if (v25 == objc_msgSend_groupByUid(changeCopy, v26, v28, v29) && v27 == v30)
    {
      v33 = objc_msgSend_changeType(changeCopy, v30, v31, v32);
      if (v33 > 4)
      {
        if (v33 == 5)
        {
          v58 = objc_msgSend_updatedLevel(changeCopy, v34, v35, v36);
          v41 = v61;
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = sub_2213524C4;
          v61[3] = &unk_27845FA48;
          v61[4] = changeCopy;
          objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v59, v58, v61);
        }

        else
        {
          if (v33 != 6)
          {
            goto LABEL_19;
          }

          v40 = objc_msgSend_previousLevel(changeCopy, v34, v35, v36);
          v41 = v60;
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = sub_221352550;
          v60[3] = &unk_27845FA48;
          v60[4] = changeCopy;
          objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v42, v40, v60);
        }

        v55 = (v41 + 4);
      }

      else
      {
        if (v33 != 3)
        {
          if (v33 == 4)
          {
            objc_msgSend_previousLevel(changeCopy, v34, v35, v36);
            objc_msgSend_numberOfLevels(self, v37, v38, v39);
          }

          goto LABEL_19;
        }

        v43 = objc_msgSend_previousLevel(changeCopy, v34, v35, v36);
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = sub_2213523F4;
        v64[3] = &unk_27845FA48;
        v44 = changeCopy;
        v65 = v44;
        objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v45, v43, v64);
        LODWORD(v43) = objc_msgSend_previousLevel(v44, v46, v47, v48);
        v55 = &v65;
        if (v43 < objc_msgSend_numberOfLevels(self, v49, v50, v51))
        {
          v56 = objc_msgSend_previousLevel(v44, v52, v53, v54);
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = sub_221352450;
          v62[3] = &unk_27845FA48;
          v63 = v44;
          objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v57, v56, v62);
        }
      }
    }
  }

LABEL_19:
}

- (id)aggregatesOnLevel:(unsigned __int8)level
{
  levelCopy = level;
  v28 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_columnAggregates;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v23, v27, 16);
  if (v11)
  {
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if (objc_msgSend_level(v14, v8, v9, v10, v23) == levelCopy)
        {
          objc_msgSend_addObject_(v5, v8, v14, v10);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v23, v27, 16);
    }

    while (v11);
  }

  if (objc_msgSend_count(v5, v15, v16, v17))
  {
    v18 = [TSTColumnAggregateList alloc];
    v21 = objc_msgSend_initWithColumnAggregates_(v18, v19, v5, v20);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)_addAggregates:(id)aggregates atLevel:(unsigned __int8)level
{
  levelCopy = level;
  v43 = *MEMORY[0x277D85DE8];
  aggregatesCopy = aggregates;
  v13 = objc_msgSend_tableInfo(self, v7, v8, v9);
  if (!v13)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTGroupBy _addAggregates:atLevel:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 1775, 0, "invalid nil value for '%{public}s'", "tableInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = objc_msgSend_asArray(aggregatesCopy, v10, v11, v12);
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v38, v42, 16);
  if (v28)
  {
    v29 = *v39;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(v23);
        }

        v31 = *(*(&v38 + 1) + 8 * i);
        v32 = objc_msgSend_aggregateType(v31, v25, v26, v27);
        v36 = objc_msgSend_columnUid(v31, v33, v34, v35);
        objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(v13, v37, v32, v36, v37, levelCopy);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v38, v42, 16);
    }

    while (v28);
  }
}

- (void)_removeAggregates:(id)aggregates
{
  v42 = *MEMORY[0x277D85DE8];
  aggregatesCopy = aggregates;
  if (aggregatesCopy)
  {
    v11 = objc_msgSend_tableInfo(self, v4, v5, v6);
    if (!v11)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTGroupBy _removeAggregates:]", v10);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 1785, 0, "invalid nil value for '%{public}s'", "tableInfo");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = objc_msgSend_asArray(aggregatesCopy, v8, v9, v10);
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v37, v41, 16);
    if (v26)
    {
      v27 = *v38;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v37 + 1) + 8 * i);
          v30 = objc_msgSend_columnUid(v29, v23, v24, v25);
          v32 = v31;
          v35 = objc_msgSend_level(v29, v31, v33, v34);
          objc_msgSend_setAggregateType_forColumnUID_atGroupLevel_(v11, v36, 0, v30, v32, v35);
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v37, v41, 16);
      }

      while (v26);
    }
  }
}

- (void)runChange:(id)change withAggregates:(id)aggregates
{
  changeCopy = change;
  aggregatesCopy = aggregates;
  if (objc_msgSend_changeType(changeCopy, v7, v8, v9))
  {
    v13 = objc_msgSend_groupByUid(changeCopy, v10, v11, v12);
    v15 = v14;
    if (v13 != objc_msgSend_groupByUid(self, v14, v16, v17) || v15 != v18)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTGroupBy runChange:withAggregates:]", v20);
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v24);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 1798, 0, "Uh, we were expecting this to be us");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
    }

    v30 = objc_msgSend_columnAggregateListCopy(self, v18, v19, v20);
    selfCopy = self;
    v32 = objc_opt_new();
    v36 = objc_msgSend_groupingColumnChanges(changeCopy, v33, v34, v35);
    v40 = *v36;
    v41 = *(v36 + 8);
    while (v40 != v41)
    {
      v38 = *v40;
      if (v38 != 255)
      {
        if ((objc_msgSend_containsIndex_(v32, v37, v38, v39) & 1) == 0)
        {
          objc_msgSend_addIndex_(v32, v37, *v40, v39);
          v44 = objc_msgSend_aggregatesOnLevel_(v30, v42, *v40, v43);
          objc_msgSend__removeAggregates_(selfCopy, v45, v44, v46);
        }

        v38 = v40[1];
        if (v38 != 255 && (objc_msgSend_containsIndex_(v32, v37, v38, v39) & 1) == 0)
        {
          objc_msgSend_addIndex_(v32, v37, v40[1], v39);
          v49 = objc_msgSend_aggregatesOnLevel_(v30, v47, v40[1], v48);
          objc_msgSend__removeAggregates_(selfCopy, v50, v49, v51);
        }
      }

      v40 += 2;
    }

    v52 = objc_msgSend_groupingColumnChanges(changeCopy, v37, v38, v39);
    v55 = *v52;
    v56 = *(v52 + 8);
    while (1)
    {
      if (v55 == v56)
      {

        break;
      }

      v57 = v55[1];
      if (v57 != 255)
      {
        if (*v55 == 255)
        {
          if (!aggregatesCopy)
          {
            goto LABEL_22;
          }

          v58 = objc_msgSend_aggregatesOnLevel_(aggregatesCopy, v53, v57, v54);
          objc_msgSend__addAggregates_atLevel_(selfCopy, v60, v58, v55[1]);
        }

        else
        {
          v58 = objc_msgSend_aggregatesOnLevel_(v30, v53, *v55, v54);
          objc_msgSend__addAggregates_atLevel_(selfCopy, v59, v58, v55[1]);
        }
      }

LABEL_22:
      v55 += 2;
    }
  }
}

- (unint64_t)numberOfGroupsAtLevel:(unsigned __int8)level
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_221352F68;
  v5[3] = &unk_278462E18;
  v5[4] = &v6;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, a2, level, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)numberOfGroupsUptoLevel:(unsigned __int8)level
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_221353044;
  v5[3] = &unk_278462E18;
  v5[4] = &v6;
  objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withBlock_(self, a2, 0, level, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isGroupingColumn:(const TSKUIDStruct *)column
{
  objc_msgSend_groupingColumnLevelsForColumn_(self, a2, column, v3);
  if (v5)
  {
    operator delete(v5);
  }

  return v5 != v6;
}

- (vector<TSCECategoryLevel,)groupingColumnLevelsForColumn:(TSTGroupBy *)self
{
  v27 = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_groupingColumns;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v22, v26, 16);
  if (v10)
  {
    v11 = 0;
    v21 = *v23;
    v12 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(obj);
        }

        if (objc_msgSend_columnUid(*(*(&v22 + 1) + 8 * i), v7, v8, v9) == a4->_lower && v7 == a4->_upper)
        {
          var2 = retstr->var2;
          if (v11 >= var2)
          {
            v16 = v11;
            v17 = (v11 + 1);
            if ((v11 + 1) < 0)
            {
              retstr->var0 = 0;
              sub_22107C148();
            }

            if (2 * var2 > v17)
            {
              v17 = 2 * var2;
            }

            if (var2 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v18 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              operator new();
            }

            *v11++ = v12;
            memcpy(0, 0, v16);
            retstr->var1 = (v16 + 1);
            retstr->var2 = 0;
          }

          else
          {
            *v11++ = v12;
          }

          retstr->var1 = v11;
        }

        ++v12;
      }

      retstr->var0 = 0;
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v22, v26, 16);
    }

    while (v10);
  }

  return result;
}

- (void)enumerateGroupingColumnsForColumn:(TSKUIDStruct)column withBlock:(id)block
{
  columnCopy = column;
  blockCopy = block;
  if (blockCopy)
  {
    objc_msgSend_groupingColumnLevelsForColumn_(self, v5, &columnCopy, v6);
    v10 = __p;
    v11 = v18;
    if (__p != v18)
    {
      v12 = __p + 1;
      do
      {
        v13 = objc_msgSend_groupingColumnAtCategoryLevel_(self, v8, *(v12 - 1), v9);
        v16 = 0;
        blockCopy[2](blockCopy, v13, &v16);
        v14 = v16;

        if (v14)
        {
          break;
        }
      }

      while (v12++ != v11);
      v10 = __p;
    }

    if (v10)
    {
      v18 = v10;
      operator delete(v10);
    }
  }
}

- (unint64_t)indexOfGroupingColumn:(id)column
{
  v32 = *MEMORY[0x277D85DE8];
  columnCopy = column;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_groupingColumns;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v27, v31, 16);
  if (v10)
  {
    v11 = 0;
    v12 = *v28;
LABEL_3:
    v13 = 0;
    v14 = v11;
    v11 += v10;
    while (1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v5);
      }

      v15 = *(*(&v27 + 1) + 8 * v13);
      v16 = objc_msgSend_columnUid(v15, v7, v8, v9, v27);
      v18 = v17;
      if (v16 == objc_msgSend_columnUid(columnCopy, v17, v19, v20) && v18 == v7)
      {
        v22 = objc_msgSend_groupingType(v15, v7, v8, v9);
        if (v22 == objc_msgSend_groupingType(columnCopy, v23, v24, v25))
        {
          break;
        }
      }

      ++v14;
      if (v10 == ++v13)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v27, v31, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v14;
}

- (id)groupingColumnAtCategoryLevel:(unsigned __int8)level
{
  if (level)
  {
    levelCopy = level;
    if (objc_msgSend_count(self->_groupingColumns, a2, level, v3) >= level)
    {
      v9 = objc_msgSend_objectAtIndexedSubscript_(self->_groupingColumns, v7, (levelCopy - 1), v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)allGroupNodeUids
{
  v3 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2213536B4;
  v8[3] = &unk_27845FA48;
  v4 = v3;
  v9 = v4;
  objc_msgSend_enumerateAllGroupsWithBlock_(self, v5, v8, v6);

  return v4;
}

- (void)markAllAggregatesAsDirty
{
  v5 = objc_msgSend_categoryOwner(self, a2, v2, v3);
  v9 = objc_msgSend_calcEngine(v5, v6, v7, v8);

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_221353808;
  v16[3] = &unk_27845FA48;
  v10 = v9;
  v17 = v10;
  objc_msgSend_enumerateAllGroupsWithBlock_(self, v11, v16, v12);
  objc_msgSend_markAllDependentsAsDirty(self, v13, v14, v15);
}

- (void)markAllDependentsAsDirty
{
  v5 = objc_msgSend_categoryOwner(self, a2, v2, v3);
  v9 = objc_msgSend_calcEngine(v5, v6, v7, v8);

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22135393C;
  v27[3] = &unk_27845FA48;
  v10 = v9;
  v28 = v10;
  objc_msgSend_enumerateAllGroupsWithBlock_(self, v11, v27, v12);
  v26[0] = objc_msgSend_groupByUid(self, v13, v14, v15);
  v26[1] = v16;
  objc_msgSend_markAllExternalGroupByRefsDirty_(v10, v16, v26, v17);
  v25[0] = objc_msgSend_baseTableUID(self, v18, v19, v20);
  v25[1] = v21;
  objc_msgSend_groupByChangedPrecedentForTableUID_(TSCEHauntedOwner, v21, v25, v22);
  objc_msgSend_markCellRefAsDirty_(v10, v23, v26, v24);
}

- (unsigned)aggregateTypeForColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  upper = d._upper;
  lower = d._lower;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_columnAggregates;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v19, v23, 16);
  if (v12)
  {
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = objc_msgSend_columnUid(v15, v9, v10, v11, v19) == lower && v9 == upper;
        if (v16 && objc_msgSend_level(v15, v9, v10, v11) == levelCopy)
        {
          v17 = objc_msgSend_aggregateType(v15, v9, v10, v11);
          goto LABEL_16;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v19, v23, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (unsigned)anyAggregateTypeForColumnUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_columnAggregates;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v10)
  {
    v11 = *v18;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      if (objc_msgSend_columnUid(v13, v7, v8, v9, v17) == lower && v7 == upper)
      {
        v15 = objc_msgSend_aggregateType(v13, v7, v8, v9);
        if (v15)
        {
          break;
        }
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v17, v21, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)usesPrePivotAggregateTypesOnly
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = self->_columnAggregates;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v23, v27, 16);
  v8 = 1;
  if (v7)
  {
    v9 = *v24;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v2);
      }

      v11 = objc_msgSend_aggregateType(*(*(&v23 + 1) + 8 * v10), v4, v5, v6, v23);
      if (v11 > 0xC)
      {
        break;
      }

      if (((1 << v11) & 0x17BF) == 0)
      {
        if (v11 != 11)
        {
          break;
        }

        v12 = MEMORY[0x277D81150];
        v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTGroupBy usesPrePivotAggregateTypesOnly]", v6);
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v15);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 1995, 0, "Should never see TSCEAggType_Indirect on a columnAggregate");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
      }

      if (v7 == ++v10)
      {
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v23, v27, 16);
        v7 = v21;
        if (!v21)
        {
          v8 = 1;
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    v8 = 0;
  }

LABEL_15:

  return v8;
}

- (void)setAggregates:(id)aggregates
{
  v121 = *MEMORY[0x277D85DE8];
  aggregatesCopy = aggregates;
  objc_msgSend_willModify(self, v5, v6, v7);
  v11 = objc_msgSend_ownerIndex(self, v8, v9, v10) != 8;
  memset(v116, 0, sizeof(v116));
  v117 = 1065353216;
  v98 = aggregatesCopy;
  objc_msgSend_asArray(aggregatesCopy, v12, v13, v14);
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  obj = v113 = 0u;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v112, v120, 16);
  if (v19)
  {
    v20 = *v113;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v113 != v20)
        {
          objc_enumerationMutation(obj);
        }

        *&v106[0] = objc_msgSend_columnUid(*(*(&v112 + 1) + 8 * i), v16, v17, v18);
        *(&v106[0] + 1) = v22;
        sub_2211D6484(v116, v106, v106);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v112, v120, 16);
    }

    while (v19);
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v23 = self->_columnAggregates;
  v25 = 0;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v108, v119, 16);
  if (v29)
  {
    v30 = *v109;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v109 != v30)
        {
          objc_enumerationMutation(v23);
        }

        *&v106[0] = objc_msgSend_columnUid(*(*(&v108 + 1) + 8 * j), v26, v27, v28);
        *(&v106[0] + 1) = v32;
        if (!sub_2210875C4(v116, v106))
        {
          v33 = objc_msgSend_aggregatorForColumn_(self, v26, *&v106[0], *(&v106[0] + 1));
          objc_msgSend_dropAggregator_(self, v34, v33, v35);

          v25 = 1;
        }
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v108, v119, 16);
    }

    while (v29);
  }

  v39 = objc_msgSend_asArray(v98, v36, v37, v38);
  columnAggregates = self->_columnAggregates;
  self->_columnAggregates = v39;

  memset(v106, 0, sizeof(v106));
  v107 = 1065353216;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v41 = self->_columnAggregates;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v102, v118, 16);
  if (v46)
  {
    v47 = *v103;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v103 != v47)
        {
          objc_enumerationMutation(v41);
        }

        v49 = *(*(&v102 + 1) + 8 * k);
        *&v100 = objc_msgSend_columnUid(v49, v43, v44, v45);
        *(&v100 + 1) = v50;
        if (!sub_2210875C4(v106, &v100))
        {
          v51 = objc_msgSend_aggregateType(v49, v43, v44, v45);
          if (objc_msgSend_needFormulasForAggregateType_(TSTGroupNode, v52, v51, v53))
          {
            sub_2210C2B00(v106, &v100, &v100);
            v55 = objc_msgSend_aggregatorForColumn_(self, v54, v100, *(&v100 + 1));
            v59 = v55;
            if (v55)
            {
              objc_msgSend_rebuildAggFormulas(v55, v56, v57, v58);
              v25 = 1;
            }

            else
            {
              v60 = objc_msgSend_createAggregatorOnColumn_(self, v56, v100, *(&v100 + 1));
            }

            v11 = 0;
          }
        }
      }

      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v43, &v102, v118, 16);
    }

    while (v46);
  }

  if (v11)
  {
    objc_msgSend_willModify(self, v61, v62, v63);
    v67 = objc_msgSend_mutableCopy(self->_columnAggregates, v64, v65, v66);
    v68 = [TSTColumnAggregate alloc];
    inited = objc_msgSend_initAsEmptyAggregate(v68, v69, v70, v71);
    objc_msgSend_addObject_(v67, v73, inited, v74);
    objc_storeStrong(&self->_columnAggregates, v67);
    v78 = objc_msgSend_columnUid(inited, v75, v76, v77);
    v80 = objc_msgSend_aggregatorForColumn_(self, v79, v78, v79);
    v84 = v80;
    if (v80)
    {
      objc_msgSend_rebuildAggFormulas(v80, v81, v82, v83);

LABEL_35:
      objc_msgSend_resetAllAggsFormula(self, v61, v62, v63);
      goto LABEL_36;
    }

    v85 = objc_msgSend_columnUid(inited, v81, v82, v83);
    v87 = objc_msgSend_createAggregatorOnColumn_(self, v86, v85, v86);
  }

  if (v25)
  {
    goto LABEL_35;
  }

LABEL_36:
  v88 = objc_msgSend_calcEngine(self, v61, v62, v63);
  v92 = objc_msgSend_groupByUid(self, v89, v90, v91);
  *&v100 = self->_indirectAggTypeChangeFormulaCoord;
  *(&v100 + 1) = v92;
  v101 = v93;
  objc_msgSend_markCellRefAsDirty_(v88, v93, &v100, v94);

  objc_msgSend_didChangeGroupByStructure(self, v95, v96, v97);
  sub_2210BDEC0(v106);

  sub_2210BDEC0(v116);
}

- (void)setAggregateType:(unsigned __int8)type forColumnUID:(TSKUIDStruct)d atGroupLevel:(unsigned __int8)level
{
  v95 = *MEMORY[0x277D85DE8];
  if (type == 11)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBy setAggregateType:forColumnUID:atGroupLevel:]", d._lower, d._upper, level);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 2099, 0, "aggType of (%d) is not a valid aggregate type for an entire column", 11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);

    objc_msgSend_willModify(self, v16, v17, v18);
    return;
  }

  levelCopy = level;
  upper = d._upper;
  lower = d._lower;
  typeCopy = type;
  objc_msgSend_willModify(self, a2, type, d._lower);
  if (typeCopy > 0x21)
  {
    return;
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  selfCopy = self;
  v23 = self->_columnAggregates;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v90, v94, 16);
  if (v25)
  {
    v26 = 0;
    v27 = *v91;
LABEL_8:
    v28 = 0;
    while (1)
    {
      if (*v91 != v27)
      {
        objc_enumerationMutation(v23);
      }

      v29 = *(*(&v90 + 1) + 8 * v28);

      v26 = v29;
      v36 = objc_msgSend_columnUid(v29, v30, v31, v32) == lower && v33 == upper;
      if (v36 && objc_msgSend_level(v29, v33, v34, v35) == levelCopy)
      {
        break;
      }

      if (v25 == ++v28)
      {
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v33, &v90, v94, 16);
        if (v25)
        {
          goto LABEL_8;
        }

        goto LABEL_20;
      }
    }

    v44 = objc_msgSend_aggregateType(v29, v33, v37, v38);
    objc_msgSend_setAggregateType_(v29, v45, typeCopy, v46);

    if (typeCopy)
    {
      goto LABEL_29;
    }

    v50 = objc_msgSend_mutableCopy(selfCopy->_columnAggregates, v47, v48, v49);
    objc_msgSend_removeObjectIdenticalTo_(v50, v51, v29, v52);
    columnAggregates = selfCopy->_columnAggregates;
    selfCopy->_columnAggregates = v50;
    goto LABEL_28;
  }

LABEL_20:

  if (typeCopy)
  {
    v42 = selfCopy->_columnAggregates;
    if (v42)
    {
      v43 = objc_msgSend_mutableCopy(v42, v39, v40, v41);
    }

    else
    {
      v43 = objc_opt_new();
    }

    v57 = v43;
    v58 = [TSTColumnAggregate alloc];
    columnAggregates = objc_msgSend_initForCategoriesWithColumnUid_aggregateType_level_(v58, v59, lower, upper, typeCopy, levelCopy);
    objc_msgSend_addObject_(v57, v60, columnAggregates, v61);
    v62 = selfCopy->_columnAggregates;
    selfCopy->_columnAggregates = v57;

    v44 = 0;
    v26 = 0;
LABEL_28:

LABEL_29:
    v54 = objc_msgSend_needFormulasForAggregateType_(TSTGroupNode, v47, v44, v49);
    goto LABEL_30;
  }

  v26 = 0;
  v54 = objc_msgSend_needFormulasForAggregateType_(TSTGroupNode, v39, 0, v41);
LABEL_30:
  v63 = v54;
  v67 = objc_msgSend_needFormulasForAggregateType_(TSTGroupNode, v55, typeCopy, v56);
  if (v63 != v67)
  {
    objc_msgSend_willModify(selfCopy, v64, v65, v66);
    v69 = objc_msgSend_aggregatorForColumn_(selfCopy, v68, lower, upper);
    v73 = v69;
    if (v69)
    {
      objc_msgSend_rebuildAggFormulas(v69, v70, v71, v72);
      objc_msgSend_resetAllAggsFormula(selfCopy, v74, v75, v76);
    }

    else if (v67)
    {
      v77 = objc_msgSend_createAggregatorOnColumn_(selfCopy, v70, lower, upper);
    }
  }

  v78 = objc_msgSend_calcEngine(selfCopy, v64, v65, v66);
  v82 = objc_msgSend_groupByUid(selfCopy, v79, v80, v81);
  v89[0] = selfCopy->_indirectAggTypeChangeFormulaCoord;
  v89[1] = v82;
  v89[2] = v83;
  objc_msgSend_markCellRefAsDirty_(v78, v83, v89, v84);

  objc_msgSend_didChangeGroupByStructure(selfCopy, v85, v86, v87);
}

- (void)enumerateAggregates:(id)aggregates
{
  v30 = *MEMORY[0x277D85DE8];
  aggregatesCopy = aggregates;
  v28 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_columnAggregates;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v24, v29, 16);
  if (v10)
  {
    v11 = *v25;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v24 + 1) + 8 * v12);
      v14 = objc_msgSend_aggregateType(v13, v7, v8, v9, v24);
      v18 = objc_msgSend_columnUid(v13, v15, v16, v17);
      v20 = v19;
      v23 = objc_msgSend_level(v13, v19, v21, v22);
      aggregatesCopy[2](aggregatesCopy, v14, v18, v20, v23, &v28);
      if (v28)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v24, v29, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateAggregatesAtLevel:(unsigned __int8)level withBlock:(id)block
{
  levelCopy = level;
  v32 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v30 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_columnAggregates;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v26, v31, 16);
  if (v11)
  {
    v12 = *v27;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v26 + 1) + 8 * v13);
      if (objc_msgSend_level(v14, v8, v9, v10) == levelCopy)
      {
        v15 = objc_msgSend_aggregateType(v14, v8, v9, v10);
        v19 = objc_msgSend_columnUid(v14, v16, v17, v18);
        v21 = v20;
        v24 = objc_msgSend_level(v14, v20, v22, v23);
        blockCopy[2](blockCopy, v15, v19, v21, v24, &v30);
        if (v30)
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v26, v31, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (unint64_t)numberOfAggregatesAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_columnAggregates;
  v6 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_msgSend_level(*(*(&v14 + 1) + 8 * v12), v7, v8, v9, v14) == levelCopy)
        {
          ++v6;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v14, v18, 16);
    }

    while (v10);
  }

  return v6;
}

- (id)groupNodeForGroupUuid:(id)uuid
{
  uuidCopy = uuid;
  v5 = TSKMakeUIDStructFromNSUUID();
  v7 = objc_msgSend_groupNodeForGroupUid_(self, v6, v5, v6);

  return v7;
}

- (id)groupNodeForGroupUid:(TSKUIDStruct)uid
{
  uidCopy = uid;
  v3 = sub_2210875C4(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, &uidCopy);
  if (v3)
  {
    v3 = v3[4];
  }

  return v3;
}

- (unsigned)groupLevelForGroupUid:(TSKUIDStruct)uid
{
  uidCopy = uid;
  v3 = sub_2210875C4(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, &uidCopy);
  if (v3)
  {
    return objc_msgSend_groupLevel(v3[4], v4, v5, v6);
  }

  else
  {
    return -1;
  }
}

- (unsigned)groupLevelForGroupUid:(const TSKUIDStruct *)uid isBlank:(BOOL *)blank isError:(BOOL *)error
{
  *error = 0;
  *blank = 0;
  v7 = sub_2210875C4(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, uid);
  if (!v7)
  {
    return -1;
  }

  v11 = v7;
  v12 = objc_msgSend_groupLevel(v7[4], v8, v9, v10);
  *blank = objc_msgSend_isBlankNode(v11[4], v13, v14, v15);
  *error = objc_msgSend_isErrorNode(v11[4], v16, v17, v18);
  return v12;
}

- (unsigned)groupLevelForGroupingColumnUid:(TSKUIDStruct)uid
{
  upper = uid._upper;
  lower = uid._lower;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_groupingColumns;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v10)
  {
    v11 = 0;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v5);
        }

        if (objc_msgSend_groupingColumnUid(*(*(&v17 + 1) + 8 * i), v7, v8, v9, v17) == lower && v7 == upper)
        {
          v15 = v11 + 1;
          goto LABEL_14;
        }

        ++v11;
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v17, v21, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = -1;
LABEL_14:

  return v15;
}

- (void)markAllGroupNodesDirty
{
  v5 = objc_msgSend_count(self->_groupingColumns, a2, v2, v3) - 1;
  v9 = objc_msgSend_calcEngine(self, v6, v7, v8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2213550B8;
  v12[3] = &unk_27845FA48;
  v13 = v9;
  v10 = v9;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v11, v5, v12);
}

- (id)groupsAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, level, v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22135519C;
  v10[3] = &unk_27845FA48;
  v7 = v6;
  v11 = v7;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v8, levelCopy, v10);

  return v7;
}

- (id)rowsForGroupValue:(id)value atLevel:(unsigned __int8)level
{
  v5 = objc_msgSend_findGroupNodeForValue_atLevel_createIfMissing_(self, a2, value, level, 0);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
    v10 = objc_msgSend_tableModel(WeakRetained, v7, v8, v9);
    v14 = objc_msgSend_columnRowUIDMap(v10, v11, v12, v13);
    objc_msgSend_rowUidsAsVector(v5, v15, v16, v17);
    v20 = objc_msgSend_rowIndexesForUIDs_(v14, v18, __p, v19);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)rowUidsForGroupUids:(id)uids
{
  uidsCopy = uids;
  v5 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2213553A4;
  v12[3] = &unk_27845D8B0;
  v12[4] = self;
  v6 = v5;
  v13 = v6;
  objc_msgSend_foreachUuid_(uidsCopy, v7, v12, v8);
  v9 = v13;
  v10 = v6;

  return v6;
}

- (void)enumerateRowsUidsAtLevel:(unsigned __int8)level withBlock:(id)block
{
  levelCopy = level;
  blockCopy = block;
  v9 = blockCopy;
  if (levelCopy == 253)
  {
    objc_msgSend_enumerateRowUidsWithBlock_(self->_groupRoot, v7, blockCopy, v8);
  }

  else
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_22135558C;
    v11[3] = &unk_278462FA8;
    v13 = v14;
    v12 = blockCopy;
    objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v10, levelCopy, v11);

    _Block_object_dispose(v14, 8);
  }
}

- (id)childGroupUidsForGroupUids:(id)uids
{
  uidsCopy = uids;
  v5 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22135571C;
  v12[3] = &unk_27845D8B0;
  v12[4] = self;
  v6 = v5;
  v13 = v6;
  objc_msgSend_foreachUuid_(uidsCopy, v7, v12, v8);
  v9 = v13;
  v10 = v6;

  return v6;
}

- (id)labelRowUidsForGroupUids:(id)uids
{
  uidsCopy = uids;
  v5 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221355894;
  v12[3] = &unk_27845D8B0;
  v12[4] = self;
  v6 = v5;
  v13 = v6;
  objc_msgSend_foreachUuid_(uidsCopy, v7, v12, v8);
  v9 = v13;
  v10 = v6;

  return v6;
}

- (id)labelRowUIDSet
{
  v5 = objc_msgSend_categoryOwner(self, a2, v2, v3);
  v9 = objc_msgSend_tableModel(v5, v6, v7, v8);
  v13 = objc_msgSend_tableInfo(v9, v10, v11, v12);
  v17 = objc_msgSend_summaryModel(v13, v14, v15, v16);

  v39 = 0;
  v40[0] = &v39;
  v40[1] = 0x2020000000;
  v40[2] = 0;
  v37 = 0;
  v38[0] = &v37;
  v38[1] = 0x2020000000;
  v38[2] = 0;
  v21 = objc_opt_new();
  if (v17)
  {
    for (i = 1; i <= objc_msgSend_numberOfLevels(self, v18, v19, v20); ++i)
    {
      v25 = objc_msgSend_labelRowVisibilityAtCategoryLevel_(v17, v23, i, v24);
      v26 = v38;
      if (v25)
      {
        v27 = objc_msgSend_labelRowVisibilityAtCategoryLevel_(v17, v18, i, v20);
        v26 = v40;
        if (v27 != 2)
        {
          continue;
        }
      }

      *(*v26 + 24) |= 1 << i;
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_221355BE4;
    v36[3] = &unk_278462FD0;
    v36[4] = self;
    v36[5] = &v37;
    v36[6] = &v39;
    objc_msgSend_enumerateAggregates_(self, v23, v36, v24);
    for (j = 1; j <= objc_msgSend_numberOfLevels(self, v28, v29, v30); ++j)
    {
      if ((*(v40[0] + 24) & (1 << j)) != 0)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = sub_221355C78;
        v34[3] = &unk_27845FA48;
        v35 = v21;
        objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v32, (j - 1), v34);
      }
    }
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v39, 8);

  return v21;
}

- (id)labelRowUIDSetForCategoryLevel:(unsigned __int8)level labelRowVisibility:(unint64_t)visibility
{
  levelCopy = level;
  v7 = objc_opt_new();
  if (objc_msgSend_numberOfLevels(self, v8, v9, v10) >= levelCopy)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    if (visibility)
    {
      if (visibility == 2)
      {
        v22 = 1;
LABEL_6:
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = sub_221355EB8;
        v15[3] = &unk_27845FA48;
        v16 = v7;
        objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v13, (levelCopy - 1), v15);
      }
    }

    else
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_221355E94;
      v17[3] = &unk_278462FF8;
      v18 = levelCopy;
      v17[4] = &v19;
      objc_msgSend_enumerateAggregates_(self, v11, v17, v12);
      if (v20[3])
      {
        goto LABEL_6;
      }
    }

    _Block_object_dispose(&v19, 8);
  }

  return v7;
}

- (id)rowUIDSetForCategoryLevel:(unsigned __int8)level
{
  levelCopy = level;
  v5 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221356000;
  v9[3] = &unk_27845FA48;
  v6 = v5;
  v10 = v6;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v7, levelCopy, v9);

  return v6;
}

- (id)indexesOfGroupUidsInUids:(const void *)uids
{
  v6 = objc_opt_new();
  v7 = *uids;
  v8 = *(uids + 1);
  if (*uids != v8)
  {
    v9 = 0;
    do
    {
      v12 = objc_msgSend_groupNodeForGroupUid_(self, v5, *v7, v7[1]);
      if (v12)
      {
        objc_msgSend_addIndex_(v6, v10, v9, v11);
      }

      ++v9;

      v7 += 2;
    }

    while (v7 != v8);
  }

  return v6;
}

- (id)groupNodeForRowUid:(TSKUIDStruct)uid atLevel:(unsigned __int8)level
{
  uidCopy = uid;
  groupRoot = self->_groupRoot;
  if (level)
  {
    v5 = objc_msgSend_groupNodeForRowUid_atLevel_(groupRoot, a2, &uidCopy, level);
  }

  else
  {
    v5 = groupRoot;
  }

  return v5;
}

- (id)groupValueTupleForRowUid:(TSKUIDStruct)uid atLevel:(unsigned __int8)level
{
  uidCopy = uid;
  groupRoot = self->_groupRoot;
  if (level)
  {
    v5 = objc_msgSend_groupNodeForRowUid_atLevel_(groupRoot, a2, &uidCopy, level);
    v9 = objc_msgSend_groupValueTuple(v5, v6, v7, v8, uidCopy._lower, uidCopy._upper);
  }

  else
  {
    v9 = objc_msgSend_groupValueTuple(groupRoot, a2, uid._lower, uid._upper, uidCopy._lower, uidCopy._upper);
  }

  return v9;
}

- (void)willMakeGroupingChangesInRowUIDs:(id)ds
{
  dsCopy = ds;
  v7 = objc_msgSend_tableModel(self, v4, v5, v6);
  isAPivotDataModel = objc_msgSend_isAPivotDataModel(v7, v8, v9, v10);

  if ((isAPivotDataModel & 1) == 0)
  {
    if (!dsCopy)
    {
      v15 = [TSCEUIDSet alloc];
      v19 = objc_msgSend_topLevelGroupUid(self, v16, v17, v18);
      dsCopy = objc_msgSend_initWithUUID_(v15, v20, v19, v20);
    }

    v21 = objc_msgSend_tableInfo(self, v12, v13, v14);
    objc_msgSend_willMakeGroupingChangesInRowUIDs_(v21, v22, dsCopy, v23);
  }
}

- (void)insertRowUid:(const TSKUIDStruct *)uid atRowIndex:(unsigned int)index forGroupValue:(id)value
{
  v5 = *&index;
  v38 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v12 = objc_msgSend_locale(self, v9, v10, v11);
  v14 = objc_msgSend_insertRowUid_atRowIndex_forGroupValueTuple_atLevel_withLocale_createdGroupNodeCount_(self->_groupRoot, v13, uid, v5, valueCopy, 1, v12, 0);
  if (v14)
  {
    os_unfair_lock_lock(&self->_lock);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = self->_aggregators;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v33, v37, 16);
    if (v19)
    {
      v20 = *v34;
      do
      {
        v21 = 0;
        do
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = objc_msgSend_aggNodeForGroupNode_(*(*(&v33 + 1) + 8 * v21++), v17, v14, v18, v33);
        }

        while (v19 != v21);
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v33, v37, 16);
      }

      while (v19);
    }

    os_unfair_lock_unlock(&self->_lock);
    if (objc_msgSend_isRebuildFormulasDeferred(self, v23, v24, v25))
    {
      self->_needsRebuildOfAggFormulas = 1;
    }

    else
    {
      for (i = *(objc_msgSend_aggNodes(v14, v26, v27, v28) + 16); i; i = *i)
      {
        v30 = i[4];
        objc_msgSend_rebuildFormulasForAggNode_(v14, v31, v30, v32);
      }
    }
  }
}

- (void)removeRowUid:(const TSKUIDStruct *)uid forGroupValue:(id)value
{
  valueCopy = value;
  groupRoot = self->_groupRoot;
  v10 = objc_msgSend_locale(self, v7, v8, v9);
  objc_msgSend_removeRowUid_forGroupValueTuple_atLevel_withLocale_(groupRoot, v11, uid, valueCopy, 1, v10);
}

- (void)removeRowUid:(const TSKUIDStruct *)uid
{
  groupRoot = self->_groupRoot;
  v7 = objc_msgSend_locale(self, a2, uid, v3);
  objc_msgSend_removeRowUid_forGroupValueTuple_atLevel_withLocale_(groupRoot, v6, uid, 0, 1);
}

- (void)removeRowUids:(id)uids
{
  uidsCopy = uids;
  if (objc_msgSend_count(uidsCopy, v4, v5, v6))
  {
    objc_msgSend_willMakeGroupingChangesInRowUIDs_(self, v7, uidsCopy, v8);
    objc_msgSend_removeRowUids_(self->_groupRoot, v9, uidsCopy, v10);
  }
}

- (id)findGroupNodeForValue:(id)value atLevel:(unsigned __int8)level createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  levelCopy = level;
  valueCopy = value;
  v12 = objc_msgSend_locale(self, v9, v10, v11);
  v14 = objc_msgSend_findGroupNodeForValue_atLevel_locale_(self->_groupRoot, v13, valueCopy, levelCopy, v12);
  v16 = v14;
  if (missingCopy && !v14)
  {
    v30[0] = 0;
    v30[1] = 0;
    objc_msgSend_insertRowUid_atRowIndex_forGroupValue_(self, v15, v30, 0x7FFFFFFFLL, valueCopy);
    v16 = objc_msgSend_findGroupNodeForValue_atLevel_locale_(self->_groupRoot, v17, valueCopy, levelCopy, v12);
    if (!v16)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTGroupBy findGroupNodeForValue:atLevel:createIfMissing:]", v19);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 2518, 0, "Was expecting to have created a groupNode for this groupValue: %@", valueCopy);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    }
  }

  return v16;
}

- (id)distinctValuesAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, level, v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22135694C;
  v10[3] = &unk_27845FA48;
  v7 = v6;
  v11 = v7;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(self, v8, levelCopy, v10);

  return v7;
}

- (id)sortedValuesAtLevel:(unsigned __int8)level
{
  v4 = objc_msgSend_distinctValuesAtLevel_(self, a2, level, v3);
  v8 = objc_msgSend_allObjects(v4, v5, v6, v7);
  v12 = objc_msgSend_mutableCopy(v8, v9, v10, v11);

  objc_msgSend_sortUsingSelector_(v12, v13, sel_compare_, v14);

  return v12;
}

- (id)aggregateRefOnValue:(id)value forColumnUid:(const TSKUIDStruct *)uid forType:(unsigned __int8)type atLevel:(unsigned __int8)level
{
  levelCopy = level;
  typeCopy = type;
  v9 = objc_msgSend_findGroupNodeForValue_atLevel_createIfMissing_(self, a2, value, level, 1);
  v11 = objc_msgSend_aggregateRefForType_atLevel_forColumnUid_(v9, v10, typeCopy, levelCopy, uid);

  return v11;
}

- (id)groupValueRefOnValue:(id)value atLevel:(unsigned __int8)level
{
  levelCopy = level;
  v5 = objc_msgSend_findGroupNodeForValue_atLevel_createIfMissing_(self, a2, value, level, 1);
  v8 = objc_msgSend_groupValueRefAtLevel_(v5, v6, levelCopy, v7);

  return v8;
}

- (id)groupValueHierarchyRefOnValue:(id)value atLevel:(unsigned __int8)level
{
  levelCopy = level;
  v5 = objc_msgSend_findGroupNodeForValue_atLevel_createIfMissing_(self, a2, value, level, 1);
  v8 = objc_msgSend_groupValueHierarchyRefAtLevel_(v5, v6, levelCopy, v7);

  return v8;
}

- (TSTTableModel)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v6 = objc_msgSend_tableModel(WeakRetained, v3, v4, v5);

  return v6;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v6 = objc_msgSend_tableModel(WeakRetained, v3, v4, v5);
  v10 = objc_msgSend_tableInfo(v6, v7, v8, v9);

  return v10;
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v6 = objc_msgSend_calcEngine(WeakRetained, v3, v4, v5);

  return v6;
}

- (void)beginDeferringRebuildFormulas
{
  rebuildFormulasDeferredLevel = self->_rebuildFormulasDeferredLevel;
  self->_rebuildFormulasDeferredLevel = rebuildFormulasDeferredLevel + 1;
  if (rebuildFormulasDeferredLevel == -1)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBy beginDeferringRebuildFormulas]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v7);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 2577, 0, "overflow in beginDeferringRebuildFormulas");

    v13 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v13, v10, v11, v12);
  }
}

- (void)endDeferringRebuildFormulas
{
  rebuildFormulasDeferredLevel = self->_rebuildFormulasDeferredLevel;
  if (rebuildFormulasDeferredLevel)
  {
    v6 = rebuildFormulasDeferredLevel - 1;
    self->_rebuildFormulasDeferredLevel = v6;
    if (!v6 && self->_needsRebuildOfAggFormulas)
    {
      self->_needsRebuildOfAggFormulas = 0;
      objc_msgSend_rebuildAllAggFormulas(self, a2, v2, v3);
      if (TSUIndexSet::count(&self->_aggFormulaCoordsToFreeDeferred))
      {
        TSUIndexSet::addIndexes(&self->_aggFormulaCoordsFreeList, &self->_aggFormulaCoordsToFreeDeferred);

        TSUIndexSet::removeAllIndexes(&self->_aggFormulaCoordsToFreeDeferred);
      }
    }
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBy endDeferringRebuildFormulas]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 2593, 0, "endDeferringRebuildFormulas called without matching beginDeferringRebuildFormulas - avoided underflow");

    v16 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v16, v13, v14, v15);
  }
}

- (void)deferGroupByChangeNotifications
{
  if (!self->_deferredGroupByChangeNotifications)
  {
    v4 = objc_opt_new();
    deferredGroupByChangeNotifications = self->_deferredGroupByChangeNotifications;
    self->_deferredGroupByChangeNotifications = v4;
  }

  deferGroupByChangeNotificationsLevel = self->_deferGroupByChangeNotificationsLevel;
  self->_deferGroupByChangeNotificationsLevel = deferGroupByChangeNotificationsLevel + 1;
  if (deferGroupByChangeNotificationsLevel == -1)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBy deferGroupByChangeNotifications]", v2);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 2607, 0, "overflow in deferGroupByChangeNotifications");

    v16 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v16, v13, v14, v15);
  }
}

- (void)sendDeferredNotifictions:(id)notifictions
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  notifictionsCopy = notifictions;
  v6 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(notifictionsCopy, v5, &v26, v30, 16);
  if (v10)
  {
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(notifictionsCopy);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        v14 = objc_msgSend_groupNode(v13, v7, v8, v9, 0, 0, v26);
        v15 = v14 == 0;

        if (!v15)
        {
          v19 = objc_msgSend_groupNode(v13, v16, v17, v18);
          v24 = objc_msgSend_groupUid(v19, v20, v21, v22);
          v25 = v23;
        }

        if (objc_msgSend_notifyType(v13, v16, v17, v18) == 3 && !sub_2210875C4(&self->_groupNodesByGroupUid.__table_.__bucket_list_.__ptr_, &v24))
        {
          if (!v6)
          {
            v6 = objc_opt_new();
          }

          objc_msgSend_addUUID_(v6, v7, v24, v25);
        }

        if (!v6 || (objc_msgSend_containsUuid_(v6, v7, v24, v25) & 1) == 0)
        {
          objc_msgSend_sendToDistributor_(v13, v7, self->_groupByChangeDistributor, v9);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(notifictionsCopy, v7, &v26, v30, 16);
    }

    while (v10);
  }
}

- (void)resumeGroupByChangeNotifications
{
  deferGroupByChangeNotificationsLevel = self->_deferGroupByChangeNotificationsLevel;
  if (deferGroupByChangeNotificationsLevel)
  {
    v5 = deferGroupByChangeNotificationsLevel - 1;
    self->_deferGroupByChangeNotificationsLevel = v5;
    if (!v5)
    {
      objc_msgSend_sendDeferredNotifictions_(self, a2, self->_deferredGroupByChangeNotifications, v2);
      deferredGroupByChangeNotifications = self->_deferredGroupByChangeNotifications;

      objc_msgSend_removeAllObjects(deferredGroupByChangeNotifications, v16, v17, v18);
    }
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBy resumeGroupByChangeNotifications]", v2);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 2644, 0, "resumeGroupByChangeNotifications called without matching deferGroupByChangeNotifications - avoided underflow");

    v15 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v15, v12, v13, v14);
  }
}

- (void)enterCalcEngineMode
{
  if (!self->_calcEngineGroupByChangeNotifications)
  {
    obj = self;
    objc_sync_enter(obj);
    if (!self->_calcEngineGroupByChangeNotifications)
    {
      v3 = objc_opt_new();
      calcEngineGroupByChangeNotifications = self->_calcEngineGroupByChangeNotifications;
      self->_calcEngineGroupByChangeNotifications = v3;

      obj->_inCalcEngineMode = 1;
    }

    objc_sync_exit(obj);
  }
}

- (void)exitCalcEngineMode
{
  if (self->_calcEngineGroupByChangeNotifications)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    calcEngineGroupByChangeNotifications = self->_calcEngineGroupByChangeNotifications;
    if (calcEngineGroupByChangeNotifications)
    {
      v4 = calcEngineGroupByChangeNotifications;
      v5 = self->_calcEngineGroupByChangeNotifications;
      self->_calcEngineGroupByChangeNotifications = 0;
    }

    objc_sync_exit(selfCopy);

    objc_msgSend_sendDeferredNotifictions_(selfCopy, v6, calcEngineGroupByChangeNotifications, v7);
    selfCopy->_inCalcEngineMode = 0;
  }
}

- (void)upgradeForNewAggregateTypes:(id)types
{
  v17 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_aggregators;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_upgradeForNewAggregateTypes_(*(*(&v12 + 1) + 8 * v11++), v7, typesCopy, v8, v12);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v12, v16, 16);
    }

    while (v9);
  }
}

- (void)rebuildAllAggFormulas
{
  v21 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, v2, v3);
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_aggregators;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v10)
  {
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_rebuildAggFormulas(*(*(&v16 + 1) + 8 * v12++), v7, v8, v9, v16);
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v16, v20, 16);
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_lock);
  objc_msgSend_resetAllAggsFormula(self, v13, v14, v15);
}

- (void)resetGroupings
{
  v145 = *MEMORY[0x277D85DE8];
  v132 = objc_msgSend_calcEngine(self, a2, v2, v3);
  if (!v132)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTGroupBy resetGroupings]", v5);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 2706, 0, "Can't resetGroupings with no calcEngine");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v19 = objc_msgSend_tableModel(WeakRetained, v16, v17, v18);

  v143.origin = objc_msgSend_bodyRange(v19, v20, v21, v22);
  v143.size = v23;
  __p = 0;
  v141 = 0;
  v142 = 0;
  v26 = objc_msgSend_tableInfo(v19, v23, v24, v25);
  objc_msgSend_willModify(v26, v27, v28, v29);

  objc_msgSend_willModify(v19, v30, v31, v32);
  objc_msgSend_willModify(self, v33, v34, v35);
  objc_msgSend_removeAllRowUids(self->_groupRoot, v36, v37, v38);
  sub_2210BCED4(&self->_rowUidLookupList._uids.__begin_);
  v42 = objc_msgSend_columnRowUIDMap(v19, v39, v40, v41);
  v46 = objc_msgSend_rowUIDs(v42, v43, v44, v45);
  sub_2210BCD30(&self->_rowUidLookupList._uids.__begin_, v46);

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v47 = self->_groupingColumns;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v136, v144, 16);
  if (v52)
  {
    v53 = *v137;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v137 != v53)
        {
          objc_enumerationMutation(v47);
        }

        v55 = objc_msgSend_columnUid(*(*(&v136 + 1) + 8 * i), v49, v50, v51);
        v57 = v56;
        v60 = objc_msgSend_columnRowUIDMap(v19, v56, v58, v59);
        LODWORD(v55) = objc_msgSend_columnIndexForColumnUID_(v60, v61, v55, v57);

        LOWORD(indirectAggTypeChangeFormulaCoord) = v55;
        if (v55 != 0x7FFF)
        {
          sub_221266D14(&__p, &indirectAggTypeChangeFormulaCoord);
        }
      }

      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v136, v144, 16);
    }

    while (v52);
  }

  objc_msgSend_beginDeferringRebuildFormulas(self, v62, v63, v64);
  if (v143.size.numberOfRows)
  {
    v128 = TSUCellRect::firstRow(&v143);
    v127 = TSUCellRect::lastRow(&v143);
    v130 = objc_msgSend_mergeOwner(v19, v68, v69, v70);
    if (v128 <= v127)
    {
      v74 = 0;
      do
      {
        indirectAggTypeChangeFormulaCoord = 0;
        v134 = 0;
        v75 = objc_msgSend_columnRowUIDMap(v19, v71, v72, v73);
        indirectAggTypeChangeFormulaCoord = objc_msgSend_rowUIDForRowIndex_(v75, v76, v128, v77);
        v134 = v78;

        v129 = objc_opt_new();
        v82 = __p;
        v81 = v141;
        if (__p != v141)
        {
          v83 = 0;
          v84 = 0;
          do
          {
            v85 = objc_msgSend_mergeOriginForBaseCellCoord_(v130, v79, v128 | (v82[v84] << 32), v80);
            v90 = objc_msgSend_cellValueAtBaseCellCoord_(v19, v86, v85, v87);
            if (!v90)
            {
              if (!v74)
              {
                v91 = [TSCENilCellValue alloc];
                v95 = objc_msgSend_documentLocale(v132, v92, v93, v94);
                v74 = objc_msgSend_initWithLocale_(v91, v96, v95, v97);
              }

              v74 = v74;
              v90 = v74;
            }

            v98 = objc_msgSend_objectAtIndex_(self->_groupingColumns, v88, v84, v89);
            v100 = objc_msgSend_groupValueForValue_calcEngine_(v98, v99, v90, v132);

            if (v100)
            {
              objc_msgSend_addObject_(v129, v101, v100, v102);
            }

            ++v84;
            ++v83;
          }

          while (&v82[v83] != v81);
        }

        v103 = [TSTGroupValueTuple alloc];
        v106 = objc_msgSend_initWithValueArray_(v103, v104, v129, v105);
        v111 = objc_msgSend_numberOfLevels(v106, v107, v108, v109);
        if (v111 == (v141 - __p) >> 1)
        {
          objc_msgSend_insertRowUid_atRowIndex_forGroupValue_(self, v110, &indirectAggTypeChangeFormulaCoord, v128, v106);
        }

        ++v128;
      }

      while (v128 <= v127);
    }

    else
    {
      v74 = 0;
    }
  }

  objc_msgSend_clearEmptyNodes(self->_groupRoot, v65, v66, v67);
  objc_msgSend_endDeferringRebuildFormulas(self, v112, v113, v114);
  v118 = objc_msgSend_groupByUid(self, v115, v116, v117);
  indirectAggTypeChangeFormulaCoord = self->_indirectAggTypeChangeFormulaCoord;
  v134 = v118;
  v135 = v119;
  objc_msgSend_markCellRefAsDirty_(v132, v119, &indirectAggTypeChangeFormulaCoord, v120);
  v124 = objc_msgSend_allGroupNodeUids(self, v121, v122, v123);
  objc_msgSend_willMakeGroupingChangesInRowUIDs_(self, v125, v124, v126);

  if (__p)
  {
    v141 = __p;
    operator delete(__p);
  }
}

- (void)insertRowUids:(id)uids
{
  v82 = *MEMORY[0x277D85DE8];
  uidsCopy = uids;
  v60 = objc_msgSend_calcEngine(self, v4, v5, v6);
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v11 = objc_msgSend_tableModel(WeakRetained, v8, v9, v10);

  v78 = 0;
  v79 = 0;
  v80 = 0;
  v62 = v11;
  objc_msgSend_willModify(v11, v12, v13, v14);
  v18 = objc_msgSend_tableInfo(v11, v15, v16, v17);
  objc_msgSend_willModify(v18, v19, v20, v21);

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  selfCopy = self;
  v22 = self->_groupingColumns;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v74, v81, 16);
  if (v27)
  {
    v28 = *v75;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v75 != v28)
        {
          objc_enumerationMutation(v22);
        }

        v30 = objc_msgSend_columnUid(*(*(&v74 + 1) + 8 * i), v24, v25, v26, selfCopy, v60);
        v32 = v31;
        v35 = objc_msgSend_columnRowUIDMap(v62, v31, v33, v34);
        LODWORD(v30) = objc_msgSend_columnIndexForColumnUID_(v35, v36, v30, v32);

        LOWORD(v72[0]) = v30;
        if (v30 == 0x7FFF)
        {
          v39 = MEMORY[0x277D81150];
          v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSTGroupBy insertRowUids:]", v38);
          v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v42);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 2806, 0, "Column missing from table model when grouping");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
        }

        sub_221266D14(&v78, v72);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v74, v81, 16);
    }

    while (v27);
  }

  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = sub_22135824C;
  v72[4] = sub_22135825C;
  v73 = 0;
  v51 = objc_msgSend_mergeOwner(v62, v48, v49, v50);
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3321888768;
  v63[2] = sub_221358264;
  v63[3] = &unk_2834A6B20;
  v52 = v62;
  v64 = v52;
  __p = 0;
  v70 = 0;
  v71 = 0;
  sub_221362914(&__p, v78, v79, (v79 - v78) >> 1);
  v53 = v51;
  v65 = v53;
  v68 = v72;
  v54 = v60;
  v66 = v54;
  v67 = selfCopy;
  objc_msgSend_foreachUuid_(uidsCopy, v55, v63, v56);
  objc_msgSend_willMakeGroupingChangesInRowUIDs_(selfCopy, v57, uidsCopy, v58);

  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v72, 8);
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }
}

- (TSUCellCoord)getNextAggFormulaCoord
{
  if (TSUIndexSet::count(&self->_aggFormulaCoordsFreeList))
  {
    Index = TSUIndexSet::firstIndex(&self->_aggFormulaCoordsFreeList);
    TSUIndexSet::removeIndex(&self->_aggFormulaCoordsFreeList);

    return MEMORY[0x2821EC798](Index);
  }

  else
  {
    nextAggFormulaCoord = self->_nextAggFormulaCoord;
    TSUCellCoord::addOffset(&self->_nextAggFormulaCoord);
    if (self->_nextAggFormulaCoord.column >= 0x3E8u)
    {
      self->_nextAggFormulaCoord = (self->_nextAggFormulaCoord.row + 1);
    }

    objc_msgSend_willModify(self, v5, v6, v7);
    return nextAggFormulaCoord;
  }
}

- (void)freeAggFormulaCoord:(const TSUCellCoord *)coord
{
  v3 = coord->row == 0x7FFFFFFF || (*coord & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v3 && TSUCellCoord::encodeAsUInt(coord) <= 0x7FFFFFFFFFFFFFFELL)
  {
    isRebuildFormulasDeferred = objc_msgSend_isRebuildFormulasDeferred(self, v5, v6, v7);
    v9 = &OBJC_IVAR___TSTGroupBy__aggFormulaCoordsFreeList;
    if (isRebuildFormulasDeferred)
    {
      v9 = &OBJC_IVAR___TSTGroupBy__aggFormulaCoordsToFreeDeferred;
    }

    v10 = (self + *v9);

    TSUIndexSet::addIndex(v10);
  }
}

- (void)usedAggFormulaCoord:(const TSUCellCoord *)coord
{
  v6 = *coord;
  TSUCellCoord::addOffset(&v6);
  row = self->_nextAggFormulaCoord.row;
  if (row < v6.row || row == v6.row && self->_nextAggFormulaCoord.column < v6.column)
  {
    self->_nextAggFormulaCoord = v6;
  }

  if (TSUIndexSet::count(&self->_aggFormulaCoordsFreeList))
  {
    if (TSUCellCoord::encodeAsUInt(coord) <= 0x7FFFFFFFFFFFFFFELL)
    {
      TSUIndexSet::removeIndex(&self->_aggFormulaCoordsFreeList);
    }
  }
}

- (void)updateAggFormulaCoord:(TSUCellCoord)coord
{
  coordCopy = coord;
  v5 = objc_msgSend_aggNodeForAggFormulaCoord_(self, a2, &coordCopy, v3);
  v9 = v5;
  if (v5)
  {
    v10 = objc_msgSend_groupNode(v5, v6, v7, v8);
    objc_msgSend_rebuildFormulasForAggNode_(v10, v11, v9, v12);

    goto LABEL_22;
  }

  groupingColumnHeadersFormulaCoord = self->_groupingColumnHeadersFormulaCoord;
  v15 = coordCopy.row == groupingColumnHeadersFormulaCoord.row;
  v14 = (*&groupingColumnHeadersFormulaCoord ^ *&coordCopy) & 0x101FFFF00000000;
  v15 = v15 && v14 == 0;
  if (v15 || ((groupingColumnsFormulaCoord = self->_groupingColumnsFormulaCoord, v15 = coordCopy.row == groupingColumnsFormulaCoord.row, v17 = (*&groupingColumnsFormulaCoord ^ *&coordCopy) & 0x101FFFF00000000, v15) ? (v18 = v17 == 0) : (v18 = 0), v18))
  {
LABEL_21:
    objc_msgSend_resetGroupingColumnsFormula(self, v6, v7, v8);
    goto LABEL_22;
  }

  allAggsInGroupRootFormulaCoord = self->_allAggsInGroupRootFormulaCoord;
  v15 = coordCopy.row == allAggsInGroupRootFormulaCoord.row;
  v20 = (*&allAggsInGroupRootFormulaCoord ^ *&coordCopy) & 0x101FFFF00000000;
  v21 = v15 && v20 == 0;
  if (v21 || ((indirectAggTypeChangeFormulaCoord = self->_indirectAggTypeChangeFormulaCoord, coordCopy.row == indirectAggTypeChangeFormulaCoord.row) ? (v23 = ((*&indirectAggTypeChangeFormulaCoord ^ *&coordCopy) & 0x101FFFF00000000) == 0) : (v23 = 0), v23))
  {
    objc_msgSend_resetAllAggsFormula(self, v6, v7, v8);
    goto LABEL_21;
  }

LABEL_22:
}

- (void)setValue:(id)value forFormulaCoord:(const TSUCellCoord *)coord
{
  valueCopy = value;
  v8 = objc_msgSend_aggNodeForAggFormulaCoord_(self, v6, coord, v7);
  os_unfair_lock_lock(&self->_aggValuesLock);
  if (v8)
  {
    objc_msgSend_setAccumulator_(v8, v9, valueCopy, v10);
  }

  os_unfair_lock_unlock(&self->_aggValuesLock);
}

- (id)valueForFormulaCoord:(const TSUCellCoord *)coord
{
  v5 = objc_msgSend_aggNodeForAggFormulaCoord_(self, a2, coord, v3);
  os_unfair_lock_lock(&self->_aggValuesLock);
  v9 = objc_msgSend_accumulator(v5, v6, v7, v8);
  os_unfair_lock_unlock(&self->_aggValuesLock);

  return v9;
}

- (void)setAggNode:(id)node forFormulaCoord:(const TSUCellCoord *)coord
{
  nodeCopy = node;
  if (nodeCopy)
  {
    coordCopy = coord;
    v8 = sub_221362990(&self->_aggNodesByFormulaCoord.__table_.__bucket_list_.__ptr_, coord, &unk_2217E17E0, &coordCopy);
    objc_storeStrong(v8 + 3, node);
    objc_msgSend_usedAggFormulaCoord_(self, v9, coord, v10);
  }

  else
  {
    sub_221087EC8(&self->_aggNodesByFormulaCoord.__table_.__bucket_list_.__ptr_, coord);
  }
}

- (id)aggNodeForAggFormulaCoord:(const TSUCellCoord *)coord
{
  v3 = sub_221087F14(&self->_aggNodesByFormulaCoord.__table_.__bucket_list_.__ptr_, coord);
  if (v3)
  {
    v3 = v3[3];
  }

  return v3;
}

- (void)addAggregator:(id)aggregator
{
  v35 = *MEMORY[0x277D85DE8];
  aggregatorCopy = aggregator;
  if (aggregatorCopy)
  {
    v5 = 120;
    aggregators = self->_aggregators;
    if (!aggregators)
    {
      v7 = objc_opt_new();
      v8 = self->_aggregators;
      self->_aggregators = v7;

      aggregators = self->_aggregators;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = aggregators;
    v11 = 0;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v30, v34, 16);
    if (v15)
    {
      v16 = *v31;
      v28 = 120;
      selfCopy = self;
      while (2)
      {
        v17 = 0;
        v18 = v11;
        v11 += v15;
        do
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v9);
          }

          v19 = *(*(&v30 + 1) + 8 * v17);
          v20 = objc_msgSend_columnUid(aggregatorCopy, v12, v13, v14, v28, selfCopy, v30);
          v22 = v21;
          v25 = objc_msgSend_columnUid(v19, v21, v23, v24);
          if (v22 < v12 || (v22 == v12 ? (v26 = v20 >= v25) : (v26 = 1), !v26))
          {
            v11 = v18;
            v5 = v28;
            self = selfCopy;
            goto LABEL_19;
          }

          ++v18;
          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v30, v34, 16);
        v5 = v28;
        self = selfCopy;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    objc_msgSend_insertObject_atIndex_(*(&self->super.super.isa + v5), v27, aggregatorCopy, v11);
  }
}

- (id)createAggregatorOnColumn:(TSKUIDStruct)column
{
  upper = column._upper;
  lower = column._lower;
  objc_msgSend_willModify(self, a2, column._lower, column._upper);
  v9 = objc_msgSend_tableInfo(self, v6, v7, v8);
  objc_msgSend_willModify(v9, v10, v11, v12);

  v13 = [TSTAggregator alloc];
  v15 = objc_msgSend_initWithColumn_forGroupBy_(v13, v14, lower, upper, self);
  objc_msgSend_rebuildAggFormulas(v15, v16, v17, v18);
  objc_msgSend_addAggregator_(self, v19, v15, v20);
  objc_msgSend_resetAllAggsFormula(self, v21, v22, v23);

  return v15;
}

- (id)anyAggregator
{
  v5 = objc_msgSend_count(self->_aggregators, a2, v2, v3);
  if (v5)
  {
    v5 = objc_msgSend_objectAtIndexedSubscript_(self->_aggregators, v6, 0, v7);
  }

  return v5;
}

- (void)dropAggregator:(id)aggregator
{
  aggregatorCopy = aggregator;
  if (aggregatorCopy)
  {
    v7 = objc_msgSend_calcEngine(self, v4, v5, v6);
    objc_msgSend_clearAggFormulas_(aggregatorCopy, v8, v7, v9);

    objc_msgSend_removeObjectIdenticalTo_(self->_aggregators, v10, aggregatorCopy, v11);
  }
}

- (BOOL)createAggregatorsIfMissingAndAssert:(BOOL)assert
{
  assertCopy = assert;
  v72 = *MEMORY[0x277D85DE8];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v4 = self->_columnAggregates;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v67, v71, 16);
  if (v9)
  {
    v10 = 0;
    v11 = *v68;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v68 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v67 + 1) + 8 * i);
        v14 = objc_msgSend_columnUid(v13, v6, v7, v8);
        v19 = objc_msgSend_aggregatorForColumn_(self, v15, v14, v15);
        if (!v19)
        {
          if (assertCopy)
          {
            v20 = MEMORY[0x277D81150];
            v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTGroupBy createAggregatorsIfMissingAndAssert:]", v18);
            v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v23);
            v66._lower = objc_msgSend_columnUid(v13, v25, v26, v27);
            v66._upper = v28;
            v29 = TSKUIDStruct::description(&v66);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v30, v21, v24, 3034, 0, "No TSTAggregator found for column %@", v29);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
          }

          objc_msgSend_willModify(self, v16, v17, v18);
          v34 = [TSTAggregator alloc];
          v38 = objc_msgSend_columnUid(v13, v35, v36, v37);
          v19 = objc_msgSend_initWithColumn_forGroupBy_(v34, v39, v38, v39, self);
          objc_msgSend_rebuildAggFormulas(v19, v40, v41, v42);
          objc_msgSend_addAggregator_(self, v43, v19, v44);
          if (v19)
          {
            v10 = 1;
          }

          else
          {
            v47 = MEMORY[0x277D81150];
            v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSTGroupBy createAggregatorsIfMissingAndAssert:]", v46);
            v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v50);
            v66._lower = objc_msgSend_columnUid(v13, v52, v53, v54);
            v66._upper = v55;
            v56 = TSKUIDStruct::description(&v66);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v57, v48, v51, 3043, 0, "Couldn't create an aggreator for column: %@", v56);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60);
            v10 = 1;
            v19 = 0;
          }
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v67, v71, 16);
    }

    while (v9);

    if (v10)
    {
      objc_msgSend_resetAllAggsFormula(self, v61, v62, v63);
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (void)dropAllAggregators
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_copy(self->_aggregators, a2, v2, v3);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v5;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v28, v32, 16);
  if (v10)
  {
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v6);
        }

        objc_msgSend_dropAggregator_(self, v8, *(*(&v28 + 1) + 8 * i), v9);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v28, v32, 16);
    }

    while (v10);
  }

  allAggsInGroupRootFormulaCoord = self->_allAggsInGroupRootFormulaCoord;
  if (allAggsInGroupRootFormulaCoord.row != 0x7FFFFFFF && (*&allAggsInGroupRootFormulaCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v18 = objc_msgSend_categoryOwner(self, v13, v14, v15);
    v22 = objc_msgSend_calcEngine(v18, v19, v20, v21);

    v27[0] = objc_msgSend_groupByUid(self, v23, v24, v25);
    v27[1] = v26;
    objc_msgSend_removeFormulaAt_inOwner_(v22, v26, &self->_allAggsInGroupRootFormulaCoord, v27);
  }
}

- (id)aggregatorForColumn:(TSKUIDStruct)column
{
  upper = column._upper;
  lower = column._lower;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_aggregators;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v17, v21, 16);
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend_columnUid(v13, v7, v8, v9, v17) == lower && v7 == upper)
        {
          v15 = v13;
          goto LABEL_14;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v17, v21, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (TSKUIDStruct)ownerUID
{
  p_groupByUid = &self->_groupByUid;
  lower = self->_groupByUid.var0.var0._lower;
  upper = p_groupByUid->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id)linkedResolver
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);
  v6 = objc_msgSend_tableModel(WeakRetained, v3, v4, v5);

  return v6;
}

- (TSCERecalculationState)evaluateFormulaAt:(TSUCellCoord)at withCalcEngine:(id)engine recalcOptions:(TSCERecalculationState)options
{
  atCopy = at;
  v95[0] = at;
  engineCopy = engine;
  rowOrderChangedCoord = self->_rowOrderChangedCoord;
  v14 = atCopy.row == rowOrderChangedCoord.row;
  v13 = (*&rowOrderChangedCoord ^ *&atCopy) & 0x101FFFF00000000;
  v14 = v14 && v13 == 0;
  if (!v14)
  {
    columnOrderChangedCoord = self->_columnOrderChangedCoord;
    v14 = atCopy.row == columnOrderChangedCoord.row;
    v16 = (*&columnOrderChangedCoord ^ *&atCopy) & 0x101FFFF00000000;
    if (!v14 || v16 != 0)
    {
      indirectAggTypeChangeFormulaCoord = self->_indirectAggTypeChangeFormulaCoord;
      v14 = atCopy.row == indirectAggTypeChangeFormulaCoord.row;
      v19 = (*&indirectAggTypeChangeFormulaCoord ^ *&atCopy) & 0x101FFFF00000000;
      if (!v14 || v19 != 0)
      {
        groupingColumnsFormulaCoord = self->_groupingColumnsFormulaCoord;
        v14 = atCopy.row == groupingColumnsFormulaCoord.row;
        v22 = (*&groupingColumnsFormulaCoord ^ *&atCopy) & 0x101FFFF00000000;
        if (!v14 || v22 != 0)
        {
          groupingColumnHeadersFormulaCoord = self->_groupingColumnHeadersFormulaCoord;
          v14 = atCopy.row == groupingColumnHeadersFormulaCoord.row;
          v25 = (*&groupingColumnHeadersFormulaCoord ^ *&atCopy) & 0x101FFFF00000000;
          if (!v14 || v25 != 0)
          {
            allAggsInGroupRootFormulaCoord = self->_allAggsInGroupRootFormulaCoord;
            if (atCopy.row != allAggsInGroupRootFormulaCoord.row || ((*&allAggsInGroupRootFormulaCoord ^ *&atCopy) & 0x101FFFF00000000) != 0)
            {
              hiddenStatesChangedCoord = self->_hiddenStatesChangedCoord;
              if (atCopy.row == hiddenStatesChangedCoord.row)
              {
                v29 = *&hiddenStatesChangedCoord ^ *&atCopy;
                v30 = (v29 & 0x1FFFF00000000) == 0 && (v29 & 0x100000000000000) == 0;
              }

              else
              {
                v30 = 0;
              }

              if (atCopy.row != 0x7FFFFFFF && (*&atCopy & 0xFFFF00000000) != 0x7FFF00000000 && !v30)
              {
                v94[0] = v95[0];
                v94[1] = objc_msgSend_groupByUid(self, v8, v9, v10);
                v94[2] = v31;
                v33 = objc_msgSend_valueForFormulaCoord_(self, v31, v95, v32);
                v37 = v33;
                if (v33)
                {
                  objc_msgSend_clear(v33, v34, v35, v36);
                }

                else
                {
                  v41 = [TSTAccumulator alloc];
                  v45 = objc_msgSend_documentLocale(engineCopy, v42, v43, v44);
                  v37 = objc_msgSend_initWithLocale_(v41, v46, v45, v47);
                }

                v51 = objc_msgSend_tableModel(self, v38, v39, v40);
                if (engineCopy)
                {
                  objc_msgSend_precedentsOfCell_(engineCopy, v48, v94, v50);
                }

                else
                {
                  memset(&v93, 0, sizeof(v93));
                }

                v52 = objc_msgSend_nilValue(TSCENilValue, v48, v49, v50);
                v90[0] = 0;
                v90[1] = v90;
                v90[2] = 0x5812000000;
                v90[3] = sub_2213599B4;
                v90[4] = sub_2213599C0;
                v90[5] = &unk_22188E88F;
                v92[0] = 0;
                v92[1] = 0;
                v90[6] = 0;
                v90[7] = 0;
                v91 = v92;
                v82 = 0;
                v83 = &v82;
                v84 = 0x4012000000;
                v85 = sub_2213599CC;
                v86 = nullsub_54;
                v87 = &unk_22188E88F;
                v88 = 0;
                v89 = 0;
                if (objc_msgSend_isForPivotTable(self, v53, v54, v55))
                {
                  v59 = objc_msgSend_groupBySet(self, v56, v57, v58);
                  v63 = v59;
                  if (v59)
                  {
                    v64 = objc_msgSend_pivotDataTableUID(v59, v60, v61, v62);
                    v65 = v83;
                    v83[6] = v64;
                    v65[7] = v66;
                  }
                }

                v75[0] = MEMORY[0x277D85DD0];
                v75[1] = 3221225472;
                v75[2] = sub_2213599DC;
                v75[3] = &unk_278463020;
                v75[4] = self;
                v67 = v37;
                v76 = v67;
                v68 = v51;
                v77 = v68;
                v80 = &v82;
                v81 = v90;
                v78 = engineCopy;
                v69 = v52;
                v79 = v69;
                TSCEReferenceSet::foreachCellRef(&v93, v75);
                objc_msgSend_setValue_forFormulaCoord_(self, v70, v67, v95);

                _Block_object_dispose(&v82, 8);
                _Block_object_dispose(v90, 8);
                sub_22107C860(&v91, v92[0]);

                TSCEReferenceSet::~TSCEReferenceSet(&v93);
                atCopy = v95[0];
              }
            }
          }
        }
      }
    }
  }

  v71 = self->_groupingColumnHeadersFormulaCoord;
  v14 = atCopy.row == v71.row;
  v72 = (*&v71 ^ *&atCopy) & 0x101FFFF00000000;
  if (v14 && v72 == 0)
  {
    self->_groupingColumnHeadersChanged = 1;
  }

  return options;
}

- (void)invalidateForCalcEngine:(id)engine
{
  engineCopy = engine;
  if (self->_groupingColumnHeadersChanged && objc_msgSend_isEnabled(self, v4, v5, v6))
  {
    self->_groupingColumnHeadersChanged = 0;
    v11 = objc_msgSend_groupByUid(self, v8, v9, v10);
    v20[0] = self->_indirectAggTypeChangeFormulaCoord;
    v20[1] = v11;
    v20[2] = v12;
    if ((objc_msgSend_hasFormulaAt_(engineCopy, v12, v20, v13) & 1) == 0)
    {
      objc_msgSend_resetAllAggsFormula(self, v14, v15, v16);
    }

    v17 = objc_msgSend_allGroupNodeUids(self, v14, v15, v16);
    objc_msgSend_willMakeGroupingChangesInRowUIDs_(self, v18, v17, v19);
  }
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)map calcEngine:(id)engine
{
  engineCopy = engine;
  v12[0] = objc_msgSend_groupByUid(self, v7, v8, v9);
  v12[1] = v10;
  v11 = sub_221119F90(map, v12);
  if (v11)
  {
    self->_groupByUid = v11[2];
  }
}

- (BOOL)isValidCategoryRef:(id)ref
{
  refCopy = ref;
  if (objc_msgSend_isEnabled(self, v5, v6, v7) && (v11 = objc_msgSend_groupByUid(self, v8, v9, v10), v13 = v12, v11 == objc_msgSend_groupByUid(refCopy, v12, v14, v15)) && v13 == v8 && (objc_msgSend_isBadRef(refCopy, v8, v9, v10) & 1) == 0)
  {
    v18 = objc_msgSend_groupLevel(refCopy, v8, v9, v10);
    if (v18 > objc_msgSend_numberOfLevels(self, v19, v20, v21))
    {
      goto LABEL_8;
    }

    v25 = objc_msgSend_tableModel(self, v22, v23, v24);
    isAPivotDataModel = objc_msgSend_isAPivotDataModel(v25, v26, v27, v28);

    if (isAPivotDataModel)
    {
      v16 = 1;
      goto LABEL_6;
    }

    v33 = objc_msgSend_tableInfo(self, v30, v31, v32);
    v37 = objc_msgSend_columnUid(refCopy, v34, v35, v36);
    v39 = objc_msgSend_columnIndexForColumnUID_(v33, v38, v37, v38);

    if (v39 == 0x7FFF)
    {
LABEL_8:
      v16 = 0;
    }

    else
    {
      v69 = objc_msgSend_relativeGroupUid(refCopy, v40, v41, v42);
      v70 = v43;
      if (v69 | v43 && (v46 = objc_msgSend_relativeLevelOfAncestorGroupUid_(TSTGroupBy, v43, &v69, v45)) != 0)
      {
        v16 = v46 <= (objc_msgSend_numberOfLevels(self, v43, v44, v45, v69, v70) + 1);
      }

      else
      {
        v47 = objc_msgSend_absoluteGroupUid(refCopy, v43, v44, v45, v69, v70);
        v49 = objc_msgSend_groupNodeForGroupUid_(self, v48, v47, v48);
        v53 = v49;
        v16 = v49 != 0;
        if (v49)
        {
          if (objc_msgSend_groupLevel(v49, v50, v51, v52))
          {
            v57 = objc_msgSend_parentNode(v53, v54, v55, v56);

            if (!v57)
            {
              v60 = MEMORY[0x277D81150];
              v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSTGroupBy isValidCategoryRef:]", v59);
              v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v63);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v65, v61, v64, 3377, 0, "Only the root groupNode should have no parentNode pointer");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68);
            }
          }
        }
      }
    }
  }

  else
  {
    v16 = objc_msgSend_refersToPivotTable(refCopy, v8, v9, v10);
  }

LABEL_6:

  return v16;
}

- (BOOL)isSpanningCategoryRef:(id)ref
{
  refCopy = ref;
  v8 = objc_msgSend_absoluteGroupUid(refCopy, v5, v6, v7);
  LODWORD(self) = objc_msgSend_groupLevelForGroupUid_(self, v9, v8, v9);
  LOBYTE(self) = objc_msgSend_groupLevel(refCopy, v10, v11, v12) > self;

  return self;
}

- (id)columnNameForCategoryRef:(id)ref
{
  refCopy = ref;
  v12[0] = objc_msgSend_columnUid(refCopy, v5, v6, v7);
  v12[1] = v8;
  v10 = objc_msgSend_p_columnNameForColumnUid_(self, v8, v12, v9);

  return v10;
}

- (id)columnNameForCategoryLevel:(unsigned __int8)level shortForm:(BOOL)form
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = (level - 1);
  if (v4 > 9 || (v5 = form, objc_msgSend_groupingColumns(self, a2, level, form), v7 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend_count(v7, v8, v9, v10), v7, v4 >= v11))
  {
    v24 = 0;
  }

  else
  {
    v15 = objc_msgSend_groupingColumns(self, v12, v13, v14);
    v18 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, v4, v17);

    v70[0] = objc_msgSend_columnUid(v18, v19, v20, v21);
    v70[1] = v22;
    v24 = objc_msgSend_p_columnNameForColumnUid_(self, v22, v70, v23);
    if (objc_msgSend_isForPivotTable(self, v25, v26, v27))
    {
      v31 = objc_msgSend_groupingType(v18, v28, v29, v30);
      if (objc_msgSend_groupingTypeIsAnyDateType_(TSTGroupingColumn, v32, v31, v33))
      {
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v37 = objc_msgSend_groupingColumns(self, v34, v35, v36);
        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v66, v71, 16);
        if (v42)
        {
          v43 = *v67;
          while (2)
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v67 != v43)
              {
                objc_enumerationMutation(v37);
              }

              v45 = *(*(&v66 + 1) + 8 * i);
              if (v45 != v18)
              {
                v46 = objc_msgSend_columnUid(v45, v39, v40, v41);
                v48 = v47;
                if (v46 == objc_msgSend_columnUid(v18, v47, v49, v50) && v48 == v39)
                {
                  v52 = objc_msgSend_locale(self, v39, v40, v41);
                  v54 = objc_msgSend_localizedStringForKey_value_table_(v52, v53, @"%@ (%@)", &stru_2834BADA0, @"TSTables");

                  v58 = objc_msgSend_groupingType(v18, v55, v56, v57);
                  if (v5)
                  {
                    objc_msgSend_shortStringForGroupingType_(TSTGroupingColumn, v59, v58, v60);
                  }

                  else
                  {
                    objc_msgSend_stringForGroupingType_(TSTGroupingColumn, v59, v58, v60);
                  }
                  v61 = ;
                  v64 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v62, v54, v63, v24, v61);

                  v24 = v64;
                  goto LABEL_23;
                }
              }
            }

            v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v66, v71, 16);
            if (v42)
            {
              continue;
            }

            break;
          }
        }

LABEL_23:
      }
    }
  }

  return v24;
}

- (id)p_columnNameForColumnUid:(const TSKUIDStruct *)uid
{
  v6 = objc_msgSend_tableInfo(self, a2, uid, v3);
  if (objc_msgSend_isForPivotTable(self, v7, v8, v9))
  {
    v13 = objc_msgSend_tableModel(self, v10, v11, v12);
    v15 = objc_msgSend_columnIndexForColumnUID_(v13, v14, uid->_lower, uid->_upper);

    v19 = objc_msgSend_tableModel(self, v16, v17, v18);
    v22 = objc_msgSend_displayNameForColumnAtIndex_(v19, v20, v15, v21);
  }

  else
  {
    if (v6)
    {
      v23 = objc_msgSend_columnRowUIDMap(v6, v10, v11, v12);
      v25 = objc_msgSend_columnIndexForColumnUID_(v23, v24, uid->_lower, uid->_upper);

      v29 = objc_msgSend_translator(v6, v26, v27, v28);
      v32 = objc_msgSend_chromeColumnIndexForViewColumnIndex_(v29, v30, v25, v31);
    }

    else
    {
      v29 = objc_msgSend_tableModel(self, v10, v11, v12);
      v32 = objc_msgSend_columnIndexForColumnUID_(v29, v33, uid->_lower, uid->_upper);
    }

    v51 = v32;

    v19 = objc_msgSend_calcEngine(self, v34, v35, v36);
    v40 = objc_msgSend_namer(v19, v37, v38, v39);
    v44 = objc_msgSend_categoryOwner(self, v41, v42, v43);
    v50[0] = objc_msgSend_baseTableUID(v44, v45, v46, v47);
    v50[1] = v48;
    v22 = objc_msgSend_nameForChromeColumnIndex_inTable_useSymbolicNames_(v40, v48, &v51, v50, 1);
  }

  return v22;
}

- (unsigned)aggregateTypeForCategoryRef:(id)ref
{
  refCopy = ref;
  v11 = objc_msgSend_type(refCopy, v5, v6, v7);
  if ((v11 - 11) <= 1u)
  {
    v12 = objc_msgSend_columnUid(refCopy, v8, v9, v10);
    v14 = v13;
    v17 = objc_msgSend_groupLevel(refCopy, v13, v15, v16);
    v11 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(self, v18, v12, v14, v17);
  }

  return v11;
}

- (id)aggregateLabelForCategoryRef:(id)ref
{
  refCopy = ref;
  v7 = objc_msgSend_aggregateTypeForCategoryRef_(self, v5, refCopy, v6);
  v11 = objc_msgSend_locale(self, v8, v9, v10);
  v14 = objc_msgSend_localizedLabelForAggType_(v11, v12, v7, v13);

  return v14;
}

+ (unsigned)aggregateTypeForAggregateLabel:(id)label locale:(id)locale
{
  labelCopy = label;
  localeCopy = locale;
  if (objc_msgSend_length(labelCopy, v7, v8, v9))
  {
    v12 = 0;
    while (1)
    {
      v13 = objc_msgSend_localizedLabelForAggType_(localeCopy, v10, v12, v11);
      v16 = objc_msgSend_caseInsensitiveCompare_(v13, v14, labelCopy, v15);

      if (!v16)
      {
        break;
      }

      if (++v12 == 34)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LOBYTE(v12) = -1;
  }

  return v12;
}

- (unsigned)aggregateTypeForAggregateLabel:(id)label
{
  labelCopy = label;
  v8 = objc_msgSend_locale(self, v5, v6, v7);
  v10 = objc_msgSend_aggregateTypeForAggregateLabel_locale_(TSTGroupBy, v9, labelCopy, v8);

  return v10;
}

- (id)labelForCategoryRef:(id)ref
{
  refCopy = ref;
  v7 = objc_msgSend_aggregateLabelForCategoryRef_(self, v5, refCopy, v6);
  v10 = objc_msgSend_columnNameForCategoryRef_(self, v8, refCopy, v9);
  if (objc_msgSend_length(v10, v11, v12, v13))
  {
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%@: %@", v15, v10, v7);
  }

  else
  {
    v16 = v7;
  }

  v17 = v16;

  return v17;
}

- (id)groupValueHierarchyStringForCategoryRef:(id)ref forHostCellRef:(const TSCECellRef *)cellRef namingContext:(id)context
{
  refCopy = ref;
  contextCopy = context;
  v56[0] = objc_msgSend_relativeGroupUid(refCopy, v10, v11, v12);
  v56[1] = v13;
  v16 = objc_msgSend_absoluteGroupUid(refCopy, v13, v14, v15);
  v18 = v17;
  if (objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v17, v56, v19))
  {
    v23 = objc_msgSend_calcEngine(self, v20, v21, v22);
    v25 = objc_msgSend_resolverForTableUID_(v23, v24, cellRef->_tableUID._lower, cellRef->_tableUID._upper);

    v55[0] = objc_msgSend_rowUIDForRowIndex_(v25, v26, cellRef->coordinate.row, v27);
    v55[1] = v28;
    v29 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(self, v28, v56, v55);
    if (v29 | v30)
    {
      v16 = v29;
      v18 = v30;
    }

    v31 = @"<Relative Ancestor>";
  }

  else
  {
    v31 = &stru_2834BADA0;
  }

  v32 = objc_msgSend_groupNodeForGroupUid_(self, v20, v16, v18);
  if (v32 || (v48 = objc_msgSend_absoluteGroupUid(refCopy, v33, v34, v35), v48 | v49) && (v52 = objc_msgSend_absoluteGroupUid(refCopy, v49, v50, v51), objc_msgSend_groupNodeForGroupUid_(self, v53, v52, v53), (v32 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v36 = v32;
    for (i = objc_msgSend_groupLevel(v32, v33, v34, v35); i > objc_msgSend_groupLevel(refCopy, v38, v39, v40); i = objc_msgSend_groupLevel(v44, v45, v46, v47))
    {
      v44 = objc_msgSend_parentNode(v36, v41, v42, v43);

      v36 = v44;
    }

    v31 = objc_msgSend_groupValueHierarchyStringWithDelimiterString_namingContext_(v36, v41, 0, contextCopy);
  }

  return v31;
}

- (id)groupNodeForGroupValueHierarchyFromSplitter:(id)splitter startAtComponent:(unint64_t)component startAtWord:(unint64_t)word preserveFlags:(TSUPreserveFlags *)flags
{
  splitterCopy = splitter;
  v13 = objc_msgSend_componentAtIndex_(splitterCopy, v11, component, v12);
  v17 = objc_msgSend_numComponents(splitterCopy, v14, v15, v16);
  if (!v13 || (v21 = v17, objc_msgSend_numWords(v13, v18, v19, v20) <= word) || v21 == component)
  {
    v23 = self->_groupRoot;
  }

  else
  {
    v23 = objc_msgSend_findGroupNodeForDisplayValuesFromSplitter_atLevel_startAtComponent_startAtWord_preserveFlags_(self->_groupRoot, v22, splitterCopy, (v21 - component), component, word, flags);
  }

  v24 = v23;

  return v24;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)bodyRowUidsForCategoryRef:(SEL)ref atRowUid:(id)uid ordered:(const TSKUIDStruct *)ordered
{
  v6 = a6;
  uidCopy = uid;
  v14 = objc_msgSend_tableInfo(self, v11, v12, v13);
  v18 = objc_msgSend_categoryOrder(v14, v15, v16, v17);
  v48 = objc_msgSend_relativeGroupUid(uidCopy, v19, v20, v21);
  v49 = v22;
  if (*ordered == 0)
  {
    v25 = objc_msgSend_absoluteGroupUid(uidCopy, v22, v23, v24);
  }

  else
  {
    v25 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(self, v22, &v48, ordered);
  }

  v48 = v25;
  v49 = v26;
  if (v25 | v26 && (objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v26, &v48, v28) & 1) == 0)
  {
    objc_msgSend_groupNodeForGroupUid_(self, v26, v48, v49);
  }

  else
  {
    v48 = objc_msgSend_absoluteGroupUid(uidCopy, v26, v27, v28);
    v49 = v29;
    objc_msgSend_groupNodeForGroupUid_(self, v29, v48, v29);
  }
  v30 = ;
  v41 = 0;
  v42 = &v41;
  v43 = 0x4812000000;
  v44 = sub_22135AFA8;
  v45 = sub_22135AFCC;
  *__p = 0u;
  v47 = 0u;
  v34 = objc_msgSend_groupLevel(uidCopy, v31, v32, v33);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_22135AFE4;
  v40[3] = &unk_278462E18;
  v40[4] = &v41;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v30, v35, v34, v40);
  if (v6)
  {
    if (v18)
    {
      objc_msgSend_orderedRowUidsFromUids_(v18, v36, (v42 + 6), v37);
    }

    else
    {
      retstr->__begin_ = 0;
      retstr->__end_ = 0;
      retstr->__cap_ = 0;
    }
  }

  else
  {
    v38 = v42;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    retstr->__begin_ = 0;
    sub_221086EBC(retstr, v38[6], v38[7], (v38[7] - v38[6]) >> 4);
  }

  _Block_object_dispose(&v41, 8);
  if (__p[1])
  {
    *&v47 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (vector<TSCEValue)valuesForCategoryRef:(TSTGroupBy *)self outError:(SEL)error
{
  v6[0] = 0;
  v6[1] = 0;
  return objc_msgSend_valuesForCategoryRef_atRowUid_outError_(self, error, a4, v6, a5);
}

- (vector<TSCEValue)valuesForCategoryRef:(TSTGroupBy *)self atRowUid:(SEL)uid outError:(id)error
{
  v7 = objc_msgSend_valueGridForCategoryRef_atRowUid_hidingActionMask_outError_(self, uid, error, a5, 0, a6);
  v12 = v7;
  if (v7)
  {
    objc_msgSend_allValues(v7, v8, v9, v10);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->var0 = 0;
    retstr->var1 = 0;
  }

  return result;
}

- (vector<TSCEValue)valuesForCategoryRef:(TSTGroupBy *)self atRowUid:(SEL)uid hidingActionMask:(id)mask outError:(const TSKUIDStruct *)error
{
  v8 = objc_msgSend_valueGridForCategoryRef_atRowUid_hidingActionMask_outError_(self, uid, mask, error, a6, a7);
  v13 = v8;
  if (v8)
  {
    objc_msgSend_allValues(v8, v9, v10, v11);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->var0 = 0;
    retstr->var1 = 0;
  }

  return result;
}

- (id)valueGridForCategoryRef:(id)ref outError:(id *)error
{
  v6[0] = 0;
  v6[1] = 0;
  v4 = objc_msgSend_valueGridForCategoryRef_atRowUid_outError_(self, a2, ref, v6, error);

  return v4;
}

- (id)valueGridForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid outError:(id *)error
{
  v5 = objc_msgSend_valueGridForCategoryRef_atRowUid_hidingActionMask_outError_(self, a2, ref, uid, 0, error);

  return v5;
}

- (id)valueGridForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid hidingActionMask:(unsigned __int8)mask outError:(id *)error
{
  maskCopy = mask;
  v439 = *MEMORY[0x277D85DE8];
  refCopy = ref;
  v407 = objc_opt_new();
  v434 = objc_msgSend_relativeGroupUid(refCopy, v8, v9, v10);
  v435 = v11;
  if (*uid == 0)
  {
    v14 = objc_msgSend_absoluteGroupUid(refCopy, v11, v12, v13);
  }

  else
  {
    v14 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(self, v11, &v434, uid);
  }

  v434 = v14;
  v435 = v15;
  if (!(v14 | v15) || objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v15, &v434, v17))
  {
    v434 = objc_msgSend_absoluteGroupUid(refCopy, v15, v16, v17);
    v435 = v15;
  }

  v412 = objc_msgSend_type(refCopy, v15, v16, v17);
  if (v412 == 11)
  {
    v21 = objc_msgSend_columnUid(refCopy, v18, v19, v20);
    v23 = v22;
    v26 = objc_msgSend_groupLevel(refCopy, v22, v24, v25);
    v412 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(self, v27, v21, v23, v26);
  }

  if (v412 == 240)
  {
    *error = objc_msgSend_missingRunningTotalInFieldError(TSCEError, v18, v19, v20);
    v28 = v407;
    goto LABEL_16;
  }

  if (v412 != 12)
  {
    if (!v412)
    {
      v417._tskFormat = 0;
      objc_msgSend_setEmptyValueAtCoord_(v407, v18, &v417, v20);
      v28 = v407;
LABEL_16:
      v54 = v28;
      goto LABEL_117;
    }

    v396 = objc_msgSend_tableModel(self, v18, v19, v20);
    v58 = objc_msgSend_tableInfo(self, v55, v56, v57);
    v411 = v58;
    v393 = objc_opt_new();
    v62 = objc_msgSend_groupLevel(refCopy, v59, v60, v61);
    if (objc_msgSend_refersToPivotTable(refCopy, v63, v64, v65))
    {
      v69 = objc_msgSend_pivotTableUid(refCopy, v66, v67, v68);
      v71 = v70;
      v74 = objc_msgSend_calcEngine(self, v70, v72, v73);
      v405 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v75, v69, v71, v74);

      v79 = objc_msgSend_pivotOwner(v405, v76, v77, v78);
      v406 = objc_msgSend_groupBySet(v79, v80, v81, v82);

      if (v62 == 253)
      {
        if (objc_msgSend_refersToPivotTableRows(refCopy, v66, v83, v68))
        {
          LOBYTE(v62) = objc_msgSend_numberOfRowLevels(v405, v84, v85, v86);
        }

        else
        {
          if (!objc_msgSend_refersToPivotTableColumns(refCopy, v84, v85, v86))
          {
            LOBYTE(v62) = -3;
            goto LABEL_25;
          }

          LOBYTE(v62) = objc_msgSend_numberOfColumnLevels(v405, v66, v167, v168);
        }
      }
    }

    else
    {
      v405 = 0;
      v406 = 0;
    }

    if (!v62)
    {
      objc_msgSend_addObject_(v393, v66, self->_groupRoot, v68);
      goto LABEL_27;
    }

LABEL_25:
    v90 = objc_msgSend_groupNodeForGroupUid_(self, v66, v434, v435);
    v432[0] = MEMORY[0x277D85DD0];
    v432[1] = 3221225472;
    v432[2] = sub_22135CFF4;
    v432[3] = &unk_27845FA48;
    v433 = v393;
    objc_msgSend_enumerateGroupsAtLevel_withBlock_(v90, v91, v62, v432);

    v58 = v411;
LABEL_27:
    if (v412 <= 0x21 && ((1 << v412) & 0x3FC194400) != 0)
    {
      memset(&v417, 0, 24);
      v428 = 0u;
      v429 = 0u;
      v430 = 0u;
      v431 = 0u;
      v92 = v393;
      v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v428, v438, 16);
      if (v97)
      {
        v98 = *v429;
        do
        {
          for (i = 0; i != v97; ++i)
          {
            if (*v429 != v98)
            {
              objc_enumerationMutation(v92);
            }

            v100 = *(*(&v428 + 1) + 8 * i);
            if (v100)
            {
              objc_msgSend_rowUidsAsVector(v100, v94, v95, v96);
              v101 = *__p;
            }

            else
            {
              v427 = 0;
              v101 = 0uLL;
              *__p = 0u;
            }

            sub_22133594C(&v417, *&v417._formatType, v101, *(&v101 + 1), (*(&v101 + 1) - v101) >> 4);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v94, &v428, v438, 16);
        }

        while (v97);
      }

      __p[0] = 0;
      __p[1] = 0;
      v427 = 0;
      v103 = *&v417._formatType - v417._tskFormat;
      v104 = v411;
      if (v411 && v103 >= 0x11)
      {
        v105 = objc_msgSend_categoryOrder(v411, v417._tskFormat, *&v417._formatType, v102);
        v108 = v105;
        if (v105)
        {
          objc_msgSend_orderedRowUidsFromUids_(v105, v106, &v417, v107);
        }

        else
        {
          v424 = 0uLL;
          v425 = 0;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = v424;
        v427 = v425;
        v425 = 0;
        v424 = 0uLL;

        v104 = v411;
      }

      else
      {
        sub_2210BD068(__p, v417._tskFormat, *&v417._formatType, v103 >> 4);
        if (!v411)
        {
          v112 = objc_msgSend_columnRowUIDMap(v396, v109, v110, v111);
          v116 = objc_msgSend_columnUid(refCopy, v113, v114, v115);
          v118 = objc_msgSend_columnIndexForColumnUID_(v112, v117, v116, v117);

          goto LABEL_52;
        }
      }

      v122 = objc_msgSend_columnUid(refCopy, v109, v110, v111);
      v118 = objc_msgSend_columnIndexForColumnUID_(v104, v123, v122, v123);
LABEL_52:
      v124 = __p[0];
      v125 = __p[1];
      if (__p[0] == __p[1])
      {
        v126 = 0;
      }

      else
      {
        v126 = 0;
        v127 = v118 << 32;
        do
        {
          if (v411)
          {
            v128 = objc_msgSend_rowIndexForRowUID_(v411, v119, *v124, v124[1]);
            v423 = v126;
            v129 = &v423;
            RichTextAttributesIfPlainText = objc_msgSend_getValue_atCellID_fetchRichTextAttributesIfPlainText_(v411, v130, &v423, v127 | v128, 0);
          }

          else
          {
            v132 = objc_msgSend_columnRowUIDMap(v396, v119, v120, v121);
            v128 = objc_msgSend_rowIndexForRowUID_(v132, v133, *v124, v124[1]);

            v422 = v126;
            v129 = &v422;
            RichTextAttributesIfPlainText = objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(v396, v134, &v422, v127 | v128, 0);
          }

          v135 = RichTextAttributesIfPlainText;
          v136 = *v129;

          if (v135)
          {
            v140 = objc_msgSend_nilValue(TSCENilValue, v137, v138, v139);

            v126 = v140;
          }

          else
          {
            v126 = v136;
          }

          *&v424 = __PAIR64__(v128, v118);
          objc_msgSend_setValue_atCoord_(v407, v137, v126, &v424);
          v124 += 2;
        }

        while (v124 != v125);
      }

      if (v412 == 10)
      {
        v141 = v407;
        goto LABEL_110;
      }

      v142 = objc_msgSend_calcEngine(self, v119, v120, v121);
      v146 = v142;
      v147 = v412 < 0x22;
      if (v412 > 19)
      {
        v414 = v142;
        v158 = 0x2A803403AuLL >> v412;
        if ((v412 - 26) < 4)
        {
          *&v424 = objc_msgSend_tableUID(v396, v143, v144, v145);
          *(&v424 + 1) = v203;
          v149 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v203, v414, &v424, 0, 0);
          v204 = sub_22135D000(v412);
          v153 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v205, v204, v206);
          v210 = [TSCEDenseGrid alloc];
          if (v407)
          {
            objc_msgSend_allValues(v407, v207, v208, v209);
          }

          else
          {
            v424 = 0uLL;
            v425 = 0;
          }

          v214 = objc_msgSend_initWithValues_(v210, v207, &v424, v209);
          v436 = &v424;
          sub_22107C2C0(&v436);
          v217 = objc_msgSend_gridValue_(TSCEGridValue, v241, v214, v242);
          v243 = sub_22121D6B8(v149, v153, v217, ((v412 - 28) & 0xFA) == 0, v147 & v158);
          v146 = v414;
          v219 = sub_22121E03C(v243, v149);

          v141 = objc_opt_new();
          *&v424 = 0;
          objc_msgSend_setValue_atCoord_(v141, v244, v219, &v424);
        }

        else if ((v412 - 30) >= 4)
        {
          if (v412 != 20)
          {
            v141 = v407;
            v146 = v142;
            goto LABEL_109;
          }

          v146 = v142;
          *&v424 = objc_msgSend_tableUID(v396, v143, v144, v145);
          *(&v424 + 1) = v229;
          v149 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v229, v414, &v424, 0, 0);
          v230 = sub_22135D000(20);
          v153 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v231, v230, v232);
          v236 = [TSCEDenseGrid alloc];
          if (v407)
          {
            objc_msgSend_allValues(v407, v233, v234, v235);
          }

          else
          {
            v424 = 0uLL;
            v425 = 0;
          }

          v214 = objc_msgSend_initWithValues_(v236, v233, &v424, v235);
          v436 = &v424;
          sub_22107C2C0(&v436);
          v217 = objc_msgSend_gridValue_(TSCEGridValue, v254, v214, v255);
          v256 = sub_22121DF48(v149, v153, v217);
          v219 = sub_22121E03C(v256, v149);

          v141 = objc_opt_new();
          *&v424 = 0;
          objc_msgSend_setValue_atCoord_(v141, v257, v219, &v424);
        }

        else
        {
          *&v424 = objc_msgSend_tableUID(v396, v143, v144, v145);
          *(&v424 + 1) = v159;
          v149 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v159, v414, &v424, 0, 0);
          v160 = sub_22135D000(v412);
          v153 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v161, v160, v162);
          v166 = [TSCEDenseGrid alloc];
          if (v407)
          {
            objc_msgSend_allValues(v407, v163, v164, v165);
          }

          else
          {
            v424 = 0uLL;
            v425 = 0;
          }

          v214 = objc_msgSend_initWithValues_(v166, v163, &v424, v165);
          v436 = &v424;
          sub_22107C2C0(&v436);
          v217 = objc_msgSend_gridValue_(TSCEGridValue, v237, v214, v238);
          v239 = sub_22121D6F8(v149, v153, v217, ((v412 - 28) & 0xFA) == 0, v147 & v158);
          v146 = v414;
          v219 = sub_22121E03C(v239, v149);

          v141 = objc_opt_new();
          *&v424 = 0;
          objc_msgSend_setValue_atCoord_(v141, v240, v219, &v424);
        }
      }

      else
      {
        switch(v412)
        {
          case 0xE:
            *&v424 = objc_msgSend_tableUID(v396, v143, v144, v145);
            *(&v424 + 1) = v169;
            v149 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v169, v146, &v424, 0, 0);
            v153 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v170, 31, v171);
            v175 = [TSCEDenseGrid alloc];
            if (v407)
            {
              objc_msgSend_allValues(v407, v172, v173, v174);
            }

            else
            {
              v424 = 0uLL;
              v425 = 0;
            }

            v214 = objc_msgSend_initWithValues_(v175, v172, &v424, v174);
            v436 = &v424;
            sub_22107C2C0(&v436);
            v217 = objc_msgSend_gridValue_(TSCEGridValue, v215, v214, v216);
            v218 = sub_22121D9AC(v149, v153, v217);
            v219 = sub_22121E03C(v218, v149);

            v141 = objc_opt_new();
            *&v424 = 0;
            objc_msgSend_setValue_atCoord_(v141, v220, v219, &v424);
            break;
          case 0x10:
            *&v424 = objc_msgSend_tableUID(v396, v143, v144, v145);
            *(&v424 + 1) = v176;
            v149 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v176, v146, &v424, 0, 0);
            v153 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v177, 31, v178);
            v182 = [TSCEDenseGrid alloc];
            if (v407)
            {
              objc_msgSend_allValues(v407, v179, v180, v181);
            }

            else
            {
              v424 = 0uLL;
              v425 = 0;
            }

            v214 = objc_msgSend_initWithValues_(v182, v179, &v424, v181);
            v436 = &v424;
            sub_22107C2C0(&v436);
            v217 = objc_msgSend_gridValue_(TSCEGridValue, v225, v214, v226);
            v227 = sub_22121DBB4(v149, v153, v217);
            v219 = sub_22121E03C(v227, v149);

            v141 = objc_opt_new();
            *&v424 = 0;
            objc_msgSend_setValue_atCoord_(v141, v228, v219, &v424);
            break;
          case 0x13:
            *&v424 = objc_msgSend_tableUID(v396, v143, v144, v145);
            *(&v424 + 1) = v148;
            v149 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v148, v146, &v424, 0, 0);
            v150 = sub_22135D000(19);
            v153 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v151, v150, v152);
            v157 = [TSCEDenseGrid alloc];
            if (v407)
            {
              objc_msgSend_allValues(v407, v154, v155, v156);
            }

            else
            {
              v424 = 0uLL;
              v425 = 0;
            }

            v214 = objc_msgSend_initWithValues_(v157, v154, &v424, v156);
            v436 = &v424;
            sub_22107C2C0(&v436);
            v217 = objc_msgSend_gridValue_(TSCEGridValue, v221, v214, v222);
            v223 = sub_22121DE90(v149, v153, v217);
            v219 = sub_22121E03C(v223, v149);

            v141 = objc_opt_new();
            *&v424 = 0;
            objc_msgSend_setValue_atCoord_(v141, v224, v219, &v424);
            break;
          default:
            v141 = v407;
LABEL_109:

LABEL_110:
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (v417._tskFormat)
            {
              *&v417._formatType = v417._tskFormat;
              operator delete(v417._tskFormat);
            }

            v88 = 0;
LABEL_115:

            v407 = v141;
            goto LABEL_116;
        }
      }

      goto LABEL_109;
    }

    obj = v393;
    v408 = objc_msgSend_aggrIndexLevel(refCopy, v183, v184, v185);
    v404 = objc_msgSend_showAggregateName(refCopy, v186, v187, v188);
    if (objc_msgSend_isForPivotTable(self, v189, v190, v191))
    {
      if (!v405)
      {
        v403 = 0;
        v415 = 0;
        v400 = 0;
        v409 = 1;
LABEL_144:
        v420 = 0u;
        v421 = 0u;
        v418 = 0u;
        v419 = 0u;
        obja = obj;
        v275 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v271, &v418, v437, 16);
        if (!v275)
        {
          v88 = 0;
          goto LABEL_227;
        }

        v410 = 0;
        v88 = 0;
        v398 = *v419;
        while (1)
        {
          v276 = 0;
          v397 = v275;
          do
          {
            if (*v419 != v398)
            {
              objc_enumerationMutation(obja);
            }

            if (v409)
            {
              v277 = 0;
              v399 = v276;
              v278 = *(*(&v418 + 1) + 8 * v276);
              while (1)
              {
                v279 = v408 == 0xFFFF ? v277 : v408;
                if ((v412 - 7) < 2)
                {
                  break;
                }

                if (v412 == 9)
                {
                  if (v415)
                  {
                    objc_msgSend_groupValueCellValueForGroupBySet_aggIndex_appendAggregateName_(v278, v272, v406, v279, v404);
                  }

                  else
                  {
                    objc_msgSend_groupValueCellValue(v278, v272, v273, v274);
                  }

                  goto LABEL_157;
                }

                v417._tskFormat = objc_msgSend_columnUid(refCopy, v272, v273, v274);
                *&v417._formatType = v284;
                v286 = objc_msgSend_aggNodeForColumnUid_(v278, v284, &v417, v285);
                v417._tskFormat = objc_msgSend_formulaCoord(v286, v287, v288, v289);
                v292 = objc_msgSend_valueForFormulaCoord_(self, v290, &v417, v291);
                v296 = v292;
                if (v292)
                {
                  v297 = objc_msgSend_valueForType_(v292, v293, v412, v295);

                  if (!objc_msgSend_countRows(v296, v298, v299, v300) && objc_msgSend_isAPivotTable(v411, v301, v302, v303))
                  {
                    TSCEFormat::TSCEFormat(&v417, 260);
                    v306 = objc_msgSend_emptyCellValueWithFormat_(TSCEEmptyCellValue, v304, &v417, v305);

                    v88 = v296;
                    v297 = v306;
                    goto LABEL_173;
                  }
                }

                else
                {
                  v297 = objc_msgSend_nilValue(TSCENilValue, v293, v294, v295);
                }

                v88 = v296;
LABEL_173:

                v310 = objc_msgSend_summaryModel(v411, v307, v308, v309);
                v314 = v310;
                if (!v310)
                {
                  goto LABEL_195;
                }

                v315 = objc_msgSend_columnRowUIDMap(v310, v311, v312, v313);
                objc_msgSend_columnUid(refCopy, v316, v317, v318);
                objc_msgSend_groupUid(v278, v319, v320, v321);
                TSTMakeCellUID(&v417);
                v324 = objc_msgSend_cellIDForCellUID_(v315, v322, &v417, v323);
                v328 = objc_msgSend_nativeType(v297, v325, v326, v327);
                if (v328 > 4u)
                {
                  if (v328 == 5)
                  {
                    v333 = objc_msgSend_number(v297, v329, v330, v331);
                    LOBYTE(v417._tskFormat) = 0;
                    if (objc_msgSend_hasUnits(v333, v334, v335, v336) && !objc_msgSend_dimension(v333, v337, v338, v339))
                    {
                      v332 = objc_msgSend_explicitFormatOfKind_atModelCellCoord_currencyIsMostRecentlySet_(v314, v337, 4, v324, 0);
                    }

                    else
                    {
                      v340 = objc_msgSend_explicitFormatOfKind_atModelCellCoord_currencyIsMostRecentlySet_(v314, v337, 1, v324, &v417);
                      v342 = v340;
                      if (LOBYTE(v417._tskFormat) == 1)
                      {
                        v332 = objc_msgSend_explicitFormatOfKind_atModelCellCoord_currencyIsMostRecentlySet_(v314, v341, 2, v324, 0);

                        v346 = objc_msgSend_asCurrencyFormat(v332, v343, v344, v345);
                        v350 = objc_msgSend_currencyCode(v346, v347, v348, v349);

                        if (v350 || (objc_msgSend_asCustomFormatWrapper(v332, v351, v352, v353), v354 = objc_claimAutoreleasedReturnValue(), objc_msgSend_doubleRepresentation(v333, v355, v356, v357), objc_msgSend_currencyCodeForValue_(v354, v358, v359, v360), v350 = objc_claimAutoreleasedReturnValue(), v354, v350))
                        {
                          v361 = objc_msgSend_rawDecimalValue(v333, v351, v352, v353);
                          v364 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v362, v350, v363);
                          v366 = objc_msgSend_numberWithDecimal_baseUnit_(TSCENumberValue, v365, v361, v364);

                          v297 = v366;
                        }
                      }

                      else
                      {
                        v332 = v340;
                      }
                    }

                    goto LABEL_192;
                  }

                  if (v328 == 7)
                  {
                    v328 = 5;
                    goto LABEL_182;
                  }
                }

                else
                {
                  if (v328 == 2)
                  {
                    v328 = 6;
LABEL_182:
                    v332 = objc_msgSend_explicitFormatOfKind_atModelCellCoord_currencyIsMostRecentlySet_(v314, v329, v328, v324, 0);
LABEL_192:
                    if (v332)
                    {
                      TSCEFormat::TSCEFormat(&v416, v332, 1u);
                      TSCEFormat::TSCEFormat(&v417, &v416);
                      objc_msgSend_setFormat_(v297, v367, &v417, v368);
                    }

                    goto LABEL_194;
                  }

                  if (v328 == 3)
                  {
                    goto LABEL_182;
                  }
                }

LABEL_194:

LABEL_195:
                v88 = v297;
                LODWORD(v417._tskFormat) = 0;
                HIDWORD(v417._tskFormat) = v410 + v277;
                if (v415)
                {
                  if (objc_msgSend_refersToPivotTableRows(refCopy, v311, v312, v313))
                  {
                    v372 = objc_msgSend_groupUid(v278, v369, v370, v371);
                    v376 = objc_msgSend_rowIndexForRowUID_(v405, v373, v372, v373);
                    if (v277)
                    {
                      if (objc_msgSend_activeFlatteningDimension(v406, v311, v374, v375))
                      {
                        v377 = 0;
                      }

                      else
                      {
                        v377 = v277;
                      }

                      v376 += v377;
                    }

                    v378 = v403;
                    if (v403)
                    {
                      v379 = objc_msgSend_hidingActionForViewIndex_(v400, v311, v376, v375);
                      v380 = 0;
                      goto LABEL_212;
                    }

                    v380 = 0;
                  }

                  else if (objc_msgSend_refersToPivotTableColumns(refCopy, v369, v370, v371))
                  {
                    v383 = objc_msgSend_groupUid(v278, v311, v381, v382);
                    v380 = objc_msgSend_columnIndexForColumnUID_(v405, v384, v383, v384);
                    if (v277)
                    {
                      if (objc_msgSend_activeFlatteningDimension(v406, v311, v385, v386) == 1)
                      {
                        v387 = v277;
                      }

                      else
                      {
                        v387 = 0;
                      }

                      v380 += v387;
                    }

                    v378 = v403;
                    if (v403)
                    {
                      v379 = objc_msgSend_hidingActionForViewIndex_(v400, v311, v380, v386);
                      v376 = 0;
LABEL_212:
                      v378 = (v379 & maskCopy) != 0;
                    }

                    else
                    {
                      v376 = 0;
                    }
                  }

                  else
                  {
                    v376 = 0;
                    v380 = 0;
                    v378 = 0;
                  }

                  if (v376 != 0x7FFFFFFF && v380 != 0x7FFF)
                  {
                    LOWORD(v417._tskFormat) = v380;
                    HIDWORD(v417._tskFormat) = v376;
                  }

                  if (v378)
                  {
                    goto LABEL_221;
                  }
                }

                objc_msgSend_setValue_atCoord_(v407, v311, v297, &v417);
LABEL_221:

                if (v409 == ++v277)
                {
                  v410 += v277;
                  v275 = v397;
                  v276 = v399;
                  goto LABEL_223;
                }
              }

              if (v415)
              {
                objc_msgSend_groupValueHierarchyForChart_groupBySet_aggIndex_appendAggregateName_(v278, v272, v412 == 7, v406, v279, v404);
              }

              else
              {
                objc_msgSend_groupValueHierarchyForChart_(v278, v272, v412 == 7, v274);
              }

              v280 = LABEL_157:;
              v286 = v280;
              if (v280)
              {
                objc_msgSend_tsceValue(v280, v281, v282, v283);
              }

              else
              {
                objc_msgSend_nilValue(TSCENilValue, v281, v282, v283);
              }
              v297 = ;
              goto LABEL_173;
            }

LABEL_223:
            ++v276;
          }

          while (v276 != v275);
          v275 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v272, &v418, v437, 16);
          if (!v275)
          {
LABEL_227:

            v141 = v407;
            goto LABEL_115;
          }
        }
      }

      if (objc_msgSend_refersToPivotTableRows(refCopy, v192, v193, v194))
      {
        v198 = objc_msgSend_pivotOrder(v405, v195, v196, v197);
        v200 = objc_msgSend_sortedArrayFromArray_forDimension_(v198, v199, obj, 0);

        if (v408 == 0xFFFF && !objc_msgSend_activeFlatteningDimension(v406, v192, v193, v194))
        {
          v388 = objc_msgSend_aggregates(v406, v192, v193, v194);
          v392 = objc_msgSend_count(v388, v389, v390, v391);

          v201 = v392;
        }

        else
        {
          v201 = 1;
        }

        v409 = v201;
        if (v404)
        {
          v202 = objc_msgSend_activeFlatteningDimension(v406, v192, v193, v194) == 0;
LABEL_132:
          v404 = v202;
          goto LABEL_134;
        }

        goto LABEL_133;
      }

      if (objc_msgSend_refersToPivotTableColumns(refCopy, v195, v196, v197))
      {
        v246 = objc_msgSend_pivotOrder(v405, v192, v193, v194);
        v200 = objc_msgSend_sortedArrayFromArray_forDimension_(v246, v247, obj, 1);

        if (v408 == 0xFFFF && objc_msgSend_activeFlatteningDimension(v406, v192, v193, v194) == 1)
        {
          v248 = objc_msgSend_aggregates(v406, v192, v193, v194);
          v252 = objc_msgSend_count(v248, v249, v250, v251);

          v253 = v252;
        }

        else
        {
          v253 = 1;
        }

        v409 = v253;
        if (v404)
        {
          v202 = objc_msgSend_activeFlatteningDimension(v406, v192, v193, v194) != 0;
          goto LABEL_132;
        }

LABEL_133:
        v404 = 0;
        goto LABEL_134;
      }
    }

    else if (v58)
    {
      v211 = objc_msgSend_categoryOrder(v58, v192, v193, v194);
      v200 = objc_msgSend_sortedArrayFromArray_(v211, v212, obj, v213);

      v409 = 1;
LABEL_134:
      obj = v200;
      goto LABEL_135;
    }

    v409 = 1;
LABEL_135:
    v400 = 0;
    v403 = 0;
    v415 = v405 != 0;
    if (!maskCopy || !v405)
    {
      goto LABEL_144;
    }

    if (objc_msgSend_refersToPivotTableRows(refCopy, v192, v193, v194))
    {
      v261 = objc_msgSend_hiddenStates(v405, v258, v259, v260);
      v400 = objc_msgSend_rowHiddenStateExtent(v261, v262, v263, v264);
    }

    else
    {
      if (!objc_msgSend_refersToPivotTableColumns(refCopy, v258, v259, v260))
      {
        v400 = 0;
        goto LABEL_143;
      }

      v261 = objc_msgSend_hiddenStates(v405, v265, v266, v267);
      v400 = objc_msgSend_columnHiddenStateExtent(v261, v268, v269, v270);
    }

LABEL_143:
    v403 = 1;
    v415 = 1;
    goto LABEL_144;
  }

  v29 = objc_msgSend_columnUid(refCopy, v18, v19, v20);
  v31 = v30;
  v34 = objc_msgSend_groupLevel(refCopy, v30, v32, v33);
  v36 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(self, v35, v29, v31, v34);
  v40 = objc_msgSend_locale(self, v37, v38, v39);
  v396 = objc_msgSend_localizedLabelForAggType_(v40, v41, v36, v42);

  v45 = objc_msgSend_columnNameForCategoryRef_(self, v43, refCopy, v44);
  v411 = v45;
  if (objc_msgSend_length(v45, v46, v47, v48))
  {
    v51 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v49, @"%@: %@", v50, v45, v396);
  }

  else
  {
    v51 = v396;
  }

  v87 = v51;
  v88 = objc_msgSend_stringValue_(TSCEStringValue, v52, v51, v53);
  v405 = v87;
  v417._tskFormat = 0;
  objc_msgSend_setValue_atCoord_(v407, v89, v88, &v417);
LABEL_116:

  v54 = v407;
LABEL_117:

  return v54;
}

- (unint64_t)countOfValuesForCategoryRef:(id)ref
{
  v10 = 0;
  v3 = objc_msgSend_valueGridForCategoryRef_outError_(self, a2, ref, &v10);
  v7 = v10;
  v8 = 0;
  if (!v7)
  {
    v8 = objc_msgSend_count(v3, v4, v5, v6);
  }

  return v8;
}

- (vector<TSCECellRef,)cellRefsForCategoryRef:(TSTGroupBy *)self atRowUid:(SEL)uid ordered:(id)ordered
{
  v6 = a6;
  v138 = *MEMORY[0x277D85DE8];
  __p = 0;
  v135 = 0;
  v136 = 0;
  orderedCopy = ordered;
  v132 = objc_msgSend_relativeGroupUid(orderedCopy, v8, v9, v10);
  v133 = v11;
  if (*a5 == 0)
  {
    v14 = objc_msgSend_absoluteGroupUid(orderedCopy, v11, v12, v13);
  }

  else
  {
    v14 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(self, v11, &v132, a5);
  }

  v132 = v14;
  v133 = v15;
  if (!(v14 | v15) || objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v15, &v132, v17))
  {
    v132 = objc_msgSend_absoluteGroupUid(orderedCopy, v15, v16, v17);
    v133 = v15;
  }

  v21 = objc_msgSend_type(orderedCopy, v15, v16, v17);
  if (v21 == 11)
  {
    v22 = objc_msgSend_columnUid(orderedCopy, v18, v19, v20);
    v24 = v23;
    v27 = objc_msgSend_groupLevel(orderedCopy, v23, v25, v26);
    v21 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(self, v28, v22, v24, v27);
  }

  if (v21 == 10)
  {
    v123 = objc_msgSend_tableInfo(self, v18, v19, v20);
    v32 = objc_msgSend_tableUID(v123, v29, v30, v31);
    v34 = v33;
    v37 = objc_msgSend_translator(v123, v33, v35, v36);
    v41 = objc_msgSend_columnUid(orderedCopy, v38, v39, v40);
    v43 = objc_msgSend_baseColumnIndexForColumnUID_(v37, v42, v41, v42);

    objc_msgSend_bodyRowUidsForCategoryRef_atRowUid_ordered_(self, v44, orderedCopy, a5, v6);
    v48 = *(&v130 + 1);
    v49 = v130;
    if (v130 != *(&v130 + 1))
    {
      do
      {
        v50 = objc_msgSend_translator(v123, v45, v46, v47);
        v52 = objc_msgSend_baseRowIndexForRowUID_(v50, v51, *v49, v49[1]);

        *&v128 = (v43 << 32) | v52;
        *(&v128 + 1) = v32;
        v129 = v34;
        sub_22120F2F4(&__p, &v128);
        v49 += 2;
      }

      while (v49 != v48);
      v49 = v130;
    }

    if (v49)
    {
      *(&v130 + 1) = v49;
      operator delete(v49);
    }
  }

  else
  {
    v123 = objc_msgSend_groupNodeForGroupUid_(self, v18, v132, v133);
    *&v130 = objc_msgSend_columnUid(orderedCopy, v53, v54, v55);
    *(&v130 + 1) = v56;
    v119 = objc_msgSend_aggNodeForColumnUid_(v123, v56, &v130, v57);
    if (v119)
    {
      v61 = objc_msgSend_formulaCoord(v119, v58, v59, v60);
      v65 = objc_msgSend_groupByUid(self, v62, v63, v64);
      *&v130 = v61;
      *(&v130 + 1) = v65;
      v131 = v66;
      sub_22120F2F4(&__p, &v130);
    }

    if (v21 <= 0xC && ((1 << v21) & 0x1380) != 0)
    {
      v67 = objc_msgSend_tableInfo(self, v58, v59, v60);
      v74 = objc_msgSend_numberOfHeaderRows(v67, v68, v69, v70);
      if (v74)
      {
        v75 = objc_msgSend_tableUID(v67, v71, v72, v73);
        v77 = v76;
        v80 = objc_msgSend_translator(v67, v76, v78, v79);
        v84 = objc_msgSend_columnUid(orderedCopy, v81, v82, v83);
        v86 = objc_msgSend_baseColumnIndexForColumnUID_(v80, v85, v84, v85);

        v87 = v86 << 32;
        v88 = v74;
        v89 = v74;
        do
        {
          *&v130 = v87;
          *(&v130 + 1) = v75;
          v131 = v77;
          sub_22120F2F4(&__p, &v130);
          ++v87;
          --v89;
        }

        while (v89);
        objc_msgSend_groupingColumns(self, v90, v91, v92);
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v93 = v125 = 0u;
        v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, &v124, v137, 16);
        if (v98)
        {
          v99 = *v125;
          do
          {
            for (i = 0; i != v98; ++i)
            {
              if (*v125 != v99)
              {
                objc_enumerationMutation(v93);
              }

              v101 = *(*(&v124 + 1) + 8 * i);
              v102 = objc_msgSend_translator(v67, v95, v96, v97);
              v106 = objc_msgSend_columnUid(v101, v103, v104, v105);
              LOWORD(v101) = objc_msgSend_baseColumnIndexForColumnUID_(v102, v107, v106, v107);

              v108 = v101 << 32;
              v109 = v88;
              do
              {
                *&v130 = v108;
                *(&v130 + 1) = v75;
                v131 = v77;
                sub_22120F2F4(&__p, &v130);
                ++v108;
                --v109;
              }

              while (v109);
            }

            v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v95, &v124, v137, 16);
          }

          while (v98);
        }
      }
    }
  }

  if (objc_msgSend_type(orderedCopy, v110, v111, v112) == 11 || objc_msgSend_type(orderedCopy, v113, v114, v115) == 12)
  {
    v116 = objc_msgSend_groupByUid(self, v113, v114, v115);
    *&v130 = self->_indirectAggTypeChangeFormulaCoord;
    *(&v130 + 1) = v116;
    v131 = v117;
    sub_22120F2F4(&__p, &v130);
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  sub_22120FC6C(retstr, __p, v135, 0xAAAAAAAAAAAAAAABLL * ((v135 - __p) >> 3));
  if (__p)
  {
    v135 = __p;
    operator delete(__p);
  }

  return result;
}

- (vector<TSCECategoryRef)categoryRefsForSpanningCategoryRef:(TSTGroupBy *)self
{
  v6 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x4812000000;
  v29 = sub_22135D830;
  v30 = sub_22135D854;
  v31 = &unk_22188E88F;
  memset(v32, 0, sizeof(v32));
  if (objc_msgSend_isSpanningCategoryRef_(self, v7, v6, v8))
  {
    v12 = objc_msgSend_absoluteGroupUid(v6, v9, v10, v11);
    v14 = objc_msgSend_groupNodeForGroupUid_(self, v13, v12, v13);
    v18 = objc_msgSend_groupLevel(v6, v15, v16, v17);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_22135D880;
    v22[3] = &unk_278463048;
    v25 = v18;
    v23 = v6;
    v24 = &v26;
    objc_msgSend_enumerateGroupsAtLevel_withBlock_(v14, v19, v18, v22);
  }

  v20 = v27;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  sub_2211FECD0(retstr, v20[6], v20[7], (v20[7] - v20[6]) >> 3);
  _Block_object_dispose(&v26, 8);
  v33 = v32;
  sub_22107C2C0(&v33);

  return result;
}

- (id)uidRectRefForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid
{
  refCopy = ref;
  v10 = objc_msgSend_type(refCopy, v7, v8, v9);
  v14 = objc_msgSend_groupLevel(refCopy, v11, v12, v13);
  v167 = objc_msgSend_relativeGroupUid(refCopy, v15, v16, v17);
  v168 = v18;
  if (*uid == 0)
  {
    v21 = objc_msgSend_absoluteGroupUid(refCopy, v18, v19, v20);
  }

  else
  {
    v21 = objc_msgSend_resolveRelativeAncestorUid_atRowUid_(self, v18, &v167, uid);
  }

  v167 = v21;
  v168 = v22;
  if (!(v21 | v22) || objc_msgSend_isRelativeAncestorGroupUid_(TSTGroupBy, v22, &v167, v24))
  {
    v167 = objc_msgSend_absoluteGroupUid(refCopy, v22, v23, v24);
    v168 = v22;
  }

  if (objc_msgSend_refersToPivotTable(refCopy, v22, v23, v24))
  {
    v28 = objc_msgSend_pivotTableUid(refCopy, v25, v26, v27);
    v30 = v29;
    v33 = objc_msgSend_calcEngine(self, v29, v31, v32);
    v35 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v34, v28, v30, v33);

    if (v14 == 253)
    {
      if (objc_msgSend_refersToPivotTableRows(refCopy, v36, v37, v38))
      {
        LOBYTE(v14) = objc_msgSend_numberOfRowLevels(v35, v39, v40, v41);
      }

      else if (objc_msgSend_refersToPivotTableColumns(refCopy, v39, v40, v41))
      {
        LOBYTE(v14) = objc_msgSend_numberOfColumnLevels(v35, v117, v118, v119);
      }

      else
      {
        LOBYTE(v14) = -3;
      }
    }
  }

  else
  {
    v35 = 0;
  }

  v42 = objc_opt_new();
  v46 = v42;
  v166 = 0uLL;
  if (v10 <= 9)
  {
    if ((v10 - 7) >= 3)
    {
      goto LABEL_49;
    }

LABEL_19:
    v47 = objc_msgSend_groupNodeForGroupUid_(self, v43, v167, v168);
    if (v35)
    {
      v59 = objc_msgSend_pivotOwner(v35, v56, v57, v58);
      v51 = objc_msgSend_groupBySet(v59, v60, v61, v62);

      v66 = objc_msgSend_aggrIndexLevel(refCopy, v63, v64, v65);
      if (objc_msgSend_refersToPivotTableRows(refCopy, v67, v68, v69))
      {
        if (v66 == 0xFFFF && !objc_msgSend_activeFlatteningDimension(v51, v70, v71, v72))
        {
LABEL_30:
          v145 = objc_msgSend_aggregates(v51, v73, v74, v75);
          v85 = objc_msgSend_count(v145, v82, v83, v84);

LABEL_32:
          v158[0] = MEMORY[0x277D85DD0];
          v158[1] = 3221225472;
          v158[2] = sub_22135E40C;
          v158[3] = &unk_278463070;
          v160 = v85;
          v161 = v66;
          v159 = v46;
          objc_msgSend_enumerateGroupsAtLevel_withBlock_(v47, v86, v14, v158);

          goto LABEL_34;
        }
      }

      else
      {
        v77 = objc_msgSend_refersToPivotTableColumns(refCopy, v70, v71, v72);
        if (v66 == 0xFFFF)
        {
          v81 = v77;
        }

        else
        {
          v81 = 0;
        }

        if (v81 == 1 && objc_msgSend_activeFlatteningDimension(v51, v78, v79, v80) == 1)
        {
          goto LABEL_30;
        }
      }

      v85 = 1;
      goto LABEL_32;
    }

    v162[0] = MEMORY[0x277D85DD0];
    v162[1] = 3221225472;
    v162[2] = sub_22135E39C;
    v162[3] = &unk_27845FA48;
    v163 = v46;
    objc_msgSend_enumerateGroupsAtLevel_withBlock_(v47, v76, v14, v162);
    v51 = v163;
LABEL_34:

    goto LABEL_35;
  }

  switch(v10)
  {
    case 10:
      v47 = objc_msgSend_groupNodeForGroupUid_(self, v43, v167, v168);
      v164[0] = MEMORY[0x277D85DD0];
      v164[1] = 3221225472;
      v164[2] = sub_22135E304;
      v164[3] = &unk_27845FA48;
      v165 = v46;
      objc_msgSend_enumerateGroupsAtLevel_withBlock_(v47, v87, v14, v164);
      v51 = v165;
      goto LABEL_34;
    case 11:
      goto LABEL_19;
    case 12:
      v47 = objc_msgSend_tableInfo(self, v43, v44, v45);
      v51 = objc_msgSend_translator(v47, v48, v49, v50);
      v54 = objc_msgSend_rowUIDForViewRowIndex_(v51, v52, 0, v53);
      objc_msgSend_addUUID_(v46, v55, v54, v55);
      goto LABEL_34;
  }

LABEL_49:
  objc_msgSend_addUUID_(v42, v43, v167, v168);
LABEL_35:
  if (v35)
  {
    *__p = 0u;
    memset(v157, 0, sizeof(v157));
    v91 = objc_msgSend_refersToPivotTableRows(refCopy, v88, v89, v90);
    v95 = MEMORY[0x277CCAA78];
    if (v91)
    {
      v149.origin = objc_msgSend_headerColumnRange(v35, v92, v93, v94);
      v149.size = v96;
      v97 = TSUCellRect::columns(&v149);
      v99 = objc_msgSend_indexSetWithIndexesInRange_(v95, v98, v97, v98);
      objc_msgSend_columnUIDsForColumnIndexes_(v35, v100, v99, v101);
      if (v46)
      {
        objc_msgSend_uuidsAsVector(v46, v102, v103, v104);
      }

      else
      {
        v146 = 0;
        v147 = 0;
        v148 = 0;
      }

      sub_2210BBBE8(&v149, &v153, &v146);
    }

    else
    {
      v149.origin = objc_msgSend_headerRowRange(v35, v92, v93, v94);
      v149.size = v105;
      v106 = TSUCellRect::rows(&v149);
      v99 = objc_msgSend_indexSetWithIndexesInRange_(v95, v107, v106, v107);
      objc_msgSend_rowUIDsForRowIndexes_(v35, v108, v99, v109);
      if (v46)
      {
        objc_msgSend_uuidsAsVector(v46, v110, v111, v112);
      }

      else
      {
        v146 = 0;
        v147 = 0;
        v148 = 0;
      }

      sub_2210BBBE8(&v149, &v146, &v153);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v149;
    v157[0] = v150;
    v149.size = 0;
    v150 = 0;
    v149.origin = 0;
    origin = v157[1];
    if (v157[1])
    {
      v157[2] = v157[1];
      operator delete(v157[1]);
      origin = v149.origin;
    }

    *&v157[1] = v151;
    v157[3] = v152;
    v152 = 0;
    v151 = 0uLL;
    if (origin)
    {
      v149.size = origin;
      operator delete(origin);
    }

    if (v146)
    {
      v147 = v146;
      operator delete(v146);
    }

    if (v153)
    {
      v154 = v153;
      operator delete(v153);
    }

    v121 = [TSTUIDRectRef alloc];
    v125 = objc_msgSend_calcEngine(self, v122, v123, v124);
    v149.origin = objc_msgSend_tableUID(v35, v126, v127, v128);
    v149.size = v129;
    v116 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v121, v129, v125, &v149, __p, 0);

    if (v157[1])
    {
      v157[2] = v157[1];
      operator delete(v157[1]);
    }

    v130 = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
LABEL_70:
      operator delete(v130);
    }
  }

  else
  {
    if ((v10 - 7) > 2)
    {
      *&v166 = objc_msgSend_columnUid(refCopy, v88, v89, v90);
      *(&v166 + 1) = v88;
    }

    else
    {
      strcpy(&v166, "category column");
    }

    if (!objc_msgSend_count(v46, v88, v89, v90) || v166 == 0)
    {
      v116 = 0;
      goto LABEL_71;
    }

    sub_221362600(&v149, 1uLL, &v166);
    if (v46)
    {
      objc_msgSend_uuidsAsVector(v46, v113, v114, v115);
    }

    else
    {
      v153 = 0;
      v154 = 0;
      v155 = 0;
    }

    sub_2210BBBE8(__p, &v149, &v153);
    if (v153)
    {
      v154 = v153;
      operator delete(v153);
    }

    v132 = [TSTUIDRectRef alloc];
    v136 = objc_msgSend_calcEngine(self, v133, v134, v135);
    v140 = objc_msgSend_tableModel(self, v137, v138, v139);
    v153 = objc_msgSend_tableUID(v140, v141, v142, v143);
    v154 = v144;
    v116 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v132, v144, v136, &v153, __p, 0);

    if (v157[1])
    {
      v157[2] = v157[1];
      operator delete(v157[1]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v130 = v149.origin;
    if (v149.origin)
    {
      v149.size = v149.origin;
      goto LABEL_70;
    }
  }

LABEL_71:

  return v116;
}

- (vector<TSCECategoryRef)expandSpanningCategoryRef:(TSTGroupBy *)self
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v10 = objc_msgSend_absoluteGroupUid(v6, v7, v8, v9);
  v12 = v11;
  v55 = objc_msgSend_tableInfo(self, v11, v13, v14);
  v56 = objc_msgSend_categoryOrder(v55, v15, v16, v17);
  v54 = objc_opt_new();
  v57 = objc_msgSend_groupNodeForGroupUid_(self, v18, v10, v12);
  v22 = objc_msgSend_groupLevel(v6, v19, v20, v21);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = sub_22135E804;
  v66[3] = &unk_27845FA48;
  v23 = v54;
  v67 = v23;
  objc_msgSend_enumerateGroupsAtLevel_withBlock_(v57, v24, v22, v66);
  objc_msgSend_sortedArrayFromArray_(v56, v25, v23, v26);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v27 = v63 = 0u;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v62, v68, 16);
  if (v29)
  {
    v30 = *v63;
    do
    {
      v31 = 0;
      do
      {
        if (*v63 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v62 + 1) + 8 * v31);
        v33 = [TSCECategoryRef alloc];
        v60[0] = objc_msgSend_groupByUid(v6, v34, v35, v36);
        v60[1] = v37;
        v59[0] = objc_msgSend_groupUid(v32, v37, v38, v39);
        v59[1] = v40;
        v58[0] = objc_msgSend_columnUid(v6, v40, v41, v42);
        v58[1] = v43;
        v46 = objc_msgSend_type(v6, v43, v44, v45);
        v50 = objc_msgSend_groupLevel(v6, v47, v48, v49);
        v61 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v33, v51, v60, v59, v58, v46, v50);
        sub_22135D934(retstr, &v61);

        ++v31;
      }

      while (v29 != v31);
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v52, &v62, v68, 16);
    }

    while (v29);
  }

  return result;
}

- (vector<TSCECategoryRef)captureCategoryRefsFromIterator:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning
{
  v6 = a6;
  spanningCopy = spanning;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_22135824C;
  v37 = sub_22135825C;
  v38 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13);
  v26 = 0;
  v27 = &v26;
  v28 = 0x4812000000;
  v29 = sub_22135D830;
  v30 = sub_22135D854;
  v31 = &unk_22188E88F;
  memset(v32, 0, sizeof(v32));
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = a5;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22135EA94;
  v20[3] = &unk_278463098;
  v20[4] = self;
  v20[5] = &v22;
  v21 = v6;
  v20[6] = &v33;
  v20[7] = &v26;
  objc_msgSend_iterateCellsUsingBlock_(spanningCopy, v14, v20, v15);
  v16 = v27;
  if (v6)
  {
    memset(v19, 0, sizeof(v19));
    sub_2211FECD0(v19, v27[6], v27[7], (v27[7] - v27[6]) >> 3);
    objc_msgSend_p_promoteSpanningReferences_withCaptured_atLevel_(self, v17, v19, v34[5], *(v23 + 24));
    v39 = v19;
    sub_22107C2C0(&v39);
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
    sub_2211FECD0(retstr, v16[6], v16[7], (v16[7] - v16[6]) >> 3);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  v22 = v32;
  sub_22107C2C0(&v22);
  _Block_object_dispose(&v33, 8);

  return result;
}

- (vector<TSCECategoryRef)promoteSpanningReferences:(TSTGroupBy *)self
{
  v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a3, a4, v4);
  var0 = a4->var0;
  var1 = a4->var1;
  if (a4->var0 == var1)
  {
    v55 = -1;
  }

  else
  {
    v53 = a4;
    v55 = -1;
    v54 = a4->var1;
    do
    {
      v10 = *var0;
      v14 = v10;
      if (v55 == 0xFF)
      {
        v55 = objc_msgSend_groupLevel(v10, v11, v12, v13);
      }

      v15 = objc_msgSend_absoluteGroupUid(v14, v11, v12, v13);
      v17 = v16;
      v18 = objc_msgSend_groupNodeForGroupUid_(self, v16, v15, v16);
      selfCopy = self;
      v23 = objc_msgSend_groupByUid(self, v20, v21, v22);
      v25 = v24;
      if (v23 == objc_msgSend_groupByUid(v14, v24, v26, v27) && v25 == v28)
      {
        if (v18)
        {
          v34 = objc_msgSend_parentNode(v18, v28, v29, v30);
          if (v34)
          {
            do
            {
              v57._lower = objc_msgSend_groupUid(v34, v31, v32, v33);
              v57._upper = v35;
              v36 = TSKUIDStruct::NSUUIDValue(&v57);
              v39 = objc_msgSend_objectForKeyedSubscript_(v7, v37, v36, v38);

              if (v39)
              {
                v42 = objc_msgSend_objectForKeyedSubscript_(v7, v40, v36, v41);
                objc_msgSend_addUUID_(v42, v43, v15, v17);
              }

              else
              {
                v44 = [TSCEMutableUIDSet alloc];
                v42 = objc_msgSend_initWithUUID_(v44, v45, v15, v17);
                objc_msgSend_setObject_forKeyedSubscript_(v7, v46, v42, v36);
              }

              v50 = objc_msgSend_parentNode(v34, v47, v48, v49);

              v34 = v50;
            }

            while (v50);
          }
        }
      }

      ++var0;
      self = selfCopy;
    }

    while (var0 != v54);
    var0 = v53->var0;
    var1 = v53->var1;
  }

  memset(v56, 0, sizeof(v56));
  sub_2211FECD0(v56, var0, var1, var1 - var0);
  objc_msgSend_p_promoteSpanningReferences_withCaptured_atLevel_(self, v51, v56, v7, v55);
  v57._lower = v56;
  sub_22107C2C0(&v57);

  return result;
}

- (vector<TSCECategoryRef)p_promoteSpanningReferences:(TSTGroupBy *)self withCaptured:(SEL)captured atLevel:(vector<TSCECategoryRef *)
{
  v120 = a6;
  v116 = retstr;
  v143 = *MEMORY[0x277D85DE8];
  v121 = a5;
  v124 = objc_msgSend_set(MEMORY[0x277CBEB58], v7, v8, v9);
  v123 = objc_msgSend_set(MEMORY[0x277CBEB58], v10, v11, v12);
  v116->var0 = 0;
  v116->var1 = 0;
  v116->var2 = 0;
  var0 = a4->var0;
  var1 = a4->var1;
  if (a4->var0 != var1)
  {
    do
    {
      v14 = *var0;
      v141 = 0;
      v18 = objc_msgSend_groupByUid(v14, v15, v16, v17);
      v20 = v19;
      if (v18 == objc_msgSend_groupByUid(self, v19, v21, v22) && v20 == v23)
      {
        v27 = objc_msgSend_absoluteGroupUid(v14, v23, v24, v25);
        v118 = objc_msgSend_groupNodeForGroupUid_(self, v28, v27, v28);
        v119 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30, v31);
        v38 = objc_msgSend_parentNode(v118, v32, v33, v34);
        if (v38)
        {
          while (1)
          {
            v132._lower = objc_msgSend_groupUid(v38, v35, v36, v37, v116);
            v132._upper = v39;
            v40 = TSKUIDStruct::NSUUIDValue(&v132);
            if (objc_msgSend_containsObject_(v124, v41, v40, v42))
            {
              break;
            }

            if ((objc_msgSend_containsObject_(v123, v43, v40, v44) & 1) == 0)
            {
              objc_msgSend_addObject_(v119, v45, v40, v47);
            }

            v48 = objc_msgSend_parentNode(v38, v45, v46, v47);

            v38 = v48;
            if (!v48)
            {
              goto LABEL_12;
            }
          }

          goto LABEL_29;
        }

LABEL_12:
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v49 = objc_msgSend_reverseObjectEnumerator(v119, v35, v36, v37, v116);
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v137, v142, 16);
        if (v51)
        {
          v52 = *v138;
LABEL_14:
          v53 = 0;
          while (1)
          {
            if (*v138 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v54 = *(*(&v137 + 1) + 8 * v53);
            v135 = 0;
            v136 = 0;
            v135 = TSKMakeUIDStructFromNSUUID();
            v136 = v55;
            v58 = objc_msgSend_tableInfo(self, v55, v56, v57);
            v62 = objc_msgSend_groupBy(v58, v59, v60, v61);
            v64 = objc_msgSend_groupNodeForGroupUid_(v62, v63, v135, v136);

            v132._lower = 0;
            v132._upper = &v132;
            v133 = 0x2020000000;
            v134 = 1;
            v128[0] = MEMORY[0x277D85DD0];
            v128[1] = 3221225472;
            v128[2] = sub_22135F6A8;
            v128[3] = &unk_2784630C0;
            v131 = &v132;
            v129 = v121;
            v130 = v54;
            objc_msgSend_enumerateGroupsAtLevel_withBlock_(v64, v65, v120, v128);
            v68 = *(v132._upper + 24);
            if (v68 == 1)
            {
              objc_msgSend_addObject_(v124, v66, v54, v67);
              v69 = [TSCECategoryRef alloc];
              v126 = objc_msgSend_groupByUid(v14, v70, v71, v72);
              v127 = v73;
              v125[0] = objc_msgSend_columnUid(v14, v73, v74, v75);
              v125[1] = v76;
              v79 = objc_msgSend_type(v14, v76, v77, v78);
              v83 = objc_msgSend_groupLevel(v14, v80, v81, v82);
              v85 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v69, v84, &v126, &v135, v125, v79, v83);
              v86 = v141;
              v141 = v85;
            }

            else
            {
              objc_msgSend_addObject_(v123, v66, v54, v67);
            }

            _Block_object_dispose(&v132, 8);
            if (v68)
            {
              break;
            }

            if (v51 == ++v53)
            {
              v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v87, &v137, v142, 16);
              if (v51)
              {
                goto LABEL_14;
              }

              break;
            }
          }
        }
      }

      v88 = objc_msgSend_absoluteGroupUid(v141, v23, v24, v25, v116);
      if (!(v88 | v89))
      {
        v92 = [TSCECategoryRef alloc];
        v132._lower = objc_msgSend_groupByUid(v14, v93, v94, v95);
        v132._upper = v96;
        v135 = objc_msgSend_absoluteGroupUid(v14, v96, v97, v98);
        v136 = v99;
        v126 = objc_msgSend_columnUid(v14, v99, v100, v101);
        v127 = v102;
        v105 = objc_msgSend_type(v14, v102, v103, v104);
        v109 = objc_msgSend_groupLevel(v14, v106, v107, v108);
        v111 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v92, v110, &v132, &v135, &v126, v105, v109);
        v112 = v141;
        v141 = v111;
      }

      v113 = objc_msgSend_absoluteGroupUid(v141, v89, v90, v91);
      if (v113 | v114)
      {
        sub_22135D934(v116, &v141);
      }

LABEL_29:

      ++var0;
    }

    while (var0 != var1);
  }

  return result;
}

- (vector<TSCECategoryRef)captureCategoryLabelRefsForViewRegion:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning forRows:(unsigned __int8)rows
{
  v7 = a7;
  v8 = a6;
  rowsCopy = rows;
  spanningCopy = spanning;
  v73 = 0;
  v74 = &v73;
  v75 = 0x4812000000;
  v76 = sub_22135D830;
  v77 = sub_22135D854;
  v78 = &unk_22188E88F;
  memset(v79, 0, sizeof(v79));
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_22135824C;
  v71 = sub_22135825C;
  v72 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14, v15);
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = rowsCopy;
  v61 = 0;
  v62 = 0;
  if (rowsCopy != 253)
  {
    if (v7)
    {
      v19 = objc_msgSend_tableInfo(self, v16, v17, v18);
      v23 = objc_msgSend_indexesForSummaryRows(v19, v20, v21, v22);
      v26 = objc_msgSend_regionByIntersectingRowIndices_(spanningCopy, v24, v23, v25);
      v30 = objc_msgSend_tableInfo(self, v27, v28, v29);
      v34 = objc_msgSend_categoryColumnRange(v30, v31, v32, v33);
      v36 = objc_msgSend_regionByIntersectingRange_(v26, v35, v34, v35);

      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = sub_22135FC48;
      v59[3] = &unk_2784630E8;
      v59[4] = self;
      v59[5] = &v63;
      v60 = v8;
      v59[6] = &v67;
      v59[7] = &v73;
      objc_msgSend_enumerateRowsUsingBlock_(v36, v37, v59, v38);
      if (v8)
      {
        memset(v56, 0, sizeof(v56));
        sub_2211FECD0(v56, v74[6], v74[7], (v74[7] - v74[6]) >> 3);
        objc_msgSend_p_promoteSpanningReferences_withCaptured_atLevel_(self, v39, v56, v68[5], *(v64 + 24));
      }

      else
      {
        v57.origin = 0;
        v57.size = 0;
        v58 = 0;
        sub_2211FECD0(&v57, v74[6], v74[7], (v74[7] - v74[6]) >> 3);
      }

      sub_2210BC2A8(&v61);
      v61 = v57;
      v62 = v58;
      v57.size = 0;
      v58 = 0;
      v57.origin = 0;
      v80[0] = &v57;
      sub_22107C2C0(v80);
      if (v8)
      {
        v80[0] = v56;
        sub_22107C2C0(v80);
      }
    }

    else
    {
      v40 = objc_msgSend_tableInfo(self, v16, v17, v18);
      v36 = v40;
      if (v40)
      {
        v44 = MEMORY[0x277CCAA78];
        v57.origin = objc_msgSend_categoryColumnRange(v40, v41, v42, v43);
        v57.size = v45;
        v46 = TSUCellRect::columns(&v57);
        v48 = objc_msgSend_indexSetWithIndexesInRange_(v44, v47, v46, v47);
        v51 = objc_msgSend_regionBySubtractingColumnIndexes_(spanningCopy, v49, v48, v50);

        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = sub_22135FEE4;
        v55[3] = &unk_278463110;
        v55[4] = self;
        v55[5] = &v63;
        v55[6] = &v73;
        objc_msgSend_enumerateColumnsUsingBlock_(v51, v52, v55, v53);
      }

      if (&v61 != (v74 + 6))
      {
        sub_22116CF34(&v61, v74[6], v74[7], (v74[7] - v74[6]) >> 3);
      }
    }
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  sub_2211FECD0(retstr, *&v61.origin, *&v61.size, (*&v61.size - *&v61.origin) >> 3);
  v57.origin = &v61;
  sub_22107C2C0(&v57);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
  v67 = v79;
  sub_22107C2C0(&v67);

  return result;
}

- (vector<TSCECategoryRef)captureAnyCategoryRefsForViewRegion:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning
{
  v6 = a6;
  spanningCopy = spanning;
  v52 = 0;
  v53 = &v52;
  v54 = 0x4812000000;
  v55 = sub_22135D830;
  v56 = sub_22135D854;
  v57 = &unk_22188E88F;
  memset(v58, 0, sizeof(v58));
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_22135824C;
  v50 = sub_22135825C;
  v51 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = a5;
  v40 = 0uLL;
  v41 = 0;
  v17 = objc_msgSend_tableInfo(self, v14, v15, v16);
  v21 = objc_msgSend_indexesForSummaryRows(v17, v18, v19, v20);
  v24 = objc_msgSend_regionByIntersectingRowIndices_(spanningCopy, v22, v21, v23);

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_221360400;
  v33[3] = &unk_278463138;
  v25 = v17;
  v34 = v25;
  selfCopy = self;
  v39 = v6;
  v36 = &v42;
  v37 = &v46;
  v38 = &v52;
  objc_msgSend_enumerateCellIDsUsingBlock_(v24, v26, v33, v27);
  if (v6)
  {
    memset(v30, 0, sizeof(v30));
    sub_2211FECD0(v30, v53[6], v53[7], (v53[7] - v53[6]) >> 3);
    objc_msgSend_p_promoteSpanningReferences_withCaptured_atLevel_(self, v28, v30, v47[5], *(v43 + 24));
  }

  else
  {
    v31 = 0uLL;
    v32 = 0;
    sub_2211FECD0(&v31, v53[6], v53[7], (v53[7] - v53[6]) >> 3);
  }

  sub_2210BC2A8(&v40);
  v40 = v31;
  v41 = v32;
  v32 = 0;
  v31 = 0uLL;
  v59 = &v31;
  sub_22107C2C0(&v59);
  if (v6)
  {
    v59 = v30;
    sub_22107C2C0(&v59);
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  sub_2211FECD0(retstr, v40, *(&v40 + 1), (*(&v40 + 1) - v40) >> 3);

  *&v31 = &v40;
  sub_22107C2C0(&v31);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  v46 = v58;
  sub_22107C2C0(&v46);

  return result;
}

- (vector<TSCECategoryRef)captureCategoryRefsForViewRegion:(TSTGroupBy *)self atLevel:(SEL)level asSpanning:(id)spanning
{
  v6 = a6;
  v7 = a5;
  spanningCopy = spanning;
  v12 = objc_msgSend_tableInfo(self, v9, v10, v11);
  v14 = objc_msgSend_cellIteratorWithRegion_flags_searchFlags_(v12, v13, spanningCopy, 16, 0x20000);

  objc_msgSend_captureCategoryRefsFromIterator_atLevel_asSpanning_(self, v15, v14, v7, v6);

  return result;
}

- (id)viewCellTractRefForCategoryRef:(id)ref
{
  refCopy = ref;
  v8 = objc_msgSend_tableInfo(self, v5, v6, v7, 0, 0);
  if (objc_msgSend_refersToPivotTable(refCopy, v9, v10, v11))
  {
    v15 = objc_msgSend_pivotTableUid(refCopy, v12, v13, v14);
    v17 = v16;
    v20 = objc_msgSend_calcEngine(self, v16, v18, v19);
    v22 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(TSTTableInfo, v21, v15, v17, v20);

    v8 = v22;
  }

  v23 = objc_msgSend_uidRectRefForCategoryRef_atRowUid_(self, v12, refCopy, &v28);
  v26 = objc_msgSend_cellTractRefForUIDRectRef_(v8, v24, v23, v25);

  return v26;
}

- (id)viewCellTractRefForCategoryRef:(id)ref atRowUid:(const TSKUIDStruct *)uid
{
  refCopy = ref;
  v10 = objc_msgSend_tableInfo(self, v7, v8, v9);
  v12 = objc_msgSend_uidRectRefForCategoryRef_atRowUid_(self, v11, refCopy, uid);
  v15 = objc_msgSend_cellTractRefForUIDRectRef_(v10, v13, v12, v14);

  return v15;
}

- (id)groupHierarchyTreeAsFiltered:(BOOL)filtered usingOrder:(id)order forDimension:(int64_t)dimension
{
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, filtered, order, dimension);

  return v5;
}

- (id)stringForCategoryRef:(id)ref hostTableUID:(const TSKUIDStruct *)d
{
  v4 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, ref, d);

  return v4;
}

- (id)prettyStringForCategoryRef:(id)ref forHostCellRef:(const TSCECellRef *)cellRef namingContext:(id)context
{
  refCopy = ref;
  contextCopy = context;
  v13 = objc_msgSend_calcEngine(self, v10, v11, v12);

  if (!v13)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTGroupBy prettyStringForCategoryRef:forHostCellRef:namingContext:]", v16);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 4782, 0, "nil calculationEngine.  Can't generate string for categoryRefNode.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  v160 = 0;
  v161 = 0;
  v26 = objc_msgSend_calcEngine(self, v14, v15, v16);
  tableUID = cellRef->_tableUID;
  v29 = objc_msgSend_tableOrLinkedResolverForTableUID_(v26, v27, &tableUID, v28);

  if (v29)
  {
    v33 = objc_msgSend_tableTranslator(v29, v30, v31, v32);
    v160 = objc_msgSend_rowUIDForBaseRowIndex_(v33, v34, cellRef->coordinate.row, v35);
    v161 = v36;
  }

  tableUID = cellRef->_tableUID;
  v37 = objc_msgSend_resolveCategoryRef_atRowUid_inHostTable_(self, v30, refCopy, &v160, &tableUID);
  if (!objc_msgSend_isCategorized(self, v38, v39, v40) || !objc_msgSend_isValidCategoryRef_(self, v41, v37, v42))
  {
    v57 = 0;
    goto LABEL_47;
  }

  lower = cellRef->_tableUID._lower;
  upper = cellRef->_tableUID._upper;
  if (*&cellRef->_tableUID == 0)
  {
    goto LABEL_10;
  }

  v48 = objc_msgSend_categoryOwner(self, v43, v44, v45);
  if (lower != objc_msgSend_baseTableUID(v48, v49, v50, v51))
  {

LABEL_13:
    v58 = objc_msgSend_calcEngine(self, v43, v54, v45);
    v62 = objc_msgSend_categoryOwner(self, v59, v60, v61);
    v66 = objc_msgSend_baseTableUID(v62, v63, v64, v65);
    v68 = objc_msgSend_resolverForTableUID_(v58, v67, v66, v67);

    if (v68 && (objc_msgSend_tableName(v68, v69, v70, v71), (v157 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v75 = objc_msgSend_calcEngine(self, v72, v73, v74);
      v77 = objc_msgSend_resolverForTableUID_(v75, v76, cellRef->_tableUID._lower, cellRef->_tableUID._upper);

      v155 = v77;
      v81 = objc_msgSend_sheetName(v77, v78, v79, v80);
      v55 = objc_msgSend_sheetName(v68, v82, v83, v84);
      if (objc_msgSend_isEqualToString_(v55, v85, v81, v86))
      {

        v55 = 0;
      }
    }

    else
    {
      v157 = 0;
      v55 = 0;
    }

    v56 = v157;
    goto LABEL_20;
  }

  v53 = v52;

  if (upper != v53)
  {
    goto LABEL_13;
  }

LABEL_10:
  v55 = 0;
  v56 = 0;
LABEL_20:
  v156 = objc_msgSend_aggregateLabelForCategoryRef_(self, v43, v37, v45);
  v154 = v55;
  v158 = v56;
  v89 = objc_msgSend_columnNameForCategoryRef_(self, v87, v37, v88);
  if (v89)
  {
    v93 = v89;
  }

  else
  {
    v93 = &stru_2834BADA0;
  }

  if (objc_msgSend_quoteComponents(contextCopy, v90, v91, v92))
  {
    if (objc_msgSend_forFormulaPlainText(contextCopy, v94, v95, v96))
    {
      v100 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v97, v98, v99);
      v103 = objc_msgSend_rangeOfCharacterFromSet_(v93, v101, v100, v102) != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v103 = 0;
    }

    v104 = objc_msgSend_tsce_newStringByForcingSingleQuoteEscapes_(v93, v97, v103, v99);

    v93 = v104;
  }

  if (objc_msgSend_preserveFlags(v37, v94, v95, v96))
  {
    v107 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v105, @"$%@", v106, v93);

    v93 = v107;
  }

  v108 = v93;
  v110 = objc_msgSend_groupValueHierarchyStringForCategoryRef_forHostCellRef_namingContext_(self, v109, v37, cellRef, contextCopy);
  if (objc_msgSend_length(v110, v111, v112, v113))
  {
    if ((objc_msgSend_preserveFlags(v37, v114, v115, v116) & 2) != 0)
    {
      v119 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v117, @"$%@", v118, v110);

      v110 = v119;
    }

    v120 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v117, @"%@ %@", v118, v108, v110);

    v121 = v120;
  }

  else
  {
    v121 = v108;
  }

  if (objc_msgSend_length(v156, v114, v115, v116))
  {
    v125 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v122, @"%@ (%@)", v124, v121, v156);

    v121 = v125;
  }

  if (objc_msgSend_length(v158, v122, v123, v124))
  {
    v129 = objc_msgSend_quoteComponents(contextCopy, v126, v127, v128);
    v133 = MEMORY[0x277CCACA8];
    if (v129)
    {
      v134 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapesIfNecessary(v158, v130, v131, v132);
      v57 = objc_msgSend_stringWithFormat_(v133, v135, @"%@::%@", v136, v134, v121);
    }

    else
    {
      v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v130, @"%@::%@", v132, v158, v121);
    }

    if (objc_msgSend_length(v154, v137, v138, v139))
    {
      v143 = objc_msgSend_quoteComponents(contextCopy, v140, v141, v142);
      v147 = MEMORY[0x277CCACA8];
      if (v143)
      {
        v148 = objc_msgSend_tsce_stringByAddingSingleQuoteEscapesIfNecessary(v154, v144, v145, v146);
        v151 = objc_msgSend_stringWithFormat_(v147, v149, @"%@::%@", v150, v148, v57);

        v57 = v151;
      }

      else
      {
        v152 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v144, @"%@::%@", v146, v154, v57);

        v57 = v152;
      }
    }
  }

  else
  {
    v57 = v121;
  }

LABEL_47:

  return v57;
}

- (TSKUIDStruct)rowUIDForLookupKey:(unsigned int)key
{
  p_rowUidLookupList = &self->_rowUidLookupList;
  if (((self->_rowUidLookupList._uids.__end_ - self->_rowUidLookupList._uids.__begin_) & 0xFFFFFFFF0) == 0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupBy rowUIDForLookupKey:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 4886, 0, "Warning, rowUidLookupList is empty, we're not going to find anything.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v15 = sub_2210BCEA0(p_rowUidLookupList, key);
  result._upper = v16;
  result._lower = v15;
  return result;
}

- (void)p_setupCustomFormatsWithLocale:(id)locale
{
  localeCopy = locale;
  v7 = objc_msgSend_customFormatData(MEMORY[0x277D81250], v4, v5, v6);
  v10 = objc_msgSend_localizedNameForBlankGroupForDocumentLocale_(TSTGroupBy, v8, localeCopy, v9);
  objc_msgSend_setFormatString_(v7, v11, v10, v12);

  v13 = objc_alloc(MEMORY[0x277D81198]);
  v15 = objc_msgSend_initWithName_formatType_data_(v13, v14, @"blank", 271, v7);
  v16 = objc_alloc(MEMORY[0x277D80650]);
  v18 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v16, v17, 271, 0, v15);
  customFormatForBlankGroup = self->_customFormatForBlankGroup;
  self->_customFormatForBlankGroup = v18;

  v23 = objc_msgSend_customFormatData(MEMORY[0x277D81250], v20, v21, v22);
  v26 = objc_msgSend_localizedNameForErrorGroupForDocumentLocale_(TSTGroupBy, v24, localeCopy, v25);
  objc_msgSend_setFormatString_(v23, v27, v26, v28);

  v29 = objc_alloc(MEMORY[0x277D81198]);
  v31 = objc_msgSend_initWithName_formatType_data_(v29, v30, @"error", 271, v23);
  v32 = objc_alloc(MEMORY[0x277D80650]);
  v34 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v32, v33, 271, 0, v31);
  customFormatForErrorGroup = self->_customFormatForErrorGroup;
  self->_customFormatForErrorGroup = v34;
}

+ (id)localizedNameForBlankGroupForDocumentLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"(blank)", &stru_2834BADA0, @"TSTables");

  return v3;
}

+ (id)localizedNameForErrorGroupForDocumentLocale:(id)locale
{
  v3 = objc_msgSend_localizedStringForKey_value_table_(locale, a2, @"(error)", &stru_2834BADA0, @"TSTables");

  return v3;
}

- (BOOL)isBlankGroupUid:(const TSKUIDStruct *)uid
{
  v3 = objc_msgSend_groupNodeForGroupUid_(self, a2, uid->_lower, uid->_upper);
  isBlankNode = objc_msgSend_isBlankNode(v3, v4, v5, v6);

  return isBlankNode;
}

- (BOOL)isErrorGroupUid:(const TSKUIDStruct *)uid
{
  v3 = objc_msgSend_groupNodeForGroupUid_(self, a2, uid->_lower, uid->_upper);
  isErrorNode = objc_msgSend_isErrorNode(v3, v4, v5, v6);

  return isErrorNode;
}

+ (id)localizedTrueStringForBooleanGroupWithString:(id)string documentLocale:(id)locale
{
  stringCopy = string;
  v7 = objc_msgSend_localizedStringForKey_value_table_(locale, v6, @"Is “%@”", &stru_2834BADA0, @"TSTables");
  v10 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v8, v7, v9, stringCopy);
  v14 = objc_msgSend_tswp_stringWithUnambiguousNeutralEnding(v10, v11, v12, v13);

  return v14;
}

+ (id)localizedFalseStringForBooleanGroupWithString:(id)string documentLocale:(id)locale
{
  stringCopy = string;
  v7 = objc_msgSend_localizedStringForKey_value_table_(locale, v6, @"Not “%@”", &stru_2834BADA0, @"TSTables");
  v10 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v8, v7, v9, stringCopy);
  v14 = objc_msgSend_tswp_stringWithUnambiguousNeutralEnding(v10, v11, v12, v13);

  return v14;
}

- (TSCERangeRef)aggregateRangeRefForCategoryRef:(SEL)ref
{
  v6 = a4;
  retstr->range = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  v10 = objc_msgSend_absoluteGroupUid(v6, v7, v8, v9);
  v15 = objc_msgSend_groupNodeForGroupUid_(self, v11, v10, v11);
  if (v15)
  {
    v16 = objc_msgSend_type(v6, v12, v13, v14);
    if (v16 == 11)
    {
      v20 = objc_msgSend_columnUid(v6, v17, v18, v19);
      v22 = v21;
      v25 = objc_msgSend_groupLevel(v6, v21, v23, v24);
      v16 = objc_msgSend_aggregateTypeForColumnUID_atGroupLevel_(self, v26, v20, v22, v25);
    }

    if (v16)
    {
      v43.range._topLeft = objc_msgSend_columnUid(v6, v17, v18, v19);
      v43.range._bottomRight = v27;
      v32 = objc_msgSend_aggNodeForColumnUid_(v15, v27, &v43, v28);
      if (v32 && objc_msgSend_type(v6, v29, v30, v31) == 11)
      {
        v42.coordinate = objc_msgSend_formulaCoord(v32, v33, v34, v35);
        v42._tableUID._lower = objc_msgSend_ownerUID(self, v36, v37, v38);
        v42._tableUID._upper = v39;
        TSCERangeRef::TSCERangeRef(&v43, &v42);
        tableUID = v43._tableUID;
        retstr->range = v43.range;
        retstr->_tableUID = tableUID;
      }
    }
  }

  return result;
}

- (id)categoryRefForAggregateRangeRef:(const TSCERangeRef *)ref
{
  if (TSCERangeRef::isValid(ref) && (ref->_tableUID._lower == objc_msgSend_ownerUID(self, v5, v6, v7) ? (v10 = ref->_tableUID._upper == v8) : (v10 = 0), v10))
  {
    v41[0] = ref->range._topLeft;
    v12 = objc_msgSend_aggNodeForAggFormulaCoord_(self, v8, v41, v9);
    v16 = objc_msgSend_groupNode(v12, v13, v14, v15);
    v20 = objc_msgSend_aggregator(v12, v17, v18, v19);
    v21 = v20;
    v11 = 0;
    if (v16 && v20)
    {
      v22 = [TSCECategoryRef alloc];
      v41[0] = objc_msgSend_ownerUID(self, v23, v24, v25);
      v41[1] = v26;
      v40[0] = objc_msgSend_groupUid(v16, v26, v27, v28);
      v40[1] = v29;
      v32 = objc_msgSend_columnUid(v21, v29, v30, v31);
      v36 = objc_msgSend_groupLevel(v16, v33, v34, v35, v32, v33);
      v11 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v22, v37, v41, v40, &v39, 11, v36);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)validateNumberOfGroupsForGroupingColumnList:(id)list sourceTableModel:(id)model sourceBodyTract:(id)tract limit:(unint64_t)limit groupNodeCount:(unint64_t *)count
{
  v115 = *MEMORY[0x277D85DE8];
  listCopy = list;
  modelCopy = model;
  tractCopy = tract;
  v110 = 0;
  v111 = &v110;
  v112 = 0x2020000000;
  v113 = 0;
  context = objc_autoreleasePoolPush();
  v84 = objc_msgSend_groupingColumns(listCopy, v9, v10, v11);
  if (!tractCopy)
  {
    v97.origin = objc_msgSend_bodyRowRange(modelCopy, v12, v13, v14);
    v97.size = v15;
    v16 = [TSCECellTractRef alloc];
    origin = v97.origin;
    v109 = TSUCellRect::bottomRight(&v97);
    tractCopy = objc_msgSend_initWithTopLeft_bottomRight_(v16, v17, &origin, &v109);
  }

  if (count || (v18 = objc_msgSend_rows(tractCopy, v12, v13, v14), v19 = TSUIndexSet::count(v18), objc_msgSend_count(v84, v20, v21, v22) * v19 + 1 > limit))
  {
    v78 = objc_msgSend_calcEngine(modelCopy, v12, v13, v14);
    v79 = objc_msgSend_documentLocale(v78, v23, v24, v25);
    origin = 0;
    v107 = 0;
    v108 = 0;
    v26 = [TSTGroupNode alloc];
    v30 = objc_msgSend_context(modelCopy, v27, v28, v29);
    inited = objc_msgSend_initAsRootNodeForContext_(v26, v31, v30, v32);

    ++v111[3];
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v33 = v84;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v102, v114, 16);
    if (v38)
    {
      v39 = *v103;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v103 != v39)
          {
            objc_enumerationMutation(v33);
          }

          v41 = objc_msgSend_columnUid(*(*(&v102 + 1) + 8 * i), v35, v36, v37);
          v43 = v42;
          v46 = objc_msgSend_columnRowUIDMap(modelCopy, v42, v44, v45);
          LOWORD(v41) = objc_msgSend_columnIndexForColumnUID_(v46, v47, v41, v43);

          LOWORD(v97.origin.row) = v41;
          v51 = objc_msgSend_columns(tractCopy, v48, v49, v50);
          if ((TSUIndexSet::containsIndex(v51) & 1) == 0)
          {
            v54 = MEMORY[0x277D81150];
            v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "+[TSTGroupBy validateNumberOfGroupsForGroupingColumnList:sourceTableModel:sourceBodyTract:limit:groupNodeCount:]", v53);
            v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v57);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v59, v55, v58, 5142, 0, "Column missing from table model when validating");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62);
          }

          sub_221266D14(&origin, &v97);
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v102, v114, 16);
      }

      while (v38);
    }

    v97.origin = 0;
    v97.size = &v97;
    v98 = 0x3032000000;
    v99 = sub_22135824C;
    v100 = sub_22135825C;
    v101 = 0;
    v66 = objc_msgSend_mergeOwner(modelCopy, v63, v64, v65);
    objc_msgSend_rows(tractCopy, v67, v68, v69);
    v91 = 0;
    v92 = 0;
    __p = 0;
    sub_221362914(&__p, origin, v107, (v107 - origin) >> 1);
    v70 = v66;
    v88 = modelCopy;
    v71 = v79;
    v89 = v33;
    v72 = v78;
    v73 = inited;
    v93 = 0;
    v94 = 0;
    limitCopy = limit;
    countCopy = count;
    TSUIndexSet::enumerateIndexesUsingBlock();

    if (__p)
    {
      v91 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v97, 8);
    if (origin)
    {
      v107 = origin;
      operator delete(origin);
    }

    v74 = 1;
  }

  else
  {
    v74 = 0;
  }

  objc_autoreleasePoolPop(context);
  if (v74)
  {
    v75 = v111[3];
    if (count)
    {
      *count = v75;
    }

    v76 = v75 <= limit;
  }

  else
  {
    v76 = 1;
  }

  _Block_object_dispose(&v110, 8);

  return v76;
}

- (TSTCategoryOwner)categoryOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_categoryOwner);

  return WeakRetained;
}

- (TSTGroupBySet)groupBySet
{
  WeakRetained = objc_loadWeakRetained(&self->_groupBySet);

  return WeakRetained;
}

- (id).cxx_construct
{
  self->_groupByUid = 0uLL;
  TSUIndexSet::TSUIndexSet(&self->_aggFormulaCoordsFreeList);
  TSUIndexSet::TSUIndexSet(&self->_aggFormulaCoordsToFreeDeferred);
  self->_aggNodesByFormulaCoord.__table_.__bucket_list_ = 0u;
  *&self->_aggNodesByFormulaCoord.__table_.__first_node_.__next_ = 0u;
  self->_aggNodesByFormulaCoord.__table_.__max_load_factor_ = 1.0;
  self->_groupNodesByGroupUid.__table_.__bucket_list_ = 0u;
  *&self->_groupNodesByGroupUid.__table_.__first_node_.__next_ = 0u;
  self->_groupNodesByGroupUid.__table_.__max_load_factor_ = 1.0;
  self->_rowUidLookupList._uidHashToLookupKeyMap.__table_.__size_ = 0;
  *&self->_rowUidLookupList._uids.__cap_ = 0u;
  *&self->_rowUidLookupList._uidHashToLookupKeyMap.__table_.__bucket_list_.__deleter_.__size_ = 0u;
  *&self->_rowUidLookupList._uids.__begin_ = 0u;
  self->_rowUidLookupList._uidHashToLookupKeyMap.__table_.__max_load_factor_ = 1.0;
  self->_rowUidLookupList._uidHashOverflowMap.__table_.__bucket_list_ = 0u;
  *&self->_rowUidLookupList._uidHashOverflowMap.__table_.__first_node_.__next_ = 0u;
  self->_rowUidLookupList._uidHashOverflowMap.__table_.__max_load_factor_ = 1.0;
  return self;
}

+ (unsigned)groupingComboForGroupingType:(int64_t)type
{
  if (type <= 3)
  {
    if (type > 0)
    {
      v4 = 2;
      if (type == 3)
      {
        v8 = 32;
      }

      else
      {
        v8 = 0;
      }

      if (type == 2)
      {
        v6 = 8;
      }

      else
      {
        v6 = v8;
      }

      v7 = type == 1;
      goto LABEL_18;
    }

    if (type != -1)
    {
      return type == 0;
    }

LABEL_27:
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTGroupBy(ChangeGroups) groupingComboForGroupingType:]", v3);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy_ChangeGroups.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 169, 0, "This grouping type isn't supported in this release");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    return 1;
  }

  if (type > 6)
  {
    if (type == 7)
    {
      return 128;
    }

    if (type == 8)
    {
      return 256;
    }

    if (type != 10)
    {
      return 0;
    }

    goto LABEL_27;
  }

  v4 = 64;
  if (type == 6)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (type == 5)
  {
    v6 = 16;
  }

  else
  {
    v6 = v5;
  }

  v7 = type == 4;
LABEL_18:
  if (v7)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

+ (id)p_dateBySettingUnit:(unint64_t)unit value:(int64_t)value ofDate:(id)date inCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v12 = objc_msgSend_component_fromDate_(calendarCopy, v11, unit, dateCopy);
  if (unit != 0x2000 && v12 == value)
  {
    v14 = dateCopy;
    goto LABEL_51;
  }

  v15 = objc_msgSend_components_fromDate_(calendarCopy, v13, 2097916, dateCopy);
  v19 = v15;
  if (unit > 15)
  {
    if (unit == 16)
    {
      objc_msgSend_setValue_forComponent_(v15, v16, value, 16);
      goto LABEL_50;
    }

    if (unit != 512)
    {
      if (unit != 0x2000)
      {
        goto LABEL_50;
      }

      v20 = objc_msgSend_gregorianCalendar(TSCECalendar, v16, v17, v18);
      v21 = dateCopy;
      v23 = objc_msgSend_weekNumberForDate_withType_(v20, v22, v21, 2);
      v27 = 0;
      v109 = v21;
      while (1)
      {
        v28 = value - v23;
        if (value == v23)
        {
LABEL_49:

          goto LABEL_50;
        }

        v29 = (v28 / 4.3);
        if (v29)
        {
          v30 = objc_msgSend_month(v19, v24, v25, v26);
          objc_msgSend_setMonth_(v19, v31, v30 + v29, v32);
          if (objc_msgSend_month(v19, v33, v34, v35) <= 0)
          {
            objc_msgSend_setMonth_(v19, v36, 1, v38);
            v41 = -7;
LABEL_22:
            if (objc_msgSend_day(v19, v24, v25, v26) + v41 < 1)
            {
              if (objc_msgSend_month(v19, v56, v57, v58) < 2)
              {
                objc_msgSend_setDay_(v19, v65, 1, v67);
              }

              else
              {
                v68 = objc_msgSend_month(v19, v65, v66, v67);
                objc_msgSend_setMonth_(v19, v69, v68 - 1, v70);
              }
            }

            else
            {
              v59 = objc_msgSend_day(v19, v56, v57, v58) + v41;
              objc_msgSend_setDay_(v19, v60, v59, v61);
            }

            goto LABEL_28;
          }

          if (objc_msgSend_month(v19, v36, v37, v38) < 13)
          {
            goto LABEL_28;
          }

          objc_msgSend_setMonth_(v19, v39, 12, v40);
          v41 = 7;
        }

        else
        {
          v41 = 7 * v28;
          if (v28 < 1)
          {
            goto LABEL_22;
          }
        }

        v42 = objc_msgSend_rangeOfUnit_inUnit_forDate_(calendarCopy, v24, 16, 8, v21);
        v49 = &v48[v42 - 1];
        if (objc_msgSend_day(v19, v48, v43, v44) + v41 <= v49)
        {
          goto LABEL_24;
        }

        if (v41 >= 8)
        {
          v41 -= 7;
          while (v41 + objc_msgSend_day(v19, v45, v46, v47) > v49)
          {
            v50 = v41 + 7;
            v41 -= 7;
            if (v50 <= 0xE)
            {
              goto LABEL_20;
            }
          }

LABEL_24:
          v62 = objc_msgSend_day(v19, v45, v46, v47);
          objc_msgSend_setDay_(v19, v63, v62 + v41, v64);
          goto LABEL_28;
        }

LABEL_20:
        v51 = objc_msgSend_month(v19, v45, v46, v47);
        objc_msgSend_setMonth_(v19, v52, v51 + 1, v53);
        objc_msgSend_setDay_(v19, v54, 1, v55);
LABEL_28:
        v71 = objc_msgSend_dateFromComponents_(calendarCopy, v39, v19, v40);

        v73 = objc_msgSend_components_fromDate_(calendarCopy, v72, 764, v71);

        v23 = objc_msgSend_weekNumberForDate_withType_(v20, v74, v71, 2);
        ++v27;
        v21 = v71;
        v19 = v73;
        if (v27 == 10)
        {
          v99 = MEMORY[0x277D81150];
          v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "+[TSTGroupBy(ChangeGroups) p_dateBySettingUnit:value:ofDate:inCalendar:]", v26);
          v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy_ChangeGroups.mm", v102);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v104, v100, v103, 295, 0, "Continued looping trying to set date %@ to week number %lu", v109, value);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v106, v107);
          v21 = v71;
          v19 = v73;
          goto LABEL_49;
        }
      }
    }

    v85 = objc_msgSend_weekday(v15, v16, v17, v18);
    if (v85 >= value)
    {
      v89 = v85 - value;
    }

    else
    {
      v89 = v85 - value + 7;
    }

    if (objc_msgSend_day(v19, v86, v87, v88) <= v89)
    {
      v84 = objc_msgSend_day(v19, v90, v91, v92) - v89 + 7;
    }

    else
    {
      v84 = objc_msgSend_day(v19, v90, v91, v92) - v89;
    }

LABEL_35:
    objc_msgSend_setDay_(v19, v16, v84, v18);
    goto LABEL_50;
  }

  if (unit == 4)
  {
    objc_msgSend_setValue_forComponent_(v15, v16, value, 4);
    if (objc_msgSend_day(v19, v93, v94, v95) == 29 && objc_msgSend_month(v19, v16, v96, v18) == 2)
    {
      v98 = objc_msgSend_year(v19, v16, v97, v18);
      if (__ROR8__(0x8F5C28F5C28F5C29 * v98 + 0x51EB851EB851EB0, 4) >= 0xA3D70A3D70A3D7uLL && (__ROR8__(0x8F5C28F5C28F5C29 * v98 + 0x51EB851EB851EB8, 2) < 0x28F5C28F5C28F5DuLL || (v98 & 3) != 0))
      {
        objc_msgSend_setDay_(v19, v16, 28, v18);
      }
    }
  }

  else if (unit == 8)
  {
    objc_msgSend_setValue_forComponent_(v15, v16, value, 8);
    if (objc_msgSend_day(v19, v75, v76, v77) >= 29)
    {
      v78 = objc_msgSend_rangeOfUnit_inUnit_forDate_(calendarCopy, v16, 16, 8, dateCopy);
      v80 = v79;
      v83 = objc_msgSend_day(v19, v79, v81, v82);
      v84 = &v80[v78 - 1];
      if (v83 > v84)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_50:
  v14 = objc_msgSend_dateFromComponents_(calendarCopy, v16, v19, v18);

LABEL_51:

  return v14;
}

- (unordered_map<TSKUIDStruct,)changesPerColumnMapToBeInGroup:()std:()std:(std:(TSTPlanForGroupingCell>>> *__return_ptr)retstr :(TSTGroupBy *)self allocator<std:(SEL)std :(id)a4 pair<const)TSKUIDStruct :equal_to<TSKUIDStruct> :hash<TSKUIDStruct>
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a4;
  retstr->var0.var0 = 0u;
  *&retstr->var0.var1.var0 = 0u;
  retstr->var0.var3 = 1.0;
  memset(v36, 0, sizeof(v36));
  v37 = 1065353216;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_groupingColumns;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v32, v39, 16);
  if (v11)
  {
    v12 = *v33;
    v13 = 1;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v33 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v32 + 1) + 8 * v14);
      if (objc_msgSend_groupLevel(v6, v8, v9, v10) < v13)
      {
        break;
      }

      v19 = objc_msgSend_groupingType(v15, v16, v17, v18);
      v30 = objc_msgSend_groupingComboForGroupingType_(TSTGroupBy, v20, v19, v21);
      v31 = v13;
      v29[0] = objc_msgSend_columnUid(v15, v22, v23, v24);
      v29[1] = v25;
      v38 = v29;
      v26 = sub_2214AA998(retstr, v29, &unk_2217E1FA0, &v38);
      sub_2214A7A00((v26 + 4), &v30);
      ++v13;
      if (v11 == ++v14)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v32, v39, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  sub_2210BDEC0(v36);
  return result;
}

- (BOOL)changeCell:(id)cell atCellUID:(const TSKUIDStructCoord *)d toBeInGroup:(id)group
{
  cellCopy = cell;
  groupCopy = group;
  objc_msgSend_changesPerColumnMapToBeInGroup_(self, v10, groupCopy, v11);
  v15 = sub_2210875C4(v20, d);
  if (v15)
  {
    v16 = objc_msgSend_groupValueTuple(groupCopy, v12, v13, v14);
    v18 = objc_msgSend_p_setCell_groupingCellPlan_groupValue_toGroup_templateCell_(self, v17, cellCopy, (v15 + 4), v16, groupCopy, 0);
  }

  else
  {
    v18 = 0;
  }

  sub_2214AA910(v20);

  return v18;
}

- (id)changeCellDiffMapToMoveRows:(const void *)rows toGroup:(id)group templateRowUID:(const TSKUIDStruct *)d
{
  groupCopy = group;
  selfCopy = self;
  v11 = objc_msgSend_categoryOwner(self, v8, v9, v10);
  v15 = objc_msgSend_tableModel(v11, v12, v13, v14);

  v16 = [TSTCellDiffMap alloc];
  v20 = objc_msgSend_context(v15, v17, v18, v19);
  v70 = objc_msgSend_initWithContext_(v16, v21, v20, v22);

  if (groupCopy)
  {
    v76 = objc_msgSend_mergeOwner(v15, v23, v24, v25);
    memset(v81, 0, sizeof(v81));
    v82 = 1065353216;
    v71 = objc_msgSend_groupValueTuple(groupCopy, v26, v27, v28);
    v75 = objc_msgSend_newCell(v15, v29, v30, v31);
    if (*d == 0)
    {
      v73 = 0;
    }

    else
    {
      v73 = objc_msgSend_newCell(v15, v32, v33, v34);
    }

    objc_msgSend_changesPerColumnMapToBeInGroup_(selfCopy, v32, groupCopy, v34);
    v38 = *rows;
    v69 = *(rows + 1);
    if (*rows != v69)
    {
      do
      {
        for (i = v80; i; i = *i)
        {
          v41 = i[2];
          v40 = i[3];
          v42 = objc_msgSend_columnRowUIDMap(v15, v35, v36, v37, v69);
          v44 = objc_msgSend_columnIndexForColumnUID_(v42, v43, v41, v40);

          if (v44 != 0x7FFF)
          {
            v45 = objc_msgSend_columnRowUIDMap(v15, v35, v36, v37);
            TSTMakeCellUID(v78);
            v48 = objc_msgSend_cellIDForCellUID_(v45, v46, v78, v47);

            v77 = 0;
            v77 = objc_msgSend_mergeOriginForBaseCellCoord_(v76, v49, v48, v50);
            if (!sub_221087F14(v81, &v77))
            {
              sub_2214AAC5C(v81, &v77, &v77);
              objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(v15, v51, v75, v77, 1);
              if (WORD2(v77) != WORD2(v48))
              {
                v55 = objc_msgSend_columnRowUIDMap(v15, v52, v53, v54);
                objc_msgSend_columnUIDForColumnIndex_(v55, v56, WORD2(v77), v57);
              }

              if (*d != 0)
              {
                v58 = objc_msgSend_columnRowUIDMap(v15, v52, v53, v54);
                TSTMakeCellUID(v78);
                v61 = objc_msgSend_cellIDForCellUID_(v58, v59, v78, v60);

                v64 = objc_msgSend_mergeOriginForBaseCellCoord_(v76, v62, v61, v63);
                objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(v15, v65, v73, v64, 1);
              }

              if (objc_msgSend_p_setCell_groupingCellPlan_groupValue_toGroup_templateCell_(selfCopy, v52, v75, (i + 4), v71, groupCopy, v73))
              {
                v66 = objc_msgSend_p_cellDiffForFinishedCell_(selfCopy, v35, v75, v37);
                TSTMakeCellUID(v78);
                objc_msgSend_addCellDiff_andCellUID_(v70, v67, v66, v78);
              }
            }
          }
        }

        v38 += 16;
      }

      while (v38 != v69);
    }

    sub_2214AA910(&v79);

    sub_2210BDEC0(v81);
  }

  return v70;
}

- (id)cellDiffForCell:(id)cell applyingGroupCellValue:(id)value groupingType:(int64_t)type toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (objc_msgSend_hasFormula(cellCopy, v13, v14, v15))
  {
    objc_msgSend_setCellSpec_(cellCopy, v16, 0, v18);
    v21 = 0;
  }

  else if (objc_msgSend_hasControl(cellCopy, v16, v17, v18))
  {
    v23 = objc_msgSend_tableInfo(self, v19, v22, v20);
    v27 = objc_msgSend_newCell(v23, v24, v25, v26);

    objc_msgSend_shallowCopyToCell_(cellCopy, v28, v27, v29);
    v21 = v27;
  }

  else
  {
    v21 = 0;
  }

  v30 = objc_msgSend_groupingComboForGroupingType_(TSTGroupBy, v19, type, v20);
  objc_msgSend_p_setCell_groupingTypeCombo_groupingCellValue_toBeInGroup_(self, v31, cellCopy, v30, valueCopy, groupCopy);
  v35 = objc_msgSend_formatType(cellCopy, v32, v33, v34);
  if (v35 == 263)
  {
    v39 = objc_msgSend_toggleControlSpec(TSTCellToggleControlSpec, v36, v37, v38);
    objc_msgSend_setCellSpec_(cellCopy, v42, v39, v43);
  }

  else
  {
    if (v35 != 267)
    {
      goto LABEL_11;
    }

    v39 = objc_msgSend_defaultRangeControlSpecOfType_(TSTCellRangeControlSpec, v36, 6, v38);
    objc_msgSend_setCellSpec_(cellCopy, v40, v39, v41);
  }

LABEL_11:
  if (!objc_msgSend_hasControl(cellCopy, v36, v37, v38))
  {
LABEL_14:
    v56 = objc_msgSend_p_cellDiffForFinishedCell_(self, v44, cellCopy, v45);
    goto LABEL_16;
  }

  v46 = objc_msgSend_formatAndValueFromCell_useAllSpareFormats_(TSTCellFormatAndValue, v44, cellCopy, 0);
  v50 = objc_msgSend_cellSpec(cellCopy, v47, v48, v49);
  v53 = objc_msgSend_validateFormatAndValue_(v50, v51, v46, v52);

  if (v53)
  {

    goto LABEL_14;
  }

  objc_msgSend_shallowCopyToCell_(v21, v54, cellCopy, v55);

  v56 = 0;
LABEL_16:

  return v56;
}

- (id)p_cellDiffForFinishedCell:(id)cell
{
  cellCopy = cell;
  v7 = objc_msgSend_cellDiff(TSTCellDiff, v4, v5, v6);
  v9 = objc_msgSend_formatAndValueFromCell_useAllSpareFormats_(TSTCellFormatAndValue, v8, cellCopy, 0);
  objc_msgSend_setObject_forProperty_(v7, v10, v9, 907);
  v14 = objc_msgSend_cellSpecForDiff(cellCopy, v11, v12, v13);
  objc_msgSend_setObject_forProperty_(v7, v15, v14, 913);

  return v7;
}

- (void)p_setCell:(id)cell groupingTypeCombo:(unsigned __int16)combo groupingCellValue:(id)value toBeInGroup:(id)group
{
  comboCopy = combo;
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (comboCopy <= 15)
  {
    if (comboCopy > 3)
    {
      if (comboCopy == 4)
      {
        objc_msgSend_p_setCell_forYearQuarterGroupingTypeWithGroupColumnValue_toBeInGroup_(self, v11, cellCopy, valueCopy, groupCopy);
      }

      else if (comboCopy == 8)
      {
        objc_msgSend_p_setCell_forMonthGroupingTypeWithGroupColumnValue_toBeInGroup_(self, v11, cellCopy, valueCopy, groupCopy);
      }
    }

    else if (comboCopy == 1)
    {
      objc_msgSend_p_setCell_forUniqueGroupingTypeWithGroupColumnValue_toBeInGroup_(self, v11, cellCopy, valueCopy, groupCopy);
    }

    else if (comboCopy == 2)
    {
      objc_msgSend_p_setCell_forYearGroupingTypeWithGroupColumnValue_toBeInGroup_(self, v11, cellCopy, valueCopy, groupCopy);
    }
  }

  else if (comboCopy <= 63)
  {
    if (comboCopy == 16)
    {
      objc_msgSend_p_setCell_forYearWeekGroupingTypeWithGroupColumnValue_toBeInGroup_(self, v11, cellCopy, valueCopy, groupCopy);
    }

    else if (comboCopy == 32)
    {
      objc_msgSend_p_setCell_forDayOfWeekGroupingTypeWithGroupColumnValue_toBeInGroup_(self, v11, cellCopy, valueCopy, groupCopy);
    }
  }

  else
  {
    switch(comboCopy)
    {
      case 64:
        objc_msgSend_p_setCell_forDayGroupingTypeWithGroupColumnValue_toBeInGroup_(self, cellCopy, cellCopy, valueCopy, groupCopy);
        break;
      case 128:
        objc_msgSend_p_setCell_forMonthOfYearGroupingTypeWithGroupColumnValue_toBeInGroup_(self, cellCopy, cellCopy, valueCopy, groupCopy);
        break;
      case 256:
        objc_msgSend_p_setCell_forQuarterOfYearGroupingTypeWithGroupColumnValue_toBeInGroup_(self, cellCopy, cellCopy, valueCopy, groupCopy);
        break;
    }
  }
}

- (BOOL)p_setCell:(id)cell groupingCellPlan:(const void *)plan groupValue:(id)value toGroup:(id)group templateCell:(id)templateCell
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  templateCellCopy = templateCell;
  v59 = templateCellCopy;
  if (objc_msgSend_hasFormula(cellCopy, v15, v16, v17))
  {
    v21 = 0;
    objc_msgSend_setCellSpec_(cellCopy, v18, 0, v20);
  }

  else if (objc_msgSend_hasControl(cellCopy, v18, v19, v20))
  {
    v25 = objc_msgSend_tableInfo(self, v22, v23, v24);
    v21 = objc_msgSend_newCell(v25, v26, v27, v28);

    objc_msgSend_shallowCopyToCell_(cellCopy, v29, v21, v30);
  }

  else
  {
    v21 = 0;
  }

  if (objc_msgSend_isEmpty(cellCopy, v22, v23, v24))
  {
    objc_msgSend_copyValueAndFormatToCell_(templateCellCopy, v31, cellCopy, v33);
  }

  v34 = *plan;
  if (groupCopy)
  {
    v35 = objc_msgSend_groupLevel(groupCopy, v31, v32, v33);
    if (!v34)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v35 = 10;
    if (!*plan)
    {
      goto LABEL_15;
    }
  }

  do
  {
    v36 = v34 & -v34;
    if ((v34 & -v34) == 0)
    {
      break;
    }

    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = sub_2214A9224;
    v61[3] = &unk_278465EC8;
    v66 = v34 & -v34;
    v67 = v35;
    v62 = valueCopy;
    selfCopy = self;
    v64 = cellCopy;
    v65 = groupCopy;
    sub_2214A7AE4(plan, v61);

    v37 = v36 == v34;
    v34 ^= v36;
  }

  while (!v37);
LABEL_15:
  v38 = objc_msgSend_formatType(cellCopy, v31, v32, v33);
  if (v38 == 263)
  {
    v42 = objc_msgSend_toggleControlSpec(TSTCellToggleControlSpec, v39, v40, v41);
    objc_msgSend_setCellSpec_(cellCopy, v45, v42, v46);
  }

  else
  {
    if (v38 != 267)
    {
      goto LABEL_20;
    }

    v42 = objc_msgSend_defaultRangeControlSpecOfType_(TSTCellRangeControlSpec, v39, 6, v41);
    objc_msgSend_setCellSpec_(cellCopy, v43, v42, v44);
  }

LABEL_20:
  if (objc_msgSend_hasControl(cellCopy, v39, v40, v41))
  {
    v48 = objc_msgSend_formatAndValueFromCell_useAllSpareFormats_(TSTCellFormatAndValue, v47, cellCopy, 0);
    v52 = objc_msgSend_cellSpec(cellCopy, v49, v50, v51);
    v55 = objc_msgSend_validateFormatAndValue_(v52, v53, v48, v54);

    if ((v55 & 1) == 0)
    {
      objc_msgSend_shallowCopyToCell_(v21, v56, cellCopy, v57);
    }
  }

  else
  {
    v55 = 1;
  }

  return v55;
}

- (void)p_setCell:(id)cell forUniqueGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    v12 = objc_msgSend_tsceValue(valueCopy, v8, v9, v10);
    if ((objc_msgSend_isNil(v12, v13, v14, v15) & 1) == 0)
    {
      objc_msgSend_applyFormulaResult_(cellCopy, v16, v12, v18);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = objc_msgSend_nilValue(TSCENilValue, v8, v9, v10);
  }

  objc_msgSend_clearValue(cellCopy, v16, v17, v18);
LABEL_6:
}

- (id)defaultDateForGrouping
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  objc_msgSend_setYear_(v2, v3, 2000, v4);
  objc_msgSend_setMonth_(v2, v5, 1, v6);
  objc_msgSend_setDay_(v2, v7, 1, v8);
  v9 = objc_alloc(MEMORY[0x277CBEA80]);
  v12 = objc_msgSend_initWithCalendarIdentifier_(v9, v10, *MEMORY[0x277CBE5C0], v11);
  v15 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0], v13, @"UTC", v14);
  objc_msgSend_setTimeZone_(v12, v16, v15, v17);

  v20 = objc_msgSend_dateFromComponents_(v12, v18, v2, v19);

  return v20;
}

- (void)p_setCell:(id)cell forYearGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11);
  }
  v13 = ;
  v17 = objc_msgSend_dateValue(cellCopy, v14, v15, v16);
  v18 = objc_alloc(MEMORY[0x277CBEA80]);
  v21 = objc_msgSend_initWithCalendarIdentifier_(v18, v19, *MEMORY[0x277CBE5C0], v20);
  v22 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v21, v23, v22, v24);

  if (objc_msgSend_isDateValue(v13, v25, v26, v27))
  {
    if (!v17)
    {
      v17 = objc_msgSend_defaultDateForGrouping(self, v28, v29, v30);
    }

    v31 = objc_msgSend_date(v13, v28, v29, v30);
    v33 = objc_msgSend_components_fromDate_(v21, v32, 28, v31);
    v37 = objc_msgSend_year(v33, v34, v35, v36);
    v39 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v38, 4, v37, v17, v21);
    objc_msgSend_setDateValue_(cellCopy, v40, v39, v41);
  }

  else if (objc_msgSend_isNil(v13, v28, v29, v30))
  {
    objc_msgSend_clearValue(cellCopy, v42, v43, v44);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v42, v13, v44);
  }
}

- (void)p_setCell:(id)cell forMonthGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11);
  }
  v13 = ;
  v17 = objc_msgSend_dateValue(cellCopy, v14, v15, v16);
  v18 = objc_alloc(MEMORY[0x277CBEA80]);
  v21 = objc_msgSend_initWithCalendarIdentifier_(v18, v19, *MEMORY[0x277CBE5C0], v20);
  v22 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v21, v23, v22, v24);

  if (objc_msgSend_isDateValue(v13, v25, v26, v27))
  {
    if (!v17)
    {
      v17 = objc_msgSend_defaultDateForGrouping(self, v28, v29, v30);
    }

    v31 = objc_msgSend_date(v13, v28, v29, v30);
    v33 = objc_msgSend_components_fromDate_(v21, v32, 28, v31);
    v37 = objc_msgSend_month(v33, v34, v35, v36);
    v41 = objc_msgSend_year(v33, v38, v39, v40);
    if (v37 == 0x7FFFFFFFFFFFFFFFLL || (v44 = v41, v41 == 0x7FFFFFFFFFFFFFFFLL))
    {
      objc_msgSend_applyFormulaResult_(cellCopy, v42, v13, v43);
    }

    else
    {
      v45 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v42, 8, v37, v17, v21);
      v47 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v46, 4, v44, v45, v21);

      objc_msgSend_setDateValue_(cellCopy, v48, v47, v49);
    }
  }

  else if (objc_msgSend_isNil(v13, v28, v29, v30))
  {
    objc_msgSend_clearValue(cellCopy, v50, v51, v52);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v50, v13, v52);
  }
}

- (void)p_setCell:(id)cell forDayOfWeekGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11);
  }
  v13 = ;
  v17 = objc_msgSend_dateValue(cellCopy, v14, v15, v16);
  v18 = objc_alloc(MEMORY[0x277CBEA80]);
  v21 = objc_msgSend_initWithCalendarIdentifier_(v18, v19, *MEMORY[0x277CBE5C0], v20);
  v22 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v21, v23, v22, v24);

  if (objc_msgSend_isDateValue(v13, v25, v26, v27))
  {
    if (!v17)
    {
      v17 = objc_msgSend_defaultDateForGrouping(self, v28, v29, v30);
    }

    v31 = objc_msgSend_date(v13, v28, v29, v30);
    v33 = objc_msgSend_components_fromDate_(v21, v32, 512, v31);
    v38 = objc_msgSend_weekday(v33, v34, v35, v36);
    if (v38 == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_applyFormulaResult_(cellCopy, v37, v13, 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      v42 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v37, 512, v38, v17, v21);
      objc_msgSend_setDateValue_(cellCopy, v43, v42, v44);
    }
  }

  else if (objc_msgSend_isNil(v13, v28, v29, v30))
  {
    objc_msgSend_clearValue(cellCopy, v39, v40, v41);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v39, v13, v41);
  }
}

- (void)p_setCell:(id)cell forDayGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11);
  }
  v13 = ;
  v17 = objc_msgSend_dateValue(cellCopy, v14, v15, v16);
  v18 = objc_alloc(MEMORY[0x277CBEA80]);
  v21 = objc_msgSend_initWithCalendarIdentifier_(v18, v19, *MEMORY[0x277CBE5C0], v20);
  v22 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v21, v23, v22, v24);

  if (objc_msgSend_isDateValue(v13, v25, v26, v27))
  {
    if (!v17)
    {
      v17 = objc_msgSend_defaultDateForGrouping(self, v28, v29, v30);
    }

    v31 = objc_msgSend_date(v13, v28, v29, v30);
    v33 = objc_msgSend_components_fromDate_(v21, v32, 28, v31);
    v37 = objc_msgSend_day(v33, v34, v35, v36);
    v39 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v38, 16, v37, v17, v21);
    v43 = objc_msgSend_month(v33, v40, v41, v42);
    v45 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v44, 8, v43, v39, v21);

    v49 = objc_msgSend_year(v33, v46, v47, v48);
    v51 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v50, 4, v49, v45, v21);

    objc_msgSend_setDateValue_(cellCopy, v52, v51, v53);
  }

  else if (objc_msgSend_isNil(v13, v28, v29, v30))
  {
    objc_msgSend_clearValue(cellCopy, v54, v55, v56);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v54, v13, v56);
  }
}

- (void)p_setCell:(id)cell forYearWeekGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11);
  }
  v13 = ;
  v17 = objc_msgSend_dateValue(cellCopy, v14, v15, v16);
  v18 = objc_alloc(MEMORY[0x277CBEA80]);
  v21 = objc_msgSend_initWithCalendarIdentifier_(v18, v19, *MEMORY[0x277CBE5C0], v20);
  v22 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v21, v23, v22, v24);

  if (objc_msgSend_isDateValue(v13, v25, v26, v27))
  {
    if (!v17)
    {
      v17 = objc_msgSend_defaultDateForGrouping(self, v28, v29, v30);
    }

    v31 = objc_msgSend_date(v13, v28, v29, v30);
    v33 = objc_msgSend_components_fromDate_(v21, v32, 28, v31);
    v37 = objc_msgSend_year(v33, v34, v35, v36);
    v39 = objc_msgSend_ordinalityOfUnit_inUnit_forDate_(v21, v38, 0x2000, 4, v31);
    v41 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v40, 4, v37, v17, v21);
    v43 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v42, 0x2000, v39, v41, v21);

    objc_msgSend_setDateValue_(cellCopy, v44, v43, v45);
  }

  else if (objc_msgSend_isNil(v13, v28, v29, v30))
  {
    objc_msgSend_clearValue(cellCopy, v46, v47, v48);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v46, v13, v48);
  }
}

- (void)p_setCell:(id)cell forYearQuarterGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11, groupCopy);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11, groupCopy);
  }
  v12 = ;
  v16 = objc_msgSend_dateValue(cellCopy, v13, v14, v15);
  v17 = objc_alloc(MEMORY[0x277CBEA80]);
  v20 = objc_msgSend_initWithCalendarIdentifier_(v17, v18, *MEMORY[0x277CBE5C0], v19);
  v21 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v20, v22, v21, v23);

  if (objc_msgSend_isDateValue(v12, v24, v25, v26))
  {
    if (!v16)
    {
      v16 = objc_msgSend_defaultDateForGrouping(self, v27, v28, v29);
    }

    v30 = objc_msgSend_date(v12, v27, v28, v29);
    v32 = objc_msgSend_components_fromDate_(v20, v31, 28, v30);
    v36 = objc_msgSend_year(v32, v33, v34, v35);
    v38 = objc_msgSend_ordinalityOfUnit_inUnit_forDate_(v20, v37, 2048, 4, v30);
    v42 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v39, 4, v36, v16, v20);
    if (v38 - 1 <= 3)
    {
      v43 = objc_msgSend_components_fromDate_(v20, v40, 8, v16);
      v47 = objc_msgSend_month(v43, v44, v45, v46);
      do
      {
        v49 = (v47 + 2) / 3;
        ++v47;
      }

      while (v49 < v38);
      if (v49 > v38)
      {
        do
        {
          v50 = v47 / 3;
          --v47;
        }

        while (v50 > v38);
      }

      v51 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v48, 8, v47 - 1, v42, v20);

      v42 = v51;
    }

    objc_msgSend_setDateValue_(cellCopy, v40, v42, v41);
  }

  else if (objc_msgSend_isNil(v12, v27, v28, v29))
  {
    objc_msgSend_clearValue(cellCopy, v52, v53, v54);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v52, v12, v54);
  }
}

- (void)p_setCell:(id)cell forMonthOfYearGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11);
  }
  v13 = ;
  v17 = objc_msgSend_dateValue(cellCopy, v14, v15, v16);
  v18 = objc_alloc(MEMORY[0x277CBEA80]);
  v21 = objc_msgSend_initWithCalendarIdentifier_(v18, v19, *MEMORY[0x277CBE5C0], v20);
  v22 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v21, v23, v22, v24);

  if (objc_msgSend_isDateValue(v13, v25, v26, v27))
  {
    if (!v17)
    {
      v17 = objc_msgSend_defaultDateForGrouping(self, v28, v29, v30);
    }

    v31 = objc_msgSend_date(v13, v28, v29, v30);
    v33 = objc_msgSend_components_fromDate_(v21, v32, 28, v31);
    v38 = objc_msgSend_month(v33, v34, v35, v36);
    if (v38 == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_applyFormulaResult_(cellCopy, v37, v13, 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      v42 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v37, 8, v38, v17, v21);
      objc_msgSend_setDateValue_(cellCopy, v43, v42, v44);
    }
  }

  else if (objc_msgSend_isNil(v13, v28, v29, v30))
  {
    objc_msgSend_clearValue(cellCopy, v39, v40, v41);
  }

  else
  {
    objc_msgSend_applyFormulaResult_(cellCopy, v39, v13, v41);
  }
}

- (void)p_setCell:(id)cell forQuarterOfYearGroupingTypeWithGroupColumnValue:(id)value toBeInGroup:(id)group
{
  cellCopy = cell;
  valueCopy = value;
  groupCopy = group;
  if (valueCopy)
  {
    objc_msgSend_tsceValue(valueCopy, v9, v10, v11);
  }

  else
  {
    objc_msgSend_nilValue(TSCENilValue, v9, v10, v11);
  }
  v13 = ;
  v17 = objc_msgSend_dateValue(cellCopy, v14, v15, v16);
  v18 = objc_alloc(MEMORY[0x277CBEA80]);
  v21 = objc_msgSend_initWithCalendarIdentifier_(v18, v19, *MEMORY[0x277CBE5C0], v20);
  v22 = TSUGetGMTTimeZone();
  objc_msgSend_setTimeZone_(v21, v23, v22, v24);

  if (objc_msgSend_isDateValue(v13, v25, v26, v27))
  {
    if (!v17)
    {
      v17 = objc_msgSend_defaultDateForGrouping(self, v28, v29, v30);
    }

    v31 = objc_msgSend_date(v13, v28, v29, v30);
    v33 = objc_msgSend_ordinalityOfUnit_inUnit_forDate_(v21, v32, 2048, 4, v31);
    v36 = v17;
    v37 = v36;
    if (v33 - 1 <= 3)
    {
      v38 = objc_msgSend_components_fromDate_(v21, v34, 8, v36);
      v42 = objc_msgSend_month(v38, v39, v40, v41);
      do
      {
        v44 = (v42 + 2) / 3;
        ++v42;
      }

      while (v44 < v33);
      if (v44 > v33)
      {
        do
        {
          v45 = v42 / 3;
          --v42;
        }

        while (v45 > v33);
      }

      v37 = objc_msgSend_p_dateBySettingUnit_value_ofDate_inCalendar_(TSTGroupBy, v43, 8, v42 - 1, v36, v21);
    }

    objc_msgSend_setDateValue_(cellCopy, v34, v37, v35);
  }

  else
  {
    if (objc_msgSend_isNil(v13, v28, v29, v30))
    {
      objc_msgSend_clearValue(cellCopy, v46, v47, v48);
    }

    else
    {
      objc_msgSend_applyFormulaResult_(cellCopy, v46, v13, v48);
    }

    v36 = v17;
  }
}

@end