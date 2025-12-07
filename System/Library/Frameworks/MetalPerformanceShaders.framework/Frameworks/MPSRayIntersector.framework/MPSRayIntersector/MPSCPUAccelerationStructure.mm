@interface MPSCPUAccelerationStructure
- (id).cxx_construct;
- (void)dealloc;
- (void)rebuildWithDescriptor:(id)descriptor;
- (void)rebuildWithDescriptor:(id)descriptor queue:(id)queue;
@end

@implementation MPSCPUAccelerationStructure

- (void)dealloc
{
  bvh = self->_bvh;
  if (bvh)
  {
    free((bvh & 0xFFFFFFFFFFFFFFC0));
    self->_bvh = 0;
  }

  v4.receiver = self;
  v4.super_class = MPSCPUAccelerationStructure;
  [(MPSCPUAccelerationStructure *)&v4 dealloc];
}

- (void)rebuildWithDescriptor:(id)descriptor
{
  v5 = sub_239E05F90();
  objc_msgSend_rebuildWithDescriptor_queue_(self, v6, descriptor, v5);

  dispatch_release(v5);
}

- (void)rebuildWithDescriptor:(id)descriptor queue:(id)queue
{
  v69 = *MEMORY[0x277D85DE8];
  self->_branchingFactor = 4;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  if (!objc_msgSend_isSubclassOfClass_(v7, v9, v8))
  {
    v63 = 3;
    v64 = 0x3727C5AC3F000000;
    v65 = xmmword_239E26D40;
    v66 = 0x1000000010;
    v67 = 4;
    v62 = &unk_284D08698;
    self->_instancing = 1;
    self->_identityTransforms = objc_msgSend_transformType(descriptor, v10, v11) == 1;
    v32 = objc_msgSend_transformData(descriptor, v30, v31);
    v35 = objc_msgSend_transformType(descriptor, v33, v34);
    v38 = objc_msgSend_instanceData(descriptor, v36, v37);
    v41 = objc_msgSend_instanceCount(descriptor, v39, v40);
    sub_239E0D774(&v62, v32, v35, v38, v41, queue, &self->_boundingBox);
  }

  *&self->_instancing = 0;
  v12 = 15 * LODWORD(self->_branchingFactor);
  v63 = 3;
  v64 = 0x3727C5AC3F000000;
  *&v65 = 0x10000001000;
  DWORD2(v65) = 1;
  HIDWORD(v65) = v12;
  v66 = 0x1000000010;
  v67 = 4;
  v61 = 0;
  v62 = &unk_284D08698;
  v59 = 0;
  v60 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  __p = 0;
  v48 = 0;
  v49 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = objc_msgSend_geometryDescriptors(descriptor, v10, v11);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v43, v68, 16);
  if (v17)
  {
    v18 = *v44;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v43 + 1) + 8 * i);
        v42 = objc_msgSend_vertexData(v20, v15, v16);
        sub_239DEDD74(&v59, &v42);
        LODWORD(v42) = objc_msgSend_vertexStride(v20, v21, v22);
        sub_239DEDE48(&v50, &v42);
        v42 = objc_msgSend_indexData(v20, v23, v24);
        sub_239DEDD74(&v56, &v42);
        if (objc_msgSend_indexDataType(v20, v25, v26) == 16)
        {
          v27 = 2;
        }

        else
        {
          v27 = 4;
        }

        LODWORD(v42) = v27;
        sub_239DEDE48(&__p, &v42);
        LODWORD(v42) = objc_msgSend_triangleCount(v20, v28, v29);
        sub_239DEDE48(&v53, &v42);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v43, v68, 16);
    }

    while (v17);
  }

  self->_bvh = sub_239E0CEC8(&v62, &v59, &v50, &v56, &__p, &v53, 0, queue, &self->_boundingBox);
  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }
}

- (id).cxx_construct
{
  v2.i64[0] = 0x7F0000007FLL;
  v2.i64[1] = 0x7F0000007FLL;
  *(self + 2) = vnegq_f32(v2);
  *(self + 3) = v2;
  return self;
}

@end