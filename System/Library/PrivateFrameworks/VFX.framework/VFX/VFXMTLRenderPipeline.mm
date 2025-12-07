@interface VFXMTLRenderPipeline
- (BOOL)matchesRenderPassDescriptor:(id)descriptor;
- (VFXMTLRenderPipeline)init;
- (id)description;
- (void)_computeUsageForBindings:(id)bindings function:(id)function;
- (void)dealloc;
@end

@implementation VFXMTLRenderPipeline

- (VFXMTLRenderPipeline)init
{
  v3.receiver = self;
  v3.super_class = VFXMTLRenderPipeline;
  result = [(VFXMTLRenderPipeline *)&v3 init];
  if (result)
  {
    result->_worldBuffer = -1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLRenderPipeline;
  [(VFXMTLRenderPipeline *)&v3 dealloc];
}

- (id)description
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_msgSend_appendFormat_(v4, v7, @"<%@: %p>", v6, self);
  objc_msgSend_appendFormat_(v4, v8, @"<state: %@>", self->_state);
  if (self->_frameBufferBindings)
  {
    objc_msgSend_appendString_(v4, v9, @"\n\tFrameBuffer bindings:\n");
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    frameBufferBindings = self->_frameBufferBindings;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(frameBufferBindings, v11, &v83, v91, 16);
    if (v12)
    {
      v13 = v12;
      v14 = *v84;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v84 != v14)
          {
            objc_enumerationMutation(frameBufferBindings);
          }

          v16 = *(*(&v83 + 1) + 8 * i);
          objc_msgSend_appendString_(v4, v9, @"\t\t");
          v19 = objc_msgSend_name(v16, v17, v18);
          objc_msgSend_appendString_(v4, v20, v19);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(frameBufferBindings, v9, &v83, v91, 16);
      }

      while (v13);
    }
  }

  if (self->_nodeBufferBindings)
  {
    objc_msgSend_appendString_(v4, v9, @"\n\tNode bindings:\n");
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    nodeBufferBindings = self->_nodeBufferBindings;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(nodeBufferBindings, v22, &v79, v90, 16);
    if (v23)
    {
      v24 = v23;
      v25 = *v80;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v80 != v25)
          {
            objc_enumerationMutation(nodeBufferBindings);
          }

          v27 = *(*(&v79 + 1) + 8 * j);
          objc_msgSend_appendString_(v4, v9, @"\t\t");
          v30 = objc_msgSend_name(v27, v28, v29);
          objc_msgSend_appendString_(v4, v31, v30);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(nodeBufferBindings, v9, &v79, v90, 16);
      }

      while (v24);
    }
  }

  if (self->_passBufferBindings)
  {
    objc_msgSend_appendString_(v4, v9, @"\n\tPass bindings:\n");
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    passBufferBindings = self->_passBufferBindings;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(passBufferBindings, v33, &v75, v89, 16);
    if (v34)
    {
      v35 = v34;
      v36 = *v76;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v76 != v36)
          {
            objc_enumerationMutation(passBufferBindings);
          }

          v38 = *(*(&v75 + 1) + 8 * k);
          objc_msgSend_appendString_(v4, v9, @"\t\t");
          v41 = objc_msgSend_name(v38, v39, v40);
          objc_msgSend_appendString_(v4, v42, v41);
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(passBufferBindings, v9, &v75, v89, 16);
      }

      while (v35);
    }
  }

  if (self->_shadableBufferBindings)
  {
    objc_msgSend_appendString_(v4, v9, @"\n\tShadable bindings:\n");
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    shadableBufferBindings = self->_shadableBufferBindings;
    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(shadableBufferBindings, v44, &v71, v88, 16);
    if (v45)
    {
      v46 = v45;
      v47 = *v72;
      do
      {
        for (m = 0; m != v46; ++m)
        {
          if (*v72 != v47)
          {
            objc_enumerationMutation(shadableBufferBindings);
          }

          v49 = *(*(&v71 + 1) + 8 * m);
          objc_msgSend_appendString_(v4, v9, @"\t\t");
          v52 = objc_msgSend_name(v49, v50, v51);
          objc_msgSend_appendString_(v4, v53, v52);
        }

        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(shadableBufferBindings, v9, &v71, v88, 16);
      }

      while (v46);
    }
  }

  if (self->_lightBufferBindings)
  {
    objc_msgSend_appendString_(v4, v9, @"\n\tLight bindings:\n");
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    lightBufferBindings = self->_lightBufferBindings;
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(lightBufferBindings, v55, &v67, v87, 16);
    if (v56)
    {
      v58 = v56;
      v59 = *v68;
      do
      {
        for (n = 0; n != v58; ++n)
        {
          if (*v68 != v59)
          {
            objc_enumerationMutation(lightBufferBindings);
          }

          v61 = *(*(&v67 + 1) + 8 * n);
          objc_msgSend_appendString_(v4, v57, @"\t\t");
          v64 = objc_msgSend_name(v61, v62, v63);
          objc_msgSend_appendString_(v4, v65, v64);
        }

        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(lightBufferBindings, v57, &v67, v87, 16);
      }

      while (v58);
    }
  }

  return v4;
}

- (BOOL)matchesRenderPassDescriptor:(id)descriptor
{
  v5 = 0;
  p_renderPassDesc = &self->_renderPassDesc;
  while (1)
  {
    v7 = objc_msgSend_colorAttachments(descriptor, a2, descriptor);
    v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, v5);
    v12 = objc_msgSend_texture(v9, v10, v11);
    v13 = p_renderPassDesc->colorFormat[v5];
    if (v13 != objc_msgSend_pixelFormat(v12, v14, v15))
    {
      break;
    }

    if (v12)
    {
      sampleCount = self->_renderPassDesc.sampleCount;
      if (objc_msgSend_sampleCount(v12, a2, descriptor) != sampleCount)
      {
        break;
      }
    }

    if (++v5 == 8)
    {
      v17 = objc_msgSend_depthAttachment(descriptor, a2, descriptor);
      v20 = objc_msgSend_texture(v17, v18, v19);
      depthFormat = self->_renderPassDesc.depthFormat;
      if (depthFormat == objc_msgSend_pixelFormat(v20, v22, v23))
      {
        if (!v20 || (v26 = self->_renderPassDesc.sampleCount, objc_msgSend_sampleCount(v20, v24, v25) == v26))
        {
          v27 = objc_msgSend_stencilAttachment(descriptor, v24, v25);
          v30 = objc_msgSend_texture(v27, v28, v29);
          stencilFormat = self->_renderPassDesc.stencilFormat;
          if (stencilFormat == objc_msgSend_pixelFormat(v30, v32, v33))
          {
            if (!v30)
            {
              return 1;
            }

            v36 = self->_renderPassDesc.sampleCount;
            if (objc_msgSend_sampleCount(v30, v34, v35) == v36)
            {
              return 1;
            }
          }
        }
      }

      return 0;
    }
  }

  return 0;
}

- (void)_computeUsageForBindings:(id)bindings function:(id)function
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_functionType(function, a2, bindings);
  v8 = sub_1AF1F1F6C(v6, v7);
  v10 = v8;
  if (v8 >= 2)
  {
    v11 = sub_1AF0D5194(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA72C(v11, v9, v12, v13, v14, v15, v16, v17);
    }
  }

  buffersUsageMask = self->_buffersUsageMask;
  self->_buffersUsageMask[v10] = 0;
  texturesUsageMask = self->_texturesUsageMask;
  self->_texturesUsageMask[v10] = 0;
  samplersUsageMask = self->_samplersUsageMask;
  self->_samplersUsageMask[v10] = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(bindings, v9, &v32, v36, 16);
  if (v21)
  {
    v24 = v21;
    v25 = *v33;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(bindings);
        }

        v27 = *(*(&v32 + 1) + 8 * i);
        v28 = objc_msgSend_type(v27, v22, v23);
        if (v28 > 2)
        {
          if ((v28 - 16) < 2)
          {
            continue;
          }

          if (v28 == 3)
          {
            samplersUsageMask[v10] |= 1 << objc_msgSend_index(v27, v22, v23);
            continue;
          }
        }

        else
        {
          switch(v28)
          {
            case 0:
              buffersUsageMask[v10] |= 1 << objc_msgSend_index(v27, v22, v23);
              continue;
            case 1:
              continue;
            case 2:
              texturesUsageMask[v10] |= 1 << objc_msgSend_index(v27, v22, v23);
              continue;
          }
        }

        v29 = sub_1AF0D5194(v28, v22);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDEA7A4(&v30, v31, v29);
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(bindings, v22, &v32, v36, 16);
    }

    while (v24);
  }
}

@end