@interface MPSPolygonAccelerationStructure
- (MPSPolygonAccelerationStructure)initWithCoder:(id)coder device:(id)device;
- (MPSPolygonAccelerationStructure)initWithCoder:(id)coder group:(id)group;
- (MPSPolygonAccelerationStructure)initWithDevice:(id)device;
- (MPSPolygonAccelerationStructure)initWithGroup:(id)group;
- (NSUInteger)indexBufferOffset;
- (NSUInteger)maskBufferOffset;
- (NSUInteger)polygonCount;
- (NSUInteger)vertexBufferOffset;
- (_MPSAxisAlignedBoundingBox)boundingBox;
- (id)boundingBoxBuffer;
- (id)copyPolygonAccelerationStructureWithZone:(_NSZone *)zone device:(id)device group:(id)group;
- (id)copyWithZone:(_NSZone *)zone group:(id)group;
- (id)description;
- (id)indexBuffer;
- (id)maskBuffer;
- (id)newResourceEncoder;
- (id)statistics;
- (id)vertexBuffer;
- (void)bindResourcesWithEncoder:(id)encoder commandBuffer:(id)buffer retainedResources:(id)resources;
- (void)dealloc;
- (void)decodePolygonAccelerationStructureWithCoder:(id)coder;
- (void)encodeRefitToCommandBuffer:(id)buffer;
- (void)encodeResourcesToBuffer:(id)buffer;
- (void)encodeWithCoder:(id)coder;
- (void)rebuild;
- (void)rebuildWithCompletionHandler:(id)handler;
- (void)setIndexBuffer:(id)indexBuffer;
- (void)setIndexBufferOffset:(NSUInteger)indexBufferOffset;
- (void)setIndexType:(MPSDataType)indexType;
- (void)setMaskBuffer:(id)maskBuffer;
- (void)setMaskBufferOffset:(NSUInteger)maskBufferOffset;
- (void)setPolygonCount:(NSUInteger)polygonCount;
- (void)setPolygonType:(MPSPolygonType)polygonType;
- (void)setVertexBuffer:(id)vertexBuffer;
- (void)setVertexBufferOffset:(NSUInteger)vertexBufferOffset;
- (void)validate;
@end

@implementation MPSPolygonAccelerationStructure

- (void)setPolygonType:(MPSPolygonType)polygonType
{
  if (polygonType >= 2)
  {
    sub_239E1FECC(self, a2);
  }

  self->_polygonType = polygonType;
}

- (void)setIndexType:(MPSDataType)indexType
{
  if (indexType != MPSDataTypeUInt16 && indexType != MPSDataTypeUInt32 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  self->_indexType = indexType;
}

- (_MPSAxisAlignedBoundingBox)boundingBox
{
  v4 = self[4].max.i64[0];
  if (v4)
  {
    return objc_msgSend_contents(*(v4 + 96), a3, v3);
  }

  return self;
}

- (id)boundingBoxBuffer
{
  bvh = self->_bvh;
  if (bvh)
  {
    return *(bvh + 12);
  }

  else
  {
    return 0;
  }
}

- (id)statistics
{
  bvh = self->_bvh;
  if (bvh)
  {
    return *(bvh + 13);
  }

  else
  {
    return 0;
  }
}

- (id)vertexBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, v2))
  {
    v6 = objc_msgSend_polygonBuffers(self, v4, v5);
    objc_msgSend_count(v6, v7, v8);
  }

  if (objc_msgSend_polygonBuffers(self, v4, v5))
  {
    v11 = objc_msgSend_polygonBuffers(self, v9, v10);
    v14 = objc_msgSend_count(v11, v12, v13);
    if (v14 != 1)
    {
      sub_239E1FF1C(v14, v9);
    }
  }

  v15 = objc_msgSend_polygonBuffers(self, v9, v10);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);

  return objc_msgSend_vertexBuffer(v17, v18, v19);
}

- (void)setVertexBuffer:(id)vertexBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, vertexBuffer))
  {
    v7 = objc_msgSend_polygonBuffers(self, v5, v6);
    objc_msgSend_count(v7, v8, v9);
  }

  if (objc_msgSend_polygonBuffers(self, v5, v6))
  {
    v12 = objc_msgSend_polygonBuffers(self, v10, v11);
    v15 = objc_msgSend_count(v12, v13, v14);
    if (v15 != 1)
    {
      sub_239E1FF6C(v15, v10);
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v10, v11))
  {
    v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
    objc_msgSend_setPolygonBuffers_(self, v19, v18);
    v20 = objc_alloc_init(MPSPolygonBuffer);
    v23 = objc_msgSend_polygonBuffers(self, v21, v22);
    objc_msgSend_addObject_(v23, v24, v20);
  }

  v25 = objc_msgSend_polygonBuffers(self, v16, v17);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 0);

  MEMORY[0x2821F9670](v27, sel_setVertexBuffer_, vertexBuffer);
}

- (NSUInteger)vertexBufferOffset
{
  if (objc_msgSend_polygonBuffers(self, a2, v2))
  {
    v6 = objc_msgSend_polygonBuffers(self, v4, v5);
    objc_msgSend_count(v6, v7, v8);
  }

  if (objc_msgSend_polygonBuffers(self, v4, v5))
  {
    v11 = objc_msgSend_polygonBuffers(self, v9, v10);
    v14 = objc_msgSend_count(v11, v12, v13);
    if (v14 != 1)
    {
      sub_239E1FFBC(v14, v9);
    }
  }

  v15 = objc_msgSend_polygonBuffers(self, v9, v10);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);

  return objc_msgSend_vertexBufferOffset(v17, v18, v19);
}

- (void)setVertexBufferOffset:(NSUInteger)vertexBufferOffset
{
  if (objc_msgSend_polygonBuffers(self, a2, vertexBufferOffset))
  {
    v7 = objc_msgSend_polygonBuffers(self, v5, v6);
    objc_msgSend_count(v7, v8, v9);
  }

  if (objc_msgSend_polygonBuffers(self, v5, v6))
  {
    v12 = objc_msgSend_polygonBuffers(self, v10, v11);
    v15 = objc_msgSend_count(v12, v13, v14);
    if (v15 != 1)
    {
      sub_239E2000C(v15, v10);
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v10, v11))
  {
    v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
    objc_msgSend_setPolygonBuffers_(self, v19, v18);
    v20 = objc_alloc_init(MPSPolygonBuffer);
    v23 = objc_msgSend_polygonBuffers(self, v21, v22);
    objc_msgSend_addObject_(v23, v24, v20);
  }

  v25 = objc_msgSend_polygonBuffers(self, v16, v17);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 0);

  MEMORY[0x2821F9670](v27, sel_setVertexBufferOffset_, vertexBufferOffset);
}

- (id)indexBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, v2))
  {
    v6 = objc_msgSend_polygonBuffers(self, v4, v5);
    objc_msgSend_count(v6, v7, v8);
  }

  if (objc_msgSend_polygonBuffers(self, v4, v5))
  {
    v11 = objc_msgSend_polygonBuffers(self, v9, v10);
    v14 = objc_msgSend_count(v11, v12, v13);
    if (v14 != 1)
    {
      sub_239E2005C(v14, v9);
    }
  }

  v15 = objc_msgSend_polygonBuffers(self, v9, v10);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);

  return objc_msgSend_indexBuffer(v17, v18, v19);
}

- (void)setIndexBuffer:(id)indexBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, indexBuffer))
  {
    v7 = objc_msgSend_polygonBuffers(self, v5, v6);
    objc_msgSend_count(v7, v8, v9);
  }

  if (objc_msgSend_polygonBuffers(self, v5, v6))
  {
    v12 = objc_msgSend_polygonBuffers(self, v10, v11);
    v15 = objc_msgSend_count(v12, v13, v14);
    if (v15 != 1)
    {
      sub_239E200AC(v15, v10);
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v10, v11))
  {
    v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
    objc_msgSend_setPolygonBuffers_(self, v19, v18);
    v20 = objc_alloc_init(MPSPolygonBuffer);
    v23 = objc_msgSend_polygonBuffers(self, v21, v22);
    objc_msgSend_addObject_(v23, v24, v20);
  }

  v25 = objc_msgSend_polygonBuffers(self, v16, v17);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 0);

  MEMORY[0x2821F9670](v27, sel_setIndexBuffer_, indexBuffer);
}

- (NSUInteger)indexBufferOffset
{
  if (objc_msgSend_polygonBuffers(self, a2, v2))
  {
    v6 = objc_msgSend_polygonBuffers(self, v4, v5);
    objc_msgSend_count(v6, v7, v8);
  }

  if (objc_msgSend_polygonBuffers(self, v4, v5))
  {
    v11 = objc_msgSend_polygonBuffers(self, v9, v10);
    v14 = objc_msgSend_count(v11, v12, v13);
    if (v14 != 1)
    {
      sub_239E200FC(v14, v9);
    }
  }

  v15 = objc_msgSend_polygonBuffers(self, v9, v10);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);

  return objc_msgSend_indexBufferOffset(v17, v18, v19);
}

- (void)setIndexBufferOffset:(NSUInteger)indexBufferOffset
{
  if (objc_msgSend_polygonBuffers(self, a2, indexBufferOffset))
  {
    v7 = objc_msgSend_polygonBuffers(self, v5, v6);
    objc_msgSend_count(v7, v8, v9);
  }

  if (objc_msgSend_polygonBuffers(self, v5, v6))
  {
    v12 = objc_msgSend_polygonBuffers(self, v10, v11);
    v15 = objc_msgSend_count(v12, v13, v14);
    if (v15 != 1)
    {
      sub_239E2014C(v15, v10);
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v10, v11))
  {
    v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
    objc_msgSend_setPolygonBuffers_(self, v19, v18);
    v20 = objc_alloc_init(MPSPolygonBuffer);
    v23 = objc_msgSend_polygonBuffers(self, v21, v22);
    objc_msgSend_addObject_(v23, v24, v20);
  }

  v25 = objc_msgSend_polygonBuffers(self, v16, v17);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 0);

  MEMORY[0x2821F9670](v27, sel_setIndexBufferOffset_, indexBufferOffset);
}

- (id)maskBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, v2))
  {
    v6 = objc_msgSend_polygonBuffers(self, v4, v5);
    objc_msgSend_count(v6, v7, v8);
  }

  if (objc_msgSend_polygonBuffers(self, v4, v5))
  {
    v11 = objc_msgSend_polygonBuffers(self, v9, v10);
    v14 = objc_msgSend_count(v11, v12, v13);
    if (v14 != 1)
    {
      sub_239E2019C(v14, v9);
    }
  }

  v15 = objc_msgSend_polygonBuffers(self, v9, v10);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);

  return objc_msgSend_maskBuffer(v17, v18, v19);
}

- (void)setMaskBuffer:(id)maskBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, maskBuffer))
  {
    v7 = objc_msgSend_polygonBuffers(self, v5, v6);
    objc_msgSend_count(v7, v8, v9);
  }

  if (objc_msgSend_polygonBuffers(self, v5, v6))
  {
    v12 = objc_msgSend_polygonBuffers(self, v10, v11);
    v15 = objc_msgSend_count(v12, v13, v14);
    if (v15 != 1)
    {
      sub_239E201EC(v15, v10);
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v10, v11))
  {
    v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
    objc_msgSend_setPolygonBuffers_(self, v19, v18);
    v20 = objc_alloc_init(MPSPolygonBuffer);
    v23 = objc_msgSend_polygonBuffers(self, v21, v22);
    objc_msgSend_addObject_(v23, v24, v20);
  }

  v25 = objc_msgSend_polygonBuffers(self, v16, v17);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 0);

  MEMORY[0x2821F9670](v27, sel_setMaskBuffer_, maskBuffer);
}

- (NSUInteger)maskBufferOffset
{
  if (objc_msgSend_polygonBuffers(self, a2, v2))
  {
    v6 = objc_msgSend_polygonBuffers(self, v4, v5);
    objc_msgSend_count(v6, v7, v8);
  }

  if (objc_msgSend_polygonBuffers(self, v4, v5))
  {
    v11 = objc_msgSend_polygonBuffers(self, v9, v10);
    v14 = objc_msgSend_count(v11, v12, v13);
    if (v14 != 1)
    {
      sub_239E2023C(v14, v9);
    }
  }

  v15 = objc_msgSend_polygonBuffers(self, v9, v10);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);

  return objc_msgSend_maskBufferOffset(v17, v18, v19);
}

- (void)setMaskBufferOffset:(NSUInteger)maskBufferOffset
{
  if (objc_msgSend_polygonBuffers(self, a2, maskBufferOffset))
  {
    v7 = objc_msgSend_polygonBuffers(self, v5, v6);
    objc_msgSend_count(v7, v8, v9);
  }

  if (objc_msgSend_polygonBuffers(self, v5, v6))
  {
    v12 = objc_msgSend_polygonBuffers(self, v10, v11);
    v15 = objc_msgSend_count(v12, v13, v14);
    if (v15 != 1)
    {
      sub_239E2028C(v15, v10);
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v10, v11))
  {
    v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
    objc_msgSend_setPolygonBuffers_(self, v19, v18);
    v20 = objc_alloc_init(MPSPolygonBuffer);
    v23 = objc_msgSend_polygonBuffers(self, v21, v22);
    objc_msgSend_addObject_(v23, v24, v20);
  }

  v25 = objc_msgSend_polygonBuffers(self, v16, v17);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 0);

  MEMORY[0x2821F9670](v27, sel_setMaskBufferOffset_, maskBufferOffset);
}

- (NSUInteger)polygonCount
{
  if (objc_msgSend_polygonBuffers(self, a2, v2))
  {
    v6 = objc_msgSend_polygonBuffers(self, v4, v5);
    objc_msgSend_count(v6, v7, v8);
  }

  if (objc_msgSend_polygonBuffers(self, v4, v5))
  {
    v11 = objc_msgSend_polygonBuffers(self, v9, v10);
    v14 = objc_msgSend_count(v11, v12, v13);
    if (v14 != 1)
    {
      sub_239E202DC(v14, v9);
    }
  }

  v15 = objc_msgSend_polygonBuffers(self, v9, v10);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);

  return objc_msgSend_polygonCount(v17, v18, v19);
}

- (void)setPolygonCount:(NSUInteger)polygonCount
{
  if (objc_msgSend_polygonBuffers(self, a2, polygonCount))
  {
    v7 = objc_msgSend_polygonBuffers(self, v5, v6);
    objc_msgSend_count(v7, v8, v9);
  }

  if (objc_msgSend_polygonBuffers(self, v5, v6))
  {
    v12 = objc_msgSend_polygonBuffers(self, v10, v11);
    v15 = objc_msgSend_count(v12, v13, v14);
    if (v15 != 1)
    {
      sub_239E2032C(v15, v10);
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v10, v11))
  {
    v18 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
    objc_msgSend_setPolygonBuffers_(self, v19, v18);
    v20 = objc_alloc_init(MPSPolygonBuffer);
    v23 = objc_msgSend_polygonBuffers(self, v21, v22);
    objc_msgSend_addObject_(v23, v24, v20);
  }

  v25 = objc_msgSend_polygonBuffers(self, v16, v17);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 0);

  objc_msgSend_setPolygonCount_(v27, v28, polygonCount);
}

- (MPSPolygonAccelerationStructure)initWithDevice:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSPolygonAccelerationStructure;
  v3 = [(MPSAccelerationStructure *)&v8 initWithDevice:device];
  v6 = v3;
  if (v3)
  {
    objc_msgSend_sharedInitPolygonAccelerationStructure(v3, v4, v5);
  }

  return v6;
}

- (MPSPolygonAccelerationStructure)initWithGroup:(id)group
{
  v8.receiver = self;
  v8.super_class = MPSPolygonAccelerationStructure;
  v3 = [(MPSAccelerationStructure *)&v8 initWithGroup:group];
  v6 = v3;
  if (v3)
  {
    objc_msgSend_sharedInitPolygonAccelerationStructure(v3, v4, v5);
  }

  return v6;
}

- (void)decodePolygonAccelerationStructureWithCoder:(id)coder
{
  v55[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_containsValueForKey_(coder, a2, @"MPSTriangleAccelerationStructureKeyTriangleCount"))
  {
    v6 = objc_msgSend_decodeInt64ForKey_(coder, v5, @"MPSTriangleAccelerationStructureKeyTriangleCount");
    v9 = objc_msgSend_polygonBuffer(MPSPolygonBuffer, v7, v8);
    objc_msgSend_setPolygonCount_(v9, v10, v6);
    v55[0] = v9;
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v55, 1);
  }

  else
  {
    v14 = MEMORY[0x277CBEB98];
    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v54[2] = objc_opt_class();
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v54, 3);
    v18 = objc_msgSend_setWithArray_(v14, v17, v16);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v19, v18, @"MPSTriangleAccelerationStructureKeyPolygonBuffers");
  }

  self->_polygonBuffers = v12;
  self->_vertexStride = objc_msgSend_decodeInt64ForKey_(coder, v13, @"MPSTriangleAccelerationStructureKeyVertexStride");
  self->_indexType = objc_msgSend_decodeInt64ForKey_(coder, v20, @"MPSTriangleAccelerationStructureKeyIndexType");
  self->_polygonType = objc_msgSend_decodeInt64ForKey_(coder, v21, @"MPSPolygonAccelerationStructureKeyPolygonType");
  if (objc_msgSend_status(self, v22, v23) == 1)
  {
    if (self->_resourceEncoder)
    {
      v26 = objc_msgSend_group(self, v24, v25);
      v29 = objc_msgSend_bvhGroup(v26, v27, v28);
      v32 = objc_msgSend_commandBuffer(*(v29 + 24), v30, v31);
      v35 = objc_msgSend_group(self, v33, v34);
      v38 = *(objc_msgSend_bvhGroup(v35, v36, v37) + 80);
      v41 = objc_msgSend_count(self->_polygonBuffers, v39, v40);
      v44 = objc_msgSend_encodedLength(self->_resourceEncoder, v42, v43);
      self->_resourceBufferRange = sub_239E19178(v38, v44 * v41, v32);
      objc_msgSend_commit(v32, v45, v46);
      kdebug_trace();
      objc_msgSend_waitUntilCompleted(v32, v47, v48);
      kdebug_trace();
      objc_msgSend_encodedLength(self->_resourceEncoder, v49, v50);
    }

    v51 = objc_msgSend_group(self, v24, v25);
    if (*(*(objc_msgSend_bvhGroup(v51, v52, v53) + 32) + 40))
    {
      operator new();
    }

    operator new();
  }
}

- (MPSPolygonAccelerationStructure)initWithCoder:(id)coder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSPolygonAccelerationStructure;
  v5 = [(MPSAccelerationStructure *)&v11 initWithCoder:coder device:device];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_sharedInitPolygonAccelerationStructure(v5, v6, v7);
    objc_msgSend_decodePolygonAccelerationStructureWithCoder_(v8, v9, coder);
  }

  return v8;
}

- (MPSPolygonAccelerationStructure)initWithCoder:(id)coder group:(id)group
{
  v11.receiver = self;
  v11.super_class = MPSPolygonAccelerationStructure;
  v5 = [(MPSAccelerationStructure *)&v11 initWithCoder:coder group:group];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_sharedInitPolygonAccelerationStructure(v5, v6, v7);
    objc_msgSend_decodePolygonAccelerationStructureWithCoder_(v8, v9, coder);
  }

  return v8;
}

- (void)dealloc
{
  bvh = self->_bvh;
  if (bvh)
  {
    if (atomic_fetch_add(bvh + 2, 0xFFFFFFFF) == 1)
    {
      (*(*bvh + 8))(bvh);
    }

    self->_bvh = 0;
  }

  resourceBufferRange = self->_resourceBufferRange;
  if (resourceBufferRange)
  {
    sub_239E18C24(resourceBufferRange);
    self->_resourceBufferRange = 0;
  }

  v5.receiver = self;
  v5.super_class = MPSPolygonAccelerationStructure;
  [(MPSAccelerationStructure *)&v5 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = MPSPolygonAccelerationStructure;
  [(MPSAccelerationStructure *)&v11 encodeWithCoder:?];
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_polygonBuffers, @"MPSTriangleAccelerationStructureKeyPolygonBuffers");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_vertexStride, @"MPSTriangleAccelerationStructureKeyVertexStride");
  objc_msgSend_encodeInt64_forKey_(coder, v7, self->_indexType, @"MPSTriangleAccelerationStructureKeyIndexType");
  objc_msgSend_encodeInt64_forKey_(coder, v8, self->_polygonType, @"MPSPolygonAccelerationStructureKeyPolygonType");
  if (objc_msgSend_status(self, v9, v10) == 1)
  {
    operator new();
  }
}

- (id)description
{
  v52 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = self->_polygonBuffers;
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, a2, &v47, v51, 16);
  if (v43)
  {
    v4 = 0;
    v42 = *v48;
    v5 = &stru_284D088A0;
    do
    {
      v6 = 0;
      v7 = v4;
      do
      {
        v45 = v5;
        if (*v48 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v47 + 1) + 8 * v6);
        v44 = MEMORY[0x277CCACA8];
        v4 = v7 + 1;
        v9 = objc_msgSend_vertexBuffer(v8, v2, v3);
        v12 = objc_msgSend_vertexBufferOffset(v8, v10, v11);
        v15 = objc_msgSend_indexBuffer(v8, v13, v14);
        v18 = objc_msgSend_indexBufferOffset(v8, v16, v17);
        v21 = objc_msgSend_maskBuffer(v8, v19, v20);
        v24 = objc_msgSend_maskBufferOffset(v8, v22, v23);
        v27 = objc_msgSend_polygonCount(v8, v25, v26);
        v29 = objc_msgSend_stringWithFormat_(v44, v28, @"\n\t\tbuffer %llu:\n\t\t\tvertex buffer: %p\n\t\t\tvertex buffer offset: %llu\n\t\t\tindex buffer: %p\n\t\t\tindex buffer offset: %llu\n\t\t\tmask buffer: %p\n\t\t\tmask buffer offset: %llu\n\t\t\tpolygon count: %llu", v7, v9, v12, v15, v18, v21, v24, v27);
        v5 = objc_msgSend_stringByAppendingString_(v45, v30, v29);
        ++v6;
        ++v7;
      }

      while (v43 != v6);
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v2, &v47, v51, 16);
    }

    while (v43);
  }

  else
  {
    v5 = &stru_284D088A0;
  }

  v31 = MEMORY[0x277CCACA8];
  v46.receiver = self;
  v46.super_class = MPSPolygonAccelerationStructure;
  v32 = [(MPSAccelerationStructure *)&v46 description];
  indexType = self->_indexType;
  v35 = "Unknown";
  v36 = "MPSDataTypeUInt32";
  if (indexType != 32)
  {
    v36 = "Unknown";
  }

  if (indexType == 16)
  {
    v37 = "MPSDataTypeUInt16";
  }

  else
  {
    v37 = v36;
  }

  polygonType = self->_polygonType;
  if (polygonType == 1)
  {
    v35 = "MPSPolygonTypeQuadrilateral";
  }

  if (!polygonType)
  {
    v35 = "MPSPolygonTypeTriangle";
  }

  return objc_msgSend_stringWithFormat_(v31, v33, @"%@\n\tpolygon buffers:%@\n\tindex type: %s\n\tpolygon type: %s\n\tvertex stride: %llu", v32, v5, v37, v35, self->_vertexStride);
}

- (void)validate
{
  v65 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v62.receiver = self;
  v62.super_class = MPSPolygonAccelerationStructure;
  validate = [(MPSAccelerationStructure *)&v62 validate];
  if (self->_vertexStride)
  {
    vertexStride = self->_vertexStride;
  }

  else
  {
    vertexStride = 16;
  }

  indexType = self->_indexType;
  v8 = 4;
  if (indexType != 32)
  {
    v8 = 1;
  }

  if (indexType == 16)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  if ((vertexStride & 3) != 0)
  {
    validate = sub_239E2037C(vertexStride, v4);
  }

  if (vertexStride <= 0xB)
  {
    validate = sub_239E203CC(vertexStride, v4);
  }

  if (!self->_polygonBuffers)
  {
    sub_239E2041C(validate, v4);
  }

  objc_msgSend_count(self->_polygonBuffers, v4, v5);
  if (!objc_msgSend_count(self->_polygonBuffers, v10, v11))
  {
    sub_239E20458(0, v12);
  }

  if (!sub_239E17B90((*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v12, v13))
  {
    objc_msgSend_count(self->_polygonBuffers, v14, v15);
    v18 = objc_msgSend_count(self->_polygonBuffers, v16, v17);
    if (v18 != 1)
    {
      sub_239E20494(v18, v14);
    }
  }

  if (self->_polygonType)
  {
    v19 = 4;
  }

  else
  {
    v19 = 3;
  }

  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  polygonBuffers = self->_polygonBuffers;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(polygonBuffers, v14, &v58, v64, 16);
  if (v21)
  {
    v23 = v21;
    v24 = *v59;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v59 != v24)
        {
          objc_enumerationMutation(polygonBuffers);
        }

        objc_msgSend_validateWithVerticesPerPolygon_vertexStride_indexStride_(*(*(&v58 + 1) + 8 * i), v22, v19, vertexStride, v9);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(polygonBuffers, v22, &v58, v64, 16);
    }

    while (v23);
  }

  v26 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v22, 0);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v27 = self->_polygonBuffers;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v54, v63, 16);
  if (v29)
  {
    v32 = v29;
    v33 = *v55;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v55 != v33)
        {
          objc_enumerationMutation(v27);
        }

        v35 = *(*(&v54 + 1) + 8 * j);
        objc_msgSend_indexBuffer(v26, v30, v31);
        objc_msgSend_indexBuffer(v35, v36, v37);
        v40 = objc_msgSend_indexBuffer(v26, v38, v39) != 0;
        v43 = objc_msgSend_indexBuffer(v35, v41, v42);
        if (v40 != (v43 != 0))
        {
          sub_239E204D0(v43, v44);
        }

        objc_msgSend_maskBuffer(v26, v44, v45);
        objc_msgSend_maskBuffer(v35, v46, v47);
        v50 = objc_msgSend_maskBuffer(v26, v48, v49) != 0;
        v53 = objc_msgSend_maskBuffer(v35, v51, v52);
        if (v50 != (v53 != 0))
        {
          sub_239E2050C(v53, v30);
        }
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v54, v63, 16);
    }

    while (v32);
  }

  kdebug_trace();
}

- (void)rebuildWithCompletionHandler:(id)handler
{
  kdebug_trace();
  kdebug_trace();
  selfCopy = self;
  global_queue = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239DE4A84;
  block[3] = &unk_278B3B328;
  block[4] = self;
  block[5] = selfCopy;
  block[6] = handler;
  dispatch_async(global_queue, block);
}

- (void)rebuild
{
  v2.receiver = self;
  v2.super_class = MPSPolygonAccelerationStructure;
  [(MPSAccelerationStructure *)&v2 rebuild];
}

- (id)newResourceEncoder
{
  v4 = *MEMORY[0x277CD7350];
  if (!sub_239E17B90((*(&self->super.super.super.isa + v4))[2], a2, v2))
  {
    return 0;
  }

  v5 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
  for (i = 0; i != 3; ++i)
  {
    v12 = objc_msgSend_argumentDescriptor(MEMORY[0x277CD6C70], v8, v9);
    objc_msgSend_setDataType_(v12, v13, 60);
    objc_msgSend_setIndex_(v12, v14, i);
    objc_msgSend_setAccess_(v12, v15, 0);
    objc_msgSend_addObject_(v10, v16, v12);
  }

  v17 = objc_msgSend_argumentDescriptor(MEMORY[0x277CD6C70], v8, v9);
  objc_msgSend_setDataType_(v17, v18, 33);
  objc_msgSend_setIndex_(v17, v19, 3);
  objc_msgSend_addObject_(v10, v20, v17);
  v22 = objc_msgSend_newArgumentEncoderWithArguments_((*(&self->super.super.super.isa + v4))[2], v21, v10);
  objc_autoreleasePoolPop(v5);
  return v22;
}

- (void)encodeResourcesToBuffer:(id)buffer
{
  v53 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = self->_polygonBuffers;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, a2, &v48, v52, 16);
  if (v4)
  {
    v7 = v4;
    v8 = 0;
    v9 = 0;
    v46 = *v49;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v49 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v48 + 1) + 8 * i);
        resourceEncoder = self->_resourceEncoder;
        v13 = *(self->_resourceBufferRange + 4);
        v14 = objc_msgSend_encodedLength(resourceEncoder, v5, v6);
        objc_msgSend_setArgumentBuffer_offset_(resourceEncoder, v15, buffer, v13 + v14 * v9);
        v16 = self->_resourceEncoder;
        v19 = objc_msgSend_vertexBuffer(v11, v17, v18);
        v22 = objc_msgSend_vertexBufferOffset(v11, v20, v21);
        objc_msgSend_setBuffer_offset_atIndex_(v16, v23, v19, v22, 0);
        if (objc_msgSend_indexBuffer(v11, v24, v25))
        {
          v28 = self->_resourceEncoder;
          v29 = objc_msgSend_indexBuffer(v11, v26, v27);
          v32 = objc_msgSend_indexBufferOffset(v11, v30, v31);
          objc_msgSend_setBuffer_offset_atIndex_(v28, v33, v29, v32, 1);
        }

        if (objc_msgSend_maskBuffer(v11, v26, v27))
        {
          v36 = self->_resourceEncoder;
          v37 = objc_msgSend_maskBuffer(v11, v34, v35);
          v40 = objc_msgSend_maskBufferOffset(v11, v38, v39);
          objc_msgSend_setBuffer_offset_atIndex_(v36, v41, v37, v40, 2);
        }

        *objc_msgSend_constantDataAtIndex_(self->_resourceEncoder, v34, 3) = v9;
        *objc_msgSend_constantDataAtIndex_(self->_resourceEncoder, v42, 4) = v8;
        v8 += objc_msgSend_polygonCount(v11, v43, v44);
        ++v9;
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v48, v52, 16);
    }

    while (v7);
  }
}

- (void)bindResourcesWithEncoder:(id)encoder commandBuffer:(id)buffer retainedResources:(id)resources
{
  v176 = *MEMORY[0x277D85DE8];
  v173.receiver = self;
  v173.super_class = MPSPolygonAccelerationStructure;
  [MPSAccelerationStructure bindResourcesWithEncoder:sel_bindResourcesWithEncoder_commandBuffer_retainedResources_ commandBuffer:? retainedResources:?];
  v10 = objc_msgSend_group(self, v8, v9);
  v13 = objc_msgSend_bvhGroup(v10, v11, v12);
  v15 = objc_msgSend_objectAtIndexedSubscript_(*(*(v13 + 32) + 24), v14, 0);
  v18 = objc_msgSend_group(self, v16, v17);
  v21 = objc_msgSend_bvhGroup(v18, v19, v20);
  v23 = objc_msgSend_objectAtIndexedSubscript_(*(*(v21 + 32) + 24), v22, 1);
  v26 = objc_msgSend_group(self, v24, v25);
  v29 = objc_msgSend_bvhGroup(v26, v27, v28);
  v31 = objc_msgSend_objectAtIndexedSubscript_(*(*(v29 + 40) + 24), v30, 0);
  v34 = objc_msgSend_group(self, v32, v33);
  v37 = objc_msgSend_bvhGroup(v34, v35, v36);
  v39 = objc_msgSend_objectAtIndexedSubscript_(*(*(v37 + 48) + 24), v38, 0);
  v42 = objc_msgSend_group(self, v40, v41);
  v45 = objc_msgSend_bvhGroup(v42, v43, v44);
  v47 = objc_msgSend_objectAtIndexedSubscript_(*(*(v45 + 56) + 24), v46, 0);
  v50 = objc_msgSend_group(self, v48, v49);
  v53 = objc_msgSend_bvhGroup(v50, v51, v52);
  v55 = objc_msgSend_objectAtIndexedSubscript_(*(*(v53 + 64) + 24), v54, 0);
  v58 = objc_msgSend_group(self, v56, v57);
  v61 = objc_msgSend_bvhGroup(v58, v59, v60);
  v63 = objc_msgSend_objectAtIndexedSubscript_(*(*(v61 + 72) + 24), v62, 0);
  v157 = v15;
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v64, v15, 0, 14);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v65, v23, 0, 30);
  v67 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v66, 0);
  v70 = objc_msgSend_vertexBuffer(v67, v68, v69);
  v72 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v71, 0);
  v75 = objc_msgSend_vertexBufferOffset(v72, v73, v74);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v76, v70, v75, 8);
  v78 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v77, 0);
  v81 = objc_msgSend_indexBuffer(v78, v79, v80);
  v83 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v82, 0);
  v86 = objc_msgSend_indexBufferOffset(v83, v84, v85);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v87, v81, v86, 9);
  v89 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v88, 0);
  v92 = objc_msgSend_maskBuffer(v89, v90, v91);
  v94 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v93, 0);
  v97 = objc_msgSend_maskBufferOffset(v94, v95, v96);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v98, v92, v97, 10);
  v161 = v31;
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v99, v31, 0, 12);
  v160 = v39;
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v100, v39, 0, 13);
  v159 = v47;
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v101, v47, 0, 15);
  v158 = v55;
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v102, v55, *(*(self->_bvh + 6) + 32), 16);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v103, v63, 0, 17);
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  polygonBuffers = self->_polygonBuffers;
  v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(polygonBuffers, v105, &v169, v175, 16);
  if (v106)
  {
    v109 = v106;
    v110 = *v170;
    do
    {
      for (i = 0; i != v109; ++i)
      {
        if (*v170 != v110)
        {
          objc_enumerationMutation(polygonBuffers);
        }

        v112 = *(*(&v169 + 1) + 8 * i);
        v113 = objc_msgSend_vertexBuffer(v112, v107, v108);
        objc_msgSend_useResource_usage_(encoder, v114, v113, 1);
        if (objc_msgSend_indexBuffer(v112, v115, v116))
        {
          v119 = objc_msgSend_indexBuffer(v112, v117, v118);
          objc_msgSend_useResource_usage_(encoder, v120, v119, 1);
        }

        if (objc_msgSend_maskBuffer(v112, v117, v118))
        {
          v121 = objc_msgSend_maskBuffer(v112, v107, v108);
          objc_msgSend_useResource_usage_(encoder, v122, v121, 1);
        }
      }

      v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(polygonBuffers, v107, &v169, v175, 16);
    }

    while (v109);
  }

  bvh = self->_bvh;
  v124 = *(bvh[3] + 32);
  v125 = sub_239DE30C0(bvh, v107);
  v126 = *(*(self->_bvh + 4) + 32) >> 4;
  v168[0] = v124 / v125;
  v168[1] = v126;
  objc_msgSend_setBytes_length_atIndex_(encoder, v127, v168, 12, 27);
  if ((objc_msgSend_retainedReferences(buffer, v128, v129) & 1) == 0)
  {
    objc_msgSend_addObject_(resources, v130, v157);
    objc_msgSend_addObject_(resources, v131, v23);
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v132 = self->_polygonBuffers;
    v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v133, &v164, v174, 16);
    if (v134)
    {
      v137 = v134;
      v138 = *v165;
      do
      {
        for (j = 0; j != v137; ++j)
        {
          if (*v165 != v138)
          {
            objc_enumerationMutation(v132);
          }

          v140 = *(*(&v164 + 1) + 8 * j);
          v141 = objc_msgSend_vertexBuffer(v140, v135, v136);
          objc_msgSend_addObject_(resources, v142, v141);
          if (objc_msgSend_indexBuffer(v140, v143, v144))
          {
            v147 = objc_msgSend_indexBuffer(v140, v145, v146);
            objc_msgSend_addObject_(resources, v148, v147);
          }

          if (objc_msgSend_maskBuffer(v140, v145, v146))
          {
            v149 = objc_msgSend_maskBuffer(v140, v135, v136);
            objc_msgSend_addObject_(resources, v150, v149);
          }
        }

        v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(v132, v135, &v164, v174, 16);
      }

      while (v137);
    }

    objc_msgSend_addObject_(resources, v135, v161);
    objc_msgSend_addObject_(resources, v151, v160);
    objc_msgSend_addObject_(resources, v152, v159);
    objc_msgSend_addObject_(resources, v153, v158);
    objc_msgSend_addObject_(resources, v154, v63);
  }

  v155 = self->_bvh;
  atomic_fetch_add(v155 + 2, 1u);
  resourceBufferRange = self->_resourceBufferRange;
  if (resourceBufferRange)
  {
    sub_239E18C14(resourceBufferRange);
  }

  v163[0] = MEMORY[0x277D85DD0];
  v163[1] = 3221225472;
  v163[2] = sub_239DE63AC;
  v163[3] = &unk_278B3B348;
  v163[4] = v155;
  v163[5] = resourceBufferRange;
  objc_msgSend_addCompletedHandler_(buffer, v130, v163);
}

- (id)copyPolygonAccelerationStructureWithZone:(_NSZone *)zone device:(id)device group:(id)group
{
  if (group)
  {
    groupCopy = group;
    v39.receiver = self;
    v39.super_class = MPSPolygonAccelerationStructure;
    v7 = [(MPSAccelerationStructure *)&v39 copyWithZone:zone group:group];
    objc_msgSend_sharedInitPolygonAccelerationStructure(v7, v8, v9);
  }

  else
  {
    v38.receiver = self;
    v38.super_class = MPSPolygonAccelerationStructure;
    v7 = [(MPSAccelerationStructure *)&v38 copyWithZone:zone device:device];
    groupCopy = objc_msgSend_group(v7, v10, v11);
    objc_msgSend_sharedInitPolygonAccelerationStructure(v7, v12, v13);
  }

  v14 = objc_alloc(MEMORY[0x277CBEA60]);
  v7[1].super._device = objc_msgSend_initWithArray_copyItems_(v14, v15, self->_polygonBuffers, 1);
  v7[1].super._labelHash = self->_vertexStride;
  LODWORD(v7[1].super.super.isa) = self->_indexType;
  v7[1].super._options = self->_polygonType;
  if (objc_msgSend_status(self, v16, v17) == 1)
  {
    if (v7[1].super._library)
    {
      v20 = objc_msgSend_bvhGroup(groupCopy, v18, v19);
      v23 = objc_msgSend_commandBuffer(*(v20 + 24), v21, v22);
      v26 = *(objc_msgSend_bvhGroup(groupCopy, v24, v25) + 80);
      v29 = objc_msgSend_count(v7[1].super._device, v27, v28);
      v32 = objc_msgSend_encodedLength(v7[1].super._library, v30, v31);
      v7[1].super._label = sub_239E19178(v26, v32 * v29, v23);
      objc_msgSend_commit(v23, v33, v34);
      objc_msgSend_encodedLength(v7[1].super._library, v35, v36);
    }

    operator new();
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone group:(id)group
{
  objc_msgSend_device(group, a2, zone);

  return MEMORY[0x2821F9670](self, sel_copyPolygonAccelerationStructureWithZone_device_group_, zone);
}

- (void)encodeRefitToCommandBuffer:(id)buffer
{
  v240 = *MEMORY[0x277D85DE8];
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_validate(self, a2, buffer);
    objc_msgSend_status(self, v5, v6);
    if (objc_msgSend_status(self, v7, v8) != 1)
    {
      sub_239E2064C(self, v9);
    }

    objc_msgSend_usage(self, v9, v10);
    if ((objc_msgSend_usage(self, v11, v12) & 1) == 0)
    {
      sub_239E20698(self, a2);
    }
  }

  if (self->_vertexStride)
  {
    vertexStride = self->_vertexStride;
  }

  else
  {
    vertexStride = 16;
  }

  v14 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, a2, 0);
  if (objc_msgSend_indexBuffer(v14, v15, v16))
  {
    if (self->_indexType == 16)
    {
      v19 = 128;
    }

    else
    {
      v19 = 256;
    }
  }

  else
  {
    v19 = 0;
  }

  if (objc_msgSend_retainedReferences(buffer, v17, v18))
  {
    v22 = 0;
  }

  else
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  if (objc_msgSend_useResourceBuffer(self, v20, v21))
  {
    v25 = objc_msgSend_device(buffer, v23, v24);
    v28 = objc_msgSend_group(self, v26, v27);
    v31 = *(*(objc_msgSend_bvhGroup(v28, v29, v30) + 80) + 48);
    v32 = *MEMORY[0x277CD7350];
    v33 = (*(**(&self->super.super.super.isa + v32) + 24))(*(&self->super.super.super.isa + v32));
    v35 = objc_msgSend_newBufferWithLength_options_(v25, v34, v31, 16 * v33);
    objc_msgSend_encodeResourcesToBuffer_(self, v36, v35);
    v37 = 0x80000000000;
  }

  else
  {
    v37 = 0;
    v35 = 0;
    v32 = *MEMORY[0x277CD7350];
  }

  bvh = self->_bvh;
  v40 = bvh[21];
  v39 = bvh[22];
  v41 = (0x1000000000 - (__clz(v40) << 36)) & 0x1000000000;
  if (v40)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v43 = (*(&self->super.super.super.isa + v32))[2];
  v44 = *MEMORY[0x277CD7370];
  v45 = *(&self->super.super.super.isa + v44);
  v46 = (v37 | v19 | ((v39 == 1) << 38) | ((self->_polygonType & 1) << 39) | v42) ^ 0x1000000000;
  *&v228[0] = v46 | 1;
  *(&v228[0] + 1) = 0;
  memset(&v228[1] + 4, 0, 20);
  LODWORD(v228[1]) = vertexStride;
  v216 = sub_239DE7190(@"refitPolygonLeafNodeKernel", v43, v45, v228, sub_239DF72B4);
  v47 = (*(&self->super.super.super.isa + v32))[2];
  v48 = *(&self->super.super.super.isa + v44);
  *&v228[0] = v46 | 3;
  *(&v228[0] + 1) = 0;
  memset(&v228[1] + 4, 0, 20);
  LODWORD(v228[1]) = vertexStride;
  v215 = sub_239DE7190(@"refitInnerNodeKernel", v47, v48, v228, sub_239DF72B4);
  bufferCopy = buffer;
  v51 = objc_msgSend_computeCommandEncoder(buffer, v49, v50);
  v54 = objc_msgSend_group(self, v52, v53);
  v57 = objc_msgSend_bvhGroup(v54, v55, v56);
  v59 = objc_msgSend_objectAtIndexedSubscript_(*(*(v57 + 40) + 24), v58, 0);
  v62 = objc_msgSend_bvhGroup(v54, v60, v61);
  v64 = objc_msgSend_objectAtIndexedSubscript_(*(*(v62 + 48) + 24), v63, 0);
  v67 = objc_msgSend_bvhGroup(v54, v65, v66);
  v69 = objc_msgSend_objectAtIndexedSubscript_(*(*(v67 + 32) + 24), v68, 0);
  v72 = objc_msgSend_bvhGroup(v54, v70, v71);
  v74 = objc_msgSend_objectAtIndexedSubscript_(*(*(v72 + 32) + 24), v73, 1);
  v208 = v59;
  objc_msgSend_setBuffer_offset_atIndex_(v51, v75, v59, 0, 2);
  v206 = v69;
  objc_msgSend_setBuffer_offset_atIndex_(v51, v76, v69, 0, 3);
  v205 = v74;
  objc_msgSend_setBuffer_offset_atIndex_(v51, v77, v74, 0, 11);
  v79 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v78, 0);
  v82 = objc_msgSend_indexBuffer(v79, v80, v81);
  v84 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v83, 0);
  v87 = objc_msgSend_indexBufferOffset(v84, v85, v86);
  objc_msgSend_setBuffer_offset_atIndex_(v51, v88, v82, v87, 4);
  v90 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v89, 0);
  v93 = objc_msgSend_vertexBuffer(v90, v91, v92);
  v95 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v94, 0);
  v98 = objc_msgSend_vertexBufferOffset(v95, v96, v97);
  objc_msgSend_setBuffer_offset_atIndex_(v51, v99, v93, v98, 5);
  v207 = v64;
  objc_msgSend_setBuffer_offset_atIndex_(v51, v100, v64, 0, 6);
  v209 = v35;
  objc_msgSend_setBuffer_offset_atIndex_(v51, v101, v35, 0, 12);
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  polygonBuffers = self->_polygonBuffers;
  v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(polygonBuffers, v103, &v234, v239, 16);
  if (v104)
  {
    v107 = v104;
    v108 = *v235;
    do
    {
      for (i = 0; i != v107; ++i)
      {
        if (*v235 != v108)
        {
          objc_enumerationMutation(polygonBuffers);
        }

        v110 = *(*(&v234 + 1) + 8 * i);
        v111 = objc_msgSend_vertexBuffer(v110, v105, v106);
        objc_msgSend_useResource_usage_(v51, v112, v111, 1);
        if (objc_msgSend_indexBuffer(v110, v113, v114))
        {
          v115 = objc_msgSend_indexBuffer(v110, v105, v106);
          objc_msgSend_useResource_usage_(v51, v116, v115, 1);
        }
      }

      v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(polygonBuffers, v105, &v234, v239, 16);
    }

    while (v107);
  }

  v117 = self->_bvh;
  v118 = v117[3];
  v233 = *(v117[4] + 32) >> 4;
  v119 = *(v118 + 32);
  v232 = v119 / sub_239DE30C0(v117, v105);
  objc_msgSend_setBytes_length_atIndex_(v51, v120, &v233, 4, 9);
  objc_msgSend_setBytes_length_atIndex_(v51, v121, &v232, 4, 10);
  v231 = *(self->_bvh + 9);
  objc_msgSend_setBytes_length_atIndex_(v51, v122, &v231, 4, 0);
  v124 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v32))[2], v123, 4 * v231, 32);
  v126 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v32))[2], v125, 4 * v231, 32);
  v128 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v32))[2], v127, 4, 32);
  selfCopy = self;
  v131 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v32))[2], v129, 4, 32);
  v214 = objc_msgSend_newBufferWithLength_options_((*(&selfCopy->super.super.super.isa + v32))[2], v132, 12, 32);
  objc_msgSend_setBuffer_offset_atIndex_(v51, v133, v131, 0, 13);
  objc_msgSend_setBuffer_offset_atIndex_(v51, v134, v126, 0, 14);
  objc_msgSend_encodeClearWithEncoder_buffer_bufferOffset_value_(selfCopy, v135, v51, v131, 0, 0);
  objc_msgSend_setComputePipelineState_(v51, v136, v216);
  v139 = objc_msgSend_threadExecutionWidth(v216, v137, v138);
  v212 = (v139 + *(selfCopy->_bvh + 9) - 1) / v139;
  v213 = v139;
  *&v228[0] = v212;
  *(v228 + 8) = vdupq_n_s64(1uLL);
  *v230 = v139;
  *&v230[8] = *(v228 + 8);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v51, v140, v228, v230);
  v229 = 0;
  memset(v228, 0, sizeof(v228));
  objc_msgSend_getBVHOptions(selfCopy, v141, v142);
  v217 = selfCopy;
  v144 = sub_239DFA24C((*(&selfCopy->super.super.super.isa + v32))[2], v143);
  if (LODWORD(v228[2]))
  {
    v146 = v144;
    v147 = 0;
    v211 = vdupq_n_s64(1uLL);
    do
    {
      v148 = v126;
      v149 = v131;
      objc_msgSend_encodeClearWithEncoder_buffer_bufferOffset_value_(v217, v145, v51, v128, 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v51, v150, v128, 0, 13);
      objc_msgSend_setBuffer_offset_atIndex_(v51, v151, v124, 0, 14);
      objc_msgSend_setBuffer_offset_atIndex_(v51, v152, v131, 0, 15);
      objc_msgSend_setBuffer_offset_atIndex_(v51, v153, v126, 0, 16);
      if (v146)
      {
        objc_msgSend_encodeIndirectDispatchWithEncoder_pipeline_threadCountBuffer_threadCountBufferOffset_indirectDispatchBuffer_indirectDispatchBufferOffset_(v217, v154, v51, v215, v131, 0, v214, 0);
      }

      else
      {
        objc_msgSend_setComputePipelineState_(v51, v154, v215);
        *v230 = v212;
        *&v230[8] = v211;
        v226 = v213;
        v227 = v211;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v51, v155, v230, &v226);
      }

      ++v147;
      v126 = v124;
      v131 = v128;
      v128 = v149;
      v124 = v148;
    }

    while (v147 < LODWORD(v228[2]));
  }

  else
  {
    v148 = v124;
    v149 = v128;
  }

  v156 = v217;
  objc_msgSend_setBuffer_offset_atIndex_(v51, v145, *(v217->_bvh + 12), 0, 0);
  v159 = objc_msgSend_boundingBoxCopyPipeline(v217, v157, v158);
  objc_msgSend_setComputePipelineState_(v51, v160, v159);
  v225 = *(v217->_bvh + 21);
  objc_msgSend_setBytes_length_atIndex_(v51, v161, &v225, 4, 30);
  v224 = *(v217->_bvh + 22) == 1;
  objc_msgSend_setBytes_length_atIndex_(v51, v162, &v224, 1, 29);
  v165 = objc_msgSend_boundingBoxCopyPipeline(v217, v163, v164);
  v168 = objc_msgSend_threadExecutionWidth(v165, v166, v167);
  *v230 = vdupq_n_s64(1uLL);
  *&v230[16] = 1;
  v226 = v168;
  v227 = *v230;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v51, v169, v230, &v226);
  objc_msgSend_endEncoding(v51, v170, v171);
  v173 = &off_239E26000;
  if (v22)
  {
    objc_msgSend_addObject_(v22, v172, v208);
    objc_msgSend_addObject_(v22, v174, v207);
    objc_msgSend_addObject_(v22, v175, v206);
    objc_msgSend_addObject_(v22, v176, v205);
    if (v209)
    {
      objc_msgSend_addObject_(v22, v177, v209);
    }

    v223 = 0u;
    v221 = 0u;
    v222 = 0u;
    v220 = 0u;
    v178 = v217->_polygonBuffers;
    v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v177, &v220, v238, 16);
    if (v179)
    {
      v182 = v179;
      v183 = *v221;
      do
      {
        for (j = 0; j != v182; ++j)
        {
          if (*v221 != v183)
          {
            objc_enumerationMutation(v178);
          }

          v185 = *(*(&v220 + 1) + 8 * j);
          v186 = objc_msgSend_vertexBuffer(v185, v180, v181);
          objc_msgSend_addObject_(v22, v187, v186);
          if (objc_msgSend_indexBuffer(v185, v188, v189))
          {
            v190 = objc_msgSend_indexBuffer(v185, v180, v181);
            objc_msgSend_addObject_(v22, v191, v190);
          }
        }

        v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(v178, v180, &v220, v238, 16);
      }

      while (v182);
    }

    v156 = v217;
    objc_msgSend_addObject_(v22, v180, *(v217->_bvh + 12));
    v194 = objc_msgSend_boundingBoxCopyPipeline(v217, v192, v193);
    objc_msgSend_addObject_(v22, v195, v194);
    objc_msgSend_addObject_(v22, v196, v148);
    objc_msgSend_addObject_(v22, v197, v126);
    objc_msgSend_addObject_(v22, v198, v149);
    objc_msgSend_addObject_(v22, v199, v131);
    objc_msgSend_addObject_(v22, v200, v214);
    v219[0] = MEMORY[0x277D85DD0];
    v173 = &off_239E26000;
    v219[1] = 3221225472;
    v219[2] = sub_239DE7334;
    v219[3] = &unk_278B3B370;
    v219[4] = v22;
    objc_msgSend_addCompletedHandler_(bufferCopy, v201, v219);
  }

  v203 = v156->_bvh;
  atomic_fetch_add(v203 + 2, 1u);
  resourceBufferRange = v156->_resourceBufferRange;
  if (resourceBufferRange)
  {
    sub_239E18C14(resourceBufferRange);
  }

  v218[0] = MEMORY[0x277D85DD0];
  v218[1] = *(v173 + 403);
  v218[2] = sub_239DE733C;
  v218[3] = &unk_278B3B348;
  v218[4] = v203;
  v218[5] = resourceBufferRange;
  objc_msgSend_addCompletedHandler_(bufferCopy, v202, v218);
}

@end