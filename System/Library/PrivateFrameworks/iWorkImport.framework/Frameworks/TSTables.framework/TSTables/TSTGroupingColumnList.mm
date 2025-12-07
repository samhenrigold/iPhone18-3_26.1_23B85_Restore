@interface TSTGroupingColumnList
- (BOOL)hasPrefix:(id)prefix;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFunctionallyEquivalent:(id)equivalent;
- (BOOL)isGroupingColumnUidsEqual:(id)equal;
- (BOOL)p_isEqual:(id)equal;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)groupingColumnUidList;
- (TSTGroupingColumnList)init;
- (TSTGroupingColumnList)initWithArchive:(const void *)archive;
- (TSTGroupingColumnList)initWithGroupingColumns:(id)columns;
- (id)copyWithZone:(_NSZone *)zone;
- (id)groupingColumnForColumnUID:(TSKUIDStruct)d;
- (id)ruleAtGroupLevel:(unsigned __int8)level;
- (id)ruleAtIndex:(unint64_t)index;
- (void)addRule:(id)rule atGroupLevel:(unsigned __int8)level;
- (void)addRule:(id)rule atIndex:(unint64_t)index;
- (void)appendRules:(id)rules;
- (void)changeGroupingTypeForGroupLevel:(unsigned __int8)level toType:(int64_t)type;
- (void)changeGroupingTypeForRuleIndex:(unint64_t)index toType:(int64_t)type;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)moveRuleFromGroupLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel;
- (void)moveRuleFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)removeRuleAtGroupLevel:(unsigned __int8)level;
- (void)removeRuleAtIndex:(unint64_t)index;
- (void)replaceRuleAtGroupLevel:(unsigned __int8)level withRule:(id)rule;
- (void)replaceRuleAtIndex:(unint64_t)index withRule:(id)rule;
@end

@implementation TSTGroupingColumnList

- (TSTGroupingColumnList)init
{
  v6.receiver = self;
  v6.super_class = TSTGroupingColumnList;
  v2 = [(TSTGroupingColumnList *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    groupingColumns = v2->_groupingColumns;
    v2->_groupingColumns = v3;
  }

  return v2;
}

- (TSTGroupingColumnList)initWithGroupingColumns:(id)columns
{
  v35 = *MEMORY[0x277D85DE8];
  columnsCopy = columns;
  v8 = objc_msgSend_init(self, v5, v6, v7);
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v13 = objc_msgSend_count(columnsCopy, v10, v11, v12);
    v16 = objc_msgSend_initWithCapacity_(v9, v14, v13, v15);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = columnsCopy;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v30, v34, 16);
    if (v22)
    {
      v23 = *v31;
      do
      {
        v24 = 0;
        do
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v17);
          }

          v25 = objc_msgSend_copy(*(*(&v30 + 1) + 8 * v24), v19, v20, v21, v30);
          objc_msgSend_addObject_(v16, v26, v25, v27);

          ++v24;
        }

        while (v22 != v24);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v30, v34, 16);
      }

      while (v22);
    }

    groupingColumns = v8->_groupingColumns;
    v8->_groupingColumns = v16;
  }

  return v8;
}

- (id)ruleAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    if (objc_msgSend_count(self->_groupingColumns, a2, index, v3) <= index)
    {
      v5 = 0;
    }

    else
    {
      v5 = objc_msgSend_objectAtIndexedSubscript_(self->_groupingColumns, v9, index, v10);
    }
  }

  return v5;
}

- (id)ruleAtGroupLevel:(unsigned __int8)level
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

- (id)groupingColumnForColumnUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_groupingColumns;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v7)
  {
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      if (objc_msgSend_columnUid(v10, v11, v12, v13, v18) == lower && v14 == upper)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v16, &v18, v22, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v8 = objc_msgSend_mutableCopy(self->_groupingColumns, v5, v6, v7);
  v9 = v4[1];
  v4[1] = v8;

  return v4;
}

- (BOOL)p_isEqual:(id)equal
{
  equalCopy = equal;
  v8 = objc_msgSend_count(self, v5, v6, v7);
  if (v8 == objc_msgSend_count(equalCopy, v9, v10, v11))
  {
    v17 = objc_msgSend_count(self, v12, v13, v14);
    if (v17)
    {
      v18 = 1;
      v19 = 1;
      do
      {
        v20 = objc_msgSend_ruleAtGroupLevel_(self, v15, v19, v16);
        v23 = objc_msgSend_objectAtIndex_(equalCopy, v21, v18 - 1, v22);
        isEqual = objc_msgSend_isEqual_(v20, v24, v23, v25);

        v18 = ++v19;
        if (v19 <= v17)
        {
          v27 = isEqual;
        }

        else
        {
          v27 = 0;
        }
      }

      while ((v27 & 1) != 0);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    v9 = objc_msgSend_groupingColumns(v5, v6, v7, v8);
    isEqual = objc_msgSend_p_isEqual_(self, v10, v9, v11);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      isEqual = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    v5 = TSUDynamicCast();
    isEqual = objc_msgSend_p_isEqual_(self, v13, v5, v14);
  }

LABEL_7:
  return isEqual;
}

- (BOOL)isGroupingColumnUidsEqual:(id)equal
{
  equalCopy = equal;
  v8 = objc_msgSend_count(self, v5, v6, v7);
  if (v8 != objc_msgSend_count(equalCopy, v9, v10, v11))
  {
LABEL_9:
    v32 = 0;
    goto LABEL_10;
  }

  v17 = objc_msgSend_count(self, v12, v13, v14);
  if (v17)
  {
    v18 = 1;
    while (1)
    {
      v19 = objc_msgSend_ruleAtGroupLevel_(self, v15, v18, v16);
      v22 = objc_msgSend_ruleAtGroupLevel_(equalCopy, v20, v18, v21);
      v26 = objc_msgSend_groupingColumnUid(v19, v23, v24, v25);
      v28 = v27;
      if (v26 != objc_msgSend_groupingColumnUid(v22, v27, v29, v30) || v28 != v31)
      {
        break;
      }

      if (++v18 > v17)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_9;
  }

LABEL_7:
  v32 = 1;
LABEL_10:

  return v32;
}

- (BOOL)isFunctionallyEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  v8 = objc_msgSend_count(self, v5, v6, v7);
  if (v8 != objc_msgSend_count(equivalentCopy, v9, v10, v11))
  {
LABEL_10:
    v39 = 0;
    goto LABEL_11;
  }

  v17 = objc_msgSend_count(self, v12, v13, v14);
  if (v17)
  {
    v18 = 1;
    while (1)
    {
      v19 = objc_msgSend_ruleAtGroupLevel_(self, v15, v18, v16);
      v22 = objc_msgSend_ruleAtGroupLevel_(equivalentCopy, v20, v18, v21);
      v26 = objc_msgSend_groupingType(v19, v23, v24, v25);
      if (v26 != objc_msgSend_groupingType(v22, v27, v28, v29))
      {
        break;
      }

      v33 = objc_msgSend_columnUid(v19, v30, v31, v32);
      v35 = v34;
      if (v33 != objc_msgSend_columnUid(v22, v34, v36, v37) || v35 != v38)
      {
        break;
      }

      if (++v18 > v17)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_8:
  v39 = 1;
LABEL_11:

  return v39;
}

- (BOOL)hasPrefix:(id)prefix
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_groupingColumns(prefix, a2, prefix, v3);
  v9 = objc_msgSend_count(self, v6, v7, v8);
  if (v9 >= objc_msgSend_count(v5, v10, v11, v12))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v5;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v27, v31, 16);
    if (v18)
    {
      v19 = *v28;
      v20 = 1;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v22 = *(*(&v27 + 1) + 8 * i);
          v23 = objc_msgSend_ruleAtGroupLevel_(self, v16, v20, v17, v27);
          LOBYTE(v22) = objc_msgSend_isEqual_(v23, v24, v22, v25);

          if ((v22 & 1) == 0)
          {
            v13 = 0;
            goto LABEL_13;
          }

          ++v20;
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v27, v31, 16);
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)addRule:(id)rule atIndex:(unint64_t)index
{
  ruleCopy = rule;
  if (objc_msgSend_count(self->_groupingColumns, v6, v7, v8) < index)
  {
    index = objc_msgSend_count(self->_groupingColumns, v9, v10, v11);
  }

  v12 = objc_msgSend_mutableCopy(self->_groupingColumns, v9, v10, v11);
  objc_msgSend_insertObject_atIndex_(v12, v13, ruleCopy, index);
  groupingColumns = self->_groupingColumns;
  self->_groupingColumns = v12;
}

- (void)removeRuleAtIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_groupingColumns, a2, index, v3) > index)
  {
    v9 = objc_msgSend_mutableCopy(self->_groupingColumns, v6, v7, v8);
    objc_msgSend_removeObjectAtIndex_(v9, v10, index, v11);
    groupingColumns = self->_groupingColumns;
    self->_groupingColumns = v9;
  }
}

- (void)moveRuleFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  toIndexCopy = toIndex;
  indexCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    indexCopy = index;
    if (objc_msgSend_count(self->_groupingColumns, a2, index, toIndex) < index)
    {
      indexCopy = objc_msgSend_count(self->_groupingColumns, a2, v7, toIndex);
    }
  }

  v8 = objc_msgSend_ruleAtIndex_(self, a2, indexCopy, toIndex);
  if (indexCopy != toIndexCopy && v8)
  {
    v22 = v8;
    v12 = objc_msgSend_mutableCopy(self->_groupingColumns, v9, v10, v11);
    objc_msgSend_removeObjectAtIndex_(v12, v13, indexCopy, v14);
    if (objc_msgSend_count(v12, v15, v16, v17) < toIndexCopy)
    {
      toIndexCopy = objc_msgSend_count(v12, v18, v19, v20);
    }

    objc_msgSend_insertObject_atIndex_(v12, v18, v22, toIndexCopy);
    groupingColumns = self->_groupingColumns;
    self->_groupingColumns = v12;

    v8 = v22;
  }
}

- (void)appendRules:(id)rules
{
  rulesCopy = rules;
  v7 = objc_msgSend_mutableCopy(self->_groupingColumns, v4, v5, v6);
  v11 = objc_msgSend_groupingColumns(rulesCopy, v8, v9, v10);
  objc_msgSend_addObjectsFromArray_(v7, v12, v11, v13);

  groupingColumns = self->_groupingColumns;
  self->_groupingColumns = v7;
}

- (void)changeGroupingTypeForRuleIndex:(unint64_t)index toType:(int64_t)type
{
  v7 = objc_msgSend_ruleAtIndex_(self, a2, index, type);
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v7)
    {
      v25 = v7;
      v11 = objc_msgSend_groupingType(v7, v8, v9, v10) == type;
      v7 = v25;
      if (!v11)
      {
        v12 = [TSTGroupingColumn alloc];
        v16 = objc_msgSend_groupingColumnUid(v25, v13, v14, v15);
        v18 = v17;
        v21 = objc_msgSend_columnUid(v25, v17, v19, v20);
        v23 = objc_msgSend_initWithGroupingColumnUid_columnUid_groupingType_(v12, v22, v16, v18, v21, v22, type);
        objc_msgSend_replaceRuleAtIndex_withRule_(self, v24, index, v23);

        v7 = v25;
      }
    }
  }
}

- (void)replaceRuleAtIndex:(unint64_t)index withRule:(id)rule
{
  ruleCopy = rule;
  v9 = objc_msgSend_mutableCopy(self->_groupingColumns, v6, v7, v8);
  objc_msgSend_replaceObjectAtIndex_withObject_(v9, v10, index, ruleCopy);
  groupingColumns = self->_groupingColumns;
  self->_groupingColumns = v9;
}

- (void)addRule:(id)rule atGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  ruleCopy = rule;
  if (!levelCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTGroupingColumnList addRule:atGroupLevel:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumnList.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 257, 0, "Can't call this on root level");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  objc_msgSend_addRule_atIndex_(self, v6, ruleCopy, levelCopy - 1);
}

- (void)removeRuleAtGroupLevel:(unsigned __int8)level
{
  levelCopy = level;
  if (!level)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupingColumnList removeRuleAtGroupLevel:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumnList.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 262, 0, "Can't call this on root level");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  MEMORY[0x2821F9670](self, sel_removeRuleAtIndex_, levelCopy - 1, v3);
}

- (void)moveRuleFromGroupLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel
{
  toLevelCopy = toLevel;
  levelCopy = level;
  if (level)
  {
    if (toLevel)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupingColumnList moveRuleFromGroupLevel:toLevel:]", toLevel);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumnList.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 267, 0, "Can't call this on root level");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    if (toLevelCopy)
    {
      goto LABEL_6;
    }
  }

  v16 = MEMORY[0x277D81150];
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupingColumnList moveRuleFromGroupLevel:toLevel:]", toLevel);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumnList.mm", v19);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 268, 0, "Can't call this on root level");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
LABEL_6:

  MEMORY[0x2821F9670](self, sel_moveRuleFromIndex_toIndex_, levelCopy - 1, toLevelCopy - 1);
}

- (void)changeGroupingTypeForGroupLevel:(unsigned __int8)level toType:(int64_t)type
{
  levelCopy = level;
  if (!level)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTGroupingColumnList changeGroupingTypeForGroupLevel:toType:]", type);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumnList.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 273, 0, "Can't call this on root level");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  MEMORY[0x2821F9670](self, sel_changeGroupingTypeForRuleIndex_toType_, levelCopy - 1, type);
}

- (void)replaceRuleAtGroupLevel:(unsigned __int8)level withRule:(id)rule
{
  levelCopy = level;
  ruleCopy = rule;
  if (!levelCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSTGroupingColumnList replaceRuleAtGroupLevel:withRule:]", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupingColumnList.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 278, 0, "Can't call this on root level");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  objc_msgSend_replaceRuleAtIndex_withRule_(self, v6, levelCopy - 1, ruleCopy);
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)groupingColumnUidList
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4812000000;
  v12 = sub_221148044;
  v13 = sub_221148068;
  *__p = 0u;
  v15 = 0u;
  groupingColumns = self->_groupingColumns;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221148080;
  v8[3] = &unk_27845FAE8;
  v8[4] = &v9;
  objc_msgSend_enumerateObjectsUsingBlock_(groupingColumns, a3, v8, v3);
  v6 = v10;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  sub_221086EBC(retstr, v6[6], v6[7], (v6[7] - v6[6]) >> 4);
  _Block_object_dispose(&v9, 8);
  result = __p[1];
  if (__p[1])
  {
    *&v15 = __p[1];
    operator delete(__p[1]);
  }

  return result;
}

- (TSTGroupingColumnList)initWithArchive:(const void *)archive
{
  v16.receiver = self;
  v16.super_class = TSTGroupingColumnList;
  v4 = [(TSTGroupingColumnList *)&v16 init];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = *(archive + 6);
    if (v6 >= 1)
    {
      v7 = 8;
      do
      {
        v8 = [TSTGroupingColumn alloc];
        v13 = objc_msgSend_initWithArchive_(v8, v9, *(*(archive + 4) + v7), v10);
        if (v13)
        {
          objc_msgSend_addObject_(v5, v11, v13, v12);
        }

        v7 += 8;
        --v6;
      }

      while (v6);
    }

    groupingColumns = v4->_groupingColumns;
    v4->_groupingColumns = v5;
  }

  return v4;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  v26 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_groupingColumns;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16);
  if (v10)
  {
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = *(archive + 4);
        if (!v14)
        {
          goto LABEL_11;
        }

        v15 = *(archive + 6);
        v16 = *v14;
        if (v15 < *v14)
        {
          *(archive + 6) = v15 + 1;
          objc_msgSend_encodeToArchive_archiver_(v13, v9, *&v14[2 * v15 + 2], archiverCopy, v21);
          goto LABEL_13;
        }

        if (v16 == *(archive + 7))
        {
LABEL_11:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 16));
          v14 = *(archive + 4);
          v16 = *v14;
        }

        *v14 = v16 + 1;
        v17 = google::protobuf::Arena::CreateMaybeMessage<TST::GroupColumnArchive>(*(archive + 2));
        v18 = *(archive + 6);
        v19 = *(archive + 4) + 8 * v18;
        *(archive + 6) = v18 + 1;
        *(v19 + 8) = v17;
        objc_msgSend_encodeToArchive_archiver_(v13, v20, v17, archiverCopy, v21);
LABEL_13:
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v21, v25, 16);
    }

    while (v10);
  }
}

@end