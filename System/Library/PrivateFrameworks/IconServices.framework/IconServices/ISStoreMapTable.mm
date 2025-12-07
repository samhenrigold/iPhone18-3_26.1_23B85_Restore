@interface ISStoreMapTable
- (ISStoreMapTable)initWithURL:(id)l capacity:(unint64_t)capacity;
- (NSData)data;
- (id)dataForUUID:(id)d;
- (void)_extendData;
- (void)_extendWithMultiplyer:(float)multiplyer;
- (void)addData:(id)data forUUID:(id)d;
- (void)enumerateWithBlock:(id)block;
- (void)enumerateWithUUID:(unsigned __int8)d[16] block:(id)block;
- (void)removeAll;
- (void)removeDataForUUID:(id)d;
- (void)removeDataForUUID:(id)d passingTest:(id)test;
- (void)setBytes:(const void *)bytes size:(unint64_t)size forUUID:(unsigned __int8)d[16];
@end

@implementation ISStoreMapTable

- (ISStoreMapTable)initWithURL:(id)l capacity:(unint64_t)capacity
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = ISStoreMapTable;
  v8 = [(ISStoreMapTable *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_url, l);
    v9->_dataLock._os_unfair_lock_opaque = 0;
    v9->_initialCapacity = capacity;
  }

  return v9;
}

- (void)addData:(id)data forUUID:(id)d
{
  v7[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v7[0] = 0;
    v7[1] = 0;
    [d getUUIDBytes:v7];
    -[ISStoreMapTable setBytes:size:forUUID:](self, "setBytes:size:forUUID:", [dataCopy bytes], objc_msgSend(dataCopy, "length"), v7);
  }

  else
  {
    [(ISStoreMapTable *)self removeDataForUUID:d];
  }
}

- (id)dataForUUID:(id)d
{
  v15[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = objc_opt_new();
  data = [(ISStoreMapTable *)self data];
  v15[0] = 0;
  v15[1] = 0;
  [dCopy getUUIDBytes:v15];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __31__ISStoreMapTable_dataForUUID___block_invoke;
  v13 = &unk_1E77C67C8;
  v14 = v5;
  v7 = v5;
  [data _ISStoreIndex_enumerateValuesForUUID:v15 bock:&v10];
  v8 = [v7 copy];

  return v8;
}

void __31__ISStoreMapTable_dataForUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a2 + 36 length:NodeStructGetDataSize(a2) freeWhenDone:0];
  [*(a1 + 32) addObject:v3];
}

- (void)removeDataForUUID:(id)d
{
  v6[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  data = [(ISStoreMapTable *)self data];
  v6[0] = 0;
  v6[1] = 0;
  [dCopy getUUIDBytes:v6];

  [data _ISStoreIndex_enumerateValuesForUUID:v6 bock:&__block_literal_global_4];
}

- (void)removeDataForUUID:(id)d passingTest:(id)test
{
  v12[2] = *MEMORY[0x1E69E9840];
  testCopy = test;
  dCopy = d;
  data = [(ISStoreMapTable *)self data];
  v12[0] = 0;
  v12[1] = 0;
  [dCopy getUUIDBytes:v12];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__ISStoreMapTable_removeDataForUUID_passingTest___block_invoke;
  v10[3] = &unk_1E77C6810;
  v11 = testCopy;
  v9 = testCopy;
  [data _ISStoreIndex_enumerateValuesForUUID:v12 bock:v10];
}

void __49__ISStoreMapTable_removeDataForUUID_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a2 + 36 length:NodeStructGetDataSize(a2) freeWhenDone:0];
  if ((*(*(a1 + 32) + 16))())
  {
    *(a2 + 32) = 0;
  }
}

- (void)enumerateWithBlock:(id)block
{
  blockCopy = block;
  data = [(ISStoreMapTable *)self data];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__ISStoreMapTable_enumerateWithBlock___block_invoke;
  v7[3] = &unk_1E77C6810;
  v8 = blockCopy;
  v6 = blockCopy;
  [data _ISStoreIndex_enumerateValuesWithBock:v7];
}

void __38__ISStoreMapTable_enumerateWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2 + 8];
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a2 + 36 length:NodeStructGetDataSize(a2) freeWhenDone:0];
  (*(*(a1 + 32) + 16))();
}

- (void)removeAll
{
  v7 = self->_data;
  _ISStoreIndex_hashTableHeader = [(NSData *)v7 _ISStoreIndex_hashTableHeader];
  v4 = objc_msgSend__ISMutableStoreIndex_mappedDataWithCapacity_additionalSize_(MEMORY[0x1E695DEF0]);
  v5 = [(ISStoreMapTable *)self url];
  [(NSData *)v4 _ISMutableStoreIndex_makeBackedByFileAtURL:v5];

  os_unfair_lock_lock(&self->_dataLock);
  data = self->_data;
  self->_data = v4;

  os_unfair_lock_unlock(&self->_dataLock);
  if (_ISStoreIndex_hashTableHeader)
  {
    *(_ISStoreIndex_hashTableHeader + 4) = 0;
  }
}

- (void)enumerateWithUUID:(unsigned __int8)d[16] block:(id)block
{
  blockCopy = block;
  data = [(ISStoreMapTable *)self data];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__ISStoreMapTable_enumerateWithUUID_block___block_invoke;
  v9[3] = &unk_1E77C6810;
  v10 = blockCopy;
  v8 = blockCopy;
  [data _ISStoreIndex_enumerateValuesForUUID:d bock:v9];
}

uint64_t __43__ISStoreMapTable_enumerateWithUUID_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  DataSize = NodeStructGetDataSize(a2);
  v7 = *(v5 + 16);

  return v7(v5, a2 + 36, DataSize, a3);
}

- (void)setBytes:(const void *)bytes size:(unint64_t)size forUUID:(unsigned __int8)d[16]
{
  data = [(ISStoreMapTable *)self data];
  _ISStoreIndex_hashTableHeader = [data _ISStoreIndex_hashTableHeader];
  if (_ISStoreIndex_hashTableHeader && *(_ISStoreIndex_hashTableHeader + 12) <= *(_ISStoreIndex_hashTableHeader + 8))
  {
    [(ISStoreMapTable *)self _extend];
  }

  v11 = [data _ISMutableStoreIndex_addValue:bytes size:size forUUID:d];
  if ((v11 & 1) == 0)
  {
    v12 = _ISDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ISStoreMapTable setBytes:v12 size:? forUUID:?];
    }
  }
}

- (NSData)data
{
  os_unfair_lock_lock(&self->_dataLock);
  if ([(NSData *)self->_data _ISStoreIndex_isValid])
  {
    v3 = self->_data;
  }

  else
  {
    v4 = [(ISStoreMapTable *)self url];
    v3 = [MEMORY[0x1E695DEF0] _ISMutableStoreIndex_mappedDataWithURL:v4];
    if (![(NSData *)v3 _ISStoreIndex_isValid])
    {
      v5 = objc_msgSend__ISMutableStoreIndex_mappedDataWithCapacity_additionalSize_(MEMORY[0x1E695DEF0]);

      [(NSData *)v5 _ISMutableStoreIndex_makeBackedByFileAtURL:v4];
      v3 = v5;
    }

    objc_storeStrong(&self->_data, v3);
  }

  os_unfair_lock_unlock(&self->_dataLock);

  return v3;
}

- (void)_extendWithMultiplyer:(float)multiplyer
{
  v4 = self->_data;
  _ISStoreIndex_hashTableHeader = [(NSData *)v4 _ISStoreIndex_hashTableHeader];
  [(NSData *)v4 length];
  [(NSData *)v4 _ISStoreIndex_nodesOffset];
  v6 = objc_msgSend__ISMutableStoreIndex_mappedDataWithCapacity_additionalSize_(MEMORY[0x1E695DEF0]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__ISStoreMapTable__extendWithMultiplyer___block_invoke;
  v11[3] = &unk_1E77C67C8;
  v7 = v6;
  v12 = v7;
  [(NSData *)v4 _ISStoreIndex_enumerateValuesWithBock:v11];
  v8 = [(ISStoreMapTable *)self url];
  [(NSData *)v7 _ISMutableStoreIndex_makeBackedByFileAtURL:v8];

  os_unfair_lock_lock(&self->_dataLock);
  data = self->_data;
  self->_data = v7;
  v10 = v7;

  os_unfair_lock_unlock(&self->_dataLock);
  if (_ISStoreIndex_hashTableHeader)
  {
    *(_ISStoreIndex_hashTableHeader + 4) = 0;
  }
}

uint64_t __41__ISStoreMapTable__extendWithMultiplyer___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  DataSize = NodeStructGetDataSize(a2);

  return [v3 _ISMutableStoreIndex_addValue:a2 + 36 size:DataSize forUUID:a2 + 8];
}

- (void)_extendData
{
  p_data = &self->_data;
  v4 = self->_data;
  _ISStoreIndex_hashTableHeader = [(NSData *)v4 _ISStoreIndex_hashTableHeader];
  [(NSData *)v4 length];
  [(NSData *)v4 _ISStoreIndex_nodesOffset];
  v6 = objc_msgSend__ISMutableStoreIndex_mappedDataWithCapacity_additionalSize_(MEMORY[0x1E695DEF0]);
  v7 = vm_copy(*MEMORY[0x1E69E9A60], -[NSData bytes](v4, "bytes"), -[NSData length](v4, "length"), [v6 bytes]);
  if (v7)
  {
    v8 = _ISDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ISStoreMapTable *)v8 _extendData];
    }
  }

  else
  {
    v9 = [(ISStoreMapTable *)self url];
    [v6 _ISMutableStoreIndex_makeBackedByFileAtURL:v9];

    os_unfair_lock_lock(&self->_dataLock);
    objc_storeStrong(p_data, v6);
    os_unfair_lock_unlock(&self->_dataLock);
    if (_ISStoreIndex_hashTableHeader)
    {
      *(_ISStoreIndex_hashTableHeader + 4) = 0;
    }
  }
}

@end