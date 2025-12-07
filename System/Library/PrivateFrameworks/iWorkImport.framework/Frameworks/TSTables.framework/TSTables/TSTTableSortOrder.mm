@interface TSTTableSortOrder
+ (TSTTableSortOrder)sortOrderWithBaseColumn:(TSUModelColumnIndex)column direction:(int)direction type:(int)type;
+ (TSTTableSortOrder)sortOrderWithRules:(id)rules type:(int)type;
- (BOOL)containsAnyRulesInBaseColumns:(id)columns;
- (BOOL)isEqual:(id)equal;
- (NSIndexSet)baseColumnIndices;
- (TSTTableSortOrder)initWithRules:(id)rules type:(int)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromArchive:(const void *)archive;
- (id)sortOrderByAddingRule:(id)rule;
- (id)sortOrderByChangingTypeTo:(int)to;
- (id)sortOrderByRemovingBaseColumnIndices:(id)indices;
- (id)sortOrderByRemovingRuleAtIndex:(unint64_t)index;
- (id)sortOrderByReplacingRuleAtIndex:(unint64_t)index withRule:(id)rule;
- (id)sortOrderByReplacingRulesWithRules:(id)rules;
- (void)encodeToArchive:(void *)archive;
@end

@implementation TSTTableSortOrder

+ (TSTTableSortOrder)sortOrderWithRules:(id)rules type:(int)type
{
  v4 = *&type;
  rulesCopy = rules;
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithRules_type_(v6, v7, rulesCopy, v4);

  return v8;
}

+ (TSTTableSortOrder)sortOrderWithBaseColumn:(TSUModelColumnIndex)column direction:(int)direction type:(int)type
{
  v5 = *&type;
  v6 = *&direction;
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend_ruleWithBaseIndex_direction_(TSTTableSortRule, v9, column._column, v6);
  v16[0] = v10;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v16, 1);
  v14 = objc_msgSend_initWithRules_type_(v8, v13, v12, v5);

  return v14;
}

- (TSTTableSortOrder)initWithRules:(id)rules type:(int)type
{
  rulesCopy = rules;
  v28.receiver = self;
  v28.super_class = TSTTableSortOrder;
  v7 = [(TSTTableSortOrder *)&v28 init];
  v11 = v7;
  if (v7)
  {
    if (rulesCopy)
    {
      v7->_type = type;
      v12 = objc_msgSend_copy(rulesCopy, v8, v9, v10);
    }

    else
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableSortOrder initWithRules:type:]", v10);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableSortOrder.mm", v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 44, 0, "invalid nil value for '%{public}s'", "sortRules");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
      v11->_type = type;
      v12 = objc_msgSend_array(MEMORY[0x277CBEA60], v22, v23, v24);
    }

    rules = v11->_rules;
    v11->_rules = v12;

    cachedIndexes = v11->_cachedIndexes;
    v11->_cachedIndexes = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  rules = self->_rules;
  type = self->_type;

  return objc_msgSend_initWithRules_type_(v8, v9, rules, type);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v9 = v5;
  if (v5 && (type = self->_type, type == objc_msgSend_type(v5, v6, v7, v8)))
  {
    rules = self->_rules;
    v15 = objc_msgSend_rules(v9, v11, v12, v13);
    isEqualToArray = objc_msgSend_isEqualToArray_(rules, v16, v15, v17);
  }

  else
  {
    isEqualToArray = 0;
  }

  return isEqualToArray;
}

- (NSIndexSet)baseColumnIndices
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_cachedIndexes)
  {
    v6 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v3, v4, v5);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = selfCopy->_rules;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v29, 16);
    if (v12)
    {
      v13 = *v26;
      do
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v15 = objc_msgSend_baseIndex(*(*(&v25 + 1) + 8 * v14), v9, v10, v11, v25);
          objc_msgSend_addIndex_(v6, v16, v15, v17);
          ++v14;
        }

        while (v12 != v14);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v25, v29, 16);
      }

      while (v12);
    }

    v18 = objc_alloc(MEMORY[0x277CCAA78]);
    v21 = objc_msgSend_initWithIndexSet_(v18, v19, v6, v20);
    cachedIndexes = selfCopy->_cachedIndexes;
    selfCopy->_cachedIndexes = v21;
  }

  objc_sync_exit(selfCopy);

  v23 = selfCopy->_cachedIndexes;

  return v23;
}

- (id)sortOrderByChangingTypeTo:(int)to
{
  v3 = *&to;
  v5 = objc_opt_class();
  rules = self->_rules;

  return objc_msgSend_sortOrderWithRules_type_(v5, v6, rules, v3);
}

- (id)sortOrderByAddingRule:(id)rule
{
  v5 = objc_msgSend_arrayByAddingObject_(self->_rules, a2, rule, v3);
  v6 = objc_opt_class();
  v8 = objc_msgSend_sortOrderWithRules_type_(v6, v7, v5, self->_type);

  return v8;
}

- (id)sortOrderByRemovingRuleAtIndex:(unint64_t)index
{
  v6 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], a2, self->_rules, v3);
  objc_msgSend_removeObjectAtIndex_(v6, v7, index, v8);
  v9 = objc_opt_class();
  v11 = objc_msgSend_sortOrderWithRules_type_(v9, v10, v6, self->_type);

  return v11;
}

- (id)sortOrderByReplacingRuleAtIndex:(unint64_t)index withRule:(id)rule
{
  ruleCopy = rule;
  v9 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v7, self->_rules, v8);
  if (objc_msgSend_count(v9, v10, v11, v12) <= index)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableSortOrder sortOrderByReplacingRuleAtIndex:withRule:]", v14);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableSortOrder.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 114, 0, "Group Sort Order: trying to replace an object at an index that doesn't exist");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }

  else
  {
    objc_msgSend_replaceObjectAtIndex_withObject_(v9, v13, index, ruleCopy);
  }

  v24 = objc_opt_class();
  v26 = objc_msgSend_sortOrderWithRules_type_(v24, v25, v9, self->_type);

  return v26;
}

- (id)sortOrderByReplacingRulesWithRules:(id)rules
{
  rulesCopy = rules;
  v5 = objc_opt_class();
  v7 = objc_msgSend_sortOrderWithRules_type_(v5, v6, rulesCopy, self->_type);

  return v7;
}

- (id)sortOrderByRemovingBaseColumnIndices:(id)indices
{
  indicesCopy = indices;
  v5 = MEMORY[0x277CCAC30];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2213EB7F8;
  v17[3] = &unk_2784648B8;
  v6 = indicesCopy;
  v18 = v6;
  v9 = objc_msgSend_predicateWithBlock_(v5, v7, v17, v8);
  v12 = objc_msgSend_filteredArrayUsingPredicate_(self->_rules, v10, v9, v11);
  v13 = objc_opt_class();
  v15 = objc_msgSend_sortOrderWithRules_type_(v13, v14, v12, self->_type);

  return v15;
}

- (BOOL)containsAnyRulesInBaseColumns:(id)columns
{
  v22 = *MEMORY[0x277D85DE8];
  columnsCopy = columns;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_rules;
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

        v13 = objc_msgSend_baseIndex(*(*(&v17 + 1) + 8 * i), v7, v8, v9, v17);
        if (objc_msgSend_containsIndex_(columnsCopy, v14, v13, v15))
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
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

LABEL_11:

  return v10;
}

- (id)initFromArchive:(const void *)archive
{
  v6 = *(archive + 12) != 0;
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, archive, v3);
  v9 = *(archive + 8);
  if (v9 >= 1)
  {
    v10 = 8;
    do
    {
      v11 = *(*(archive + 5) + v10);
      v12 = [TSTTableSortRule alloc];
      v15 = objc_msgSend_initFromArchive_(v12, v13, v11, v14);
      objc_msgSend_addObject_(v8, v16, v15, v17);

      v10 += 8;
      --v9;
    }

    while (v9);
  }

  v18 = objc_msgSend_initWithRules_type_(self, v7, v8, v6);

  return v18;
}

- (void)encodeToArchive:(void *)archive
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = self->_type != 0;
  *(archive + 4) |= 1u;
  *(archive + 12) = v4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_rules;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v21, v25, 16);
  if (v9)
  {
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = *(archive + 5);
        if (!v13)
        {
          goto LABEL_11;
        }

        v14 = *(archive + 8);
        v15 = *v13;
        if (v14 < *v13)
        {
          *(archive + 8) = v14 + 1;
          objc_msgSend_encodeToArchive_(v12, v7, *&v13[2 * v14 + 2], v8, v21);
          goto LABEL_13;
        }

        if (v15 == *(archive + 9))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v13 = *(archive + 5);
          v15 = *v13;
        }

        *v13 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TST::TableSortOrderArchive_SortRuleArchive>(*(archive + 3));
        v17 = *(archive + 8);
        v18 = *(archive + 5) + 8 * v17;
        *(archive + 8) = v17 + 1;
        *(v18 + 8) = v16;
        objc_msgSend_encodeToArchive_(v12, v19, v16, v20, v21);
LABEL_13:
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v21, v25, 16);
    }

    while (v9);
  }
}

@end