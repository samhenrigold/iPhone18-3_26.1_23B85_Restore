@interface VFXMTLShaderBindingsGenerator
+ (void)allocateRegistry;
+ (void)deallocateRegistry;
+ (void)registerArgument:(id)argument frequency:(int)frequency block:(id)block;
+ (void)registerArgument:(id)argument frequency:(int)frequency needsRenderResource:(BOOL)resource block:(id)block;
+ (void)registerSemantic:(id)semantic withBlock:(id)block;
+ (void)registerShadableArgumentBindingBlockForBuffers:(id)buffers textures:(id)textures samplers:(id)samplers;
+ (void)unregisterBindings;
- (VFXMTLShaderBindingsGenerator)init;
- (id)_dictionaryForFrequency:(int)frequency;
- (int64_t)_searchBindings:(id)bindings forArgumentNamed:(id)named type:(int64_t)type;
- (void)_checkForAssociatedSamplerOnBinding:(id)binding argument:(id)argument;
- (void)_parseBindings:(id)bindings function:(id)function renderPipeline:(id)pipeline isClientProgram:(BOOL)program customBindingsOut:(id *)out;
- (void)addResourceBindingsForArgument:(id)argument frequency:(int)frequency needsRenderResource:(BOOL)resource block:(id)block;
- (void)dealloc;
- (void)generateBindingsForPipeline:(id)pipeline withReflection:(id)reflection program:(__CFXProgram *)program materialIdentifier:(__CFString *)identifier overrides:(__CFXRenderingOverride *)overrides;
@end

@implementation VFXMTLShaderBindingsGenerator

+ (void)allocateRegistry
{
  if (qword_1ED73B048)
  {
    v2 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA85C(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = objc_alloc(MEMORY[0x1E695DF90]);
  qword_1ED73B048 = objc_msgSend_initWithCapacity_(v10, v11, 0);
  v12 = objc_alloc(MEMORY[0x1E695DF90]);
  qword_1ED73A420 = objc_msgSend_initWithCapacity_(v12, v13, 0);
}

+ (void)deallocateRegistry
{
  if (!qword_1ED73B048)
  {
    v2 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA8D4(v2, a2, v3, v4, v5, v6, v7, v8);
    }
  }

  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(qword_1ED73B048, a2, &unk_1F24E8C20);

  qword_1ED73B048 = 0;
  qword_1ED73A420 = 0;
}

+ (void)registerSemantic:(id)semantic withBlock:(id)block
{
  v6 = objc_msgSend_objectForKey_(qword_1ED73B048, a2, semantic);
  if (v6)
  {
    v8 = sub_1AF0D5194(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA94C(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = qword_1ED73B048;
  v17 = _Block_copy(block);
  objc_msgSend_setObject_forKey_(v16, v18, v17, semantic);
}

+ (void)registerArgument:(id)argument frequency:(int)frequency block:(id)block
{
  v6 = *&frequency;
  v8 = objc_msgSend_objectForKey_(qword_1ED73A420, a2, argument);
  if (v8)
  {
    v10 = sub_1AF0D5194(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA9C4(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = [VFXMTLArgumentBinder alloc];
  v20 = objc_msgSend_initWithBlock_frequency_needsRenderResource_(v18, v19, block, v6, 0);
  objc_msgSend_setObject_forKey_(qword_1ED73A420, v21, v20, argument);
}

+ (void)registerArgument:(id)argument frequency:(int)frequency needsRenderResource:(BOOL)resource block:(id)block
{
  resourceCopy = resource;
  v8 = *&frequency;
  v10 = objc_msgSend_objectForKey_(qword_1ED73A420, a2, argument);
  if (v10)
  {
    v12 = sub_1AF0D5194(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA9C4(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = [VFXMTLArgumentBinder alloc];
  v22 = objc_msgSend_initWithBlock_frequency_needsRenderResource_(v20, v21, block, v8, resourceCopy);
  objc_msgSend_setObject_forKey_(qword_1ED73A420, v23, v22, argument);
}

+ (void)registerShadableArgumentBindingBlockForBuffers:(id)buffers textures:(id)textures samplers:(id)samplers
{
  qword_1ED73A3F0[0] = _Block_copy(buffers);
  qword_1ED73A400 = _Block_copy(textures);
  qword_1ED73A408 = _Block_copy(samplers);
}

+ (void)unregisterBindings
{
  _Block_release(qword_1ED73A3E8);
  qword_1ED73A3E8 = 0;
  _Block_release(qword_1ED73A3F0[0]);
  qword_1ED73A3F0[0] = 0;
  _Block_release(qword_1ED73A400);
  qword_1ED73A400 = 0;
  _Block_release(qword_1ED73A408);
  qword_1ED73A408 = 0;
}

- (VFXMTLShaderBindingsGenerator)init
{
  v13.receiver = self;
  v13.super_class = VFXMTLShaderBindingsGenerator;
  v2 = [(VFXMTLShaderBindingsGenerator *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_generateLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc(MEMORY[0x1E695DF90]);
    v3->_nodeBindings = objc_msgSend_initWithCapacity_(v4, v5, 16);
    v6 = objc_alloc(MEMORY[0x1E695DF90]);
    v3->_frameBindings = objc_msgSend_initWithCapacity_(v6, v7, 16);
    v8 = objc_alloc(MEMORY[0x1E695DF90]);
    v3->_shadableBindings = objc_msgSend_initWithCapacity_(v8, v9, 16);
    v10 = objc_alloc(MEMORY[0x1E695DF90]);
    v3->_lightBindings = objc_msgSend_initWithCapacity_(v10, v11, 16);
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLShaderBindingsGenerator;
  [(VFXMTLShaderBindingsGenerator *)&v3 dealloc];
}

- (int64_t)_searchBindings:(id)bindings forArgumentNamed:(id)named type:(int64_t)type
{
  v31 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(bindings, a2, &v22, v30, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v23;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(bindings);
      }

      v14 = *(*(&v22 + 1) + 8 * v13);
      v15 = objc_msgSend_name(v14, v9, v10);
      if (objc_msgSend_isEqualToString_(v15, v16, named))
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(bindings, v9, &v22, v30, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    v17 = objc_msgSend_type(v14, v9, v10);
    if (v17 == type)
    {
      return objc_msgSend_index(v14, v18, v19);
    }

    v21 = sub_1AF0D5194(v17, v18);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      namedCopy = named;
      v28 = 1024;
      typeCopy = type;
      _os_log_impl(&dword_1AF0CE000, v21, OS_LOG_TYPE_DEFAULT, "Warning: arguments named %@ is reserved for type %d", buf, 0x12u);
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_parseBindings:(id)bindings function:(id)function renderPipeline:(id)pipeline isClientProgram:(BOOL)program customBindingsOut:(id *)out
{
  programCopy = program;
  v112 = *MEMORY[0x1E69E9840];
  if (!function)
  {
    v9 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEAA3C(v9, a2, bindings, v10, v11, v12, v13, v14);
    }
  }

  v15 = objc_msgSend_functionType(function, a2, bindings);
  v89 = sub_1AF1F1F6C(v15, v16);
  self->_current.stage = v89;
  self->_current.bindings = bindings;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(bindings, v17, &v104, v111, 16);
  if (v20)
  {
    v95 = *v105;
    do
    {
      v21 = 0;
      do
      {
        if (*v105 != v95)
        {
          objc_enumerationMutation(bindings);
        }

        v22 = *(*(&v104 + 1) + 8 * v21);
        if ((objc_msgSend_isUsed(v22, v18, v19) | programCopy) == 1)
        {
          v23 = objc_msgSend_name(v22, v18, v19);
          v26 = objc_msgSend_type(v22, v24, v25);
          v29 = objc_msgSend_index(v22, v27, v28);
          if (v26 != 3)
          {
            v30 = v29;
            if ((v26 || (objc_msgSend_hasPrefix_(v23, v18, @"vertexBuffer.") & 1) == 0) && (!objc_msgSend_hasPrefix_(v23, v18, @"osd") || (objc_msgSend_isEqualToString_(v23, v18, @"osdIndicesBuffer") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"osdTessellationLevel") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"osdVertexBuffer") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"osdFaceVaryingData") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"osdFaceVaryingIndices") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"osdFaceVaryingPatchParams") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"osdFaceVaryingPatchArray") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"osdFaceVaryingChannelCount") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"osdFaceVaryingChannelDescriptors") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"osdFaceVaryingPatchArrayIndex") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"osdFaceVaryingChannelsPackedData") & 1) == 0) && (objc_msgSend_isEqualToString_(v23, v18, @"vertexBuffer") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"indexBuffer") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"patchParamBuffer") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"perPatchVertexBuffer") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"patchTessBuffer") & 1) == 0)
            {
              v31 = objc_msgSend_objectForKeyedSubscript_(qword_1ED73A420, v18, v23);
              if (v31)
              {
                objc_msgSend_addResourceBindingsForArgument_frequency_needsRenderResource_block_(self, v32, v22, *(v31 + 16), *(v31 + 20), *(v31 + 8));
                goto LABEL_11;
              }

              if (v26)
              {
                goto LABEL_35;
              }

              v36 = objc_msgSend_bufferDataType(v22, v32, v33);
              if ((objc_msgSend_isEqualToString_(v23, v37, @"vfx_node") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"vfx_node_in") & 1) == 0 && (objc_msgSend_isEqualToString_(v23, v18, @"vfx_nodes_in") & 1) == 0 && !objc_msgSend_isEqualToString_(v23, v18, @"vfx_lights"))
              {
                if (v36 == 1 && ((objc_msgSend_isEqualToString_(v23, v18, @"vfx_frame") & 1) != 0 || objc_msgSend_isEqualToString_(v23, v18, @"vfx_frame_multi")))
                {
                  if (v89)
                  {
                    self->_worldBuffer.fragmentIndex = v30;
                  }

                  else
                  {
                    self->_worldBuffer.vertexIndex = v30;
                  }

                  goto LABEL_11;
                }

                v32 = objc_msgSend_objectForKey_(self->_current.programBindingBlocks, v18, v23);
                if (v32)
                {
                  (*(qword_1ED73A3E8 + 16))(qword_1ED73A3E8, v32, v22, self);
                  goto LABEL_11;
                }

LABEL_35:
                v34 = *out;
                if (!*out)
                {
                  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  *out = v34;
                }

                objc_msgSend_addObject_(v34, v32, v22);
                objc_msgSend_addResourceBindingsForArgument_frequency_needsRenderResource_block_(self, v35, v22, 2, 1, qword_1ED73A3F0[v26]);
                goto LABEL_11;
              }

              nodeBindings = self->_nodeBindings;
              if (objc_msgSend_isEqualToString_(v23, v18, @"vfx_lights"))
              {
                nodeBindings = self->_lightBindings;
              }

              v39 = objc_msgSend_objectForKeyedSubscript_(nodeBindings, v38, v23);
              if (v39)
              {
                v40 = v39;
                v41 = v39;
                v42 = v40;
              }

              else
              {
                v87 = objc_alloc_init(VFXMTLSemanticResourceBinding);
                objc_msgSend_setBinding_(v87, v43, v22);
                v42 = v87;
                if (v36 == 1)
                {
                  outCopy = out;
                  __p = 0;
                  v102 = 0;
                  v103 = 0;
                  v97 = 0u;
                  v98 = 0u;
                  v99 = 0u;
                  v100 = 0u;
                  v46 = objc_msgSend_bufferStructType(v22, v44, v45);
                  v49 = objc_msgSend_members(v46, v47, v48);
                  v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v97, v110, 16);
                  if (v93)
                  {
                    v92 = *v98;
                    v91 = v49;
                    do
                    {
                      for (i = 0; i != v93; ++i)
                      {
                        if (*v98 != v92)
                        {
                          objc_enumerationMutation(v91);
                        }

                        v54 = *(*(&v97 + 1) + 8 * i);
                        v55 = qword_1ED73B048;
                        v56 = objc_msgSend_name(v54, v51, v52);
                        v60 = objc_msgSend_objectForKeyedSubscript_(v55, v57, v56);
                        if (v60)
                        {
                          v61 = objc_msgSend_offset(v54, v58, v59);
                          v64 = sub_1AF21AC80(v54, v62, v63);
                          v65 = v102;
                          if (v102 >= v103)
                          {
                            v69 = (v102 - __p) >> 4;
                            v70 = v69 + 1;
                            if ((v69 + 1) >> 60)
                            {
                              sub_1AF10A1D0();
                            }

                            v71 = v103 - __p;
                            if ((v103 - __p) >> 3 > v70)
                            {
                              v70 = v71 >> 3;
                            }

                            if (v71 >= 0x7FFFFFFFFFFFFFF0)
                            {
                              v72 = 0xFFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v72 = v70;
                            }

                            if (v72)
                            {
                              sub_1AF21BA20(&__p, v72);
                            }

                            v73 = 16 * v69;
                            *v73 = v60;
                            *(v73 + 8) = v61;
                            *(v73 + 12) = v64;
                            v66 = 16 * v69 + 16;
                            v74 = (v73 - (v102 - __p));
                            memcpy(v74, __p, v102 - __p);
                            v75 = __p;
                            __p = v74;
                            v102 = v66;
                            v103 = 0;
                            if (v75)
                            {
                              operator delete(v75);
                            }
                          }

                          else
                          {
                            *v102 = v60;
                            v66 = (v65 + 16);
                            *(v65 + 2) = v61;
                            *(v65 + 3) = v64;
                          }

                          v102 = v66;
                        }

                        else
                        {
                          v67 = sub_1AF0D5194(0, v58);
                          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                          {
                            v68 = objc_msgSend_name(v54, v51, v52);
                            *buf = 138412290;
                            v109 = v68;
                            _os_log_impl(&dword_1AF0CE000, v67, OS_LOG_TYPE_DEFAULT, "Warning: unknown member in vfx automated buffer : %@", buf, 0xCu);
                          }
                        }
                      }

                      v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v51, &v97, v110, 16);
                    }

                    while (v93);
                  }

                  objc_msgSend_setSemanticsCount_(v87, v51, (v102 - __p) >> 4);
                  out = outCopy;
                  if (objc_msgSend_semanticsCount(v87, v76, v77))
                  {
                    v80 = 16 * objc_msgSend_semanticsCount(v87, v78, v79);
                    v87->_semantics = malloc_type_malloc(v80, 0x1080040FC6463CFuLL);
                    memcpy(v87->_semantics, __p, v80);
                    v83 = objc_msgSend_bufferDataSize(v22, v81, v82);
                    objc_msgSend_setBufferSize_(v87, v84, v83);
                  }

                  objc_msgSend_setObject_forKeyedSubscript_(nodeBindings, v78, v87, v23);
                  if (__p)
                  {
                    v102 = __p;
                    operator delete(__p);
                  }

                  v42 = v87;
                }
              }

              *(&v42->super._indices.vertexIndex + (v89 != 0)) = v30;
            }
          }
        }

LABEL_11:
        ++v21;
      }

      while (v21 != v20);
      v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(bindings, v18, &v104, v111, 16);
      v20 = v85;
    }

    while (v85);
  }
}

- (void)generateBindingsForPipeline:(id)pipeline withReflection:(id)reflection program:(__CFXProgram *)program materialIdentifier:(__CFString *)identifier overrides:(__CFXRenderingOverride *)overrides
{
  v77[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_generateLock);
  self->_current.programBindingBlocks = sub_1AF1D5C74(program, v12);
  self->_current.overrides = overrides;
  v14 = sub_1AF1D5DFC(program, v13);
  v75 = 0;
  self->_worldBuffer = -1;
  if (objc_msgSend_vertexFunction(pipeline, v15, v16))
  {
    v19 = objc_msgSend_vertexBindings(reflection, v17, v18);
    v22 = objc_msgSend_vertexFunction(pipeline, v20, v21);
    objc_msgSend__parseBindings_function_renderPipeline_isClientProgram_customBindingsOut_(self, v23, v19, v22, pipeline, v14, &v75);
  }

  if (objc_msgSend_fragmentFunction(pipeline, v17, v18))
  {
    v26 = objc_msgSend_fragmentBindings(reflection, v24, v25);
    v29 = objc_msgSend_fragmentFunction(pipeline, v27, v28);
    objc_msgSend__parseBindings_function_renderPipeline_isClientProgram_customBindingsOut_(self, v30, v26, v29, pipeline, v14, &v75);
  }

  if (self->_worldBuffer.vertexIndex != 255 || self->_worldBuffer.fragmentIndex != 255)
  {
    *(pipeline + 4) = self->_worldBuffer;
  }

  if (objc_msgSend_count(self->_frameBindings, v24, v25))
  {
    v33 = objc_msgSend_allValues(self->_frameBindings, v31, v32);
    objc_msgSend_setFrameBufferBindings_(pipeline, v34, v33);
    objc_msgSend_removeAllObjects(self->_frameBindings, v35, v36);
  }

  if (objc_msgSend_count(self->_nodeBindings, v31, v32))
  {
    v39 = objc_msgSend_allValues(self->_nodeBindings, v37, v38);
    objc_msgSend_setNodeBufferBindings_(pipeline, v40, v39);
    objc_msgSend_removeAllObjects(self->_nodeBindings, v41, v42);
  }

  if (objc_msgSend_count(self->_shadableBindings, v37, v38))
  {
    v45 = objc_msgSend_allValues(self->_shadableBindings, v43, v44);
    objc_msgSend_setShadableBufferBindings_(pipeline, v46, v45);
    objc_msgSend_removeAllObjects(self->_shadableBindings, v47, v48);
  }

  if (objc_msgSend_count(self->_lightBindings, v43, v44))
  {
    v51 = objc_msgSend_allValues(self->_lightBindings, v49, v50);
    objc_msgSend_setLightBufferBindings_(pipeline, v52, v51);
    objc_msgSend_removeAllObjects(self->_lightBindings, v53, v54);
  }

  v55 = objc_msgSend_vertexBindings(reflection, v49, v50);
  v58 = objc_msgSend_vertexFunction(pipeline, v56, v57);
  objc_msgSend__computeUsageForBindings_function_(pipeline, v59, v55, v58);
  v62 = objc_msgSend_fragmentBindings(reflection, v60, v61);
  v65 = objc_msgSend_fragmentFunction(pipeline, v63, v64);
  objc_msgSend__computeUsageForBindings_function_(pipeline, v66, v62, v65);
  os_unfair_lock_unlock(&self->_generateLock);
  v69 = v75;
  if (v75)
  {
    v70 = v14;
  }

  else
  {
    v70 = 0;
  }

  if (v70 == 1)
  {
    v71 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v67, v68);
    v76 = @"bindings";
    v77[0] = v75;
    v73 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v72, v77, &v76, 1);
    objc_msgSend_postNotificationName_object_userInfo_(v71, v74, @"VFXProgramDidCompileNotification", program, v73);
    v69 = v75;
  }
}

- (id)_dictionaryForFrequency:(int)frequency
{
  if (frequency <= 2)
  {
    return *(&self->super.isa + qword_1AFE42B10[frequency]);
  }

  return v3;
}

- (void)_checkForAssociatedSamplerOnBinding:(id)binding argument:(id)argument
{
  v6 = objc_msgSend_name(argument, a2, binding);
  v8 = objc_msgSend_stringByAppendingString_(v6, v7, @"Sampler");
  v10 = objc_msgSend__searchBindings_forArgumentNamed_type_(self, v9, self->_current.bindings, v8, 3);
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    stage = self->_current.stage;
    if (stage == 1)
    {
      *(binding + 12) = v10;
    }

    else if (stage)
    {
      v13 = sub_1AF0D5194(v10, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDEAAB4(&self->_current.stage, v13);
      }
    }

    else
    {
      *(binding + 11) = v10;
    }
  }
}

- (void)addResourceBindingsForArgument:(id)argument frequency:(int)frequency needsRenderResource:(BOOL)resource block:(id)block
{
  resourceCopy = resource;
  v10 = objc_msgSend__dictionaryForFrequency_(self, a2, *&frequency);
  v13 = objc_msgSend_name(argument, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v10, v14, v13);
  if (v15)
  {
    v18 = v15;
    v19 = objc_msgSend_type(v15, v16, v17);
    v22 = objc_msgSend_type(argument, v20, v21);
    if (v19 != v22)
    {
      v25 = sub_1AF0D5194(v22, v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEAB30(argument, v18, v25);
      }
    }

    v26 = objc_msgSend_bindBlock(v18, v23, v24);
    if (v26 != block)
    {
      v29 = sub_1AF0D5194(v26, v27);
      v26 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);
      if (v26)
      {
        sub_1AFDEABF0(v29, v27, v28, v30, v31, v32, v33, v34);
      }
    }
  }

  else
  {
    v18 = objc_alloc_init(VFXMTLResourceBinding);
    objc_msgSend_setBindBlock_(v18, v35, block);
    objc_msgSend_setNeedsRenderResource_(v18, v36, resourceCopy);
    objc_msgSend_setBinding_(v18, v37, argument);
    v40 = objc_msgSend_name(argument, v38, v39);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v41, v18, v40);
  }

  stage = self->_current.stage;
  if (stage == 1)
  {
    v18[10] = objc_msgSend_index(argument, v27, v28);
  }

  else if (stage)
  {
    v45 = sub_1AF0D5194(v26, v27);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEAAB4(&self->_current.stage, v45);
    }
  }

  else
  {
    v18[9] = objc_msgSend_index(argument, v27, v28);
  }

  if (objc_msgSend_type(argument, v43, v44) == 2)
  {
    objc_msgSend__checkForAssociatedSamplerOnBinding_argument_(self, v46, v18, argument);
  }
}

@end