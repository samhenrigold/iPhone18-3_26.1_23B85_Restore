@interface TSTTableGroupSortOrderUID
+ (id)groupSortOrderWithRules:(id)rules withTableInfo:(id)info;
- (BOOL)containsAnyRulesInColumnUIDList:(const void *)list;
- (TSTTableGroupSortOrderUID)initWithGroupRules:(id)rules withTableInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)groupSortOrderByRemovingColumnUIDs:(const void *)ds tableInfo:(id)info;
- (id)groupSortOrderByReplacingRuleAtIndex:(unint64_t)index withRule:(id)rule withTableInfo:(id)info;
- (id)groupSortOrderWithTableInfo:(id)info;
- (id)groupSortRulesForLevel:(unsigned __int8)level tableInfo:(id)info;
- (id)initFromArchive:(const void *)archive;
- (void)encodeToArchive:(void *)archive;
- (void)sortRulesWithTableInfo:(id)info;
@end

@implementation TSTTableGroupSortOrderUID

+ (id)groupSortOrderWithRules:(id)rules withTableInfo:(id)info
{
  rulesCopy = rules;
  infoCopy = info;
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithGroupRules_withTableInfo_(v7, v8, rulesCopy, infoCopy);

  return v9;
}

- (TSTTableGroupSortOrderUID)initWithGroupRules:(id)rules withTableInfo:(id)info
{
  rulesCopy = rules;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = TSTTableGroupSortOrderUID;
  v11 = [(TSTTableGroupSortOrderUID *)&v17 init];
  if (v11)
  {
    if (rulesCopy)
    {
      v12 = objc_msgSend_copy(rulesCopy, v8, v9, v10);
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEA60]);
    }

    v13 = v12;
    objc_storeStrong(&v11->_groupSortRules, v12);

    if (infoCopy)
    {
      objc_msgSend_sortRulesWithTableInfo_(v11, v14, infoCopy, v15);
    }
  }

  return v11;
}

- (id)groupSortOrderWithTableInfo:(id)info
{
  v42 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v36 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = objc_msgSend_groupSortRules(self, v8, v9, v10);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v37, v41, 16);
  if (v16)
  {
    v17 = *v38;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        v20 = objc_msgSend_translator(infoCopy, v13, v14, v15);
        v24 = objc_msgSend_columnUID(v19, v21, v22, v23);
        v26 = objc_msgSend_baseColumnIndexForColumnUID_(v20, v25, v24, v25);

        v30 = objc_msgSend_columnUID(v19, v27, v28, v29);
        v31 = v13 == *" column" && v30 == *"category column";
        if (v31 || v26 != 0x7FFF)
        {
          objc_msgSend_addObject_(v36, v13, v19, v15);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v37, v41, 16);
    }

    while (v16);
  }

  v32 = objc_alloc(objc_opt_class());
  v34 = objc_msgSend_initWithGroupRules_withTableInfo_(v32, v33, v36, infoCopy);

  return v34;
}

- (id)groupSortOrderByRemovingColumnUIDs:(const void *)ds tableInfo:(id)info
{
  v45 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = MEMORY[0x277CBEB18];
  v10 = objc_msgSend_groupSortOrder(infoCopy, v7, v8, v9);
  v14 = objc_msgSend_groupSortRules(v10, v11, v12, v13);
  v17 = objc_msgSend_arrayWithArray_(v6, v15, v14, v16);

  v21 = *ds;
  v22 = *(ds + 1);
  while (v21 != v22)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = objc_msgSend_groupSortOrder(infoCopy, v18, v19, v20, 0);
    v27 = objc_msgSend_groupSortRules(v23, v24, v25, v26);

    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v40, v44, 16);
    if (v32)
    {
      v33 = *v41;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v41 != v33)
          {
            objc_enumerationMutation(v27);
          }

          v35 = *(*(&v40 + 1) + 8 * i);
          if (*v21 == objc_msgSend_columnUID(v35, v29, v30, v31) && v21[1] == v29)
          {
            objc_msgSend_removeObject_(v17, v29, v35, v31);
          }
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v40, v44, 16);
      }

      while (v32);
    }

    v21 += 2;
  }

  v36 = objc_alloc(objc_opt_class());
  v38 = objc_msgSend_initWithGroupRules_withTableInfo_(v36, v37, v17, infoCopy);

  return v38;
}

- (id)groupSortOrderByReplacingRuleAtIndex:(unint64_t)index withRule:(id)rule withTableInfo:(id)info
{
  ruleCopy = rule;
  infoCopy = info;
  v12 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v10, self->_groupSortRules, v11);
  if (objc_msgSend_count(v12, v13, v14, v15) <= index)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTTableGroupSortOrderUID groupSortOrderByReplacingRuleAtIndex:withRule:withTableInfo:]", v17);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableGroupSortOrderUID.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 74, 0, "Group Sort Order: trying to replace an object at an index that doesn't exist");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  else
  {
    objc_msgSend_replaceObjectAtIndex_withObject_(v12, v16, index, ruleCopy);
  }

  v27 = objc_opt_class();
  v29 = objc_msgSend_groupSortOrderWithRules_withTableInfo_(v27, v28, v12, infoCopy);

  return v29;
}

- (id)initFromArchive:(const void *)archive
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, archive, v3);
  v8 = *(archive + 6);
  if (v8 >= 1)
  {
    v9 = 8;
    do
    {
      v10 = *(*(archive + 4) + v9);
      v11 = [TSTTableGroupSortRuleUID alloc];
      v14 = objc_msgSend_initFromArchive_(v11, v12, v10, v13);
      objc_msgSend_addObject_(v7, v15, v14, v16);

      v9 += 8;
      --v8;
    }

    while (v8);
  }

  v17 = objc_msgSend_initWithGroupRules_withTableInfo_(self, v6, v7, 0);

  return v17;
}

- (void)encodeToArchive:(void *)archive
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_groupSortRules;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v20, v24, 16);
  if (v8)
  {
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = *(archive + 4);
        if (!v12)
        {
          goto LABEL_11;
        }

        v13 = *(archive + 6);
        v14 = *v12;
        if (v13 < *v12)
        {
          *(archive + 6) = v13 + 1;
          objc_msgSend_encodeToArchive_(v11, v6, *&v12[2 * v13 + 2], v7, v20);
          goto LABEL_13;
        }

        if (v14 == *(archive + 7))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 16));
          v12 = *(archive + 4);
          v14 = *v12;
        }

        *v12 = v14 + 1;
        v15 = google::protobuf::Arena::CreateMaybeMessage<TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive>(*(archive + 2));
        v16 = *(archive + 6);
        v17 = *(archive + 4) + 8 * v16;
        *(archive + 6) = v16 + 1;
        *(v17 + 8) = v15;
        objc_msgSend_encodeToArchive_(v11, v18, v15, v19, v20);
LABEL_13:
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v20, v24, 16);
    }

    while (v8);
  }
}

- (void)sortRulesWithTableInfo:(id)info
{
  infoCopy = info;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; i != 11; ++i)
  {
    v7 = objc_msgSend_groupSortRulesForLevel_tableInfo_(self, v4, i, infoCopy);
    objc_msgSend_addObjectsFromArray_(v5, v8, v7, v9);
  }

  groupSortRules = self->_groupSortRules;
  self->_groupSortRules = v5;
}

- (BOOL)containsAnyRulesInColumnUIDList:(const void *)list
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *list;
  v4 = *(list + 1);
  if (*list != v4)
  {
    v6 = 0uLL;
    do
    {
      v18 = v6;
      v19 = v6;
      v16 = v6;
      v17 = v6;
      v7 = self->_groupSortRules;
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v16, v20, 16);
      if (v12)
      {
        v13 = *v17;
        while (2)
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v7);
            }

            if (*v3 == objc_msgSend_columnUID(*(*(&v16 + 1) + 8 * v14), v9, v10, v11) && v3[1] == v9)
            {

              return 1;
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v16, v20, 16);
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v3 += 2;
      v6 = 0uLL;
    }

    while (v3 != v4);
  }

  return 0;
}

- (id)groupSortRulesForLevel:(unsigned __int8)level tableInfo:(id)info
{
  infoCopy = info;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_22169D0F4;
  v24 = sub_22169D104;
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_groupSortRules(self, v7, v8, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22169D10C;
  v16[3] = &unk_278468468;
  v11 = infoCopy;
  levelCopy = level;
  v17 = v11;
  v18 = &v20;
  objc_msgSend_enumerateObjectsUsingBlock_(v10, v12, v16, v13);

  v14 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  groupSortRules = self->_groupSortRules;

  return objc_msgSend_initWithGroupRules_withTableInfo_(v8, v9, groupSortRules, 0);
}

@end