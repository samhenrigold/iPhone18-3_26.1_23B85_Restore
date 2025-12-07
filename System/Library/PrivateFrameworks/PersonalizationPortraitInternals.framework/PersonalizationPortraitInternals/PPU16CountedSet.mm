@interface PPU16CountedSet
- (BOOL)isEqual:(id)equal;
- (PPU16CountedSet)initWithCapacity:(unint64_t)capacity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionary;
- (unint64_t)uniqueValueCount;
- (unsigned)countForValue:(unsigned __int16)value;
- (void)_convertToDictionaryRepresentation;
- (void)addValue:(unsigned __int16)value;
- (void)dealloc;
- (void)enumerateValuesAndCountsUsingBlock:(id)block;
@end

@implementation PPU16CountedSet

- (id)description
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  vectorStorage = self->_vectorStorage;
  if (vectorStorage)
  {
    v5 = *vectorStorage;
    v6 = vectorStorage[1];
    if (*vectorStorage != v6)
    {
      v7 = 1;
      do
      {
        if ((v7 & 1) == 0)
        {
          [v3 appendString:{@", "}];
        }

        [v3 appendFormat:@"%u [%u]", *v5, v5[1]];
        v7 = 0;
        v5 += 2;
      }

      while (v5 != v6);
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_dictStorage;
    v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = *v20;
      v11 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if ((v11 & 1) == 0)
          {
            [v3 appendString:{@", "}];
          }

          intValue = [v13 intValue];
          v15 = [(NSMutableDictionary *)self->_dictStorage objectForKeyedSubscript:v13];
          intValue2 = [v15 intValue];
          [v3 appendFormat:@"%u [%u]", intValue, intValue2, v19];

          v11 = 0;
        }

        v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v11 = 0;
      }

      while (v9);
    }
  }

  [v3 appendString:@"]"];
  v17 = [v3 copy];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    vectorStorage = self->_vectorStorage;
    v7 = *vectorStorage;
    v8 = vectorStorage[1];
    if (*vectorStorage != v8)
    {
      do
      {
        v9 = *v7;
        v10 = v5[1];
        v12 = *(v10 + 8);
        v11 = *(v10 + 16);
        if (v12 >= v11)
        {
          v14 = (v12 - *v10) >> 2;
          if ((v14 + 1) >> 62)
          {
            std::vector<PPTokenCount * {__strong}>::__throw_length_error[abi:ne200100]();
          }

          v15 = v11 - *v10;
          v16 = v15 >> 1;
          if (v15 >> 1 <= (v14 + 1))
          {
            v16 = v14 + 1;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v17 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(v17);
          }

          v18 = (4 * v14);
          *v18 = v9;
          v13 = 4 * v14 + 4;
          v19 = *(v10 + 8) - *v10;
          v20 = v18 - v19;
          memcpy(v18 - v19, *v10, v19);
          v21 = *v10;
          *v10 = v20;
          *(v10 + 8) = v13;
          *(v10 + 16) = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v12 = v9;
          v13 = (v12 + 1);
        }

        *(v10 + 8) = v13;
        ++v7;
      }

      while (v7 != v8);
    }

    v22 = [(NSMutableDictionary *)self->_dictStorage copyWithZone:zone];
    v23 = v5[2];
    v5[2] = v22;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (self)
    {
      v8 = [(PPU16CountedSet *)self copy];
      v9 = [(PPU16CountedSet *)v6 copy];
      [(PPU16CountedSet *)v8 _convertToDictionaryRepresentation];
      [(PPU16CountedSet *)v9 _convertToDictionaryRepresentation];
      if ([v8[2] isEqualToDictionary:v9[2]])
      {
        v7 = 1;
      }

      else if ([v8[2] count])
      {
        v7 = 0;
      }

      else
      {
        v7 = [v9[2] count] == 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_convertToDictionaryRepresentation
{
  if (self)
  {
    if (!*(self + 8) || *(self + 16))
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__convertToDictionaryRepresentation object:self file:@"PPCompactCountedSets.mm" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"_vectorStorage && !_dictStorage"}];
    }

    v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:(*(*(self + 8) + 8) - **(self + 8)) >> 1];
    v3 = *(self + 16);
    *(self + 16) = v2;

    v4 = *(self + 8);
    v5 = *v4;
    v6 = v4[1];
    if (*v4 != v6)
    {
      do
      {
        v7 = objc_autoreleasePoolPush();
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v5[1]];
        v9 = *(self + 16);
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*v5];
        [v9 setObject:v8 forKeyedSubscript:v10];

        objc_autoreleasePoolPop(v7);
        v5 += 2;
      }

      while (v5 != v6);
      v4 = *(self + 8);
      v5 = *v4;
    }

    if (v5)
    {
      v4[1] = v5;
      operator delete(v5);
    }

    *(self + 8) = 0;
  }
}

- (void)enumerateValuesAndCountsUsingBlock:(id)block
{
  blockCopy = block;
  v15 = blockCopy;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPCompactCountedSets.mm" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    blockCopy = 0;
  }

  if (self->_vectorStorage)
  {
    v6 = blockCopy;
    vectorStorage = self->_vectorStorage;
    v8 = *vectorStorage;
    v9 = vectorStorage[1];
    if (*vectorStorage != v9)
    {
      do
      {
        v10 = objc_autoreleasePoolPush();
        LOBYTE(v16[0]) = 0;
        (*(v6 + 2))(v6, *v8, v8[1], v16);
        v11 = v16[0];
        objc_autoreleasePoolPop(v10);
        if (v11)
        {
          break;
        }

        v8 += 2;
      }

      while (v8 != v9);
    }
  }

  else
  {
    v12 = blockCopy;
    dictStorage = self->_dictStorage;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__PPU16CountedSet__dictEnumerateValuesAndCountsUsingBlock___block_invoke;
    v16[3] = &unk_278972028;
    v6 = v12;
    v17 = v6;
    [(NSMutableDictionary *)dictStorage enumerateKeysAndObjectsUsingBlock:v16];
  }
}

void __59__PPU16CountedSet__dictEnumerateValuesAndCountsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v9 unsignedIntValue], objc_msgSend(v7, "unsignedIntValue"), a4);
  objc_autoreleasePoolPop(v8);
}

- (id)dictionary
{
  dictStorage = self->_dictStorage;
  if (!dictStorage)
  {
    [(PPU16CountedSet *)self _convertToDictionaryRepresentation];
    dictStorage = self->_dictStorage;
  }

  return dictStorage;
}

- (unint64_t)uniqueValueCount
{
  vectorStorage = self->_vectorStorage;
  if (vectorStorage)
  {
    return (vectorStorage[1] - *vectorStorage) >> 2;
  }

  else
  {
    return [(NSMutableDictionary *)self->_dictStorage count];
  }
}

- (unsigned)countForValue:(unsigned __int16)value
{
  valueCopy = value;
  vectorStorage = self->_vectorStorage;
  if (vectorStorage)
  {
    v5 = *vectorStorage;
    v6 = vectorStorage[1];
    if (v5 != v6)
    {
      while (*v5 != value)
      {
        v5 += 2;
        if (v5 == v6)
        {
          return 0;
        }
      }
    }

    if (v5 == v6)
    {
      return 0;
    }

    else
    {
      return v5[1];
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    dictStorage = self->_dictStorage;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:valueCopy];
    v12 = [(NSMutableDictionary *)dictStorage objectForKeyedSubscript:v11];

    if (v12)
    {
      unsignedIntValue = [v12 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }

    objc_autoreleasePoolPop(v9);
  }

  return unsignedIntValue;
}

- (void)addValue:(unsigned __int16)value
{
  valueCopy = value;
  vectorStorage = self->_vectorStorage;
  if (vectorStorage)
  {
    v7 = *vectorStorage;
    v6 = vectorStorage[1];
    v8 = *vectorStorage;
    if (*vectorStorage != v6)
    {
      while (*v8 != value)
      {
        v8 += 2;
        if (v8 == v6)
        {
          goto LABEL_14;
        }
      }
    }

    if (v8 == v6)
    {
LABEL_14:
      v15 = (v6 - v7) >> 2;
      if (v15 < 0x80)
      {
        v17 = vectorStorage[2];
        if (v6 >= v17)
        {
          v18 = v17 - v7;
          if (v18 >> 1 <= v15 + 1)
          {
            v19 = v15 + 1;
          }

          else
          {
            v19 = v18 >> 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(v20);
        }

        *v6 = value;
        v6[1] = 1;
        vectorStorage[1] = v6 + 2;
      }

      else
      {
        [(PPU16CountedSet *)self _convertToDictionaryRepresentation];
        dictStorage = self->_dictStorage;
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:valueCopy];
        [(NSMutableDictionary *)dictStorage setObject:&unk_284783A68 forKeyedSubscript:?];
      }
    }

    else
    {
      v9 = v8[1];
      if (v9 == 0xFFFF)
      {
        v10 = -1;
      }

      else
      {
        v10 = v9 + 1;
      }

      v8[1] = v10;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:valueCopy];
    v12 = [(NSMutableDictionary *)self->_dictStorage objectForKeyedSubscript:?];
    v13 = v12;
    if (v12)
    {
      if ([v12 unsignedIntValue] <= 0xFFFE)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v13, "unsignedIntValue") + 1}];
        [(NSMutableDictionary *)self->_dictStorage setObject:v14 forKeyedSubscript:v21];
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_dictStorage setObject:&unk_284783A68 forKeyedSubscript:v21];
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)dealloc
{
  vectorStorage = self->_vectorStorage;
  if (vectorStorage)
  {
    v4 = *vectorStorage;
    if (*vectorStorage)
    {
      vectorStorage[1] = v4;
      operator delete(v4);
    }
  }

  v5.receiver = self;
  v5.super_class = PPU16CountedSet;
  [(PPU16CountedSet *)&v5 dealloc];
}

- (PPU16CountedSet)initWithCapacity:(unint64_t)capacity
{
  v6.receiver = self;
  v6.super_class = PPU16CountedSet;
  result = [(PPU16CountedSet *)&v6 init];
  if (result)
  {
    *result->_vectorInlineStorage.__data = 0;
    *&result->_vectorInlineStorage.__data[8] = 0;
    *&result->_vectorInlineStorage.__data[16] = 0;
    result->_vectorStorage = &result->_vectorInlineStorage;
    if (capacity)
    {
      if (capacity >= 0x80)
      {
        capacityCopy = 128;
      }

      else
      {
        capacityCopy = capacity;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(capacityCopy);
    }
  }

  return result;
}

@end