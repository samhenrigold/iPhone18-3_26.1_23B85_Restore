@interface MTL4DebugCommandQueue
- (MTL4DebugCommandQueue)initWithBaseObject:(id)object parent:(id)parent;
- (void)addResidencySet:(id)set;
- (void)addResidencySets:(const void *)sets count:(unint64_t)count;
- (void)commit:(const void *)commit count:(unint64_t)count;
- (void)commit:(const void *)commit count:(unint64_t)count options:(id)options;
- (void)copyBufferMappingsFromBuffer:(id)buffer toBuffer:(id)toBuffer operations:(id *)operations count:(unint64_t)count;
- (void)copyTextureMappingsFromTexture:(id)texture toTexture:(id)toTexture operations:(id *)operations count:(unint64_t)count;
- (void)dealloc;
- (void)removeResidencySet:(id)set;
- (void)removeResidencySets:(const void *)sets count:(unint64_t)count;
- (void)signalDrawable:(id)drawable;
- (void)signalEvent:(id)event value:(unint64_t)value;
- (void)updateBufferMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count;
- (void)updateTextureMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count;
- (void)validateBufferAccess:(id)access range:(_NSRange)range resourceSparsePageSize:(int64_t)size context:(_MTLMessageContext *)context;
- (void)validateBufferAccess:(id)access region:(id *)region resourceSparsePageSize:(int64_t)size context:(_MTLMessageContext *)context;
- (void)validateCommitCommon:(_MTLMessageContext *)common commandBuffers:(const void *)buffers count:(unint64_t)count;
- (void)validateHeapAccess:(id)access rangeOffset:(unint64_t)offset tileRegions:(id *)regions resourceSparsePageSize:(int64_t)size context:(_MTLMessageContext *)context;
- (void)validateTextureAccess:(id)access region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice context:(_MTLMessageContext *)context;
- (void)waitForDrawable:(id)drawable;
- (void)waitForEvent:(id)event value:(unint64_t)value;
- (void)waitForEvent:(id)event value:(unint64_t)value timeout:(unsigned __int16)timeout;
@end

@implementation MTL4DebugCommandQueue

- (MTL4DebugCommandQueue)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4DebugCommandQueue;
  return [(MTL4ToolsCommandQueue *)&v5 initWithBaseObject:object parent:parent];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v2 dealloc];
}

- (void)commit:(const void *)commit count:(unint64_t)count
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  _MTLMessageContextBegin_();
  [(MTL4DebugCommandQueue *)self validateCommitCommon:v8 commandBuffers:commit count:count];
  _MTLMessageContextEnd();
  v7.receiver = self;
  v7.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v7 commit:commit count:count];
}

- (void)commit:(const void *)commit count:(unint64_t)count options:(id)options
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  _MTLMessageContextBegin_();
  [(MTL4DebugCommandQueue *)self validateCommitCommon:v10 commandBuffers:commit count:count];
  if (options)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v9.receiver = self;
  v9.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v9 commit:commit count:count options:options];
}

- (void)signalEvent:(id)event value:(unint64_t)value
{
  v8 = 0;
  memset(&v7[1], 0, 48);
  _MTLMessageContextBegin_();
  if (!event || ([event conformsToProtocol:&unk_2842371A8] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugCommandQueue;
  [(objc_super *)v7 signalEvent:event value:value];
}

- (void)waitForEvent:(id)event value:(unint64_t)value
{
  v8 = 0;
  memset(&v7[1], 0, 48);
  _MTLMessageContextBegin_();
  if (!event || ([event conformsToProtocol:&unk_2842371A8] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugCommandQueue;
  [(objc_super *)v7 waitForEvent:event value:value];
}

- (void)signalDrawable:(id)drawable
{
  _MTLMessageContextBegin_();
  if (!drawable || ![drawable conformsToProtocol:{&unk_284249EC0, 0, 0, 0, 0, 0, 0, 0}] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)waitForDrawable:(id)drawable
{
  _MTLMessageContextBegin_();
  if (!drawable || ![drawable conformsToProtocol:{&unk_284249EC0, 0, 0, 0, 0, 0, 0, 0}] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)addResidencySet:(id)set
{
  v6 = 0;
  memset(&v5[1], 0, 48);
  _MTLMessageContextBegin_();
  if (!set)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugCommandQueue;
  [(objc_super *)v5 addResidencySet:set];
}

- (void)addResidencySets:(const void *)sets count:(unint64_t)count
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  _MTLMessageContextBegin_();
  if (count)
  {
    v7 = 0;
    do
    {
      if (!sets[v7])
      {
        _MTLMessageContextPush_();
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _MTLMessageContextPush_();
      }

      ++v7;
    }

    while (count != v7);
  }

  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v8 addResidencySets:sets count:count];
}

- (void)removeResidencySet:(id)set
{
  v6 = 0;
  memset(&v5[1], 0, 48);
  _MTLMessageContextBegin_();
  if (!set)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugCommandQueue;
  [(objc_super *)v5 removeResidencySet:set];
}

- (void)removeResidencySets:(const void *)sets count:(unint64_t)count
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  _MTLMessageContextBegin_();
  if (count)
  {
    v7 = 0;
    do
    {
      if (!sets[v7])
      {
        _MTLMessageContextPush_();
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        _MTLMessageContextPush_();
      }

      ++v7;
    }

    while (count != v7);
  }

  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTL4DebugCommandQueue;
  [(MTL4ToolsCommandQueue *)&v8 removeResidencySets:sets count:count];
}

- (void)updateTextureMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count
{
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  _MTLMessageContextBegin_();
  if (![mappings placementSparsePageSize])
  {
    _MTLMessageContextPush_();
  }

  if ([mappings textureType] == 16)
  {
    _MTLMessageContextPush_();
    if (heap)
    {
      goto LABEL_5;
    }
  }

  else if (heap)
  {
LABEL_5:
    if ([heap type] != 1)
    {
      _MTLMessageContextPush_();
    }

    if (!_MTLDebugIsValidSparsePageSize([heap maxCompatiblePlacementSparsePageSize]))
    {
      [MTL4DebugCommandQueue updateTextureMappings:heap heap:? operations:? count:?];
    }

    placementSparsePageSize = [mappings placementSparsePageSize];
    if (placementSparsePageSize > [heap maxCompatiblePlacementSparsePageSize])
    {
      [MTL4DebugCommandQueue updateTextureMappings:heap heap:mappings operations:? count:?];
    }

    goto LABEL_11;
  }

  if (count)
  {
    v17 = 0;
    operationsCopy = operations;
    do
    {
      var0 = operationsCopy->var0;
      ++operationsCopy;
      if (var0 != 1)
      {
        v20 = v17;
        _MTLMessageContextPush_();
      }

      ++v17;
    }

    while (count != v17);
  }

LABEL_11:
  if (_MTLDebugIsValidSparsePageSize([mappings placementSparsePageSize]))
  {
    if (!count)
    {
      goto LABEL_19;
    }
  }

  else
  {
    [MTL4DebugCommandQueue updateTextureMappings:mappings heap:? operations:? count:?];
    if (!count)
    {
      goto LABEL_19;
    }
  }

  v12 = 0;
  p_var4 = &operations->var4;
  do
  {
    v14 = *(p_var4 - 3);
    v23 = *(p_var4 - 4);
    v24 = v14;
    v25 = *(p_var4 - 2);
    [(MTL4DebugCommandQueue *)self validateTextureAccess:mappings region:&v23 mipLevel:*(p_var4 - 2) slice:*(p_var4 - 1) context:v26, v21];
    if (!*(p_var4 - 9))
    {
      if (heap)
      {
        v15 = *p_var4;
        v16 = *(p_var4 - 3);
        v23 = *(p_var4 - 4);
        v24 = v16;
        v25 = *(p_var4 - 2);
        -[MTL4DebugCommandQueue validateHeapAccess:rangeOffset:tileRegions:resourceSparsePageSize:context:](self, "validateHeapAccess:rangeOffset:tileRegions:resourceSparsePageSize:context:", heap, v15, &v23, [mappings placementSparsePageSize], v26);
      }

      else
      {
        v21 = v12;
        _MTLMessageContextPush_();
      }
    }

    ++v12;
    p_var4 += 10;
  }

  while (count != v12);
LABEL_19:
  if (!*&v26[0])
  {
    v22.receiver = self;
    v22.super_class = MTL4DebugCommandQueue;
    [(MTL4ToolsCommandQueue *)&v22 updateTextureMappings:mappings heap:heap operations:operations count:count];
  }

  _MTLMessageContextEnd();
}

- (void)copyTextureMappingsFromTexture:(id)texture toTexture:(id)toTexture operations:(id *)operations count:(unint64_t)count
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  _MTLMessageContextBegin_();
  if (![texture placementSparsePageSize])
  {
    _MTLMessageContextPush_();
  }

  if ([texture textureType] == 16)
  {
    _MTLMessageContextPush_();
  }

  if (![toTexture placementSparsePageSize])
  {
    _MTLMessageContextPush_();
  }

  if ([toTexture textureType] == 16)
  {
    _MTLMessageContextPush_();
    if (!count)
    {
      goto LABEL_11;
    }
  }

  else if (!count)
  {
    goto LABEL_11;
  }

  p_var1 = &operations->var1;
  countCopy = count;
  do
  {
    v13 = *(p_var1 - 2);
    v18 = *(p_var1 - 3);
    *v19 = v13;
    *&v19[16] = *(p_var1 - 1);
    [(MTL4DebugCommandQueue *)self validateTextureAccess:texture region:&v18 mipLevel:*p_var1 slice:p_var1[1] context:v20];
    v14 = *(p_var1 + 1);
    v15 = p_var1[5];
    *v19 = p_var1[4];
    *&v19[24] = *(p_var1 - 1);
    *&v19[8] = *(p_var1 - 3);
    v17[0] = v14;
    v17[1] = *v19;
    v17[2] = *&v19[16];
    v18 = v14;
    [(MTL4DebugCommandQueue *)self validateTextureAccess:toTexture region:v17 mipLevel:v15 slice:p_var1[6] context:v20];
    p_var1 += 13;
    --countCopy;
  }

  while (countCopy);
LABEL_11:
  if (!*&v20[0])
  {
    v16.receiver = self;
    v16.super_class = MTL4DebugCommandQueue;
    [(MTL4ToolsCommandQueue *)&v16 copyTextureMappingsFromTexture:texture toTexture:toTexture operations:operations count:count];
  }

  _MTLMessageContextEnd();
}

- (void)updateBufferMappings:(id)mappings heap:(id)heap operations:(id *)operations count:(unint64_t)count
{
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  _MTLMessageContextBegin_();
  if ([mappings placementSparsePageSize])
  {
    if (heap)
    {
LABEL_3:
      if ([heap type] != 1)
      {
        _MTLMessageContextPush_();
      }

      if (!_MTLDebugIsValidSparsePageSize([heap maxCompatiblePlacementSparsePageSize]))
      {
        [MTL4DebugCommandQueue updateTextureMappings:heap heap:? operations:? count:?];
      }

      placementSparsePageSize = [mappings placementSparsePageSize];
      if (placementSparsePageSize > [heap maxCompatiblePlacementSparsePageSize])
      {
        [MTL4DebugCommandQueue updateBufferMappings:heap heap:mappings operations:? count:?];
      }

      goto LABEL_9;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (heap)
    {
      goto LABEL_3;
    }
  }

  if (count)
  {
    v18 = 0;
    operationsCopy = operations;
    do
    {
      var0 = operationsCopy->var0;
      ++operationsCopy;
      if (var0 != 1)
      {
        v21 = v18;
        _MTLMessageContextPush_();
      }

      ++v18;
    }

    while (count != v18);
  }

LABEL_9:
  if (_MTLDebugIsValidSparsePageSize([mappings placementSparsePageSize]))
  {
    if (!count)
    {
      goto LABEL_17;
    }
  }

  else
  {
    [MTL4DebugCommandQueue updateBufferMappings:mappings heap:? operations:? count:?];
    if (!count)
    {
      goto LABEL_17;
    }
  }

  v12 = 0;
  v13 = 1;
  do
  {
    v14 = &operations[v12];
    -[MTL4DebugCommandQueue validateBufferAccess:range:resourceSparsePageSize:context:](self, "validateBufferAccess:range:resourceSparsePageSize:context:", mappings, v14->var1.location, v14->var1.length, [mappings placementSparsePageSize], v26);
    if (!v14->var0)
    {
      if (heap)
      {
        location = v14->var1.location;
        length = v14->var1.length;
        var2 = v14->var2;
        v24[1] = 0;
        v24[2] = 0;
        v24[0] = location;
        v24[3] = length;
        v25 = vdupq_n_s64(1uLL);
        -[MTL4DebugCommandQueue validateHeapAccess:rangeOffset:tileRegions:resourceSparsePageSize:context:](self, "validateHeapAccess:rangeOffset:tileRegions:resourceSparsePageSize:context:", heap, var2, v24, [mappings placementSparsePageSize], v26);
      }

      else
      {
        v22 = v12;
        _MTLMessageContextPush_();
      }
    }

    v12 = v13++;
  }

  while (v12 < count);
LABEL_17:
  if (!*&v26[0])
  {
    v23.receiver = self;
    v23.super_class = MTL4DebugCommandQueue;
    [(MTL4ToolsCommandQueue *)&v23 updateBufferMappings:mappings heap:heap operations:operations count:count];
  }

  _MTLMessageContextEnd();
}

- (void)copyBufferMappingsFromBuffer:(id)buffer toBuffer:(id)toBuffer operations:(id *)operations count:(unint64_t)count
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  _MTLMessageContextBegin_();
  if (![buffer placementSparsePageSize])
  {
    _MTLMessageContextPush_();
  }

  if ([toBuffer placementSparsePageSize])
  {
    if (!count)
    {
      goto LABEL_7;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!count)
    {
      goto LABEL_7;
    }
  }

  v11 = 0;
  v12 = 1;
  do
  {
    v13 = &operations[v11];
    -[MTL4DebugCommandQueue validateBufferAccess:range:resourceSparsePageSize:context:](self, "validateBufferAccess:range:resourceSparsePageSize:context:", buffer, v13->var0.location, v13->var0.length, [buffer placementSparsePageSize], v15);
    -[MTL4DebugCommandQueue validateBufferAccess:range:resourceSparsePageSize:context:](self, "validateBufferAccess:range:resourceSparsePageSize:context:", toBuffer, v13->var1, v13->var0.length, [toBuffer placementSparsePageSize], v15);
    v11 = v12++;
  }

  while (v11 < count);
LABEL_7:
  if (!*&v15[0])
  {
    v14.receiver = self;
    v14.super_class = MTL4DebugCommandQueue;
    [(MTL4ToolsCommandQueue *)&v14 copyBufferMappingsFromBuffer:buffer toBuffer:toBuffer operations:operations count:count];
  }

  _MTLMessageContextEnd();
}

- (void)waitForEvent:(id)event value:(unint64_t)value timeout:(unsigned __int16)timeout
{
  timeoutCopy = timeout;
  v10 = 0;
  memset(&v9[1], 0, 48);
  _MTLMessageContextBegin_();
  if (!event || ([event conformsToProtocol:&unk_2842371A8] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v9[0].receiver = self;
  v9[0].super_class = MTL4DebugCommandQueue;
  [(objc_super *)v9 waitForEvent:event value:value timeout:timeoutCopy];
}

- (void)validateTextureAccess:(id)access region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice context:(_MTLMessageContext *)context
{
  if (!access)
  {
    [MTL4DebugCommandQueue validateTextureAccess:region:mipLevel:slice:context:];
LABEL_32:
    v18 = sliceCopy;
    arrayLength = [accessCopy arrayLength];
    _MTLMessageContextPush_();
    goto LABEL_8;
  }

  sliceCopy = slice;
  levelCopy = level;
  accessCopy = access;
  regionCopy = region;
  v23 = 0;
  v22 = 0u;
  v7 = 24;
  selfCopy = self;
  [access pixelFormat];
  [accessCopy width];
  [accessCopy height];
  [accessCopy depth];
  [accessCopy sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  if ([accessCopy textureType] == 5)
  {
    v13 = 6;
  }

  else if ([accessCopy textureType] == 6)
  {
    v13 = 6;
  }

  else
  {
    v13 = 1;
  }

  contextCopy = context;
  if ([accessCopy arrayLength] * v13 <= sliceCopy)
  {
    goto LABEL_32;
  }

LABEL_8:
  v14 = [accessCopy mipmapLevelCount] - 1;
  if (v14 >= [accessCopy firstMipmapInTail])
  {
    firstMipmapInTail = [accessCopy firstMipmapInTail];
  }

  else
  {
    firstMipmapInTail = [accessCopy mipmapLevelCount] - 1;
  }

  if (firstMipmapInTail < levelCopy)
  {
    [MTLDebugBlitCommandEncoder validateTextureAccess:accessCopy region:? mipLevel:? slice:?];
  }

  if (contextCopy->var0 <= 0)
  {
    device = [accessCopy device];
    [accessCopy textureType];
    [accessCopy pixelFormat];
    [accessCopy sampleCount];
    [accessCopy placementSparsePageSize];
    if (device)
    {
      objc_msgSend_sparseTileSizeWithTextureType_pixelFormat_sampleCount_sparsePageSize_(device);
    }

    if ([accessCopy firstMipmapInTail] == levelCopy)
    {
      v17 = [*(&selfCopy->super.super.super.isa + v7) sparseTileSizeInBytesForSparsePageSize:{objc_msgSend(accessCopy, "placementSparsePageSize")}];
      if (regionCopy->var1.var0 + regionCopy->var0.var0 > (v17 + [accessCopy tailSizeInBytes] - 1) / v17)
      {
        [accessCopy firstMipmapInTail];
        _MTLMessageContextPush_();
      }

      if (regionCopy->var0.var1)
      {
        [accessCopy firstMipmapInTail];
        _MTLMessageContextPush_();
      }

      if (regionCopy->var1.var1 != 1)
      {
        [accessCopy firstMipmapInTail];
        _MTLMessageContextPush_();
      }

      if (regionCopy->var1.var2 + regionCopy->var0.var2 > (v23 - 1) / 0uLL)
      {
LABEL_33:
        _MTLMessageContextPush_();
      }
    }

    else
    {
      if (regionCopy->var1.var0 + regionCopy->var0.var0 > (v22 - 1) / 0uLL)
      {
        _MTLMessageContextPush_();
      }

      if (regionCopy->var1.var1 + regionCopy->var0.var1 > (*(&v22 + 1) - 1) / 0uLL)
      {
        _MTLMessageContextPush_();
      }

      if (regionCopy->var1.var2 + regionCopy->var0.var2 > (v23 - 1) / 0uLL)
      {
        goto LABEL_33;
      }
    }
  }
}

- (void)validateBufferAccess:(id)access region:(id *)region resourceSparsePageSize:(int64_t)size context:(_MTLMessageContext *)context
{
  v8 = [(MTLToolsDevice *)self->super.super._device sparseTileSizeInBytesForSparsePageSize:size];
  if (region->var1.var0 + region->var0.var0 > (v8 + [access length] - 1) / v8)
  {
    _MTLMessageContextPush_();
  }
}

- (void)validateBufferAccess:(id)access range:(_NSRange)range resourceSparsePageSize:(int64_t)size context:(_MTLMessageContext *)context
{
  length = range.length;
  location = range.location;
  v9 = [(MTLToolsDevice *)self->super.super._device sparseTileSizeInBytesForSparsePageSize:size];
  if (location + length > (v9 + [access length] - 1) / v9)
  {
    _MTLMessageContextPush_();
  }
}

- (void)validateHeapAccess:(id)access rangeOffset:(unint64_t)offset tileRegions:(id *)regions resourceSparsePageSize:(int64_t)size context:(_MTLMessageContext *)context
{
  v9 = regions->var1.var0 * [(MTLToolsDevice *)self->super.super._device sparseTileSizeInBytesForSparsePageSize:size]* regions->var1.var1 * regions->var1.var2;
  if (v9 + offset > [access size])
  {
    [access size];
    _MTLMessageContextPush_();
  }
}

- (void)validateCommitCommon:(_MTLMessageContext *)common commandBuffers:(const void *)buffers count:(unint64_t)count
{
  v51 = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = MTL4DebugCommandQueue;
  addedResidencySets = [(MTL4ToolsCommandQueue *)&v48 addedResidencySets];
  if (!count)
  {
    goto LABEL_52;
  }

  if (common->var0 > 0)
  {
    return;
  }

  v9 = addedResidencySets;
  v10 = 0;
  v36 = 0;
  v11 = 0;
  do
  {
    v12 = buffers[v11];
    if (!v12)
    {
      v31 = v11;
      _MTLMessageContextPush_();
    }

    v13 = v11 + 1;
    v14 = v11 + 1;
    if (v11 + 1 < count)
    {
      do
      {
        if (v12 == buffers[v14])
        {
          v31 = v11;
          v35 = v14;
          _MTLMessageContextPush_();
        }

        ++v14;
      }

      while (count != v14);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = v11;
      _MTLMessageContextPush_();
      goto LABEL_47;
    }

    v37 = v10;
    v38 = v11 + 1;
    if (([v12 isAllocatorGenerationValid] & 1) == 0)
    {
      v31 = v11;
      _MTLMessageContextPush_();
    }

    v39 = v11;
    usedResidencySets = [v12 usedResidencySets];
    for (i = *([v12 attachmentSet] + 16); i; i = *i)
    {
      v17 = i[2];
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v18 = [usedResidencySets countByEnumeratingWithState:&v44 objects:v50 count:{16, v32}];
      if (v18)
      {
        v19 = v18;
        v20 = *v45;
LABEL_16:
        v21 = 0;
        while (1)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(usedResidencySets);
          }

          if ([*(*(&v44 + 1) + 8 * v21) containsAllocation:v17])
          {
            break;
          }

          if (v19 == ++v21)
          {
            v19 = [usedResidencySets countByEnumeratingWithState:&v44 objects:v50 count:16];
            if (v19)
            {
              goto LABEL_16;
            }

            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v22 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v41;
LABEL_24:
          v25 = 0;
          while (1)
          {
            if (*v41 != v24)
            {
              objc_enumerationMutation(v9);
            }

            if ([*(*(&v40 + 1) + 8 * v25) containsAllocation:v17])
            {
              break;
            }

            if (v23 == ++v25)
            {
              v23 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
              if (v23)
              {
                goto LABEL_24;
              }

              goto LABEL_30;
            }
          }
        }

        else
        {
LABEL_30:
          v32 = [objc_msgSend(v17 "label")];
          v35 = v39;
          _MTLMessageContextPush_();
        }
      }
    }

    aggregatedEncoderMask = [v12 aggregatedEncoderMask];
    v27 = aggregatedEncoderMask;
    if (v37)
    {
      v28 = v39;
      v13 = v38;
      if ((aggregatedEncoderMask & 8) != 0)
      {
        if ([objc_msgSend(v12 "suspendResumeRenderPassInfo")])
        {
          goto LABEL_38;
        }

        v33 = v36;
        v35 = v39;
      }

      else
      {
        v33 = v39;
        v35 = v36;
      }
    }

    else
    {
      v28 = v39;
      v13 = v38;
      if ((aggregatedEncoderMask & 8) == 0)
      {
LABEL_38:
        if ((v27 & 0x10) != 0)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      v33 = v39;
    }

    _MTLMessageContextPush_();
    if ((v27 & 0x10) != 0)
    {
LABEL_43:
      [v12 suspendResumeRenderPassInfo];
      v10 = v29;
      v36 = v28;
      goto LABEL_44;
    }

LABEL_39:
    v36 = 0;
    v10 = 0;
LABEL_44:
    currentState = [v12 currentState];
    if (currentState == 1 || currentState == 3)
    {
      _MTLMessageContextPush_();
      [v12 setCurrentState:{3, v28}];
    }

    else
    {
      [v12 setCurrentState:{3, v34}];
    }

LABEL_47:
    v11 = v13;
  }

  while (v13 != count);
  if (v10)
  {
LABEL_52:
    _MTLMessageContextPush_();
  }
}

- (uint64_t)updateTextureMappings:(void *)a1 heap:(void *)a2 operations:count:.cold.2(void *a1, void *a2)
{
  [a1 maxCompatiblePlacementSparsePageSize];
  [MTLSparsePageSizeString() UTF8String];
  [a2 placementSparsePageSize];
  v5 = [MTLSparsePageSizeString() UTF8String];
  return OUTLINED_FUNCTION_7(v5, v3, @"maxCompatiblePlacementSparsePageSize of the heap (%s) must be at least as large as the placementSparsePageSize of the texture (%s)");
}

- (uint64_t)updateBufferMappings:(void *)a1 heap:(void *)a2 operations:count:.cold.2(void *a1, void *a2)
{
  [a1 maxCompatiblePlacementSparsePageSize];
  [MTLSparsePageSizeString() UTF8String];
  [a2 placementSparsePageSize];
  v5 = [MTLSparsePageSizeString() UTF8String];
  return OUTLINED_FUNCTION_7(v5, v3, @"maxCompatiblePlacementSparsePageSize of the heap (%s) must be at least as large as the placementSparsePageSize of the buffer (%s)");
}

@end