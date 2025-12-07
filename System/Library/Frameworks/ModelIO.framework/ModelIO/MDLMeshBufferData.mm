@interface MDLMeshBufferData
- (MDLMeshBufferAllocator)allocator;
- (MDLMeshBufferData)initWithLength:(unint64_t)length data:(id)data allocator:(id)allocator zone:(id)zone;
- (MDLMeshBufferData)initWithType:(MDLMeshBufferType)type data:(NSData *)data;
- (MDLMeshBufferData)initWithType:(MDLMeshBufferType)type length:(NSUInteger)length;
- (id)copyWithZone:(_NSZone *)zone;
- (id)map;
- (void)dealloc;
- (void)fillData:(id)data offset:(unint64_t)offset;
@end

@implementation MDLMeshBufferData

- (id)map
{
  v3 = [MDLMeshBufferMap alloc];
  v15 = objc_msgSend_mutableBytes(self->_data, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v25 = objc_msgSend_initWithBytes_deallocator_(v3, v16, v15, 0, v21, v22, v23, v24, v17, v18, v19, v20);

  return v25;
}

- (MDLMeshBufferAllocator)allocator
{
  if (!qword_27DF912C0 && !self->_allocator)
  {
    v3 = objc_opt_new();
    v4 = qword_27DF912C0;
    qword_27DF912C0 = v3;

    objc_storeStrong(&self->_allocator, qword_27DF912C0);
  }

  allocator = self->_allocator;

  return allocator;
}

- (MDLMeshBufferData)initWithType:(MDLMeshBufferType)type length:(NSUInteger)length
{
  v25.receiver = self;
  v25.super_class = MDLMeshBufferData;
  v6 = [(MDLMeshBufferData *)&v25 init];
  v7 = v6;
  if (v6)
  {
    v6->_length = length;
    v8 = objc_alloc(MEMORY[0x277CBEB28]);
    v19 = objc_msgSend_initWithLength_(v8, v9, length, v10, v15, v16, v17, v18, v11, v12, v13, v14);
    data = v7->_data;
    v7->_data = v19;

    zone = v7->_zone;
    v7->_zone = 0;

    objc_storeStrong(&v7->_zoneDefault, v7->_zone);
    allocator = v7->_allocator;
    v7->_allocator = 0;

    v7->_type = type;
    v23 = v7;
  }

  return v7;
}

- (MDLMeshBufferData)initWithType:(MDLMeshBufferType)type data:(NSData *)data
{
  v6 = data;
  v36.receiver = self;
  v36.super_class = MDLMeshBufferData;
  v14 = [(MDLMeshBufferData *)&v36 init];
  if (v14)
  {
    v14->_length = objc_msgSend_length(v6, v7, v8, v9, v15, v16, v17, v18, v10, v11, v12, v13);
    v19 = objc_alloc(MEMORY[0x277CBEB28]);
    v30 = objc_msgSend_initWithData_(v19, v20, v6, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v31 = v14->_data;
    v14->_data = v30;

    zone = v14->_zone;
    v14->_zone = 0;

    objc_storeStrong(&v14->_zoneDefault, v14->_zone);
    allocator = v14->_allocator;
    v14->_allocator = 0;

    v14->_type = type;
    v34 = v14;
  }

  return v14;
}

- (MDLMeshBufferData)initWithLength:(unint64_t)length data:(id)data allocator:(id)allocator zone:(id)zone
{
  dataCopy = data;
  allocatorCopy = allocator;
  zoneCopy = zone;
  v40.receiver = self;
  v40.super_class = MDLMeshBufferData;
  v13 = [(MDLMeshBufferData *)&v40 init];
  v14 = v13;
  if (v13 && ((objc_storeStrong(&v13->_zone, zone), objc_storeStrong(&v14->_zoneDefault, v14->_zone), (zoneDefault = v14->_zoneDefault) == 0) || objc_msgSend_reserveMemory_allocator_(zoneDefault, v15, v14->_length, allocatorCopy, v20, v21, v22, v23, v16, v17, v18, v19)))
  {
    objc_storeStrong(&v14->_allocator, allocator);
    v14->_length = length;
    v25 = objc_alloc(MEMORY[0x277CBEB28]);
    if (dataCopy)
    {
      v36 = objc_msgSend_initWithData_(v25, v26, dataCopy, v27, v32, v33, v34, v35, v28, v29, v30, v31);
    }

    else
    {
      v36 = objc_msgSend_initWithLength_(v25, v26, length, v27, v32, v33, v34, v35, v28, v29, v30, v31);
    }

    data = v14->_data;
    v14->_data = v36;

    v37 = v14;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (void)dealloc
{
  zoneDefault = self->_zoneDefault;
  if (zoneDefault)
  {
    objc_msgSend_cancelMemory_(zoneDefault, a2, self->_length, v2, v7, v8, v9, v10, v3, v4, v5, v6);
  }

  v13.receiver = self;
  v13.super_class = MDLMeshBufferData;
  [(MDLMeshBufferData *)&v13 dealloc];
}

- (void)fillData:(id)data offset:(unint64_t)offset
{
  dataCopy = data;
  v17 = objc_msgSend_length(dataCopy, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  length = self->_length;
  v30 = objc_msgSend_mutableBytes(self->_data, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v31 = dataCopy;
  v43 = objc_msgSend_bytes(v31, v32, v33, v34, v39, v40, v41, v42, v35, v36, v37, v38);
  v44 = v17 + offset - length;
  if (v17 + offset < length)
  {
    v44 = 0;
  }

  memcpy((v30 + offset), v43, v44 + v17);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13 = objc_msgSend_allocWithZone_(MDLMeshBufferData, a2, zone, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  data = self->_data;
  length = self->_length;
  allocator = self->_allocator;

  return objc_msgSend_initWithLength_data_allocator_zone_(v13, v14, length, data, v17, v18, v19, v20, allocator, 0, v15, v16);
}

@end