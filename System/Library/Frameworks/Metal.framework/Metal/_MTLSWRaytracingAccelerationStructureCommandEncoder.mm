@interface _MTLSWRaytracingAccelerationStructureCommandEncoder
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into;
- (_MTLSWRaytracingAccelerationStructureCommandEncoder)initWithCommandBuffer:(id)buffer;
- (_MTLSWRaytracingAccelerationStructureCommandEncoder)initWithCommandBuffer:(id)buffer descriptor:(id)descriptor;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (void)beginBVHSubstream;
- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor;
- (void)endBVHSubstream;
- (void)endEncoding;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options;
- (void)serializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)setLabel:(id)label;
- (void)substreamSynchronizeAccelerationStructures:(id)structures access:(unint64_t)access;
- (void)substreamSynchronizeDescriptor:(id)descriptor access:(unint64_t)access;
- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset sizeDataType:(unint64_t)type;
- (void)writeDeserializedAccelerationStructureSize:(id)size serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizeBufferOffset:(unint64_t)bufferOffset;
- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)sizes serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizesBufferOffset:(unint64_t)bufferOffset;
- (void)writeGenericBVHStructureOfAccelerationStructure:(id)structure headerBuffer:(id)buffer headerBufferOffset:(unint64_t)offset innerNodeBuffer:(id)nodeBuffer innerNodeBufferOffset:(unint64_t)bufferOffset leafNodeBuffer:(id)leafNodeBuffer leafNodeBufferOffset:(unint64_t)nodeBufferOffset primitiveBuffer:(id)self0 primitiveBufferOffset:(unint64_t)self1 geometryBuffer:(id)self2 geometryOffset:(unint64_t)self3 instanceTransformBuffer:(id)self4 instanceTransformOffset:(unint64_t)self5 controlPointBuffer:(id)self6 controlPointBufferOffset:(unint64_t)self7;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizesBufferOffset:(unint64_t)offset;
- (void)writeGeometryOfAccelerationStructure:(id)structure toBuffer:(id)buffer geometryBufferOffset:(unint64_t)offset;
- (void)writeGeometrySizeOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset;
- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset;
@end

@implementation _MTLSWRaytracingAccelerationStructureCommandEncoder

- (void)substreamSynchronizeDescriptor:(id)descriptor access:(unint64_t)access
{
  v7 = objc_opt_class();
  if (![v7 isSubclassOfClass:objc_opt_class()])
  {
    v9 = objc_opt_class();
    if (![v9 isSubclassOfClass:objc_opt_class()])
    {
      return;
    }

    goto LABEL_7;
  }

  if (([descriptor instanceDescriptorType] - 3) <= 1)
  {
LABEL_7:
    [_MTLSWRaytracingAccelerationStructureCommandEncoder substreamSynchronizeDescriptor:? access:?];
    return;
  }

  instancedAccelerationStructures = [descriptor instancedAccelerationStructures];

  [(_MTLSWRaytracingAccelerationStructureCommandEncoder *)self substreamSynchronizeAccelerationStructures:instancedAccelerationStructures access:access];
}

- (void)substreamSynchronizeAccelerationStructures:(id)structures access:(unint64_t)access
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [structures countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(structures);
        }

        progressBins = self->_progressBins;
        buffer = [*(*(&v14 + 1) + 8 * v10) buffer];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __105___MTLSWRaytracingAccelerationStructureCommandEncoder_substreamSynchronizeAccelerationStructures_access___block_invoke;
        v13[3] = &unk_1E6EEB998;
        v13[4] = self;
        MTLProgressBinsSynchronizeBufferAccess(progressBins, buffer, access, v13);
        ++v10;
      }

      while (v8 != v10);
      v8 = [structures countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)beginBVHSubstream
{
  if (self->_virtualSubstreamsEnabled)
  {
    virtualSubstreamOpen = self->_virtualSubstreamOpen;
    computeEncoder = self->_computeEncoder;
    if (virtualSubstreamOpen)
    {

      [(MTLComputeCommandEncoderSPI *)computeEncoder nextVirtualSubstream];
    }

    else
    {
      [(MTLComputeCommandEncoderSPI *)computeEncoder beginVirtualSubstream];
      self->_virtualSubstreamOpen = 1;
    }
  }
}

- (_MTLSWRaytracingAccelerationStructureCommandEncoder)initWithCommandBuffer:(id)buffer
{
  v10.receiver = self;
  v10.super_class = _MTLSWRaytracingAccelerationStructureCommandEncoder;
  v4 = [(_MTLObjectWithLabel *)&v10 init];
  if (v4)
  {
    v4->_device = [buffer device];
    v4->_commandBuffer = buffer;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77___MTLSWRaytracingAccelerationStructureCommandEncoder_initWithCommandBuffer___block_invoke;
    block[3] = &unk_1E6EEA858;
    block[4] = v4;
    if ([_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:]::onceToken != -1)
    {
      dispatch_once(&[_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:]::onceToken, block);
    }

    v5 = objc_alloc_init(MTLComputePassDescriptor);
    v6 = v5;
    if ([_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:]::useConcurrentDispatch == 1)
    {
      [(MTLComputePassDescriptor *)v5 setDispatchType:1];
    }

    if ([_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:]::numSubstreams >= 2)
    {
      if ([_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:]::numSubstreams >= 3)
      {
        v7 = 3;
      }

      else
      {
        v7 = [_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:]::numSubstreams;
      }

      MTLProgressBinsMake(v7, 0x80u, 547.61, 0.00035879, 1.9567, 0.00045325, 0.1188, 0.0000070741);
    }

    [(MTLComputePassDescriptor *)v6 setUsedForRaytracingEmulation:1];
    v4->_computeEncoder = [buffer computeCommandEncoderWithDescriptor:v6];
  }

  return v4;
}

- (_MTLSWRaytracingAccelerationStructureCommandEncoder)initWithCommandBuffer:(id)buffer descriptor:(id)descriptor
{
  v11.receiver = self;
  v11.super_class = _MTLSWRaytracingAccelerationStructureCommandEncoder;
  v6 = [(_MTLObjectWithLabel *)&v11 init];
  if (v6)
  {
    v6->_device = [buffer device];
    v6->_commandBuffer = buffer;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88___MTLSWRaytracingAccelerationStructureCommandEncoder_initWithCommandBuffer_descriptor___block_invoke;
    block[3] = &unk_1E6EEA858;
    block[4] = v6;
    if ([_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:descriptor:]::onceToken != -1)
    {
      dispatch_once(&[_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:descriptor:]::onceToken, block);
    }

    if (-[_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:descriptor:]::numSubstreams >= 2 && [descriptor enableSubstreams])
    {
      if ([_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:descriptor:]::numSubstreams >= 3)
      {
        v7 = 3;
      }

      else
      {
        v7 = [_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:descriptor:]::numSubstreams;
      }

      MTLProgressBinsMake(v7, 0x80u, 547.61, 0.00035879, 1.9567, 0.00045325, 0.1188, 0.0000070741);
    }

    v8 = [descriptor convertToComputePassDescriptorWithConcurrentDispatch:-[_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:descriptor:]::useConcurrentDispatch];
    [v8 setUsedForRaytracingEmulation:1];
    v6->_computeEncoder = [(MTLCommandBuffer *)v6->_commandBuffer computeCommandEncoderWithDescriptor:v8];
  }

  return v6;
}

- (void)dealloc
{
  progressBins = self->_progressBins;
  if (progressBins)
  {
    MTLAccelerationStructureCommandProgressBinsInternal::~MTLAccelerationStructureCommandProgressBinsInternal(progressBins);
    MEMORY[0x1865FF210]();
  }

  v4.receiver = self;
  v4.super_class = _MTLSWRaytracingAccelerationStructureCommandEncoder;
  [(_MTLObjectWithLabel *)&v4 dealloc];
}

- (void)endEncoding
{
  [(_MTLSWRaytracingAccelerationStructureCommandEncoder *)self endBVHSubstream];
  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder endEncoding];

  self->_device = 0;
  self->_commandBuffer = 0;
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  endEncodingAndRetrieveProgramAddressTable = [(MTLComputeCommandEncoderSPI *)self->_computeEncoder endEncodingAndRetrieveProgramAddressTable];

  self->_device = 0;
  self->_commandBuffer = 0;
  return endEncodingAndRetrieveProgramAddressTable;
}

- (void)setLabel:(id)label
{
  v5.receiver = self;
  v5.super_class = _MTLSWRaytracingAccelerationStructureCommandEncoder;
  [(_MTLObjectWithLabel *)&v5 setLabel:?];
  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setLabel:label];
}

- (void)endBVHSubstream
{
  if (self->_virtualSubstreamOpen)
  {
    [(MTLComputeCommandEncoderSPI *)self->_computeEncoder endVirtualSubstream];
    self->_virtualSubstreamOpen = 0;
    progressBins = self->_progressBins;
    if (progressBins)
    {
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(progressBins + 12);
      *(progressBins + 3) = 0;
      *(progressBins + 4) = 0;
      *(progressBins + 21) = 0;
      *(progressBins + 35) = 0;
    }
  }
}

- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset
{
  OUTLINED_FUNCTION_14_0();
  isInstanceDescriptor = [v10 isInstanceDescriptor];
  if (isInstanceDescriptor)
  {
    [instanceCountBuffer endBVHSubstream];
  }

  else
  {
    [instanceCountBuffer beginBVHSubstream];
    v12 = *(instanceCountBuffer + 48);
    if (v12)
    {
      v27 = *(instanceCountBuffer + 40);
      PrimitiveCountFromDescriptor = MTLProgressBinsGetPrimitiveCountFromDescriptor(v7);
      v29 = *(v12 + 8);
      v30 = *(v12 + 12);
      if (*(v12 + 40) < 2uLL)
      {
        v31 = 0;
      }

      else
      {
        do
        {
          OUTLINED_FUNCTION_41();
          if (v34)
          {
            v31 = v33;
          }
        }

        while (v32 != v33 + 1);
      }

      *(v12 + 42) = v31;
      *(v12 + 44) = v29 + (v30 * PrimitiveCountFromDescriptor);
      [v27 setSubstream:v31];
      v35 = *(instanceCountBuffer + 48);
      [v8 buffer];
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_52();
      v48 = __127___MTLSWRaytracingAccelerationStructureCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset___block_invoke;
      v49 = &unk_1E6EEB998;
      v50 = instanceCountBuffer;
      MTLProgressBinsSynchronizeBufferAccess(v35, v36, 1, v47);
      [OUTLINED_FUNCTION_27() substreamSynchronizeDescriptor:? access:?];
      OUTLINED_FUNCTION_18();
      v44 = __127___MTLSWRaytracingAccelerationStructureCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset___block_invoke_2;
      v45 = &unk_1E6EEB998;
      v46 = instanceCountBuffer;
      MTLProgressBinsSynchronizeBufferAccess(v37, buffer, 1, v43);
    }
  }

  v13 = objc_autoreleasePoolPush();
  objc_opt_class();
  objc_opt_class();
  v41 = isInstanceDescriptor;
  v39 = v8;
  if ([OUTLINED_FUNCTION_46() isSubclassOfClass:?])
  {
    if ([(MTLAccelerationStructureDescriptor *)v7 instanceDescriptorType]== 2 || [(MTLAccelerationStructureDescriptor *)v7 instanceDescriptorType]== 4)
    {
      v14 = 56 * [(MTLAccelerationStructureDescriptor *)v7 instanceCount];
    }

    else
    {
      v14 = 24 * [(MTLAccelerationStructureDescriptor *)v7 instanceCount];
    }
  }

  else
  {
    objc_opt_class();
    objc_opt_class();
    if (![OUTLINED_FUNCTION_46() isSubclassOfClass:?])
    {
      v14 = 0;
      v17 = 0;
      goto LABEL_15;
    }

    instanceDescriptorType = [(MTLAccelerationStructureDescriptor *)v7 instanceDescriptorType];
    maxInstanceCount = [(MTLAccelerationStructureDescriptor *)v7 maxInstanceCount];
    if (instanceDescriptorType == 4)
    {
      v14 = 56 * maxInstanceCount;
    }

    else
    {
      v14 = 24 * maxInstanceCount;
    }
  }

  v17 = v7;
LABEL_15:
  context = objc_autoreleasePoolPush();
  v18 = MTLBVHDescriptorForMTLAccelerationStructureDescriptor(v7);
  gPUBVHBuilder = [*(instanceCountBuffer + 24) GPUBVHBuilder];
  v20 = [gPUBVHBuilder getBuildScratchBufferSizeForDescriptor:v18];
  v21 = [gPUBVHBuilder getEncodeMTLSWBVHScratchBufferSizeForDescriptor:v7 bvhDescriptor:v18];
  if (v20 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  v23 = (v22 + 255) & 0xFFFFFFFFFFFFFF00;
  v42 = instanceCountBuffer;
  if (v17)
  {
    [gPUBVHBuilder getMTLInstanceBoundingBoxesWithEncoder:*(instanceCountBuffer + 40) descriptor:v17 boundingBoxBuffer:buffer boundingBoxBufferOffset:v23 + offset];
    v24 = [(NSArray *)[(MTLBVHDescriptor *)v18 geometryDescriptors] objectAtIndexedSubscript:0];
    [objc_msgSend(objc_msgSend(v24 "boundingBoxBuffers")];
    [objc_msgSend(objc_msgSend(v24 "boundingBoxBuffers")];
  }

  objc_opt_class();
  objc_opt_class();
  if ([OUTLINED_FUNCTION_46() isSubclassOfClass:?])
  {
    instanceCountBuffer = [(MTLAccelerationStructureDescriptor *)v7 instanceCountBuffer];
    [OUTLINED_FUNCTION_24() buildGenericBVHWithEncoder:instanceCountBuffer descriptor:-[MTLAccelerationStructureDescriptor instanceCountBufferOffset](v7 outputBuffer:"instanceCountBufferOffset") outputBufferOffset:? scratchBuffer:? scratchBufferOffset:? primitiveCountBuffer:? primitiveCountBufferOffset:?];
  }

  else
  {
    [OUTLINED_FUNCTION_24() buildGenericBVHWithEncoder:? descriptor:? outputBuffer:? outputBufferOffset:? scratchBuffer:? scratchBufferOffset:?];
  }

  [&OBJC_IVAR___MTLIOAccelResourcePool__priv encodeMTLSWBVHWithEncoder:*(v42 + 40) descriptor:v7 bvhDescriptor:v17 outputBuffer:objc_msgSend(v39 outputBufferOffset:"buffer") genericBVHBuffer:objc_msgSend(v39 genericBVHBufferOffset:"bufferOffset") scratchBuffer:instanceCountBuffer scratchBufferOffset:((v14 + v23 + 255) & 0xFFFFFFFFFFFFFF00) + offset gpuResourceID:instanceCountBuffer accelerationStructureUniqueIdentifier:{offset, objc_msgSend(v39, "gpuResourceID"), objc_msgSend(v39, "accelerationStructureUniqueIdentifier")}];
  objc_autoreleasePoolPop(context);
  objc_autoreleasePoolPop(v13);
  if ((v41 & 1) == 0)
  {
    v25 = *(v42 + 48);
    if (v25)
    {
      v26 = MTLProgressBinsUpdate(v25);
      if ((v26 & 0x80000000) == 0 && (*(v42 + 56) & 1) == 0)
      {
        [*(v42 + 40) signalProgress:v26];
      }
    }
  }
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  [v6 beginBVHSubstream];
  v7 = *(v5 + 48);
  if (v7)
  {
    v12 = OUTLINED_FUNCTION_8_0(v7);
    if (v14)
    {
      OUTLINED_FUNCTION_7_0();
      do
      {
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_28();
      }

      while (!v15);
    }

    OUTLINED_FUNCTION_11_0(v10, v11, v12, v13);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    v16 = OUTLINED_FUNCTION_12_0();
    MTLProgressBinsSynchronizeBufferAccess(v16, v17, 0, v18);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_9_0();
    MTLProgressBinsSynchronizeBufferAccess(v19, v20, 1, v21);
  }

  [*(v5 + 24) GPUBVHBuilder];
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_38();
  [OUTLINED_FUNCTION_2_1() writeCompactedMTLSWBVHSizeWithEncoder:? BVHBuffer:? BVHBufferOffset:? toBuffer:? sizeBufferOffset:? sizeDataType:?];
  v8 = *(v5 + 48);
  if (v8)
  {
    v9 = MTLProgressBinsUpdate(v8);
    if ((v9 & 0x80000000) == 0 && (*(v5 + 56) & 1) == 0)
    {
      OUTLINED_FUNCTION_42(v9);
    }
  }

  OUTLINED_FUNCTION_15_0();
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset sizeDataType:(unint64_t)type
{
  OUTLINED_FUNCTION_16();
  v31 = v9;
  v32 = v10;
  OUTLINED_FUNCTION_14_0();
  [v11 beginBVHSubstream];
  v12 = *(v6 + 48);
  if (v12)
  {
    v17 = OUTLINED_FUNCTION_8_0(v12);
    if (v19)
    {
      OUTLINED_FUNCTION_7_0();
      do
      {
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_28();
      }

      while (!v20);
    }

    OUTLINED_FUNCTION_11_0(v15, v16, v17, v18);
    v21 = *(v6 + 48);
    [v8 buffer];
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    v29 = __124___MTLSWRaytracingAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset_sizeDataType___block_invoke;
    v30 = &unk_1E6EEB998;
    OUTLINED_FUNCTION_19();
    MTLProgressBinsSynchronizeBufferAccess(v21, v22, 0, v23);
    OUTLINED_FUNCTION_0_7();
    v26 = __124___MTLSWRaytracingAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset_sizeDataType___block_invoke_2;
    v27 = &unk_1E6EEB998;
    v28 = v6;
    MTLProgressBinsSynchronizeBufferAccess(v24, v7, 1, &v25);
  }

  [*(v6 + 24) GPUBVHBuilder];
  [v8 buffer];
  [v8 bufferOffset];
  [OUTLINED_FUNCTION_31() writeCompactedMTLSWBVHSizeWithEncoder:? BVHBuffer:? BVHBufferOffset:? toBuffer:? sizeBufferOffset:? sizeDataType:?];
  v13 = *(v6 + 48);
  if (v13)
  {
    v14 = MTLProgressBinsUpdate(v13);
    if ((v14 & 0x80000000) == 0 && (*(v6 + 56) & 1) == 0)
    {
      [*(v6 + 40) signalProgress:v14];
    }
  }

  OUTLINED_FUNCTION_15_0();
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset
{
  [(_MTLSWRaytracingAccelerationStructureCommandEncoder *)self beginBVHSubstream];
  progressBins = self->_progressBins;
  if (progressBins)
  {
    destinationCopy = destination;
    v17 = OUTLINED_FUNCTION_45();
    PrimitiveCountFromDescriptor = MTLProgressBinsGetPrimitiveCountFromDescriptor(v17);
    v19 = *(progressBins + 4);
    v20 = *(progressBins + 5);
    if (*(progressBins + 20) < 2uLL)
    {
      v21 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_53();
      do
      {
        OUTLINED_FUNCTION_41();
        if (v24)
        {
          v21 = v23;
        }
      }

      while (v22 != v23 + 1);
    }

    *&v25 = OUTLINED_FUNCTION_44(PrimitiveCountFromDescriptor, v21, v19, v20);
    [destination setSubstream:v25];
    v26 = self->_progressBins;
    [structure buffer];
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_52();
    v39 = __139___MTLSWRaytracingAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset___block_invoke;
    v40 = &unk_1E6EEB998;
    selfCopy = self;
    MTLProgressBinsSynchronizeBufferAccess(v26, v27, 0, v38);
    v28 = self->_progressBins;
    [destinationCopy buffer];
    OUTLINED_FUNCTION_18();
    v35 = __139___MTLSWRaytracingAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset___block_invoke_2;
    v36 = &unk_1E6EEB998;
    selfCopy2 = self;
    v29 = v28;
    destination = destinationCopy;
    MTLProgressBinsSynchronizeBufferAccess(v29, v30, 1, v34);
    v31 = self->_progressBins;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __139___MTLSWRaytracingAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset___block_invoke_3;
    v33[3] = &unk_1E6EEB998;
    v33[4] = self;
    MTLProgressBinsSynchronizeBufferAccess(v31, buffer, 1, v33);
    [(_MTLSWRaytracingAccelerationStructureCommandEncoder *)self substreamSynchronizeDescriptor:descriptor access:0];
  }

  context = objc_autoreleasePoolPush();
  [-[MTLDevice GPUBVHBuilder](self->_device "GPUBVHBuilder")];
  objc_autoreleasePoolPop(context);
  v14 = self->_progressBins;
  if (v14)
  {
    v15 = MTLProgressBinsUpdate(v14);
    if ((v15 & 0x80000000) == 0 && !self->_virtualSubstreamsEnabled)
    {
      [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v15];
    }
  }
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options
{
  [(_MTLSWRaytracingAccelerationStructureCommandEncoder *)self beginBVHSubstream];
  progressBins = self->_progressBins;
  if (progressBins)
  {
    context = options;
    computeEncoder = self->_computeEncoder;
    PrimitiveCountFromDescriptor = MTLProgressBinsGetPrimitiveCountFromDescriptor(descriptor);
    v20 = *(progressBins + 4);
    v21 = *(progressBins + 5);
    if (*(progressBins + 20) < 2uLL)
    {
      v22 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_53();
      do
      {
        OUTLINED_FUNCTION_41();
        if (v25)
        {
          v22 = v24;
        }
      }

      while (v23 != v24 + 1);
    }

    *&v26 = OUTLINED_FUNCTION_44(PrimitiveCountFromDescriptor, v22, v20, v21);
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v26];
    v27 = self->_progressBins;
    [structure buffer];
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_52();
    v37 = __147___MTLSWRaytracingAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options___block_invoke;
    v38 = &unk_1E6EEB998;
    selfCopy = self;
    MTLProgressBinsSynchronizeBufferAccess(v27, v28, 0, v36);
    v29 = self->_progressBins;
    buffer = [destination buffer];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __147___MTLSWRaytracingAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options___block_invoke_2;
    v35[3] = &unk_1E6EEB998;
    v35[4] = self;
    MTLProgressBinsSynchronizeBufferAccess(v29, buffer, 1, v35);
    v31 = self->_progressBins;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __147___MTLSWRaytracingAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options___block_invoke_3;
    v34[3] = &unk_1E6EEB998;
    v34[4] = self;
    MTLProgressBinsSynchronizeBufferAccess(v31, buffer, 1, v34);
    [(_MTLSWRaytracingAccelerationStructureCommandEncoder *)self substreamSynchronizeDescriptor:descriptor access:0];
    options = context;
  }

  contexta = objc_autoreleasePoolPush();
  [-[MTLDevice GPUBVHBuilder](self->_device "GPUBVHBuilder")];
  objc_autoreleasePoolPop(contexta);
  v16 = self->_progressBins;
  if (v16)
  {
    v17 = MTLProgressBinsUpdate(v16);
    if ((v17 & 0x80000000) == 0 && !self->_virtualSubstreamsEnabled)
    {
      [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v17];
    }
  }
}

- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  [v6 beginBVHSubstream];
  v7 = *(v5 + 48);
  if (v7)
  {
    v12 = OUTLINED_FUNCTION_8_0(v7);
    if (v14)
    {
      OUTLINED_FUNCTION_7_0();
      do
      {
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_28();
      }

      while (!v15);
    }

    OUTLINED_FUNCTION_11_0(v10, v11, v12, v13);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    v16 = OUTLINED_FUNCTION_12_0();
    MTLProgressBinsSynchronizeBufferAccess(v16, v17, 0, v18);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_9_0();
    MTLProgressBinsSynchronizeBufferAccess(v19, v20, 1, v21);
  }

  [*(v5 + 24) GPUBVHBuilder];
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_38();
  [OUTLINED_FUNCTION_2_1() writeSerializedMTLSWBVHSizeWithEncoder:? BVHBuffer:? BVHBufferOffset:? toBuffer:? sizeBufferOffset:?];
  v8 = *(v5 + 48);
  if (v8)
  {
    v9 = MTLProgressBinsUpdate(v8);
    if ((v9 & 0x80000000) == 0 && (*(v5 + 56) & 1) == 0)
    {
      OUTLINED_FUNCTION_42(v9);
    }
  }

  OUTLINED_FUNCTION_15_0();
}

- (void)writeDeserializedAccelerationStructureSize:(id)size serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizeBufferOffset:(unint64_t)bufferOffset
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_0();
  [v8 beginBVHSubstream];
  v9 = *(v6 + 48);
  if (v9)
  {
    v15 = OUTLINED_FUNCTION_8_0(v9);
    if (v17)
    {
      OUTLINED_FUNCTION_7_0();
      do
      {
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_28();
      }

      while (!v18);
    }

    OUTLINED_FUNCTION_11_0(v13, v14, v15, v16);
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_19();
    MTLProgressBinsSynchronizeBufferAccess(v19, v7, 0, v20);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_9_0();
    MTLProgressBinsSynchronizeBufferAccess(v21, v22, 1, v23);
  }

  [*(v6 + 24) GPUBVHBuilder];
  OUTLINED_FUNCTION_34();
  [v10 writeDeserializedMTLSWBVHSizeWithEncoder:? serializedBuffer:? serializedBufferOffset:? toBuffer:? sizeBufferOffset:?];
  v11 = *(v6 + 48);
  if (v11)
  {
    v12 = MTLProgressBinsUpdate(v11);
    if ((v12 & 0x80000000) == 0 && (*(v6 + 56) & 1) == 0)
    {
      [*(&OBJC_IVAR___MTLIOAccelResourcePool__priv + v6) signalProgress:v12];
    }
  }

  OUTLINED_FUNCTION_54();
}

- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)sizes serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizesBufferOffset:(unint64_t)bufferOffset
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_0();
  [v8 beginBVHSubstream];
  v9 = *(v6 + 48);
  if (v9)
  {
    v15 = OUTLINED_FUNCTION_8_0(v9);
    if (v17)
    {
      OUTLINED_FUNCTION_7_0();
      do
      {
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_28();
      }

      while (!v18);
    }

    OUTLINED_FUNCTION_11_0(v13, v14, v15, v16);
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_19();
    MTLProgressBinsSynchronizeBufferAccess(v19, v7, 0, v20);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_9_0();
    MTLProgressBinsSynchronizeBufferAccess(v21, v22, 1, v23);
  }

  [*(v6 + 24) GPUBVHBuilder];
  OUTLINED_FUNCTION_34();
  [v10 writeDeserializedMTLSWPrimitiveBVHSizesWithEncoder:? serializedBuffer:? serializedBufferOffset:? toBuffer:? sizesBufferOffset:?];
  v11 = *(v6 + 48);
  if (v11)
  {
    v12 = MTLProgressBinsUpdate(v11);
    if ((v12 & 0x80000000) == 0 && (*(v6 + 56) & 1) == 0)
    {
      [*(&OBJC_IVAR___MTLIOAccelResourcePool__priv + v6) signalProgress:v12];
    }
  }

  OUTLINED_FUNCTION_54();
}

- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  [v8 beginBVHSubstream];
  OUTLINED_FUNCTION_43();
  if (v6)
  {
    v11 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_17(v11);
    [v7 setSubstream:?];
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    v12 = OUTLINED_FUNCTION_12_0();
    MTLProgressBinsSynchronizeBufferAccess(v12, v13, 0, v14);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_9_0();
    MTLProgressBinsSynchronizeBufferAccess(v15, v16, 1, v17);
  }

  [*(v5 + 24) GPUBVHBuilder];
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_38();
  [OUTLINED_FUNCTION_10_0() writeSerializedMTLSWBVHWithEncoder:? BVHBuffer:? BVHBufferOffset:? primitiveAccelerationStructures:? toBuffer:? serializedBufferOffset:?];
  v9 = *(v5 + 48);
  if (v9)
  {
    v10 = MTLProgressBinsUpdate(v9);
    if ((v10 & 0x80000000) == 0 && (*(v5 + 56) & 1) == 0)
    {
      OUTLINED_FUNCTION_42(v10);
    }
  }

  OUTLINED_FUNCTION_15_0();
}

- (void)serializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_14_0();
  [v8 beginBVHSubstream];
  if (*(v6 + 48))
  {
    v11 = [OUTLINED_FUNCTION_45() size];
    OUTLINED_FUNCTION_40(v11);
    v12 = *(v6 + 48);
    [v7 buffer];
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_19();
    MTLProgressBinsSynchronizeBufferAccess(v12, v13, 0, v14);
    [OUTLINED_FUNCTION_27() substreamSynchronizeAccelerationStructures:? access:?];
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_9_0();
    MTLProgressBinsSynchronizeBufferAccess(v15, v16, 1, v17);
  }

  [*(v6 + 24) GPUBVHBuilder];
  [v7 buffer];
  [v7 bufferOffset];
  [OUTLINED_FUNCTION_31() writeSerializedMTLSWBVHWithEncoder:? BVHBuffer:? BVHBufferOffset:? primitiveAccelerationStructures:? toBuffer:? serializedBufferOffset:?];
  v9 = *(v6 + 48);
  if (v9)
  {
    v10 = MTLProgressBinsUpdate(v9);
    if ((v10 & 0x80000000) == 0 && (*(v6 + 56) & 1) == 0)
    {
      [*(v6 + 40) signalProgress:v10];
    }
  }

  OUTLINED_FUNCTION_15_0();
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_6();
  [v12 beginBVHSubstream];
  OUTLINED_FUNCTION_43();
  if (v9)
  {
    v16 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_17(v16);
    [v10 setSubstream:?];
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    v17 = OUTLINED_FUNCTION_12_0();
    MTLProgressBinsSynchronizeBufferAccess(v17, v18, 1, v19);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_9_0();
    MTLProgressBinsSynchronizeBufferAccess(v20, v21, 0, v22);
  }

  v13 = objc_opt_new();
  [v5 deserializePrimitiveAccelerationStructure:v8 fromBuffer:v7 serializedBufferOffset:v6 withDescriptor:v13];

  v14 = *(v5 + 48);
  if (v14)
  {
    v15 = MTLProgressBinsUpdate(v14);
    if ((v15 & 0x80000000) == 0 && (*(v5 + 56) & 1) == 0)
    {
      [*(v5 + *(v11 + 1276)) signalProgress:v15];
    }
  }

  OUTLINED_FUNCTION_54();
}

- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  OUTLINED_FUNCTION_16();
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_14_0();
  [v13 beginBVHSubstream];
  if (*(v6 + 48))
  {
    v17 = [OUTLINED_FUNCTION_45() size];
    OUTLINED_FUNCTION_40(v17);
    v18 = *(v6 + 48);
    [v8 buffer];
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_19();
    MTLProgressBinsSynchronizeBufferAccess(v18, v19, 1, v20);
    [OUTLINED_FUNCTION_27() substreamSynchronizeAccelerationStructures:? access:?];
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_9_0();
    MTLProgressBinsSynchronizeBufferAccess(v21, v22, 0, v23);
  }

  v14 = objc_opt_new();
  [v6 deserializeInstanceAccelerationStructure:v8 primitiveAccelerationStructures:v7 fromBuffer:v12 serializedBufferOffset:v10 withDescriptor:v14];

  v15 = *(v6 + 48);
  if (v15)
  {
    v16 = MTLProgressBinsUpdate(v15);
    if ((v16 & 0x80000000) == 0 && (*(v6 + 56) & 1) == 0)
    {
      [*(v6 + 40) signalProgress:v16];
    }
  }

  OUTLINED_FUNCTION_15_0();
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor
{
  OUTLINED_FUNCTION_33();
  v28 = v7;
  v29 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v13 beginBVHSubstream];
  if (*(v14 + 6))
  {
    v17 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_17(v17);
    [v6 setSubstream:?];
    v18 = *(v14 + 6);
    [v12 buffer];
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50();
    v26 = __146___MTLSWRaytracingAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke;
    v27 = &unk_1E6EEB998;
    OUTLINED_FUNCTION_51();
    MTLProgressBinsSynchronizeBufferAccess(v18, v19, 1, v20);
    OUTLINED_FUNCTION_3_0();
    v23 = __146___MTLSWRaytracingAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke_2;
    v24 = &unk_1E6EEB998;
    v25 = v14;
    MTLProgressBinsSynchronizeBufferAccess(v21, v10, 0, v22);
  }

  [*(v14 + 3) GPUBVHBuilder];
  [v12 buffer];
  OUTLINED_FUNCTION_38();
  [v12 gpuResourceID];
  [v12 accelerationStructureUniqueIdentifier];
  [OUTLINED_FUNCTION_10_0() writeDeserializedMTLSWBVHWithEncoder:? BVHBuffer:? BVHBufferOffset:? primitiveAccelerationStructures:? fromBuffer:? serializedBufferOffset:? accelerationStructureMTLResourceID:? accelerationStructureUniqueIdentifier:?];
  v15 = *(v14 + 6);
  if (v15)
  {
    v16 = MTLProgressBinsUpdate(v15);
    if ((v16 & 0x80000000) == 0 && (*(v14 + 56) & 1) == 0)
    {
      [*(v14 + 5) signalProgress:v16];
    }
  }

  OUTLINED_FUNCTION_32();
}

- (void)writeGeometrySizeOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  [v8 beginBVHSubstream];
  OUTLINED_FUNCTION_43();
  if (v6)
  {
    v11 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_17(v11);
    [v7 setSubstream:?];
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    v12 = OUTLINED_FUNCTION_12_0();
    MTLProgressBinsSynchronizeBufferAccess(v12, v13, 0, v14);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_9_0();
    MTLProgressBinsSynchronizeBufferAccess(v15, v16, 1, v17);
  }

  [*(v5 + 24) GPUBVHBuilder];
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_38();
  [OUTLINED_FUNCTION_2_1() writeSerializedGeometrySizeWithEncoder:? BVHBuffer:? BVHBufferOffset:? toBuffer:? sizeBufferOffset:?];
  v9 = *(v5 + 48);
  if (v9)
  {
    v10 = MTLProgressBinsUpdate(v9);
    if ((v10 & 0x80000000) == 0 && (*(v5 + 56) & 1) == 0)
    {
      OUTLINED_FUNCTION_42(v10);
    }
  }

  OUTLINED_FUNCTION_15_0();
}

- (void)writeGeometryOfAccelerationStructure:(id)structure toBuffer:(id)buffer geometryBufferOffset:(unint64_t)offset
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  [v8 beginBVHSubstream];
  OUTLINED_FUNCTION_43();
  if (v6)
  {
    v11 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_17(v11);
    [v7 setSubstream:?];
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    v12 = OUTLINED_FUNCTION_12_0();
    MTLProgressBinsSynchronizeBufferAccess(v12, v13, 0, v14);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_9_0();
    MTLProgressBinsSynchronizeBufferAccess(v15, v16, 1, v17);
  }

  [*(v5 + 24) GPUBVHBuilder];
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_38();
  [OUTLINED_FUNCTION_2_1() writeSerializedGeometryWithEncoder:? BVHBuffer:? BVHBufferOffset:? toBuffer:? geometryBufferOffset:?];
  v9 = *(v5 + 48);
  if (v9)
  {
    v10 = MTLProgressBinsUpdate(v9);
    if ((v10 & 0x80000000) == 0 && (*(v5 + 56) & 1) == 0)
    {
      OUTLINED_FUNCTION_42(v10);
    }
  }

  OUTLINED_FUNCTION_15_0();
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into
{
  if (!into)
  {
    return 0;
  }

  [(_MTLSWRaytracingAccelerationStructureCommandEncoder *)self beginBVHSubstream];
  progressBins = self->_progressBins;
  if (progressBins)
  {
    v16 = OUTLINED_FUNCTION_8_0(progressBins);
    if (v18)
    {
      OUTLINED_FUNCTION_7_0();
      do
      {
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_28();
      }

      while (!v19);
    }

    else
    {
      v20 = 0;
    }

    *(v15 + 42) = v20;
    *(v15 + 44) = v16 + (v17 * 64.0);
    [v14 setSubstream:v20];
    buffer = [structure buffer];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __113___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureSizesOfAccelerationStructure_into___block_invoke;
    v29[3] = &unk_1E6EEB998;
    v29[4] = self;
    OUTLINED_FUNCTION_56(buffer, buffer, v22, v29);
  }

  v8 = [(MTLDevice *)self->_device newBufferWithLength:64 options:0];
  [(MTLDevice *)self->_device GPUBVHBuilder];
  [into version];
  [structure buffer];
  [structure bufferOffset];
  v9 = [OUTLINED_FUNCTION_10_0() writeGenericBVHStructureSizesWithEncoder:? version:? BVHBuffer:? BVHBufferOffset:? toBuffer:? sizesBufferOffset:?];
  OUTLINED_FUNCTION_21();
  v24 = 3221225472;
  v25 = __113___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureSizesOfAccelerationStructure_into___block_invoke_2;
  v26 = &unk_1E6EEB9C0;
  v27 = v8;
  intoCopy = into;
  [v10 addCompletedHandler:v23];
  v11 = self->_progressBins;
  if (v11)
  {
    v12 = MTLProgressBinsUpdate(v11);
    if ((v12 & 0x80000000) == 0 && !self->_virtualSubstreamsEnabled)
    {
      [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v12];
    }
  }

  return v9;
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into
{
  intoCopy = into;
  if (into)
  {
    if (-[_MTLSWRaytracingAccelerationStructureCommandEncoder isSupportedVersion:](self, "isSupportedVersion:", [into version]))
    {
      [(_MTLSWRaytracingAccelerationStructureCommandEncoder *)self beginBVHSubstream];
      if (self->_progressBins)
      {
        v10 = [structure size];
        OUTLINED_FUNCTION_49(v10, v10);
        buffer = [structure buffer];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke;
        v42[3] = &unk_1E6EEB998;
        v42[4] = self;
        OUTLINED_FUNCTION_56(buffer, buffer, v12, v42);
        headerBuffer = [OUTLINED_FUNCTION_29() headerBuffer];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_2;
        v41[3] = &unk_1E6EEB998;
        v41[4] = self;
        OUTLINED_FUNCTION_36(headerBuffer, headerBuffer, v14, v41);
        if ([intoCopy innerNodeBuffer])
        {
          innerNodeBuffer = [OUTLINED_FUNCTION_29() innerNodeBuffer];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_3;
          v40[3] = &unk_1E6EEB998;
          v40[4] = self;
          OUTLINED_FUNCTION_36(innerNodeBuffer, innerNodeBuffer, v19, v40);
        }

        if ([intoCopy leafNodeBuffer])
        {
          leafNodeBuffer = [OUTLINED_FUNCTION_29() leafNodeBuffer];
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_4;
          v39[3] = &unk_1E6EEB998;
          v39[4] = self;
          OUTLINED_FUNCTION_36(leafNodeBuffer, leafNodeBuffer, v21, v39);
        }

        if ([intoCopy primitiveBuffer])
        {
          primitiveBuffer = [OUTLINED_FUNCTION_29() primitiveBuffer];
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_5;
          v38[3] = &unk_1E6EEB998;
          v38[4] = self;
          OUTLINED_FUNCTION_36(primitiveBuffer, primitiveBuffer, v23, v38);
        }

        if ([intoCopy geometryBuffer])
        {
          geometryBuffer = [OUTLINED_FUNCTION_29() geometryBuffer];
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_6;
          v37[3] = &unk_1E6EEB998;
          v37[4] = self;
          OUTLINED_FUNCTION_36(geometryBuffer, geometryBuffer, v25, v37);
        }

        if ([intoCopy instanceTransformBuffer])
        {
          instanceTransformBuffer = [OUTLINED_FUNCTION_29() instanceTransformBuffer];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_7;
          v36[3] = &unk_1E6EEB998;
          v36[4] = self;
          OUTLINED_FUNCTION_36(instanceTransformBuffer, instanceTransformBuffer, v27, v36);
        }

        if ([intoCopy perPrimitiveDataBuffer])
        {
          perPrimitiveDataBuffer = [OUTLINED_FUNCTION_29() perPrimitiveDataBuffer];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_8;
          v35[3] = &unk_1E6EEB998;
          v35[4] = self;
          OUTLINED_FUNCTION_36(perPrimitiveDataBuffer, perPrimitiveDataBuffer, v29, v35);
        }

        if ([intoCopy controlPointBuffer])
        {
          [OUTLINED_FUNCTION_29() controlPointBuffer];
          OUTLINED_FUNCTION_21();
          v31 = 3221225472;
          v32 = __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_9;
          v33 = &unk_1E6EEB998;
          selfCopy = self;
          OUTLINED_FUNCTION_36(v15, v16, v17, v30);
        }
      }

      LOBYTE(intoCopy) = [-[MTLDevice GPUBVHBuilder](self->_device "GPUBVHBuilder")];
      progressBins = self->_progressBins;
      if (progressBins)
      {
        v8 = MTLProgressBinsUpdate(progressBins);
        if ((v8 & 0x80000000) == 0 && !self->_virtualSubstreamsEnabled)
        {
          [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v8];
        }
      }
    }

    else
    {
      LOBYTE(intoCopy) = 0;
    }
  }

  return intoCopy;
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(id)buffer sizesBufferOffset:(unint64_t)offset
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  [v6 beginBVHSubstream];
  v7 = *(v5 + 48);
  if (v7)
  {
    v12 = OUTLINED_FUNCTION_8_0(v7);
    if (v14)
    {
      OUTLINED_FUNCTION_7_0();
      do
      {
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_28();
      }

      while (!v15);
    }

    OUTLINED_FUNCTION_11_0(v10, v11, v12, v13);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    v16 = OUTLINED_FUNCTION_12_0();
    MTLProgressBinsSynchronizeBufferAccess(v16, v17, 0, v18);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_9_0();
    MTLProgressBinsSynchronizeBufferAccess(v19, v20, 1, v21);
  }

  [*(v5 + 24) GPUBVHBuilder];
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_38();
  [OUTLINED_FUNCTION_2_1() writeGenericBVHStructureSizesWithEncoder:? BVHBuffer:? BVHBufferOffset:? toBuffer:? sizesBufferOffset:?];
  v8 = *(v5 + 48);
  if (v8)
  {
    v9 = MTLProgressBinsUpdate(v8);
    if ((v9 & 0x80000000) == 0 && (*(v5 + 56) & 1) == 0)
    {
      OUTLINED_FUNCTION_42(v9);
    }
  }

  OUTLINED_FUNCTION_15_0();
}

- (void)writeGenericBVHStructureOfAccelerationStructure:(id)structure headerBuffer:(id)buffer headerBufferOffset:(unint64_t)offset innerNodeBuffer:(id)nodeBuffer innerNodeBufferOffset:(unint64_t)bufferOffset leafNodeBuffer:(id)leafNodeBuffer leafNodeBufferOffset:(unint64_t)nodeBufferOffset primitiveBuffer:(id)self0 primitiveBufferOffset:(unint64_t)self1 geometryBuffer:(id)self2 geometryOffset:(unint64_t)self3 instanceTransformBuffer:(id)self4 instanceTransformOffset:(unint64_t)self5 controlPointBuffer:(id)self6 controlPointBufferOffset:(unint64_t)self7
{
  bufferOffsetCopy = bufferOffset;
  offsetCopy = offset;
  structureCopy = structure;
  selfCopy = self;
  pointBufferOffsetCopy = pointBufferOffset;
  transformOffsetCopy = transformOffset;
  geometryOffsetCopy = geometryOffset;
  primitiveBufferOffsetCopy = primitiveBufferOffset;
  primitiveBufferCopy = primitiveBuffer;
  nodeBufferOffsetCopy = nodeBufferOffset;
  [(_MTLSWRaytracingAccelerationStructureCommandEncoder *)self beginBVHSubstream];
  v212 = selfCopy;
  if (selfCopy->_progressBins)
  {
    computeEncoder = selfCopy->_computeEncoder;
    OUTLINED_FUNCTION_17([structureCopy size]);
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:?];
    progressBins = selfCopy->_progressBins;
    [structureCopy buffer];
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_52();
    v226 = __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke;
    v227 = &unk_1E6EEB998;
    v228 = selfCopy;
    v25 = MTLProgressBinsSynchronizeBufferAccess(progressBins, v24, 0, v225);
    v33 = OUTLINED_FUNCTION_35(v25, v26, v27, v28, v29, v30, v31, v32, v80, v86, v92, v98, v104, v110, v116, v122, v128, v134, v140, v146, computeEncoder, nodeBufferOffset, primitiveBufferOffset, geometryOffset, transformOffset, pointBufferOffset, bufferOffsetCopy, offsetCopy, structureCopy, primitiveBuffer, selfCopy);
    v224[0] = MEMORY[0x1E69E9820];
    v224[1] = 3221225472;
    v224[2] = __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_2;
    v224[3] = &unk_1E6EEB998;
    v224[4] = v213;
    v34 = MTLProgressBinsSynchronizeBufferAccess(v33, buffer, 1, v224);
    v42 = OUTLINED_FUNCTION_35(v34, v35, v36, v37, v38, v39, v40, v41, v81, v87, v93, v99, v105, v111, v117, v123, v129, v135, v141, v147, v153, v159, v165, v171, v177, v183, v189, v195, v201, v207, v213);
    v223[0] = MEMORY[0x1E69E9820];
    v223[1] = 3221225472;
    v223[2] = __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_3;
    v223[3] = &unk_1E6EEB998;
    v223[4] = v214;
    v43 = MTLProgressBinsSynchronizeBufferAccess(v42, nodeBuffer, 1, v223);
    v51 = OUTLINED_FUNCTION_35(v43, v44, v45, v46, v47, v48, v49, v50, v82, v88, v94, v100, v106, v112, v118, v124, v130, v136, v142, v148, v154, v160, v166, v172, v178, v184, v190, v196, v202, v208, v214);
    v222[0] = MEMORY[0x1E69E9820];
    v222[1] = 3221225472;
    v222[2] = __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_4;
    v222[3] = &unk_1E6EEB998;
    v222[4] = v215;
    MTLProgressBinsSynchronizeBufferAccess(v51, leafNodeBuffer, 1, v222);
    v52 = *(v215 + 48);
    v221[0] = MEMORY[0x1E69E9820];
    v221[1] = 3221225472;
    v221[2] = __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_5;
    v221[3] = &unk_1E6EEB998;
    v221[4] = v215;
    v53 = MTLProgressBinsSynchronizeBufferAccess(v52, v209, 1, v221);
    v61 = OUTLINED_FUNCTION_35(v53, v54, v55, v56, v57, v58, v59, v60, v83, v89, v95, v101, v107, v113, v119, v125, v131, v137, v143, v149, v155, v161, v167, v173, v179, v185, v191, v197, v203, v209, v215);
    v220[0] = MEMORY[0x1E69E9820];
    v220[1] = 3221225472;
    v220[2] = __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_6;
    v220[3] = &unk_1E6EEB998;
    v220[4] = v216;
    v62 = MTLProgressBinsSynchronizeBufferAccess(v61, geometryBuffer, 1, v220);
    v70 = OUTLINED_FUNCTION_35(v62, v63, v64, v65, v66, v67, v68, v69, v84, v90, v96, v102, v108, v114, v120, v126, v132, v138, v144, v150, v156, v162, v168, v174, v180, v186, v192, v198, v204, v210, v216);
    v219[0] = MEMORY[0x1E69E9820];
    v219[1] = 3221225472;
    v219[2] = __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_7;
    v219[3] = &unk_1E6EEB998;
    v219[4] = v217;
    v71 = MTLProgressBinsSynchronizeBufferAccess(v70, transformBuffer, 1, v219);
    v79 = OUTLINED_FUNCTION_35(v71, v72, v73, v74, v75, v76, v77, v78, v85, v91, v97, v103, v109, v115, v121, v127, v133, v139, v145, v151, v157, v163, v169, v175, v181, v187, v193, v199, v205, v211, v217);
    v218[0] = MEMORY[0x1E69E9820];
    v218[1] = 3221225472;
    v218[2] = __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_8;
    v218[3] = &unk_1E6EEB998;
    selfCopy = v212;
    v218[4] = v212;
    MTLProgressBinsSynchronizeBufferAccess(v79, pointBuffer, 1, v218);
  }

  [-[MTLDevice GPUBVHBuilder](selfCopy->_device "GPUBVHBuilder")];
  v21 = v212->_progressBins;
  if (v21)
  {
    v22 = MTLProgressBinsUpdate(v21);
    if ((v22 & 0x80000000) == 0 && !v212->_virtualSubstreamsEnabled)
    {
      [(MTLComputeCommandEncoderSPI *)v212->_computeEncoder signalProgress:v22];
    }
  }
}

- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(id)buffer offset:(unint64_t)offset
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  [v8 beginBVHSubstream];
  OUTLINED_FUNCTION_43();
  if (v6)
  {
    v11 = OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_17(v11);
    [v7 setSubstream:?];
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    v12 = OUTLINED_FUNCTION_12_0();
    MTLProgressBinsSynchronizeBufferAccess(v12, v13, 0, v14);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_9_0();
    MTLProgressBinsSynchronizeBufferAccess(v15, v16, 1, v17);
  }

  [*(v5 + 24) GPUBVHBuilder];
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_38();
  [OUTLINED_FUNCTION_2_1() writeAccelerationStructureSerializationDataWithEncoder:? BVHBuffer:? BVHBufferOffset:? toBuffer:? offset:?];
  v9 = *(v5 + 48);
  if (v9)
  {
    v10 = MTLProgressBinsUpdate(v9);
    if ((v10 & 0x80000000) == 0 && (*(v5 + 56) & 1) == 0)
    {
      OUTLINED_FUNCTION_42(v10);
    }
  }

  OUTLINED_FUNCTION_15_0();
}

- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(id)buffer offset:(unint64_t)offset
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  v7 = *(v6 + 48);
  if (v7)
  {
    v12 = OUTLINED_FUNCTION_8_0(v7);
    if (v14)
    {
      OUTLINED_FUNCTION_7_0();
      do
      {
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_28();
      }

      while (!v15);
    }

    OUTLINED_FUNCTION_11_0(v10, v11, v12, v13);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_20();
    v16 = OUTLINED_FUNCTION_12_0();
    MTLProgressBinsSynchronizeBufferAccess(v16, v17, 0, v18);
    OUTLINED_FUNCTION_0_7();
    OUTLINED_FUNCTION_9_0();
    MTLProgressBinsSynchronizeBufferAccess(v19, v20, 1, v21);
  }

  [*(v5 + 24) GPUBVHBuilder];
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_38();
  [OUTLINED_FUNCTION_2_1() writeMTLSWBVHAccelerationStructureDepthWithEncoder:? BVHBuffer:? BVHBufferOffset:? toBuffer:? sizeBufferOffset:?];
  v8 = *(v5 + 48);
  if (v8)
  {
    v9 = MTLProgressBinsUpdate(v8);
    if ((v9 & 0x80000000) == 0 && (*(v5 + 56) & 1) == 0)
    {
      OUTLINED_FUNCTION_42(v9);
    }
  }

  OUTLINED_FUNCTION_15_0();
}

@end