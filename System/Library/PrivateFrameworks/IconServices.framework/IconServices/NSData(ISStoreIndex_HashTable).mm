@interface NSData(ISStoreIndex_HashTable)
- (_BYTE)_ISStoreIndex_isValid;
- (char)_ISStoreIndex_hashTable;
- (char)_ISStoreIndex_nodeForRef:()ISStoreIndex_HashTable;
- (uint64_t)_ISStoreIndex_checkNodeBounds:()ISStoreIndex_HashTable;
- (uint64_t)_ISStoreIndex_enumerateValuesForUUID:()ISStoreIndex_HashTable bock:;
- (uint64_t)_ISStoreIndex_hashTableHeader;
- (unsigned)_ISStoreIndex_nodeRefForKey:()ISStoreIndex_HashTable;
- (unsigned)_ISStoreIndex_nodesOffset;
- (void)_ISStoreIndex_enumerateValuesWithBock:()ISStoreIndex_HashTable;
@end

@implementation NSData(ISStoreIndex_HashTable)

- (char)_ISStoreIndex_hashTable
{
  [self length];
  bytes = [self bytes];
  _ISStoreIndex_hashTableHeader = [self _ISStoreIndex_hashTableHeader];
  if (bytes)
  {
    v4 = _ISStoreIndex_hashTableHeader == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return (bytes + 20);
  }
}

- (uint64_t)_ISStoreIndex_hashTableHeader
{
  if ([self length] < 0x15)
  {
    return 0;
  }

  selfCopy = self;

  return [selfCopy bytes];
}

- (unsigned)_ISStoreIndex_nodesOffset
{
  bytes = [self bytes];
  result = [self _ISStoreIndex_hashTableHeader];
  if (result)
  {
    v4 = result[3];
    if (v4)
    {
      v5 = bytes == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = 8 * v4 + 20;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

- (_BYTE)_ISStoreIndex_isValid
{
  result = [self _ISStoreIndex_hashTableHeader];
  if (result)
  {
    if (result[4] == 1)
    {
      return (*result == 11);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (char)_ISStoreIndex_nodeForRef:()ISStoreIndex_HashTable
{
  if (!a3)
  {
    return 0;
  }

  v5 = [self length];
  bytes = [self bytes];
  _ISStoreIndex_nodesOffset = [self _ISStoreIndex_nodesOffset];
  v8 = _ISStoreIndex_nodesOffset + a3;
  v9 = (v8 + bytes);
  if (v8 + HIDWORD(a3) >= v5 || v9 == 0)
  {
    return 0;
  }

  if (*v9 != a3)
  {
    v11 = _ISDefaultLog(_ISStoreIndex_nodesOffset);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(NSData(ISStoreIndex_HashTable) *)v9 _ISStoreIndex_nodeForRef:a3];
    }

    return 0;
  }

  return v9;
}

- (unsigned)_ISStoreIndex_nodeRefForKey:()ISStoreIndex_HashTable
{
  _ISStoreIndex_hashTable = [self _ISStoreIndex_hashTable];
  result = [self _ISStoreIndex_hashTableHeader];
  if (result)
  {
    v7 = result;
    result = 0;
    if (_ISStoreIndex_hashTable)
    {
      v8 = v7[3];
      if (v8)
      {
        return *(_ISStoreIndex_hashTable + 8 * (a3 % v8));
      }
    }
  }

  return result;
}

- (uint64_t)_ISStoreIndex_checkNodeBounds:()ISStoreIndex_HashTable
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    bytes = [self bytes];
    if (bytes <= a3)
    {
      bytes2 = [self bytes];
      v8 = [self length];
      if (v8 + bytes2 <= a3)
      {
        v6 = _ISDefaultLog(v8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          [NSData(ISStoreIndex_HashTable) _ISStoreIndex_checkNodeBounds:];
        }
      }

      else
      {
        bytes3 = [self bytes];
        v10 = [self length];
        if (a3 + 36 >= v10 + bytes3)
        {
          v6 = _ISDefaultLog(v10);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
          {
            [NSData(ISStoreIndex_HashTable) _ISStoreIndex_checkNodeBounds:];
          }
        }

        else
        {
          v11 = *(a3 + 4) + a3;
          bytes4 = [self bytes];
          v13 = [self length];
          if (v11 < v13 + bytes4)
          {
            return 1;
          }

          v6 = _ISDefaultLog(v13);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
          {
            bytes5 = [self bytes];
            v16 = [self length];
            v17 = *(a3 + 4);
            v18 = 134218496;
            v19 = a3;
            v20 = 2048;
            v21 = bytes5 + v16;
            v22 = 1024;
            v23 = v17;
            _os_log_fault_impl(&dword_1A77B8000, v6, OS_LOG_TYPE_FAULT, "Node exceeds expected bounds, %p vs %p node expected size=%d", &v18, 0x1Cu);
          }
        }
      }
    }

    else
    {
      v6 = _ISDefaultLog(bytes);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [NSData(ISStoreIndex_HashTable) _ISStoreIndex_checkNodeBounds:self];
      }
    }
  }

  else
  {
    v6 = _ISDefaultLog(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [NSData(ISStoreIndex_HashTable) _ISStoreIndex_checkNodeBounds:v6];
    }
  }

  return 0;
}

- (void)_ISStoreIndex_enumerateValuesWithBock:()ISStoreIndex_HashTable
{
  v4 = a3;
  _ISStoreIndex_hashTableHeader = [self _ISStoreIndex_hashTableHeader];
  bytes = [self bytes];
  _ISStoreIndex_nodesOffset = [self _ISStoreIndex_nodesOffset];
  if (_ISStoreIndex_hashTableHeader)
  {
    v8 = *(_ISStoreIndex_hashTableHeader + 8);
    v12 = 0;
    if ((v8 & 0x80000000) == 0)
    {
      v9 = _ISStoreIndex_nodesOffset + bytes;
      while (1)
      {
        v10 = objc_autoreleasePoolPush();
        if (([self _ISStoreIndex_checkNodeBounds:v9] & 1) == 0)
        {
          break;
        }

        if (*(v9 + 32) == 1)
        {
          v4[2](v4, v9, &v12);
        }

        if ((v12 & 1) == 0)
        {
          v9 += *(v9 + 4);
        }

        objc_autoreleasePoolPop(v10);
        v11 = __OFSUB__(v8--, 1);
        if (v8 < 0 != v11 || v12)
        {
          goto LABEL_13;
        }
      }

      objc_autoreleasePoolPop(v10);
    }
  }

LABEL_13:
}

- (uint64_t)_ISStoreIndex_enumerateValuesForUUID:()ISStoreIndex_HashTable bock:
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v16 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [self _ISStoreIndex_nodeRefForKey:*(a3 + 8) ^ *a3];
  v9 = [self _ISStoreIndex_nodeForRef:v8];
  if (v9)
  {
    v10 = v9;
    v11 = HIDWORD(v8);
    do
    {
      v12 = [self _ISStoreIndex_checkNodeBounds:v10];
      if (!v12)
      {
        break;
      }

      if (*(v10 + 32) == 1)
      {
        v12 = uuid_compare((v10 + 8), a3);
        if (!v12)
        {
          v12 = v6[2](v6, v10, &v16);
        }
      }

      if ((v16 & 1) == 0)
      {
        v13 = *(v10 + 24);
        if (v13 <= v8)
        {
          if (v13)
          {
            v14 = _ISDefaultLog(v12);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109376;
              v18 = v8;
              v19 = 1024;
              v20 = v11;
              _os_log_fault_impl(&dword_1A77B8000, v14, OS_LOG_TYPE_FAULT, "Cyclic node detected: (offset: %u, size: %u) ", buf, 0xEu);
            }
          }

          break;
        }

        v11 = *(v10 + 28);
        v10 = [self _ISStoreIndex_nodeForRef:v13 | (v11 << 32)];
        LODWORD(v8) = v13;
      }
    }

    while (v10 && !v16);
  }

  objc_autoreleasePoolPop(v7);

  return 1;
}

- (void)_ISStoreIndex_nodeForRef:()ISStoreIndex_HashTable .cold.1(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a2;
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(&dword_1A77B8000, v2, OS_LOG_TYPE_DEBUG, "StoreIndex node ref missmatch ref: %llx node: %llx.", &v3, 0x16u);
}

- (void)_ISStoreIndex_checkNodeBounds:()ISStoreIndex_HashTable .cold.1()
{
  OUTLINED_FUNCTION_1();
  [v1 bytes];
  [v0 length];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_ISStoreIndex_checkNodeBounds:()ISStoreIndex_HashTable .cold.2()
{
  OUTLINED_FUNCTION_1();
  [v1 bytes];
  [v0 length];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_ISStoreIndex_checkNodeBounds:()ISStoreIndex_HashTable .cold.3(void *a1)
{
  [a1 bytes];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end