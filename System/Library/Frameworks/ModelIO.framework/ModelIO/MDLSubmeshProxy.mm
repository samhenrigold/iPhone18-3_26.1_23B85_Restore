@interface MDLSubmeshProxy
- (MDLSubmeshProxy)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MDLSubmeshProxy

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendString_(v3, v4, @"IndexBuffers: \n", v5, v10, v11, v12, v13, v6, v7, v8, v9);
  objc_msgSend_appendFormat_(v3, v14, @"Name: %@\n", v15, v20, v21, v22, v23, v16, v17, v18, v19, self->super._name);
  objc_msgSend_appendFormat_(v3, v24, @"IndexCount: %lu\n", v25, v30, v31, v32, v33, v26, v27, v28, v29, self->super._indexCount);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = self->super._indexBuffer;
    v46 = objc_msgSend_data(v34, v35, v36, v37, v42, v43, v44, v45, v38, v39, v40, v41);
    objc_msgSend_appendString_(v3, v47, @"[ ", v48, v53, v54, v55, v56, v49, v50, v51, v52);
    if (self->super._indexCount)
    {
      v67 = 0;
      do
      {
        objc_msgSend_appendFormat_(v3, v57, @" (%d), ", v58, v63, v64, v65, v66, v59, v60, v61, v62, *(v46 + 4 * v67++));
      }

      while (v67 < self->super._indexCount);
    }

    objc_msgSend_appendString_(v3, v57, @"]\n", v58, v63, v64, v65, v66, v59, v60, v61, v62);
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v4, self->super._allocator, @"allocator", v9, v10, v11, v12, v5, v6, v7, v8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_encodeMeshBuffer_withCoder_forKey_(self->super._allocator, v13, self->super._indexBuffer, coderCopy, v17, v18, v19, v20, @"indexBuffer", v14, v15, v16);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_encodeMaterialWithCoder_allocator_(self->super._material, v21, coderCopy, self->super._allocator, v26, v27, v28, v29, v22, v23, v24, v25);
  }

  objc_msgSend_encodeTopologyWithCoder_allocator_(self->super._topology, v21, coderCopy, self->super._allocator, v26, v27, v28, v29, v22, v23, v24, v25);
  objc_msgSend_encodeObject_forKey_(coderCopy, v30, self->super._name, @"name", v35, v36, v37, v38, v31, v32, v33, v34);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v39, self->super._indexCount, @"indexCount", v44, v45, v46, v47, v40, v41, v42, v43);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v48, self->super._indexType, @"indexType", v53, v54, v55, v56, v49, v50, v51, v52);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v57, self->super._geometryType, @"geometryType", v62, v63, v64, v65, v58, v59, v60, v61);
}

- (MDLSubmeshProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v15 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"allocator", v11, v12, v13, v14, v7, v8, v9, v10);
  allocator = self->super._allocator;
  self->super._allocator = v15;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = objc_msgSend_decodeMeshBufferWithCoder_forKey_(self->super._allocator, v17, coderCopy, @"indexBuffer", v22, v23, v24, v25, v18, v19, v20, v21);
    indexBuffer = self->super._indexBuffer;
    self->super._indexBuffer = v26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = objc_msgSend_decodeMaterialWithCoder_allocator_(MDLMaterial, v28, coderCopy, self->super._allocator, v33, v34, v35, v36, v29, v30, v31, v32);
    material = self->super._material;
    self->super._material = v37;
  }

  v39 = objc_msgSend_decodeTopologyWithCoder_allocator_(MDLSubmeshTopology, v28, coderCopy, self->super._allocator, v33, v34, v35, v36, v29, v30, v31, v32);
  topology = self->super._topology;
  self->super._topology = v39;

  v41 = objc_opt_class();
  v51 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v42, v41, @"name", v47, v48, v49, v50, v43, v44, v45, v46);
  name = self->super._name;
  self->super._name = v51;

  self->super._indexCount = objc_msgSend_decodeIntegerForKey_(coderCopy, v53, @"indexCount", v54, v59, v60, v61, v62, v55, v56, v57, v58);
  self->super._indexType = objc_msgSend_decodeIntegerForKey_(coderCopy, v63, @"indexType", v64, v69, v70, v71, v72, v65, v66, v67, v68);
  self->super._geometryType = objc_msgSend_decodeIntegerForKey_(coderCopy, v73, @"geometryType", v74, v79, v80, v81, v82, v75, v76, v77, v78);

  return self;
}

@end