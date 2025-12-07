@interface TSTGroupValueTuple
+ (TSKUIDStruct)groupValueUidForTuple:(id)tuple appendingTuple:(id)appendingTuple;
- (BOOL)isEqual:(id)equal;
- (TSKUIDStruct)groupValueUid;
- (TSTGroupValueTuple)initWithTSCEValues:(const void *)values locale:(id)locale;
- (TSTGroupValueTuple)initWithValueArray:(id)array;
- (TSTGroupValueTuple)initWithValues:(id)values;
- (const)combinedCanonicalKeyStringAsUtf8;
- (id).cxx_construct;
- (id)canonicalKeyStringAtLevel:(unsigned __int8)level;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)groupValueAtLevel:(unsigned __int8)level;
- (id)groupValueTupleByAppendingTuple:(id)tuple;
- (id)groupValueTupleByAppendingValue:(id)value;
- (id)groupValueTupleByDemotingValueAtLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel;
- (id)groupValueTupleByMergingTuple:(id)tuple toLevel:(unsigned __int8)level;
- (id)groupValueTupleByPromotingValueAtLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel;
- (id)groupValueTupleByRemovingValueAtLevel:(unsigned __int8)level;
- (id)groupValueTupleByReplacingValue:(id)value atLevel:(unsigned __int8)level;
- (id)locale;
- (id)prefixTupleToLevel:(unsigned __int8)level;
- (unint64_t)hash;
- (void)updateWithDocumentRoot:(id)root;
@end

@implementation TSTGroupValueTuple

- (TSTGroupValueTuple)initWithValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_new();
  v8 = v5;
  if (valuesCopy)
  {
    objc_msgSend_addObject_(v5, v6, valuesCopy, v7);
    v9 = 0;
    v14 = &v15;
    while (1)
    {
      v10 = v9;
      v11 = v14++;
      v9 = *v11;

      if (!v9)
      {
        break;
      }

      objc_msgSend_addObject_(v8, v6, v9, v7);
    }
  }

  v12 = objc_msgSend_initWithValueArray_(self, v6, v8, v7);

  return v12;
}

- (TSTGroupValueTuple)initWithValueArray:(id)array
{
  arrayCopy = array;
  v12.receiver = self;
  v12.super_class = TSTGroupValueTuple;
  v8 = [(TSTGroupValueTuple *)&v12 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(arrayCopy, v5, v6, v7);
    groupValues = v8->_groupValues;
    v8->_groupValues = v9;

    v8->_groupValueUid._lower = 0;
    v8->_groupValueUid._upper = 0;
  }

  return v8;
}

- (TSTGroupValueTuple)initWithTSCEValues:(const void *)values locale:(id)locale
{
  localeCopy = locale;
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_initWithCapacity_(v7, v8, (*(values + 1) - *values) >> 3, v9);
  v13 = *values;
  v14 = *(values + 1);
  if (*values != v14)
  {
    do
    {
      v15 = *v13;
      v17 = objc_msgSend_newCellValueFromTSCEValue_withLocale_(TSCECellValue, v16, v15, localeCopy);
      objc_msgSend_addObject_(v12, v18, v17, v19);

      ++v13;
    }

    while (v13 != v14);
  }

  v20 = objc_msgSend_initWithValueArray_(self, v10, v12, v11);

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSTGroupValueTuple alloc];
  groupValues = self->_groupValues;

  return objc_msgSend_initWithValueArray_(v4, v5, groupValues, v6);
}

- (id)locale
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_groupValues;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v2);
      }

      v10 = objc_msgSend_locale(*(*(&v12 + 1) + 8 * v9), v4, v5, v6, v12);
      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v12, v16, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10;
}

- (void)updateWithDocumentRoot:(id)root
{
  v39 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  if (rootCopy)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = self->_groupValues;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v34, v38, 16);
    if (v12)
    {
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v16 = objc_msgSend_documentLocale(rootCopy, v9, v10, v11);
          objc_msgSend_setLocale_(v15, v17, v16, v18);

          v22 = objc_msgSend_customFormatList(rootCopy, v19, v20, v21);
          objc_msgSend_updateWithCustomFormatList_(v15, v23, v22, v24);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v34, v38, 16);
      }

      while (v12);
    }
  }

  else
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTGroupValueTuple updateWithDocumentRoot:]", v5);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupValueTuple.mm", v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 100, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
  }
}

- (const)combinedCanonicalKeyStringAsUtf8
{
  v37 = *MEMORY[0x277D85DE8];
  p_combinedCanonicalKeyStringAsUtf8 = &self->_combinedCanonicalKeyStringAsUtf8;
  v3 = *(&self->_combinedCanonicalKeyStringAsUtf8.__rep_.__l + 23);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (*(&self->_combinedCanonicalKeyStringAsUtf8.__rep_.__l + 23))
    {
      goto LABEL_3;
    }

LABEL_6:
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ((*(&p_combinedCanonicalKeyStringAsUtf8->__rep_.__l + 23) & 0x8000000000000000) != 0)
    {
      if (p_combinedCanonicalKeyStringAsUtf8->__rep_.__l.__size_)
      {
        goto LABEL_27;
      }
    }

    else if (*(&p_combinedCanonicalKeyStringAsUtf8->__rep_.__l + 23))
    {
      goto LABEL_27;
    }

    if (objc_msgSend_numberOfLevels(selfCopy, v6, v7, v8))
    {
      v9 = objc_opt_new();
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = selfCopy->_groupValues;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v32, v36, 16);
      if (v15)
      {
        v16 = *v33;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v33 != v16)
            {
              objc_enumerationMutation(v10);
            }

            v18 = objc_msgSend_canonicalKeyString(*(*(&v32 + 1) + 8 * i), v12, v13, v14);
            objc_msgSend_appendString_(v9, v19, v18, v20);

            objc_msgSend_appendString_(v9, v21, @"\uFFFF", v22);
          }

          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v32, v36, 16);
        }

        while (v15);
      }

      v23 = v9;
      v27 = objc_msgSend_UTF8String(v9, v24, v25, v26);
      v28 = strlen(v27);
      if (v28 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_22108CD88();
      }

      v29 = v28;
      if (v28 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v31) = v28;
      if (v28)
      {
        memmove(&__dst, v27, v28);
      }

      *(&__dst + v29) = 0;
      if (*(&p_combinedCanonicalKeyStringAsUtf8->__rep_.__l + 23) < 0)
      {
        operator delete(p_combinedCanonicalKeyStringAsUtf8->__rep_.__l.__data_);
      }

      *p_combinedCanonicalKeyStringAsUtf8->__rep_.__s.__data_ = __dst;
      *(&p_combinedCanonicalKeyStringAsUtf8->__rep_.__l + 2) = v31;
    }

LABEL_27:
    objc_sync_exit(selfCopy);

    if ((*(&p_combinedCanonicalKeyStringAsUtf8->__rep_.__l + 23) & 0x80) == 0)
    {
      return p_combinedCanonicalKeyStringAsUtf8->__rep_.__s.__data_;
    }

    return p_combinedCanonicalKeyStringAsUtf8->__rep_.__l.__data_;
  }

  if (!self->_combinedCanonicalKeyStringAsUtf8.__rep_.__l.__size_)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v3 & 0x80) != 0)
  {
    return p_combinedCanonicalKeyStringAsUtf8->__rep_.__l.__data_;
  }

  return p_combinedCanonicalKeyStringAsUtf8->__rep_.__s.__data_;
}

- (TSKUIDStruct)groupValueUid
{
  p_groupValueUid = &self->_groupValueUid;
  lower = self->_groupValueUid._lower;
  upper = p_groupValueUid->_upper;
  if (!lower)
  {
    if (upper)
    {
      lower = 0;
    }

    else
    {
      if (objc_msgSend_numberOfLevels(self, 0, v2, v3))
      {
        v11 = objc_msgSend_combinedCanonicalKeyStringAsUtf8(self, v8, v9, v10);
        lower = sub_2211A9368(v11);
      }

      else
      {
        lower = objc_msgSend_groupByRootUid(TSCECategoryRef, v8, v9, v10);
      }

      p_groupValueUid->_lower = lower;
      p_groupValueUid->_upper = upper;
    }
  }

  result._upper = upper;
  result._lower = lower;
  return result;
}

+ (TSKUIDStruct)groupValueUidForTuple:(id)tuple appendingTuple:(id)appendingTuple
{
  tupleCopy = tuple;
  appendingTupleCopy = appendingTuple;
  if (!tupleCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSTGroupValueTuple groupValueUidForTuple:appendingTuple:]", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupValueTuple.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 154, 0, "invalid nil value for '%{public}s'", "upperTuple");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  if (!appendingTupleCopy)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSTGroupValueTuple groupValueUidForTuple:appendingTuple:]", v8);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupValueTuple.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 155, 0, "invalid nil value for '%{public}s'", "lowerTuple");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  }

  v28 = objc_msgSend_combinedCanonicalKeyStringAsUtf8(appendingTupleCopy, v6, v7, v8);
  v32 = v28;
  if (v28 && *v28)
  {
    v33 = objc_msgSend_combinedCanonicalKeyStringAsUtf8(tupleCopy, v29, v30, v31);
    v35 = sub_2211A9410(v33, v32, 0, v34);
  }

  else
  {
    v35 = objc_msgSend_groupValueUid(tupleCopy, v29, v30, v31);
  }

  v37 = v35;
  v38 = v36;

  v39 = v37;
  v40 = v38;
  result._upper = v40;
  result._lower = v39;
  return result;
}

- (id)groupValueTupleByReplacingValue:(id)value atLevel:(unsigned __int8)level
{
  levelCopy = level;
  valueCopy = value;
  v11 = objc_msgSend_mutableCopy(self->_groupValues, v8, v9, v10);
  v15 = v11;
  if (levelCopy)
  {
    if (valueCopy)
    {
      v19 = (levelCopy - 1);
      if (objc_msgSend_count(v11, v12, v13, v14) <= v19)
      {
        if (objc_msgSend_count(v15, v16, v17, v18) == v19)
        {
          objc_msgSend_addObject_(v15, v29, valueCopy, v30);
        }

        else
        {
          v31 = MEMORY[0x277D81150];
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSTGroupValueTuple groupValueTupleByReplacingValue:atLevel:]", v30);
          v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupValueTuple.mm", v34);
          v36 = NSStringFromSelector(a2);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v37, v32, v35, 179, 0, "%{public}@: level %d is beyond this tuple's size", v36, levelCopy);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
        }
      }

      else
      {
        objc_msgSend_replaceObjectAtIndex_withObject_(v15, v16, (levelCopy - 1), valueCopy);
      }
    }
  }

  else
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTGroupValueTuple groupValueTupleByReplacingValue:atLevel:]", v14);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupValueTuple.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 169, 0, "Don't try to replace value for the root");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  v41 = [TSTGroupValueTuple alloc];
  v44 = objc_msgSend_initWithValueArray_(v41, v42, v15, v43);

  return v44;
}

- (id)groupValueTupleByAppendingValue:(id)value
{
  valueCopy = value;
  v8 = objc_msgSend_mutableCopy(self->_groupValues, v5, v6, v7);
  v11 = v8;
  if (valueCopy)
  {
    objc_msgSend_addObject_(v8, v9, valueCopy, v10);
  }

  v12 = [TSTGroupValueTuple alloc];
  v15 = objc_msgSend_initWithValueArray_(v12, v13, v11, v14);

  return v15;
}

- (id)groupValueTupleByAppendingTuple:(id)tuple
{
  tupleCopy = tuple;
  v11 = objc_msgSend_mutableCopy(self->_groupValues, v5, v6, v7);
  if (tupleCopy && objc_msgSend_count(tupleCopy[1], v8, v9, v10))
  {
    objc_msgSend_addObjectsFromArray_(v11, v12, tupleCopy[1], v13);
  }

  v14 = [TSTGroupValueTuple alloc];
  v17 = objc_msgSend_initWithValueArray_(v14, v15, v11, v16);

  return v17;
}

- (id)groupValueTupleByMergingTuple:(id)tuple toLevel:(unsigned __int8)level
{
  levelCopy = level;
  tupleCopy = tuple;
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9);
  v14 = objc_msgSend_numberOfLevels(self, v11, v12, v13);
  v18 = objc_msgSend_numberOfLevels(tupleCopy, v15, v16, v17);
  if (v14 >= v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = v14;
  }

  v23 = 1;
  if (v22 >= levelCopy)
  {
    v24 = levelCopy;
  }

  else
  {
    v24 = v22;
  }

  if (v24)
  {
    do
    {
      v25 = objc_msgSend_groupValueAtLevel_(tupleCopy, v19, v23, v21);
      objc_msgSend_addObject_(v10, v26, v25, v27);

      ++v23;
    }

    while (v24 >= v23);
  }

  while (objc_msgSend_numberOfLevels(self, v19, v20, v21) >= v23)
  {
    v28 = objc_msgSend_groupValueAtLevel_(self, v31, v23, v32);
    objc_msgSend_addObject_(v10, v29, v28, v30);

    ++v23;
  }

  v33 = [TSTGroupValueTuple alloc];
  v36 = objc_msgSend_initWithValueArray_(v33, v34, v10, v35);

  return v36;
}

- (id)groupValueTupleByRemovingValueAtLevel:(unsigned __int8)level
{
  levelCopy = level;
  v5 = objc_msgSend_mutableCopy(self->_groupValues, a2, level, v3);
  v9 = v5;
  if ((levelCopy - 1) <= 0xFD)
  {
    if (objc_msgSend_count(v5, v6, v7, v8) < levelCopy)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTGroupValueTuple groupValueTupleByRemovingValueAtLevel:]", v12);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupValueTuple.mm", v16);
      v21 = objc_msgSend_count(v9, v18, v19, v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v22, v14, v17, 226, 0, "Removing from level %d of a %d-level tuple", levelCopy, v21);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    }

    if (objc_msgSend_count(v9, v10, v11, v12) >= levelCopy)
    {
      objc_msgSend_removeObjectAtIndex_(v9, v26, (levelCopy - 1), v27);
    }
  }

  v28 = [TSTGroupValueTuple alloc];
  v31 = objc_msgSend_initWithValueArray_(v28, v29, v9, v30);

  return v31;
}

- (id)groupValueTupleByPromotingValueAtLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel
{
  toLevelCopy = toLevel;
  levelCopy = level;
  v6 = objc_msgSend_mutableCopy(self->_groupValues, a2, level, toLevel);
  v10 = v6;
  if (levelCopy)
  {
    if (toLevelCopy)
    {
      v14 = toLevelCopy;
      if (objc_msgSend_count(v6, v7, v8, v9) > toLevelCopy)
      {
        v17 = (levelCopy - 1);
        if (v17 >= objc_msgSend_count(v10, v11, v12, v13))
        {
          v18 = 0;
        }

        else
        {
          v18 = objc_msgSend_objectAtIndex_(v10, v15, (levelCopy - 1), v16);
          objc_msgSend_removeObjectAtIndex_(v10, v19, v17, v20);
          if (v18)
          {
            v24 = objc_msgSend_count(v10, v21, v22, v23);
            v26 = v14 - 1;
            if (v26 <= v24)
            {
              objc_msgSend_insertObject_atIndex_(v10, v25, v18, v26);
            }
          }
        }
      }
    }
  }

  v27 = [TSTGroupValueTuple alloc];
  v30 = objc_msgSend_initWithValueArray_(v27, v28, v10, v29);

  return v30;
}

- (id)groupValueTupleByDemotingValueAtLevel:(unsigned __int8)level toLevel:(unsigned __int8)toLevel
{
  toLevelCopy = toLevel;
  levelCopy = level;
  v6 = objc_msgSend_mutableCopy(self->_groupValues, a2, level, toLevel);
  v10 = v6;
  if (levelCopy && toLevelCopy && objc_msgSend_count(v6, v7, v8, v9) > levelCopy)
  {
    v13 = levelCopy - 1;
    v14 = objc_msgSend_objectAtIndex_(v10, v11, v13, v12);
    objc_msgSend_removeObjectAtIndex_(v10, v15, v13, v16);
    v20 = objc_msgSend_count(v10, v17, v18, v19);
    v22 = (toLevelCopy - 1);
    if (v22 <= v20)
    {
      objc_msgSend_insertObject_atIndex_(v10, v21, v14, v22);
    }
  }

  v23 = [TSTGroupValueTuple alloc];
  v26 = objc_msgSend_initWithValueArray_(v23, v24, v10, v25);

  return v26;
}

- (id)prefixTupleToLevel:(unsigned __int8)level
{
  levelCopy = level;
  if (objc_msgSend_numberOfLevels(self, a2, level, v3) == level)
  {
    selfCopy = self;
  }

  else
  {
      ;
    }

    v17 = [TSTGroupValueTuple alloc];
    selfCopy = objc_msgSend_initWithValueArray_(v17, v18, i, v19);
  }

  return selfCopy;
}

- (id)groupValueAtLevel:(unsigned __int8)level
{
  if (level)
  {
    levelCopy = level;
    if (objc_msgSend_count(self->_groupValues, a2, level, v3) >= level)
    {
      v9 = objc_msgSend_objectAtIndex_(self->_groupValues, v7, (levelCopy - 1), v8);
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

- (id)canonicalKeyStringAtLevel:(unsigned __int8)level
{
  if (level && (v5 = level, objc_msgSend_count(self->_groupValues, a2, level, v3) >= level))
  {
    v9 = objc_msgSend_objectAtIndex_(self->_groupValues, v6, (v5 - 1), v7);
    v8 = objc_msgSend_canonicalKeyString(v9, v10, v11, v12);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ [", v6, v4);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_groupValues;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
  if (v12)
  {
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_appendFormat_(v7, v10, @"%@ | ", v11, *(*(&v18 + 1) + 8 * i));
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v18, v22, 16);
    }

    while (v12);
  }

  objc_msgSend_appendString_(v7, v15, @"]", v16);

  return v7;
}

- (unint64_t)hash
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = self->_groupValues;
  v4 = 0;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v17, v21, 16);
  if (v8)
  {
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v11 = objc_msgSend_tsceValue(*(*(&v17 + 1) + 8 * v10), v5, v6, v7, v17);
        v15 = objc_msgSend_hash(v11, v12, v13, v14);

        v4 = v15 + 16 * v4;
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v17, v21, 16);
    }

    while (v8);
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8 && (v9 = objc_msgSend_numberOfLevels(self, v5, v6, v7), v9 == objc_msgSend_numberOfLevels(v8, v10, v11, v12)))
  {
    v13 = v8[1];
    v17 = objc_msgSend_count(self->_groupValues, v14, v15, v16);
    if (v17 == objc_msgSend_count(v13, v18, v19, v20))
    {
      v24 = objc_msgSend_count(self->_groupValues, v21, v22, v23);
      if (v24)
      {
        v27 = 0;
        v28 = v24 - 1;
        do
        {
          v29 = objc_msgSend_objectAtIndex_(self->_groupValues, v25, v27, v26);
          v32 = objc_msgSend_objectAtIndex_(v13, v30, v27, v31);
          isEqualToCellValue = objc_msgSend_isEqualToCellValue_(v29, v33, v32, v34);

          if (isEqualToCellValue)
          {
            v36 = v28 == v27;
          }

          else
          {
            v36 = 1;
          }

          ++v27;
        }

        while (!v36);
      }

      else
      {
        LOBYTE(isEqualToCellValue) = 1;
      }
    }

    else
    {
      LOBYTE(isEqualToCellValue) = 0;
    }
  }

  else
  {
    LOBYTE(isEqualToCellValue) = 0;
  }

  return isEqualToCellValue;
}

- (id).cxx_construct
{
  *(self + 40) = 0uLL;
  *(self + 4) = 0;
  return self;
}

@end