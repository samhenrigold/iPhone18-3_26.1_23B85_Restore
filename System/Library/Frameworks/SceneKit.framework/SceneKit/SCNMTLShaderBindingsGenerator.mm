@interface SCNMTLShaderBindingsGenerator
+ (void)allocateRegistry;
+ (void)deallocateRegistry;
+ (void)registerArgument:(id)argument frequency:(int)frequency block:(id)block;
+ (void)registerArgument:(id)argument frequency:(int)frequency needsRenderResource:(BOOL)resource block:(id)block;
+ (void)registerSemantic:(id)semantic withBlock:(id)block;
+ (void)registerShadableArgumentBindingBlockForBuffers:(id)buffers textures:(id)textures samplers:(id)samplers;
- (BOOL)addPassResourceBindingsForArgument:(id)argument;
- (SCNMTLShaderBindingsGenerator)init;
- (id)_dictionaryForFrequency:(int)frequency;
- (int64_t)_searchArguments:(id)arguments forArgumentNamed:(id)named type:(unint64_t)type;
- (void)_checkForAssociatedSamplerOnBinding:(id)binding argument:(id)argument;
- (void)_parseArguments:(id)arguments function:(id)function renderPipeline:(id)pipeline;
- (void)addResourceBindingsForArgument:(id)argument frequency:(int)frequency needsRenderResource:(BOOL)resource block:(id)block;
- (void)dealloc;
- (void)generateBindingsForPipeline:(id)pipeline withReflection:(id)reflection program:(__C3DFXMetalProgram *)program material:(__C3DMaterial *)material geometry:(__C3DGeometry *)geometry pass:(__C3DFXPass *)pass;
@end

@implementation SCNMTLShaderBindingsGenerator

+ (void)allocateRegistry
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "__semanticRegistry == NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, self, a3, "Assertion '%s' failed. You can't allocate a registry twice", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (SCNMTLShaderBindingsGenerator)init
{
  v5.receiver = self;
  v5.super_class = SCNMTLShaderBindingsGenerator;
  v2 = [(SCNMTLShaderBindingsGenerator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_generateLock._os_unfair_lock_opaque = 0;
    v2->_passBindings = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    v3->_nodeBindings = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    v3->_frameBindings = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    v3->_shadableBindings = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    v3->_lightBindings = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
  }

  return v3;
}

+ (void)deallocateRegistry
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "__semanticRegistry != NULL";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, self, a3, "Assertion '%s' failed. You can't deallocate a registry that wasn't allocated", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)registerSemantic:(id)semantic withBlock:(id)block
{
  v6 = [__semanticRegistry objectForKey:?];
  if (v6)
  {
    v8 = scn_default_log(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLShaderBindingsGenerator *)v8 registerSemantic:v9 withBlock:v10, v11, v12, v13, v14, v15];
    }
  }

  [__semanticRegistry setObject:_Block_copy(block) forKey:semantic];
}

+ (void)registerArgument:(id)argument frequency:(int)frequency block:(id)block
{
  v6 = *&frequency;
  v8 = [__argumentRegistry objectForKey:?];
  if (v8)
  {
    v10 = scn_default_log(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLShaderBindingsGenerator *)v10 registerArgument:v11 frequency:v12 block:v13, v14, v15, v16, v17];
    }
  }

  v18 = [[SCNMTLArgumentBinder alloc] initWithBlock:block frequency:v6 needsRenderResource:0];
  [__argumentRegistry setObject:v18 forKey:argument];
}

+ (void)registerArgument:(id)argument frequency:(int)frequency needsRenderResource:(BOOL)resource block:(id)block
{
  resourceCopy = resource;
  v8 = *&frequency;
  v10 = [__argumentRegistry objectForKey:?];
  if (v10)
  {
    v12 = scn_default_log(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLShaderBindingsGenerator *)v12 registerArgument:v13 frequency:v14 block:v15, v16, v17, v18, v19];
    }
  }

  v20 = [[SCNMTLArgumentBinder alloc] initWithBlock:block frequency:v8 needsRenderResource:resourceCopy];
  [__argumentRegistry setObject:v20 forKey:argument];
}

+ (void)registerShadableArgumentBindingBlockForBuffers:(id)buffers textures:(id)textures samplers:(id)samplers
{
  __shadableArgumentBindingBlocks[0] = _Block_copy(buffers);
  qword_27CDD9340 = _Block_copy(textures);
  qword_27CDD9348 = _Block_copy(samplers);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLShaderBindingsGenerator;
  [(SCNMTLShaderBindingsGenerator *)&v3 dealloc];
}

- (int64_t)_searchArguments:(id)arguments forArgumentNamed:(id)named type:(unint64_t)type
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [arguments countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(arguments);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      if (objc_msgSend_isEqualToString_([v12 name]))
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [arguments countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    type = [v12 type];
    if (type == type)
    {
      return [v12 index];
    }

    v16 = scn_default_log(type, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      namedCopy = named;
      v23 = 1024;
      typeCopy = type;
      _os_log_impl(&dword_21BEF7000, v16, OS_LOG_TYPE_DEFAULT, "Warning: arguments named %@ is reserved for type %d", buf, 0x12u);
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_parseArguments:(id)arguments function:(id)function renderPipeline:(id)pipeline
{
  v55 = *MEMORY[0x277D85DE8];
  if (!function)
  {
    v7 = scn_default_log(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLShaderBindingsGenerator *)v7 _parseArguments:v8 function:v9 renderPipeline:v10, v11, v12, v13, v14];
    }
  }

  functionType = [function functionType];
  v40 = SCNMTLFunctionTypeToProgramStage(functionType, v16);
  self->_current.stage = v40;
  self->_current.arguments = arguments;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v17 = [arguments countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v17)
  {
    v18 = *v49;
    do
    {
      v19 = 0;
      do
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(arguments);
        }

        v20 = *(*(&v48 + 1) + 8 * v19);
        if ([v20 isActive] && objc_msgSend(v20, "type") != 3 && (objc_msgSend(v20, "type") || (objc_msgSend(objc_msgSend(v20, "name"), "hasPrefix:", @"vertexBuffer.") & 1) == 0) && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0 && (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) == 0)
        {
          v21 = [__argumentRegistry objectForKeyedSubscript:{objc_msgSend(v20, "name")}];
          if (v21)
          {
            [(SCNMTLShaderBindingsGenerator *)self addResourceBindingsForArgument:v20 frequency:*(v21 + 16) needsRenderResource:*(v21 + 20) block:*(v21 + 8)];
            goto LABEL_60;
          }

          if ([v20 type])
          {
            if ([v20 type] == 2 && self->_current.pass)
            {
LABEL_34:
              if ([(SCNMTLShaderBindingsGenerator *)self addPassResourceBindingsForArgument:v20])
              {
                goto LABEL_60;
              }
            }

LABEL_35:
            -[SCNMTLShaderBindingsGenerator addResourceBindingsForArgument:frequency:needsRenderResource:block:](self, "addResourceBindingsForArgument:frequency:needsRenderResource:block:", v20, 2, 1, __shadableArgumentBindingBlocks[[v20 type]]);
            goto LABEL_60;
          }

          if ((objc_msgSend_isEqualToString_([v20 name]) & 1) != 0 || (objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) != 0 || objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")))
          {
            nodeBindings = self->_nodeBindings;
            if (objc_msgSend_isEqualToString_([v20 name]))
            {
              nodeBindings = self->_lightBindings;
            }

            v22 = -[NSMutableDictionary objectForKeyedSubscript:](nodeBindings, "objectForKeyedSubscript:", [v20 name]);
            v31 = v22;
            if (v22)
            {
              v23 = v22;
            }

            else
            {
              v31 = objc_alloc_init(SCNMTLSemanticResourceBinding);
              [(SCNMTLResourceBinding *)v31 setArgument:v20];
              if ([v20 bufferDataType] == 1)
              {
                __src = 0;
                v46 = 0;
                v47 = 0;
                v41 = 0u;
                v42 = 0u;
                v43 = 0u;
                v44 = 0u;
                obj = [objc_msgSend(v20 "bufferStructType")];
                v34 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
                if (v34)
                {
                  v33 = *v42;
                  do
                  {
                    for (__n = 0; __n != v34; ++__n)
                    {
                      if (*v42 != v33)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v36 = *(*(&v41 + 1) + 8 * __n);
                      v24 = [__semanticRegistry objectForKeyedSubscript:{-[MTLStructMember name](v36, "name")}];
                      if (v24)
                      {
                        buf = v24;
                        DWORD2(buf) = [(MTLStructMember *)v36 offset];
                        HIDWORD(buf) = __structMemberSize(v36);
                        std::vector<SCNSemanticBinding>::emplace_back<SCNSemanticBinding const&>(&__src, &buf);
                      }

                      else
                      {
                        log = scn_default_log(0, v25);
                        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                        {
                          name = [(MTLStructMember *)v36 name];
                          LODWORD(buf) = 138412290;
                          *(&buf + 4) = name;
                          _os_log_impl(&dword_21BEF7000, log, OS_LOG_TYPE_DEFAULT, "Warning: unknown member in scn automated buffer : %@", &buf, 0xCu);
                        }
                      }
                    }

                    v34 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
                  }

                  while (v34);
                }

                [(SCNMTLSemanticResourceBinding *)v31 setSemanticsCount:(v46 - __src) >> 4];
                if ([(SCNMTLSemanticResourceBinding *)v31 semanticsCount])
                {
                  __na = 16 * [(SCNMTLSemanticResourceBinding *)v31 semanticsCount];
                  v31->_semantics = malloc_type_malloc(__na, 0x1080040FC6463CFuLL);
                  memcpy(v31->_semantics, __src, __na);
                  -[SCNMTLSemanticResourceBinding setBufferSize:](v31, "setBufferSize:", [v20 bufferDataSize]);
                }

                -[NSMutableDictionary setObject:forKeyedSubscript:](nodeBindings, "setObject:forKeyedSubscript:", v31, [v20 name]);
                if (__src)
                {
                  v46 = __src;
                  operator delete(__src);
                }
              }
            }

            *(&v31->super._indices.vertexIndex + (v40 != 0)) = [v20 index];
          }

          else if ([v20 bufferDataType] == 1 && ((objc_msgSend_isEqualToString_(objc_msgSend(v20, "name")) & 1) != 0 || objc_msgSend_isEqualToString_(objc_msgSend(v20, "name"))))
          {
            index = [v20 index];
            if (v40)
            {
              self->_sceneBuffer.fragmentIndex = index;
            }

            else
            {
              self->_sceneBuffer.vertexIndex = index;
            }
          }

          else
          {
            v28 = -[NSDictionary objectForKey:](self->_current.customBlocks, "objectForKey:", [v20 name]);
            if (!v28)
            {
              if (self->_current.pass && [v20 bufferDataType] == 1)
              {
                goto LABEL_34;
              }

              goto LABEL_35;
            }

            (*(__trampolineUserBufferBlock + 16))(__trampolineUserBufferBlock, v28, v20, self);
          }
        }

LABEL_60:
        ++v19;
      }

      while (v19 != v17);
      v29 = [arguments countByEnumeratingWithState:&v48 objects:v54 count:16];
      v17 = v29;
    }

    while (v29);
  }
}

- (void)generateBindingsForPipeline:(id)pipeline withReflection:(id)reflection program:(__C3DFXMetalProgram *)program material:(__C3DMaterial *)material geometry:(__C3DGeometry *)geometry pass:(__C3DFXPass *)pass
{
  os_unfair_lock_lock(&self->_generateLock);
  self->_current.customBlocks = C3DFXMetalProgramGetBufferBindings(program, v14);
  self->_current.pass = pass;
  if (material)
  {
    C3DMaterialGetCommonProfileIfNoTechnique(material, v15);
  }

  self->_sceneBuffer = -1;
  if ([pipeline vertexFunction])
  {
    -[SCNMTLShaderBindingsGenerator _parseArguments:function:renderPipeline:](self, "_parseArguments:function:renderPipeline:", [reflection vertexArguments], objc_msgSend(pipeline, "vertexFunction"), pipeline);
  }

  if ([pipeline fragmentFunction])
  {
    -[SCNMTLShaderBindingsGenerator _parseArguments:function:renderPipeline:](self, "_parseArguments:function:renderPipeline:", [reflection fragmentArguments], objc_msgSend(pipeline, "fragmentFunction"), pipeline);
  }

  if (self->_sceneBuffer.vertexIndex != 255 || self->_sceneBuffer.fragmentIndex != 255)
  {
    *(pipeline + 4) = self->_sceneBuffer;
  }

  if ([(NSMutableDictionary *)self->_frameBindings count])
  {
    [pipeline setFrameBufferBindings:{-[NSMutableDictionary allValues](self->_frameBindings, "allValues")}];
    [(NSMutableDictionary *)self->_frameBindings removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_nodeBindings count])
  {
    [pipeline setNodeBufferBindings:{-[NSMutableDictionary allValues](self->_nodeBindings, "allValues")}];
    [(NSMutableDictionary *)self->_nodeBindings removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_passBindings count])
  {
    [pipeline setPassBufferBindings:{-[NSMutableDictionary allValues](self->_passBindings, "allValues")}];
    [(NSMutableDictionary *)self->_passBindings removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_shadableBindings count])
  {
    [pipeline setShadableBufferBindings:{-[NSMutableDictionary allValues](self->_shadableBindings, "allValues")}];
    [(NSMutableDictionary *)self->_shadableBindings removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_lightBindings count])
  {
    [pipeline setLightBufferBindings:{-[NSMutableDictionary allValues](self->_lightBindings, "allValues")}];
    [(NSMutableDictionary *)self->_lightBindings removeAllObjects];
  }

  [pipeline _computeUsageForArguments:objc_msgSend(reflection function:{"vertexArguments"), objc_msgSend(pipeline, "vertexFunction")}];
  [pipeline _computeUsageForArguments:objc_msgSend(reflection function:{"fragmentArguments"), objc_msgSend(pipeline, "fragmentFunction")}];

  os_unfair_lock_unlock(&self->_generateLock);
}

- (id)_dictionaryForFrequency:(int)frequency
{
  if (frequency <= 3)
  {
    return *(&self->super.isa + qword_21C2A28E0[frequency]);
  }

  return v3;
}

- (void)_checkForAssociatedSamplerOnBinding:(id)binding argument:(id)argument
{
  v6 = -[SCNMTLShaderBindingsGenerator _searchArguments:forArgumentNamed:type:](self, "_searchArguments:forArgumentNamed:type:", self->_current.arguments, [objc_msgSend(argument "name")], 3);
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    stage = self->_current.stage;
    if (stage == 1)
    {
      *(binding + 12) = v6;
    }

    else if (stage)
    {
      v9 = scn_default_log(v6, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SCNMTLShaderBindingsGenerator *)&self->_current.stage _checkForAssociatedSamplerOnBinding:v9 argument:v10, v11, v12, v13, v14, v15];
      }
    }

    else
    {
      *(binding + 11) = v6;
    }
  }
}

- (void)addResourceBindingsForArgument:(id)argument frequency:(int)frequency needsRenderResource:(BOOL)resource block:(id)block
{
  resourceCopy = resource;
  v10 = [(SCNMTLShaderBindingsGenerator *)self _dictionaryForFrequency:*&frequency];
  v11 = [v10 objectForKeyedSubscript:{objc_msgSend(argument, "name")}];
  if (v11)
  {
    v12 = v11;
    type = [(SCNMTLResourceBinding *)v11 type];
    type2 = [argument type];
    if (type != type2)
    {
      v16 = scn_default_log(type2, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [SCNMTLShaderBindingsGenerator addResourceBindingsForArgument:argument frequency:v12 needsRenderResource:? block:?];
      }
    }

    bindBlock = [(SCNMTLResourceBinding *)v12 bindBlock];
    if (bindBlock != block)
    {
      v19 = scn_default_log(bindBlock, v18);
      bindBlock = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
      if (bindBlock)
      {
        [(SCNMTLShaderBindingsGenerator *)v19 addResourceBindingsForArgument:v18 frequency:v20 needsRenderResource:v21 block:v22, v23, v24, v25];
      }
    }
  }

  else
  {
    v12 = objc_alloc_init(SCNMTLResourceBinding);
    [(SCNMTLResourceBinding *)v12 setBindBlock:block];
    [(SCNMTLResourceBinding *)v12 setNeedsRenderResource:resourceCopy];
    [(SCNMTLResourceBinding *)v12 setArgument:argument];
    [v10 setObject:v12 forKeyedSubscript:{objc_msgSend(argument, "name")}];
  }

  stage = self->_current.stage;
  if (stage == 1)
  {
    v12->_indices.fragmentIndex = [argument index];
  }

  else if (stage)
  {
    v27 = scn_default_log(bindBlock, v18);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(SCNMTLShaderBindingsGenerator *)&self->_current.stage _checkForAssociatedSamplerOnBinding:v27 argument:v28, v29, v30, v31, v32, v33];
    }
  }

  else
  {
    v12->_indices.vertexIndex = [argument index];
  }

  if ([argument type] == 2)
  {
    [(SCNMTLShaderBindingsGenerator *)self _checkForAssociatedSamplerOnBinding:v12 argument:argument];
  }
}

- (BOOL)addPassResourceBindingsForArgument:(id)argument
{
  v105 = *MEMORY[0x277D85DE8];
  v5 = [(SCNMTLShaderBindingsGenerator *)self _dictionaryForFrequency:3];
  v6 = [v5 objectForKeyedSubscript:{objc_msgSend(argument, "name")}];
  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v9 = scn_default_log(isKindOfClass, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLShaderBindingsGenerator *)v9 addPassResourceBindingsForArgument:v10, v11, v12, v13, v14, v15, v16];
      }
    }

    type = [(SCNMTLResourceBinding *)v6 type];
    type2 = [argument type];
    if (type != type2)
    {
      v20 = scn_default_log(type2, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLShaderBindingsGenerator *)argument addPassResourceBindingsForArgument:v6];
      }
    }

    bindBlock = [(SCNMTLResourceBinding *)v6 bindBlock];
    v23 = v6;
    if (bindBlock)
    {
      v24 = scn_default_log(bindBlock, v22);
      bindBlock = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
      v23 = v6;
      if (bindBlock)
      {
        [(SCNMTLShaderBindingsGenerator *)v24 addPassResourceBindingsForArgument:v22, v25, v26, v27, v28, v29, v30];
        v23 = v6;
      }
    }
  }

  else
  {
    v23 = objc_alloc_init(SCNMTLPassResourceBinding);
    [(SCNMTLResourceBinding *)v23 setBindBlock:0];
    [(SCNMTLResourceBinding *)v23 setNeedsRenderResource:0];
    bindBlock = [(SCNMTLResourceBinding *)v23 setArgument:argument];
  }

  stage = self->_current.stage;
  if (stage == 1)
  {
    v23->super._indices.fragmentIndex = [argument index];
  }

  else if (stage)
  {
    v32 = scn_default_log(bindBlock, v22);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [(SCNMTLShaderBindingsGenerator *)&self->_current.stage _checkForAssociatedSamplerOnBinding:v32 argument:v33, v34, v35, v36, v37, v38];
    }
  }

  else
  {
    v23->super._indices.vertexIndex = [argument index];
  }

  if ([argument type] == 2)
  {
    if (v6)
    {
LABEL_22:
      [(SCNMTLShaderBindingsGenerator *)self _checkForAssociatedSamplerOnBinding:v23 argument:argument];
      goto LABEL_24;
    }

    InputWithName = C3DFXPassGetInputWithName(self->_current.pass, [argument name]);
    if (InputWithName)
    {
      v23->_samplerInput = InputWithName;
      goto LABEL_22;
    }
  }

  else
  {
    if ([argument type])
    {
LABEL_24:
      if (v6)
      {
LABEL_26:
        LOBYTE(InputWithName) = 1;
        return InputWithName;
      }

LABEL_25:
      [v5 setObject:v23 forKeyedSubscript:{objc_msgSend(argument, "name")}];
      goto LABEL_26;
    }

    bufferDataType = [argument bufferDataType];
    if (bufferDataType != 1)
    {
      v42 = scn_default_log(bufferDataType, v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLShaderBindingsGenerator *)v42 addPassResourceBindingsForArgument:v43, v44, v45, v46, v47, v48, v49];
      }
    }

    if (v6)
    {
      bufferSize = [(SCNMTLPassResourceBinding *)v23 bufferSize];
      bufferDataSize = [argument bufferDataSize];
      if (bufferSize != bufferDataSize)
      {
        v53 = scn_default_log(bufferDataSize, v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
        {
          [(SCNMTLShaderBindingsGenerator *)v53 addPassResourceBindingsForArgument:v54, v55, v56, v57, v58, v59, v60];
        }
      }

      goto LABEL_26;
    }

    argumentCopy = argument;
    p_isa = &v23->super.super.isa;
    v92 = v5;
    __p = 0;
    v100 = 0;
    v101 = 0;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v61 = [objc_msgSend(argument "bufferStructType")];
    v62 = [v61 countByEnumeratingWithState:&v95 objects:v104 count:16];
    if (v62)
    {
      v63 = *v96;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v96 != v63)
          {
            objc_enumerationMutation(v61);
          }

          v65 = *(*(&v95 + 1) + 8 * i);
          v66 = C3DFXPassGetInputWithName(self->_current.pass, [v65 name]);
          if (v66)
          {
            arrayType = [v65 arrayType];
            if ([v65 dataType] == 2 && (v68 = objc_msgSend(arrayType, "elementType"), v68 == SCNMTLDataTypeFromC3DBaseType(v66[10], v69)) || (v70 = objc_msgSend(v65, "dataType"), v72 = SCNMTLDataTypeFromC3DBaseType(v66[10], v71), v70 == v72) && *(v66 + 3) == 1)
            {
              offset = [v65 offset];
              if (arrayType)
              {
                [arrayType arrayLength];
                Size = SCNMTLDataTypeGetSize([arrayType elementType]);
                arrayLength = [arrayType arrayLength];
                v77 = *(v66 + 3);
                if (arrayLength < v77)
                {
                  LODWORD(v77) = arrayLength;
                }
              }

              else
              {
                Size = SCNMTLDataTypeGetSize([v65 dataType]);
                v77 = *(v66 + 3);
              }

              v80 = Size * v77;
              v81 = v100;
              if (v100 >= v101)
              {
                v83 = (v100 - __p) >> 4;
                v84 = v83 + 1;
                if ((v83 + 1) >> 60)
                {
                  std::string::__throw_length_error[abi:nn200100]();
                }

                v85 = v101 - __p;
                if ((v101 - __p) >> 3 > v84)
                {
                  v84 = v85 >> 3;
                }

                if (v85 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v86 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v86 = v84;
                }

                if (v86)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<SCNPassInputBinding>>(&__p, v86);
                }

                v87 = 16 * v83;
                *v87 = v66;
                *(v87 + 8) = offset;
                *(v87 + 12) = v80;
                v82 = 16 * v83 + 16;
                v88 = (v87 - (v100 - __p));
                memcpy(v88, __p, v100 - __p);
                v89 = __p;
                __p = v88;
                v100 = v82;
                v101 = 0;
                if (v89)
                {
                  operator delete(v89);
                }
              }

              else
              {
                *v100 = v66;
                v82 = (v81 + 16);
                *(v81 + 2) = offset;
                *(v81 + 3) = v80;
              }

              v100 = v82;
            }

            else
            {
              v78 = scn_default_log(v72, v73);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                name = [v65 name];
                *buf = 138412290;
                v103 = name;
                _os_log_impl(&dword_21BEF7000, v78, OS_LOG_TYPE_DEFAULT, "Warning: struct member does not match pass description : %@", buf, 0xCu);
              }
            }
          }
        }

        v62 = [v61 countByEnumeratingWithState:&v95 objects:v104 count:16];
      }

      while (v62);
    }

    if (v100 != __p)
    {
      v23 = p_isa;
      [p_isa setInputsCount:(v100 - __p) >> 4];
      v5 = v92;
      argument = argumentCopy;
      v90 = 16 * [p_isa inputsCount];
      p_isa[6] = malloc_type_malloc(v90, 0x1020040EDED9539uLL);
      memcpy(p_isa[6], __p, v90);
      [p_isa setBufferSize:{objc_msgSend(argumentCopy, "bufferDataSize")}];
      if (__p)
      {
        v100 = __p;
        operator delete(__p);
      }

      goto LABEL_25;
    }

    if (v100)
    {
      v100 = __p;
      operator delete(__p);
    }

    LOBYTE(InputWithName) = 0;
  }

  return InputWithName;
}

+ (void)registerSemantic:(uint64_t)a3 withBlock:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[__semanticRegistry objectForKey:semanticName] == nil";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. You can't register twice the same semantic", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)registerArgument:(uint64_t)a3 frequency:(uint64_t)a4 block:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[__argumentRegistry objectForKey:argumentName] == nil";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. You can't register twice the same argument name", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_parseArguments:(uint64_t)a3 function:(uint64_t)a4 renderPipeline:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "function";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_checkForAssociatedSamplerOnBinding:(uint64_t)a3 argument:(uint64_t)a4 .cold.1(_DWORD *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = *a1;
  OUTLINED_FUNCTION_1_12(&dword_21BEF7000, a2, a3, "Unreachable code: invalid program stage %d", a5, a6, a7, a8, v8);
}

- (void)addResourceBindingsForArgument:(void *)a1 frequency:(void *)a2 needsRenderResource:block:.cold.1(void *a1, void *a2)
{
  *v9 = 136315650;
  *&v9[4] = "bufferBinding.type == argument.type";
  *&v9[12] = 1024;
  *&v9[14] = [a1 type];
  *&v9[18] = 1024;
  *&v9[20] = [a2 type];
  OUTLINED_FUNCTION_2_14(&dword_21BEF7000, v3, v4, "Assertion '%s' failed. Argument with the same name cannot have different types (%d != %d)", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

- (void)addResourceBindingsForArgument:(uint64_t)a3 frequency:(uint64_t)a4 needsRenderResource:(uint64_t)a5 block:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "(SCNArgumentBindingBlock)bufferBinding.bindBlock == block";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Argument with the same name cannot have different blocks", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)addPassResourceBindingsForArgument:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[bufferBinding isKindOfClass:[SCNMTLPassResourceBinding class]]";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Argument with the same name cannot have different class type", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)addPassResourceBindingsForArgument:(void *)a1 .cold.2(void *a1, void *a2)
{
  *v9 = 136315650;
  *&v9[4] = "bufferBinding.type == argument.type";
  *&v9[12] = 1024;
  *&v9[14] = [a1 type];
  *&v9[18] = 1024;
  *&v9[20] = [a2 type];
  OUTLINED_FUNCTION_2_14(&dword_21BEF7000, v3, v4, "Assertion '%s' failed. Argument with the same name cannot have different types (%d != %d)", v5, v6, v7, v8, *v9, *&v9[8], *&v9[16]);
}

- (void)addPassResourceBindingsForArgument:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "(SCNArgumentBindingBlock)bufferBinding.bindBlock == nil";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Argument with the same name cannot have different blocks", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)addPassResourceBindingsForArgument:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "argument.bufferDataType == MTLDataTypeStruct";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Only supports pass buffer arguments as struct", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)addPassResourceBindingsForArgument:(uint64_t)a3 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "(NSUInteger)bufferBinding.bufferSize == argument.bufferDataSize";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. buffers of the same name in different stages need to have the same type", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end