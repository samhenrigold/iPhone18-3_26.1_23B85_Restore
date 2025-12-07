@interface MPSInstanceAccelerationStructure
- (BOOL)useResourceBuffer;
- (MPSInstanceAccelerationStructure)initWithCoder:(id)coder device:(id)device;
- (MPSInstanceAccelerationStructure)initWithCoder:(id)coder group:(id)group;
- (MPSInstanceAccelerationStructure)initWithDevice:(id)device;
- (MPSInstanceAccelerationStructure)initWithGroup:(id)group;
- (_MPSAxisAlignedBoundingBox)boundingBox;
- (id)copyInstanceAccelerationStructureWithZone:(_NSZone *)zone device:(id)device group:(id)group;
- (id)copyWithZone:(_NSZone *)zone group:(id)group;
- (id)description;
- (id)statistics;
- (void)bindResourcesWithEncoder:(id)encoder commandBuffer:(id)buffer retainedResources:(id)resources;
- (void)dealloc;
- (void)decodeInstanceAccelerationStructureWithCoder:(id)coder;
- (void)encodeInstanceOffsetsToBuffer:(id)buffer;
- (void)encodeRefitToCommandBuffer:(id)buffer;
- (void)encodeResourcesToBuffer:(id)buffer;
- (void)encodeWithCoder:(id)coder;
- (void)rebuild;
- (void)rebuildWithCompletionHandler:(id)handler;
- (void)setTransformType:(MPSTransformType)transformType;
- (void)validate;
@end

@implementation MPSInstanceAccelerationStructure

- (void)setTransformType:(MPSTransformType)transformType
{
  if (transformType >= 2)
  {
    sub_239E2217C(self, a2);
  }

  self->_transformType = transformType;
}

- (_MPSAxisAlignedBoundingBox)boundingBox
{
  v4 = self[4].min.i64[1];
  if (v4)
  {
    return objc_msgSend_contents(*(v4 + 96), a3, v3);
  }

  return self;
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

- (MPSInstanceAccelerationStructure)initWithDevice:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSInstanceAccelerationStructure;
  v3 = [(MPSAccelerationStructure *)&v8 initWithDevice:device];
  v6 = v3;
  if (v3)
  {
    objc_msgSend_sharedInitInstanceAccelerationStructure(v3, v4, v5);
  }

  return v6;
}

- (MPSInstanceAccelerationStructure)initWithGroup:(id)group
{
  v8.receiver = self;
  v8.super_class = MPSInstanceAccelerationStructure;
  v3 = [(MPSAccelerationStructure *)&v8 initWithGroup:group];
  v6 = v3;
  if (v3)
  {
    objc_msgSend_sharedInitInstanceAccelerationStructure(v3, v4, v5);
  }

  return v6;
}

- (void)decodeInstanceAccelerationStructureWithCoder:(id)coder
{
  self->_instanceCount = objc_msgSend_decodeInt64ForKey_(coder, a2, @"MPSInstanceAccelerationStructureKeyInstanceCount");
  self->_transformType = objc_msgSend_decodeInt64ForKey_(coder, v5, @"MPSInstanceAccelerationStructureKeyTransformType");
  if (objc_msgSend_status(self, v6, v7) == 1)
  {
    v10 = objc_msgSend_group(self, v8, v9);
    if (*(*(objc_msgSend_bvhGroup(v10, v11, v12) + 32) + 40))
    {
      operator new();
    }

    operator new();
  }
}

- (MPSInstanceAccelerationStructure)initWithCoder:(id)coder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSInstanceAccelerationStructure;
  v5 = [(MPSAccelerationStructure *)&v11 initWithCoder:coder device:device];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_sharedInitInstanceAccelerationStructure(v5, v6, v7);
    objc_msgSend_decodeInstanceAccelerationStructureWithCoder_(v8, v9, coder);
  }

  return v8;
}

- (MPSInstanceAccelerationStructure)initWithCoder:(id)coder group:(id)group
{
  v11.receiver = self;
  v11.super_class = MPSInstanceAccelerationStructure;
  v5 = [(MPSAccelerationStructure *)&v11 initWithCoder:coder group:group];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_sharedInitInstanceAccelerationStructure(v5, v6, v7);
    objc_msgSend_decodeInstanceAccelerationStructureWithCoder_(v8, v9, coder);
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

  v4.receiver = self;
  v4.super_class = MPSInstanceAccelerationStructure;
  [(MPSAccelerationStructure *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = MPSInstanceAccelerationStructure;
  [(MPSAccelerationStructure *)&v9 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_instanceCount, @"MPSInstanceAccelerationStructureKeyInstanceCount");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_transformType, @"MPSInstanceAccelerationStructureKeyTransformType");
  if (objc_msgSend_status(self, v7, v8) == 1)
  {
    operator new();
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = MPSInstanceAccelerationStructure;
  v4 = [(MPSAccelerationStructure *)&v14 description];
  accelerationStructures = self->_accelerationStructures;
  instanceBuffer = self->_instanceBuffer;
  instanceBufferOffset = self->_instanceBufferOffset;
  transformBuffer = self->_transformBuffer;
  transformBufferOffset = self->_transformBufferOffset;
  transformType = self->_transformType;
  v12 = "Unknown";
  if (transformType == 1)
  {
    v12 = "MPSTransformTypeIdentity";
  }

  if (transformType)
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tacceleration structures: %p\n\tinstance buffer: %p\n\tinstance buffer offset: %llu\n\ttransform buffer: %p\n\ttransform buffer offset: %llu\n\ttransform type: %s\n\tmask buffer: %p\n\tmask buffer offset: %llu\n\tinstance count: %llu", v4, accelerationStructures, instanceBuffer, instanceBufferOffset, transformBuffer, transformBufferOffset, v12, self->_maskBuffer, self->_maskBufferOffset, self->_instanceCount);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tacceleration structures: %p\n\tinstance buffer: %p\n\tinstance buffer offset: %llu\n\ttransform buffer: %p\n\ttransform buffer offset: %llu\n\ttransform type: %s\n\tmask buffer: %p\n\tmask buffer offset: %llu\n\tinstance count: %llu", v4, accelerationStructures, instanceBuffer, instanceBufferOffset, transformBuffer, transformBufferOffset, "MPSTransformTypeFloat4x4", self->_maskBuffer, self->_maskBufferOffset, self->_instanceCount);
  }
}

- (void)validate
{
  v200 = *MEMORY[0x277D85DE8];
  v3 = kdebug_trace();
  if (!self->_accelerationStructures)
  {
    v3 = sub_239E221CC(v3, v4);
  }

  if (!self->_instanceBuffer)
  {
    sub_239E2221C(v3, v4);
  }

  objc_msgSend_length(self->_instanceBuffer, v4, v5);
  instanceBufferOffset = self->_instanceBufferOffset;
  if (instanceBufferOffset >= objc_msgSend_length(self->_instanceBuffer, v7, v8))
  {
    sub_239E2226C(&self->_instanceBufferOffset, &self->_instanceBuffer);
  }

  objc_msgSend_length(self->_instanceBuffer, v9, v10);
  v13 = objc_msgSend_length(self->_instanceBuffer, v11, v12);
  if (v13 < self->_instanceBufferOffset + 4 * self->_instanceCount)
  {
    v13 = sub_239E222C4(&self->_instanceBuffer, &self->_instanceCount);
  }

  if ((self->_instanceBufferOffset & 3) != 0)
  {
    v13 = sub_239E22318(&self->_instanceBufferOffset, v14);
  }

  if (!self->_transformType)
  {
    if (!self->_transformBuffer)
    {
      sub_239E2236C(v13, v14);
    }

    objc_msgSend_length(self->_transformBuffer, v14, v15);
    transformBufferOffset = self->_transformBufferOffset;
    if (transformBufferOffset >= objc_msgSend_length(self->_transformBuffer, v17, v18))
    {
      sub_239E223BC(&self->_transformBufferOffset, &self->_transformBuffer);
    }

    objc_msgSend_length(self->_transformBuffer, v19, v20);
    if (objc_msgSend_length(self->_transformBuffer, v21, v22) < self->_transformBufferOffset + 8 * self->_instanceCount)
    {
      sub_239E22414(&self->_transformBuffer, &self->_instanceCount);
    }

    if ((self->_transformBufferOffset & 7) != 0)
    {
      sub_239E22474(&self->_transformBufferOffset, v14);
    }
  }

  maskBuffer = self->_maskBuffer;
  if (maskBuffer)
  {
    objc_msgSend_length(maskBuffer, v14, v15);
    if (objc_msgSend_length(self->_maskBuffer, v24, v25) < self->_maskBufferOffset + 4 * self->_instanceCount)
    {
      sub_239E224C8(&self->_maskBuffer, &self->_instanceCount);
    }

    objc_msgSend_length(self->_maskBuffer, v26, v27);
    maskBufferOffset = self->_maskBufferOffset;
    if (maskBufferOffset >= objc_msgSend_length(self->_maskBuffer, v29, v30))
    {
      sub_239E2251C(&self->_maskBufferOffset, &self->_maskBuffer);
    }

    if ((self->_maskBufferOffset & 3) != 0)
    {
      sub_239E22574(&self->_maskBufferOffset, v14);
    }
  }

  v31 = objc_msgSend_group(self, v14, v15);
  if (self->_instanceCount)
  {
    v34 = v31;
    objc_msgSend_count(self->_accelerationStructures, v32, v33);
    if (!objc_msgSend_count(self->_accelerationStructures, v35, v36))
    {
      sub_239E225C8(0, v37);
    }

    v38 = objc_msgSend_objectAtIndexedSubscript_(self->_accelerationStructures, v37, 0);
    objc_msgSend_validate(v38, v39, v40);
    v43 = objc_msgSend_polygonBuffers(v38, v41, v42);
    v45 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, 0);
    v189 = objc_msgSend_vertexBuffer(v45, v46, v47);
    v50 = objc_msgSend_polygonBuffers(v38, v48, v49);
    v52 = objc_msgSend_objectAtIndexedSubscript_(v50, v51, 0);
    v194 = objc_msgSend_indexBuffer(v52, v53, v54);
    v57 = objc_msgSend_polygonBuffers(v38, v55, v56);
    v59 = objc_msgSend_objectAtIndexedSubscript_(v57, v58, 0);
    v193 = objc_msgSend_maskBuffer(v59, v60, v61);
    v64 = objc_msgSend_vertexStride(v38, v62, v63);
    v67 = objc_msgSend_indexType(v38, v65, v66);
    v70 = objc_msgSend_nodeLayout(v38, v68, v69);
    v73 = objc_msgSend_branchingFactor(v38, v71, v72);
    v76 = objc_msgSend_polygonType(v38, v74, v75);
    v192 = sub_239E17B90((*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v77, v78);
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    obj = self->_accelerationStructures;
    v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v79, &v195, v199, 16);
    if (v80)
    {
      v83 = v80;
      v84 = *v196;
      do
      {
        v85 = 0;
        v190 = v83;
        do
        {
          if (*v196 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v86 = *(*(&v195 + 1) + 8 * v85);
          objc_msgSend_validate(v86, v81, v82);
          v89 = objc_msgSend_polygonBuffers(v86, v87, v88);
          v91 = objc_msgSend_objectAtIndexedSubscript_(v89, v90, 0);
          if (v192)
          {
            objc_msgSend_indexBuffer(v91, v92, v93);
            v96 = objc_msgSend_polygonBuffers(v86, v94, v95);
            v98 = objc_msgSend_objectAtIndexedSubscript_(v96, v97, 0);
            v101 = objc_msgSend_indexBuffer(v98, v99, v100);
            if ((v194 != 0) != (v101 != 0))
            {
              sub_239E226CC(v101, v102);
            }

            v104 = objc_msgSend_polygonBuffers(v86, v102, v103);
            v106 = objc_msgSend_objectAtIndexedSubscript_(v104, v105, 0);
            objc_msgSend_maskBuffer(v106, v107, v108);
            v111 = objc_msgSend_polygonBuffers(v86, v109, v110);
            v113 = objc_msgSend_objectAtIndexedSubscript_(v111, v112, 0);
            v116 = objc_msgSend_maskBuffer(v113, v114, v115);
            v83 = v190;
            if ((v193 != 0) != (v116 != 0))
            {
              sub_239E22708(v116, v117);
            }
          }

          else
          {
            objc_msgSend_vertexBuffer(v91, v92, v93);
            v121 = objc_msgSend_polygonBuffers(v86, v119, v120);
            v123 = objc_msgSend_objectAtIndexedSubscript_(v121, v122, 0);
            v126 = objc_msgSend_vertexBuffer(v123, v124, v125);
            if (v126 != v189)
            {
              sub_239E22618(v126, v127);
            }

            v129 = objc_msgSend_polygonBuffers(v86, v127, v128);
            v131 = objc_msgSend_objectAtIndexedSubscript_(v129, v130, 0);
            objc_msgSend_indexBuffer(v131, v132, v133);
            v136 = objc_msgSend_polygonBuffers(v86, v134, v135);
            v138 = objc_msgSend_objectAtIndexedSubscript_(v136, v137, 0);
            v141 = objc_msgSend_indexBuffer(v138, v139, v140);
            if (v141 != v194)
            {
              sub_239E22654(v141, v142);
            }

            v144 = objc_msgSend_polygonBuffers(v86, v142, v143);
            v146 = objc_msgSend_objectAtIndexedSubscript_(v144, v145, 0);
            objc_msgSend_maskBuffer(v146, v147, v148);
            v151 = objc_msgSend_polygonBuffers(v86, v149, v150);
            v153 = objc_msgSend_objectAtIndexedSubscript_(v151, v152, 0);
            v156 = objc_msgSend_maskBuffer(v153, v154, v155);
            if (v156 != v193)
            {
              sub_239E22690(v156, v117);
            }
          }

          objc_msgSend_vertexStride(v86, v117, v118);
          v159 = objc_msgSend_vertexStride(v86, v157, v158);
          if (v159 != v64)
          {
            sub_239E22744(v159, v160);
          }

          objc_msgSend_indexType(v86, v160, v161);
          v164 = objc_msgSend_indexType(v86, v162, v163);
          if (v164 != v67)
          {
            sub_239E22780(v164, v165);
          }

          objc_msgSend_group(v86, v165, v166);
          v169 = objc_msgSend_group(v86, v167, v168);
          if (v169 != v34)
          {
            sub_239E227BC(v169, v170);
          }

          objc_msgSend_status(v86, v170, v171);
          if (objc_msgSend_status(v86, v172, v173) != 1)
          {
            sub_239E227F8(v86, v174);
          }

          objc_msgSend_branchingFactor(v86, v174, v175);
          v178 = objc_msgSend_branchingFactor(v86, v176, v177);
          if (v178 != v73)
          {
            sub_239E22844(v178, v179);
          }

          objc_msgSend_nodeLayout(v86, v179, v180);
          v183 = objc_msgSend_nodeLayout(v86, v181, v182);
          if (v183 != v70)
          {
            sub_239E22880(v183, v184);
          }

          objc_msgSend_polygonType(v86, v184, v185);
          v188 = objc_msgSend_polygonType(v86, v186, v187);
          if (v188 != v76)
          {
            sub_239E228BC(v188, v81);
          }

          ++v85;
        }

        while (v83 != v85);
        v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v81, &v195, v199, 16);
      }

      while (v83);
    }
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
  block[2] = sub_239DF38B8;
  block[3] = &unk_278B3B328;
  block[4] = self;
  block[5] = selfCopy;
  block[6] = handler;
  dispatch_async(global_queue, block);
}

- (void)encodeInstanceOffsetsToBuffer:(id)buffer
{
  v90 = *MEMORY[0x277D85DE8];
  __src = 0;
  v87 = 0;
  v88 = 0;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = self->_accelerationStructures;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, a2, &v82, v89, 16);
  if (v5)
  {
    v77 = *v83;
    do
    {
      v6 = 0;
      v78 = v5;
      do
      {
        if (*v83 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v81 = v6;
        v7 = *(*(&v82 + 1) + 8 * v6);
        v8 = objc_msgSend_indexType(v7, v3, v4);
        v80 = sub_239DE2F08(v8);
        v11 = *(objc_msgSend_innerNodeBufferRange(v7, v9, v10) + 32);
        v14 = objc_msgSend_innerNodeStride(v7, v12, v13);
        v17 = *(objc_msgSend_leafNodeBufferRange(v7, v15, v16) + 32);
        v20 = *(objc_msgSend_primitiveIndexBufferRange(v7, v18, v19) + 32);
        v23 = *(objc_msgSend_pageTable0BufferRange(v7, v21, v22) + 32);
        v26 = *(objc_msgSend_pageTable1BufferRange(v7, v24, v25) + 32);
        v29 = *(objc_msgSend_pageBufferRange(v7, v27, v28) + 32);
        v32 = objc_msgSend_polygonBuffers(v7, v30, v31);
        v34 = objc_msgSend_objectAtIndexedSubscript_(v32, v33, 0);
        v79 = objc_msgSend_vertexBufferOffset(v34, v35, v36);
        v39 = objc_msgSend_polygonBuffers(v7, v37, v38);
        v41 = objc_msgSend_objectAtIndexedSubscript_(v39, v40, 0);
        v44 = objc_msgSend_indexBufferOffset(v41, v42, v43);
        v47 = objc_msgSend_polygonBuffers(v7, v45, v46);
        v49 = objc_msgSend_objectAtIndexedSubscript_(v47, v48, 0);
        v52 = objc_msgSend_maskBufferOffset(v49, v50, v51);
        v55 = objc_msgSend_rootNodeType(v7, v53, v54);
        v56 = v11 / v14;
        v57 = v17 >> 4;
        v58 = v20 >> 2;
        v59 = v23 >> 2;
        v60 = v26 >> 2;
        v61 = v29 >> 2;
        v62 = v52 >> 2;
        v63 = v87;
        v64 = v44 / v80;
        if (v87 >= v88)
        {
          v66 = __src;
          v67 = v87 - __src;
          v68 = 0xCCCCCCCCCCCCCCCDLL * ((v87 - __src) >> 3);
          v69 = v68 + 1;
          if (v68 + 1 > 0x666666666666666)
          {
            sub_239DEDF38();
          }

          if (0x999999999999999ALL * ((v88 - __src) >> 3) > v69)
          {
            v69 = 0x999999999999999ALL * ((v88 - __src) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v88 - __src) >> 3) >= 0x333333333333333)
          {
            v69 = 0x666666666666666;
          }

          if (v69)
          {
            sub_239DF5E8C(&__src, v69);
          }

          v70 = (8 * ((v87 - __src) >> 3));
          *v70 = v56;
          v70[1] = v57;
          v70[2] = v58;
          v70[3] = v79;
          v70[4] = v64;
          v70[5] = v62;
          v70[6] = v59;
          v70[7] = v60;
          v70[8] = v61;
          v70[9] = v55;
          v65 = 40 * v68 + 40;
          v71 = (40 * v68 - v67);
          memcpy(v71, v66, v67);
          v72 = __src;
          __src = v71;
          v87 = v65;
          v88 = 0;
          if (v72)
          {
            operator delete(v72);
          }
        }

        else
        {
          *v87 = v56;
          v63[1] = v57;
          v63[2] = v58;
          v63[3] = v79;
          v63[4] = v64;
          v63[5] = v62;
          v63[6] = v59;
          v63[7] = v60;
          v65 = (v63 + 10);
          v63[8] = v61;
          v63[9] = v55;
        }

        v87 = v65;
        v6 = v81 + 1;
      }

      while (v78 != v81 + 1);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v82, v89, 16);
    }

    while (v5);
    v73 = __src;
    if (v87 != __src)
    {
      v74 = objc_msgSend_contents(buffer, v3, v4);
      memcpy(v74, __src, v87 - __src);
      v73 = __src;
    }

    if (v73)
    {
      v87 = v73;
      operator delete(v73);
    }
  }
}

- (void)rebuild
{
  v2.receiver = self;
  v2.super_class = MPSInstanceAccelerationStructure;
  [(MPSAccelerationStructure *)&v2 rebuild];
}

- (void)encodeResourcesToBuffer:(id)buffer
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  accelerationStructures = self->_accelerationStructures;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(accelerationStructures, v7, &v15, v19, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(accelerationStructures);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ((objc_msgSend_containsObject_(v5, v9, v13) & 1) == 0)
        {
          objc_msgSend_encodeResourcesToBuffer_(v13, v9, buffer);
          objc_msgSend_addObject_(v5, v14, v13);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(accelerationStructures, v9, &v15, v19, 16);
    }

    while (v10);
  }
}

- (BOOL)useResourceBuffer
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_count(self->_accelerationStructures, a2, v2);
  if (v4)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(self->_accelerationStructures, v5, 0);
    v9 = objc_msgSend_polygonBuffers(v6, v7, v8);
    v11 = objc_msgSend_objectAtIndexedSubscript_(v9, v10, 0);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    accelerationStructures = self->_accelerationStructures;
    v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(accelerationStructures, v13, &v44, v48, 16);
    if (v4)
    {
      v16 = v4;
      v17 = *v45;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(accelerationStructures);
          }

          v19 = *(*(&v44 + 1) + 8 * i);
          v20 = objc_msgSend_polygonBuffers(v19, v14, v15);
          if (objc_msgSend_count(v20, v21, v22) <= 1)
          {
            v25 = objc_msgSend_polygonBuffers(v19, v23, v24);
            v27 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 0);
            v30 = objc_msgSend_vertexBuffer(v27, v28, v29);
            if (v30 == objc_msgSend_vertexBuffer(v11, v31, v32))
            {
              v35 = objc_msgSend_indexBuffer(v27, v33, v34);
              if (v35 == objc_msgSend_indexBuffer(v11, v36, v37))
              {
                v40 = objc_msgSend_maskBuffer(v27, v38, v39);
                if (v40 == objc_msgSend_maskBuffer(v11, v41, v42))
                {
                  continue;
                }
              }
            }
          }

          LOBYTE(v4) = 1;
          return v4;
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(accelerationStructures, v14, &v44, v48, 16);
        LOBYTE(v4) = 0;
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

  return v4;
}

- (void)bindResourcesWithEncoder:(id)encoder commandBuffer:(id)buffer retainedResources:(id)resources
{
  v127 = *MEMORY[0x277D85DE8];
  objc_msgSend_device(buffer, a2, encoder);
  MPSDevice = MPSDevice::GetMPSDevice();
  if (MPSDevice)
  {
    v10 = (*(*MPSDevice + 24))(MPSDevice);
    selfCopy = self;
    v126.receiver = self;
    v126.super_class = MPSInstanceAccelerationStructure;
    [(MPSAccelerationStructure *)&v126 bindResourcesWithEncoder:encoder commandBuffer:buffer retainedResources:resources];
    v13 = objc_msgSend_device(buffer, v11, v12);
    v16 = objc_msgSend_count(selfCopy->_accelerationStructures, v14, v15);
    v18 = 16 * v10;
    if (v16 <= 1)
    {
      v19 = objc_msgSend_newBufferWithLength_options_(v13, v17, 40, v18);
    }

    else
    {
      v19 = objc_msgSend_newBufferWithLength_options_(v13, v17, 40 * v16, v18);
    }

    v124 = v19;
    objc_msgSend_encodeInstanceOffsetsToBuffer_(selfCopy, v20, v19);
    v23 = objc_msgSend_group(selfCopy, v21, v22);
    v26 = objc_msgSend_bvhGroup(v23, v24, v25);
    v123 = objc_msgSend_objectAtIndexedSubscript_(*(*(v26 + 32) + 24), v27, 0);
    v30 = objc_msgSend_group(selfCopy, v28, v29);
    v33 = objc_msgSend_bvhGroup(v30, v31, v32);
    v35 = objc_msgSend_objectAtIndexedSubscript_(*(*(v33 + 32) + 24), v34, 1);
    v38 = objc_msgSend_group(selfCopy, v36, v37);
    v41 = objc_msgSend_bvhGroup(v38, v39, v40);
    v122 = objc_msgSend_objectAtIndexedSubscript_(*(*(v41 + 40) + 24), v42, 0);
    v45 = objc_msgSend_group(selfCopy, v43, v44);
    v48 = objc_msgSend_bvhGroup(v45, v46, v47);
    v121 = objc_msgSend_objectAtIndexedSubscript_(*(*(v48 + 48) + 24), v49, 0);
    v52 = objc_msgSend_group(selfCopy, v50, v51);
    v55 = objc_msgSend_bvhGroup(v52, v53, v54);
    v120 = objc_msgSend_objectAtIndexedSubscript_(*(*(v55 + 56) + 24), v56, 0);
    v59 = objc_msgSend_group(selfCopy, v57, v58);
    v62 = objc_msgSend_bvhGroup(v59, v60, v61);
    v119 = objc_msgSend_objectAtIndexedSubscript_(*(*(v62 + 64) + 24), v63, 0);
    v66 = objc_msgSend_group(selfCopy, v64, v65);
    v69 = objc_msgSend_bvhGroup(v66, v67, v68);
    v118 = objc_msgSend_objectAtIndexedSubscript_(*(*(v69 + 72) + 24), v70, 0);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v71, *(selfCopy->_bvh + 15), 0, 6);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v72, v124, 0, 7);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v73, selfCopy->_instanceBuffer, selfCopy->_instanceBufferOffset, 26);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v74, selfCopy->_maskBuffer, selfCopy->_maskBufferOffset, 11);
    if (objc_msgSend_count(selfCopy->_accelerationStructures, v75, v76))
    {
      v79 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_accelerationStructures, v77, 0);
      v82 = objc_msgSend_polygonBuffers(v79, v80, v81);
      v84 = objc_msgSend_objectAtIndexedSubscript_(v82, v83, 0);
      v87 = objc_msgSend_vertexBuffer(v84, v85, v86);
      v90 = objc_msgSend_polygonBuffers(v79, v88, v89);
      v92 = objc_msgSend_objectAtIndexedSubscript_(v90, v91, 0);
      v117 = objc_msgSend_indexBuffer(v92, v93, v94);
      v97 = objc_msgSend_polygonBuffers(v79, v95, v96);
      v99 = objc_msgSend_objectAtIndexedSubscript_(v97, v98, 0);
      v116 = objc_msgSend_maskBuffer(v99, v100, v101);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v102, v87, 0, 8, v87);
    }

    else
    {
      v104 = objc_msgSend_device(buffer, v77, v78);
      v116 = objc_msgSend_newBufferWithLength_options_(v104, v105, 16, 32);
      v117 = v116;
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v106, v116, 0, 8, v116);
    }

    objc_msgSend_setBuffer_offset_atIndex_(encoder, v103, v117, 0, 9);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v107, v116, 0, 10);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v108, v122, 0, 12);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v109, v121, 0, 13);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v110, v123, 0, 14);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v111, v35, 0, 30);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v112, v120, 0, 15);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v113, v119, 0, 16);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v114, v118, 0, 17);
    v115 = objc_alloc_init(MEMORY[0x277CBEB58]);
    operator new();
  }
}

- (id)copyInstanceAccelerationStructureWithZone:(_NSZone *)zone device:(id)device group:(id)group
{
  if (group)
  {
    v19.receiver = self;
    v19.super_class = MPSInstanceAccelerationStructure;
    v6 = [(MPSAccelerationStructure *)&v19 copyWithZone:zone group:group];
    objc_msgSend_sharedInitInstanceAccelerationStructure(v6, v7, v8);
  }

  else
  {
    v18.receiver = self;
    v18.super_class = MPSInstanceAccelerationStructure;
    v6 = [(MPSAccelerationStructure *)&v18 copyWithZone:zone device:device];
    objc_msgSend_group(v6, v11, v12);
    objc_msgSend_sharedInitInstanceAccelerationStructure(v6, v13, v14);
  }

  *&v6[1].super._tuningParams = objc_msgSend_instanceCount(self, v9, v10);
  v6[1].super.super.isa = self->_transformType;
  if (objc_msgSend_status(self, v15, v16) == 1)
  {
    operator new();
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone group:(id)group
{
  objc_msgSend_device(group, a2, zone);

  return MEMORY[0x2821F9670](self, sel_copyInstanceAccelerationStructureWithZone_device_group_, zone);
}

- (void)encodeRefitToCommandBuffer:(id)buffer
{
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_validate(self, a2, buffer);
    objc_msgSend_status(self, v5, v6);
    if (objc_msgSend_status(self, v7, v8) != 1)
    {
      sub_239E22A38(self, v9);
    }

    objc_msgSend_usage(self, v9, v10);
    if ((objc_msgSend_usage(self, v11, v12) & 1) == 0)
    {
      sub_239E22A84(self, v13);
    }
  }

  bvh = self->_bvh;
  v16 = bvh[21];
  v15 = bvh[22];
  v17 = (0x1000000000 - (__clz(v16) << 36)) & 0x1000000000;
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = (((self->_transformType & 3) << 19) | ((v15 == 1) << 38) | v18) ^ 0x1000000000;
  v20 = *MEMORY[0x277CD7350];
  v21 = (*(&self->super.super.super.isa + v20))[2];
  v22 = *MEMORY[0x277CD7370];
  v23 = *(&self->super.super.super.isa + v22);
  *&v152[0] = v19 | 2;
  memset(v152 + 8, 0, 32);
  v24 = sub_239DE7190(@"refitInstanceLeafNodeKernel", v21, v23, v152, sub_239DF72B4);
  v25 = (*(&self->super.super.super.isa + v20))[2];
  v26 = *(&self->super.super.super.isa + v22);
  *&v152[0] = v19 | 3;
  memset(v152 + 8, 0, 32);
  v145 = sub_239DE7190(@"refitInnerNodeKernel", v25, v26, v152, sub_239DF72B4);
  v139 = 0;
  if ((objc_msgSend_retainedReferences(buffer, v27, v28) & 1) == 0)
  {
    v139 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v31 = objc_msgSend_device(buffer, v29, v30);
  v34 = 40 * objc_msgSend_count(self->_accelerationStructures, v32, v33);
  v35 = (*(**(&self->super.super.super.isa + v20) + 24))(*(&self->super.super.super.isa + v20));
  v37 = objc_msgSend_newBufferWithLength_options_(v31, v36, v34, 16 * v35);
  objc_msgSend_encodeInstanceOffsetsToBuffer_(self, v38, v37);
  bufferCopy = buffer;
  v41 = objc_msgSend_computeCommandEncoder(buffer, v39, v40);
  v44 = objc_msgSend_group(self, v42, v43);
  v47 = objc_msgSend_bvhGroup(v44, v45, v46);
  v49 = objc_msgSend_objectAtIndexedSubscript_(*(*(v47 + 40) + 24), v48, 0);
  v52 = objc_msgSend_bvhGroup(v44, v50, v51);
  v54 = objc_msgSend_objectAtIndexedSubscript_(*(*(v52 + 48) + 24), v53, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v55, v49, 0, 2);
  v140 = v37;
  objc_msgSend_setBuffer_offset_atIndex_(v41, v56, v37, 0, 3);
  v137 = v49;
  objc_msgSend_setBuffer_offset_atIndex_(v41, v57, v49, 0, 4);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v58, self->_transformBuffer, self->_transformBufferOffset, 5);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v59, *(self->_bvh + 15), 0, 6);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v60, self->_instanceBuffer, self->_instanceBufferOffset, 7);
  v136 = v54;
  objc_msgSend_setBuffer_offset_atIndex_(v41, v61, v54, 0, 8);
  v62 = self->_bvh;
  v63 = v62[3];
  v157[0] = *(v62[4] + 32) >> 3;
  v64 = *(v63 + 32);
  v156 = v64 / sub_239DE30C0(v62, v65);
  objc_msgSend_setBytes_length_atIndex_(v41, v66, v157, 4, 9);
  objc_msgSend_setBytes_length_atIndex_(v41, v67, &v156, 4, 10);
  v155 = *(self->_bvh + 9);
  objc_msgSend_setBytes_length_atIndex_(v41, v68, &v155, 4, 0);
  v70 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v20))[2], v69, 4 * v155, 32);
  v72 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v20))[2], v71, 4 * v155, 32);
  v74 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v20))[2], v73, 4, 32);
  v76 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v20))[2], v75, 4, 32);
  v144 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v20))[2], v77, 12, 32);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v78, v76, 0, 13);
  objc_msgSend_setBuffer_offset_atIndex_(v41, v79, v72, 0, 14);
  objc_msgSend_encodeClearWithEncoder_buffer_bufferOffset_value_(self, v80, v41, v76, 0, 0);
  objc_msgSend_setComputePipelineState_(v41, v81, v24);
  v84 = objc_msgSend_threadExecutionWidth(v24, v82, v83);
  v142 = (v84 + *(self->_bvh + 9) - 1) / v84;
  v143 = v84;
  *&v152[0] = v142;
  *(v152 + 8) = vdupq_n_s64(1uLL);
  *v154 = v84;
  *&v154[8] = *(v152 + 8);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v41, v85, v152, v154);
  v153 = 0;
  memset(v152, 0, sizeof(v152));
  objc_msgSend_getBVHOptions(self, v86, v87);
  v89 = sub_239DFA24C((*(&self->super.super.super.isa + v20))[2], v88);
  if (LODWORD(v152[2]))
  {
    v91 = v89;
    v92 = 0;
    v141 = vdupq_n_s64(1uLL);
    do
    {
      v93 = v72;
      v94 = v76;
      objc_msgSend_encodeClearWithEncoder_buffer_bufferOffset_value_(self, v90, v41, v74, 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v41, v95, v74, 0, 13);
      objc_msgSend_setBuffer_offset_atIndex_(v41, v96, v70, 0, 14);
      objc_msgSend_setBuffer_offset_atIndex_(v41, v97, v76, 0, 15);
      objc_msgSend_setBuffer_offset_atIndex_(v41, v98, v72, 0, 16);
      if (v91)
      {
        objc_msgSend_encodeIndirectDispatchWithEncoder_pipeline_threadCountBuffer_threadCountBufferOffset_indirectDispatchBuffer_indirectDispatchBufferOffset_(self, v99, v41, v145, v76, 0, v144, 0);
      }

      else
      {
        objc_msgSend_setComputePipelineState_(v41, v99, v145);
        *v154 = v142;
        *&v154[8] = v141;
        v150 = v143;
        v151 = v141;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v41, v100, v154, &v150);
      }

      ++v92;
      v72 = v70;
      v76 = v74;
      v74 = v94;
      v70 = v93;
    }

    while (v92 < LODWORD(v152[2]));
  }

  else
  {
    v93 = v70;
    v94 = v74;
  }

  objc_msgSend_setBuffer_offset_atIndex_(v41, v90, *(self->_bvh + 12), 0, 0);
  v103 = objc_msgSend_boundingBoxCopyPipeline(self, v101, v102);
  objc_msgSend_setComputePipelineState_(v41, v104, v103);
  v149 = *(self->_bvh + 21);
  objc_msgSend_setBytes_length_atIndex_(v41, v105, &v149, 4, 30);
  v148 = *(self->_bvh + 22) == 1;
  objc_msgSend_setBytes_length_atIndex_(v41, v106, &v148, 1, 29);
  v109 = objc_msgSend_boundingBoxCopyPipeline(self, v107, v108);
  v112 = objc_msgSend_threadExecutionWidth(v109, v110, v111);
  *v154 = vdupq_n_s64(1uLL);
  *&v154[16] = 1;
  v150 = v112;
  v151 = *v154;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v41, v113, v154, &v150);
  objc_msgSend_endEncoding(v41, v114, v115);
  if (v139)
  {
    objc_msgSend_addObject_(v139, v116, v140);
    objc_msgSend_addObject_(v139, v117, v137);
    objc_msgSend_addObject_(v139, v118, v136);
    transformBuffer = self->_transformBuffer;
    if (transformBuffer)
    {
      objc_msgSend_addObject_(v139, v119, transformBuffer);
    }

    objc_msgSend_addObject_(v139, v119, self->_instanceBuffer);
    v122 = self->_bvh;
    v123 = v122[15];
    if (v123)
    {
      objc_msgSend_addObject_(v139, v121, v123);
      v122 = self->_bvh;
    }

    objc_msgSend_addObject_(v139, v121, v122[12]);
    v126 = objc_msgSend_boundingBoxCopyPipeline(self, v124, v125);
    objc_msgSend_addObject_(v139, v127, v126);
    objc_msgSend_addObject_(v139, v128, v93);
    objc_msgSend_addObject_(v139, v129, v72);
    objc_msgSend_addObject_(v139, v130, v94);
    objc_msgSend_addObject_(v139, v131, v76);
    objc_msgSend_addObject_(v139, v132, v144);
    v147[0] = MEMORY[0x277D85DD0];
    v147[1] = 3221225472;
    v147[2] = sub_239DF5D50;
    v147[3] = &unk_278B3B370;
    v147[4] = v139;
    objc_msgSend_addCompletedHandler_(bufferCopy, v133, v147);
  }

  v134 = self->_bvh;
  atomic_fetch_add(v134 + 2, 1u);
  v146[0] = MEMORY[0x277D85DD0];
  v146[1] = 3221225472;
  v146[2] = sub_239DF5D58;
  v146[3] = &unk_278B3BCE8;
  v146[4] = v134;
  objc_msgSend_addCompletedHandler_(bufferCopy, v135, v146);
}

@end