@interface _MDPlistBytes
+ (__MDPlistBytes)createArrayPlistBytesUsingBlock:(id)block;
+ (__MDPlistBytes)createDictionaryPlistBytesUsingBlock:(id)block;
+ (__MDPlistBytes)createPlistBytes:(id)bytes;
+ (__MDPlistBytes)emptyArrayPlistBytes;
+ (__MDPlistBytes)emptyDictionaryPlistBytes;
+ (__MDPlistBytes)nullObjectPlistBytes;
+ (void)enumerateObjectsFromPlistBytes:(char *)bytes count:(unsigned int)count shouldDeallocate:(BOOL)deallocate usingBlock:(id)block;
- (BOOL)enumerateQueryResults:(unint64_t)results attributeSize:(unint64_t)size stringCache:(id *)cache usingBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (_MDPlistBytes)initWithByteVector:(char *)vector count:(unsigned int)count deallocator:(id)deallocator;
- (_MDPlistBytes)initWithByteVector:(char *)vector count:(unsigned int)count shouldDeallocate:(BOOL)deallocate;
- (_MDPlistBytes)initWithByteVector:(char *)vector count:(unsigned int)count trusted:(unsigned __int8)trusted deallocator:(id)deallocator;
- (__CFData)copyData;
- (__CFData)copyDataWithBytesNoCopy;
- (id)description;
- (unint64_t)_cfTypeID;
- (void)dealloc;
- (void)dumpUIDs;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)enumerateQueryResults:(unint64_t)results stringCache:(id *)cache usingBlock:(id)block;
@end

@implementation _MDPlistBytes

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  if ((*(self + 34) & 4) != 0)
  {
    [_MDPlistBytes dealloc];
  }

  v3 = *(self + 34) | 4;
  *(self + 34) = v3;
  deallocator = self->_deallocator;
  if (deallocator)
  {
    deallocator[2](deallocator, self);

    v3 = *(self + 34);
  }

  if ((v3 & 2) != 0)
  {
    free(*&self[1]._byteVectorCnt);
    CFRelease(self[1]._deallocator);
  }

  if (self->_uidCapacity >= 1)
  {
    free(self->_uidVector);
  }

  v5.receiver = self;
  v5.super_class = _MDPlistBytes;
  [(_MDPlistBytes *)&v5 dealloc];
}

+ (__MDPlistBytes)createArrayPlistBytesUsingBlock:(id)block
{
  result = [_MDMutablePlistBytes createArrayPlistBytesUsingBlock:block];
  if (result)
  {
    *(result + 34) &= ~1u;
  }

  return result;
}

+ (__MDPlistBytes)createDictionaryPlistBytesUsingBlock:(id)block
{
  result = [_MDMutablePlistBytes createDictionaryPlistBytesUsingBlock:block];
  if (result)
  {
    *(result + 34) &= ~1u;
  }

  return result;
}

+ (__MDPlistBytes)createPlistBytes:(id)bytes
{
  v4 = [[_MDMutablePlistBytes alloc] initWithCapacity:0 useMalloc:0];
  if (!v4)
  {
    +[_MDPlistBytes createPlistBytes:];
  }

  v5 = v4;
  CFRetain(v4);

  if (_MDPlistBytesBeginPlist(v5) && __MDPlistBytesAddObject(v5, bytes))
  {
    _MDPlistBytesEndPlist(v5);
  }

  *(v5 + 34) &= ~1u;
  return v5;
}

+ (__MDPlistBytes)emptyArrayPlistBytes
{
  if (qword_1ED6F3F28 != -1)
  {
    +[_MDPlistBytes emptyArrayPlistBytes];
  }

  return qword_1ED6F3F20;
}

+ (__MDPlistBytes)emptyDictionaryPlistBytes
{
  if (qword_1ED6F3F38 != -1)
  {
    +[_MDPlistBytes emptyDictionaryPlistBytes];
  }

  return qword_1ED6F3F30;
}

+ (void)enumerateObjectsFromPlistBytes:(char *)bytes count:(unsigned int)count shouldDeallocate:(BOOL)deallocate usingBlock:(id)block
{
  if (!bytes)
  {
    if (qword_1ED6F3FE0 == -1)
    {
      v13 = CFRetain(qword_1ED6F3FD8);
      if (!v13)
      {
        return;
      }
    }

    else
    {
      +[_MDPlistBytes enumerateObjectsFromPlistBytes:count:shouldDeallocate:usingBlock:];
      v13 = CFRetain(qword_1ED6F3FD8);
      if (!v13)
      {
        return;
      }
    }

    goto LABEL_8;
  }

  deallocateCopy = deallocate;
  v8 = *&count;
  v10 = [_MDPlistBytes alloc];
  if (deallocateCopy)
  {
    v11 = &__block_literal_global_108;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(_MDPlistBytes *)v10 initWithByteVector:bytes count:v8 trusted:0 deallocator:v11];
  v13 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  if (v13)
  {
LABEL_8:
    [v13 enumerateObjectsUsingBlock:block];

    CFRelease(v13);
  }
}

+ (__MDPlistBytes)nullObjectPlistBytes
{
  if (qword_1ED6F3F48 != -1)
  {
    +[_MDPlistBytes nullObjectPlistBytes];
  }

  return qword_1ED6F3F40;
}

- (BOOL)enumerateQueryResults:(unint64_t)results attributeSize:(unint64_t)size stringCache:(id *)cache usingBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v18 = 0;
  v16[1] = block;
  v16[2] = size;
  v17 = malloc_type_calloc(size, 8uLL, 0x80040B8603338uLL);
  memset(v11, 0, sizeof(v11));
  v12 = _QueryResultsBeginArray;
  v13 = _QueryResultsValue;
  v14 = _QueryResultsEndArray;
  cacheCopy = cache;
  v9 = _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(*MEMORY[0x1E695E480], self, results, v11, v16);
  if (v9)
  {
    CFRelease(v9);
  }

  free(v17);
  return BYTE1(v18) & ~v18 & 1;
}

- (void)enumerateQueryResults:(unint64_t)results stringCache:(id *)cache usingBlock:(id)block
{
  v6 = 0;
  do
  {
    v7 = v6 + 1;
    v8 = [_MDPlistBytes enumerateQueryResults:"enumerateQueryResults:attributeSize:stringCache:usingBlock:" attributeSize:? stringCache:? usingBlock:?];
    v6 = v7;
  }

  while (v8);
}

- (_MDPlistBytes)initWithByteVector:(char *)vector count:(unsigned int)count trusted:(unsigned __int8)trusted deallocator:(id)deallocator
{
  trustedCopy = trusted;
  v17 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = _MDPlistBytes;
  result = [(_MDPlistBytes *)&v16 init];
  if (result)
  {
    if (vector)
    {
      if (count - 16 > 0x6FFFFFF0)
      {
        *(result + 16) = 619;
      }

      else
      {
        result->_byteVector = vector;
        result->_byteVectorCnt = count;
        result->_byteVectorCapacity = count;
        if (deallocator)
        {
          v11 = result;
          v12 = _Block_copy(deallocator);
          result = v11;
        }

        else
        {
          v12 = 0;
        }

        result->_deallocator = v12;
        v14 = trustedCopy != 0;
        v15 = result;
        _maybeSwapPlistBytes(result, v14);
        return v15;
      }
    }

    else
    {

      if (qword_1ED6F3FE0 != -1)
      {
        [_MDPlistBytes initWithByteVector:count:trusted:deallocator:];
      }

      v13 = CFRetain(qword_1ED6F3FD8);
      return CFMakeCollectable(v13);
    }
  }

  return result;
}

- (_MDPlistBytes)initWithByteVector:(char *)vector count:(unsigned int)count shouldDeallocate:(BOOL)deallocate
{
  if (deallocate)
  {
    v5 = &__block_literal_global_108;
  }

  else
  {
    v5 = 0;
  }

  return [(_MDPlistBytes *)self initWithByteVector:vector count:*&count deallocator:v5];
}

- (_MDPlistBytes)initWithByteVector:(char *)vector count:(unsigned int)count deallocator:(id)deallocator
{

  return [(_MDPlistBytes *)self initWithByteVector:vector count:*&count trusted:0 deallocator:deallocator];
}

- (unint64_t)_cfTypeID
{
  if (qword_1ED6F3F50 != -1)
  {
    _MDPlistBytesGetTypeID_cold_1();
  }

  return qword_1ED6F3F58;
}

- (id)description
{
  v2 = __MDPlistBytesCopyDebugDescription(self);
  v3 = CFMakeCollectable(v2);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  _cfTypeID = [equal _cfTypeID];
  if (qword_1ED6F3F50 == -1)
  {
    if (_cfTypeID != qword_1ED6F3F58)
    {
      return 0;
    }
  }

  else
  {
    v9 = _cfTypeID;
    _MDPlistBytesGetTypeID_cold_1();
    if (v9 != qword_1ED6F3F58)
    {
      return 0;
    }
  }

  byteVectorCnt = self->_byteVectorCnt;
  if (equal && !*(equal + 16))
  {
    if (byteVectorCnt != *(equal + 4))
    {
      return 0;
    }

    v8 = *(equal + 1);
  }

  else
  {
    if (byteVectorCnt)
    {
      return 0;
    }

    v8 = 0;
  }

  return memcmp(self->_byteVector, v8, byteVectorCnt) == 0;
}

- (__CFData)copyData
{
  byteVector = self->_byteVector;
  byteVectorCnt = self->_byteVectorCnt;
  v4 = *MEMORY[0x1E695E480];

  return CFDataCreate(v4, byteVector, byteVectorCnt);
}

- (__CFData)copyDataWithBytesNoCopy
{
  byteVector = self->_byteVector;
  byteVectorCnt = self->_byteVectorCnt;
  v4 = *MEMORY[0x1E695E480];
  v5 = *MEMORY[0x1E695E498];

  return CFDataCreateWithBytesNoCopy(v4, byteVector, byteVectorCnt, v5);
}

- (void)dumpUIDs
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = _MDLogForCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uidCount = self->_uidCount;
    *buf = 134218240;
    *v10 = self;
    *&v10[8] = 1024;
    *&v10[10] = uidCount;
    _os_log_impl(&dword_1B238B000, v3, OS_LOG_TYPE_DEFAULT, "_MDPlistBytes:%p UID Count: %d", buf, 0x12u);
  }

  if (self->_uidCount >= 1)
  {
    v5 = 0;
    do
    {
      v6 = self->_uidVector[v5];
      v7 = self->_wrapperPtr[v6 & 0xFFFFFF];
      v8 = _MDLogForCategoryDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110400;
        *v10 = v5;
        *&v10[4] = 2048;
        *&v10[6] = v6;
        v11 = 1024;
        v12 = BYTE3(v6);
        v13 = 1024;
        v14 = HIDWORD(v6);
        v15 = 1024;
        v16 = v6 & 0xFFFFFF;
        v17 = 2048;
        v18 = v7;
        _os_log_impl(&dword_1B238B000, v8, OS_LOG_TYPE_DEFAULT, "   desc[%d]: 0x%16.16llx tag: %2.2x var: 0x%4.4x qc: 0x%4.4x 0x%16.16llx", buf, 0x2Eu);
      }

      ++v5;
    }

    while (v5 < self->_uidCount);
  }
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  v5 = 0;
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v6 = *MEMORY[0x1E695E480];
  do
  {
    v7 = _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(v6, self, v5, &_kMDPlistBytesDeserializationCallbacks, sel_enumerateObjectsUsingBlock_);
    if (!v7)
    {
      break;
    }

    v8 = v7;
    (*(block + 2))(block, v7, v5, &v9);
    CFRelease(v8);
    ++v5;
  }

  while ((v9 & 1) == 0);
}

@end