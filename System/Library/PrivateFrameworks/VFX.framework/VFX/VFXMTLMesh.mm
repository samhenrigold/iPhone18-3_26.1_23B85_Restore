@interface VFXMTLMesh
- (id)description;
- (void)buildTessellationVertexDescriptorIfNeeded;
- (void)dealloc;
@end

@implementation VFXMTLMesh

- (void)buildTessellationVertexDescriptorIfNeeded
{
  if (!self->_tessellationVertexDescriptor)
  {
    v19 = v4;
    v20 = v3;
    if (!self->_vertexDescriptor)
    {
      v6 = sub_1AF0D5194(self, a2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEA7E4(v6, a2, v2, v7, v8, v9, v10, v11);
      }
    }

    v12 = 0;
    self->_tessellationVertexDescriptor = objc_msgSend_copy(self->_vertexDescriptor, a2, v2, v19, v20);
    do
    {
      v15 = objc_msgSend_layouts(self->_tessellationVertexDescriptor, v13, v14);
      v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, v12);
      objc_msgSend_setStepFunction_(v17, v18, 4);
      ++v12;
    }

    while (v12 != 31);
    self->_tessellationVertexDescriptorHash = objc_msgSend_hash(self->_tessellationVertexDescriptor, v13, v14);
  }
}

- (id)description
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], a2, @"<VFXMTLMesh: %p\n", self);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  buffers = self->_buffers;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(buffers, v5, &v26, v31, 16);
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v27;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(buffers);
        }

        v9 = (v12 + 1);
        objc_msgSend_appendFormat_(v3, v7, @"\tbuffer[%d] : %@\n", v12, *(*(&v26 + 1) + 8 * v11++));
        v12 = v9;
      }

      while (v8 != v11);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(buffers, v7, &v26, v31, 16);
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  elements = self->_elements;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(elements, v7, &v22, v30, 16);
  if (v14)
  {
    v16 = v14;
    v17 = 0;
    v18 = *v23;
    do
    {
      v19 = 0;
      v20 = v17;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(elements);
        }

        v17 = (v20 + 1);
        objc_msgSend_appendFormat_(v3, v15, @"\telement[%d] : %@\n", v20, *(*(&v22 + 1) + 8 * v19++));
        v20 = v17;
      }

      while (v16 != v19);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(elements, v15, &v22, v30, 16);
    }

    while (v16);
  }

  objc_msgSend_appendString_(v3, v15, @">");
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLMesh;
  [(VFXMTLMesh *)&v3 dealloc];
}

@end