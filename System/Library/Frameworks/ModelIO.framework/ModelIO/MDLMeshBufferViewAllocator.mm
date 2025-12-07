@interface MDLMeshBufferViewAllocator
- (id)decodeMeshBufferWithCoder:(id)coder forKey:(id)key;
- (id)decodeMeshBuffersWithCoder:(id)coder forKey:(id)key;
- (id)newBufferViewAtRegionIndex:(int64_t)index type:(unint64_t)type;
- (id)newBufferViewAtRegionIndex:(int64_t)index type:(unint64_t)type length:(int64_t)length offset:(int64_t)offset;
- (void)encodeMeshBuffer:(id)buffer withCoder:(id)coder forKey:(id)key;
- (void)encodeMeshBuffers:(id)buffers withCoder:(id)coder forKey:(id)key;
@end

@implementation MDLMeshBufferViewAllocator

- (id)newBufferViewAtRegionIndex:(int64_t)index type:(unint64_t)type length:(int64_t)length offset:(int64_t)offset
{
  if (!objc_msgSend__regionAtIndex_length_offset_(self, a2, index, length, v8, v9, v10, v11, offset, offset, v6, v7))
  {
    return 0;
  }

  BaseAddress = IOSurfaceGetBaseAddress(self->super._sharedRegions.__begin_[self->super._regionIndices.__begin_[index]]);
  v18 = [MDLBufferView alloc];
  v25 = objc_msgSend_initWithBytesNoCopy_length_offset_regionIndex_allocator_(v18, v19, BaseAddress, length, v21, v22, v23, v24, offset, index, self, v20);
  v26 = [MDLMeshBufferView alloc];
  v36 = objc_msgSend_initWithBufferViewNoCopy_type_(v26, v27, v25, type, v32, v33, v34, v35, v28, v29, v30, v31);

  return v36;
}

- (id)newBufferViewAtRegionIndex:(int64_t)index type:(unint64_t)type
{
  if (!objc_msgSend__regionAtIndex_(self, a2, index, type, v8, v9, v10, v11, v4, v5, v6, v7))
  {
    return 0;
  }

  v15 = self->super._sharedRegions.__begin_[self->super._regionIndices.__begin_[index]];
  BaseAddress = IOSurfaceGetBaseAddress(v15);
  AllocSize = IOSurfaceGetAllocSize(v15);
  v18 = [MDLBufferView alloc];
  v25 = objc_msgSend_initWithBytesNoCopy_length_offset_regionIndex_allocator_(v18, v19, BaseAddress, AllocSize, v21, v22, v23, v24, 0, index, self, v20);
  v26 = [MDLMeshBufferView alloc];
  v36 = objc_msgSend_initWithBufferViewNoCopy_type_(v26, v27, v25, type, v32, v33, v34, v35, v28, v29, v30, v31);

  return v36;
}

- (void)encodeMeshBuffer:(id)buffer withCoder:(id)coder forKey:(id)key
{
  bufferCopy = buffer;
  coderCopy = coder;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = bufferCopy;
    v21 = objc_msgSend_stringByAppendingString_(keyCopy, v11, @".view", v12, v17, v18, v19, v20, v13, v14, v15, v16);
    objc_msgSend_encodeBuffer_withCoder_forKey_(self, v22, v10, coderCopy, v26, v27, v28, v29, v21, v23, v24, v25);

    v30 = v10[7];
    v41 = objc_msgSend_stringByAppendingString_(keyCopy, v31, @".type", v32, v37, v38, v39, v40, v33, v34, v35, v36);
    objc_msgSend_encodeInteger_forKey_(coderCopy, v42, v30, v41, v47, v48, v49, v50, v43, v44, v45, v46);
  }
}

- (void)encodeMeshBuffers:(id)buffers withCoder:(id)coder forKey:(id)key
{
  buffersCopy = buffers;
  coderCopy = coder;
  keyCopy = key;
  v21 = objc_msgSend_count(buffersCopy, v10, v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v32 = objc_msgSend_stringByAppendingString_(keyCopy, v22, @".count", v23, v28, v29, v30, v31, v24, v25, v26, v27);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v33, v21, v32, v38, v39, v40, v41, v34, v35, v36, v37);

  for (i = 0; i < objc_msgSend_count(buffersCopy, v42, v43, v44, v49, v50, v51, v52, v45, v46, v47, v48); ++i)
  {
    v64 = objc_msgSend_stringByAppendingFormat_(keyCopy, v54, @"[%ld]", v55, v60, v61, v62, v63, v56, v57, v58, v59, i);
    v75 = objc_msgSend_objectAtIndexedSubscript_(buffersCopy, v65, i, v66, v71, v72, v73, v74, v67, v68, v69, v70);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v87 = objc_msgSend_objectAtIndexedSubscript_(buffersCopy, v77, i, v78, v83, v84, v85, v86, v79, v80, v81, v82);
      v98 = objc_msgSend_stringByAppendingString_(v64, v88, @".view", v89, v94, v95, v96, v97, v90, v91, v92, v93);
      objc_msgSend_encodeMeshBuffer_withCoder_forKey_(self, v99, v87, coderCopy, v103, v104, v105, v106, v98, v100, v101, v102);
    }
  }
}

- (id)decodeMeshBuffersWithCoder:(id)coder forKey:(id)key
{
  coderCopy = coder;
  keyCopy = key;
  v17 = objc_msgSend_stringByAppendingString_(keyCopy, v7, @".count", v8, v13, v14, v15, v16, v9, v10, v11, v12);
  v28 = objc_msgSend_decodeIntegerForKey_(coderCopy, v18, v17, v19, v24, v25, v26, v27, v20, v21, v22, v23);

  v29 = objc_alloc(MEMORY[0x277CBEB18]);
  v46 = objc_msgSend_initWithCapacity_(v29, v30, v28, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  if (v28 >= 1)
  {
    for (i = 0; i != v28; ++i)
    {
      v52 = objc_msgSend_stringByAppendingFormat_(keyCopy, v40, @"[%ld]", v41, v47, v48, v49, v50, v42, v43, v44, v45, i);
      v63 = objc_msgSend_stringByAppendingString_(v52, v53, @".view", v54, v59, v60, v61, v62, v55, v56, v57, v58);
      v64 = coderCopy;
      v74 = objc_msgSend_decodeMeshBufferWithCoder_forKey_(self, v65, coderCopy, v63, v70, v71, v72, v73, v66, v67, v68, v69);

      objc_msgSend_addObject_(v46, v75, v74, v76, v81, v82, v83, v84, v77, v78, v79, v80);
      coderCopy = v64;
    }
  }

  return v46;
}

- (id)decodeMeshBufferWithCoder:(id)coder forKey:(id)key
{
  coderCopy = coder;
  keyCopy = key;
  v18 = objc_msgSend_stringByAppendingString_(keyCopy, v8, @".view", v9, v14, v15, v16, v17, v10, v11, v12, v13);
  v28 = objc_msgSend_decodeBufferWithCoder_forKey_(self, v19, coderCopy, v18, v24, v25, v26, v27, v20, v21, v22, v23);

  v39 = objc_msgSend_stringByAppendingString_(keyCopy, v29, @".type", v30, v35, v36, v37, v38, v31, v32, v33, v34);
  v50 = objc_msgSend_decodeIntegerForKey_(coderCopy, v40, v39, v41, v46, v47, v48, v49, v42, v43, v44, v45);

  v51 = [MDLMeshBufferView alloc];
  v61 = objc_msgSend_initWithBufferViewNoCopy_type_(v51, v52, v28, v50, v57, v58, v59, v60, v53, v54, v55, v56);

  return v61;
}

@end