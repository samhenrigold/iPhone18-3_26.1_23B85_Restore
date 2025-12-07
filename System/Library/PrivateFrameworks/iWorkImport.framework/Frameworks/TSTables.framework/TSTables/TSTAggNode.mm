@interface TSTAggNode
- (TSTAggNode)initWithArchive:(const void *)archive aggregator:(id)aggregator;
- (TSTAggNode)initWithFormulaCoord:(TSUCellCoord)coord groupNode:(id)node aggregator:(id)aggregator;
- (TSTAggregator)aggregator;
- (TSTGroupNode)groupNode;
- (id).cxx_construct;
- (id)descriptionWithGroupBy:(id)by;
- (void)addChild:(id)child skipWillModify:(BOOL)modify;
- (void)clearAggFormulas:(id)formulas inOwner:(const TSKUIDStruct *)owner;
- (void)encodeToArchive:(void *)archive;
- (void)enumerateDirectChildren:(id)children;
- (void)removeChild:(id)child skipWillModify:(BOOL)modify;
- (void)setAccumulator:(id)accumulator;
- (void)unpackAfterUnarchiveForGroupBy:(id)by;
- (void)upgradeForNewAggregateTypes:(id)types inOwner:(const TSKUIDStruct *)owner;
@end

@implementation TSTAggNode

- (TSTAggNode)initWithFormulaCoord:(TSUCellCoord)coord groupNode:(id)node aggregator:(id)aggregator
{
  coordCopy = coord;
  nodeCopy = node;
  aggregatorCopy = aggregator;
  v17.receiver = self;
  v17.super_class = TSTAggNode;
  v9 = [(TSTAggNode *)&v17 init];
  if (v9)
  {
    TSUCellCoord::verifyCoordIsSane(&coordCopy);
    v9->_formulaCoord = coordCopy;
    objc_storeWeak(&v9->_groupNode, nodeCopy);
    v10 = objc_storeWeak(&v9->_aggregator, aggregatorCopy);
    v14 = objc_msgSend_groupBy(aggregatorCopy, v11, v12, v13);
    objc_msgSend_setAggNode_forFormulaCoord_(v14, v15, v9, &v9->_formulaCoord);
  }

  return v9;
}

- (void)setAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  WeakRetained = objc_loadWeakRetained(&self->_aggregator);
  objc_msgSend_willModify(WeakRetained, v6, v7, v8);

  accumulator = self->_accumulator;
  self->_accumulator = accumulatorCopy;
}

- (void)addChild:(id)child skipWillModify:(BOOL)modify
{
  childCopy = child;
  if (childCopy)
  {
    if (!modify)
    {
      WeakRetained = objc_loadWeakRetained(&self->_aggregator);
      objc_msgSend_willModify(WeakRetained, v11, v12, v13);
    }

    if (!self->_children)
    {
      v14 = objc_opt_new();
      children = self->_children;
      self->_children = v14;
    }

    v21 = objc_msgSend_formulaCoord(childCopy, v6, v7, v8);
    if ((TSCECellCoordSet::containsCellCoord(&self->_childrenCoordSet, &v21) & 1) == 0)
    {
      objc_msgSend_addObject_(self->_children, v16, childCopy, v17);
      v21 = objc_msgSend_formulaCoord(childCopy, v18, v19, v20);
      TSCECellCoordSet::addCellCoord(&self->_childrenCoordSet, &v21);
    }
  }
}

- (void)removeChild:(id)child skipWillModify:(BOOL)modify
{
  childCopy = child;
  if (childCopy)
  {
    if (!modify)
    {
      WeakRetained = objc_loadWeakRetained(&self->_aggregator);
      objc_msgSend_willModify(WeakRetained, v11, v12, v13);
    }

    v16 = objc_msgSend_formulaCoord(childCopy, v6, v7, v8);
    TSCECellCoordSet::removeCellCoord(&self->_childrenCoordSet, &v16);
    objc_msgSend_removeObjectIdenticalTo_(self->_children, v14, childCopy, v15);
  }
}

- (void)clearAggFormulas:(id)formulas inOwner:(const TSKUIDStruct *)owner
{
  v22 = *MEMORY[0x277D85DE8];
  formulasCopy = formulas;
  objc_msgSend_removeFormulaAt_inOwner_(formulasCopy, v7, &self->_formulaCoord, owner);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_children;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v17, v21, 16);
  if (v11)
  {
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_clearAggFormulas_inOwner_(*(*(&v17 + 1) + 8 * v13++), v10, formulasCopy, owner, v17);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v17, v21, 16);
    }

    while (v11);
  }

  objc_msgSend_removeAllObjects(self->_children, v14, v15, v16);
  TSCECellCoordSet::clear(&self->_childrenCoordSet);
}

- (void)upgradeForNewAggregateTypes:(id)types inOwner:(const TSKUIDStruct *)owner
{
  v33 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  WeakRetained = objc_loadWeakRetained(&self->_aggregator);
  objc_msgSend_willModifyForUpgrade(WeakRetained, v8, v9, v10);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_children;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v28, v32, 16);
  if (v14)
  {
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_upgradeForNewAggregateTypes_inOwner_(*(*(&v28 + 1) + 8 * i), v13, typesCopy, owner);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v28, v32, 16);
    }

    while (v14);
  }

  formulaCoord = self->_formulaCoord;
  v27 = *owner;
  v20 = objc_opt_new();
  if (typesCopy)
  {
    objc_msgSend_precedentsOfCell_(typesCopy, v17, &formulaCoord, v19);
  }

  else
  {
    memset(&v25, 0, sizeof(v25));
  }

  v21 = objc_msgSend_referenceSet(v20, v17, v18, v19, *&v25._vptr$TSCEReferenceSet, *&v25._cellRefs.__table_.__bucket_list_, *&v25._cellRefs.__table_.__first_node_.__next_, *&v25._cellRefs.__table_.__max_load_factor_, *&v25._rangeRefs.__tree_.__end_node_.__left_, *&v25._datalessRefs, *&v25._tableUuidRefs, *&v25._spanningRefs, v25._wholeOwnerRefs, formulaCoord, v27, v28);
  TSCEReferenceSet::operator=(v21, &v25);
  TSCEReferenceSet::~TSCEReferenceSet(&v25);
  objc_msgSend_markCellRefsAsDirty_(typesCopy, v22, v20, v23);
  accumulator = self->_accumulator;
  self->_accumulator = 0;
}

- (id)descriptionWithGroupBy:(id)by
{
  objc_msgSend_formulaCoord(self, a2, by, v3);
  v4 = MEMORY[0x277CCAB68];
  v5 = objc_opt_class();
  v6 = NSStringFromTSUCellCoord();
  v9 = objc_msgSend_stringWithFormat_(v4, v7, @"%@ @ %@", v8, v5, v6);

  return v9;
}

- (void)enumerateDirectChildren:(id)children
{
  v16 = *MEMORY[0x277D85DE8];
  childrenCopy = children;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_children;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        childrenCopy[2](childrenCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v10, &v11, v15, 16);
    }

    while (v7);
  }
}

- (TSTAggNode)initWithArchive:(const void *)archive aggregator:(id)aggregator
{
  aggregatorCopy = aggregator;
  if (*(archive + 6))
  {
    v7 = *(archive + 6);
  }

  else
  {
    v7 = &TSCE::_CellCoordinateArchive_default_instance_;
  }

  v8 = sub_2212697C0(v7);
  v10 = objc_msgSend_initWithFormulaCoord_groupNode_aggregator_(self, v9, v8, 0, aggregatorCopy);
  if (v10)
  {
    v11 = [TSTAccumulator alloc];
    if (*(archive + 7))
    {
      v14 = objc_msgSend_initWithArchive_(v11, v12, *(archive + 7), v13);
    }

    else
    {
      v14 = objc_msgSend_initWithArchive_(v11, v12, TST::_AccumulatorArchive_default_instance_, v13);
    }

    accumulator = v10->_accumulator;
    v10->_accumulator = v14;

    v16 = *(archive + 8);
    if (v16 >= 1)
    {
      v17 = 8;
      do
      {
        v18 = [TSTAggNode alloc];
        v20 = objc_msgSend_initWithArchive_aggregator_(v18, v19, *(*(archive + 5) + v17), aggregatorCopy);
        objc_msgSend_addChild_skipWillModify_(v10, v21, v20, 1);

        v17 += 8;
        --v16;
      }

      while (v16);
    }
  }

  return v10;
}

- (void)encodeToArchive:(void *)archive
{
  v46 = *MEMORY[0x277D85DE8];
  p_formulaCoord = &self->_formulaCoord;
  formulaCoord = self->_formulaCoord;
  v8 = formulaCoord.row == 0x7FFFFFFF || (*&formulaCoord & 0xFFFF00000000) == 0x7FFF00000000;
  if (v8 || (TSUCellCoord::verifyCoordIsSane(&self->_formulaCoord) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTAggNode encodeToArchive:]", v3);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTAggNode.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 198, 0, "Not expecting an invalid coord here");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  *(archive + 4) |= 1u;
  v18 = *(archive + 6);
  if (!v18)
  {
    v19 = *(archive + 1);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v19);
    *(archive + 6) = v18;
  }

  sub_221269820(p_formulaCoord, v18);
  accumulator = self->_accumulator;
  if (accumulator)
  {
    *(archive + 4) |= 2u;
    v23 = *(archive + 7);
    if (!v23)
    {
      v24 = *(archive + 1);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TST::AccumulatorArchive>(v24);
      *(archive + 7) = v23;
    }

    objc_msgSend_saveToArchive_(accumulator, v20, v23, v21);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v25 = self->_children;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v41, v45, 16);
  if (v29)
  {
    v30 = *v42;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(v25);
        }

        v32 = *(*(&v41 + 1) + 8 * i);
        v33 = *(archive + 5);
        if (!v33)
        {
          goto LABEL_27;
        }

        v34 = *(archive + 8);
        v35 = *v33;
        if (v34 < *v33)
        {
          *(archive + 8) = v34 + 1;
          objc_msgSend_encodeToArchive_(v32, v27, *&v33[2 * v34 + 2], v28, v41);
          continue;
        }

        if (v35 == *(archive + 9))
        {
LABEL_27:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v33 = *(archive + 5);
          v35 = *v33;
        }

        *v33 = v35 + 1;
        v36 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupByArchive_AggNodeArchive>(*(archive + 3));
        v37 = *(archive + 8);
        v38 = *(archive + 5) + 8 * v37;
        *(archive + 8) = v37 + 1;
        *(v38 + 8) = v36;
        objc_msgSend_encodeToArchive_(v32, v39, v36, v40, v41);
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v41, v45, 16);
    }

    while (v29);
  }
}

- (void)unpackAfterUnarchiveForGroupBy:(id)by
{
  v23 = *MEMORY[0x277D85DE8];
  byCopy = by;
  WeakRetained = objc_loadWeakRetained(&self->_aggregator);
  v9 = objc_msgSend_groupBy(WeakRetained, v6, v7, v8);
  objc_msgSend_setAggNode_forFormulaCoord_(v9, v10, self, &self->_formulaCoord);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_children;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v18, v22, 16);
  if (v15)
  {
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v11);
        }

        objc_msgSend_unpackAfterUnarchiveForGroupBy_(*(*(&v18 + 1) + 8 * v17++), v13, byCopy, v14, v18);
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v18, v22, 16);
    }

    while (v15);
  }
}

- (TSTGroupNode)groupNode
{
  WeakRetained = objc_loadWeakRetained(&self->_groupNode);

  return WeakRetained;
}

- (TSTAggregator)aggregator
{
  WeakRetained = objc_loadWeakRetained(&self->_aggregator);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 7) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = self + 56;
  return self;
}

@end