@interface TSTGroupNode
+ (BOOL)needFormulasForAggregateType:(unsigned __int8)type;
+ (id)localizedStringForCellValue:(id)value categoryLevel:(unsigned __int8)level groupBy:(id)by;
+ (id)normalizedStringForCompare:(id)compare;
- (BOOL)containsAnyRowUidInRowUidSet:(id)set;
- (BOOL)containsRowUid:(const TSKUIDStruct *)uid;
- (BOOL)hasUnfilteredRows;
- (BOOL)isBlankNode;
- (BOOL)isErrorNode;
- (BOOL)updateGroupCellValueIfKeyMatches:(id)matches;
- (NSUUID)groupValueUuid;
- (TSCEUIDSet)childGroupUids;
- (TSCEUIDSet)directChildGroupUids;
- (TSCEUIDSet)unfilteredChildGroupUids;
- (TSCEUIDSet)unfilteredDirectChildGroupUids;
- (TSKUIDStruct)firstVisibleNodeUsingColumnRowUIDMap:(id)map forDimension:(int64_t)dimension leafLevel:(unsigned __int8)level pivotTableHiddenExtent:(id)extent;
- (TSKUIDStruct)groupUid;
- (TSKUIDStruct)groupValueUid;
- (TSKUIDStruct)labelUid;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)nodePath;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUidsAsVector;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)unfilteredRowUidsAsVector;
- (TSTGroupNode)initWithArchive:(const void *)archive forGroupBy:(id)by;
- (TSTGroupNode)initWithGroupCellValue:(id)value context:(id)context atLevel:(unsigned __int8)level groupUid:(TSKUIDStruct)uid children:(id)children;
- (TSTGroupNode)initWithGroupCellValue:(id)value groupBy:(id)by atLevel:(unsigned __int8)level groupUid:(TSKUIDStruct)uid children:(id)children;
- (TSTGroupValueTuple)groupValueTuple;
- (TSUIndexSet)pivotOnlyRowIndexes;
- (id).cxx_construct;
- (id)aggNodeForColumnUid:(const TSKUIDStruct *)uid;
- (id)aggregateRefForType:(unsigned __int8)type atLevel:(unsigned __int8)level forColumnUid:(const TSKUIDStruct *)uid;
- (id)canonicalKeyStringAtLevel:(unsigned __int8)level;
- (id)computedGroupValueTuple;
- (id)findGroupNodeForDisplayValuesFromSplitter:(id)splitter atLevel:(unsigned __int8)level startAtComponent:(unint64_t)component startAtWord:(unint64_t)word preserveFlags:(TSUPreserveFlags *)flags;
- (id)findGroupNodeForValue:(id)value atLevel:(unsigned __int8)level locale:(id)locale;
- (id)groupHierarchyTreeAsFiltered:(BOOL)filtered usingOrder:(id)order forDimension:(int64_t)dimension;
- (id)groupNodeForGroupUid:(const TSKUIDStruct *)uid;
- (id)groupNodeForRowUid:(const TSKUIDStruct *)uid atLevel:(unsigned __int8)level;
- (id)groupValueAtLevel:(unsigned __int8)level;
- (id)groupValueCellValue;
- (id)groupValueCellValueForGroupBySet:(id)set aggIndex:(unsigned __int16)index appendAggregateName:(BOOL)name;
- (id)groupValueHierarchyForChart:(BOOL)chart;
- (id)groupValueHierarchyForChart:(BOOL)chart groupBySet:(id)set aggIndex:(unsigned __int16)index appendAggregateName:(BOOL)name;
- (id)groupValueHierarchyRefAtLevel:(unsigned __int8)level;
- (id)groupValueHierarchyStringWithDelimiterString:(id)string;
- (id)groupValueHierarchyStringWithDelimiterString:(id)string namingContext:(id)context;
- (id)groupValueRefAtLevel:(unsigned __int8)level;
- (id)initAsRootNodeForContext:(id)context;
- (id)initAsRootNodeForGroupBy:(id)by;
- (id)insertRowUid:(const TSKUIDStruct *)uid atRowIndex:(unsigned int)index forGroupValueTuple:(id)tuple atLevel:(unsigned __int8)level withLocale:(id)locale createdGroupNodeCount:(unint64_t *)count;
- (id)rawGroupValueCellValue;
- (id)safeOrderedChildrenForArchiving;
- (unsigned)rowCount;
- (void)addAggNode:(id)node;
- (void)addChangesTo:(id)to forDemotingValueAtLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel;
- (void)addChangesTo:(id)to forPromotingValueAtLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel;
- (void)addChangesTo:(id)to forRemovingValueAtLevel:(unsigned __int8)level;
- (void)addChangesTo:(id)to forReplacingValue:(id)value atLevel:(unsigned __int8)level;
- (void)addChild:(id)child withKey:(id)key;
- (void)addRowUid:(const TSKUIDStruct *)uid;
- (void)clearAllGroupNodes;
- (void)clearEmptyNodes;
- (void)dealloc;
- (void)encodeToArchive:(void *)archive backwardCompatOptions:(unint64_t)options archiver:(id)archiver;
- (void)enumerateAllGroupsWithStop:(BOOL *)stop withBlock:(id)block;
- (void)enumerateDirectChildren:(id)children;
- (void)enumerateGroupsBetweenLevel:(unsigned __int8)level andLevel:(unsigned __int8)andLevel withStop:(BOOL *)stop withBlock:(id)block;
- (void)enumerateRowUidsWithBlock:(id)block;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver forGroupBy:(id)by;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)markAsDirtyWithCalcEngine:(id)engine;
- (void)markDependentsAsDirtyWithCalcEngine:(id)engine;
- (void)p_addChildGroupUidsIntoSet:(id)set recursively:(BOOL)recursively skipFiltered:(BOOL)filtered;
- (void)p_refreshGroupValue;
- (void)rebuildFormulasForAggNode:(id)node;
- (void)removeAllRowUids;
- (void)removeChildForKey:(id)key;
- (void)removeRowUid:(const TSKUIDStruct *)uid forGroupValueTuple:(id)tuple atLevel:(unsigned __int8)level withLocale:(id)locale;
- (void)removeRowUids:(id)uids;
- (void)saveToArchiver:(id)archiver;
- (void)setGroupBy:(id)by;
- (void)setupWithGroupCellValue:(id)value groupBy:(id)by atLevel:(unsigned __int8)level groupUid:(TSKUIDStruct)uid children:(id)children;
- (void)unpackAfterUnarchiveForGroupBy:(id)by atLevel:(unsigned __int8)level;
- (void)updateWithDocumentRoot:(id)root;
@end

@implementation TSTGroupNode

- (TSKUIDStruct)groupValueUid
{
  if (self->_groupLevel)
  {
    v4 = objc_msgSend_canonicalKeyString(self->_groupCellValue, a2, v2, v3);
    v5 = v4;
    v9 = objc_msgSend_UTF8String(v5, v6, v7, v8);
    v10 = sub_2211A9368(v9);
    v12 = v11;

    v13 = v10;
    v14 = v12;
  }

  else
  {

    v13 = objc_msgSend_groupByRootUid(TSCECategoryRef, a2, v2, v3);
  }

  result._upper = v14;
  result._lower = v13;
  return result;
}

- (NSUUID)groupValueUuid
{
  v7._lower = objc_msgSend_groupValueUid(self, a2, v2, v3);
  v7._upper = v4;
  v5 = TSKUIDStruct::NSUUIDValue(&v7);

  return v5;
}

- (unsigned)rowCount
{
  if (self->_groupBy)
  {
    return TSUIndexSet::count(&self->_rowUidsIndexSet);
  }

  else
  {
    return objc_msgSend_count(self->_disconnectedRowUids, a2, v2, v3);
  }
}

- (TSKUIDStruct)labelUid
{
  v2 = self->_parentNode;
  v6 = v2;
  if (v2)
  {
    v7 = objc_msgSend_groupUid(v2, v3, v4, v5);
    v9 = sub_2211A8DF4(v7, v8);
    v11 = v10;
  }

  else
  {
    v11 = 0;
    v9 = 0;
  }

  v12 = v9;
  v13 = v11;
  result._upper = v13;
  result._lower = v12;
  return result;
}

- (id)computedGroupValueTuple
{
  parentNode = self->_parentNode;
  if (parentNode)
  {
    v6 = objc_msgSend_groupValueTuple(parentNode, a2, v2, v3);
    v9 = objc_msgSend_groupValueTupleByAppendingValue_(v6, v7, self->_groupCellValue, v8);
  }

  else
  {
    if (self->_groupLevel)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupNode computedGroupValueTuple]", v3);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 164, 0, "Only the root groupNode should have no parentNode pointer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    }

    v19 = [TSTGroupValueTuple alloc];
    v9 = objc_msgSend_initWithValueArray_(v19, v20, MEMORY[0x277CBEBF8], v21);
  }

  return v9;
}

- (TSTGroupValueTuple)groupValueTuple
{
  v3 = self->_cachedGroupValueTuple;
  if (!v3)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    cachedGroupValueTuple = self->_cachedGroupValueTuple;
    if (!cachedGroupValueTuple)
    {
      v9 = objc_msgSend_computedGroupValueTuple(selfCopy, v5, v6, v7);
      v10 = self->_cachedGroupValueTuple;
      self->_cachedGroupValueTuple = v9;

      cachedGroupValueTuple = self->_cachedGroupValueTuple;
    }

    v3 = cachedGroupValueTuple;
    objc_sync_exit(selfCopy);
  }

  return v3;
}

- (BOOL)hasUnfilteredRows
{
  selfCopy = self;
  v5 = objc_msgSend_groupBy(self, a2, v2, v3);
  if (!objc_msgSend_isForPivotTable(v5, v6, v7, v8))
  {
    goto LABEL_7;
  }

  v12 = objc_msgSend_hiddenStates(v5, v9, v10, v11);
  v16 = objc_msgSend_rowHiddenStateExtent(v12, v13, v14, v15);

  if (!v16 || !objc_msgSend_hasActiveFilters(v16, v17, v18, v19) || !TSUIndexSet::count(&selfCopy->_pivotOnlyRowIndexes))
  {

LABEL_7:
    LOBYTE(selfCopy) = objc_msgSend_rowCount(selfCopy, v9, v10, v11) != 0;
    goto LABEL_8;
  }

  v23 = objc_msgSend_mutableFilteredIndexes(v16, v20, v21, v22);
  v24 = TSUIndexSet::asNSIndexSet(&selfCopy->_pivotOnlyRowIndexes);
  LODWORD(selfCopy) = objc_msgSend_containsIndexes_(v23, v25, v24, v26) ^ 1;

LABEL_8:
  return selfCopy;
}

- (void)setupWithGroupCellValue:(id)value groupBy:(id)by atLevel:(unsigned __int8)level groupUid:(TSKUIDStruct)uid children:(id)children
{
  upper = uid._upper;
  lower = uid._lower;
  levelCopy = level;
  v58 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  byCopy = by;
  childrenCopy = children;
  self->_childrenLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  self->_groupBy = byCopy;
  objc_storeStrong(&self->_groupCellValue, value);
  self->_groupUid._lower = lower;
  self->_groupUid._upper = upper;
  self->_groupLevel = levelCopy;
  objc_storeStrong(&self->_children, children);
  if (valueCopy && !levelCopy)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTGroupNode setupWithGroupCellValue:groupBy:atLevel:groupUid:children:]", v17);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 217, 0, "Root node shouldn't have a cellValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v27 = self->_children;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v53, v57, 16);
  if (v31)
  {
    v32 = *v54;
    do
    {
      v33 = 0;
      do
      {
        if (*v54 != v32)
        {
          objc_enumerationMutation(v27);
        }

        v34 = objc_msgSend_objectForKey_(self->_children, v29, *(*(&v53 + 1) + 8 * v33), v30);
        objc_msgSend_setParentNode_(v34, v35, self, v36);

        ++v33;
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v53, v57, 16);
    }

    while (v31);
  }

  v37 = [TSTGroupNodeFormatManager alloc];
  v40 = objc_msgSend_initWithCellValue_(v37, v38, self->_groupCellValue, v39);
  formatManager = self->_formatManager;
  self->_formatManager = v40;

  v45 = objc_msgSend_cellValue(self->_formatManager, v42, v43, v44);
  v46 = v45 == self->_groupCellValue;

  if (!v46)
  {
    v50 = objc_msgSend_cellValue(self->_formatManager, v47, v48, v49);
    groupCellValue = self->_groupCellValue;
    self->_groupCellValue = v50;
  }
}

- (TSTGroupNode)initWithGroupCellValue:(id)value groupBy:(id)by atLevel:(unsigned __int8)level groupUid:(TSKUIDStruct)uid children:(id)children
{
  upper = uid._upper;
  lower = uid._lower;
  levelCopy = level;
  valueCopy = value;
  byCopy = by;
  childrenCopy = children;
  v19 = objc_msgSend_context(byCopy, v16, v17, v18);
  v23.receiver = self;
  v23.super_class = TSTGroupNode;
  v20 = [(TSTGroupNode *)&v23 initWithContext:v19];

  if (v20)
  {
    objc_msgSend_setupWithGroupCellValue_groupBy_atLevel_groupUid_children_(v20, v21, valueCopy, byCopy, levelCopy, lower, upper, childrenCopy);
  }

  return v20;
}

- (TSTGroupNode)initWithGroupCellValue:(id)value context:(id)context atLevel:(unsigned __int8)level groupUid:(TSKUIDStruct)uid children:(id)children
{
  upper = uid._upper;
  lower = uid._lower;
  levelCopy = level;
  valueCopy = value;
  contextCopy = context;
  childrenCopy = children;
  v20.receiver = self;
  v20.super_class = TSTGroupNode;
  v16 = [(TSTGroupNode *)&v20 initWithContext:contextCopy];
  v18 = v16;
  if (v16)
  {
    objc_msgSend_setupWithGroupCellValue_groupBy_atLevel_groupUid_children_(v16, v17, valueCopy, 0, levelCopy, lower, upper, childrenCopy);
  }

  return v18;
}

- (id)initAsRootNodeForGroupBy:(id)by
{
  byCopy = by;
  v8 = objc_msgSend_groupByRootUid(TSCECategoryRef, v5, v6, v7);
  v10 = objc_msgSend_initWithGroupCellValue_groupBy_atLevel_groupUid_children_(self, v9, 0, byCopy, 0, v8, v9, 0);

  return v10;
}

- (id)initAsRootNodeForContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = TSTGroupNode;
  v8 = [(TSTGroupNode *)&v12 initWithContext:contextCopy];
  if (v8)
  {
    v9 = objc_msgSend_groupByRootUid(TSCECategoryRef, v5, v6, v7);
    objc_msgSend_setupWithGroupCellValue_groupBy_atLevel_groupUid_children_(v8, v10, 0, 0, 0, v9, v10, 0);
  }

  return v8;
}

- (TSTGroupNode)initWithArchive:(const void *)archive forGroupBy:(id)by
{
  byCopy = by;
  v10 = objc_msgSend_context(byCopy, v7, v8, v9);
  v14.receiver = self;
  v14.super_class = TSTGroupNode;
  v11 = [(TSTGroupNode *)&v14 initWithContext:v10];

  if (v11)
  {
    objc_msgSend_loadFromArchive_unarchiver_forGroupBy_(v11, v12, archive, 0, byCopy);
  }

  return v11;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver forGroupBy:(id)by
{
  unarchiverCopy = unarchiver;
  byCopy = by;
  v13 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v9, v10, v11);
  v93 = v13;
  if ((*(archive + 16) & 4) != 0)
  {
    v14 = objc_msgSend_cellValueWithArchive_locale_(TSCECellValue, v12, *(archive + 17), v13);
  }

  else
  {
    v14 = 0;
  }

  if (*(archive + 15))
  {
    v15 = *(archive + 15);
  }

  else
  {
    v15 = MEMORY[0x277D809E0];
  }

  v16 = TSKUIDStruct::loadFromMessage(v15, v12);
  objc_msgSend_setupWithGroupCellValue_groupBy_atLevel_groupUid_children_(self, v17, v14, byCopy, 255, v16, v17, 0);
  if ((*(archive + 16) & 0x10) != 0)
  {
    sub_22126A778(*(archive + 19), &v98);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v98);
    v97[5] = MEMORY[0x277D85DD0];
    v97[6] = 3221225472;
    v97[7] = sub_22107DAF8;
    v97[8] = &unk_27845D888;
    v97[9] = self;
    TSUIndexSet::enumerateIndexesUsingBlock();
  }

  else
  {
    v20 = *(archive + 14);
    if (v20 >= 1)
    {
      v21 = 8;
      do
      {
        *&v98 = 0;
        v98._singleRange._begin = 0;
        *&v98 = TSKUIDStruct::loadFromMessage(*(*(archive + 8) + v21), v18);
        v98._singleRange._begin = v22;
        objc_msgSend_addRowUid_(self, v22, &v98, v23);
        v21 += 8;
        --v20;
      }

      while (v20);
    }
  }

  if ((*(archive + 16) & 8) != 0)
  {
    sub_22126A778(*(archive + 18), &v98);
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v98);
  }

  if (*(archive + 26) < 1)
  {
    if (byCopy)
    {
      v65 = *(archive + 8);
      if (v65 >= 1)
      {
        v66 = objc_alloc(MEMORY[0x277CBEB38]);
        v69 = objc_msgSend_initWithCapacity_(v66, v67, v65, v68);
        children = self->_children;
        self->_children = v69;

        v71 = 8;
        do
        {
          v72 = [TSTGroupNode alloc];
          v74 = objc_msgSend_initWithArchive_forGroupBy_(v72, v73, *(*(archive + 5) + v71), byCopy);
          objc_msgSend_setParentNode_(v74, v75, self, v76);
          v80 = objc_msgSend_groupCellValue(v74, v77, v78, v79);
          v84 = objc_msgSend_canonicalKeyString(v80, v81, v82, v83);

          if (v84)
          {
            v86 = v84;
          }

          else
          {
            v86 = &stru_2834BADA0;
          }

          v87 = self->_children;
          if (!v87)
          {
            v88 = objc_opt_new();
            v89 = self->_children;
            self->_children = v88;

            v87 = self->_children;
          }

          objc_msgSend_setObject_forKey_(v87, v85, v74, v86);
          v95[0] = MEMORY[0x277D85DD0];
          v95[1] = 3221225472;
          v95[2] = sub_22107DDE4;
          v95[3] = &unk_27845D8B0;
          v95[4] = self;
          v90 = v74;
          v96 = v90;
          objc_msgSend_enumerateRowUidsWithBlock_(v90, v91, v95, v92);

          v71 += 8;
          --v65;
        }

        while (v65);
      }
    }
  }

  else
  {
    if (!unarchiverCopy)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTGroupNode loadFromArchive:unarchiver:forGroupBy:]", v19);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 308, 0, "invalid nil value for '%{public}s'", "unarchiver");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
    }

    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = sub_22107DB10;
    v97[3] = &unk_27845D8D8;
    v97[4] = self;
    v33 = unarchiverCopy;
    v34 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v33, v35, archive + 96, v34, 0, v97);
  }

  v36 = *(archive + 20);
  if (v36 >= 1)
  {
    v37 = 8;
    do
    {
      v38 = sub_2212697C0(*(*(archive + 11) + v37));
      p_aggNodeCoordsToUnpack = &self->_aggNodeCoordsToUnpack;
      end = self->_aggNodeCoordsToUnpack.__end_;
      cap = self->_aggNodeCoordsToUnpack.__cap_;
      if (end >= cap)
      {
        v43 = end - p_aggNodeCoordsToUnpack->__begin_;
        if ((v43 + 1) >> 61)
        {
          sub_22107C148();
        }

        v44 = cap - p_aggNodeCoordsToUnpack->__begin_;
        v45 = v44 >> 2;
        if (v44 >> 2 <= (v43 + 1))
        {
          v45 = v43 + 1;
        }

        if (v44 >= 0x7FFFFFFFFFFFFFF8)
        {
          v46 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = v45;
        }

        if (v46)
        {
          sub_2210874C4(&self->_aggNodeCoordsToUnpack, v46);
        }

        v47 = (8 * v43);
        *v47 = v38;
        v42 = (8 * v43 + 8);
        v48 = self->_aggNodeCoordsToUnpack.__end_ - self->_aggNodeCoordsToUnpack.__begin_;
        v49 = (v47 - v48);
        memcpy(v47 - v48, p_aggNodeCoordsToUnpack->__begin_, v48);
        begin = p_aggNodeCoordsToUnpack->__begin_;
        p_aggNodeCoordsToUnpack->__begin_ = v49;
        self->_aggNodeCoordsToUnpack.__end_ = v42;
        self->_aggNodeCoordsToUnpack.__cap_ = 0;
        if (begin)
        {
          operator delete(begin);
        }
      }

      else
      {
        *end = v38;
        v42 = end + 1;
      }

      self->_aggNodeCoordsToUnpack.__end_ = v42;
      v37 += 8;
      --v36;
    }

    while (v36);
  }

  v51 = *(archive + 4);
  if ((v51 & 2) != 0)
  {
    v52 = [TSTGroupNodeFormatManager alloc];
    if (*(archive + 16))
    {
      v55 = objc_msgSend_initWithArchive_(v52, v53, *(archive + 16), v54);
    }

    else
    {
      v55 = objc_msgSend_initWithArchive_(v52, v53, &TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_default_instance_, v54);
    }

    formatManager = self->_formatManager;
    self->_formatManager = v55;

    v51 = *(archive + 4);
  }

  if ((v51 & 2) != 0)
  {
    v61 = [TSTGroupNodeFormatManager alloc];
    if (*(archive + 16))
    {
      v60 = objc_msgSend_initWithArchive_(v61, v62, *(archive + 16), v63);
    }

    else
    {
      v60 = objc_msgSend_initWithArchive_(v61, v62, &TST::_GroupByArchive_GroupNodeArchive_FormatManagerArchive_default_instance_, v63);
    }
  }

  else
  {
    v57 = [TSTGroupNodeFormatManager alloc];
    v60 = objc_msgSend_initWithCellValue_(v57, v58, self->_groupCellValue, v59);
  }

  v64 = self->_formatManager;
  self->_formatManager = v60;
}

- (void)unpackAfterUnarchiveForGroupBy:(id)by atLevel:(unsigned __int8)level
{
  v40 = *MEMORY[0x277D85DE8];
  byCopy = by;
  self->_childrenLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
  self->_groupBy = byCopy;
  self->_groupLevel = level;
  v10 = objc_msgSend_groupNodesByGroupUid(byCopy, v7, v8, v9);
  p_groupUid = &self->_groupUid;
  v11 = sub_221086FBC(v10, &self->_groupUid._lower, &unk_2217E0160, &p_groupUid);
  objc_storeStrong(v11 + 4, self);
  objc_msgSend_unpackAfterUnarchiveForGroupBy_(self->_formatManager, v12, byCopy, v13);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = self->_children;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v34, v39, 16);
  if (v18)
  {
    v19 = *v35;
    v20 = level + 1;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v22 = objc_msgSend_objectForKey_(self->_children, v16, *(*(&v34 + 1) + 8 * i), v17, v34);
        objc_msgSend_unpackAfterUnarchiveForGroupBy_atLevel_(v22, v23, byCopy, v20);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v34, v39, 16);
    }

    while (v18);
  }

  begin = self->_aggNodeCoordsToUnpack.__begin_;
  end = self->_aggNodeCoordsToUnpack.__end_;
  if (begin != end)
  {
    do
    {
      p_groupUid = *begin;
      v28 = objc_msgSend_aggNodeForAggFormulaCoord_(byCopy, v24, &p_groupUid, v25, v34);
      v31 = v28;
      if (v28)
      {
        objc_msgSend_setGroupNode_(v28, v29, self, v30);
        objc_msgSend_addAggNode_(self, v32, v31, v33);
      }

      ++begin;
    }

    while (begin != end);
    begin = self->_aggNodeCoordsToUnpack.__begin_;
  }

  self->_aggNodeCoordsToUnpack.__end_ = begin;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[272], v5);

  objc_msgSend_loadFromArchive_unarchiver_forGroupBy_(self, v7, v6, unarchiverCopy, 0);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22108750C, off_2812E4498[272]);

  objc_msgSend_encodeToArchive_backwardCompatOptions_archiver_(self, v6, v5, 0, archiverCopy);
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_children;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16);
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = objc_msgSend_objectForKey_(self->_children, v5, *(*(&v14 + 1) + 8 * v9), v6);
        objc_msgSend_setParentNode_(v10, v11, 0, v12);

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v14, v18, 16);
    }

    while (v7);
  }

  v13.receiver = self;
  v13.super_class = TSTGroupNode;
  [(TSTGroupNode *)&v13 dealloc];
}

- (void)addChild:(id)child withKey:(id)key
{
  childCopy = child;
  keyCopy = key;
  if (childCopy)
  {
    objc_msgSend_willModify(self, v7, v8, v9);
    if (!keyCopy)
    {
      keyCopy = &stru_2834BADA0;
    }

    os_unfair_lock_lock(&self->_childrenLock);
    children = self->_children;
    if (!children)
    {
      v13 = objc_opt_new();
      v14 = self->_children;
      self->_children = v13;

      children = self->_children;
    }

    objc_msgSend_setObject_forKey_(children, v11, childCopy, keyCopy);
    os_unfair_lock_unlock(&self->_childrenLock);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_22107E4FC;
    v17[3] = &unk_27845D8B0;
    v17[4] = self;
    v18 = childCopy;
    objc_msgSend_enumerateRowUidsWithBlock_(v18, v15, v17, v16);
  }
}

- (void)removeChildForKey:(id)key
{
  keyCopy = key;
  objc_msgSend_willModify(self, v5, v6, v7);
  if (!keyCopy)
  {
    keyCopy = &stru_2834BADA0;
  }

  os_unfair_lock_lock(&self->_childrenLock);
  v10 = objc_msgSend_objectForKey_(self->_children, v8, keyCopy, v9);
  objc_msgSend_removeObjectForKey_(self->_children, v11, keyCopy, v12);
  os_unfair_lock_unlock(&self->_childrenLock);
  if (v10)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22107E67C;
    v15[3] = &unk_27845D900;
    v15[4] = self;
    objc_msgSend_enumerateRowUidsWithBlock_(v10, v13, v15, v14);
  }
}

- (id)safeOrderedChildrenForArchiving
{
  v39 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_childrenLock);
  v6 = objc_msgSend_copy(self->_children, v3, v4, v5);
  os_unfair_lock_unlock(&self->_childrenLock);
  v7 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v6;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v33, v38, 16);
  if (v12)
  {
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addObject_(v7, v10, *(*(&v33 + 1) + 8 * i), v11);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v33, v38, 16);
    }

    while (v12);
  }

  objc_msgSend_sortUsingSelector_(v7, v15, sel_compare_, v16);
  v17 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v7;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v29, v37, 16);
  if (v22)
  {
    v23 = *v30;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v27 = objc_msgSend_objectForKey_(v8, v20, *(*(&v29 + 1) + 8 * j), v21, v29);
        if (v27)
        {
          objc_msgSend_addObject_(v17, v25, v27, v26);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v29, v37, 16);
    }

    while (v22);
  }

  return v17;
}

- (void)encodeToArchive:(void *)archive backwardCompatOptions:(unint64_t)options archiver:(id)archiver
{
  v78 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v68 = objc_msgSend_groupBy(self, v9, v10, v11);
  *(archive + 4) |= 1u;
  v12 = *(archive + 15);
  if (!v12)
  {
    v13 = *(archive + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x223DA0360](v13);
    *(archive + 15) = v12;
  }

  TSKUIDStruct::saveToMessage(&self->_groupUid, v12);
  v17 = self->_groupCellValue;
  if (v17)
  {
    *(archive + 4) |= 4u;
    v18 = *(archive + 17);
    if (!v18)
    {
      v19 = *(archive + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v19);
      *(archive + 17) = v18;
    }

    objc_msgSend_encodeCellValueToArchive_(v17, v14, v18, v16);
  }

  else if (self->_groupLevel)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTGroupNode encodeToArchive:backwardCompatOptions:archiver:]", v16);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 510, 0, "Only the root node has a nil groupCellValue?!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  if (v68)
  {
    v29 = 0;
    if ((options & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    if (!v29)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v29 = objc_msgSend_count(self->_disconnectedRowUids, v14, v15, v16) != 0;
  if ((options & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = sub_22107EF30;
  v76[3] = &unk_27845D920;
  v76[4] = archive;
  objc_msgSend_enumerateRowUidsWithBlock_(self, v14, v76, v16);
LABEL_19:
  if (TSUIndexSet::count(&self->_rowUidsIndexSet))
  {
    *(archive + 4) |= 0x10u;
    v30 = *(archive + 19);
    if (!v30)
    {
      v31 = *(archive + 1);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v31);
      *(archive + 19) = v30;
    }

    sub_22126A644(&self->_rowUidsIndexSet, v30);
  }

  if (TSUIndexSet::count(&self->_pivotOnlyRowIndexes))
  {
    *(archive + 4) |= 8u;
    v35 = *(archive + 18);
    if (!v35)
    {
      v36 = *(archive + 1);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexSetArchive>(v36);
      *(archive + 18) = v35;
    }

    sub_22126A644(&self->_pivotOnlyRowIndexes, v35);
  }

  if (options - 1 < 3)
  {
    objc_msgSend_safeOrderedChildrenForArchiving(self, v32, v33, v34);
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v37 = v73 = 0u;
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v72, v77, 16);
    if (!v40)
    {
      goto LABEL_46;
    }

    v41 = *v73;
    while (1)
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v73 != v41)
        {
          objc_enumerationMutation(v37);
        }

        v43 = *(*(&v72 + 1) + 8 * i);
        v44 = *(archive + 5);
        if (!v44)
        {
          goto LABEL_42;
        }

        v45 = *(archive + 8);
        v46 = *v44;
        if (v45 < *v44)
        {
          *(archive + 8) = v45 + 1;
          objc_msgSend_encodeToArchive_backwardCompatOptions_archiver_(v43, v39, *&v44[2 * v45 + 2], options, archiverCopy);
          continue;
        }

        if (v46 == *(archive + 9))
        {
LABEL_42:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v44 = *(archive + 5);
          v46 = *v44;
        }

        *v44 = v46 + 1;
        v47 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive>(*(archive + 3));
        v48 = *(archive + 8);
        v49 = *(archive + 5) + 8 * v48;
        *(archive + 8) = v48 + 1;
        *(v49 + 8) = v47;
        objc_msgSend_encodeToArchive_backwardCompatOptions_archiver_(v43, v50, v47, options, archiverCopy);
      }

      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v72, v77, 16);
      if (!v40)
      {
LABEL_46:

        goto LABEL_49;
      }
    }
  }

  if (!options)
  {
    v37 = objc_msgSend_safeOrderedChildrenForArchiving(self, v32, v33, v34);
    objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v51, v37, archive + 96);
LABEL_49:
  }

  v52 = objc_msgSend_aggNodes(self, v32, v33, v34);
  sub_2210877BC(v70, v52);
  v54 = v71;
  if (v71)
  {
    while (1)
    {
      v55 = v54[4];
      v69 = 0;
      v69 = objc_msgSend_formulaCoord(v55, v56, v57, v58);
      v59 = *(archive + 11);
      if (!v59)
      {
        goto LABEL_56;
      }

      v60 = *(archive + 20);
      v61 = *v59;
      if (v60 >= *v59)
      {
        break;
      }

      *(archive + 20) = v60 + 1;
      v62 = *&v59[2 * v60 + 2];
LABEL_58:
      sub_221269820(&v69, v62);

      v54 = *v54;
      if (!v54)
      {
        goto LABEL_59;
      }
    }

    if (v61 == *(archive + 21))
    {
LABEL_56:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 72));
      v59 = *(archive + 11);
      v61 = *v59;
    }

    *v59 = v61 + 1;
    v62 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(*(archive + 9));
    v63 = *(archive + 20);
    v64 = *(archive + 11) + 8 * v63;
    *(archive + 20) = v63 + 1;
    *(v64 + 8) = v62;
    goto LABEL_58;
  }

LABEL_59:
  formatManager = self->_formatManager;
  if (formatManager)
  {
    *(archive + 4) |= 2u;
    v66 = *(archive + 16);
    if (!v66)
    {
      v67 = *(archive + 1);
      if (v67)
      {
        v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
      }

      v66 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive>(v67);
      *(archive + 16) = v66;
    }

    objc_msgSend_encodeToArchive_forGroupBy_backwardCompat_(formatManager, v53, v66, v68, (options >> 1) & 1);
  }

  sub_221087AA4(v70);
}

- (BOOL)isBlankNode
{
  if (!self->_groupLevel)
  {
    return 0;
  }

  groupCellValue = self->_groupCellValue;
  return !groupCellValue || objc_msgSend_valueType(groupCellValue, a2, v2, v3) == 10 || objc_msgSend_valueType(self->_groupCellValue, v6, v7, v8) == 0;
}

- (BOOL)isErrorNode
{
  if (!self->_groupLevel)
  {
    return 0;
  }

  groupCellValue = self->_groupCellValue;
  return !groupCellValue || objc_msgSend_valueType(groupCellValue, a2, v2, v3) == 9;
}

- (void)setGroupBy:(id)by
{
  v27 = *MEMORY[0x277D85DE8];
  byCopy = by;
  v5 = byCopy;
  self->_groupBy = byCopy;
  if (byCopy)
  {
    disconnectedRowUids = self->_disconnectedRowUids;
    if (disconnectedRowUids)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_22107F2D4;
      v24[3] = &unk_27845D8B0;
      v24[4] = self;
      v25 = byCopy;
      objc_msgSend_foreachUuid_(disconnectedRowUids, v7, v24, v8);
      v9 = self->_disconnectedRowUids;
      self->_disconnectedRowUids = 0;
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_children;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v20, v26, 16);
  if (v14)
  {
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = objc_msgSend_objectForKey_(self->_children, v12, *(*(&v20 + 1) + 8 * v16), v13, v20);
        objc_msgSend_setGroupBy_(v17, v18, v5, v19);

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v20, v26, 16);
    }

    while (v14);
  }
}

- (void)updateWithDocumentRoot:(id)root
{
  v92 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v81 = rootCopy;
  if (rootCopy)
  {
    v8 = rootCopy;
    v9 = objc_msgSend_documentLocale(rootCopy, v5, v6, v7);
    objc_msgSend_setLocale_(self->_groupCellValue, v10, v9, v11);

    groupCellValue = self->_groupCellValue;
    v16 = objc_msgSend_customFormatList(v8, v13, v14, v15);
    objc_msgSend_updateWithCustomFormatList_(groupCellValue, v17, v16, v18);

    objc_msgSend_updateWithDocumentRoot_(self->_formatManager, v19, v8, v20);
  }

  else
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupNode updateWithDocumentRoot:]", v7);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 614, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v30 = self->_children;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v86, v91, 16);
  if (!v34)
  {
LABEL_26:

    goto LABEL_27;
  }

  LOBYTE(v35) = 0;
  v36 = *v87;
  do
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v87 != v36)
      {
        objc_enumerationMutation(v30);
      }

      v38 = *(*(&v86 + 1) + 8 * i);
      v39 = objc_msgSend_objectForKey_(self->_children, v32, v38, v33);
      objc_msgSend_updateWithDocumentRoot_(v39, v40, v81, v41);
      if (v35)
      {
        v35 = 1;
      }

      else
      {
        v45 = objc_msgSend_groupCellValue(v39, v42, v43, v44);
        v49 = objc_msgSend_canonicalKeyString(v45, v46, v47, v48);

        if (v49)
        {
          v52 = v49;
          isEqualToString = objc_msgSend_isEqualToString_(v49, v50, v38, v51);
        }

        else
        {
          v52 = &stru_2834BADA0;
          isEqualToString = objc_msgSend_isEqualToString_(&stru_2834BADA0, v50, v38, v51);
        }

        v54 = isEqualToString;

        v35 = v54 ^ 1;
      }
    }

    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v86, v91, 16);
  }

  while (v34);

  if (v35)
  {
    objc_msgSend_willModify(self, v55, v56, v57);
    v61 = objc_msgSend_copy(self->_children, v58, v59, v60);
    objc_msgSend_removeAllObjects(self->_children, v62, v63, v64);
    sub_221087B24(&self->_childNodesByRowUid);
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v30 = v61;
    v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v65, &v82, v90, 16);
    if (v68)
    {
      v69 = *v83;
      do
      {
        for (j = 0; j != v68; ++j)
        {
          if (*v83 != v69)
          {
            objc_enumerationMutation(v30);
          }

          v71 = objc_msgSend_objectForKey_(v30, v66, *(*(&v82 + 1) + 8 * j), v67);
          v75 = objc_msgSend_groupCellValue(v71, v72, v73, v74);
          v79 = objc_msgSend_canonicalKeyString(v75, v76, v77, v78);

          objc_msgSend_addChild_withKey_(self, v80, v71, v79);
        }

        v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v66, &v82, v90, 16);
      }

      while (v68);
    }

    goto LABEL_26;
  }

LABEL_27:
}

- (void)p_addChildGroupUidsIntoSet:(id)set recursively:(BOOL)recursively skipFiltered:(BOOL)filtered
{
  filteredCopy = filtered;
  recursivelyCopy = recursively;
  v29 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = self->_children;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v24, v28, 16);
  if (v13)
  {
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = objc_msgSend_objectForKey_(self->_children, v11, *(*(&v24 + 1) + 8 * v15), v12, v24);
        v20 = v16;
        if (!filteredCopy || objc_msgSend_hasUnfilteredRows(v16, v17, v18, v19))
        {
          v21 = objc_msgSend_groupUid(v20, v17, v18, v19);
          objc_msgSend_addUUID_(setCopy, v22, v21, v22);
          if (recursivelyCopy)
          {
            objc_msgSend_p_addChildGroupUidsIntoSet_recursively_skipFiltered_(v20, v23, setCopy, 1, filteredCopy);
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v24, v28, 16);
    }

    while (v13);
  }
}

- (TSCEUIDSet)childGroupUids
{
  v3 = objc_opt_new();
  objc_msgSend_p_addChildGroupUidsIntoSet_recursively_skipFiltered_(self, v4, v3, 1, 0);

  return v3;
}

- (TSCEUIDSet)unfilteredChildGroupUids
{
  v3 = objc_opt_new();
  objc_msgSend_p_addChildGroupUidsIntoSet_recursively_skipFiltered_(self, v4, v3, 1, 1);

  return v3;
}

- (TSCEUIDSet)directChildGroupUids
{
  v3 = objc_opt_new();
  objc_msgSend_p_addChildGroupUidsIntoSet_recursively_skipFiltered_(self, v4, v3, 0, 0);

  return v3;
}

- (TSCEUIDSet)unfilteredDirectChildGroupUids
{
  v3 = objc_opt_new();
  objc_msgSend_p_addChildGroupUidsIntoSet_recursively_skipFiltered_(self, v4, v3, 0, 1);

  return v3;
}

- (id)aggregateRefForType:(unsigned __int8)type atLevel:(unsigned __int8)level forColumnUid:(const TSKUIDStruct *)uid
{
  levelCopy = level;
  typeCopy = type;
  v9 = [TSCECategoryRef alloc];
  v13 = objc_msgSend_groupBy(self, v10, v11, v12);
  v24[0] = objc_msgSend_groupByUid(v13, v14, v15, v16);
  v24[1] = v17;
  v23[0] = objc_msgSend_groupUid(self, v17, v18, v19);
  v23[1] = v20;
  v21 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v9, v20, v24, v23, uid, typeCopy, levelCopy);

  return v21;
}

- (id)groupValueRefAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v5 = [TSCECategoryRef alloc];
  v9 = objc_msgSend_groupBy(self, v6, v7, v8);
  v21[0] = objc_msgSend_groupByUid(v9, v10, v11, v12);
  v21[1] = v13;
  v20[0] = objc_msgSend_groupUid(self, v13, v14, v15);
  v20[1] = v16;
  v19[0] = 0;
  v19[1] = 0;
  v17 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v5, v16, v21, v20, v19, 9, levelCopy);

  return v17;
}

- (id)groupValueHierarchyRefAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v5 = [TSCECategoryRef alloc];
  v9 = objc_msgSend_groupBy(self, v6, v7, v8);
  v21[0] = objc_msgSend_groupByUid(v9, v10, v11, v12);
  v21[1] = v13;
  v20[0] = objc_msgSend_groupUid(self, v13, v14, v15);
  v20[1] = v16;
  v19[0] = 0;
  v19[1] = 0;
  v17 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v5, v16, v21, v20, v19, 8, levelCopy);

  return v17;
}

- (id)findGroupNodeForValue:(id)value atLevel:(unsigned __int8)level locale:(id)locale
{
  levelCopy = level;
  valueCopy = value;
  localeCopy = locale;
  if (objc_msgSend_groupLevel(self, v10, v11, v12) == levelCopy)
  {
    selfCopy = self;
  }

  else if (objc_msgSend_groupLevel(self, v13, v14, v15) >= levelCopy)
  {
    selfCopy = 0;
  }

  else
  {
    v20 = objc_msgSend_groupLevel(self, v17, v18, v19);
    v25 = objc_msgSend_canonicalKeyStringAtLevel_(valueCopy, v21, (v20 + 1), v22);
    if (v25)
    {
      v26 = objc_msgSend_objectForKey_(self->_children, v23, v25, v24);
      selfCopy = objc_msgSend_findGroupNodeForValue_atLevel_locale_(v26, v27, valueCopy, levelCopy, localeCopy);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)findGroupNodeForDisplayValuesFromSplitter:(id)splitter atLevel:(unsigned __int8)level startAtComponent:(unint64_t)component startAtWord:(unint64_t)word preserveFlags:(TSUPreserveFlags *)flags
{
  levelCopy = level;
  v141 = *MEMORY[0x277D85DE8];
  splitterCopy = splitter;
  v134 = self->_groupBy;
  if (!v134 || self->_disconnectedRowUids)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTGroupNode findGroupNodeForDisplayValuesFromSplitter:atLevel:startAtComponent:startAtWord:preserveFlags:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 749, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v130 = objc_msgSend_componentAtIndex_(splitterCopy, v10, component, v11);
  if (objc_msgSend_groupLevel(self, v21, v22, v23) == levelCopy)
  {
    selfCopy = self;
    goto LABEL_43;
  }

  if (objc_msgSend_groupLevel(self, v24, v25, v26) >= levelCopy)
  {
    selfCopy = 0;
    goto LABEL_43;
  }

  v126 = objc_msgSend_wordAtIndex_(v130, v28, word, v29);
  if (objc_msgSend_hasPreserveFlag(v126, v30, v31, v32))
  {
    flags->_flags |= 2u;
  }

  v35 = objc_msgSend_trimmedStringStartingAtWord_(v130, v33, word, v34);
  v39 = objc_msgSend_localizedBlankGroupName(splitterCopy, v36, v37, v38);
  v42 = objc_msgSend_caseInsensitiveCompare_(v35, v40, v39, v41);

  if (!v42)
  {
    v83 = @"nil";
    goto LABEL_25;
  }

  v46 = objc_msgSend_localizedErrorGroupName(splitterCopy, v43, v44, v45);
  v49 = objc_msgSend_caseInsensitiveCompare_(v35, v47, v46, v48);

  if (!v49)
  {
    v83 = @"err";
    goto LABEL_25;
  }

  v51 = objc_msgSend_localizedTrueGroupName(splitterCopy, v43, v50, v45);
  if (!objc_msgSend_caseInsensitiveCompare_(v35, v52, v51, v53))
  {
    v81 = @"boo_TRUE";
LABEL_22:
    v82 = 1;
    goto LABEL_23;
  }

  v57 = objc_msgSend_localizedTrueGroupNameForColumn(splitterCopy, v54, v55, v56);
  v60 = objc_msgSend_caseInsensitiveCompare_(v35, v58, v57, v59);

  if (!v60)
  {
    v83 = @"boo_TRUE";
    goto LABEL_25;
  }

  v51 = objc_msgSend_localizedFalseGroupName(splitterCopy, v43, v61, v45);
  if (!objc_msgSend_caseInsensitiveCompare_(v35, v62, v51, v63))
  {
    v81 = @"boo_FALSE";
    goto LABEL_22;
  }

  v67 = objc_msgSend_localizedFalseGroupNameForColumn(splitterCopy, v64, v65, v66);
  v70 = objc_msgSend_caseInsensitiveCompare_(v35, v68, v67, v69);

  if (v70)
  {
    v51 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v43, @"str_%@", v45, v35);
    v74 = objc_msgSend_locale(v134, v71, v72, v73);
    v78 = objc_msgSend_locale(v74, v75, v76, v77);
    v81 = objc_msgSend_lowercaseStringWithLocale_(v51, v79, v78, v80);

    v82 = 0;
LABEL_23:

    v83 = v81;
    goto LABEL_26;
  }

  v83 = @"boo_FALSE";
LABEL_25:
  v82 = 1;
LABEL_26:
  v125 = v83;
  v127 = objc_msgSend_objectForKey_(self->_children, v43, v83, v45);
  if (!v127)
  {
    goto LABEL_31;
  }

  if (!v82)
  {
    v132 = objc_msgSend_normalizedStringForCompare_(TSTGroupNode, v84, v35, v85);

    v91 = objc_msgSend_groupCellValue(v127, v88, v89, v90);
    v95 = objc_msgSend_groupLevel(v127, v92, v93, v94);
    v97 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v96, v91, v95, v134);
    v100 = objc_msgSend_normalizedStringForCompare_(TSTGroupNode, v98, v97, v99);

    if (!objc_msgSend_caseInsensitiveCompare_(v100, v101, v132, v102))
    {
      v87 = v127;

LABEL_41:
      v35 = v132;
      goto LABEL_42;
    }

    v35 = v132;
LABEL_31:
    v132 = objc_msgSend_normalizedStringForCompare_(TSTGroupNode, v84, v35, v85);

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    obj = self->_children;
    v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v103, &v136, v140, 16);
    if (v106)
    {
      v107 = *v137;
LABEL_33:
      v108 = 0;
      while (1)
      {
        if (*v137 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v87 = objc_msgSend_objectForKey_(self->_children, v104, *(*(&v136 + 1) + 8 * v108), v105);
        v112 = objc_msgSend_groupCellValue(v87, v109, v110, v111);
        v116 = objc_msgSend_groupLevel(v87, v113, v114, v115);
        v118 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v117, v112, v116, v134);
        v121 = objc_msgSend_normalizedStringForCompare_(TSTGroupNode, v119, v118, v120);

        LOBYTE(v118) = objc_msgSend_isEqualToString_(v121, v122, v132, v123);
        if (v118)
        {
          break;
        }

        if (v106 == ++v108)
        {
          v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v104, &v136, v140, 16);
          if (v106)
          {
            goto LABEL_33;
          }

          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:
      v87 = 0;
    }

    goto LABEL_41;
  }

  v87 = v127;
LABEL_42:
  v135 = 0;
  selfCopy = objc_msgSend_findGroupNodeForDisplayValuesFromSplitter_atLevel_startAtComponent_startAtWord_preserveFlags_(v87, v86, splitterCopy, levelCopy, component + 1, 0, &v135);

LABEL_43:

  return selfCopy;
}

- (void)addChangesTo:(id)to forReplacingValue:(id)value atLevel:(unsigned __int8)level
{
  levelCopy = level;
  v39 = *MEMORY[0x277D85DE8];
  toCopy = to;
  valueCopy = value;
  v13 = objc_msgSend_groupValueTuple(self, v10, v11, v12);
  v31 = objc_msgSend_groupValueTupleByReplacingValue_atLevel_(v13, v14, valueCopy, levelCopy);

  v37[0] = objc_msgSend_groupUid(self, v15, v16, v17);
  v37[1] = v18;
  v36[0] = objc_msgSend_groupValueUid(v31, v18, v19, v20);
  v36[1] = v21;
  objc_msgSend_mapPreviousGroupNodeUid_toUpdatedGroupNodeUid_(toCopy, v21, v37, v36);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = self->_children;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v32, v38, 16);
  if (v26)
  {
    v27 = *v33;
    do
    {
      v28 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v22);
        }

        v29 = objc_msgSend_objectForKey_(self->_children, v24, *(*(&v32 + 1) + 8 * v28), v25);
        objc_msgSend_addChangesTo_forReplacingValue_atLevel_(v29, v30, toCopy, valueCopy, levelCopy);

        ++v28;
      }

      while (v26 != v28);
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v32, v38, 16);
    }

    while (v26);
  }
}

- (void)addChangesTo:(id)to forRemovingValueAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v40 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v10 = objc_msgSend_groupValueTuple(self, v7, v8, v9);
  v13 = objc_msgSend_groupValueTupleByRemovingValueAtLevel_(v10, v11, levelCopy, v12);

  if (objc_msgSend_numberOfLevels(v13, v14, v15, v16))
  {
    v38[0] = objc_msgSend_groupUid(self, v17, v18, v19);
    v38[1] = v20;
    v37[0] = objc_msgSend_groupValueUid(v13, v20, v21, v22);
    v37[1] = v23;
    objc_msgSend_mapPreviousGroupNodeUid_toUpdatedGroupNodeUid_(toCopy, v23, v38, v37);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = self->_children;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v33, v39, 16);
  if (v28)
  {
    v29 = *v34;
    do
    {
      v30 = 0;
      do
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v31 = objc_msgSend_objectForKey_(self->_children, v26, *(*(&v33 + 1) + 8 * v30), v27, v33);
        objc_msgSend_addChangesTo_forRemovingValueAtLevel_(v31, v32, toCopy, levelCopy);

        ++v30;
      }

      while (v28 != v30);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v33, v39, 16);
    }

    while (v28);
  }
}

- (void)addChangesTo:(id)to forPromotingValueAtLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel
{
  toLevelCopy = toLevel;
  levelCopy = level;
  v38 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v12 = objc_msgSend_groupValueTuple(self, v9, v10, v11);
  v30 = objc_msgSend_groupValueTupleByPromotingValueAtLevel_toLevel_(v12, v13, levelCopy, toLevelCopy);

  v36[0] = objc_msgSend_groupUid(self, v14, v15, v16);
  v36[1] = v17;
  v35[0] = objc_msgSend_groupValueUid(v30, v17, v18, v19);
  v35[1] = v20;
  objc_msgSend_mapPreviousGroupNodeUid_toUpdatedGroupNodeUid_(toCopy, v20, v36, v35);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = self->_children;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v31, v37, 16);
  if (v25)
  {
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = objc_msgSend_objectForKey_(self->_children, v23, *(*(&v31 + 1) + 8 * v27), v24);
        objc_msgSend_addChangesTo_forPromotingValueAtLevel_toLevel_(v28, v29, toCopy, levelCopy, toLevelCopy);

        ++v27;
      }

      while (v25 != v27);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v31, v37, 16);
    }

    while (v25);
  }
}

- (void)addChangesTo:(id)to forDemotingValueAtLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel
{
  toLevelCopy = toLevel;
  levelCopy = level;
  v38 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v12 = objc_msgSend_groupValueTuple(self, v9, v10, v11);
  v30 = objc_msgSend_groupValueTupleByDemotingValueAtLevel_toLevel_(v12, v13, levelCopy, toLevelCopy);

  v36[0] = objc_msgSend_groupUid(self, v14, v15, v16);
  v36[1] = v17;
  v35[0] = objc_msgSend_groupValueUid(v30, v17, v18, v19);
  v35[1] = v20;
  objc_msgSend_mapPreviousGroupNodeUid_toUpdatedGroupNodeUid_(toCopy, v20, v36, v35);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = self->_children;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v31, v37, 16);
  if (v25)
  {
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = objc_msgSend_objectForKey_(self->_children, v23, *(*(&v31 + 1) + 8 * v27), v24);
        objc_msgSend_addChangesTo_forDemotingValueAtLevel_toLevel_(v28, v29, toCopy, levelCopy, toLevelCopy);

        ++v27;
      }

      while (v25 != v27);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v31, v37, 16);
    }

    while (v25);
  }
}

- (void)p_refreshGroupValue
{
  obj = objc_msgSend_cellValue(self->_formatManager, a2, v2, v3);
  if (obj)
  {
    v8 = objc_msgSend_groupCellValue(self, v5, v6, v7);
    v12 = objc_msgSend_canonicalKeyString(obj, v9, v10, v11);
    v16 = objc_msgSend_canonicalKeyString(v8, v13, v14, v15);
    isEqualToString = objc_msgSend_isEqualToString_(v12, v17, v16, v18);

    if (isEqualToString)
    {
      objc_msgSend_willModify(self, v20, v21, v22);
      objc_storeStrong(&self->_groupCellValue, obj);
    }

    else
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSTGroupNode p_refreshGroupValue]", v22);
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v26);
      v31 = objc_msgSend_canonicalKeyString(obj, v28, v29, v30);
      v35 = objc_msgSend_canonicalKeyString(v8, v32, v33, v34);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v36, v24, v27, 890, 0, "Unexpected new key:%{public}@, expected:%{public}@", v31, v35);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
    }
  }
}

- (BOOL)updateGroupCellValueIfKeyMatches:(id)matches
{
  matchesCopy = matches;
  if (matchesCopy)
  {
    v8 = objc_msgSend_groupCellValue(self, v4, v5, v6);
    v12 = objc_msgSend_canonicalKeyString(matchesCopy, v9, v10, v11);
    v16 = objc_msgSend_canonicalKeyString(v8, v13, v14, v15);
    isEqualToString = objc_msgSend_isEqualToString_(v12, v17, v16, v18);

    if (isEqualToString)
    {
      objc_msgSend_willModify(self, v20, v21, v22);
      v23 = [TSTGroupNodeFormatManager alloc];
      v26 = objc_msgSend_initWithCellValue_(v23, v24, matchesCopy, v25);
      formatManager = self->_formatManager;
      self->_formatManager = v26;

      v31 = objc_msgSend_cellValue(self->_formatManager, v28, v29, v30);
      v35 = objc_msgSend_canonicalKeyString(v31, v32, v33, v34);
      v39 = objc_msgSend_canonicalKeyString(v8, v36, v37, v38);
      v42 = objc_msgSend_isEqualToString_(v35, v40, v39, v41);

      if ((v42 & 1) == 0)
      {
        v46 = MEMORY[0x277D81150];
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSTGroupNode updateGroupCellValueIfKeyMatches:]", v45);
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v49);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v51, v47, v50, 902, 0, "canonicalKeyString shouldn't change here");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54);
      }

      v55 = objc_msgSend_cellValue(self->_formatManager, v43, v44, v45);
      groupCellValue = self->_groupCellValue;
      self->_groupCellValue = v55;
    }
  }

  else
  {
    LOBYTE(isEqualToString) = 0;
  }

  return isEqualToString;
}

- (id)insertRowUid:(const TSKUIDStruct *)uid atRowIndex:(unsigned int)index forGroupValueTuple:(id)tuple atLevel:(unsigned __int8)level withLocale:(id)locale createdGroupNodeCount:(unint64_t *)count
{
  levelCopy = level;
  v10 = *&index;
  v122 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  localeCopy = locale;
  v13 = self->_groupBy;
  objc_msgSend_addRowUid_(self, v14, uid, v15);
  if (objc_msgSend_isForPivotTable(v13, v16, v17, v18))
  {
    if (v10 == 0x7FFFFFFF)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTGroupNode insertRowUid:atRowIndex:forGroupValueTuple:atLevel:withLocale:createdGroupNodeCount:]", v21);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 923, 0, "Pivot table groupBy's EXPECT to be provided with valid rowIndexes");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
    }

    else
    {
      TSUIndexSet::addIndex(&self->_pivotOnlyRowIndexes);
    }
  }

  if (v13)
  {
    v31 = objc_msgSend_groupLevel(self, v19, v20, v21);
    v34 = objc_msgSend_groupValueAtLevel_(tupleCopy, v32, v31, v33);
    if (objc_msgSend_mergedFormatChangedByAddingRowUID_andCellValue_groupBy_(self->_formatManager, v35, uid, v34, v13))
    {
      objc_msgSend_p_refreshGroupValue(self, v36, v37, v38);
    }
  }

  objc_msgSend_didAddRowUID_toGroup_(v13, v19, uid->_lower, uid->_upper, self);
  if (objc_msgSend_numberOfLevels(tupleCopy, v39, v40, v41) >= levelCopy)
  {
    v48 = objc_msgSend_canonicalKeyStringAtLevel_(tupleCopy, v42, levelCopy, v44);
    v111 = v48;
    if (v48)
    {
      v51 = objc_msgSend_objectForKey_(self->_children, v47, v48, v49);
      if (v51)
      {
        v52 = 0;
        selfCopy = 0;
      }

      else
      {
        selfCopy = self;
        v110 = objc_msgSend_prefixTupleToLevel_(tupleCopy, v57, levelCopy, v58);
        v61 = objc_msgSend_groupValueAtLevel_(tupleCopy, v59, levelCopy, v60);
        v62 = [TSTGroupNode alloc];
        v66 = objc_msgSend_groupValueUid(v110, v63, v64, v65);
        v68 = objc_msgSend_initWithGroupCellValue_groupBy_atLevel_groupUid_children_(v62, v67, v61, v13, levelCopy, v66, v67, 0);
        objc_msgSend_setParentNode_(v68, v69, selfCopy, v70);
        if (count)
        {
          ++*count;
        }

        objc_msgSend_addChild_withKey_(selfCopy, v71, v68, v111);
        v52 = v68;
        objc_msgSend_didAddGroupNode_(v13, v72, v52, v73);

        v51 = v52;
      }

      v77 = objc_msgSend_insertRowUid_atRowIndex_forGroupValueTuple_atLevel_withLocale_createdGroupNodeCount_(v51, v50, uid, v10, tupleCopy, (levelCopy + 1), localeCopy, count);
      if (*uid == 0)
      {
        if (self->_groupBy)
        {
          v79 = MEMORY[0x277D81150];
          v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "[TSTGroupNode insertRowUid:atRowIndex:forGroupValueTuple:atLevel:withLocale:createdGroupNodeCount:]", v76);
          v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v82);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v79, v84, v80, v83, 980, 0, "Invalid rowUids should only be coming in for disconnected GroupNodes - normally, we should only add valid rows");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87);
        }
      }

      else
      {
        uidCopy = uid;
        v78 = sub_221086FBC(&self->_childNodesByRowUid, uid, &unk_2217E0160, &uidCopy);
        objc_storeStrong(v78 + 4, v51);
      }

      if (v52)
      {
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v88 = objc_msgSend_aggregators(v13, v74, v75, v76);
        v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v116, v121, 16);
        if (v92)
        {
          v93 = *v117;
          do
          {
            for (i = 0; i != v92; ++i)
            {
              if (*v117 != v93)
              {
                objc_enumerationMutation(v88);
              }

              v95 = *(*(&v116 + 1) + 8 * i);
              v96 = objc_msgSend_aggNodeForGroupNode_(v95, v90, v52, v91);
              v99 = objc_msgSend_aggNodeForGroupNode_(v95, v97, self, v98);
            }

            v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v90, &v116, v121, 16);
          }

          while (v92);
        }

        if (objc_msgSend_isRebuildFormulasDeferred(v13, v100, v101, v102))
        {
          objc_msgSend_setNeedsRebuildOfAggFormulas_(v13, v103, 1, v104);
        }

        else if (v13)
        {
          for (j = self->_aggNodes.__table_.__first_node_.__next_; j; j = *j)
          {
            v106 = j[4];
            objc_msgSend_rebuildFormulasForAggNode_(self, v107, v106, v108);
          }
        }
      }

      if (!selfCopy)
      {
        selfCopy = v77;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    if (objc_msgSend_isRebuildFormulasDeferred(v13, v42, v43, v44))
    {
      objc_msgSend_setNeedsRebuildOfAggFormulas_(v13, v45, 1, v46);
    }

    else if (v13)
    {
      for (k = self->_aggNodes.__table_.__first_node_.__next_; k; k = *k)
      {
        v54 = k[4];
        objc_msgSend_rebuildFormulasForAggNode_(self, v55, v54, v56);
      }
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)removeRowUid:(const TSKUIDStruct *)uid forGroupValueTuple:(id)tuple atLevel:(unsigned __int8)level withLocale:(id)locale
{
  levelCopy = level;
  v101 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  localeCopy = locale;
  v93 = self->_groupBy;
  if (!v93 || self->_disconnectedRowUids)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTGroupNode removeRowUid:forGroupValueTuple:atLevel:withLocale:]", v11, tupleCopy);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 1022, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if (objc_msgSend_containsRowUid_(self, v10, uid, v11, tupleCopy))
  {
    objc_msgSend_willModify(self, v21, v22, v23);
    if (objc_msgSend_isForPivotTable(v93, v24, v25, v26))
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSTGroupNode removeRowUid:forGroupValueTuple:atLevel:withLocale:]", v28);
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v32);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 1027, 0, "Pivot groupBys shouldn't need removeRowUid - we'll need to fix _pivotOnlyRowIndexes if they do");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
    }

    objc_msgSend_lookupKeyForRowUID_(v93, v27, uid, v28);
    TSUIndexSet::removeIndex(&self->_rowUidsIndexSet);
    if (objc_msgSend_mergedFormatChangedByRemovingRowUID_groupBy_(self->_formatManager, v38, uid, v93))
    {
      objc_msgSend_p_refreshGroupValue(self, v39, v40, v41);
    }

    objc_msgSend_didRemoveRowUID_fromGroup_(v93, v39, uid->_lower, uid->_upper, self);
    groupLevel = self->_groupLevel;
    if (groupLevel == objc_msgSend_numberOfLevels(v93, v43, v44, v45))
    {
      if (objc_msgSend_isRebuildFormulasDeferred(v93, v46, v47, v48))
      {
        objc_msgSend_setNeedsRebuildOfAggFormulas_(v93, v49, 1, v50);
      }

      else
      {
        for (i = self->_aggNodes.__table_.__first_node_.__next_; i; i = *i)
        {
          v67 = i[4];
          objc_msgSend_rebuildFormulasForAggNode_(self, v68, v67, v69);
        }
      }
    }

    else if (v92)
    {
      v53 = objc_msgSend_canonicalKeyStringAtLevel_(v92, v46, levelCopy, v48);
      if (v53)
      {
        v54 = objc_msgSend_objectForKey_(self->_children, v51, v53, v52);
        objc_msgSend_removeRowUid_forGroupValueTuple_atLevel_withLocale_(v54, v55, uid, v92, (levelCopy + 1), localeCopy);
        sub_221087578(&self->_childNodesByRowUid.__table_.__bucket_list_.__ptr_, uid);
        if (!objc_msgSend_rowCount(v54, v56, v57, v58))
        {
          objc_msgSend_willRemoveGroupNode_(v93, v59, v54, v60);
          objc_msgSend_removeChildForKey_(self, v61, v53, v62);
          objc_msgSend_clearAllGroupNodes(v54, v63, v64, v65);
        }
      }
    }

    else
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v70 = objc_msgSend_allKeys(self->_children, v46, v47, v48);
      obj = v70;
      v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v96, v100, 16);
      if (v74)
      {
        v75 = *v97;
        v76 = levelCopy + 1;
        do
        {
          for (j = 0; j != v74; ++j)
          {
            if (*v97 != v75)
            {
              objc_enumerationMutation(obj);
            }

            v78 = *(*(&v96 + 1) + 8 * j);
            v79 = objc_msgSend_objectForKey_(self->_children, v72, v78, v73);
            objc_msgSend_removeRowUid_forGroupValueTuple_atLevel_withLocale_(v79, v80, uid, 0, v76, localeCopy);
            sub_221087578(&self->_childNodesByRowUid.__table_.__bucket_list_.__ptr_, uid);
            if (!objc_msgSend_rowCount(v79, v81, v82, v83))
            {
              objc_msgSend_willRemoveGroupNode_(v93, v84, v79, v85);
              objc_msgSend_removeChildForKey_(self, v86, v78, v87);
              objc_msgSend_clearAllGroupNodes(v79, v88, v89, v90);
            }
          }

          v70 = obj;
          v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v72, &v96, v100, 16);
        }

        while (v74);
      }
    }
  }
}

- (void)removeRowUids:(id)uids
{
  v96 = *MEMORY[0x277D85DE8];
  uidsCopy = uids;
  v79 = self->_groupBy;
  if (!v79 || self->_disconnectedRowUids)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupNode removeRowUids:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1083, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  if (objc_msgSend_rowCount(self, v5, v6, v7))
  {
    objc_msgSend_willModify(self, v17, v18, v19);
    v20 = objc_opt_new();
    if (objc_msgSend_isForPivotTable(v79, v21, v22, v23))
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTGroupNode removeRowUids:]", v25);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 1089, 0, "Pivot groupBys shouldn't need removeRowUids - we'll need to fix _pivotOnlyRowIndexes if they do");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
    }

    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = sub_221082180;
    v91[3] = &unk_27845D948;
    v35 = v79;
    v92 = v35;
    selfCopy = self;
    v36 = v20;
    v94 = v36;
    objc_msgSend_foreachUuid_(uidsCopy, v37, v91, v38);
    if (objc_msgSend_count(v36, v39, v40, v41))
    {
      v87 = 0;
      v88 = &v87;
      v89 = 0x2020000000;
      v90 = 0;
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = sub_221082204;
      v84[3] = &unk_27845D970;
      v84[4] = self;
      v42 = v35;
      v85 = v42;
      v86 = &v87;
      objc_msgSend_foreachUuid_(v36, v43, v84, v44);
      if (*(v88 + 24) == 1)
      {
        objc_msgSend_p_refreshGroupValue(self, v45, v46, v47);
      }

      groupLevel = self->_groupLevel;
      if (groupLevel == objc_msgSend_numberOfLevels(v42, v45, v46, v47))
      {
        if (objc_msgSend_isRebuildFormulasDeferred(v42, v49, v50, v51))
        {
          objc_msgSend_setNeedsRebuildOfAggFormulas_(v42, v52, 1, v53);
        }

        else
        {
          for (i = self->_aggNodes.__table_.__first_node_.__next_; i; i = *i)
          {
            v76 = i[4];
            objc_msgSend_rebuildFormulasForAggNode_(self, v77, v76, v78);
          }
        }
      }

      else
      {
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v54 = objc_msgSend_allKeys(self->_children, v49, v50, v51);
        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v80, v95, 16);
        if (v58)
        {
          v59 = *v81;
          do
          {
            for (j = 0; j != v58; ++j)
            {
              if (*v81 != v59)
              {
                objc_enumerationMutation(v54);
              }

              v61 = *(*(&v80 + 1) + 8 * j);
              v62 = objc_msgSend_objectForKey_(self->_children, v56, v61, v57);
              objc_msgSend_removeRowUids_(v62, v63, uidsCopy, v64);
              if (!objc_msgSend_rowCount(v62, v65, v66, v67))
              {
                objc_msgSend_willRemoveGroupNode_(v42, v68, v62, v69);
                objc_msgSend_removeChildForKey_(self, v70, v61, v71);
                objc_msgSend_clearAllGroupNodes(v62, v72, v73, v74);
              }
            }

            v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v56, &v80, v95, 16);
          }

          while (v58);
        }
      }

      _Block_object_dispose(&v87, 8);
    }
  }
}

+ (BOOL)needFormulasForAggregateType:(unsigned __int8)type
{
  if (type <= 0x21u)
  {
    if (((1 << type) & 0x66A23E) != 0 || ((1 << type) & 0x3FC194000) != 0)
    {
      return 1;
    }

    if (type == 11)
    {
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTGroupNode needFormulasForAggregateType:]", v3);
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v8);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 1169, 0, "Shouldn't be asking if TSCEAggType_Indirect needs formulas");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
      return 1;
    }
  }

  if (type == 240)
  {
    return 1;
  }

  if (type == 255)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTGroupNode needFormulasForAggregateType:]", v3);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 1193, 0, "Shouldn't be asking if TSCEAggType_INVALID needs formulas");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  return 0;
}

- (void)rebuildFormulasForAggNode:(id)node
{
  nodeCopy = node;
  v8 = self->_groupBy;
  if (!v8 || self->_disconnectedRowUids)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupNode rebuildFormulasForAggNode:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1203, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v127 = objc_msgSend_categoryOwner(v8, v5, v6, v7);
  v126 = objc_msgSend_aggregator(nodeCopy, v18, v19, v20);
  v24 = objc_msgSend_calcEngine(v127, v21, v22, v23);
  objc_msgSend_willModify(self, v25, v26, v27);
  objc_msgSend_willModify(v126, v28, v29, v30);
  v34 = objc_msgSend_aggregator(nodeCopy, v31, v32, v33);
  v38 = objc_msgSend_columnUid(v34, v35, v36, v37);
  v40 = v39;

  v155 = 0;
  v156 = &v155;
  v157 = 0x5812000000;
  v158 = sub_221082C84;
  v159 = sub_221082C90;
  v160 = &unk_22188E88F;
  memset(v161, 0, sizeof(v161));
  v162 = 1065353216;
  v154[0] = MEMORY[0x277D85DD0];
  v154[1] = 3221225472;
  v154[2] = sub_221082C98;
  v154[3] = &unk_27845D998;
  v154[4] = &v155;
  objc_msgSend_enumerateDirectChildren_(nodeCopy, v41, v154, v42);
  v149[0] = MEMORY[0x277D85DD0];
  v149[1] = 3221225472;
  v149[2] = sub_221082D18;
  v149[3] = &unk_27845D9C0;
  v152 = v38;
  v153 = v40;
  v43 = nodeCopy;
  v150 = v43;
  v151 = &v155;
  objc_msgSend_enumerateDirectChildren_(self, v44, v149, v45);
  if (v156[9])
  {
    for (i = v156[8]; i; i = *i)
    {
      v50 = i[3];
      v140 = objc_msgSend_ownerUID(v8, v51, v52, v53);
      v141 = v54;
      objc_msgSend_clearAggFormulas_inOwner_(v50, v54, v24, &v140);
      objc_msgSend_removeChild_skipWillModify_(v43, v55, v50, 1);
      v140 = objc_msgSend_formulaCoord(v50, v56, v57, v58);
      objc_msgSend_clearAggNode_forFormulaCoord_(v8, v59, v50, &v140);
    }
  }

  v140 = 0;
  v141 = &v140;
  v142 = 0x4812000000;
  v143 = sub_221082DB8;
  v144 = sub_221082DDC;
  v145 = &unk_22188E88F;
  v147 = 0;
  v148 = 0;
  v146 = 0;
  groupLevel = self->_groupLevel;
  if (groupLevel == objc_msgSend_numberOfLevels(v8, v46, v47, v48))
  {
    v64 = objc_msgSend_tableModel(v127, v61, v62, v63);
    if (objc_msgSend_isForPivotTable(v8, v65, v66, v67))
    {
      *&v132 = objc_msgSend_tableUID(v64, v68, v69, v70);
      *(&v132 + 1) = v71;
      if (v126)
      {
        objc_msgSend_cellRefsForRowIndexes_tableUID_(v126, v71, &self->_pivotOnlyRowIndexes, &v132);
        v74 = *&v131.var0;
      }

      else
      {
        v74 = 0uLL;
      }

      v125 = v74;
      v88 = objc_msgSend_hiddenStates(v8, v71, v72, v73);

      if (v88)
      {
        v134 = MEMORY[0x277D85DD0];
        v135 = 3221225472;
        v136 = sub_221082DF4;
        v137 = &unk_27845D9E8;
        v138 = v8;
        v139 = &v140;
        TSUIndexSet::enumerateRangesUsingBlock();
      }
    }

    else
    {
      v76 = objc_msgSend_columnRowUIDMap(v64, v68, v69, v70);
      objc_msgSend_rowUidsAsVector(self, v77, v78, v79);
      v82 = objc_msgSend_rowIndexesForUIDs_(v76, v80, __p, v81);
      MEMORY[0x223D9F7A0](&v131, v82);
      v129[0] = objc_msgSend_tableUID(v64, v83, v84, v85);
      v129[1] = v86;
      if (v126)
      {
        objc_msgSend_cellRefsForRowIndexes_tableUID_(v126, v86, &v131, v129);
        v87 = v132;
      }

      else
      {
        v87 = 0uLL;
      }

      v125 = v87;
      v132 = 0uLL;
      v133 = 0;
      TSUIndexSet::~TSUIndexSet(&v131);

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    if (v126)
    {
      objc_msgSend_cellRefsForAggNodesAtGroup_(v126, v61, self, v63);
      v75 = *&v131.var0;
    }

    else
    {
      v75 = 0uLL;
    }

    v125 = v75;
  }

  if (objc_msgSend_anyAggregateTypeForColumnUID_(v8, v61, v38, v40))
  {
    v92 = v125 == *(&v125 + 1);
  }

  else
  {
    v92 = 1;
  }

  v93 = !v92;
  v94 = objc_msgSend_minion(v127, v89, v90, v91);
  v95 = v94;
  if (v94)
  {
    v96 = v94;
  }

  else
  {
    v96 = v24;
  }

  v97 = v96;

  v132 = 0uLL;
  *&v132 = objc_msgSend_groupByUid(v8, v98, v99, v100);
  *(&v132 + 1) = v101;
  if (v93)
  {
    v106 = objc_msgSend_emptyReferenceSetWrapper(v24, v101, v102, v103);
    v107 = v125;
    do
    {
      objc_msgSend_insertCellRef_(v106, v104, v107, v105);
      v107 += 24;
    }

    while (v107 != *(&v125 + 1));
    v110 = v141[6];
    v109 = v141[7];
    while (v110 != v109)
    {
      objc_msgSend_insertRangeRef_(v106, v104, v110, v105);
      v110 += 32;
    }

    if (objc_msgSend_isForPivotTable(v8, v104, v108, v105))
    {
      if (v8)
      {
        objc_msgSend_hiddenStatesChangedPrecedent(v8, v112, v113, v114);
      }

      else
      {
        memset(&v131, 0, 24);
      }

      objc_msgSend_insertCellRef_(v106, v112, &v131, v114);
    }

    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v131, 0, 1);
    v131.var2 = 1;
    v131.var6._lower = objc_msgSend_groupUid(self, v115, v116, v117);
    v131.var6._upper = v118;
    __p[0] = objc_msgSend_formulaCoord(v43, v118, v119, v120);
    TSUCellCoord::verifyCoordIsSane(__p);
    __p[0] = objc_msgSend_formulaCoord(v43, v121, v122, v123);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v128, &v131);
    objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(v97, v124, __p, &v132, v106, &v128);
  }

  else
  {
    *&v131.var0 = objc_msgSend_formulaCoord(v43, v101, v102, v103);
    objc_msgSend_removeFormulaAt_inOwner_(v97, v111, &v131, &v132);
  }

  _Block_object_dispose(&v140, 8);
  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }

  _Block_object_dispose(&v155, 8);
  sub_221087B80(v161);

  if (v125)
  {
    operator delete(v125);
  }
}

- (void)markAsDirtyWithCalcEngine:(id)engine
{
  engineCopy = engine;
  next = self->_aggNodes.__table_.__first_node_.__next_;
  if (next)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = next[4];
      v12 = v8;
      if (!v6)
      {
        if (v7)
        {
          v6 = 0;
        }

        else
        {
          v13 = objc_msgSend_aggregator(v8, v9, v10, v11);
          v17 = objc_msgSend_groupBy(v13, v14, v15, v16);
          v6 = objc_msgSend_groupByUid(v17, v18, v19, v20);
          v7 = v21;
        }
      }

      v24[0] = objc_msgSend_formulaCoord(v12, v9, v10, v11);
      v24[1] = v6;
      v24[2] = v7;
      objc_msgSend_markCellRefAsDirty_(engineCopy, v22, v24, v23);

      next = *next;
    }

    while (next);
  }
}

- (void)markDependentsAsDirtyWithCalcEngine:(id)engine
{
  engineCopy = engine;
  next = self->_aggNodes.__table_.__first_node_.__next_;
  if (next)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = next[4];
      v12 = v8;
      if (!v6)
      {
        if (v7)
        {
          v6 = 0;
        }

        else
        {
          v13 = objc_msgSend_aggregator(v8, v9, v10, v11);
          v17 = objc_msgSend_groupBy(v13, v14, v15, v16);
          v6 = objc_msgSend_groupByUid(v17, v18, v19, v20);
          v7 = v21;
        }
      }

      v24[0] = objc_msgSend_formulaCoord(v12, v9, v10, v11);
      v24[1] = v6;
      v24[2] = v7;
      objc_msgSend_markOnlyDependentsDirty_(engineCopy, v22, v24, v23);

      next = *next;
    }

    while (next);
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)unfilteredRowUidsAsVector
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x4812000000;
  v28 = sub_22108332C;
  v29 = sub_221083350;
  *__p = 0u;
  v31 = 0u;
  v5 = TSUIndexSet::count(&self->_rowUidsIndexSet);
  sub_221083368(&__p[1], v5);
  v6 = self->_groupBy;
  v10 = v6;
  if (v6)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = sub_221083408;
    v22 = &unk_27845DA10;
    v23 = v6;
    v24 = &v25;
    TSUIndexSet::enumerateIndexesUsingBlock();
  }

  else
  {
    disconnectedRowUids = self->_disconnectedRowUids;
    if (disconnectedRowUids)
    {
      objc_msgSend_uuidsAsVector(disconnectedRowUids, v7, v8, v9);
      v12 = v26;
      v14 = v26 + 6;
      v13 = v26[6];
      if (v13)
      {
        v26[7] = v13;
        operator delete(v13);
        *v14 = 0;
        v14[1] = 0;
        v14[2] = 0;
      }

      *(v12 + 3) = v17;
      v12[8] = v18;
    }
  }

  v15 = v26;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v15[6], v15[7], (v15[7] - v15[6]) >> 4);

  _Block_object_dispose(&v25, 8);
  result = __p[1];
  if (__p[1])
  {
    *&v31 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowUidsAsVector
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x4812000000;
  v39 = sub_22108332C;
  v40 = sub_221083350;
  v41 = 0u;
  v42 = 0u;
  v5 = TSUIndexSet::count(&self->_rowUidsIndexSet);
  sub_221083368(&v41 + 1, v5);
  v6 = self->_groupBy;
  v10 = v6;
  if (v6)
  {
    if (objc_msgSend_isForPivotTable(v6, v7, v8, v9))
    {
      v14 = objc_msgSend_hiddenStates(v10, v11, v12, v13);
      v18 = objc_msgSend_rowHiddenStateExtent(v14, v15, v16, v17);

      TSUIndexSet::TSUIndexSet(&v35);
      if (v18 && objc_msgSend_hasActiveFilters(v18, v19, v20, v21))
      {
        TSUIndexSet::operator=();
        v25 = objc_msgSend_mutableFilteredIndexes(v18, v22, v23, v24);
        MEMORY[0x223D9F7A0](&v34, v25);
        TSUIndexSet::removeIndexes(&v35, &v34);
        TSUIndexSet::~TSUIndexSet(&v34);
      }

      else
      {
        TSUIndexSet::operator=();
      }

      v33 = v10;
      TSUIndexSet::enumerateIndexesUsingBlock();

      TSUIndexSet::~TSUIndexSet(&v35);
    }

    else
    {
      v32 = v10;
      TSUIndexSet::enumerateIndexesUsingBlock();
    }
  }

  else
  {
    disconnectedRowUids = self->_disconnectedRowUids;
    if (disconnectedRowUids)
    {
      objc_msgSend_uuidsAsVector(disconnectedRowUids, v7, v8, v9);
      v27 = v37;
      v29 = v37 + 6;
      v28 = v37[6];
      if (v28)
      {
        v37[7] = v28;
        operator delete(v28);
        *v29 = 0;
        v29[1] = 0;
        v29[2] = 0;
      }

      *(v27 + 3) = v35;
      v27[8] = v35._singleRange._end;
    }
  }

  v30 = v37;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v30[6], v30[7], (v30[7] - v30[6]) >> 4);

  _Block_object_dispose(&v36, 8);
  result = *(&v41 + 1);
  if (*(&v41 + 1))
  {
    *&v42 = *(&v41 + 1);
    operator delete(*(&v41 + 1));
  }

  return result;
}

- (TSUIndexSet)pivotOnlyRowIndexes
{
  *retstr |= 3u;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  retstr->_singleRange = vnegq_f64(v3);
  retstr->_multipleRanges = 0;
  return TSUIndexSet::operator=();
}

- (void)enumerateRowUidsWithBlock:(id)block
{
  blockCopy = block;
  v7 = blockCopy;
  if (self->_groupBy)
  {
    v9 = blockCopy;
    TSUIndexSet::enumerateIndexesUsingBlock();
  }

  else
  {
    disconnectedRowUids = self->_disconnectedRowUids;
    if (disconnectedRowUids)
    {
      objc_msgSend_foreachUuid_(disconnectedRowUids, v5, v7, v6);
    }
  }
}

- (void)addRowUid:(const TSKUIDStruct *)uid
{
  if (*uid != 0)
  {
    objc_msgSend_willModify(self, a2, uid, v3);
    v6 = self->_groupBy;
    v12 = v6;
    if (v6)
    {
      objc_msgSend_lookupKeyForRowUID_(v6, v7, uid, v8);
      TSUIndexSet::addIndex(&self->_rowUidsIndexSet);
    }

    else
    {
      disconnectedRowUids = self->_disconnectedRowUids;
      if (!disconnectedRowUids)
      {
        v10 = objc_opt_new();
        v11 = self->_disconnectedRowUids;
        self->_disconnectedRowUids = v10;

        disconnectedRowUids = self->_disconnectedRowUids;
      }

      objc_msgSend_addUUID_(disconnectedRowUids, v7, uid->_lower, uid->_upper);
    }
  }
}

- (BOOL)containsRowUid:(const TSKUIDStruct *)uid
{
  groupBy = self->_groupBy;
  if (groupBy)
  {
    if (objc_msgSend_findKeyForRowUid_(groupBy, a2, uid, v3) != -1)
    {

      return TSUIndexSet::containsIndex(&self->_rowUidsIndexSet);
    }

    return 0;
  }

  disconnectedRowUids = self->_disconnectedRowUids;
  if (!disconnectedRowUids)
  {
    return 0;
  }

  upper = uid->_upper;
  lower = uid->_lower;

  return objc_msgSend_containsUuid_(disconnectedRowUids, a2, lower, upper);
}

- (BOOL)containsAnyRowUidInRowUidSet:(id)set
{
  setCopy = set;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v8 = self->_groupBy;
  if (!v8 || self->_disconnectedRowUids)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupNode containsAnyRowUidInRowUidSet:]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 1451, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  if (objc_msgSend_count(setCopy, v5, v6, v7))
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_221083E14;
    v22[3] = &unk_27845DA60;
    selfCopy = self;
    v25 = &v26;
    v23 = v8;
    objc_msgSend_foreachUuid_(setCopy, v18, v22, v19);
  }

  v20 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v20;
}

- (void)removeAllRowUids
{
  v28 = *MEMORY[0x277D85DE8];
  objc_msgSend_willModify(self, a2, v2, v3);
  disconnectedRowUids = self->_disconnectedRowUids;
  self->_disconnectedRowUids = 0;

  TSUIndexSet::removeAllIndexes(&self->_rowUidsIndexSet);
  objc_msgSend_reset(self->_formatManager, v6, v7, v8);
  objc_msgSend_p_refreshGroupValue(self, v9, v10, v11);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = self->_children;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v23, v27, 16);
  if (v16)
  {
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = objc_msgSend_objectForKey_(self->_children, v14, *(*(&v23 + 1) + 8 * v18), v15, v23);
        objc_msgSend_removeAllRowUids(v19, v20, v21, v22);

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v23, v27, 16);
    }

    while (v16);
  }

  sub_221087B24(&self->_childNodesByRowUid);
}

- (void)clearAllGroupNodes
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = self->_groupBy;
  if (!v6 || self->_disconnectedRowUids)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTGroupNode clearAllGroupNodes]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1488, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  objc_msgSend_willModify(self, v3, v4, v5);
  v19 = objc_msgSend_categoryOwner(v6, v16, v17, v18);
  v23 = objc_msgSend_calcEngine(v19, v20, v21, v22);

  for (i = self->_aggNodes.__table_.__first_node_.__next_; i; i = *i)
  {
    v25 = i[4];
    v65[0] = objc_msgSend_formulaCoord(v25, v26, v27, v28);
    objc_msgSend_clearAggNode_forFormulaCoord_(v6, v29, v25, v65);
    v66 = objc_msgSend_formulaCoord(v25, v30, v31, v32);
    v65[0] = objc_msgSend_groupByUid(v6, v33, v34, v35);
    v65[1] = v36;
    objc_msgSend_removeFormulaAt_inOwner_(v23, v36, &v66, v65);
    v65[0] = objc_msgSend_formulaCoord(v25, v37, v38, v39);
    objc_msgSend_freeAggFormulaCoord_(v6, v40, v65, v41);
  }

  sub_221087B24(&self->_aggNodes);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v42 = self->_children;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v61, v67, 16);
  if (v46)
  {
    v47 = *v62;
    do
    {
      v48 = 0;
      do
      {
        if (*v62 != v47)
        {
          objc_enumerationMutation(v42);
        }

        v49 = objc_msgSend_objectForKey_(self->_children, v44, *(*(&v61 + 1) + 8 * v48), v45, v61);
        objc_msgSend_clearAllGroupNodes(v49, v50, v51, v52);

        ++v48;
      }

      while (v46 != v48);
      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v44, &v61, v67, 16);
    }

    while (v46);
  }

  os_unfair_lock_lock(&self->_childrenLock);
  objc_msgSend_removeAllObjects(self->_children, v53, v54, v55);
  os_unfair_lock_unlock(&self->_childrenLock);
  objc_msgSend_removeAllRowUids(self, v56, v57, v58);
  objc_msgSend_setParentNode_(self, v59, 0, v60);
}

- (void)clearEmptyNodes
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = self->_groupBy;
  if (!v6 || self->_disconnectedRowUids)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTGroupNode clearEmptyNodes]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1519, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  objc_msgSend_willModify(self, v3, v4, v5);
  objc_msgSend_allKeys(self->_children, v16, v17, v18);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v19 = v54 = 0u;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v53, v58, 16);
  if (v23)
  {
    v24 = *v54;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v54 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v53 + 1) + 8 * i);
        v27 = objc_msgSend_objectForKey_(self->_children, v21, v26, v22);
        objc_msgSend_clearEmptyNodes(v27, v28, v29, v30);
        if (objc_msgSend_rowCount(v27, v31, v32, v33))
        {
          v37 = objc_msgSend_groupNodesByGroupUid(v6, v34, v35, v36);
          v52[0] = objc_msgSend_groupUid(v27, v38, v39, v40);
          v52[1] = v41;
          v57 = v52;
          v42 = sub_2210880A0(v37, v52, &unk_2217E0160, &v57);
          objc_storeStrong(v42 + 4, v27);
        }

        else
        {
          objc_msgSend_willRemoveGroupNode_(v6, v34, v27, v36);
          objc_msgSend_removeChildForKey_(self, v46, v26, v47);
          objc_msgSend_clearAllGroupNodes(v27, v48, v49, v50);
        }

        if (!objc_msgSend_count(self->_children, v43, v44, v45))
        {
          children = self->_children;
          self->_children = 0;
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v53, v58, 16);
    }

    while (v23);
  }
}

- (id)groupValueAtLevel:(unsigned __int8)level
{
  groupLevel = self->_groupLevel;
  if (groupLevel == level)
  {
    v5 = self->_groupCellValue;
  }

  else if (groupLevel > level)
  {
    levelCopy = level;
    v7 = objc_msgSend_parentNode(self, a2, level, v3);
    v5 = objc_msgSend_groupValueAtLevel_(v7, v8, levelCopy, v9);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)canonicalKeyStringAtLevel:(unsigned __int8)level
{
  groupLevel = self->_groupLevel;
  if (groupLevel == level)
  {
    v5 = objc_msgSend_canonicalKeyString(self->_groupCellValue, a2, level, v3);
  }

  else if (groupLevel > level)
  {
    levelCopy = level;
    v7 = objc_msgSend_parentNode(self, a2, level, v3);
    v5 = objc_msgSend_canonicalKeyStringAtLevel_(v7, v8, levelCopy, v9);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)normalizedStringForCompare:(id)compare
{
  v3 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(compare, a2, @"“", @"");
  v5 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v3, v4, @"”", @"");

  v7 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v6, @"„", @"");

  v9 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v7, v8, @"‟", @"");

  v11 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v9, v10, @"״", @"");

  v13 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v11, v12, @"\u200E", &stru_2834BADA0);

  v15 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v13, v14, @"\u200F", &stru_2834BADA0);

  return v15;
}

+ (id)localizedStringForCellValue:(id)value categoryLevel:(unsigned __int8)level groupBy:(id)by
{
  levelCopy = level;
  valueCopy = value;
  byCopy = by;
  if (valueCopy)
  {
    v12 = objc_msgSend_valueType(valueCopy, v8, v9, v10);
    if (!v12)
    {
      v16 = objc_msgSend_locale(valueCopy, v13, v14, v15);
      v19 = objc_msgSend_localizedNameForBlankGroupForDocumentLocale_(TSTGroupBy, v53, v16, v54);
      goto LABEL_15;
    }

    if (v12 == 2)
    {
      if (byCopy)
      {
        v31 = objc_msgSend_tsceValue(valueCopy, v13, v14, v15);
        v35 = objc_msgSend_BOOLean(v31, v32, v33, v34);

        v39 = objc_msgSend_tableInfo(byCopy, v36, v37, v38);
        v16 = v39;
        if (v39)
        {
          v43 = objc_msgSend_columnDisplayNameForCategoryLevel_(v39, v40, levelCopy, v42);
          v48 = objc_msgSend_locale(byCopy, v44, v45, v46);
          if (v35)
          {
            objc_msgSend_localizedTrueStringForBooleanGroupWithString_documentLocale_(TSTGroupBy, v47, v43, v48);
          }

          else
          {
            objc_msgSend_localizedFalseStringForBooleanGroupWithString_documentLocale_(TSTGroupBy, v47, v43, v48);
          }
          v55 = ;

          goto LABEL_23;
        }

        v43 = objc_msgSend_locale(byCopy, v40, v41, v42);
        if (v35)
        {
          objc_msgSend_trueString(v43, v59, v60, v61);
        }

        else
        {
          objc_msgSend_falseString(v43, v59, v60, v61);
        }
        v58 = ;
LABEL_17:
        v55 = v58;
LABEL_23:

LABEL_24:
        v43 = v55;
        if (v55)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else if (v12 == 9)
    {
      v16 = objc_msgSend_locale(valueCopy, v13, v14, v15);
      v19 = objc_msgSend_localizedNameForErrorGroupForDocumentLocale_(TSTGroupBy, v17, v16, v18);
LABEL_15:
      v55 = v19;
      goto LABEL_24;
    }

    v43 = objc_msgSend_displayString(valueCopy, v13, v14, v15);
    if (objc_msgSend_length(v43, v49, v50, v51))
    {
      if (v43)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v16 = objc_msgSend_locale(valueCopy, v29, v52, v30);
    v58 = objc_msgSend_localizedNameForBlankGroupForDocumentLocale_(TSTGroupBy, v56, v16, v57);
    goto LABEL_17;
  }

  v20 = MEMORY[0x277D81150];
  v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSTGroupNode localizedStringForCellValue:categoryLevel:groupBy:]", v10);
  v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v23);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 1633, 0, "No value to turn into a string!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
LABEL_25:
  v62 = MEMORY[0x277D81150];
  v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "+[TSTGroupNode localizedStringForCellValue:categoryLevel:groupBy:]", v30);
  v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v65);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v67, v63, v66, 1636, 0, "invalid nil value for '%{public}s'", "result");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70);
  v43 = &stru_2834BADA0;
LABEL_26:

  return v43;
}

- (id)rawGroupValueCellValue
{
  v6 = self->_groupBy;
  if (!v6 || self->_disconnectedRowUids)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTGroupNode rawGroupValueCellValue]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1646, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = objc_msgSend_groupCellValue(self, v3, v4, v5);
  if (objc_msgSend_valueType(v16, v17, v18, v19) == 9)
  {
    objc_opt_class();
    v20 = TSUDynamicCast();
    v24 = v20;
    if (!v20 || ((objc_msgSend_errorValue(v20, v21, v22, v23), v25 = objc_claimAutoreleasedReturnValue(), (v29 = v25) == 0) ? (v30 = 0, isCircularReferenceError = objc_msgSend_isCircularReferenceError(0, v26, v27, v28)) : (objc_msgSend_error(v25, v26, v27, v28), v30 = objc_claimAutoreleasedReturnValue(), isCircularReferenceError = objc_msgSend_isCircularReferenceError(v30, v31, v32, v33)), v35 = isCircularReferenceError, v30, v29, (v35 & 1) == 0))
    {
      v36 = objc_msgSend_groupLevel(self, v21, v22, v23);
      v38 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v37, v16, v36, v6);
      v39 = [TSCEStringCellValue alloc];
      v43 = objc_msgSend_locale(v6, v40, v41, v42);
      v45 = objc_msgSend_initWithString_locale_(v39, v44, v38, v43);

      v16 = v45;
    }
  }

  return v16;
}

- (id)groupValueCellValue
{
  v6 = self->_groupBy;
  if (!v6 || self->_disconnectedRowUids)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTGroupNode groupValueCellValue]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1672, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = objc_msgSend_groupCellValue(self, v3, v4, v5);
  if (objc_msgSend_valueType(v16, v17, v18, v19) != 9 || (objc_opt_class(), TSUDynamicCast(), v23 = objc_claimAutoreleasedReturnValue(), (v24 = v23) == 0) || ((objc_msgSend_errorValue(v23, v20, v21, v22), v25 = objc_claimAutoreleasedReturnValue(), (v29 = v25) == 0) ? (v30 = 0, isCircularReferenceError = objc_msgSend_isCircularReferenceError(0, v26, v27, v28)) : (objc_msgSend_error(v25, v26, v27, v28), v30 = objc_claimAutoreleasedReturnValue(), isCircularReferenceError = objc_msgSend_isCircularReferenceError(v30, v31, v32, v33)), v35 = isCircularReferenceError, v30, v29, v24, (v35 & 1) == 0))
  {
    v36 = objc_msgSend_groupLevel(self, v20, v21, v22);
    v38 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v37, v16, v36, v6);
    v39 = [TSCEStringCellValue alloc];
    v43 = objc_msgSend_locale(v6, v40, v41, v42);
    v45 = objc_msgSend_initWithString_locale_(v39, v44, v38, v43);

    v16 = v45;
  }

  return v16;
}

- (id)groupValueCellValueForGroupBySet:(id)set aggIndex:(unsigned __int16)index appendAggregateName:(BOOL)name
{
  nameCopy = name;
  indexCopy = index;
  setCopy = set;
  v10 = self->_groupBy;
  if (!v10 || self->_disconnectedRowUids)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTGroupNode groupValueCellValueForGroupBySet:aggIndex:appendAggregateName:]", v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 1699, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = objc_msgSend_groupCellValue(self, v7, v8, v9);
  v27 = objc_msgSend_locale(v20, v21, v22, v23);
  if (!v27)
  {
    v27 = objc_msgSend_locale(v10, v24, v25, v26);
  }

  if (!self->_groupLevel)
  {
    v28 = objc_msgSend_localizedStringForKey_value_table_(v27, v24, @"Grand Total", &stru_2834BADA0, @"TSTables");
    v29 = [TSCEStringCellValue alloc];
    v31 = objc_msgSend_initWithString_locale_(v29, v30, v28, v27);

    v20 = v31;
  }

  if (objc_msgSend_valueType(v20, v24, v25, v26) != 9 || (objc_opt_class(), TSUDynamicCast(), v35 = objc_claimAutoreleasedReturnValue(), (v36 = v35) == 0) || ((objc_msgSend_errorValue(v35, v32, v33, v34), v37 = objc_claimAutoreleasedReturnValue(), (v41 = v37) == 0) ? (v42 = 0, isCircularReferenceError = objc_msgSend_isCircularReferenceError(0, v38, v39, v40)) : (objc_msgSend_error(v37, v38, v39, v40), v42 = objc_claimAutoreleasedReturnValue(), isCircularReferenceError = objc_msgSend_isCircularReferenceError(v42, v43, v44, v45)), v47 = isCircularReferenceError, v42, v41, v36, (v47 & 1) == 0))
  {
    v48 = objc_msgSend_groupLevel(self, v32, v33, v34);
    v50 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v49, v20, v48, v10);
    v51 = [TSCEStringCellValue alloc];
    v53 = objc_msgSend_initWithString_locale_(v51, v52, v50, v27);

    if (nameCopy)
    {
      v57 = objc_msgSend_groupLevel(self, v54, v55, v56);
      v59 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v58, v53, v57, v10);
      v61 = objc_msgSend_compactDescriptionForAggregateIndex_locale_(setCopy, v60, indexCopy, v27);
      v64 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v62, @"%@ %@", v63, v59, v61);

      v65 = [TSCEStringCellValue alloc];
      v20 = objc_msgSend_initWithString_locale_(v65, v66, v64, v27);
    }

    else
    {
      v20 = v53;
    }
  }

  return v20;
}

- (id)groupValueHierarchyForChart:(BOOL)chart
{
  chartCopy = chart;
  v7 = self->_groupBy;
  if (!v7 || self->_disconnectedRowUids)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTGroupNode groupValueHierarchyForChart:]", v6);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 1744, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = off_278467610;
  if (!chartCopy)
  {
    v17 = off_278467608;
  }

  v18 = objc_msgSend_groupValueHierarchyStringWithDelimiterString_(self, v5, *v17, v6);
  v25 = objc_msgSend_locale(self->_groupCellValue, v19, v20, v21);
  if (v25 || (objc_msgSend_locale(v7, v22, v23, v24), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v26 = [TSCEStringCellValue alloc];
    v28 = objc_msgSend_initWithString_locale_(v26, v27, v18, v25);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)groupValueHierarchyForChart:(BOOL)chart groupBySet:(id)set aggIndex:(unsigned __int16)index appendAggregateName:(BOOL)name
{
  nameCopy = name;
  indexCopy = index;
  chartCopy = chart;
  setCopy = set;
  v13 = self->_groupBy;
  if (!v13 || self->_disconnectedRowUids)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTGroupNode groupValueHierarchyForChart:groupBySet:aggIndex:appendAggregateName:]", v12);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 1769, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v23 = off_278467610;
  if (!chartCopy)
  {
    v23 = off_278467608;
  }

  v24 = objc_msgSend_groupValueHierarchyStringWithDelimiterString_(self, v11, *v23, v12);
  v31 = objc_msgSend_locale(self->_groupCellValue, v25, v26, v27);
  if (!v31)
  {
    v31 = objc_msgSend_locale(v13, v28, v29, v30);
  }

  if (objc_msgSend_length(v24, v28, v29, v30) || self->_groupLevel)
  {
    if (!nameCopy)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v43 = objc_msgSend_locale(v13, v32, v33, v34);
    v45 = objc_msgSend_localizedStringForKey_value_table_(v43, v44, @"Grand Total", &stru_2834BADA0, @"TSTables");

    v24 = v45;
    if (!nameCopy)
    {
      goto LABEL_14;
    }
  }

  v37 = objc_msgSend_compactDescriptionForAggregateIndex_locale_(setCopy, v32, indexCopy, v31);
  if (v37)
  {
    v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v35, @"%@ %@", v36, v24, v37);

    v24 = v38;
  }

LABEL_14:
  if (v31)
  {
    v39 = [TSCEStringCellValue alloc];
    v41 = objc_msgSend_initWithString_locale_(v39, v40, v24, v31);
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

- (id)groupValueHierarchyStringWithDelimiterString:(id)string namingContext:(id)context
{
  stringCopy = string;
  contextCopy = context;
  v11 = self->_groupBy;
  if (!v11 || self->_disconnectedRowUids)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTGroupNode groupValueHierarchyStringWithDelimiterString:namingContext:]", v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 1806, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  if (!stringCopy)
  {
    stringCopy = @"::";
  }

  if (self->_groupLevel)
  {
    v21 = objc_msgSend_parentNode(self, v8, v9, v10);
    v23 = objc_msgSend_groupValueHierarchyStringWithDelimiterString_namingContext_(v21, v22, stringCopy, contextCopy);

    if (objc_msgSend_length(v23, v24, v25, v26))
    {
      objc_msgSend_appendString_(v23, v27, stringCopy, v28);
    }

    v32 = objc_msgSend_localizedStringForCellValue_categoryLevel_groupBy_(TSTGroupNode, v27, self->_groupCellValue, self->_groupLevel, v11);
    if (v32)
    {
      if (objc_msgSend_quoteComponents(contextCopy, v29, v30, v31))
      {
        if (objc_msgSend_forFormulaPlainText(contextCopy, v33, v34, v35))
        {
          v39 = objc_msgSend_tsce_internationalWhitespaceCharacterSet(MEMORY[0x277CCA900], v36, v37, v38);
          v42 = objc_msgSend_rangeOfCharacterFromSet_(v32, v40, v39, v41) != 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = 0;
        }

        v43 = objc_msgSend_tsce_newStringByForcingSingleQuoteEscapes_(v32, v36, v42, v38);

        v32 = v43;
      }

      objc_msgSend_appendString_(v23, v33, v32, v35);
    }
  }

  else
  {
    v23 = objc_opt_new();
  }

  return v23;
}

- (id)groupValueHierarchyStringWithDelimiterString:(id)string
{
  v3 = objc_msgSend_groupValueHierarchyStringWithDelimiterString_namingContext_(self, a2, string, 0);

  return v3;
}

- (TSKUIDStruct)firstVisibleNodeUsingColumnRowUIDMap:(id)map forDimension:(int64_t)dimension leafLevel:(unsigned __int8)level pivotTableHiddenExtent:(id)extent
{
  levelCopy = level;
  mapCopy = map;
  extentCopy = extent;
  v15 = self->_groupBy;
  if (!v15 || self->_disconnectedRowUids)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTGroupNode firstVisibleNodeUsingColumnRowUIDMap:forDimension:leafLevel:pivotTableHiddenExtent:]", v14);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 1849, 0, "Not supported for disconnected GroupNodes");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  if ((objc_msgSend_isLeaf(self, v12, v13, v14) & 1) != 0 || objc_msgSend_groupLevel(self, v25, v26, v27) == levelCopy)
  {
    v28 = objc_msgSend_groupUid(self, v25, v26, v27);
LABEL_7:
    VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent = v28;
    v31 = v29;
    goto LABEL_8;
  }

  v63[0] = objc_msgSend_groupUid(self, v25, v26, v27);
  v63[1] = v34;
  if (objc_msgSend_isGroupUIDCollapsed_(extentCopy, v34, v63, v35))
  {
    v28 = objc_msgSend_groupUid(self, v36, v37, v38);
    goto LABEL_7;
  }

  if (objc_msgSend_hasActiveFilters(extentCopy, v36, v37, v38))
  {
    objc_msgSend_unfilteredDirectChildGroupUids(self, v39, v40, v41);
  }

  else
  {
    objc_msgSend_directChildGroupUids(self, v39, v40, v41);
  }
  v42 = ;
  if (objc_msgSend_count(v42, v43, v44, v45))
  {
    if (!mapCopy)
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSTGroupNode firstVisibleNodeUsingColumnRowUIDMap:forDimension:leafLevel:pivotTableHiddenExtent:]", v47);
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v51);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v53, v49, v52, 1860, 0, "invalid nil value for '%{public}s'", "columnRowUIDMap");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56);
    }

    isRows = objc_msgSend_firstUidFromUIDSet_isRows_(mapCopy, v46, v42, dimension == 0);
    v59 = objc_msgSend_groupNodeForGroupUid_(v15, v58, isRows, v58);
    v61 = v59;
    if (v59)
    {
      VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent = objc_msgSend_firstVisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent_(v59, v60, mapCopy, dimension, levelCopy, extentCopy);
      v31 = v62;
    }

    else
    {
      v31 = 0;
      VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent = 0;
    }
  }

  else
  {
    v31 = 0;
    VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent = 0;
  }

LABEL_8:
  v32 = VisibleNodeUsingColumnRowUIDMap_forDimension_leafLevel_pivotTableHiddenExtent;
  v33 = v31;
  result._upper = v33;
  result._lower = v32;
  return result;
}

- (id)groupHierarchyTreeAsFiltered:(BOOL)filtered usingOrder:(id)order forDimension:(int64_t)dimension
{
  v5 = objc_opt_new();

  return v5;
}

- (void)enumerateAllGroupsWithStop:(BOOL *)stop withBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!*stop)
  {
    objc_msgSend_allKeys(self->_children, v6, v7, v8);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v10 = v21 = 0u;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v20, v24, 16);
    if (v14)
    {
      v15 = *v21;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = objc_msgSend_objectForKey_(self->_children, v12, *(*(&v20 + 1) + 8 * v16), v13, v20);
        objc_msgSend_enumerateAllGroupsWithStop_withBlock_(v17, v18, stop, blockCopy);
        v19 = *stop;

        if (v19)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v20, v24, 16);
          if (v14)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (!*stop)
    {
      blockCopy[2](blockCopy, self, stop);
    }
  }
}

- (void)enumerateGroupsBetweenLevel:(unsigned __int8)level andLevel:(unsigned __int8)andLevel withStop:(BOOL *)stop withBlock:(id)block
{
  andLevelCopy = andLevel;
  levelCopy = level;
  v31 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!*stop)
  {
    groupLevel = self->_groupLevel;
    v14 = groupLevel < levelCopy || groupLevel > andLevelCopy;
    if (!v14 && objc_msgSend_rowCount(self, v10, v11, v12))
    {
      blockCopy[2](blockCopy, self, stop);
    }

    if (self->_groupLevel < andLevelCopy)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = self->_children;
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v26, v30, 16);
      if (v18)
      {
        v19 = *v27;
LABEL_11:
        v20 = 0;
        while (1)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = objc_msgSend_objectForKey_(self->_children, v16, *(*(&v26 + 1) + 8 * v20), v17);
          objc_msgSend_enumerateGroupsBetweenLevel_andLevel_withStop_withBlock_(v21, v22, levelCopy, andLevelCopy, stop, blockCopy);
          v23 = *stop;

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v26, v30, 16);
            if (v18)
            {
              goto LABEL_11;
            }

            break;
          }
        }
      }
    }
  }
}

- (void)enumerateDirectChildren:(id)children
{
  v20 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_children;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v19, 16);
  if (v9)
  {
    v10 = *v15;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = objc_msgSend_objectForKey_(self->_children, v7, *(*(&v14 + 1) + 8 * v11), v8, v14);
      childrenCopy[2](childrenCopy, v12, &v18);
      v13 = v18;

      if (v13)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v14, v19, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)addAggNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    v12 = objc_msgSend_aggregator(nodeCopy, v9, v10, v11);

    if (!v12)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTGroupNode addAggNode:]", v15);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupNode.mm", v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 1996, 0, "Aggregator needs to be setup already");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    }

    v25 = objc_msgSend_aggregator(nodeCopy, v13, v14, v15);
    v31[0] = objc_msgSend_columnUid(v25, v26, v27, v28);
    v31[1] = v29;
    v32 = v31;
    v30 = sub_221088308(&self->_aggNodes.__table_.__bucket_list_.__ptr_, v31, &unk_2217E0160, &v32);
    objc_storeStrong(v30 + 4, node);
  }
}

- (id)groupNodeForGroupUid:(const TSKUIDStruct *)uid
{
  v25 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_groupUid(self, a2, uid, v3) == uid->_lower && v6 == uid->_upper)
  {
    selfCopy = self;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_children;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v20, v24, 16);
    if (v12)
    {
      v13 = *v21;
LABEL_7:
      v14 = 0;
      while (1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend_objectForKey_(self->_children, v10, *(*(&v20 + 1) + 8 * v14), v11, v20);
        selfCopy = objc_msgSend_groupNodeForGroupUid_(v15, v16, uid, v17);

        if (selfCopy)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v20, v24, 16);
          if (v12)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)groupNodeForRowUid:(const TSKUIDStruct *)uid atLevel:(unsigned __int8)level
{
  levelCopy = level;
  v36 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_containsRowUid_(self, a2, uid, level))
  {
    selfCopy = 0;
    goto LABEL_25;
  }

  if (self->_groupLevel == levelCopy)
  {
    selfCopy = self;
    goto LABEL_25;
  }

  v8 = sub_2210875C4(&self->_childNodesByRowUid.__table_.__bucket_list_.__ptr_, uid);
  if (!v8)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v9 = v8[4];
  v13 = v9;
  if (!v9)
  {
LABEL_14:
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = v13;
    obj = self->_children;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v31, v35, 16);
    if (v23)
    {
      v24 = *v32;
LABEL_16:
      v25 = 0;
      while (1)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = objc_msgSend_objectForKey_(self->_children, v21, *(*(&v31 + 1) + 8 * v25), v22);
        selfCopy = objc_msgSend_groupNodeForRowUid_atLevel_(v26, v27, uid, levelCopy);

        if (selfCopy)
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v31, v35, 16);
          if (v23)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      selfCopy = 0;
    }

    v13 = v29;
    goto LABEL_24;
  }

  v14 = objc_msgSend_parentNode(v9, v10, v11, v12);
  v17 = v14;
  if (v14 != self)
  {

LABEL_13:
    sub_221087578(&self->_childNodesByRowUid.__table_.__bucket_list_.__ptr_, uid);
    goto LABEL_14;
  }

  v18 = objc_msgSend_containsRowUid_(v13, v15, uid, v16);

  if (!v18)
  {
    goto LABEL_13;
  }

  selfCopy = objc_msgSend_groupNodeForRowUid_atLevel_(v13, v19, uid, levelCopy);
  if (!selfCopy)
  {
    goto LABEL_14;
  }

LABEL_24:

LABEL_25:

  return selfCopy;
}

- (id)aggNodeForColumnUid:(const TSKUIDStruct *)uid
{
  v3 = sub_2210875C4(&self->_aggNodes.__table_.__bucket_list_.__ptr_, uid);
  if (v3)
  {
    v3 = v3[4];
  }

  return v3;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)nodePath
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  selfCopy = self;
  for (i = objc_msgSend_groupLevel(selfCopy, v5, v6, v7); i; i = objc_msgSend_groupLevel(v17, v18, v19, v20))
  {
    begin = retstr->__begin_;
    v22.n128_u64[0] = objc_msgSend_groupUid(selfCopy, v9, v10, v11);
    v22.n128_u64[1] = v13;
    sub_221086AF0(retstr, begin, &v22);
    v17 = objc_msgSend_parentNode(selfCopy, v14, v15, v16);

    selfCopy = v17;
  }

  return result;
}

- (TSKUIDStruct)groupUid
{
  objc_copyStruct(v4, &self->_groupUid, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result._upper = v3;
  result._lower = v2;
  return result;
}

- (id).cxx_construct
{
  self->_aggNodes.__table_.__bucket_list_ = 0u;
  *&self->_aggNodes.__table_.__first_node_.__next_ = 0u;
  self->_aggNodes.__table_.__max_load_factor_ = 1.0;
  TSUIndexSet::TSUIndexSet(&self->_rowUidsIndexSet);
  TSUIndexSet::TSUIndexSet(&self->_pivotOnlyRowIndexes);
  self->_childNodesByRowUid.__table_.__bucket_list_ = 0u;
  *&self->_childNodesByRowUid.__table_.__first_node_.__next_ = 0u;
  self->_childNodesByRowUid.__table_.__max_load_factor_ = 1.0;
  self->_aggNodeCoordsToUnpack.__end_ = 0;
  self->_aggNodeCoordsToUnpack.__cap_ = 0;
  self->_aggNodeCoordsToUnpack.__begin_ = 0;
  return self;
}

@end