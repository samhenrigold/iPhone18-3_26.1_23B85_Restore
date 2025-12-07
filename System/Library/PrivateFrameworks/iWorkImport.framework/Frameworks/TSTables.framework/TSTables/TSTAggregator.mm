@interface TSTAggregator
- (TSKUIDStruct)columnUid;
- (TSTAggregator)initWithArchive:(const void *)archive groupBy:(id)by;
- (TSTAggregator)initWithColumn:(TSKUIDStruct)column context:(id)context;
- (TSTAggregator)initWithColumn:(TSKUIDStruct)column forGroupBy:(id)by;
- (TSTCategoryOwner)categoryOwner;
- (TSTGroupBy)groupBy;
- (id)aggNodeForGroupNode:(id)node;
- (id)description;
- (vector<TSCECellRef,)cellRefsForAggNodesAtGroup:(TSTAggregator *)self;
- (vector<TSCECellRef,)cellRefsForRowIndexes:(TSTAggregator *)self tableUID:(SEL)d;
- (void)clearAggFormulas:(id)formulas;
- (void)encodeToArchive:(void *)archive;
- (void)loadFromArchive:(const void *)archive;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)rebuildAggFormulas;
- (void)saveToArchiver:(id)archiver;
- (void)unpackAfterUnarchiveForGroupBy:(id)by;
- (void)upgradeForNewAggregateTypes:(id)types;
@end

@implementation TSTAggregator

- (TSTAggregator)initWithColumn:(TSKUIDStruct)column context:(id)context
{
  upper = column._upper;
  lower = column._lower;
  v7.receiver = self;
  v7.super_class = TSTAggregator;
  result = [(TSTAggregator *)&v7 initWithContext:context];
  if (result)
  {
    result->_columnUid._lower = lower;
    result->_columnUid._upper = upper;
  }

  return result;
}

- (TSTAggregator)initWithColumn:(TSKUIDStruct)column forGroupBy:(id)by
{
  upper = column._upper;
  lower = column._lower;
  byCopy = by;
  v11 = objc_msgSend_context(byCopy, v8, v9, v10);
  v13 = objc_msgSend_initWithColumn_context_(self, v12, lower, upper, v11);

  if (v13)
  {
    objc_storeWeak(&v13->_groupBy, byCopy);
  }

  return v13;
}

- (TSTAggregator)initWithArchive:(const void *)archive groupBy:(id)by
{
  byCopy = by;
  if (*(archive + 3))
  {
    v8 = *(archive + 3);
  }

  else
  {
    v8 = MEMORY[0x277D809E0];
  }

  v9 = TSKUIDStruct::loadFromMessage(v8, v6);
  v11 = objc_msgSend_initWithColumn_forGroupBy_(self, v10, v9, v10, byCopy);
  if (v11 && (*(archive + 16) & 2) != 0)
  {
    v12 = [TSTAggNode alloc];
    if (*(archive + 4))
    {
      v14 = objc_msgSend_initWithArchive_aggregator_(v12, v13, *(archive + 4), v11);
    }

    else
    {
      v14 = objc_msgSend_initWithArchive_aggregator_(v12, v13, &TST::_GroupByArchive_AggNodeArchive_default_instance_, v11);
    }

    aggRoot = v11->_aggRoot;
    v11->_aggRoot = v14;
  }

  return v11;
}

- (void)loadFromArchive:(const void *)archive
{
  if (*(archive + 3))
  {
    v5 = *(archive + 3);
  }

  else
  {
    v5 = MEMORY[0x277D809E0];
  }

  self->_columnUid._lower = TSKUIDStruct::loadFromMessage(v5, a2);
  self->_columnUid._upper = v6;
  if ((*(archive + 16) & 2) != 0)
  {
    v7 = [TSTAggNode alloc];
    if (*(archive + 4))
    {
      v9 = objc_msgSend_initWithArchive_aggregator_(v7, v8, *(archive + 4), self);
    }

    else
    {
      v9 = objc_msgSend_initWithArchive_aggregator_(v7, v8, &TST::_GroupByArchive_AggNodeArchive_default_instance_, self);
    }

    aggRoot = self->_aggRoot;
    self->_aggRoot = v9;
  }
}

- (void)encodeToArchive:(void *)archive
{
  *(archive + 4) |= 1u;
  v5 = *(archive + 3);
  if (!v5)
  {
    v6 = *(archive + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = MEMORY[0x223DA0360](v6);
    *(archive + 3) = v5;
  }

  TSKUIDStruct::saveToMessage(&self->_columnUid, v5);
  aggRoot = self->_aggRoot;
  if (aggRoot)
  {
    *(archive + 4) |= 2u;
    v10 = *(archive + 4);
    if (!v10)
    {
      v11 = *(archive + 1);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_AggNodeArchive>(v11);
      *(archive + 4) = v10;
    }

    objc_msgSend_encodeToArchive_(aggRoot, v7, v10, v8);
  }
}

- (void)unpackAfterUnarchiveForGroupBy:(id)by
{
  byCopy = by;
  objc_storeWeak(&self->_groupBy, byCopy);
  objc_msgSend_unpackAfterUnarchiveForGroupBy_(self->_aggRoot, v4, byCopy, v5);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[266], v5);

  objc_msgSend_loadFromArchive_(self, v7, v6, v8);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_22120FC00, off_2812E4498[266]);

  objc_msgSend_encodeToArchive_(self, v6, v5, v7);
}

- (TSTCategoryOwner)categoryOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_groupBy);
  v6 = objc_msgSend_categoryOwner(WeakRetained, v3, v4, v5);

  return v6;
}

- (vector<TSCECellRef,)cellRefsForRowIndexes:(TSTAggregator *)self tableUID:(SEL)d
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x4812000000;
  v32 = sub_22120F1BC;
  v33 = sub_22120F1E0;
  v34 = &unk_22188E88F;
  v36 = 0;
  v37 = 0;
  __p = 0;
  if (!TSUIndexSet::count(a4))
  {
    goto LABEL_7;
  }

  v12 = objc_msgSend_categoryOwner(self, v9, v10, v11);
  v16 = objc_msgSend_tableModel(v12, v13, v14, v15);
  v20 = objc_msgSend_columnRowUIDMap(v16, v17, v18, v19);

  if (*&self->_columnUid == 0)
  {
    v22 = 0;
LABEL_5:
    v23 = v30;
    v24 = TSUIndexSet::count(a4);
    sub_22120F1F8(v23 + 6, v24);
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x4812000000;
    v27[3] = sub_22120F2B8;
    v27[4] = nullsub_29;
    v27[5] = &unk_22188E88F;
    v27[6] = v22 << 32;
    v28 = *a5;
    TSUIndexSet::enumerateIndexesUsingBlock();
    _Block_object_dispose(v27, 8);
    goto LABEL_6;
  }

  v22 = objc_msgSend_columnIndexForColumnUID_(v20, v21, self->_columnUid._lower, self->_columnUid._upper);
  if (v22 != 0x7FFF)
  {
    goto LABEL_5;
  }

LABEL_6:

LABEL_7:
  v25 = v30;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_22120FC6C(retstr, v25[6], v25[7], 0xAAAAAAAAAAAAAAABLL * ((v25[7] - v25[6]) >> 3));
  _Block_object_dispose(&v29, 8);
  result = __p;
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_groupBy);
  v6 = TSKUIDStruct::description(&self->_columnUid);
  v9 = objc_msgSend_stringWithFormat_(v3, v7, @"%@ group-by: %@ for column: %@", v8, v4, WeakRetained, v6);

  return v9;
}

- (vector<TSCECellRef,)cellRefsForAggNodesAtGroup:(TSTAggregator *)self
{
  v6 = a4;
  v10 = objc_msgSend_groupBy(self, v7, v8, v9);
  v19 = 0;
  v20 = &v19;
  v21 = 0x4812000000;
  v22 = sub_22120F1BC;
  v23 = sub_22120F1E0;
  v24 = &unk_22188E88F;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22120F650;
  v16[3] = &unk_278461598;
  v16[4] = self;
  v11 = v10;
  v17 = v11;
  v18 = &v19;
  objc_msgSend_enumerateDirectChildren_(v6, v12, v16, v13);
  v14 = v20;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_22120FC6C(retstr, v14[6], v14[7], 0xAAAAAAAAAAAAAAABLL * ((v14[7] - v14[6]) >> 3));

  _Block_object_dispose(&v19, 8);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return result;
}

- (id)aggNodeForGroupNode:(id)node
{
  nodeCopy = node;
  v8 = objc_msgSend_groupBy(self, v5, v6, v7);
  v29[0] = objc_msgSend_columnUid(self, v9, v10, v11);
  v29[1] = v12;
  v17 = objc_msgSend_aggNodeForColumnUid_(nodeCopy, v12, v29, v13);
  if (!v17)
  {
    NextAggFormulaCoord = objc_msgSend_getNextAggFormulaCoord(v8, v14, v15, v16);
    v19 = [TSTAggNode alloc];
    v17 = objc_msgSend_initWithFormulaCoord_groupNode_aggregator_(v19, v20, NextAggFormulaCoord, nodeCopy, self);
    objc_msgSend_addAggNode_(nodeCopy, v21, v17, v22);
    if (objc_msgSend_isRebuildFormulasDeferred(v8, v23, v24, v25))
    {
      objc_msgSend_setNeedsRebuildOfAggFormulas_(v8, v26, 1, v27);
    }

    else
    {
      objc_msgSend_rebuildFormulasForAggNode_(nodeCopy, v26, v17, v27);
    }
  }

  return v17;
}

- (void)rebuildAggFormulas
{
  v5 = objc_msgSend_categoryOwner(self, a2, v2, v3);
  if (objc_msgSend_allowRegistrationOfAggFormulas(v5, v6, v7, v8))
  {
    objc_msgSend_willModify(self, v9, v10, v11);
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_22120F980;
    v20 = sub_22120F990;
    v21 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_groupBy);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22120F998;
    v15[3] = &unk_2784615C0;
    v15[4] = self;
    v15[5] = &v16;
    objc_msgSend_enumerateAllGroupsWithBlock_(WeakRetained, v13, v15, v14);

    objc_storeStrong(&self->_aggRoot, v17[5]);
    _Block_object_dispose(&v16, 8);
  }
}

- (void)clearAggFormulas:(id)formulas
{
  formulasCopy = formulas;
  objc_msgSend_willModify(self, v5, v6, v7);
  aggRoot = self->_aggRoot;
  v12 = objc_msgSend_groupBy(self, v9, v10, v11);
  v17[0] = objc_msgSend_groupByUid(v12, v13, v14, v15);
  v17[1] = v16;
  objc_msgSend_clearAggFormulas_inOwner_(aggRoot, v16, formulasCopy, v17);
}

- (void)upgradeForNewAggregateTypes:(id)types
{
  typesCopy = types;
  aggRoot = self->_aggRoot;
  v9 = objc_msgSend_groupBy(self, v6, v7, v8);
  v14[0] = objc_msgSend_groupByUid(v9, v10, v11, v12);
  v14[1] = v13;
  objc_msgSend_upgradeForNewAggregateTypes_inOwner_(aggRoot, v13, typesCopy, v14);
}

- (TSTGroupBy)groupBy
{
  WeakRetained = objc_loadWeakRetained(&self->_groupBy);

  return WeakRetained;
}

- (TSKUIDStruct)columnUid
{
  p_columnUid = &self->_columnUid;
  lower = self->_columnUid._lower;
  upper = p_columnUid->_upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end