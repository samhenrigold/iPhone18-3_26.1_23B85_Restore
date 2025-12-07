@interface CaptureMTLResourceStateCommandEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLResourceStateCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer;
- (NSString)description;
- (unint64_t)streamReference;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)copyMappingStateFromTexture:(id)texture mipLevel:(unint64_t)level slice:(unint64_t)slice toBuffer:(id)buffer offset:(unint64_t)offset numTiles:(unint64_t)tiles;
- (void)dealloc;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)signpost;
- (void)insertSplit;
- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
- (void)touch;
- (void)updateFence:(id)fence;
- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions;
- (void)waitForFence:(id)fence;
@end

@implementation CaptureMTLResourceStateCommandEncoder

- (void)waitForFence:(id)fence
{
  fenceCopy = fence;
  [fenceCopy touch];
  if (fenceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:fenceCopy];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTLResourceStateCommandEncoderSPI *)baseObject waitForFence:baseObject];

  v8 = v20;
  *(v20 + 8) = -15781;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [fenceCopy traceStream];
  if (traceStream2)
  {
    v16 = *traceStream2;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice
{
  mappingCopy = mapping;
  [mappingCopy touch];
  if (mappingCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:mappingCopy];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = self->_baseObject;
  baseObject = [mappingCopy baseObject];
  v16 = *&region->var0.var2;
  v30[0] = *&region->var0.var0;
  v30[1] = v16;
  v30[2] = *&region->var1.var1;
  [(MTLResourceStateCommandEncoderSPI *)baseObject updateTextureMapping:baseObject mode:mode region:v30 mipLevel:level slice:slice];

  v17 = *(&v31 + 1);
  v18 = v32;
  *(v32 + 8) = -15783;
  v19 = *(v17 + 24);
  v20 = BYTE10(v33);
  ++BYTE10(v33);
  Bytes = GTTraceMemPool_allocateBytes(v19, *(&v32 + 1), v20 | 0x5800000000);
  *(v18 + 13) = v20;
  traceStream = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [mappingCopy traceStream];
  if (traceStream2)
  {
    v25 = *traceStream2;
  }

  else
  {
    v25 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v25;
  *(Bytes + 4) = mode;
  v26 = *&region->var0.var2;
  v27 = *&region->var1.var1;
  *(Bytes + 40) = *&region->var0.var0;
  *(Bytes + 56) = v26;
  *(Bytes + 72) = v27;
  *(Bytes + 11) = level;
  *(Bytes + 12) = slice;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)updateTextureMapping:(id)mapping mode:(unint64_t)mode indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  mappingCopy = mapping;
  bufferCopy = buffer;
  [mappingCopy touch];
  if (mappingCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:mappingCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v13 = self->_retainedObjects;
    if (v13)
    {
      [(NSMutableSet *)v13 addObject:bufferCopy];
    }
  }

  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v30);
  baseObject = self->_baseObject;
  baseObject = [mappingCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLResourceStateCommandEncoderSPI *)baseObject updateTextureMapping:baseObject mode:mode indirectBuffer:baseObject2 indirectBufferOffset:offset];

  v17 = v31;
  *(v31 + 8) = -15784;
  v18 = BYTE9(v32);
  if (BYTE9(v32) > 0x18uLL)
  {
    v20 = *(*(&v30 + 1) + 24);
    v21 = BYTE10(v32);
    ++BYTE10(v32);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v31 + 1), v21 | 0x2800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v32));
    BYTE9(v32) += 40;
  }

  *(v17 + 13) = v18;
  traceStream = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [mappingCopy traceStream];
  if (traceStream2)
  {
    v25 = *traceStream2;
  }

  else
  {
    v25 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v27 = *traceStream3;
  }

  else
  {
    v27 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = mode;
  *(v19 + 3) = v27;
  *(v19 + 4) = offset;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v32);
  *(v31 + 15) |= 8u;
}

- (void)updateFence:(id)fence
{
  fenceCopy = fence;
  [fenceCopy touch];
  if (fenceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:fenceCopy];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTLResourceStateCommandEncoderSPI *)baseObject updateFence:baseObject];

  v8 = v20;
  *(v20 + 8) = -15785;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [fenceCopy traceStream];
  if (traceStream2)
  {
    v16 = *traceStream2;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)pushDebugGroup:(id)group
{
  groupCopy = group;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLResourceStateCommandEncoderSPI *)self->_baseObject pushDebugGroup:groupCopy];
  v5 = v18;
  *(v18 + 8) = -15786;
  v6 = BYTE9(v19);
  if (BYTE9(v19) > 0x30uLL)
  {
    v8 = *(*(&v17 + 1) + 24);
    v9 = BYTE10(v19);
    ++BYTE10(v19);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v18 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v19));
    BYTE9(v19) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [groupCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [groupCopy UTF8String];
    v14 = strlen([groupCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v17, uTF8String2, v14 + 1);
  }

  *v7 = var0;
  v7[8] = uTF8String;
  *(v7 + 9) = 0;
  *(v7 + 3) = 0;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)popDebugGroup
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLResourceStateCommandEncoderSPI *)self->_baseObject popDebugGroup];
  v3 = v13;
  *(v13 + 8) = -15787;
  v4 = BYTE9(v14);
  if (BYTE9(v14) > 0x38uLL)
  {
    v6 = *(*(&v12 + 1) + 24);
    v7 = BYTE10(v14);
    ++BYTE10(v14);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v13 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v14));
    BYTE9(v14) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v5 = var0;
  s();
  *v10 = v11;
  *(v10 + 8) = BYTE8(v14);
  *(v13 + 15) |= 8u;
}

- (void)insertSplit
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLResourceStateCommandEncoder_insertSplit", "Command Encoder Insert Split", 0, 0);
  baseObject = self->_baseObject;

  [(MTLResourceStateCommandEncoderSPI *)baseObject insertSplit];
}

- (void)insertDebugSignpost:(id)signpost
{
  signpostCopy = signpost;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLResourceStateCommandEncoderSPI *)self->_baseObject insertDebugSignpost:signpostCopy];
  v5 = v18;
  *(v18 + 8) = -15788;
  v6 = BYTE9(v19);
  if (BYTE9(v19) > 0x30uLL)
  {
    v8 = *(*(&v17 + 1) + 24);
    v9 = BYTE10(v19);
    ++BYTE10(v19);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v18 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v19));
    BYTE9(v19) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [signpostCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [signpostCopy UTF8String];
    v14 = strlen([signpostCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v17, uTF8String2, v14 + 1);
  }

  *v7 = var0;
  v7[8] = uTF8String;
  *(v7 + 9) = 0;
  *(v7 + 3) = 0;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)endEncoding
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLResourceStateCommandEncoderSPI *)self->_baseObject endEncoding];
  v3 = v13;
  *(v13 + 8) = -15789;
  v4 = BYTE9(v14);
  if (BYTE9(v14) > 0x38uLL)
  {
    v6 = *(*(&v12 + 1) + 24);
    v7 = BYTE10(v14);
    ++BYTE10(v14);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v13 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v14));
    BYTE9(v14) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v5 = var0;
  s();
  *v10 = v11;
  *(v10 + 8) = BYTE8(v14);
  *(v13 + 15) |= 8u;
}

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -15790;
  v4 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v6 = *(*(&v13 + 1) + 24);
    v7 = BYTE10(v15);
    ++BYTE10(v15);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v14 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v5 = var0;
  s();
  *v10 = v11;
  *(v10 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v12.receiver = self;
  v12.super_class = CaptureMTLResourceStateCommandEncoder;
  [(CaptureMTLResourceStateCommandEncoder *)&v12 dealloc];
}

- (void)copyMappingStateFromTexture:(id)texture mipLevel:(unint64_t)level slice:(unint64_t)slice toBuffer:(id)buffer offset:(unint64_t)offset numTiles:(unint64_t)tiles
{
  textureCopy = texture;
  bufferCopy = buffer;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:bufferCopy];
    }
  }

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLResourceStateCommandEncoderSPI *)baseObject copyMappingStateFromTexture:baseObject mipLevel:level slice:slice toBuffer:baseObject2 offset:offset numTiles:tiles];

  v21 = v35;
  *(v35 + 8) = -15792;
  v22 = BYTE9(v36);
  if (BYTE9(v36) > 8uLL)
  {
    v24 = *(*(&v34 + 1) + 24);
    v25 = BYTE10(v36);
    ++BYTE10(v36);
    v23 = GTTraceMemPool_allocateBytes(v24, *(&v35 + 1), v25 | 0x3800000000) + 16;
    v22 = v25;
  }

  else
  {
    v23 = (v21 + BYTE9(v36));
    BYTE9(v36) += 56;
  }

  *(v21 + 13) = v22;
  traceStream = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v29 = *traceStream2;
  }

  else
  {
    v29 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v31 = *traceStream3;
  }

  else
  {
    v31 = 0;
  }

  *v23 = var0;
  *(v23 + 1) = v29;
  *(v23 + 2) = level;
  *(v23 + 3) = slice;
  *(v23 + 4) = v31;
  *(v23 + 5) = offset;
  *(v23 + 6) = tiles;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v36);
  *(v35 + 15) |= 8u;
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLResourceStateCommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
  v7 = v17;
  *(v17 + 8) = -14952;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x28uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = stages;
  *(v9 + 2) = beforeStages;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLResourceStateCommandEncoderSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -15794;
  v6 = BYTE9(v19);
  if (BYTE9(v19) > 0x30uLL)
  {
    v8 = *(*(&v17 + 1) + 24);
    v9 = BYTE10(v19);
    ++BYTE10(v19);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v18 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v19));
    BYTE9(v19) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [labelCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [labelCopy UTF8String];
    v14 = strlen([labelCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v17, uTF8String2, v14 + 1);
  }

  *v7 = var0;
  v7[8] = uTF8String;
  *(v7 + 9) = 0;
  *(v7 + 3) = 0;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLResourceStateCommandEncoderSPI *)baseObject conformsToProtocol:protocolCopy];

  if (&OBJC_PROTOCOL___CaptureMTLObject == protocolCopy)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = CaptureMTLResourceStateCommandEncoder;
  v3 = [(CaptureMTLResourceStateCommandEncoder *)&v7 description];
  v4 = [(MTLResourceStateCommandEncoderSPI *)self->_baseObject description];
  v5 = [NSString stringWithFormat:@"%@ -> %@", v3, v4];

  return v5;
}

- (unint64_t)streamReference
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    return traceStream->var0;
  }

  else
  {
    return 0;
  }
}

- (void)touch
{
  traceStream = self->_traceStream;
  v3 = mach_absolute_time();
  if (traceStream)
  {
    v4 = atomic_load(&traceStream[1].var1);
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong(&traceStream[1].var1, &v5, v4 & 0x3F | v3 & 0xFFFFFFFFFFFFFFC0);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }
}

- (void)moveTextureMappingsFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  textureCopy = texture;
  toTextureCopy = toTexture;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLResourceStateCommandEncoder_moveTextureMappingsFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin", "Fast Storage", 0, 0);
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [toTextureCopy touch];
  if (toTextureCopy)
  {
    v18 = self->_retainedObjects;
    if (v18)
    {
      [(NSMutableSet *)v18 addObject:toTextureCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [toTextureCopy baseObject];
  v27 = *&origin->var0;
  var2 = origin->var2;
  v25 = *&size->var0;
  v26 = size->var2;
  v24 = *destinationOrigin;
  [(MTLResourceStateCommandEncoderSPI *)baseObject moveTextureMappingsFromTexture:baseObject sourceSlice:slice sourceLevel:level sourceOrigin:&v27 sourceSize:&v25 toTexture:baseObject2 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v24];
}

- (void)updateTextureMappings:(id)mappings mode:(unint64_t)mode regions:(id *)regions mipLevels:(const unint64_t *)levels slices:(const unint64_t *)slices numRegions:(unint64_t)numRegions
{
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  traceContext = self->_traceContext;
  mappingsCopy = mappings;
  GTTraceContext_pushEncoderWithStream(traceContext, &v31);
  baseObject = self->_baseObject;
  baseObject = [mappingsCopy baseObject];
  [(MTLResourceStateCommandEncoderSPI *)baseObject updateTextureMappings:baseObject mode:mode regions:regions mipLevels:levels slices:slices numRegions:numRegions];

  v18 = v32;
  *(v32 + 8) = -15782;
  v19 = BYTE9(v33);
  if (BYTE9(v33) > 0x18uLL)
  {
    v21 = *(*(&v31 + 1) + 24);
    v22 = BYTE10(v33);
    ++BYTE10(v33);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v32 + 1), v22 | 0x2800000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v33));
    BYTE9(v33) += 40;
  }

  *(v18 + 13) = v19;
  traceStream = [(CaptureMTLResourceStateCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [mappingsCopy traceStream];

  if (traceStream2)
  {
    traceStream2 = *traceStream2;
  }

  v26 = TransferBytes(&v31, regions, (48 * numRegions));
  v27 = TransferBytes(&v31, levels, (8 * numRegions));
  v28 = TransferBytes(&v31, slices, (8 * numRegions));
  *v20 = var0;
  *(v20 + 1) = traceStream2;
  *(v20 + 2) = mode;
  *(v20 + 3) = numRegions;
  v20[32] = v26;
  v20[33] = v27;
  v20[34] = v28;
  *(v20 + 35) = 0;
  v20[39] = 0;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (CaptureMTLResourceStateCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v20.receiver = self;
  v20.super_class = CaptureMTLResourceStateCommandEncoder;
  v9 = [(CaptureMTLResourceStateCommandEncoder *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [bufferCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    traceContext = [bufferCopy traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openEncoderStream(traceContext, v14, *([bufferCopy traceStream] + 3));

    retainedObjects = [bufferCopy retainedObjects];
    retainedObjects = v10->_retainedObjects;
    v10->_retainedObjects = retainedObjects;

    v17 = v10->_retainedObjects;
    v18 = DEVICEOBJECT(v10->_baseObject);
    [(NSMutableSet *)v17 addObject:v18];
  }

  return v10;
}

@end