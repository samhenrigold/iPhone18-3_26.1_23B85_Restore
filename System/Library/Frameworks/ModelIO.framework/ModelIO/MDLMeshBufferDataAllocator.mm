@interface MDLMeshBufferDataAllocator
- (id)newBuffer:(unint64_t)buffer type:(unint64_t)type;
- (id)newBufferFromZone:(id)zone data:(id)data type:(unint64_t)type;
- (id)newBufferFromZone:(id)zone length:(unint64_t)length type:(unint64_t)type;
- (id)newBufferWithData:(id)data type:(unint64_t)type;
- (id)newZone:(unint64_t)zone;
- (id)newZoneForBuffersWithSize:(id)size andType:(id)type;
@end

@implementation MDLMeshBufferDataAllocator

- (id)newZone:(unint64_t)zone
{
  v5 = [MDLMeshBufferZoneDefault alloc];

  return MEMORY[0x2821F9670](v5, sel_initWithCapacity_allocator_, zone, self, v6, v7, v8, v9);
}

- (id)newZoneForBuffersWithSize:(id)size andType:(id)type
{
  v72 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  typeCopy = type;
  v19 = objc_msgSend_count(sizeCopy, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  if (v19 == objc_msgSend_count(typeCopy, v20, v21, v22, v27, v28, v29, v30, v23, v24, v25, v26))
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v31 = sizeCopy;
    v40 = 0;
    v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v67, v71, v36, v37, v38, v39, 16, v33, v34, v35);
    if (v48)
    {
      v53 = *v68;
      do
      {
        v54 = 0;
        do
        {
          if (*v68 != v53)
          {
            objc_enumerationMutation(v31);
          }

          v40 += objc_msgSend_unsignedIntegerValue(*(*(&v67 + 1) + 8 * v54++), v41, v42, v43, v49, v50, v51, v52, v44, v45, v46, v47, v67);
        }

        while (v48 != v54);
        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v41, &v67, v71, v49, v50, v51, v52, 16, v45, v46, v47);
      }

      while (v48);
    }

    v65 = objc_msgSend_newZone_(self, v55, v40, v56, v61, v62, v63, v64, v57, v58, v59, v60);
  }

  else
  {
    v65 = 0;
  }

  return v65;
}

- (id)newBuffer:(unint64_t)buffer type:(unint64_t)type
{
  v7 = [MDLMeshBufferData alloc];
  result = objc_msgSend_initWithLength_data_allocator_zone_(v7, v8, buffer, 0, v11, v12, v13, v14, self, 0, v9, v10);
  *(result + 6) = type;
  return result;
}

- (id)newBufferWithData:(id)data type:(unint64_t)type
{
  dataCopy = data;
  v7 = [MDLMeshBufferData alloc];
  v19 = objc_msgSend_length(dataCopy, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  v27 = objc_msgSend_initWithLength_data_allocator_zone_(v7, v20, v19, dataCopy, v23, v24, v25, v26, self, 0, v21, v22);
  v27[6] = type;

  return v27;
}

- (id)newBufferFromZone:(id)zone length:(unint64_t)length type:(unint64_t)type
{
  zoneCopy = zone;
  v9 = [MDLMeshBufferData alloc];
  v17 = objc_msgSend_initWithLength_data_allocator_zone_(v9, v10, length, 0, v13, v14, v15, v16, self, zoneCopy, v11, v12);
  v17[6] = type;

  return v17;
}

- (id)newBufferFromZone:(id)zone data:(id)data type:(unint64_t)type
{
  zoneCopy = zone;
  dataCopy = data;
  v10 = [MDLMeshBufferData alloc];
  v22 = objc_msgSend_length(dataCopy, v11, v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v30 = objc_msgSend_initWithLength_data_allocator_zone_(v10, v23, v22, dataCopy, v26, v27, v28, v29, self, zoneCopy, v24, v25);
  v30[6] = type;

  return v30;
}

@end