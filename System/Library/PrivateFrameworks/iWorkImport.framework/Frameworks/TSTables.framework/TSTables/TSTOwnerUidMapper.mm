@interface TSTOwnerUidMapper
- (BOOL)usesAllSubOwnerUIDs;
- (TSKUIDStruct)categoryAggregatesOwnerUID;
- (TSKUIDStruct)categoryOwnerUID;
- (TSKUIDStruct)conditionalStyleOwnerUID;
- (TSKUIDStruct)groupByUID;
- (TSKUIDStruct)hiddenStateForColumnsOwnerUID;
- (TSKUIDStruct)hiddenStateForRowsOwnerUID;
- (TSKUIDStruct)mergeOwnerUID;
- (TSKUIDStruct)nextCategoryAggregatesOwnerUID;
- (TSKUIDStruct)nextCategoryOwnerUID;
- (TSKUIDStruct)nextConditionalStyleOwnerUID;
- (TSKUIDStruct)nextGroupByUID;
- (TSKUIDStruct)nextHiddenStateForColumnsOwnerUID;
- (TSKUIDStruct)nextHiddenStateForRowsOwnerUID;
- (TSKUIDStruct)nextMergeOwnerUID;
- (TSKUIDStruct)nextPencilAnnotationOwnerUID;
- (TSKUIDStruct)nextSortRuleReferenceTrackerOwnerUID;
- (TSKUIDStruct)nextTableUID;
- (TSKUIDStruct)pbTableUID;
- (TSKUIDStruct)pencilAnnotationOwnerUID;
- (TSKUIDStruct)sortRuleReferenceTrackerOwnerUID;
- (TSKUIDStruct)tableUID;
- (TSTOwnerUidMapper)initWithArchive:(const void *)archive;
- (TSTOwnerUidMapper)initWithFormulaOwnerUID:(const TSKUIDStruct *)d;
- (TSTOwnerUidMapper)initWithIdentityMapping;
- (TSTOwnerUidMapper)initWithTableUID:(const TSKUIDStruct *)d pasteBoardTableUID:(const TSKUIDStruct *)iD hiddenStateOwnerForRowsUID:(const TSKUIDStruct *)uID hiddenStateOwnerForColumnsUID:(const TSKUIDStruct *)columnsUID conditionalStyleOwnerUID:(const TSKUIDStruct *)ownerUID sortRuleReferenceTrackerOwnerUID:(const TSKUIDStruct *)trackerOwnerUID mergeOwnerUID:(const TSKUIDStruct *)mergeOwnerUID pencilAnnotationOwnerUID:(const TSKUIDStruct *)self0 categoryAggregatesOwnerUID:(const TSKUIDStruct *)self1 groupByUID:(const TSKUIDStruct *)self2;
- (const)ownerUIDMap;
- (id).cxx_construct;
- (id)description;
- (id)fullDescription;
- (id)initForPivotDataTableWithMapper:(id)mapper;
- (id)makeInverse;
- (id)pivotDataTableMapper;
- (void)p_recreateUIDs;
- (void)saveToArchive:(void *)archive;
- (void)setToIdentityMapping;
- (void)setToUpgradeMapping;
@end

@implementation TSTOwnerUidMapper

- (TSKUIDStruct)tableUID
{
  p_tableUID = &self->_tableUID;
  lower = self->_tableUID.var0.var0._lower;
  upper = p_tableUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)hiddenStateForRowsOwnerUID
{
  p_hiddenStateForRowsOwnerUID = &self->_hiddenStateForRowsOwnerUID;
  lower = self->_hiddenStateForRowsOwnerUID.var0.var0._lower;
  upper = p_hiddenStateForRowsOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)hiddenStateForColumnsOwnerUID
{
  p_hiddenStateForColumnsOwnerUID = &self->_hiddenStateForColumnsOwnerUID;
  lower = self->_hiddenStateForColumnsOwnerUID.var0.var0._lower;
  upper = p_hiddenStateForColumnsOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)conditionalStyleOwnerUID
{
  p_conditionalStyleOwnerUID = &self->_conditionalStyleOwnerUID;
  lower = self->_conditionalStyleOwnerUID.var0.var0._lower;
  upper = p_conditionalStyleOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)sortRuleReferenceTrackerOwnerUID
{
  p_sortRuleReferenceTrackerOwnerUID = &self->_sortRuleReferenceTrackerOwnerUID;
  lower = self->_sortRuleReferenceTrackerOwnerUID.var0.var0._lower;
  upper = p_sortRuleReferenceTrackerOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)mergeOwnerUID
{
  p_mergeOwnerUID = &self->_mergeOwnerUID;
  lower = self->_mergeOwnerUID.var0.var0._lower;
  upper = p_mergeOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)pencilAnnotationOwnerUID
{
  p_pencilAnnotationOwnerUID = &self->_pencilAnnotationOwnerUID;
  lower = self->_pencilAnnotationOwnerUID.var0.var0._lower;
  upper = p_pencilAnnotationOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)categoryAggregatesOwnerUID
{
  p_categoryAggregatesOwnerUID = &self->_categoryAggregatesOwnerUID;
  lower = self->_categoryAggregatesOwnerUID.var0.var0._lower;
  upper = p_categoryAggregatesOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)groupByUID
{
  p_groupByUID = &self->_groupByUID;
  lower = self->_groupByUID.var0.var0._lower;
  upper = p_groupByUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextTableUID
{
  p_nextTableUID = &self->_nextTableUID;
  lower = self->_nextTableUID.var0.var0._lower;
  upper = p_nextTableUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextHiddenStateForRowsOwnerUID
{
  p_nextHiddenStateForRowsOwnerUID = &self->_nextHiddenStateForRowsOwnerUID;
  lower = self->_nextHiddenStateForRowsOwnerUID.var0.var0._lower;
  upper = p_nextHiddenStateForRowsOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextHiddenStateForColumnsOwnerUID
{
  p_nextHiddenStateForColumnsOwnerUID = &self->_nextHiddenStateForColumnsOwnerUID;
  lower = self->_nextHiddenStateForColumnsOwnerUID.var0.var0._lower;
  upper = p_nextHiddenStateForColumnsOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextConditionalStyleOwnerUID
{
  p_nextConditionalStyleOwnerUID = &self->_nextConditionalStyleOwnerUID;
  lower = self->_nextConditionalStyleOwnerUID.var0.var0._lower;
  upper = p_nextConditionalStyleOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextSortRuleReferenceTrackerOwnerUID
{
  p_nextSortRuleReferenceTrackerOwnerUID = &self->_nextSortRuleReferenceTrackerOwnerUID;
  lower = self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._lower;
  upper = p_nextSortRuleReferenceTrackerOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextMergeOwnerUID
{
  p_nextMergeOwnerUID = &self->_nextMergeOwnerUID;
  lower = self->_nextMergeOwnerUID.var0.var0._lower;
  upper = p_nextMergeOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextPencilAnnotationOwnerUID
{
  p_nextPencilAnnotationOwnerUID = &self->_nextPencilAnnotationOwnerUID;
  lower = self->_nextPencilAnnotationOwnerUID.var0.var0._lower;
  upper = p_nextPencilAnnotationOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextCategoryAggregatesOwnerUID
{
  p_nextCategoryAggregatesOwnerUID = &self->_nextCategoryAggregatesOwnerUID;
  lower = self->_nextCategoryAggregatesOwnerUID.var0.var0._lower;
  upper = p_nextCategoryAggregatesOwnerUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextGroupByUID
{
  p_nextGroupByUID = &self->_nextGroupByUID;
  lower = self->_nextGroupByUID.var0.var0._lower;
  upper = p_nextGroupByUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)p_recreateUIDs
{
  sub_2210BE918(&self->_uidMap.__table_.__bucket_list_.__ptr_);
  if (*&self->_hiddenStateForRowsOwnerUID != 0)
  {
    self->_nextHiddenStateForRowsOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 4, v4, v5);
    self->_nextHiddenStateForRowsOwnerUID.var0.var0._upper = v3;
  }

  if (self->_hiddenStateForColumnsOwnerUID.var0.var0._lower || self->_hiddenStateForColumnsOwnerUID.var0.var0._upper)
  {
    self->_nextHiddenStateForColumnsOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 0xB, v4, v5);
    self->_nextHiddenStateForColumnsOwnerUID.var0.var0._upper = v3;
  }

  if (self->_conditionalStyleOwnerUID.var0.var0._lower || self->_conditionalStyleOwnerUID.var0.var0._upper)
  {
    self->_nextConditionalStyleOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 3, v4, v5);
    self->_nextConditionalStyleOwnerUID.var0.var0._upper = v3;
  }

  if (self->_sortRuleReferenceTrackerOwnerUID.var0.var0._lower || self->_sortRuleReferenceTrackerOwnerUID.var0.var0._upper)
  {
    self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 6, v4, v5);
    self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._upper = v3;
  }

  if (self->_mergeOwnerUID.var0.var0._lower || self->_mergeOwnerUID.var0.var0._upper)
  {
    self->_nextMergeOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 5, v4, v5);
    self->_nextMergeOwnerUID.var0.var0._upper = v3;
  }

  if (self->_pencilAnnotationOwnerUID.var0.var0._lower || self->_pencilAnnotationOwnerUID.var0.var0._upper)
  {
    self->_nextPencilAnnotationOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 0xA, v4, v5);
    self->_nextPencilAnnotationOwnerUID.var0.var0._upper = v3;
  }

  if (self->_categoryAggregatesOwnerUID.var0.var0._lower || self->_categoryAggregatesOwnerUID.var0.var0._upper)
  {
    self->_nextCategoryAggregatesOwnerUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 9, v4, v5);
    self->_nextCategoryAggregatesOwnerUID.var0.var0._upper = v3;
  }

  if (self->_groupByUID.var0.var0._lower || self->_groupByUID.var0.var0._upper)
  {
    self->_nextGroupByUID.var0.var0._lower = sub_2212C4A30(&self->_nextTableUID, 8, v4, v5);
    self->_nextGroupByUID.var0.var0._upper = v3;
  }

  if ((objc_msgSend_verifySubOwnerUIDsUsed(self, v3, v4, v5) & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTOwnerUidMapper p_recreateUIDs]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOwnerUidMapper.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 100, 0, "Check for non subOwner formula UIDs");

    v17 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v17, v14, v15, v16);
  }
}

- (BOOL)usesAllSubOwnerUIDs
{
  v11 = 1;
  if (self->_nextHiddenStateForRowsOwnerUID.var0.var0._lower || self->_nextHiddenStateForRowsOwnerUID.var0.var0._upper)
  {
    HiddenStateForRowsOwnerUID = objc_msgSend_nextHiddenStateForRowsOwnerUID(self, a2, v2, v3);
    v7 = v6;
    if (HiddenStateForRowsOwnerUID != sub_2212C4A30(&self->_nextTableUID, 4, v8, v9) || v7 != a2)
    {
      v11 = 0;
    }
  }

  if (self->_nextHiddenStateForColumnsOwnerUID.var0.var0._lower || self->_nextHiddenStateForColumnsOwnerUID.var0.var0._upper)
  {
    HiddenStateForColumnsOwnerUID = objc_msgSend_nextHiddenStateForColumnsOwnerUID(self, a2, v2, v3);
    v14 = v13;
    if (HiddenStateForColumnsOwnerUID != sub_2212C4A30(&self->_nextTableUID, 0xB, v15, v16) || v14 != a2)
    {
      v11 = 0;
    }
  }

  if (self->_nextConditionalStyleOwnerUID.var0.var0._lower || self->_nextConditionalStyleOwnerUID.var0.var0._upper)
  {
    ConditionalStyleOwnerUID = objc_msgSend_nextConditionalStyleOwnerUID(self, a2, v2, v3);
    v20 = v19;
    if (ConditionalStyleOwnerUID != sub_2212C4A30(&self->_nextTableUID, 3, v21, v22) || v20 != a2)
    {
      v11 = 0;
    }
  }

  if (self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._lower || self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._upper)
  {
    SortRuleReferenceTrackerOwnerUID = objc_msgSend_nextSortRuleReferenceTrackerOwnerUID(self, a2, v2, v3);
    v26 = v25;
    if (SortRuleReferenceTrackerOwnerUID != sub_2212C4A30(&self->_nextTableUID, 6, v27, v28) || v26 != a2)
    {
      v11 = 0;
    }
  }

  if (self->_nextMergeOwnerUID.var0.var0._lower || self->_nextMergeOwnerUID.var0.var0._upper)
  {
    MergeOwnerUID = objc_msgSend_nextMergeOwnerUID(self, a2, v2, v3);
    v31 = v30;
    if (MergeOwnerUID != sub_2212C4A30(&self->_nextTableUID, 5, v32, v33) || v31 != a2)
    {
      v11 = 0;
    }
  }

  if (self->_nextPencilAnnotationOwnerUID.var0.var0._lower || self->_nextPencilAnnotationOwnerUID.var0.var0._upper)
  {
    PencilAnnotationOwnerUID = objc_msgSend_nextPencilAnnotationOwnerUID(self, a2, v2, v3);
    v36 = v35;
    if (PencilAnnotationOwnerUID != sub_2212C4A30(&self->_nextTableUID, 0xA, v37, v38) || v36 != a2)
    {
      v11 = 0;
    }
  }

  if (self->_nextCategoryAggregatesOwnerUID.var0.var0._lower || self->_nextCategoryAggregatesOwnerUID.var0.var0._upper)
  {
    CategoryAggregatesOwnerUID = objc_msgSend_nextCategoryAggregatesOwnerUID(self, a2, v2, v3);
    v41 = v40;
    if (CategoryAggregatesOwnerUID != sub_2212C4A30(&self->_nextTableUID, 9, v42, v43) || v41 != a2)
    {
      v11 = 0;
    }
  }

  if (self->_nextGroupByUID.var0.var0._lower || self->_nextGroupByUID.var0.var0._upper)
  {
    GroupByUID = objc_msgSend_nextGroupByUID(self, a2, v2, v3);
    v46 = v45;
    if (GroupByUID != sub_2212C4A30(&self->_nextTableUID, 8, v47, v48) || v46 != v49)
    {
      return 0;
    }
  }

  return v11;
}

- (TSTOwnerUidMapper)initWithTableUID:(const TSKUIDStruct *)d pasteBoardTableUID:(const TSKUIDStruct *)iD hiddenStateOwnerForRowsUID:(const TSKUIDStruct *)uID hiddenStateOwnerForColumnsUID:(const TSKUIDStruct *)columnsUID conditionalStyleOwnerUID:(const TSKUIDStruct *)ownerUID sortRuleReferenceTrackerOwnerUID:(const TSKUIDStruct *)trackerOwnerUID mergeOwnerUID:(const TSKUIDStruct *)mergeOwnerUID pencilAnnotationOwnerUID:(const TSKUIDStruct *)self0 categoryAggregatesOwnerUID:(const TSKUIDStruct *)self1 groupByUID:(const TSKUIDStruct *)self2
{
  v25.receiver = self;
  v25.super_class = TSTOwnerUidMapper;
  v18 = [(TSTOwnerUidMapper *)&v25 init];
  v19 = v18;
  if (v18)
  {
    *(v18 + 8) = *d;
    *(v18 + 296) = *iD;
    if (!*(v18 + 1) && !*(v18 + 2))
    {
      *(v18 + 8) = *(v18 + 296);
    }

    *(v18 + 40) = *uID;
    *(v18 + 72) = *columnsUID;
    *(v18 + 104) = *ownerUID;
    *(v18 + 136) = *trackerOwnerUID;
    *(v18 + 168) = *mergeOwnerUID;
    *(v18 + 200) = *annotationOwnerUID;
    *(v18 + 232) = *aggregatesOwnerUID;
    *(v18 + 264) = *byUID;
    uuid_generate_random(&v24);
    *(v19 + 24) = v24;
    objc_msgSend_p_recreateUIDs(v19, v20, v21, v22);
  }

  return v19;
}

- (id)pivotDataTableMapper
{
  v3 = [TSTOwnerUidMapper alloc];
  v6 = objc_msgSend_initForPivotDataTableWithMapper_(v3, v4, self, v5);

  return v6;
}

- (id)initForPivotDataTableWithMapper:(id)mapper
{
  mapperCopy = mapper;
  v46.receiver = self;
  v46.super_class = TSTOwnerUidMapper;
  v8 = [(TSTOwnerUidMapper *)&v46 init];
  if (v8)
  {
    v42 = objc_msgSend_tableUID(mapperCopy, v5, v6, v7);
    v44 = v9;
    *(v8 + 1) = TSKUIDStruct::operator+();
    *(v8 + 2) = v10;
    TableUID = objc_msgSend_nextTableUID(mapperCopy, v10, v11, v12, v42, v44);
    v45 = v13;
    *(v8 + 3) = TSKUIDStruct::operator+();
    *(v8 + 4) = v14;
    *(v8 + 5) = sub_2212C4A30((v8 + 8), 4, v15, v16);
    *(v8 + 6) = v17;
    *(v8 + 9) = sub_2212C4A30((v8 + 8), 0xB, v18, v19);
    *(v8 + 10) = v20;
    *(v8 + 13) = sub_2212C4A30((v8 + 8), 3, v21, v22);
    *(v8 + 14) = v23;
    *(v8 + 17) = sub_2212C4A30((v8 + 8), 6, v24, v25);
    *(v8 + 18) = v26;
    *(v8 + 21) = sub_2212C4A30((v8 + 8), 5, v27, v28);
    *(v8 + 22) = v29;
    *(v8 + 25) = sub_2212C4A30((v8 + 8), 0xA, v30, v31);
    *(v8 + 26) = v32;
    *(v8 + 29) = sub_2212C4A30((v8 + 8), 9, v33, v34);
    *(v8 + 30) = v35;
    *(v8 + 33) = sub_2212C4A30((v8 + 8), 8, v36, v37);
    *(v8 + 34) = v38;
    objc_msgSend_p_recreateUIDs(v8, v38, v39, v40, TableUID, v45);
  }

  return v8;
}

- (TSTOwnerUidMapper)initWithFormulaOwnerUID:(const TSKUIDStruct *)d
{
  v4[0] = 0;
  v4[1] = 0;
  return objc_msgSend_initWithTableUID_pasteBoardTableUID_hiddenStateOwnerForRowsUID_hiddenStateOwnerForColumnsUID_conditionalStyleOwnerUID_sortRuleReferenceTrackerOwnerUID_mergeOwnerUID_pencilAnnotationOwnerUID_categoryAggregatesOwnerUID_groupByUID_(self, a2, d, v4, v4, v4, v4, v4, v4, v4, v4, v4);
}

- (TSTOwnerUidMapper)initWithIdentityMapping
{
  *&v42 = TSKMakeUIDStructRandom();
  *(&v42 + 1) = v3;
  v41[0] = sub_2212C4930(&v42, 4, v4, v5);
  v41[1] = v6;
  v40[0] = sub_2212C4930(&v42, 0xB, v7, v8);
  v40[1] = v9;
  v39[0] = sub_2212C4930(&v42, 3, v10, v11);
  v39[1] = v12;
  v38[0] = sub_2212C4930(&v42, 6, v13, v14);
  v38[1] = v15;
  v37[0] = sub_2212C4930(&v42, 5, v16, v17);
  v37[1] = v18;
  v36[0] = sub_2212C4930(&v42, 0xA, v19, v20);
  v36[1] = v21;
  v35[0] = sub_2212C4930(&v42, 9, v22, v23);
  v35[1] = v24;
  v34[0] = sub_2212C4930(&v42, 8, v25, v26);
  v34[1] = v27;
  v33[0] = 0;
  v33[1] = 0;
  v28 = objc_msgSend_initWithTableUID_pasteBoardTableUID_hiddenStateOwnerForRowsUID_hiddenStateOwnerForColumnsUID_conditionalStyleOwnerUID_sortRuleReferenceTrackerOwnerUID_mergeOwnerUID_pencilAnnotationOwnerUID_categoryAggregatesOwnerUID_groupByUID_(self, v27, &v42, v33, v41, v40, v39, v38, v37, v36, v35, v34);
  objc_msgSend_setToIdentityMapping(v28, v29, v30, v31);
  return v28;
}

- (void)setToIdentityMapping
{
  lower = self->_pbTableUID._lower;
  upper = self->_pbTableUID._upper;
  self->_nextTableUID.var0.var0._lower = lower;
  self->_nextTableUID.var0.var0._upper = upper;
  if (!(lower | upper))
  {
    self->_nextTableUID = self->_tableUID;
  }

  self->_nextHiddenStateForRowsOwnerUID = self->_hiddenStateForRowsOwnerUID;
  self->_nextHiddenStateForColumnsOwnerUID = self->_hiddenStateForColumnsOwnerUID;
  self->_nextConditionalStyleOwnerUID = self->_conditionalStyleOwnerUID;
  self->_nextSortRuleReferenceTrackerOwnerUID = self->_sortRuleReferenceTrackerOwnerUID;
  self->_nextMergeOwnerUID = self->_mergeOwnerUID;
  self->_nextPencilAnnotationOwnerUID = self->_pencilAnnotationOwnerUID;
  self->_nextCategoryAggregatesOwnerUID = self->_categoryAggregatesOwnerUID;
  self->_nextGroupByUID = self->_groupByUID;
}

- (void)setToUpgradeMapping
{
  objc_msgSend_setToIdentityMapping(self, a2, v2, v3);
  *&v46 = objc_msgSend_nextTableUID(self, v5, v6, v7);
  *(&v46 + 1) = v8;
  self->_nextHiddenStateForRowsOwnerUID.var0.var0._lower = sub_2212C4930(&v46, 4, v9, v10);
  self->_nextHiddenStateForRowsOwnerUID.var0.var0._upper = v11;
  self->_nextHiddenStateForColumnsOwnerUID.var0.var0._lower = sub_2212C4930(&v46, 0xB, v12, v13);
  self->_nextHiddenStateForColumnsOwnerUID.var0.var0._upper = v14;
  self->_nextConditionalStyleOwnerUID.var0.var0._lower = sub_2212C4930(&v46, 3, v15, v16);
  self->_nextConditionalStyleOwnerUID.var0.var0._upper = v17;
  self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._lower = sub_2212C4930(&v46, 6, v18, v19);
  self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._upper = v20;
  self->_nextMergeOwnerUID.var0.var0._lower = sub_2212C4930(&v46, 5, v21, v22);
  self->_nextMergeOwnerUID.var0.var0._upper = v23;
  self->_nextPencilAnnotationOwnerUID.var0.var0._lower = sub_2212C4930(&v46, 0xA, v24, v25);
  self->_nextPencilAnnotationOwnerUID.var0.var0._upper = v26;
  self->_nextCategoryAggregatesOwnerUID.var0.var0._lower = sub_2212C4930(&v46, 9, v27, v28);
  self->_nextCategoryAggregatesOwnerUID.var0.var0._upper = v29;
  self->_nextGroupByUID.var0.var0._lower = sub_2212C4930(&v46, 8, v30, v31);
  self->_nextGroupByUID.var0.var0._upper = v32;
  if ((objc_msgSend_verifySubOwnerUIDsUsed(self, v32, v33, v34) & 1) == 0)
  {
    v37 = MEMORY[0x277D81150];
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSTOwnerUidMapper setToUpgradeMapping]", v36);
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTOwnerUidMapper.mm", v40);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v42, v38, v41, 342, 0, "Check for non subOwner formula UIDs");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45);
  }
}

- (id)makeInverse
{
  v3 = [TSTOwnerUidMapper alloc];
  v54[0] = objc_msgSend_nextTableUID(self, v4, v5, v6);
  v54[1] = v7;
  v53[0] = objc_msgSend_nextTableUID(self, v7, v8, v9);
  v53[1] = v10;
  v52[0] = objc_msgSend_nextHiddenStateForRowsOwnerUID(self, v10, v11, v12);
  v52[1] = v13;
  v51[0] = objc_msgSend_nextHiddenStateForColumnsOwnerUID(self, v13, v14, v15);
  v51[1] = v16;
  v50[0] = objc_msgSend_nextConditionalStyleOwnerUID(self, v16, v17, v18);
  v50[1] = v19;
  v49[0] = objc_msgSend_nextSortRuleReferenceTrackerOwnerUID(self, v19, v20, v21);
  v49[1] = v22;
  v48[0] = objc_msgSend_nextMergeOwnerUID(self, v22, v23, v24);
  v48[1] = v25;
  v47[0] = objc_msgSend_nextPencilAnnotationOwnerUID(self, v25, v26, v27);
  v47[1] = v28;
  v46[0] = objc_msgSend_nextCategoryAggregatesOwnerUID(self, v28, v29, v30);
  v46[1] = v31;
  v45[0] = objc_msgSend_nextGroupByUID(self, v31, v32, v33);
  v45[1] = v34;
  v35 = objc_msgSend_initWithTableUID_pasteBoardTableUID_hiddenStateOwnerForRowsUID_hiddenStateOwnerForColumnsUID_conditionalStyleOwnerUID_sortRuleReferenceTrackerOwnerUID_mergeOwnerUID_pencilAnnotationOwnerUID_categoryAggregatesOwnerUID_groupByUID_(v3, v34, v54, v53, v52, v51, v50, v49, v48, v47, v46, v45);
  v39 = objc_msgSend_tableUID(self, v36, v37, v38);
  objc_msgSend_setNextTableUID_(v35, v40, v39, v40);
  objc_msgSend_p_recreateUIDs(v35, v41, v42, v43);

  return v35;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = TSTOwnerUidMapper;
  v2 = [(TSTOwnerUidMapper *)&v4 description];

  return v2;
}

- (id)fullDescription
{
  v4.receiver = self;
  v4.super_class = TSTOwnerUidMapper;
  v2 = [(TSTOwnerUidMapper *)&v4 description];

  return v2;
}

- (const)ownerUIDMap
{
  p_uidMap = &self->_uidMap;
  if (!self->_uidMap.__table_.__size_)
  {
    p_tableUID = &self->_tableUID;
    if (self->_tableUID.var0.var0._lower || self->_tableUID.var0.var0._upper)
    {
      TableUID = objc_msgSend_nextTableUID(self, a2, v2, v3);
      v9 = v8;
      p_lower = objc_msgSend_tableUID(self, v8, v10, v11);
      v118 = v12;
      p_p_lower = &p_lower;
      v13 = sub_22123067C(p_uidMap, &p_lower, &unk_2217E0D80, &p_p_lower);
      v13[4] = TableUID;
      v13[5] = v9;
    }

    if (self->_pbTableUID._lower || self->_pbTableUID._upper)
    {
      v14 = objc_msgSend_nextTableUID(self, a2, v2, v3);
      v16 = v15;
      p_lower = &self->_pbTableUID._lower;
      v17 = sub_221230440(p_uidMap, &self->_pbTableUID._lower, &unk_2217E0D80, &p_lower);
      v17[4] = v14;
      v17[5] = v16;
    }

    lower = self->_sortRuleReferenceTrackerOwnerUID.var0.var0._lower;
    if ((lower || self->_sortRuleReferenceTrackerOwnerUID.var0.var0._upper) && (lower != self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._lower || self->_sortRuleReferenceTrackerOwnerUID.var0.var0._upper != self->_nextSortRuleReferenceTrackerOwnerUID.var0.var0._upper))
    {
      SortRuleReferenceTrackerOwnerUID = objc_msgSend_nextSortRuleReferenceTrackerOwnerUID(self, a2, v2, v3);
      v21 = v20;
      p_lower = objc_msgSend_sortRuleReferenceTrackerOwnerUID(self, v20, v22, v23);
      v118 = v24;
      p_p_lower = &p_lower;
      v25 = sub_22123067C(p_uidMap, &p_lower, &unk_2217E0D80, &p_p_lower);
      v25[4] = SortRuleReferenceTrackerOwnerUID;
      v25[5] = v21;
    }

    v26 = self->_hiddenStateForRowsOwnerUID.var0.var0._lower;
    if (v26 || self->_hiddenStateForRowsOwnerUID.var0.var0._upper || self->_hiddenStateForColumnsOwnerUID.var0.var0._lower || self->_hiddenStateForColumnsOwnerUID.var0.var0._upper)
    {
      if (v26 != self->_nextHiddenStateForRowsOwnerUID.var0.var0._lower || self->_hiddenStateForRowsOwnerUID.var0.var0._upper != self->_nextHiddenStateForRowsOwnerUID.var0.var0._upper)
      {
        HiddenStateForRowsOwnerUID = objc_msgSend_nextHiddenStateForRowsOwnerUID(self, a2, v2, v3);
        v29 = v28;
        p_lower = objc_msgSend_hiddenStateForRowsOwnerUID(self, v28, v30, v31);
        v118 = v32;
        p_p_lower = &p_lower;
        v33 = sub_22123067C(p_uidMap, &p_lower, &unk_2217E0D80, &p_p_lower);
        v33[4] = HiddenStateForRowsOwnerUID;
        v33[5] = v29;
      }

      if (self->_hiddenStateForColumnsOwnerUID.var0.var0._lower != self->_nextHiddenStateForColumnsOwnerUID.var0.var0._lower || self->_hiddenStateForColumnsOwnerUID.var0.var0._upper != self->_nextHiddenStateForColumnsOwnerUID.var0.var0._upper)
      {
        HiddenStateForColumnsOwnerUID = objc_msgSend_nextHiddenStateForColumnsOwnerUID(self, a2, v2, v3);
        v36 = v35;
        p_lower = objc_msgSend_hiddenStateForColumnsOwnerUID(self, v35, v37, v38);
        v118 = v39;
        p_p_lower = &p_lower;
        v40 = sub_22123067C(p_uidMap, &p_lower, &unk_2217E0D80, &p_p_lower);
        v40[4] = HiddenStateForColumnsOwnerUID;
        v40[5] = v36;
      }
    }

    v41 = self->_conditionalStyleOwnerUID.var0.var0._lower;
    if ((v41 || self->_conditionalStyleOwnerUID.var0.var0._upper) && (v41 != self->_nextConditionalStyleOwnerUID.var0.var0._lower || self->_conditionalStyleOwnerUID.var0.var0._upper != self->_nextConditionalStyleOwnerUID.var0.var0._upper))
    {
      ConditionalStyleOwnerUID = objc_msgSend_nextConditionalStyleOwnerUID(self, a2, v2, v3);
      v44 = v43;
      p_lower = objc_msgSend_conditionalStyleOwnerUID(self, v43, v45, v46);
      v118 = v47;
      p_p_lower = &p_lower;
      v48 = sub_22123067C(p_uidMap, &p_lower, &unk_2217E0D80, &p_p_lower);
      v48[4] = ConditionalStyleOwnerUID;
      v48[5] = v44;
    }

    v49 = self->_mergeOwnerUID.var0.var0._lower;
    if ((v49 || self->_mergeOwnerUID.var0.var0._upper) && (v49 != self->_nextMergeOwnerUID.var0.var0._lower || self->_mergeOwnerUID.var0.var0._upper != self->_nextMergeOwnerUID.var0.var0._upper))
    {
      MergeOwnerUID = objc_msgSend_nextMergeOwnerUID(self, a2, v2, v3);
      v52 = v51;
      p_lower = objc_msgSend_mergeOwnerUID(self, v51, v53, v54);
      v118 = v55;
      p_p_lower = &p_lower;
      v56 = sub_22123067C(p_uidMap, &p_lower, &unk_2217E0D80, &p_p_lower);
      v56[4] = MergeOwnerUID;
      v56[5] = v52;
    }

    v57 = self->_pencilAnnotationOwnerUID.var0.var0._lower;
    if ((v57 || self->_pencilAnnotationOwnerUID.var0.var0._upper) && (v57 != self->_nextPencilAnnotationOwnerUID.var0.var0._lower || self->_pencilAnnotationOwnerUID.var0.var0._upper != self->_nextPencilAnnotationOwnerUID.var0.var0._upper))
    {
      PencilAnnotationOwnerUID = objc_msgSend_nextPencilAnnotationOwnerUID(self, a2, v2, v3);
      v60 = v59;
      p_lower = objc_msgSend_pencilAnnotationOwnerUID(self, v59, v61, v62);
      v118 = v63;
      p_p_lower = &p_lower;
      v64 = sub_22123067C(p_uidMap, &p_lower, &unk_2217E0D80, &p_p_lower);
      v64[4] = PencilAnnotationOwnerUID;
      v64[5] = v60;
    }

    v65 = self->_categoryAggregatesOwnerUID.var0.var0._lower;
    if ((v65 || self->_categoryAggregatesOwnerUID.var0.var0._upper) && (v65 != self->_nextCategoryAggregatesOwnerUID.var0.var0._lower || self->_categoryAggregatesOwnerUID.var0.var0._upper != self->_nextCategoryAggregatesOwnerUID.var0.var0._upper))
    {
      CategoryAggregatesOwnerUID = objc_msgSend_nextCategoryAggregatesOwnerUID(self, a2, v2, v3);
      v68 = v67;
      p_lower = objc_msgSend_categoryAggregatesOwnerUID(self, v67, v69, v70);
      v118 = v71;
      p_p_lower = &p_lower;
      v72 = sub_22123067C(p_uidMap, &p_lower, &unk_2217E0D80, &p_p_lower);
      v72[4] = CategoryAggregatesOwnerUID;
      v72[5] = v68;
    }

    v73 = self->_groupByUID.var0.var0._lower;
    if ((v73 || self->_groupByUID.var0.var0._upper) && (v73 != self->_nextGroupByUID.var0.var0._lower || self->_groupByUID.var0.var0._upper != self->_nextGroupByUID.var0.var0._upper))
    {
      GroupByUID = objc_msgSend_nextGroupByUID(self, a2, v2, v3);
      v76 = v75;
      p_lower = objc_msgSend_groupByUID(self, v75, v77, v78);
      v118 = v79;
      p_p_lower = &p_lower;
      v80 = sub_22123067C(p_uidMap, &p_lower, &unk_2217E0D80, &p_p_lower);
      v80[4] = GroupByUID;
      v80[5] = v76;
    }

    v81 = objc_msgSend_nextGroupByUID(self, a2, v2, v3);
    v83 = v82;
    if (v81 == sub_2212C4A30(&self->_nextTableUID, 8, v84, v85) && v83 == v86)
    {
      p_lower = sub_2212C4A30(p_tableUID, 0x64, v87, v88);
      v118 = v89;
      v92 = sub_2212C4A30(&self->_nextTableUID, 0x64, v90, v91);
      v94 = v93;
      p_p_lower = &p_lower;
      v95 = sub_221230440(p_uidMap, &p_lower, &unk_2217E0D80, &p_p_lower);
      v95[4] = v92;
      v95[5] = v94;
      p_lower = sub_2212C4A30(p_tableUID, 0x11, v96, v97);
      v118 = v98;
      v101 = sub_2212C4A30(&self->_nextTableUID, 0x11, v99, v100);
      v103 = v102;
      p_p_lower = &p_lower;
      v104 = sub_221230440(p_uidMap, &p_lower, &unk_2217E0D80, &p_p_lower);
      v104[4] = v101;
      v104[5] = v103;
      v107 = 205;
      do
      {
        v108 = v107;
        p_lower = sub_2212C4A30(p_tableUID, v107, v105, v106);
        v118 = v109;
        v112 = sub_2212C4A30(&self->_nextTableUID, v107, v110, v111);
        v114 = v113;
        p_p_lower = &p_lower;
        v115 = sub_221230440(p_uidMap, &p_lower, &unk_2217E0D80, &p_p_lower);
        v115[4] = v112;
        v115[5] = v114;
        ++v107;
      }

      while (v108 < 0x519);
    }
  }

  return p_uidMap;
}

- (TSTOwnerUidMapper)initWithArchive:(const void *)archive
{
  v25.receiver = self;
  v25.super_class = TSTOwnerUidMapper;
  v4 = [(TSTOwnerUidMapper *)&v25 init];
  if (v4)
  {
    v5 = MEMORY[0x277D809E0];
    if (*(archive + 3))
    {
      v6 = *(archive + 3);
    }

    else
    {
      v6 = MEMORY[0x277D809E0];
    }

    TSP::UUIDData::UUIDData(&v26, v6);
    *(v4 + 8) = v26;
    if (*(archive + 4))
    {
      v7 = *(archive + 4);
    }

    else
    {
      v7 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v7);
    *(v4 + 24) = v26;
    if (*(archive + 5))
    {
      v8 = *(archive + 5);
    }

    else
    {
      v8 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v8);
    *(v4 + 40) = v26;
    if (*(archive + 6))
    {
      v9 = *(archive + 6);
    }

    else
    {
      v9 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v9);
    *(v4 + 56) = v26;
    if (*(archive + 7))
    {
      v10 = *(archive + 7);
    }

    else
    {
      v10 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v10);
    *(v4 + 72) = v26;
    if (*(archive + 8))
    {
      v11 = *(archive + 8);
    }

    else
    {
      v11 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v11);
    *(v4 + 88) = v26;
    if (*(archive + 9))
    {
      v12 = *(archive + 9);
    }

    else
    {
      v12 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v12);
    *(v4 + 104) = v26;
    if (*(archive + 10))
    {
      v13 = *(archive + 10);
    }

    else
    {
      v13 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v13);
    *(v4 + 120) = v26;
    if (*(archive + 11))
    {
      v14 = *(archive + 11);
    }

    else
    {
      v14 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v14);
    *(v4 + 136) = v26;
    if (*(archive + 12))
    {
      v15 = *(archive + 12);
    }

    else
    {
      v15 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v15);
    *(v4 + 152) = v26;
    if (*(archive + 13))
    {
      v16 = *(archive + 13);
    }

    else
    {
      v16 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v16);
    *(v4 + 168) = v26;
    if (*(archive + 14))
    {
      v17 = *(archive + 14);
    }

    else
    {
      v17 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v17);
    *(v4 + 184) = v26;
    if (*(archive + 19))
    {
      v18 = *(archive + 19);
    }

    else
    {
      v18 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v18);
    *(v4 + 200) = v26;
    if (*(archive + 20))
    {
      v19 = *(archive + 20);
    }

    else
    {
      v19 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v19);
    *(v4 + 216) = v26;
    if (*(archive + 15))
    {
      v20 = *(archive + 15);
    }

    else
    {
      v20 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v20);
    *(v4 + 232) = v26;
    if (*(archive + 16))
    {
      v21 = *(archive + 16);
    }

    else
    {
      v21 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v21);
    *(v4 + 248) = v26;
    if (*(archive + 17))
    {
      v22 = *(archive + 17);
    }

    else
    {
      v22 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v22);
    *(v4 + 264) = v26;
    if (*(archive + 18))
    {
      v23 = *(archive + 18);
    }

    else
    {
      v23 = v5;
    }

    TSP::UUIDData::UUIDData(&v26, v23);
    *(v4 + 280) = v26;
  }

  return v4;
}

- (void)saveToArchive:(void *)archive
{
  pbTableUID._lower = objc_msgSend_tableUID(self, a2, archive, v3);
  pbTableUID._upper = v6;
  if (!(pbTableUID._lower | v6))
  {
    pbTableUID = self->_pbTableUID;
  }

  *(archive + 4) |= 1u;
  v7 = *(archive + 3);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA0360](v8);
    *(archive + 3) = v7;
  }

  TSKUIDStruct::saveToMessage(&pbTableUID, v7);
  *(archive + 4) |= 2u;
  v9 = *(archive + 4);
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x223DA0360](v10);
    *(archive + 4) = v9;
  }

  TSP::UUIDData::saveToMessage(&self->_nextTableUID, v9);
  *(archive + 4) |= 4u;
  v11 = *(archive + 5);
  if (!v11)
  {
    v12 = *(archive + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x223DA0360](v12);
    *(archive + 5) = v11;
  }

  TSP::UUIDData::saveToMessage(&self->_hiddenStateForRowsOwnerUID, v11);
  *(archive + 4) |= 8u;
  v13 = *(archive + 6);
  if (!v13)
  {
    v14 = *(archive + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA0360](v14);
    *(archive + 6) = v13;
  }

  TSP::UUIDData::saveToMessage(&self->_nextHiddenStateForRowsOwnerUID, v13);
  *(archive + 4) |= 0x10u;
  v15 = *(archive + 7);
  if (!v15)
  {
    v16 = *(archive + 1);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = MEMORY[0x223DA0360](v16);
    *(archive + 7) = v15;
  }

  TSP::UUIDData::saveToMessage(&self->_hiddenStateForColumnsOwnerUID, v15);
  *(archive + 4) |= 0x20u;
  v17 = *(archive + 8);
  if (!v17)
  {
    v18 = *(archive + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x223DA0360](v18);
    *(archive + 8) = v17;
  }

  TSP::UUIDData::saveToMessage(&self->_nextHiddenStateForColumnsOwnerUID, v17);
  *(archive + 4) |= 0x40u;
  v19 = *(archive + 9);
  if (!v19)
  {
    v20 = *(archive + 1);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x223DA0360](v20);
    *(archive + 9) = v19;
  }

  TSP::UUIDData::saveToMessage(&self->_conditionalStyleOwnerUID, v19);
  *(archive + 4) |= 0x80u;
  v21 = *(archive + 10);
  if (!v21)
  {
    v22 = *(archive + 1);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = MEMORY[0x223DA0360](v22);
    *(archive + 10) = v21;
  }

  TSP::UUIDData::saveToMessage(&self->_nextConditionalStyleOwnerUID, v21);
  *(archive + 4) |= 0x100u;
  v23 = *(archive + 11);
  if (!v23)
  {
    v24 = *(archive + 1);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = MEMORY[0x223DA0360](v24);
    *(archive + 11) = v23;
  }

  TSP::UUIDData::saveToMessage(&self->_sortRuleReferenceTrackerOwnerUID, v23);
  *(archive + 4) |= 0x200u;
  v25 = *(archive + 12);
  if (!v25)
  {
    v26 = *(archive + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = MEMORY[0x223DA0360](v26);
    *(archive + 12) = v25;
  }

  TSP::UUIDData::saveToMessage(&self->_nextSortRuleReferenceTrackerOwnerUID, v25);
  *(archive + 4) |= 0x400u;
  v27 = *(archive + 13);
  if (!v27)
  {
    v28 = *(archive + 1);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = MEMORY[0x223DA0360](v28);
    *(archive + 13) = v27;
  }

  TSP::UUIDData::saveToMessage(&self->_mergeOwnerUID, v27);
  *(archive + 4) |= 0x800u;
  v29 = *(archive + 14);
  if (!v29)
  {
    v30 = *(archive + 1);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    v29 = MEMORY[0x223DA0360](v30);
    *(archive + 14) = v29;
  }

  TSP::UUIDData::saveToMessage(&self->_nextMergeOwnerUID, v29);
  *(archive + 4) |= 0x10000u;
  v31 = *(archive + 19);
  if (!v31)
  {
    v32 = *(archive + 1);
    if (v32)
    {
      v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
    }

    v31 = MEMORY[0x223DA0360](v32);
    *(archive + 19) = v31;
  }

  TSP::UUIDData::saveToMessage(&self->_pencilAnnotationOwnerUID, v31);
  *(archive + 4) |= 0x20000u;
  v33 = *(archive + 20);
  if (!v33)
  {
    v34 = *(archive + 1);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = MEMORY[0x223DA0360](v34);
    *(archive + 20) = v33;
  }

  TSP::UUIDData::saveToMessage(&self->_nextPencilAnnotationOwnerUID, v33);
  *(archive + 4) |= 0x1000u;
  v35 = *(archive + 15);
  if (!v35)
  {
    v36 = *(archive + 1);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = MEMORY[0x223DA0360](v36);
    *(archive + 15) = v35;
  }

  TSP::UUIDData::saveToMessage(&self->_categoryAggregatesOwnerUID, v35);
  *(archive + 4) |= 0x2000u;
  v37 = *(archive + 16);
  if (!v37)
  {
    v38 = *(archive + 1);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x223DA0360](v38);
    *(archive + 16) = v37;
  }

  TSP::UUIDData::saveToMessage(&self->_nextCategoryAggregatesOwnerUID, v37);
  *(archive + 4) |= 0x4000u;
  v39 = *(archive + 17);
  if (!v39)
  {
    v40 = *(archive + 1);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x223DA0360](v40);
    *(archive + 17) = v39;
  }

  TSP::UUIDData::saveToMessage(&self->_groupByUID, v39);
  *(archive + 4) |= 0x8000u;
  v41 = *(archive + 18);
  if (!v41)
  {
    v42 = *(archive + 1);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x223DA0360](v42);
    *(archive + 18) = v41;
  }

  TSP::UUIDData::saveToMessage(&self->_nextGroupByUID, v41);
}

- (TSKUIDStruct)pbTableUID
{
  p_pbTableUID = &self->_pbTableUID;
  lower = self->_pbTableUID._lower;
  upper = p_pbTableUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)categoryOwnerUID
{
  p_categoryOwnerUID = &self->_categoryOwnerUID;
  lower = self->_categoryOwnerUID._lower;
  upper = p_categoryOwnerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)nextCategoryOwnerUID
{
  p_nextCategoryOwnerUID = &self->_nextCategoryOwnerUID;
  lower = self->_nextCategoryOwnerUID._lower;
  upper = p_nextCategoryOwnerUID->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0uLL;
  *(self + 24) = 0uLL;
  *(self + 40) = 0uLL;
  *(self + 56) = 0uLL;
  *(self + 72) = 0uLL;
  *(self + 88) = 0uLL;
  *(self + 104) = 0uLL;
  *(self + 120) = 0uLL;
  *(self + 136) = 0uLL;
  *(self + 152) = 0uLL;
  *(self + 168) = 0uLL;
  *(self + 184) = 0uLL;
  *(self + 200) = 0uLL;
  *(self + 216) = 0uLL;
  *(self + 232) = 0uLL;
  *(self + 248) = 0uLL;
  *(self + 264) = 0uLL;
  *(self + 280) = 0uLL;
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 86) = 1065353216;
  return self;
}

@end