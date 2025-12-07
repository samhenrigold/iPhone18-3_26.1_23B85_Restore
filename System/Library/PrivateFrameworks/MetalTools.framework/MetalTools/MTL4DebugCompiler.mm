@interface MTL4DebugCompiler
- (BOOL)hasUnspecializedProperties:(id)properties;
- (MTL4DebugCompiler)initWithCompiler:(id)compiler device:(id)device;
- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newDynamicLibrary:(id)library completionHandler:(id)handler;
- (id)newDynamicLibrary:(id)library error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l completionHandler:(id)handler;
- (id)newDynamicLibraryWithURL:(id)l error:(id *)error;
- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options completionHandler:(id)handler;
- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)newLibraryWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (id)newLibraryWithDescriptor:(id)descriptor error:(id *)error;
- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler;
- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor error:(id *)error;
- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline completionHandler:(id)handler;
- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler;
- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error;
- (id)newSpecializedMTL4PipelineDescriptor:(id)descriptor descriptor:(id)a4;
- (void)validateDynamicLibrary:(id)library context:(_MTLMessageContext *)context;
@end

@implementation MTL4DebugCompiler

- (MTL4DebugCompiler)initWithCompiler:(id)compiler device:(id)device
{
  v5.receiver = self;
  v5.super_class = MTL4DebugCompiler;
  return [(MTL4ToolsCompiler *)&v5 initWithBaseObject:compiler parent:device];
}

- (id)newLibraryWithDescriptor:(id)descriptor error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![descriptor source])
  {
    _MTLMessageContextPush_();
  }

  [descriptor source];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor options])
  {
    [descriptor options];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (!v24)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = [objc_msgSend(descriptor "options")];
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = *v21;
        do
        {
          v12 = 0;
          do
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v7);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v19 = v10;
              _MTLMessageContextPush_();
            }

            ++v10;
            ++v12;
          }

          while (v9 != v12);
          v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v9);
      }
    }
  }

  if ([descriptor name])
  {
    [descriptor name];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_27:
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v13 = objc_autoreleasePoolPush();
  v14 = -[MTLToolsDevice unwrapMTLCompileOptions:](self->super.super._device, "unwrapMTLCompileOptions:", [descriptor options]);
  v15 = [descriptor copy];
  [v15 setOptions:v14];
  v16 = [-[MTLToolsObject baseObject](self "baseObject")];

  if (v16)
  {
    v17 = [(MTLToolsObject *)[MTLDebugLibrary alloc] initWithBaseObject:v16 parent:self];
  }

  else
  {
    v17 = 0;
  }

  objc_autoreleasePoolPop(v13);
  return v17;
}

- (id)newDynamicLibrary:(id)library error:(id *)error
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  _MTLMessageContextBegin_();
  if (!library)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v11[0])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }
  }

  [(MTL4DebugCompiler *)self validateDynamicLibrary:library context:v11];
  _MTLMessageContextEnd();
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [(MTLToolsObject *)[MTLDebugDynamicLibrary alloc] initWithBaseObject:v7 parent:self];

  return v9;
}

- (id)newDynamicLibraryWithURL:(id)l error:(id *)error
{
  memset(&v11, 0, sizeof(v11));
  _MTLMessageContextBegin_();
  validateNewDynamicLibraryWithURL(l, &v11);
  _MTLMessageContextEnd();
  baseObject = [-[MTLToolsObject baseObject](self baseObject];
  if (!baseObject)
  {
    return 0;
  }

  v8 = baseObject;
  v9 = [(MTLToolsObject *)[MTLDebugDynamicLibrary alloc] initWithBaseObject:baseObject parent:self];

  return v9;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor computeFunctionDescriptor])
  {
    if (!options)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_12:
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  _MTLMessageContextEnd();
  v9 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v9);
  v10 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v11)
  {
    v12 = v11;
    v13 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:v11 parent:self mtl4Descriptor:descriptor];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor computeFunctionDescriptor])
  {
    if (!options)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_14:
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  _MTLMessageContextEnd();
  v11 = objc_autoreleasePoolPush();
  v12 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v12);
  if (linkingDescriptor)
  {
    linkingDescriptor = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:linkingDescriptor];
  }

  v13 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options, v17, v18, v19, v20];
  v14 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v14)
  {
    v15 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:v14 parent:self mtl4Descriptor:descriptor];
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v11);
  return v15;
}

- (void)validateDynamicLibrary:(id)library context:(_MTLMessageContext *)context
{
  if (!context->var0)
  {
    if (![(MTLToolsDevice *)self->super.super._device supportsDynamicLibraries])
    {
      _MTLMessageContextPush_();
    }

    if ([library type] != 1)
    {
      _MTLLibraryTypeString();
      _MTLMessageContextPush_();
    }
  }
}

- (BOOL)hasUnspecializedProperties:(id)properties
{
  newRenderPipelineDescriptorForSpecialization = [properties newRenderPipelineDescriptorForSpecialization];
  if (newRenderPipelineDescriptorForSpecialization)
  {
    v5 = newRenderPipelineDescriptorForSpecialization;
    v6 = hasUnspecializedProperties(newRenderPipelineDescriptorForSpecialization, v4);

    LOBYTE(newRenderPipelineDescriptorForSpecialization) = v6;
  }

  return newRenderPipelineDescriptorForSpecialization;
}

- (id)newSpecializedMTL4PipelineDescriptor:(id)descriptor descriptor:(id)a4
{
  newRenderPipelineDescriptorForSpecialization = [descriptor newRenderPipelineDescriptorForSpecialization];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    specializeMTL4PipelineDescriptor<MTL4RenderPipelineDescriptor>(newRenderPipelineDescriptorForSpecialization, a4);
  }

  return newRenderPipelineDescriptorForSpecialization;
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  _MTLMessageContextBegin_();
  if (descriptor)
  {
    validateMTL4RenderPipelineDescriptor(self->super.super._device, descriptor, &v15);
    if (!options)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_5;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_5:
  _MTLMessageContextEnd();
  v9 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor, v15, v16, v17, v18];
  addReflectionOption(v9);
  v10 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v11)
  {
    v12 = v11;
    v13 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v11 parent:self mtl4Descriptor:descriptor];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline error:(id *)error
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
    if (pipeline)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (([pipeline conformsToProtocol:{&unk_284238D78, v16, v17, v18, v19}] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![(MTL4DebugCompiler *)self hasUnspecializedProperties:pipeline])
  {
    _MTLMessageContextPush_();
  }

  v9 = [(MTL4DebugCompiler *)self newSpecializedMTL4PipelineDescriptor:pipeline descriptor:descriptor];
  if (v9)
  {
    v10 = v9;
    validateUnspecializedProperties(self->super.super._device, v9, &v16);
  }

  if (!pipeline)
  {
LABEL_14:
    _MTLMessageContextPush_();
  }

LABEL_9:
  _MTLMessageContextEnd();
  v11 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v11);
  v12 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v12)
  {
    v13 = v12;
    v14 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v12 parent:self mtl4Descriptor:descriptor];
  }

  else
  {

    return 0;
  }

  return v14;
}

- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options error:(id *)error
{
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor functionDescriptor])
  {
    if (!options)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_12:
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  _MTLMessageContextEnd();
  v9 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4BinaryFunctionDescriptor:descriptor];
  v10 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  v11 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v11)
  {
    v12 = v11;
    v13 = [(MTL4ToolsBinaryFunction *)[MTL4DebugBinaryFunction alloc] initWithBaseObject:v11 parent:self];
  }

  else
  {

    return 0;
  }

  return v13;
}

- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor error:(id *)error
{
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![descriptor machineLearningFunctionDescriptor])
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v7);
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v9 = v8;
    v10 = [[MTL4DebugMachineLearningPipelineState alloc] initWithMLPipelineState:v8 parent:self descriptor:descriptor];
  }

  else
  {

    return 0;
  }

  return v10;
}

- (id)newLibraryWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  memset(v24, 0, sizeof(v24));
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![descriptor source])
  {
    _MTLMessageContextPush_();
  }

  [descriptor source];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor options])
  {
    [descriptor options];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (!v24[0])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = [objc_msgSend(descriptor "options")];
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = *v21;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v7);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v18 = v10;
              _MTLMessageContextPush_();
            }

            ++v10;
          }

          v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v9);
      }
    }
  }

  if ([descriptor name])
  {
    [descriptor name];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_24:
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v13 = objc_autoreleasePoolPush();
  v14 = -[MTLToolsDevice unwrapMTLCompileOptions:](self->super.super._device, "unwrapMTLCompileOptions:", [descriptor options]);
  v15 = [descriptor copy];
  [v15 setOptions:v14];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__MTL4DebugCompiler_newLibraryWithDescriptor_completionHandler___block_invoke;
  v19[3] = &unk_2787B4BE0;
  v19[5] = self;
  v19[6] = handler;
  v19[4] = v15;
  v16 = [-[MTLToolsObject baseObject](self "baseObject")];
  objc_autoreleasePoolPop(v13);
  return v16;
}

void __64__MTL4DebugCompiler_newLibraryWithDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [(MTLToolsObject *)[MTLDebugLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 40)];

    (*(*(a1 + 48) + 16))();
  }

  else
  {

    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

- (id)newDynamicLibrary:(id)library completionHandler:(id)handler
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  _MTLMessageContextBegin_();
  if (!library)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v9[0])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }
  }

  [(MTL4DebugCompiler *)self validateDynamicLibrary:library context:v9];
  _MTLMessageContextEnd();
  return [-[MTLToolsObject baseObject](self baseObject];
}

void __57__MTL4DebugCompiler_newDynamicLibrary_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [(MTLToolsObject *)[MTLDebugDynamicLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

- (id)newDynamicLibraryWithURL:(id)l completionHandler:(id)handler
{
  memset(&v9, 0, sizeof(v9));
  _MTLMessageContextBegin_();
  validateNewDynamicLibraryWithURL(l, &v9);
  _MTLMessageContextEnd();
  return [-[MTLToolsObject baseObject](self baseObject];
}

void __64__MTL4DebugCompiler_newDynamicLibraryWithURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [(MTLToolsObject *)[MTLDebugDynamicLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor computeFunctionDescriptor])
  {
    if (!options)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_9:
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  _MTLMessageContextEnd();
  v9 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v9);
  v10 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__MTL4DebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v12[3] = &unk_2787B4C08;
  v12[4] = v10;
  v12[5] = v9;
  v12[7] = descriptor;
  v12[8] = handler;
  v12[6] = self;
  return [-[MTLToolsObject baseObject](self "baseObject")];
}

void __97__MTL4DebugCompiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:a2 parent:*(a1 + 48) mtl4Descriptor:*(a1 + 56)];

    (*(*(a1 + 64) + 16))();
  }

  else
  {

    v3 = *(*(a1 + 64) + 16);

    v3();
  }
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  _MTLMessageContextBegin_();
  if (descriptor)
  {
    validateMTL4RenderPipelineDescriptor(self->super.super._device, descriptor, v13);
    if (!options)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_5;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_5:
  _MTLMessageContextEnd();
  v9 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v9);
  v10 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__MTL4DebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v12[3] = &unk_2787B4C30;
  v12[7] = descriptor;
  v12[8] = handler;
  v12[4] = v10;
  v12[5] = v9;
  v12[6] = self;
  return [-[MTLToolsObject baseObject](self "baseObject")];
}

void __96__MTL4DebugCompiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:a2 parent:*(a1 + 48) mtl4Descriptor:*(a1 + 56)];

    (*(*(a1 + 64) + 16))();
    v3 = v4;
  }

  else
  {
    (*(*(a1 + 64) + 16))();

    v3 = *(a1 + 40);
  }
}

- (id)newRenderPipelineStateBySpecializationWithDescriptor:(id)descriptor pipeline:(id)pipeline completionHandler:(id)handler
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
    if (pipeline)
    {
      goto LABEL_9;
    }

LABEL_11:
    _MTLMessageContextPush_();
    goto LABEL_9;
  }

  if (([pipeline conformsToProtocol:&unk_284238D78] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![(MTL4DebugCompiler *)self hasUnspecializedProperties:pipeline])
  {
    _MTLMessageContextPush_();
  }

  v9 = [(MTL4DebugCompiler *)self newSpecializedMTL4PipelineDescriptor:pipeline descriptor:descriptor];
  if (v9)
  {
    v10 = v9;
    validateUnspecializedProperties(self->super.super._device, v9, &v14);
  }

  if (!pipeline)
  {
    goto LABEL_11;
  }

LABEL_9:
  _MTLMessageContextEnd();
  v11 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v11);
  return [-[MTLToolsObject baseObject](self baseObject];
}

void __101__MTL4DebugCompiler_newRenderPipelineStateBySpecializationWithDescriptor_pipeline_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:a2 parent:*(a1 + 40) mtl4Descriptor:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {

    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

- (id)newBinaryFunctionWithDescriptor:(id)descriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor functionDescriptor])
  {
    if (!options)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_9:
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  _MTLMessageContextEnd();
  v9 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4BinaryFunctionDescriptor:descriptor];
  v10 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  return [-[MTLToolsObject baseObject](self baseObject];
}

void __91__MTL4DebugCompiler_newBinaryFunctionWithDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [(MTL4ToolsBinaryFunction *)[MTL4DebugBinaryFunction alloc] initWithBaseObject:a2 parent:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {

    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

- (id)newMachineLearningPipelineStateWithDescriptor:(id)descriptor completionHandler:(id)handler
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (![descriptor machineLearningFunctionDescriptor])
  {
LABEL_6:
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v7);
  return [-[MTLToolsObject baseObject](self baseObject];
}

void __85__MTL4DebugCompiler_newMachineLearningPipelineStateWithDescriptor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [[MTL4DebugMachineLearningPipelineState alloc] initWithMLPipelineState:a2 parent:*(a1 + 40) descriptor:*(a1 + 48)];

    (*(*(a1 + 56) + 16))();
  }

  else
  {

    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

- (id)newComputePipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([descriptor computeFunctionDescriptor])
  {
    if (!options)
    {
      goto LABEL_8;
    }
  }

  else
  {
LABEL_9:
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  _MTLMessageContextEnd();
  v11 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v11);
  v12 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineStageDynamicLinkingDescriptor:linkingDescriptor];
  v13 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  baseObject = [(MTLToolsObject *)self baseObject];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __122__MTL4DebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v16[3] = &unk_2787B4CD0;
  v16[4] = v11;
  v16[5] = v12;
  v16[6] = v13;
  v16[7] = self;
  v16[8] = descriptor;
  v16[9] = handler;
  return [baseObject newComputePipelineStateWithDescriptor:v11 dynamicLinkingDescriptor:v12 compilerTaskOptions:v13 completionHandler:v16];
}

void __122__MTL4DebugCompiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [[MTLDebugComputePipelineState alloc] initWithComputePipelineState:a2 parent:*(a1 + 56) mtl4Descriptor:*(a1 + 64)];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 72) + 16);

    v4();
  }
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options completionHandler:(id)handler
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  _MTLMessageContextBegin_();
  if (descriptor)
  {
    validateMTL4RenderPipelineDescriptor(self->super.super._device, descriptor, v17);
    if (!options)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_5;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_5:
  _MTLMessageContextEnd();
  v11 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor];
  addReflectionOption(v11);
  v12 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:linkingDescriptor];
  v13 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  baseObject = [(MTLToolsObject *)self baseObject];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __121__MTL4DebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke;
  v16[3] = &unk_2787B4CF8;
  v16[4] = v11;
  v16[5] = v12;
  v16[6] = v13;
  v16[7] = self;
  v16[8] = descriptor;
  v16[9] = handler;
  return [baseObject newRenderPipelineStateWithDescriptor:v11 dynamicLinkingDescriptor:v12 compilerTaskOptions:v13 completionHandler:v16];
}

void __121__MTL4DebugCompiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:a2 parent:*(a1 + 56) mtl4Descriptor:*(a1 + 64)];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 72) + 16);

    v4();
  }
}

- (id)newRenderPipelineStateWithDescriptor:(id)descriptor dynamicLinkingDescriptor:(id)linkingDescriptor compilerTaskOptions:(id)options error:(id *)error
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  _MTLMessageContextBegin_();
  if (descriptor)
  {
    validateMTL4RenderPipelineDescriptor(self->super.super._device, descriptor, &v19);
    if (!options)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!options)
    {
      goto LABEL_5;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_5:
  _MTLMessageContextEnd();
  v11 = objc_autoreleasePoolPush();
  v12 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4PipelineDescriptor:descriptor, v19, v20, v21, v22];
  addReflectionOption(v12);
  v13 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4RenderPipelineDynamicLinkingDescriptor:linkingDescriptor];
  v14 = [(MTLToolsDevice *)self->super.super._device newUnwrappedMTL4CompilerTaskOptions:options];
  v15 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v15)
  {
    v16 = v15;
    v17 = [[MTLDebugRenderPipelineState alloc] initWithRenderPipelineState:v15 parent:self mtl4Descriptor:descriptor];
  }

  else
  {
    v17 = 0;
  }

  objc_autoreleasePoolPop(v11);
  return v17;
}

- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options completionHandler:(id)handler
{
  memset(&v12, 0, sizeof(v12));
  _MTLMessageContextBegin_();
  validateNewDynamicLibraryWithURL(l, &v12);
  _MTLMessageContextEnd();
  baseObject = [(MTLToolsObject *)self baseObject];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__MTL4DebugCompiler_newDynamicLibraryWithURL_options_completionHandler___block_invoke;
  v11[3] = &unk_2787B3790;
  v11[4] = self;
  v11[5] = handler;
  return [baseObject newDynamicLibraryWithURL:l options:options completionHandler:v11];
}

void __72__MTL4DebugCompiler_newDynamicLibraryWithURL_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [(MTLToolsObject *)[MTLDebugDynamicLibrary alloc] initWithBaseObject:a2 parent:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

- (id)newDynamicLibraryWithURL:(id)l options:(unint64_t)options error:(id *)error
{
  memset(&v14, 0, sizeof(v14));
  _MTLMessageContextBegin_();
  validateNewDynamicLibraryWithURL(l, &v14);
  _MTLMessageContextEnd();
  v9 = objc_autoreleasePoolPush();
  baseObject = [-[MTLToolsObject baseObject](self baseObject];
  if (baseObject)
  {
    v11 = baseObject;
    v12 = [(MTLToolsObject *)[MTLDebugDynamicLibrary alloc] initWithBaseObject:baseObject parent:self];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v12;
}

@end