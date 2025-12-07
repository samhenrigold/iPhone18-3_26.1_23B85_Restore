@interface CADEventOccurrenceSet
- ($44047BC61FEF0381D9BD0B01E075E58F)infoForDB:(int)b;
- (BOOL)setOccurrenceDatesWithDB:(int)b rowID:(int)d dates:(id)dates outRemovedDates:(id)removedDates outAddedAnyDates:(BOOL *)anyDates;
- (id)datesForDatabase:(int)database rowID:(int)d;
- (unint64_t)addOccurrenceWithDB:(int)b rowID:(int)d date:(id)date;
- (void)clear;
- (void)dealloc;
- (void)enumerateDatabases:(id)databases;
- (void)enumerateOccurrenceRowIDsInDatabase:(int)database block:(id)block;
@end

@implementation CADEventOccurrenceSet

- (void)dealloc
{
  [(CADEventOccurrenceSet *)self clear];
  v3.receiver = self;
  v3.super_class = CADEventOccurrenceSet;
  [(CADEventOccurrenceSet *)&v3 dealloc];
}

- (void)clear
{
  if (self->_dbCount >= 1)
  {
    v3 = 0;
    do
    {
      Count = CFDictionaryGetCount(self->_dbs[v3].var1);
      v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(self->_dbs[v3].var1, 0, v5);
      CFRelease(self->_dbs[v3].var1);
      for (i = v5; Count; --Count)
      {
        CADPackedArrayFree(i++);
      }

      free(v5);
      ++v3;
    }

    while (v3 < self->_dbCount);
  }

  *&self->_dbCount = 0;
  free(self->_dbs);
  self->_dbs = 0;
  self->_hasInvalidDates = 0;
}

- (unint64_t)addOccurrenceWithDB:(int)b rowID:(int)d date:(id)date
{
  v6 = *&b;
  dateCopy = date;
  [dateCopy timeIntervalSinceReferenceDate];
  v10 = v9;
  if ((v9 - 1) > 0x7FFFFFFE)
  {
    v10 = 0;
    self->_hasInvalidDates = 1;
  }

  v11 = [(CADEventOccurrenceSet *)self infoForDB:v6];
  v12 = CFDictionaryGetValue(v11->var1, d);
  v13 = 0;
  value = v12;
  v18 = v12 == 0;
  do
  {
    v14 = v13;
    if (v18)
    {
      break;
    }

    v15 = CADPackedArrayRead(v12, v13, &v18);
    if (v10 == v15)
    {
      if (v10)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      goto LABEL_13;
    }

    v13 = v14 + 1;
  }

  while (v10 >= v15);
  CADPackedArrayInsert(&value, v14, v10);
  if (value != v12)
  {
    CFDictionarySetValue(v11->var1, d, value);
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (BOOL)setOccurrenceDatesWithDB:(int)b rowID:(int)d dates:(id)dates outRemovedDates:(id)removedDates outAddedAnyDates:(BOOL *)anyDates
{
  v9 = *&b;
  v47 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  removedDatesCopy = removedDates;
  value = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = [datesCopy countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(datesCopy);
        }

        [*(*(&v39 + 1) + 8 * i) timeIntervalSinceReferenceDate];
        if ((v18 - 1) >= 0x7FFFFFFF)
        {
          if ((v15 & 1) == 0)
          {
            self->_hasInvalidDates = 1;
            CADPackedArrayInsert(&value, 0, 0);
            ++v14;
          }

          v15 = 1;
        }

        else
        {
          CADPackedArrayInsert(&value, v14++, v18);
        }
      }

      v13 = [datesCopy countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v13);
  }

  v19 = [(CADEventOccurrenceSet *)self infoForDB:v9];
  v20 = CFDictionaryGetValue(v19->var1, d);
  v38 = v20;
  v21 = removedDatesCopy;
  if (removedDatesCopy | anyDates)
  {
    v22 = value;
    v23 = removedDatesCopy;
    v24 = v22 == 0;
    v45 = v22 == 0;
    v44 = v20 == 0;
    if (anyDates)
    {
      *anyDates = 0;
    }

    if (v20 && v22)
    {
      v25 = 0;
      v26 = 0;
      while (1)
      {
        v27 = CADPackedArrayRead(v22, v25, &v45);
        v28 = CADPackedArrayRead(v20, v26, &v44);
        if (!v28)
        {
          break;
        }

        if (v27 == v28)
        {
          ++v25;
          ++v26;
        }

        else if (v27 >= v28)
        {
          if (v28 < v27)
          {
            v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v28];
            [v23 addObject:v29];

            ++v26;
            v45 = 0;
          }
        }

        else
        {
          ++v25;
          v44 = 0;
          if (anyDates)
          {
            *anyDates = 1;
          }
        }

        v24 = v45;
        if (v45 || v44)
        {
          if (!v44)
          {
            goto LABEL_33;
          }

          goto LABEL_36;
        }
      }

LABEL_45:

      v32 = 0;
      p_value = &value;
      v21 = removedDatesCopy;
LABEL_48:
      CADPackedArrayFree(p_value);
      goto LABEL_49;
    }

    if (v20)
    {
      v26 = 0;
LABEL_33:
      while (1)
      {
        v30 = CADPackedArrayRead(v20, v26, &v44);
        if (!v30)
        {
          goto LABEL_45;
        }

        v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v30];
        [v23 addObject:v31];

        ++v26;
        if (v44)
        {
          v24 = v45;
LABEL_36:
          v21 = removedDatesCopy;
          break;
        }
      }
    }

    if (anyDates && !v24)
    {
      *anyDates = 1;
    }
  }

  if (value != v20)
  {
    var1 = v19->var1;
    if (value)
    {
      CFDictionarySetValue(var1, d, value);
    }

    else
    {
      CFDictionaryRemoveValue(var1, d);
    }

    v32 = 1;
    p_value = &v38;
    goto LABEL_48;
  }

  v32 = 1;
LABEL_49:

  return v32;
}

- ($44047BC61FEF0381D9BD0B01E075E58F)infoForDB:(int)b
{
  dbCount = self->_dbCount;
  if (dbCount < 1)
  {
LABEL_5:
    dbCapacity = self->_dbCapacity;
    if (dbCount >= dbCapacity)
    {
      if (dbCapacity)
      {
        v10 = 2 * dbCapacity;
      }

      else
      {
        v10 = 2;
      }

      self->_dbCapacity = v10;
      dbs = malloc_type_realloc(self->_dbs, 16 * v10, 0x1020040D5A9D86FuLL);
      if (!dbs)
      {
        [(CADEventOccurrenceSet *)self clear];
        return 0;
      }

      self->_dbs = dbs;
    }

    else
    {
      dbs = self->_dbs;
    }

    dbs[dbCount].var0 = b;
    self->_dbs[dbCount].var1 = CFDictionaryCreateMutable(0, 0, 0, 0);
    ++self->_dbCount;
    return &self->_dbs[dbCount];
  }

  else
  {
    result = self->_dbs;
    v7 = dbCount;
    while (result->var0 != b)
    {
      ++result;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

- (id)datesForDatabase:(int)database rowID:(int)d
{
  Value = CFDictionaryGetValue([(CADEventOccurrenceSet *)self infoForDB:*&database][8], d);
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:CADPackedArrayCount(Value)];
  v9 = Value == 0;
  if (Value)
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{CADPackedArrayRead(Value, v6, &v9)}];
      [v5 addObject:v7];

      ++v6;
    }

    while (!v9);
  }

  return v5;
}

- (void)enumerateDatabases:(id)databases
{
  databasesCopy = databases;
  Mutable = CFArrayCreateMutable(0, self->_dbCount, 0);
  if (self->_dbCount >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      CFArrayAppendValue(Mutable, self->_dbs[v5].var0);
      ++v6;
      dbCount = self->_dbCount;
      ++v5;
    }

    while (v6 < dbCount);
    if (dbCount >= 1)
    {
      for (i = 0; i != dbCount; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
        databasesCopy[2](databasesCopy, ValueAtIndex);
      }
    }
  }

  CFRelease(Mutable);
}

- (void)enumerateOccurrenceRowIDsInDatabase:(int)database block:(id)block
{
  blockCopy = block;
  dbCount = self->_dbCount;
  if (dbCount >= 1)
  {
    p_var1 = &self->_dbs->var1;
    while (*(p_var1 - 2) != database)
    {
      p_var1 += 2;
      if (!--dbCount)
      {
        goto LABEL_11;
      }
    }

    v9 = *p_var1;
    if (*p_var1)
    {
      v14 = blockCopy;
      Count = CFDictionaryGetCount(v9);
      v11 = malloc_type_malloc(8 * Count, 0x100004000313F17uLL);
      CFDictionaryGetKeysAndValues(v9, v11, 0);
      if (Count >= 1)
      {
        v12 = v11;
        do
        {
          v13 = *v12++;
          v14[2](v14, v13);
          --Count;
        }

        while (Count);
      }

      free(v11);
      blockCopy = v14;
    }
  }

LABEL_11:
}

@end