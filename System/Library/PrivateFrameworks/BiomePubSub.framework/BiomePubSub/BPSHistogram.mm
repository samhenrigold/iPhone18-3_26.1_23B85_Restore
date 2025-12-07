@interface BPSHistogram
- (BOOL)_correctKeyType:(id)type;
- (BPSHistogram)init;
- (id)allKeysAtLevel:(unint64_t)level;
- (id)scoreForKey:(id)key;
- (void)_enumerateWithBlock:(id)block node:(id)node currentKey:(id)key stop:(BOOL *)stop;
- (void)_setKeyTypeFromKey:(id)key;
- (void)addScore:(id)score forKey:(id)key;
- (void)enumerateKeysAndScoresUsingBlock:(id)block;
- (void)removeAllScores;
- (void)removeScoreForKey:(id)key;
@end

@implementation BPSHistogram

- (BPSHistogram)init
{
  v7.receiver = self;
  v7.super_class = BPSHistogram;
  v2 = [(BPSHistogram *)&v7 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    backingDictionary = v2->_backingDictionary;
    v2->_backingDictionary = dictionary;

    keyType = v2->_keyType;
    v2->_keyType = 0;
  }

  return v2;
}

- (void)_setKeyTypeFromKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  [(BPSHistogram *)self removeAllScores];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(keyCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = keyCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addObject:{objc_opt_class(), v13}];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [MEMORY[0x1E695DEC8] arrayWithArray:v5];
  keyType = self->_keyType;
  self->_keyType = v11;
}

- (BOOL)_correctKeyType:(id)type
{
  typeCopy = type;
  keyType = self->_keyType;
  if (keyType && (v6 = -[NSArray count](keyType, "count"), v6 == [typeCopy count]))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 1;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__BPSHistogram__correctKeyType___block_invoke;
    v9[3] = &unk_1E8320F00;
    v9[4] = self;
    v9[5] = &v10;
    [typeCopy enumerateObjectsUsingBlock:v9];
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void *__32__BPSHistogram__correctKeyType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_opt_class() isEqual:{objc_msgSend(*(*(a1 + 32) + 16), "objectAtIndexedSubscript:", a3)}];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (id)scoreForKey:(id)key
{
  keyCopy = key;
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:keyCopy copyItems:1];
  v6 = &unk_1F4870148;
  if (self->_keyType)
  {
    if ([(BPSHistogram *)self _correctKeyType:v5])
    {
      v7 = self->_backingDictionary;
      if ([v5 count] == 1)
      {
        v8 = v7;
LABEL_11:
        lastObject = [v5 lastObject];
        v13 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:lastObject];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = &unk_1F4870148;
        }

        v6 = v15;
      }

      else
      {
        v10 = 0;
        while (1)
        {
          v11 = [v5 objectAtIndexedSubscript:v10];
          v8 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:v11];

          if (!v8)
          {
            break;
          }

          ++v10;
          v7 = v8;
          if (v10 >= [v5 count] - 1)
          {
            goto LABEL_11;
          }
        }

        v6 = &unk_1F4870148;
      }
    }

    else
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [BPSHistogram scoreForKey:];
      }

      v6 = &unk_1F4870148;
    }
  }

  return v6;
}

- (void)addScore:(id)score forKey:(id)key
{
  scoreCopy = score;
  keyCopy = key;
  keyType = self->_keyType;
  v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:keyCopy copyItems:1];
  if (!keyType)
  {
    [(BPSHistogram *)self _setKeyTypeFromKey:v9];
  }

  if ([(BPSHistogram *)self _correctKeyType:v9])
  {
    v10 = self->_backingDictionary;
    if ([v9 count] == 1)
    {
      v11 = v10;
    }

    else
    {
      v13 = 0;
      do
      {
        v14 = [v9 objectAtIndexedSubscript:v13];
        v15 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v14];

        if (!v15)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v17 = [v9 objectAtIndexedSubscript:v13];
          [(NSMutableDictionary *)v10 setObject:dictionary forKeyedSubscript:v17];
        }

        v18 = [v9 objectAtIndexedSubscript:v13];
        v11 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v18];

        ++v13;
        v10 = v11;
      }

      while (v13 < [v9 count] - 1);
    }

    lastObject = [v9 lastObject];
    v20 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:lastObject];
    [v20 floatValue];
    v22 = v21;

    [scoreCopy floatValue];
    *&v23 = v22 + *&v23;
    if (*&v23 < 0.0)
    {
      *&v23 = 0.0;
    }

    v24 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
    lastObject2 = [v9 lastObject];
    [(NSMutableDictionary *)v11 setObject:v24 forKeyedSubscript:lastObject2];
  }

  else
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [BPSHistogram scoreForKey:];
    }
  }
}

- (void)removeScoreForKey:(id)key
{
  keyCopy = key;
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:keyCopy copyItems:1];
  if (self->_keyType)
  {
    if ([(BPSHistogram *)self _correctKeyType:v5])
    {
      v6 = self->_backingDictionary;
      v7 = [v5 count];
      v8 = MEMORY[0x1E695DF70];
      if (v7 >= 2)
      {
        v9 = [v5 count] - 2;
      }

      else
      {
        v9 = 0;
      }

      v11 = [v8 arrayWithCapacity:v9];
      if ([v5 count] == 1)
      {
        v12 = v6;
LABEL_14:
        lastObject = [v5 lastObject];
        [(NSMutableDictionary *)v12 removeObjectForKey:lastObject];

        v18 = [v11 count];
        if (v18 - 1 >= 0)
        {
          v19 = v18;
          do
          {
            v20 = [v11 objectAtIndexedSubscript:--v19];
            v21 = [v5 objectAtIndexedSubscript:v19];
            v22 = [v20 objectForKeyedSubscript:v21];

            if (![v22 count])
            {
              v23 = [v11 objectAtIndexedSubscript:v19];
              v24 = [v5 objectAtIndexedSubscript:v19];
              [v23 removeObjectForKey:v24];
            }
          }

          while (v19 > 0);
        }

        v6 = v12;
      }

      else
      {
        v13 = 0;
        while (1)
        {
          [v11 addObject:v6];
          v14 = [v5 objectAtIndexedSubscript:v13];
          v15 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v14];

          if (!v15)
          {
            break;
          }

          v16 = [v5 objectAtIndexedSubscript:v13];
          v12 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v16];

          ++v13;
          v6 = v12;
          if (v13 >= [v5 count] - 1)
          {
            goto LABEL_14;
          }
        }
      }
    }

    else
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [BPSHistogram scoreForKey:];
      }
    }
  }
}

- (id)allKeysAtLevel:(unint64_t)level
{
  v43 = *MEMORY[0x1E69E9840];
  v30 = [MEMORY[0x1E695DFA8] set];
  keyType = self->_keyType;
  if (keyType && [(NSArray *)keyType count]> level)
  {
    levelCopy = level;
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    allKeys = [(NSMutableDictionary *)self->_backingDictionary allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          v14 = [(NSMutableDictionary *)self->_backingDictionary objectForKeyedSubscript:v13];
          [array addObject:v14];

          [array2 addObject:v13];
          [array3 addObject:&unk_1F4870148];
        }

        v10 = [allKeys countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v10);
    }

    v15 = array;
    v16 = levelCopy;
    while ([v15 count])
    {
      firstObject = [v15 firstObject];
      firstObject2 = [array2 firstObject];
      firstObject3 = [array3 firstObject];
      [v15 removeObjectAtIndex:0];
      [array2 removeObjectAtIndex:0];
      [array3 removeObjectAtIndex:0];
      if ([firstObject3 unsignedIntegerValue] >= v16)
      {
        [v30 addObject:firstObject2];
      }

      else
      {
        v31 = firstObject2;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        allKeys2 = [firstObject allKeys];
        v21 = [allKeys2 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v34;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v34 != v23)
              {
                objc_enumerationMutation(allKeys2);
              }

              v25 = *(*(&v33 + 1) + 8 * j);
              v26 = [firstObject objectForKeyedSubscript:v25];
              [array addObject:v26];

              [array2 addObject:v25];
              v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(firstObject3, "unsignedIntegerValue") + 1}];
              [array3 addObject:v27];
            }

            v22 = [allKeys2 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v22);
        }

        v16 = levelCopy;
        firstObject2 = v31;
        v15 = array;
      }
    }
  }

  return v30;
}

- (void)removeAllScores
{
  [(NSMutableDictionary *)self->_backingDictionary removeAllObjects];
  keyType = self->_keyType;
  self->_keyType = 0;
}

- (void)enumerateKeysAndScoresUsingBlock:(id)block
{
  if (self->_keyType)
  {
    v8 = 0;
    backingDictionary = self->_backingDictionary;
    v5 = MEMORY[0x1E695DF70];
    blockCopy = block;
    array = [v5 array];
    [(BPSHistogram *)self _enumerateWithBlock:blockCopy node:backingDictionary currentKey:array stop:&v8];
  }
}

- (void)_enumerateWithBlock:(id)block node:(id)node currentKey:(id)key stop:(BOOL *)stop
{
  v28 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  nodeCopy = node;
  keyCopy = key;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22 = nodeCopy;
  obj = [nodeCopy allKeys];
  v13 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(obj);
      }

      if (*stop)
      {
        break;
      }

      v17 = *(*(&v23 + 1) + 8 * v16);
      [keyCopy addObject:v17];
      v18 = [keyCopy count];
      v19 = [(NSArray *)self->_keyType count];
      v20 = [v22 objectForKeyedSubscript:v17];
      if (v18 == v19)
      {
        blockCopy[2](blockCopy, keyCopy, v20, stop);
      }

      else
      {
        [(BPSHistogram *)self _enumerateWithBlock:blockCopy node:v20 currentKey:keyCopy stop:stop];
      }

      [keyCopy removeLastObject];
      if (v14 == ++v16)
      {
        v14 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end