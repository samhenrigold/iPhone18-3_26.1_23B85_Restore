@interface ASDSelectorControl
- (ASDSelectorControl)initWithIsSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable;
- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client;
- (BOOL)setSelectedValues:(const unsigned int *)values withCount:(unint64_t)count;
- (BOOL)setSelectedValues:(id)values;
- (NSArray)selectedValues;
- (id)_findValue:(unsigned int)value;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (id)driverClassName;
- (id)nameForValue:(unsigned int)value;
- (id)values;
- (unint64_t)_indexOfValue:(unsigned int)value;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (unsigned)kindForValue:(unsigned int)value;
- (unsigned)minDataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (unsigned)selectedValue;
- (void)_updateSelectedValue;
- (void)addValue:(id)value;
- (void)removeValue:(id)value;
@end

@implementation ASDSelectorControl

- (ASDSelectorControl)initWithIsSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d
{
  v21.receiver = self;
  v21.super_class = ASDSelectorControl;
  v8 = [(ASDControl *)&v21 initWithElement:*&element inScope:*&scope withPlugin:plugin andObjectClassID:*&d];
  v9 = v8;
  if (v8)
  {
    v8->_settable = settable;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    values = v9->_values;
    v9->_values = v10;

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v12 bundleIdentifier];
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"%@.%@.%p", bundleIdentifier, v16, v9];
    v18 = dispatch_queue_create([v17 UTF8String], 0);
    valueQueue = v9->_valueQueue;
    v9->_valueQueue = v18;
  }

  return v9;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  if (property)
  {
    mSelector = property->mSelector;
    v7 = 1;
    if (property->mSelector > 1935893352)
    {
      if (mSelector != 1935893353 && mSelector != 1935894894)
      {
LABEL_11:
        v11 = v3;
        v12 = v4;
        v10.receiver = self;
        v10.super_class = ASDSelectorControl;
        return [(ASDControl *)&v10 hasProperty:?];
      }
    }

    else
    {
      if (mSelector == 1668049771)
      {
        return self->_hasKindProperty;
      }

      if (mSelector != 1935892841)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

- (unsigned)minDataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1935893353)
  {
    return 4;
  }

  v9 = v5;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = ASDSelectorControl;
  return [ASDObject minDataSizeForProperty:sel_minDataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  mSelector = property->mSelector;
  if (property->mSelector > 1935893352)
  {
    if (mSelector == 1935894894)
    {
      return 8;
    }

    if (mSelector == 1935893353)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      valueQueue = self->_valueQueue;
      v16 = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __77__ASDSelectorControl_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke;
      v12[3] = &unk_278CE3FE0;
      v12[4] = self;
      v12[5] = &v17;
      v12[6] = &v13;
      dispatch_sync(valueQueue, v12);
      if (v14[3])
      {
        v7 = 4 * *(v18 + 6);
      }

      else
      {
        v7 = 4;
      }

      _Block_object_dispose(&v13, 8);
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (mSelector != 1668049771)
  {
    if (mSelector == 1935892841)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 0;
      v6 = self->_valueQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __77__ASDSelectorControl_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2;
      block[3] = &unk_278CE3E28;
      block[4] = self;
      block[5] = &v17;
      dispatch_sync(v6, block);
      v7 = 4 * *(v18 + 6);
LABEL_18:
      _Block_object_dispose(&v17, 8);
      return v7;
    }

LABEL_11:
    v10.receiver = self;
    v10.super_class = ASDSelectorControl;
    return [ASDControl dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
  }

  if (self->_hasKindProperty)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

void *__77__ASDSelectorControl_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 96);
  result = [*(a1[4] + 88) count];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void *__77__ASDSelectorControl_dataSizeForProperty_withQualifierSize_andQualifierData___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 88) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)_indexOfValue:(unsigned int)value
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_values;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    v10 = v7;
    v7 += v6;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v4);
      }

      if ([*(*(&v12 + 1) + 8 * v9) value] == value)
      {
        break;
      }

      ++v10;
      if (v6 == ++v9)
      {
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
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
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)_findValue:(unsigned int)value
{
  v4 = [(ASDSelectorControl *)self _indexOfValue:*&value];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_values objectAtIndex:v4];
  }

  return v5;
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if (property && dataSize && andData)
  {
    mSelector = property->mSelector;
    if (property->mSelector > 1935893352)
    {
      if (mSelector != 1935894894)
      {
        if (mSelector == 1935893353)
        {
          v27 = 0;
          v28 = &v27;
          v29 = 0x2020000000;
          v30 = 0;
          valueQueue = self->_valueQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __93__ASDSelectorControl_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke;
          block[3] = &unk_278CE3E50;
          block[6] = andData;
          block[7] = dataSize;
          block[4] = self;
          block[5] = &v27;
          v11 = block;
          goto LABEL_11;
        }

LABEL_12:
        v20.receiver = self;
        v20.super_class = ASDSelectorControl;
        v12 = [ASDControl getProperty:sel_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
        *(v32 + 24) = v12;
        goto LABEL_23;
      }

      if (size >= 4 && data && *dataSize >= 8)
      {
        v16 = *data;
        v17 = self->_valueQueue;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __93__ASDSelectorControl_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_3;
        v23[3] = &unk_278CE4208;
        v24 = v16;
        v23[4] = self;
        v23[5] = &v31;
        v23[6] = andData;
        dispatch_sync(v17, v23);
        v15 = 8;
        goto LABEL_22;
      }
    }

    else
    {
      if (mSelector != 1668049771)
      {
        if (mSelector == 1935892841)
        {
          v27 = 0;
          v28 = &v27;
          v29 = 0x2020000000;
          v30 = 0;
          valueQueue = self->_valueQueue;
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __93__ASDSelectorControl_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2;
          v25[3] = &unk_278CE3E50;
          v25[6] = dataSize;
          v25[7] = andData;
          v25[4] = self;
          v25[5] = &v27;
          v11 = v25;
LABEL_11:
          dispatch_sync(valueQueue, v11);
          *dataSize = 4 * *(v28 + 6);
          *(v32 + 24) = 1;
          _Block_object_dispose(&v27, 8);
          goto LABEL_23;
        }

        goto LABEL_12;
      }

      if (self->_hasKindProperty && size >= 4 && data && *dataSize >= 4)
      {
        v13 = *data;
        v14 = self->_valueQueue;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __93__ASDSelectorControl_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_4;
        v21[3] = &unk_278CE4208;
        v22 = v13;
        v21[4] = self;
        v21[5] = &v31;
        v21[6] = andData;
        dispatch_sync(v14, v21);
        v15 = 4;
LABEL_22:
        *dataSize = v15;
      }
    }
  }

LABEL_23:
  v18 = *(v32 + 24);
  _Block_object_dispose(&v31, 8);
  return v18;
}

void __93__ASDSelectorControl_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([*(*(a1 + 32) + 88) count])
  {
    v3 = *(a1 + 48);
    v4 = **(a1 + 56);
    v5 = *(a1 + 32);
    if (*(v5 + 96) >= v4 >> 2)
    {
      v6 = v4 >> 2;
    }

    else
    {
      v6 = *(v5 + 96);
    }

    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = *(v5 + 88);
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([v12 selected])
          {
            if (*(*(*(a1 + 40) + 8) + 24) >= v6)
            {
              goto LABEL_15;
            }

            v13 = [v12 value];
            v14 = *(*(a1 + 40) + 8);
            v15 = *(v14 + 24);
            *(v14 + 24) = v15 + 1;
            *(v3 + 4 * v15) = v13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

LABEL_15:
  }

  else if (**(a1 + 56) >= 4u)
  {
    **(a1 + 48) = *(*(a1 + 32) + 80);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  objc_autoreleasePoolPop(v2);
}

void __93__ASDSelectorControl_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = **(a1 + 48);
  if ([*(*(a1 + 32) + 88) count] <= v3 >> 2)
  {
    v4 = [*(*(a1 + 32) + 88) count];
  }

  else
  {
    v4 = **(a1 + 48) >> 2;
  }

  v5 = *(a1 + 56);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(*(a1 + 32) + 88);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v12 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if (*(*(*(a1 + 40) + 8) + 24) == v4)
      {
        break;
      }

      *(v5 + 4 * (*(*(*(a1 + 40) + 8) + 24))++) = [*(*(&v11 + 1) + 8 * v10) value];
      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v8)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void __93__ASDSelectorControl_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _findValue:*(a1 + 56)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 name];
    **(a1 + 48) = v5;

    v6 = **(a1 + 48);
    if (v6)
    {
      CFRetain(v6);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  objc_autoreleasePoolPop(v2);
}

void __93__ASDSelectorControl_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _findValue:*(a1 + 56)];
  v4 = v3;
  if (v3)
  {
    **(a1 + 48) = [v3 kind];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable
{
  if (!settable)
  {
    return 0;
  }

  if (settable->mSelector == 1935893353)
  {

    return [(ASDSelectorControl *)self isSettable];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = ASDSelectorControl;
    return [(ASDObject *)&v6 isPropertySettable:?];
  }
}

- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client
{
  if (property)
  {
    v8 = *&client;
    v10 = *&dataSize;
    v12 = *&size;
    v15 = [(ASDSelectorControl *)self hasProperty:?];
    if (v15)
    {
      v15 = [(ASDSelectorControl *)self isPropertySettable:property];
      if (v15)
      {
        if (property->mSelector == 1935893353)
        {
          if (v10 == 4)
          {
            v16 = *andData;

            LOBYTE(v15) = [(ASDSelectorControl *)self changeValue:v16];
          }

          else
          {

            LOBYTE(v15) = [(ASDSelectorControl *)self changeValues:andData withCount:v10 >> 2];
          }
        }

        else
        {
          v18.receiver = self;
          v18.super_class = ASDSelectorControl;
          LOBYTE(v15) = [(ASDObject *)&v18 setProperty:property withQualifierSize:v12 qualifierData:data dataSize:v10 andData:andData forClient:v8];
        }
      }
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (void)_updateSelectedValue
{
  v17 = *MEMORY[0x277D85DE8];
  self->_selectedValue = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_values;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 selected])
        {
          self->_selectedValue = [v8 value];
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  LODWORD(v11) = 0;
  v9 = [(ASDObject *)self propertyChangedDelegate:0x676C6F6273636369];
  [v9 changedProperty:&v10 forObject:self];
}

- (void)addValue:(id)value
{
  valueCopy = value;
  valueQueue = self->_valueQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__ASDSelectorControl_addValue___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = valueCopy;
  v6 = valueCopy;
  dispatch_sync(valueQueue, v7);
}

void __31__ASDSelectorControl_addValue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _indexOfValue:{objc_msgSend(*(a1 + 40), "value")}];
  v4 = *(*(a1 + 32) + 88);
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 addObject:*(a1 + 40)];
    if (![*(a1 + 40) selected])
    {
      goto LABEL_14;
    }

    ++*(*(a1 + 32) + 96);
    v5 = *(a1 + 32);
    if (v5[12] != 1)
    {
      goto LABEL_14;
    }

LABEL_13:
    [v5 _updateSelectedValue];
    goto LABEL_14;
  }

  v6 = [v4 objectAtIndex:v3];
  if ([v6 selected] && (objc_msgSend(*(a1 + 40), "selected") & 1) == 0)
  {
    --*(*(a1 + 32) + 96);
    v7 = *(*(a1 + 32) + 80);
    v8 = [v6 value];
    [*(*(a1 + 32) + 88) removeObjectAtIndex:v3];
    [*(*(a1 + 32) + 88) insertObject:*(a1 + 40) atIndex:v3];

    if (v7 != v8)
    {
      goto LABEL_14;
    }

    v5 = *(a1 + 32);
    goto LABEL_13;
  }

  if (([v6 selected] & 1) == 0 && objc_msgSend(*(a1 + 40), "selected"))
  {
    ++*(*(a1 + 32) + 96);
  }

  [*(*(a1 + 32) + 88) removeObjectAtIndex:v3];
  [*(*(a1 + 32) + 88) insertObject:*(a1 + 40) atIndex:v3];

LABEL_14:
  LODWORD(v11) = 0;
  v9 = [*(a1 + 32) propertyChangedDelegate];
  [v9 changedProperty:&v10 forObject:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

- (void)removeValue:(id)value
{
  valueCopy = value;
  valueQueue = self->_valueQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__ASDSelectorControl_removeValue___block_invoke;
  v7[3] = &unk_278CE3E78;
  v7[4] = self;
  v8 = valueCopy;
  v6 = valueCopy;
  dispatch_sync(valueQueue, v7);
}

void __34__ASDSelectorControl_removeValue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 88) indexOfObject:*(a1 + 40)];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = [*(*(a1 + 32) + 88) objectAtIndex:v3];
    if ([v5 selected])
    {
      --*(*(a1 + 32) + 96);
    }

    [*(*(a1 + 32) + 88) removeObjectAtIndex:v4];
    v6 = *(*(a1 + 32) + 80);
    if (v6 == [v5 value])
    {
      [*(a1 + 32) _updateSelectedValue];
    }

    LODWORD(v9) = 0;
    v7 = [*(a1 + 32) propertyChangedDelegate];
    [v7 changedProperty:&v8 forObject:*(a1 + 32)];
  }

  objc_autoreleasePoolPop(v2);
}

- (id)values
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  valueQueue = self->_valueQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__ASDSelectorControl_values__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(valueQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __28__ASDSelectorControl_values__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 88) copy];

  return MEMORY[0x2821F96F8]();
}

- (id)nameForValue:(unsigned int)value
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5;
  valueQueue = self->_valueQueue;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ASDSelectorControl_nameForValue___block_invoke;
  block[3] = &unk_278CE4230;
  valueCopy = value;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(valueQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __35__ASDSelectorControl_nameForValue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _findValue:*(a1 + 48)];
  v4 = [v3 name];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

- (unsigned)kindForValue:(unsigned int)value
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  valueQueue = self->_valueQueue;
  v11 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ASDSelectorControl_kindForValue___block_invoke;
  block[3] = &unk_278CE4230;
  valueCopy = value;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(valueQueue, block);
  v4 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __35__ASDSelectorControl_kindForValue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _findValue:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = [v3 kind];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)setSelectedValues:(const unsigned int *)values withCount:(unint64_t)count
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  valueQueue = self->_valueQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ASDSelectorControl_setSelectedValues_withCount___block_invoke;
  block[3] = &unk_278CE4258;
  block[7] = count;
  block[8] = values;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v16;
  dispatch_sync(valueQueue, block);
  v6 = 0;
  if (*(v13 + 24) == 1)
  {
    [(ASDSelectorControl *)self selectionDidChange:v17[5]];
    v10 = 0;
    v9 = 0x676C6F6273636369;
    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v9 forObject:self];

    v6 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v6 & 1;
}

void __50__ASDSelectorControl_setSelectedValues_withCount___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 56);
  if (v3)
  {
    LODWORD(v3) = **(a1 + 64);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 80) != v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(a1 + 32) + 80) = v3;
    v4 = *(a1 + 32);
  }

  if ([*(v4 + 88) count])
  {
    v25 = v2;
    *(*(a1 + 32) + 96) = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = *(*(a1 + 32) + 88);
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          [v10 setPrevSelected:{objc_msgSend(v10, "selected")}];
          [v10 setSelected:0];
        }

        v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v7);
    }

    if (*(a1 + 56))
    {
      v11 = 0;
      do
      {
        v12 = [*(a1 + 32) _findValue:*(*(a1 + 64) + 4 * v11)];
        v13 = v12;
        if (v12)
        {
          ++*(*(a1 + 32) + 96);
          [v12 setSelected:1];
        }

        ++v11;
      }

      while (v11 < *(a1 + 56));
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = *(*(a1 + 32) + 88);
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * j);
          v20 = [v19 prevSelected];
          if (v20 != [v19 selected])
          {
            v21 = *(*(*(a1 + 48) + 8) + 40);
            if (!v21)
            {
              v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(*(a1 + 32) + 88), "count")}];
              v23 = *(*(a1 + 48) + 8);
              v24 = *(v23 + 40);
              *(v23 + 40) = v22;

              v21 = *(*(*(a1 + 48) + 8) + 40);
            }

            [v21 addObject:v19];
            *(*(*(a1 + 40) + 8) + 24) = 1;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v16);
    }

    v2 = v25;
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)setSelectedValues:(id)values
{
  v25 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v5 = [valuesCopy count];
  if (!v5)
  {
    v7 = 0;
LABEL_17:
    v17 = -[ASDSelectorControl setSelectedValues:withCount:](self, "setSelectedValues:withCount:", [v7 bytes], v5);

    goto LABEL_24;
  }

  v6 = [MEMORY[0x277CBEB28] dataWithLength:4 * v5];
  if (v6)
  {
    v7 = v6;
    mutableBytes = [v6 mutableBytes];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = valuesCopy;
    v9 = valuesCopy;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v21;
LABEL_5:
      v14 = 0;
      while (1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v9);
        }

        if (v5 == v12)
        {
          break;
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedIntValue = [v15 unsignedIntValue];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ASDSelectorControl setSelectedValues:v15];
            }

            v17 = 0;
            valuesCopy = v19;
            goto LABEL_24;
          }

          unsignedIntValue = [v15 value];
        }

        *(mutableBytes + 4 * v12++) = unsignedIntValue;
        if (v11 == ++v14)
        {
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v11)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    valuesCopy = v19;
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [ASDSelectorControl setSelectedValues:];
  }

  v17 = 0;
LABEL_24:

  return v17;
}

- (unsigned)selectedValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  valueQueue = self->_valueQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__ASDSelectorControl_selectedValue__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(valueQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSArray)selectedValues
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_numSelected];
  valueQueue = self->_valueQueue;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __36__ASDSelectorControl_selectedValues__block_invoke;
  v11 = &unk_278CE3E78;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  dispatch_sync(valueQueue, &v8);
  v6 = [v5 copy];

  return v6;
}

void __36__ASDSelectorControl_selectedValues__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 88);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 selected])
        {
          [*(a1 + 40) addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v23 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v21.receiver = self;
  v21.super_class = ASDSelectorControl;
  v7 = [(ASDControl *)&v21 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  isSettable = [(ASDSelectorControl *)self isSettable];
  v9 = @"NO";
  if (isSettable)
  {
    v9 = @"YES";
  }

  [v7 appendFormat:@"%@|    Is Settable: %@\n", indentCopy, v9];
  [v7 appendFormat:@"%@|    Current Item: %u\n", indentCopy, -[ASDSelectorControl selectedValue](self, "selectedValue")];
  [v7 appendFormat:@"%@|    Available Items:\n", indentCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  values = [(ASDSelectorControl *)self values];
  v11 = [values countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(values);
        }

        [v7 appendFormat:@"%@|        %u: %@\n", indentCopy, v13, *(*(&v17 + 1) + 8 * i)];
        v13 = (v13 + 1);
      }

      v12 = [values countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v12);
  }

  return v7;
}

- (id)driverClassName
{
  objectClass = [(ASDControl *)self objectClass];
  v3 = @"AudioSelectorControl";
  v4 = @"AudioDataSourceControl";
  if (objectClass != 1685287523)
  {
    v4 = @"AudioSelectorControl";
  }

  if (objectClass == 1751740518)
  {
    v5 = @"AudioHighPassFilterControl";
  }

  else
  {
    v5 = v4;
  }

  if (objectClass == 1852601964)
  {
    v6 = @"AudioLineLevelControl";
  }

  else
  {
    v6 = v5;
  }

  if (objectClass == 1684370292)
  {
    v3 = @"AudioDataDestinationControl";
  }

  if (objectClass == 1668047723)
  {
    v3 = @"AudioClockSourceControl";
  }

  if (objectClass <= 1685287522)
  {
    return v3;
  }

  else
  {
    return v6;
  }
}

- (void)setSelectedValues:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = 136315394;
  v4 = "[ASDSelectorControl setSelectedValues:]";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Bad input object: %@", &v3, 0x16u);
}

- (void)setSelectedValues:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "[ASDSelectorControl setSelectedValues:]";
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Memory allocation error.", &v0, 0xCu);
}

@end