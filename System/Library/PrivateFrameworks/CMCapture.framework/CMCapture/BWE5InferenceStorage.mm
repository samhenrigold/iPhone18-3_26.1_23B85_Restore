@interface BWE5InferenceStorage
- (BWE5InferenceStorage)initWithBindingNameByRequirement:(id)requirement requirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools requirementsNeedingTensors:(id)tensors;
- (id)newMetadataDictionarySatisfyingRequirement:(id)requirement;
- (void)_newPackedFloat32SurfaceForRequirement:(_BOOL8 *)requirement elementCount:;
- (void)clear;
- (void)dealloc;
- (void)setTensorPort:(e5rt_io_port *)port forRequirement:(id)requirement;
@end

@implementation BWE5InferenceStorage

- (BWE5InferenceStorage)initWithBindingNameByRequirement:(id)requirement requirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools requirementsNeedingTensors:(id)tensors
{
  v12.receiver = self;
  v12.super_class = BWE5InferenceStorage;
  v8 = [(BWInferenceProviderStorage *)&v12 initWithRequirementsNeedingPixelBuffers:buffers requirementsNeedingPixelBufferPools:pools];
  if (v8)
  {
    v8->_bindingNameByRequirement = [requirement copy];
    v9 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
    v10 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:259];
    v8->_tensorPortByRequirement = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v9 valuePointerFunctions:v10 capacity:{objc_msgSend(tensors, "count")}];
  }

  return v8;
}

- (void)dealloc
{
  objectEnumerator = [(NSMapTable *)self->_tensorPortByRequirement objectEnumerator];
  v4 = objectEnumerator;
  while ([(NSEnumerator *)objectEnumerator nextObject])
  {
    e5rt_io_port_release();
    objectEnumerator = v4;
  }

  v5.receiver = self;
  v5.super_class = BWE5InferenceStorage;
  [(BWInferenceProviderStorage *)&v5 dealloc];
}

- (void)setTensorPort:(e5rt_io_port *)port forRequirement:(id)requirement
{
  if ([(NSMapTable *)self->_tensorPortByRequirement objectForKey:requirement])
  {
    e5rt_io_port_release();
  }

  tensorPortByRequirement = self->_tensorPortByRequirement;

  [(NSMapTable *)tensorPortByRequirement setObject:port forKey:requirement];
}

- (void)clear
{
  v2.receiver = self;
  v2.super_class = BWE5InferenceStorage;
  [(BWInferenceProviderStorage *)&v2 clear];
}

- (void)_newPackedFloat32SurfaceForRequirement:(_BOOL8 *)requirement elementCount:
{
  if (result)
  {
    v4 = ![result tensorPortForRequirement:a2] || e5rt_io_port_retain_tensor_desc() || e5rt_io_port_retain_buffer_object() || e5rt_tensor_desc_get_rank();
    if (requirement)
    {
      *requirement = v4;
    }

    return 0;
  }

  return result;
}

- (id)newMetadataDictionarySatisfyingRequirement:(id)requirement
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  metadataKeys = [requirement metadataKeys];
  v31 = 0;
  v8 = [(BWE5InferenceStorage *)self _newPackedFloat32SurfaceForRequirement:requirement elementCount:&v31];
  if (!v8)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v30, v31, v32, v33, v34, v35);
    return v6;
  }

  v9 = v8;
  BaseAddress = IOSurfaceGetBaseAddress(v8);
  mappingOption = [requirement mappingOption];
  v12 = mappingOption;
  if (!mappingOption || mappingOption == 2)
  {
    v20 = [metadataKeys count];
    if (v20 >= v31)
    {
      v21 = v31;
    }

    else
    {
      v21 = v20;
    }

    if (!v21)
    {
      goto LABEL_25;
    }

    for (i = 0; i != v21; ++i)
    {
      v23 = [metadataKeys objectAtIndexedSubscript:i];
      LODWORD(v24) = BaseAddress[i];
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v24), v23}];
    }

    if (v12 != 2 || v31 <= v21)
    {
      goto LABEL_25;
    }

    v26 = [metadataKeys objectAtIndexedSubscript:v21 - 1];
    v27 = [v6 objectForKeyedSubscript:v26];
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v27, 0}];
    while (v21 < v31)
    {
      LODWORD(v28) = BaseAddress[v21];
      [v14 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v28)}];
      ++v21;
    }

    v18 = v6;
    v19 = v14;
    firstObject = v26;
    goto LABEL_24;
  }

  if (mappingOption == 1)
  {
    v13 = objc_alloc(MEMORY[0x1E695DF70]);
    v14 = [v13 initWithCapacity:v31];
    if (v31)
    {
      for (j = 0; j < v31; ++j)
      {
        LODWORD(v15) = BaseAddress[j];
        [v14 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v15)}];
      }
    }

    firstObject = [metadataKeys firstObject];
    v18 = v6;
    v19 = v14;
LABEL_24:
    [v18 setObject:v19 forKeyedSubscript:firstObject];
  }

LABEL_25:
  CFRelease(v9);
  return v6;
}

@end