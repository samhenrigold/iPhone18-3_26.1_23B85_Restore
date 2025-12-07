@interface AGXG18PFamilyRayTracingGPUBuilder
- (AGXG18PFamilyRayTracingGPUBuilder)initWithCommandBuffer:(id)buffer descriptor:(id)descriptor;
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into;
- (void)_beginVirtualSubstream;
- (void)_endVirtualSubstream;
- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset;
- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor;
- (void)endEncoding;
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
- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset;
@end

@implementation AGXG18PFamilyRayTracingGPUBuilder

- (void)_endVirtualSubstream
{
  if (!self->_defersCommands && self->virtualSubstreamOpen)
  {
    [(MTLComputeCommandEncoderSPI *)self->_computeEncoder endVirtualSubstream];
    self->virtualSubstreamOpen = 0;
    progressBins = self->_progressBins;
    if (progressBins)
    {
      if (*(progressBins + 15))
      {
        v4 = *(progressBins + 14);
        if (v4)
        {
          do
          {
            v5 = *v4;
            operator delete(v4);
            v4 = v5;
          }

          while (v5);
        }

        *(progressBins + 14) = 0;
        v6 = *(progressBins + 13);
        if (v6)
        {
          bzero(*(progressBins + 12), 8 * v6);
        }

        *(progressBins + 15) = 0;
      }

      *(progressBins + 3) = 0;
      *(progressBins + 4) = 0;
      *(progressBins + 21) = 0;
      *(progressBins + 35) = 0;
    }
  }
}

- (void)_beginVirtualSubstream
{
  if (!self->_defersCommands)
  {
    if (self->virtualSubstreamOpen)
    {
      computeEncoder = self->_computeEncoder;

      [(MTLComputeCommandEncoderSPI *)computeEncoder nextVirtualSubstream];
    }

    else if (self->virtualSubstreamsEnabled)
    {
      [(MTLComputeCommandEncoderSPI *)self->_computeEncoder beginVirtualSubstream];
      self->virtualSubstreamOpen = 1;
    }
  }
}

- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(id)buffer offset:(unint64_t)offset
{
  progressBins = self->_progressBins;
  if (progressBins)
  {
    computeEncoder = self->_computeEncoder;
    v12 = [depth size];
    v13 = *(progressBins + 20);
    if (v13 < 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      v15 = progressBins[6];
      v16 = progressBins + 7;
      for (i = 1; i != v13; ++i)
      {
        v18 = *v16++;
        v19 = v18;
        if (v18 < v15)
        {
          v15 = v19;
          v14 = i;
        }
      }
    }

    v20 = *progressBins + (progressBins[1] * v12);
    *(progressBins + 21) = v14;
    progressBins[11] = v20;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v14];
    v21 = self->_progressBins;
    buffer = [depth buffer];
    v52[0] = MEMORY[0x29EDCA5F8];
    v52[1] = 3221225472;
    v52[2] = __94__AGXG18PFamilyRayTracingGPUBuilder_writeAccelerationStructureTraversalDepth_toBuffer_offset___block_invoke;
    v52[3] = &unk_29F3420F0;
    v52[4] = self;
    ProgressBinsSynchronizeBufferAccess(v21, buffer, 0, v52);
    v23 = self->_progressBins;
    v51[0] = MEMORY[0x29EDCA5F8];
    v51[1] = 3221225472;
    v51[2] = __94__AGXG18PFamilyRayTracingGPUBuilder_writeAccelerationStructureTraversalDepth_toBuffer_offset___block_invoke_2;
    v51[3] = &unk_29F3420F0;
    v51[4] = self;
    ProgressBinsSynchronizeBufferAccess(v23, buffer, 1, v51);
  }

  impl = self->_impl;
  v25 = impl[2];
  v26 = MEMORY[0x29EDC5638];
  if (depth)
  {
    offsetCopy = offset;
    if (*(depth + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v28 = *(depth + 39);
      IOGPUResourceListAddResource();
      v30 = *(v28 + 64);
      v29 = *(v28 + 72);
      while (v30 != v29)
      {
        if (*v30)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v30);
          IOGPUResourceListAddResource();
        }

        v30 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v25, depth, 1, 1, v5);
    impl = self->_impl;
    v25 = impl[2];
    offset = offsetCopy;
    v26 = MEMORY[0x29EDC5638];
  }

  if (buffer)
  {
    if (*(buffer + *v26 + 16) >> 61 == 3)
    {
      v31 = *(buffer + 39);
      IOGPUResourceListAddResource();
      v33 = *(v31 + 64);
      v32 = *(v31 + 72);
      while (v33 != v32)
      {
        if (*v33)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v33);
          IOGPUResourceListAddResource();
        }

        v33 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v25, buffer, 3, 3, v5);
    impl = self->_impl;
  }

  gpuAddress = [buffer gpuAddress];
  [buffer length];
  if (*(impl + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(impl);
  }

  buffer2 = [depth buffer];
  bufferOffset = [depth bufferOffset];
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(impl, 55, 0);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(impl[2], buffer2, bufferOffset, 0, 0);
  v38 = impl[2];
  *(v38 + 26416) = gpuAddress + offset;
  *(*(v38 + 22488) + 8) = gpuAddress + offset;
  v39 = *(v38 + 27592);
  *(v38 + 22512) = 0;
  *(v38 + 27592) = v39 | 1;
  *(v38 + 27560) |= 2uLL;
  v55 = vdupq_n_s64(1uLL);
  v56 = 1;
  v53 = v55;
  v54 = 1;
  *(v38 + 2060) |= 4u;
  v40 = *(v38 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v38, Pipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v38, 22, &v55, &v53);
  if (*(v38 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v38, 22, 0, 0);
  }

  if (v40)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v38, v40);
  }

  v41 = self->_progressBins;
  if (v41)
  {
    v42 = v41[21];
    *&v41[2 * v42 + 12] = *(v41 + 11) + *&v41[2 * v42 + 12];
    *(v41 + 11) = 0;
    if (*(v41 + 48) == 1)
    {
      v43 = *(v41 + 9);
      if (v43)
      {
        v44 = *(v41 + 35);
        do
        {
          *(v43 + 8) = v44;
          *(v43 + 9) = v42;
          v43 = *v43;
        }

        while (v43);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v41 + 12, v41 + 7);
      ++*(v41 + 35);
    }

    else if (*(v41 + 22))
    {
      v45 = *(v41 + 35);
      *(v41 + 35) = v45 + 1;
      v46 = *(v41 + 21);
      if (v46)
      {
        v47 = *(v41 + 18);
        v48 = *(v41 + 21);
        do
        {
          *(v47 + 4 * *(v48 + 4)) = v45;
          v48 = *v48;
        }

        while (v48);
        do
        {
          v49 = *v46;
          operator delete(v46);
          v46 = v49;
        }

        while (v49);
      }

      *(v41 + 21) = 0;
      v50 = *(v41 + 20);
      if (v50)
      {
        bzero(*(v41 + 19), 8 * v50);
      }

      *(v41 + 22) = 0;
      if ((v45 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v45];
      }
    }
  }
}

uint64_t __94__AGXG18PFamilyRayTracingGPUBuilder_writeAccelerationStructureTraversalDepth_toBuffer_offset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __94__AGXG18PFamilyRayTracingGPUBuilder_writeAccelerationStructureTraversalDepth_toBuffer_offset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(id)buffer offset:(unint64_t)offset
{
  [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream];
  progressBins = self->_progressBins;
  if (progressBins)
  {
    computeEncoder = self->_computeEncoder;
    v12 = [data size];
    v13 = *(progressBins + 20);
    if (v13 < 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      v15 = progressBins[6];
      v16 = progressBins + 7;
      for (i = 1; i != v13; ++i)
      {
        v18 = *v16++;
        v19 = v18;
        if (v18 < v15)
        {
          v15 = v19;
          v14 = i;
        }
      }
    }

    v20 = *progressBins + (progressBins[1] * v12);
    *(progressBins + 21) = v14;
    progressBins[11] = v20;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v14];
    v21 = self->_progressBins;
    buffer = [data buffer];
    v64[0] = MEMORY[0x29EDCA5F8];
    v64[1] = 3221225472;
    v64[2] = __97__AGXG18PFamilyRayTracingGPUBuilder_writeAccelerationStructureSerializationData_toBuffer_offset___block_invoke;
    v64[3] = &unk_29F3420F0;
    v64[4] = self;
    ProgressBinsSynchronizeBufferAccess(v21, buffer, 0, v64);
    v23 = self->_progressBins;
    v63[0] = MEMORY[0x29EDCA5F8];
    v63[1] = 3221225472;
    v63[2] = __97__AGXG18PFamilyRayTracingGPUBuilder_writeAccelerationStructureSerializationData_toBuffer_offset___block_invoke_2;
    v63[3] = &unk_29F3420F0;
    v63[4] = self;
    ProgressBinsSynchronizeBufferAccess(v23, buffer, 1, v63);
  }

  impl = self->_impl;
  v25 = MEMORY[0x29EDC5638];
  if (data)
  {
    v26 = impl[2];
    if (*(data + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v27 = *(data + 39);
      IOGPUResourceListAddResource();
      v29 = *(v27 + 64);
      v28 = *(v27 + 72);
      while (v29 != v28)
      {
        if (*v29)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v29);
          IOGPUResourceListAddResource();
        }

        v29 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v26, data, 1, 1, v9);
    impl = self->_impl;
    v25 = MEMORY[0x29EDC5638];
  }

  buffer2 = [data buffer];
  if (buffer2)
  {
    v32 = buffer2;
    v33 = impl[2];
    if (*(buffer2 + *v25 + 16) >> 61 == 3)
    {
      v34 = *(buffer2 + 312);
      IOGPUResourceListAddResource();
      v35 = *(v34 + 64);
      v36 = *(v34 + 72);
      while (v35 != v36)
      {
        if (*v35)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v35);
          IOGPUResourceListAddResource();
        }

        v35 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v33, v32, 1, 1, v31);
  }

  v37 = self->_impl;
  if (buffer)
  {
    v38 = v37[2];
    if (*(buffer + *v25 + 16) >> 61 == 3)
    {
      v39 = *(buffer + 39);
      IOGPUResourceListAddResource();
      v40 = *(v39 + 64);
      v41 = *(v39 + 72);
      while (v40 != v41)
      {
        if (*v40)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v40);
          IOGPUResourceListAddResource();
        }

        v40 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v38, buffer, 3, 3, v31);
    v37 = self->_impl;
  }

  gpuAddress = [buffer gpuAddress];
  [buffer length];
  if (*(v37 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(v37);
  }

  buffer3 = [data buffer];
  bufferOffset = [data bufferOffset];
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v37, 179, 0);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v65, v37, 40, 0);
  v46 = v65;
  *v65 = 0u;
  *(v46 + 16) = 0u;
  *(v46 + 32) = 0;
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
  }

  v47 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride;
  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride <= 0)
  {
    v47 = 3;
  }

  *(v46 + 28) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhChipCodes[v47];
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVersionToEncode(BOOL,BOOL,BOOL)::gen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen();
  }

  *(v46 + 32) = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhVersions[AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getVersionToEncode(BOOL,BOOL,BOOL)::gen] & 0x1FFFFFFF;
  *v46 = [buffer3 gpuAddress] + bufferOffset;
  *(v46 + 8) = gpuAddress + offset;
  v48 = v66;
  v49 = v67;
  v50 = v37[2];
  *(v50 + 26576) = v66;
  *(*(v50 + 22488) + 168) = v48;
  *(v50 + 22672) = v49;
  v51 = *(v50 + 27560) | 0x200000;
  *(v50 + 27592) |= 1u;
  *(v50 + 27560) = v51;
  v70 = vdupq_n_s64(1uLL);
  v71 = 1;
  v68 = v70;
  v69 = 1;
  *(v50 + 2060) |= 4u;
  v52 = *(v50 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v50, Pipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v50, 22, &v70, &v68);
  if (*(v50 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v50, 22, 0, 0);
  }

  if (v52)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v50, v52);
  }

  v53 = self->_progressBins;
  if (v53)
  {
    v54 = v53[21];
    *&v53[2 * v54 + 12] = *(v53 + 11) + *&v53[2 * v54 + 12];
    *(v53 + 11) = 0;
    if (*(v53 + 48) == 1)
    {
      v55 = *(v53 + 9);
      if (v55)
      {
        v56 = *(v53 + 35);
        do
        {
          *(v55 + 8) = v56;
          *(v55 + 9) = v54;
          v55 = *v55;
        }

        while (v55);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v53 + 12, v53 + 7);
      ++*(v53 + 35);
    }

    else if (*(v53 + 22))
    {
      v57 = *(v53 + 35);
      *(v53 + 35) = v57 + 1;
      v58 = *(v53 + 21);
      if (v58)
      {
        v59 = *(v53 + 18);
        v60 = *(v53 + 21);
        do
        {
          *(v59 + 4 * *(v60 + 4)) = v57;
          v60 = *v60;
        }

        while (v60);
        do
        {
          v61 = *v58;
          operator delete(v58);
          v58 = v61;
        }

        while (v61);
      }

      *(v53 + 21) = 0;
      v62 = *(v53 + 20);
      if (v62)
      {
        bzero(*(v53 + 19), 8 * v62);
      }

      *(v53 + 22) = 0;
      if ((v57 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v57];
      }
    }
  }
}

uint64_t __97__AGXG18PFamilyRayTracingGPUBuilder_writeAccelerationStructureSerializationData_toBuffer_offset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __97__AGXG18PFamilyRayTracingGPUBuilder_writeAccelerationStructureSerializationData_toBuffer_offset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into
{
  result = 0;
  if (!structure || !into)
  {
    return result;
  }

  if (([into version] - 256) > 5)
  {
    return 0;
  }

  [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream];
  progressBins = self->_progressBins;
  if (progressBins)
  {
    computeEncoder = self->_computeEncoder;
    v11 = [structure size];
    v12 = *(progressBins + 20);
    if (v12 < 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = progressBins[6];
      v15 = progressBins + 7;
      for (i = 1; i != v12; ++i)
      {
        v17 = *v15++;
        v18 = v17;
        if (v17 < v14)
        {
          v14 = v18;
          v13 = i;
        }
      }
    }

    v19 = *progressBins + (progressBins[1] * v11);
    *(progressBins + 21) = v13;
    progressBins[11] = v19;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v13];
    v20 = self->_progressBins;
    buffer = [structure buffer];
    v205[0] = MEMORY[0x29EDCA5F8];
    v205[1] = 3221225472;
    v205[2] = __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke;
    v205[3] = &unk_29F3420F0;
    v205[4] = self;
    ProgressBinsSynchronizeBufferAccess(v20, buffer, 0, v205);
    if ([into innerNodeBuffer])
    {
      v22 = self->_progressBins;
      innerNodeBuffer = [into innerNodeBuffer];
      v204[0] = MEMORY[0x29EDCA5F8];
      v204[1] = 3221225472;
      v204[2] = __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_2;
      v204[3] = &unk_29F3420F0;
      v204[4] = self;
      ProgressBinsSynchronizeBufferAccess(v22, innerNodeBuffer, 1, v204);
    }

    if ([into leafNodeBuffer])
    {
      v24 = self->_progressBins;
      leafNodeBuffer = [into leafNodeBuffer];
      v203[0] = MEMORY[0x29EDCA5F8];
      v203[1] = 3221225472;
      v203[2] = __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_3;
      v203[3] = &unk_29F3420F0;
      v203[4] = self;
      ProgressBinsSynchronizeBufferAccess(v24, leafNodeBuffer, 1, v203);
    }

    if ([into primitiveBuffer])
    {
      v26 = self->_progressBins;
      primitiveBuffer = [into primitiveBuffer];
      v202[0] = MEMORY[0x29EDCA5F8];
      v202[1] = 3221225472;
      v202[2] = __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_4;
      v202[3] = &unk_29F3420F0;
      v202[4] = self;
      ProgressBinsSynchronizeBufferAccess(v26, primitiveBuffer, 1, v202);
    }

    if ([into geometryBuffer])
    {
      v28 = self->_progressBins;
      geometryBuffer = [into geometryBuffer];
      v201[0] = MEMORY[0x29EDCA5F8];
      v201[1] = 3221225472;
      v201[2] = __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_5;
      v201[3] = &unk_29F3420F0;
      v201[4] = self;
      ProgressBinsSynchronizeBufferAccess(v28, geometryBuffer, 1, v201);
    }

    if ([into instanceTransformBuffer])
    {
      v30 = self->_progressBins;
      instanceTransformBuffer = [into instanceTransformBuffer];
      v200[0] = MEMORY[0x29EDCA5F8];
      v200[1] = 3221225472;
      v200[2] = __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_6;
      v200[3] = &unk_29F3420F0;
      v200[4] = self;
      ProgressBinsSynchronizeBufferAccess(v30, instanceTransformBuffer, 1, v200);
    }

    if ([into perPrimitiveDataBuffer])
    {
      v32 = self->_progressBins;
      perPrimitiveDataBuffer = [into perPrimitiveDataBuffer];
      v199[0] = MEMORY[0x29EDCA5F8];
      v199[1] = 3221225472;
      v199[2] = __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_7;
      v199[3] = &unk_29F3420F0;
      v199[4] = self;
      ProgressBinsSynchronizeBufferAccess(v32, perPrimitiveDataBuffer, 1, v199);
    }

    if ([into controlPointBuffer])
    {
      v34 = self->_progressBins;
      controlPointBuffer = [into controlPointBuffer];
      v198[0] = MEMORY[0x29EDCA5F8];
      v198[1] = 3221225472;
      v198[2] = __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_8;
      v198[3] = &unk_29F3420F0;
      v198[4] = self;
      ProgressBinsSynchronizeBufferAccess(v34, controlPointBuffer, 1, v198);
    }
  }

  v36 = *(self->_impl + 2);
  if (*(structure + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
  {
    v37 = *(structure + 39);
    IOGPUResourceListAddResource();
    v38 = *(v37 + 64);
    v39 = *(v37 + 72);
    while (v38 != v39)
    {
      if (*v38)
      {
        AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v38);
        IOGPUResourceListAddResource();
      }

      v38 += 2;
    }
  }

  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v36, structure, 3, 3, v8);
  impl = self->_impl;
  structureCopy = structure;
  buffer2 = [structure buffer];
  if (buffer2)
  {
    v43 = buffer2;
    v44 = impl[2];
    if (*(buffer2 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v45 = *(buffer2 + 312);
      IOGPUResourceListAddResource();
      v46 = *(v45 + 64);
      v47 = *(v45 + 72);
      while (v46 != v47)
      {
        if (*v46)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v46);
          IOGPUResourceListAddResource();
        }

        v46 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v44, v43, 3, 3, v42);
  }

  v48 = self->_impl;
  innerNodeBuffer2 = [into innerNodeBuffer];
  if (innerNodeBuffer2)
  {
    v51 = innerNodeBuffer2;
    v52 = v48[2];
    if (*(innerNodeBuffer2 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v53 = *(innerNodeBuffer2 + 312);
      IOGPUResourceListAddResource();
      v54 = *(v53 + 64);
      v55 = *(v53 + 72);
      while (v54 != v55)
      {
        if (*v54)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v54);
          IOGPUResourceListAddResource();
        }

        v54 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v52, v51, 3, 3, v50);
  }

  v56 = self->_impl;
  leafNodeBuffer2 = [into leafNodeBuffer];
  if (leafNodeBuffer2)
  {
    v59 = leafNodeBuffer2;
    v60 = v56[2];
    if (*(leafNodeBuffer2 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v61 = *(leafNodeBuffer2 + 312);
      IOGPUResourceListAddResource();
      v62 = *(v61 + 64);
      v63 = *(v61 + 72);
      while (v62 != v63)
      {
        if (*v62)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v62);
          IOGPUResourceListAddResource();
        }

        v62 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v60, v59, 3, 3, v58);
  }

  v64 = self->_impl;
  primitiveBuffer2 = [into primitiveBuffer];
  if (primitiveBuffer2)
  {
    v67 = primitiveBuffer2;
    v68 = v64[2];
    if (*(primitiveBuffer2 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v69 = *(primitiveBuffer2 + 312);
      IOGPUResourceListAddResource();
      v70 = *(v69 + 64);
      v71 = *(v69 + 72);
      while (v70 != v71)
      {
        if (*v70)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v70);
          IOGPUResourceListAddResource();
        }

        v70 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v68, v67, 3, 3, v66);
  }

  v72 = self->_impl;
  geometryBuffer2 = [into geometryBuffer];
  if (geometryBuffer2)
  {
    v75 = geometryBuffer2;
    v76 = v72[2];
    if (*(geometryBuffer2 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v77 = *(geometryBuffer2 + 312);
      IOGPUResourceListAddResource();
      v78 = *(v77 + 64);
      v79 = *(v77 + 72);
      while (v78 != v79)
      {
        if (*v78)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v78);
          IOGPUResourceListAddResource();
        }

        v78 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v76, v75, 3, 3, v74);
  }

  v80 = self->_impl;
  instanceTransformBuffer2 = [into instanceTransformBuffer];
  if (instanceTransformBuffer2)
  {
    v83 = instanceTransformBuffer2;
    v84 = v80[2];
    if (*(instanceTransformBuffer2 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v85 = *(instanceTransformBuffer2 + 312);
      IOGPUResourceListAddResource();
      v86 = *(v85 + 64);
      v87 = *(v85 + 72);
      while (v86 != v87)
      {
        if (*v86)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v86);
          IOGPUResourceListAddResource();
        }

        v86 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v84, v83, 3, 3, v82);
  }

  v88 = self->_impl;
  perPrimitiveDataBuffer2 = [into perPrimitiveDataBuffer];
  if (perPrimitiveDataBuffer2)
  {
    v91 = perPrimitiveDataBuffer2;
    v92 = v88[2];
    if (*(perPrimitiveDataBuffer2 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v93 = *(perPrimitiveDataBuffer2 + 312);
      IOGPUResourceListAddResource();
      v94 = *(v93 + 64);
      v95 = *(v93 + 72);
      while (v94 != v95)
      {
        if (*v94)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v94);
          IOGPUResourceListAddResource();
        }

        v94 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v92, v91, 3, 3, v90);
  }

  v96 = self->_impl;
  controlPointBuffer2 = [into controlPointBuffer];
  if (controlPointBuffer2)
  {
    v99 = controlPointBuffer2;
    v100 = v96[2];
    if (*(controlPointBuffer2 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v101 = *(controlPointBuffer2 + 312);
      IOGPUResourceListAddResource();
      v102 = *(v101 + 64);
      v103 = *(v101 + 72);
      while (v102 != v103)
      {
        if (*v102)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v102);
          IOGPUResourceListAddResource();
        }

        v102 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v100, v99, 3, 3, v98);
  }

  selfCopy = self;
  v104 = self->_impl;
  headerBuffer = [into headerBuffer];
  headerBufferOffset = [into headerBufferOffset];
  innerNodeBuffer3 = [into innerNodeBuffer];
  innerNodeBufferOffset = [into innerNodeBufferOffset];
  leafNodeBuffer3 = [into leafNodeBuffer];
  leafNodeBufferOffset = [into leafNodeBufferOffset];
  primitiveBuffer3 = [into primitiveBuffer];
  primitiveBufferOffset = [into primitiveBufferOffset];
  geometryBuffer3 = [into geometryBuffer];
  geometryBufferOffset = [into geometryBufferOffset];
  instanceTransformBuffer3 = [into instanceTransformBuffer];
  instanceTransformBufferOffset = [into instanceTransformBufferOffset];
  perPrimitiveDataBuffer3 = [into perPrimitiveDataBuffer];
  perPrimitiveDataBufferOffset = [into perPrimitiveDataBufferOffset];
  controlPointBuffer3 = [into controlPointBuffer];
  controlPointBufferOffset = [into controlPointBufferOffset];
  version = [into version];
  if (*(v104 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(v104);
  }

  buffer3 = [structureCopy buffer];
  bufferOffset = [structureCopy bufferOffset];
  v113 = dword_29D2F53D0[version];
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(v104 + 2), buffer3, bufferOffset, 7u, 0);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(v104 + 2), headerBuffer, headerBufferOffset, 0xAu, 0);
  v191 = innerNodeBuffer3;
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(v104 + 2), innerNodeBuffer3, innerNodeBufferOffset, 0xBu, 0);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(v104 + 2), leafNodeBuffer3, leafNodeBufferOffset, 0xCu, 0);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(v104 + 2), primitiveBuffer3, primitiveBufferOffset, 0xDu, 0);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(v104 + 2), geometryBuffer3, geometryBufferOffset, 0xEu, 0);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(v104 + 2), instanceTransformBuffer3, instanceTransformBufferOffset, 0xFu, 0);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(v104 + 2), perPrimitiveDataBuffer3, perPrimitiveDataBufferOffset, 0x10u, 0);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(v104 + 2), controlPointBuffer3, controlPointBufferOffset, 0x11u, 0);
  v216 = 0;
  v217 = 0;
  v218 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v216, v104, 48, 1);
  v115 = v217;
  v114 = v218;
  v116 = *(v104 + 2);
  *(v116 + 26480) = v217;
  v117 = *(v116 + 22488);
  *(v117 + 72) = v115;
  *(v116 + 22576) = v114;
  *(v116 + 27560) |= 0x200uLL;
  *(v116 + 27592) |= 1u;
  *(v117 + 17424) = 0;
  v118 = *(v116 + 168);
  v119 = v118 + 31;
  if ((v118 + 31) <= *(v116 + 160))
  {
LABEL_100:
    *(v116 + 176) = v119;
    goto LABEL_101;
  }

  v182 = AGX::DataBufferAllocator<44ul>::growNoInline(v116 + 24, 3, 0);
  v118 = *(v116 + 168);
  if (v182)
  {
    v119 = v118 + 31;
    if ((v118 + 31) > *(v116 + 160))
    {
      goto LABEL_136;
    }

    goto LABEL_100;
  }

LABEL_101:
  v120 = ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v120 + *(v116 + 184);
  *(v116 + 168) = v120 + 2;
  *(v116 + 26192) = 0;
  *(v116 + 27560) |= 0x100uLL;
  *(v116 + 27592) |= 1u;
  v122 = *(v116 + 22488);
  *(v122 + 64) = v121;
  *(v116 + 22568) = *(*(v116 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(v122 + 17548) = 8;
  *(v122 + 17704) = 8;
  *(v122 + 17708) = v121 >> 8;
  *v120 = version;
  {
    {
    }

    {
    }

    if (shouldDumpOrVerifyBVHs(void)::once != -1)
    {
      dispatch_once(&shouldDumpOrVerifyBVHs(void)::once, &__block_literal_global_567);
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteGenericBVHStructures(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,MTLGenericBVHHeaderVersionSPI)::verify = 0;
  }

  if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteGenericBVHStructures(AGXG18PFamilyRayTracingAccelerationStructure *,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,AGXG18PFamilyBuffer *,unsigned long,MTLGenericBVHHeaderVersionSPI)::verify != 1)
  {
    goto LABEL_106;
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(v221.i64, v104, 0x480188uLL, 1);
  v123 = v221.i64[1];
  bzero(v221.i64[1], 0x480188uLL);
  *(v123 + 8) = -1;
  v124 = **(v104 + 2);
  v216 = MEMORY[0x29EDCA5F8];
  v217 = 3221225472;
  v218 = ___ZN3AGX24RayTracingGPUBuilderGen1INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE31encodeWriteGenericBVHStructuresEP44AGXG18PFamilyRayTracingAccelerationStructureP19AGXG18PFamilyBuffermSA_mSA_mSA_mSA_mSA_mSA_mSA_m29MTLGenericBVHHeaderVersionSPI_block_invoke;
  v219 = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
  v220 = v123;
  [v124 addCompletedHandler:&v216];
  v125 = v221.i64[0];
  v126 = *(v104 + 2);
  *(*(v126 + 22488) + 17408) = 0;
  v127 = *(v126 + 168);
  v128 = v127 + 31;
  if ((v127 + 31) > *(v126 + 160))
  {
    v183 = AGX::DataBufferAllocator<44ul>::growNoInline(v126 + 24, 3, 0);
    v127 = *(v126 + 168);
    if (!v183)
    {
      goto LABEL_105;
    }

    v128 = v127 + 31;
    if ((v127 + 31) > *(v126 + 160))
    {
LABEL_136:
      abort();
    }
  }

  *(v126 + 176) = v128;
LABEL_105:
  v129 = ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v129 + *(v126 + 184);
  *(v126 + 168) = v129 + 2;
  *(v126 + 26160) = 0;
  *(v126 + 27560) |= 0x10uLL;
  *(v126 + 27592) |= 1u;
  v131 = *(v126 + 22488);
  *(v131 + 32) = v130;
  *(v126 + 22536) = *(*(v126 + 48) + 224) + *MEMORY[0x29EDC5638];
  *(v131 + 17532) = 16;
  *(v131 + 17672) = 16;
  *(v131 + 17676) = v130 >> 8;
  *v129 = v125;
  v129[1] = 0;
LABEL_106:
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v104, v113, 0);
  v133 = *(v104 + 2);
  v221 = vdupq_n_s64(1uLL);
  *&v222 = 1;
  v213 = v221;
  v214 = 1;
  *(v133 + 2060) |= 4u;
  v134 = *(v133 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v133, Pipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v133, 22, &v221, &v213);
  if (*(v133 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v133, 22, 0, 0);
  }

  if (v134)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v133, v134);
  }

  v135 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v104, 43, 0);
  v136 = *(v104 + 2);
  v221 = vdupq_n_s64(1uLL);
  *&v222 = 1;
  v213 = v221;
  v214 = 1;
  *(v136 + 2060) |= 4u;
  v137 = *(v136 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v136, v135);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v136, 22, &v221, &v213);
  if (*(v136 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v136, 22, 0, 0);
  }

  if (v137)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v136, v137);
  }

  v138 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v104, 44, 0);
  v139 = *(v104 + 2);
  v221 = vdupq_n_s64(1uLL);
  *&v222 = 1;
  v213 = v221;
  v214 = 1;
  *(v139 + 2060) |= 4u;
  v140 = *(v139 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v139, v138);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v139, 22, &v221, &v213);
  if (*(v139 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v139, 22, 0, 0);
  }

  if (v140)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v139, v140);
  }

  v141 = 31;
  do
  {
    v142 = *(v104 + 2);
    *(*(v142 + 22488) + 17424) = 0;
    v143 = *(v142 + 168);
    v144 = v143 + 31;
    if ((v143 + 31) <= *(v142 + 160))
    {
      goto LABEL_121;
    }

    v159 = AGX::DataBufferAllocator<44ul>::growNoInline(v142 + 24, 3, 0);
    v143 = *(v142 + 168);
    if (v159)
    {
      v144 = v143 + 31;
      if ((v143 + 31) > *(v142 + 160))
      {
        goto LABEL_136;
      }

LABEL_121:
      *(v142 + 176) = v144;
    }

    v145 = ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
    v146 = v145 + *(v142 + 184);
    *(v142 + 168) = v145 + 2;
    *(v142 + 26192) = 0;
    *(v142 + 27560) |= 0x100uLL;
    *(v142 + 27592) |= 1u;
    v147 = *(v142 + 22488);
    *(v147 + 64) = v146;
    *(v142 + 22568) = *(*(v142 + 48) + 224) + *MEMORY[0x29EDC5638];
    *(v147 + 17548) = 8;
    *(v147 + 17704) = 8;
    *(v147 + 17708) = v146 >> 8;
    *v145 = version;
    v148 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v104, 45, 0);
    v221 = 0u;
    v222 = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(v104, v148, v115 + 8, v114, v221.i64, 1, 0, 1);
    v149 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v104, 42, 0);
    v150 = *(v104 + 2);
    v221 = vdupq_n_s64(1uLL);
    *&v222 = 1;
    v213 = v221;
    v214 = 1;
    *(v150 + 2060) |= 4u;
    v151 = *(v150 + 2336);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v150, v149);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v150, 22, &v221, &v213);
    if (*(v150 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v150, 22, 0, 0);
    }

    if (v151)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v150, v151);
    }

    v152 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v104, 52, 0);
    v221 = 0u;
    v222 = 0u;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(v104, v152, v115 + 16, v114, v221.i64, 1, 0, 1);
    v153 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v104, 43, 0);
    v154 = *(v104 + 2);
    v221 = vdupq_n_s64(1uLL);
    *&v222 = 1;
    v213 = v221;
    v214 = 1;
    *(v154 + 2060) |= 4u;
    v155 = *(v154 + 2336);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v154, v153);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v154, 22, &v221, &v213);
    if (*(v154 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v154, 22, 0, 0);
    }

    if (v155)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v154, v155);
    }

    v156 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v104, 44, 0);
    v157 = *(v104 + 2);
    v221 = vdupq_n_s64(1uLL);
    *&v222 = 1;
    v213 = v221;
    v214 = 1;
    *(v157 + 2060) |= 4u;
    v158 = *(v157 + 2336);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v157, v156);
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v157, 22, &v221, &v213);
    if (*(v157 + 2292) == 1)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v157, 22, 0, 0);
    }

    if (v158)
    {
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v157, v158);
    }

    --v141;
  }

  while (v141);
  v160 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v104, dword_29D2F53E8[version], 0);
  v221 = 0u;
  v222 = 0u;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(v104, v160, v115 + 20, v114, v221.i64, 1, 0, 1);
  v161 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v104, 54, 0);
  v221 = 0u;
  v222 = 0u;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::dispatchWithIndirectThreadCountExtended(v104, v161, v115 + 44, v114, v221.i64, 1, 0, 1);
  v213 = 0uLL;
  v214 = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v213, v104, 8, 0);
  v221.i64[0] = v213.i64[1];
  v221.i64[1] = v213.i64[0];
  *&v222 = 8;
  *(&v222 + 1) = v214;
  *v213.i64[0] = 0;
  gpuAddress = [buffer3 gpuAddress];
  v163 = [buffer3 length];
  v164 = gpuAddress + bufferOffset;
  if (perPrimitiveDataBuffer3)
  {
    v210 = 0uLL;
    v211 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v210, v104, 8, 1);
    v213.i64[0] = v210.i64[1];
    v213.i64[1] = v210.i64[0];
    v214 = 8;
    v215 = v211;
    v210.i64[0] = v164 + 112;
    v210.i64[1] = 48;
    v211 = v163;
    v212 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeStridedCopy(v104, v164 + 40, v210.i64, 8, 1, 1u, 8, v213.i64, v221.i64, 8);
    v210.i64[0] = v164 + 136;
    v210.i64[1] = 72;
    v211 = v163;
    v212 = 0;
    gpuAddress2 = [perPrimitiveDataBuffer3 gpuAddress];
    v166 = [perPrimitiveDataBuffer3 length];
    v206 = gpuAddress2 + perPrimitiveDataBufferOffset;
    v207 = perPrimitiveDataBufferOffset;
    v208 = v166;
    v209 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeStridedCopy(v104, v164, v210.i64, 4, v213.i64, 0, 4, &v206, v221.i64, 4);
  }

  if (controlPointBuffer3)
  {
    v210 = 0uLL;
    v211 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v210, v104, 8, 1);
    v213.i64[0] = v210.i64[1];
    v213.i64[1] = v210.i64[0];
    v214 = 8;
    v215 = v211;
    *v210.i64[0] = 0;
    v210.i64[0] = v164 + 112;
    v210.i64[1] = 48;
    v211 = v163;
    v212 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeStridedCopy(v104, v164 + 8, v210.i64, 4, 1, 1u, 4, v213.i64, v221.i64, 4);
    v210.i64[0] = v164 + 152;
    v210.i64[1] = 88;
    v211 = v163;
    v212 = 0;
    gpuAddress3 = [controlPointBuffer3 gpuAddress];
    v168 = [controlPointBuffer3 length];
    v206 = gpuAddress3 + controlPointBufferOffset;
    v207 = controlPointBufferOffset;
    v208 = v168;
    v209 = 0;
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeStridedCopy(v104, v164, v210.i64, 16, v213.i64, 0, 16, &v206, v221.i64, 16);
  }

  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(v104 + 2), buffer3, bufferOffset, 7u, 0);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(*(v104 + 2), v191, innerNodeBufferOffset, 0xBu, 0);
  v169 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v104, 53, 0);
  v170 = *(v104 + 2);
  v213 = vdupq_n_s64(1uLL);
  v214 = 1;
  v210 = v213;
  v211 = 1;
  *(v170 + 2060) |= 4u;
  v171 = *(v170 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v170, v169);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v170, 22, &v213, &v210);
  if (*(v170 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v170, 22, 0, 0);
  }

  if (v171)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v170, v171);
  }

  v172 = selfCopy->_progressBins;
  if (v172)
  {
    v173 = v172[21];
    *&v172[2 * v173 + 12] = *(v172 + 11) + *&v172[2 * v173 + 12];
    *(v172 + 11) = 0;
    if (*(v172 + 48) == 1)
    {
      v174 = *(v172 + 9);
      if (v174)
      {
        v175 = *(v172 + 35);
        do
        {
          *(v174 + 8) = v175;
          *(v174 + 9) = v173;
          v174 = *v174;
        }

        while (v174);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v172 + 12, v172 + 7);
      ++*(v172 + 35);
    }

    else if (*(v172 + 22))
    {
      v176 = *(v172 + 35);
      *(v172 + 35) = v176 + 1;
      v177 = *(v172 + 21);
      if (v177)
      {
        v178 = *(v172 + 18);
        v179 = *(v172 + 21);
        do
        {
          *(v178 + 4 * *(v179 + 4)) = v176;
          v179 = *v179;
        }

        while (v179);
        do
        {
          v180 = *v177;
          operator delete(v177);
          v177 = v180;
        }

        while (v180);
      }

      *(v172 + 21) = 0;
      v181 = *(v172 + 20);
      if (v181)
      {
        bzero(*(v172 + 19), 8 * v181);
      }

      *(v172 + 22) = 0;
      if ((v176 & 0x80000000) == 0 && !selfCopy->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)selfCopy->_computeEncoder signalProgress:v176];
      }
    }
  }

  return 1;
}

uint64_t __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __90__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into
{
  result = 0;
  if (structure && into)
  {
    if (([into version] - 256) > 5)
    {
      return 0;
    }

    else
    {
      [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream];
      v8 = [*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB788]) newBufferWithLength:64 options:0];
      progressBins = self->_progressBins;
      if (progressBins)
      {
        computeEncoder = self->_computeEncoder;
        v12 = *(progressBins + 20);
        if (v12 < 2)
        {
          v13 = 0;
        }

        else
        {
          v13 = 0;
          v14 = progressBins[6];
          v15 = progressBins + 7;
          for (i = 1; i != v12; ++i)
          {
            v17 = *v15++;
            v18 = v17;
            if (v17 < v14)
            {
              v14 = v18;
              v13 = i;
            }
          }
        }

        v19 = *progressBins + (progressBins[1] * 64.0);
        *(progressBins + 21) = v13;
        progressBins[11] = v19;
        [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v13];
        v20 = self->_progressBins;
        buffer = [structure buffer];
        v53[0] = MEMORY[0x29EDCA5F8];
        v53[1] = 3221225472;
        v53[2] = __95__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureSizesOfAccelerationStructure_into___block_invoke;
        v53[3] = &unk_29F3420F0;
        v53[4] = self;
        ProgressBinsSynchronizeBufferAccess(v20, buffer, 0, v53);
        v22 = self->_progressBins;
        v52[0] = MEMORY[0x29EDCA5F8];
        v52[1] = 3221225472;
        v52[2] = __95__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureSizesOfAccelerationStructure_into___block_invoke_2;
        v52[3] = &unk_29F3420F0;
        v52[4] = self;
        ProgressBinsSynchronizeBufferAccess(v22, v8, 1, v52);
      }

      v23 = MEMORY[0x29EDC5638];
      v24 = *(self->_impl + 2);
      if (*(structure + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
      {
        v25 = *(structure + 39);
        IOGPUResourceListAddResource();
        v27 = *(v25 + 64);
        v26 = *(v25 + 72);
        while (v27 != v26)
        {
          if (*v27)
          {
            AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v27);
            IOGPUResourceListAddResource();
          }

          v27 += 2;
        }
      }

      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v24, structure, 3, 3, v9);
      impl = self->_impl;
      if (v8)
      {
        v30 = impl[2];
        if (*(v8 + *v23 + 16) >> 61 == 3)
        {
          v31 = v8[39];
          IOGPUResourceListAddResource();
          v32 = *(v31 + 64);
          v33 = *(v31 + 72);
          while (v32 != v33)
          {
            if (*v32)
            {
              AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v32);
              IOGPUResourceListAddResource();
            }

            v32 += 2;
          }
        }

        AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v30, v8, 3, 3, v28);
        impl = self->_impl;
      }

      gpuAddress = [v8 gpuAddress];
      [v8 length];
      version = [into version];
      if (*(impl + 49) == 1)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(impl);
      }

      Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(impl, dword_29D2F53B8[version], 0);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setBuffer_impl<AGXBuffer>(impl[2], [structure buffer], objc_msgSend(structure, "bufferOffset"), 0, 0);
      v37 = impl[2];
      *(v37 + 26416) = gpuAddress;
      *(*(v37 + 22488) + 8) = gpuAddress;
      v38 = *(v37 + 27592);
      *(v37 + 22512) = 0;
      *(v37 + 27592) = v38 | 1;
      *(v37 + 27560) |= 2uLL;
      v56 = vdupq_n_s64(1uLL);
      v57 = 1;
      v54 = v56;
      v55 = 1;
      *(v37 + 2060) |= 4u;
      v39 = *(v37 + 2336);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v37, Pipeline);
      AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v37, 22, &v56, &v54);
      if (*(v37 + 2292) == 1)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v37, 22, 0, 0);
      }

      if (v39)
      {
        AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v37, v39);
      }

      v40 = *(&self->super.super.super.super.isa + *MEMORY[0x29EDBB780]);
      v51[0] = MEMORY[0x29EDCA5F8];
      v51[1] = 3221225472;
      v51[2] = __95__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureSizesOfAccelerationStructure_into___block_invoke_3;
      v51[3] = &unk_29F342118;
      v51[4] = v8;
      v51[5] = into;
      [v40 addCompletedHandler:v51];
      v41 = self->_progressBins;
      if (v41)
      {
        v42 = v41[21];
        *&v41[2 * v42 + 12] = *(v41 + 11) + *&v41[2 * v42 + 12];
        *(v41 + 11) = 0;
        if (*(v41 + 48) == 1)
        {
          v43 = *(v41 + 9);
          if (v43)
          {
            v44 = *(v41 + 35);
            do
            {
              *(v43 + 8) = v44;
              *(v43 + 9) = v42;
              v43 = *v43;
            }

            while (v43);
          }

          std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v41 + 12, v41 + 7);
          ++*(v41 + 35);
        }

        else if (*(v41 + 22))
        {
          v45 = *(v41 + 35);
          *(v41 + 35) = v45 + 1;
          v46 = *(v41 + 21);
          if (v46)
          {
            v47 = *(v41 + 18);
            v48 = *(v41 + 21);
            do
            {
              *(v47 + 4 * *(v48 + 4)) = v45;
              v48 = *v48;
            }

            while (v48);
            do
            {
              v49 = *v46;
              operator delete(v46);
              v46 = v49;
            }

            while (v49);
          }

          *(v41 + 21) = 0;
          v50 = *(v41 + 20);
          if (v50)
          {
            bzero(*(v41 + 19), 8 * v50);
          }

          *(v41 + 22) = 0;
          if ((v45 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
          {
            [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v45];
          }
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t __95__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureSizesOfAccelerationStructure_into___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __95__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureSizesOfAccelerationStructure_into___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

void __95__AGXG18PFamilyRayTracingGPUBuilder_writeGenericBVHStructureSizesOfAccelerationStructure_into___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) contents];
  [*(a1 + 40) setHeaderBufferSize:*v2];
  [*(a1 + 40) setInnerNodeBufferSize:v2[1]];
  [*(a1 + 40) setLeafNodeBufferSize:v2[2]];
  [*(a1 + 40) setPrimitiveBufferSize:v2[3]];
  [*(a1 + 40) setGeometryBufferSize:v2[4]];
  [*(a1 + 40) setInstanceTransformBufferSize:v2[5]];
  [*(a1 + 40) setPerPrimitiveDataBufferSize:v2[6]];
  [*(a1 + 40) setControlPointBufferSize:v2[7]];
  v3 = *(a1 + 32);
}

- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor
{
  [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream:structure];
  progressBins = self->_progressBins;
  if (progressBins)
  {
    computeEncoder = self->_computeEncoder;
    v14 = [structure size];
    v15 = *(progressBins + 20);
    if (v15 < 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v17 = progressBins[6];
      v18 = progressBins + 7;
      for (i = 1; i != v15; ++i)
      {
        v20 = *v18++;
        v21 = v20;
        if (v20 < v17)
        {
          v17 = v21;
          v16 = i;
        }
      }
    }

    v22 = *progressBins + (progressBins[1] * v14);
    *(progressBins + 21) = v16;
    progressBins[11] = v22;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v16];
    v23 = self->_progressBins;
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];
    v26 = [structure size];
    v67[0] = MEMORY[0x29EDCA5F8];
    v67[1] = 3221225472;
    v67[2] = __159__AGXG18PFamilyRayTracingGPUBuilder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke;
    v67[3] = &unk_29F3420F0;
    v67[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v23, buffer, bufferOffset, v26, 1, v67);
    [(AGXG18PFamilyRayTracingGPUBuilder *)self substreamSynchronizeAccelerationStructures:structures access:0];
    v27 = self->_progressBins;
    v28 = [structure size];
    v66[0] = MEMORY[0x29EDCA5F8];
    v66[1] = 3221225472;
    v66[2] = __159__AGXG18PFamilyRayTracingGPUBuilder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke_2;
    v66[3] = &unk_29F3420F0;
    v66[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v27, buffer, offset, v28, 0, v66);
  }

  structuresCopy = structures;
  impl = self->_impl;
  v30 = MEMORY[0x29EDC5638];
  if (structure)
  {
    v31 = impl[2];
    if (*(structure + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v32 = *(structure + 39);
      IOGPUResourceListAddResource();
      v34 = *(v32 + 64);
      v33 = *(v32 + 72);
      while (v34 != v33)
      {
        if (*v34)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v34);
          IOGPUResourceListAddResource();
        }

        v34 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v31, structure, 3, 3, v11);
    impl = self->_impl;
  }

  buffer2 = [structure buffer];
  if (buffer2)
  {
    v37 = buffer2;
    v38 = impl[2];
    if (*(buffer2 + *v30 + 16) >> 61 == 3)
    {
      v39 = *(buffer2 + 312);
      IOGPUResourceListAddResource();
      v40 = *(v39 + 64);
      v41 = *(v39 + 72);
      while (v40 != v41)
      {
        if (*v40)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v40);
          IOGPUResourceListAddResource();
        }

        v40 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v38, v37, 3, 3, v36);
    v30 = MEMORY[0x29EDC5638];
  }

  v42 = self->_impl;
  if (buffer)
  {
    v43 = v42[2];
    if (*(buffer + *v30 + 16) >> 61 == 3)
    {
      v44 = *(buffer + 39);
      IOGPUResourceListAddResource();
      v45 = *(v44 + 64);
      v46 = *(v44 + 72);
      while (v45 != v46)
      {
        if (*v45)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v45);
          IOGPUResourceListAddResource();
        }

        v45 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v43, buffer, 1, 1, v36);
    v42 = self->_impl;
  }

  gpuAddress = [buffer gpuAddress];
  v48 = [buffer length];
  accelerationStructureUniqueIdentifier = [structure accelerationStructureUniqueIdentifier];
  if (*(v42 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(v42);
  }

  buffer3 = [structure buffer];
  bufferOffset2 = [structure bufferOffset];
  gpuAddress2 = [buffer3 gpuAddress];
  v53 = [buffer3 length];
  v69[0] = gpuAddress2 + bufferOffset2;
  v69[1] = bufferOffset2;
  v69[2] = v53;
  v69[3] = 0;
  v68[0] = gpuAddress + offset;
  v68[1] = offset;
  v68[2] = v48;
  v68[3] = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeDeserialize_impl(v42, v69, structuresCopy, v68, accelerationStructureUniqueIdentifier);
  v54 = self->_progressBins;
  if (v54)
  {
    v55 = v54[21];
    *&v54[2 * v55 + 12] = *(v54 + 11) + *&v54[2 * v55 + 12];
    *(v54 + 11) = 0;
    if (*(v54 + 48) == 1)
    {
      v56 = *(v54 + 9);
      if (v56)
      {
        v57 = *(v54 + 35);
        do
        {
          *(v56 + 8) = v57;
          *(v56 + 9) = v55;
          v56 = *v56;
        }

        while (v56);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v54 + 12, v54 + 7);
      ++*(v54 + 35);
    }

    else if (*(v54 + 22))
    {
      v58 = *(v54 + 35);
      *(v54 + 35) = v58 + 1;
      v59 = *(v54 + 21);
      if (v59)
      {
        v60 = *(v54 + 18);
        v61 = *(v54 + 21);
        do
        {
          *(v60 + 4 * *(v61 + 4)) = v58;
          v61 = *v61;
        }

        while (v61);
        do
        {
          v62 = *v59;
          operator delete(v59);
          v59 = v62;
        }

        while (v62);
      }

      *(v54 + 21) = 0;
      v63 = *(v54 + 20);
      if (v63)
      {
        bzero(*(v54 + 19), 8 * v63);
      }

      *(v54 + 22) = 0;
      if ((v58 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v58];
      }
    }
  }
}

uint64_t __159__AGXG18PFamilyRayTracingGPUBuilder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __159__AGXG18PFamilyRayTracingGPUBuilder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor
{
  [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream:structure];
  progressBins = self->_progressBins;
  if (progressBins)
  {
    computeEncoder = self->_computeEncoder;
    v13 = [structure size];
    v14 = *(progressBins + 20);
    if (v14 < 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      v16 = progressBins[6];
      v17 = progressBins + 7;
      for (i = 1; i != v14; ++i)
      {
        v19 = *v17++;
        v20 = v19;
        if (v19 < v16)
        {
          v16 = v20;
          v15 = i;
        }
      }
    }

    v21 = *progressBins + (progressBins[1] * v13);
    *(progressBins + 21) = v15;
    progressBins[11] = v21;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v15];
    v22 = self->_progressBins;
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];
    v25 = [structure size];
    v65[0] = MEMORY[0x29EDCA5F8];
    v65[1] = 3221225472;
    v65[2] = __128__AGXG18PFamilyRayTracingGPUBuilder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke;
    v65[3] = &unk_29F3420F0;
    v65[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v22, buffer, bufferOffset, v25, 1, v65);
    v26 = self->_progressBins;
    v27 = [structure size];
    v64[0] = MEMORY[0x29EDCA5F8];
    v64[1] = 3221225472;
    v64[2] = __128__AGXG18PFamilyRayTracingGPUBuilder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke_2;
    v64[3] = &unk_29F3420F0;
    v64[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v26, buffer, offset, v27, 0, v64);
  }

  impl = self->_impl;
  v29 = MEMORY[0x29EDC5638];
  if (structure)
  {
    v30 = impl[2];
    if (*(structure + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v31 = *(structure + 39);
      IOGPUResourceListAddResource();
      v33 = *(v31 + 64);
      v32 = *(v31 + 72);
      while (v33 != v32)
      {
        if (*v33)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v33);
          IOGPUResourceListAddResource();
        }

        v33 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v30, structure, 3, 3, v10);
    impl = self->_impl;
  }

  buffer2 = [structure buffer];
  if (buffer2)
  {
    v36 = buffer2;
    v37 = impl[2];
    if (*(buffer2 + *v29 + 16) >> 61 == 3)
    {
      v38 = *(buffer2 + 312);
      IOGPUResourceListAddResource();
      v39 = *(v38 + 64);
      v40 = *(v38 + 72);
      while (v39 != v40)
      {
        if (*v39)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v39);
          IOGPUResourceListAddResource();
        }

        v39 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v37, v36, 3, 3, v35);
    v29 = MEMORY[0x29EDC5638];
  }

  v41 = self->_impl;
  if (buffer)
  {
    v42 = v41[2];
    if (*(buffer + *v29 + 16) >> 61 == 3)
    {
      v43 = *(buffer + 39);
      IOGPUResourceListAddResource();
      v44 = *(v43 + 64);
      v45 = *(v43 + 72);
      while (v44 != v45)
      {
        if (*v44)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v44);
          IOGPUResourceListAddResource();
        }

        v44 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v42, buffer, 1, 1, v35);
    v41 = self->_impl;
  }

  gpuAddress = [buffer gpuAddress];
  v47 = [buffer length];
  accelerationStructureUniqueIdentifier = [structure accelerationStructureUniqueIdentifier];
  if (*(v41 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(v41);
  }

  buffer3 = [structure buffer];
  bufferOffset2 = [structure bufferOffset];
  gpuAddress2 = [buffer3 gpuAddress];
  v52 = [buffer3 length];
  v67[0] = gpuAddress2 + bufferOffset2;
  v67[1] = bufferOffset2;
  v67[2] = v52;
  v67[3] = 0;
  v66[0] = gpuAddress + v63;
  v66[1] = v63;
  v66[2] = v47;
  v66[3] = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeDeserialize_impl(v41, v67, 0, v66, accelerationStructureUniqueIdentifier);
  v53 = self->_progressBins;
  if (v53)
  {
    v54 = v53[21];
    *&v53[2 * v54 + 12] = *(v53 + 11) + *&v53[2 * v54 + 12];
    *(v53 + 11) = 0;
    if (*(v53 + 48) == 1)
    {
      v55 = *(v53 + 9);
      if (v55)
      {
        v56 = *(v53 + 35);
        do
        {
          *(v55 + 8) = v56;
          *(v55 + 9) = v54;
          v55 = *v55;
        }

        while (v55);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v53 + 12, v53 + 7);
      ++*(v53 + 35);
    }

    else if (*(v53 + 22))
    {
      v57 = *(v53 + 35);
      *(v53 + 35) = v57 + 1;
      v58 = *(v53 + 21);
      if (v58)
      {
        v59 = *(v53 + 18);
        v60 = *(v53 + 21);
        do
        {
          *(v59 + 4 * *(v60 + 4)) = v57;
          v60 = *v60;
        }

        while (v60);
        do
        {
          v61 = *v58;
          operator delete(v58);
          v58 = v61;
        }

        while (v61);
      }

      *(v53 + 21) = 0;
      v62 = *(v53 + 20);
      if (v62)
      {
        bzero(*(v53 + 19), 8 * v62);
      }

      *(v53 + 22) = 0;
      if ((v57 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v57];
      }
    }
  }
}

uint64_t __128__AGXG18PFamilyRayTracingGPUBuilder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __128__AGXG18PFamilyRayTracingGPUBuilder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream];
  progressBins = self->_progressBins;
  if (progressBins)
  {
    computeEncoder = self->_computeEncoder;
    v13 = [structure size];
    v14 = *(progressBins + 20);
    if (v14 < 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      v16 = progressBins[6];
      v17 = progressBins + 7;
      for (i = 1; i != v14; ++i)
      {
        v19 = *v17++;
        v20 = v19;
        if (v19 < v16)
        {
          v16 = v20;
          v15 = i;
        }
      }
    }

    v21 = *progressBins + (progressBins[1] * v13);
    *(progressBins + 21) = v15;
    progressBins[11] = v21;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v15];
    v22 = self->_progressBins;
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];
    v25 = [structure size];
    v66[0] = MEMORY[0x29EDCA5F8];
    v66[1] = 3221225472;
    v66[2] = __144__AGXG18PFamilyRayTracingGPUBuilder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset___block_invoke;
    v66[3] = &unk_29F3420F0;
    v66[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v22, buffer, bufferOffset, v25, 1, v66);
    [(AGXG18PFamilyRayTracingGPUBuilder *)self substreamSynchronizeAccelerationStructures:structures access:0];
    v26 = self->_progressBins;
    v27 = [structure size];
    v65[0] = MEMORY[0x29EDCA5F8];
    v65[1] = 3221225472;
    v65[2] = __144__AGXG18PFamilyRayTracingGPUBuilder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset___block_invoke_2;
    v65[3] = &unk_29F3420F0;
    v65[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v26, buffer, offset, v27, 0, v65);
  }

  structuresCopy = structures;
  impl = self->_impl;
  v29 = MEMORY[0x29EDC5638];
  if (structure)
  {
    v30 = impl[2];
    if (*(structure + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v31 = *(structure + 39);
      IOGPUResourceListAddResource();
      v33 = *(v31 + 64);
      v32 = *(v31 + 72);
      while (v33 != v32)
      {
        if (*v33)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v33);
          IOGPUResourceListAddResource();
        }

        v33 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v30, structure, 3, 3, v10);
    impl = self->_impl;
  }

  buffer2 = [structure buffer];
  if (buffer2)
  {
    v36 = buffer2;
    v37 = impl[2];
    if (*(buffer2 + *v29 + 16) >> 61 == 3)
    {
      v38 = *(buffer2 + 312);
      IOGPUResourceListAddResource();
      v39 = *(v38 + 64);
      v40 = *(v38 + 72);
      while (v39 != v40)
      {
        if (*v39)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v39);
          IOGPUResourceListAddResource();
        }

        v39 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v37, v36, 3, 3, v35);
    v29 = MEMORY[0x29EDC5638];
  }

  v41 = self->_impl;
  if (buffer)
  {
    v42 = v41[2];
    if (*(buffer + *v29 + 16) >> 61 == 3)
    {
      v43 = *(buffer + 39);
      IOGPUResourceListAddResource();
      v44 = *(v43 + 64);
      v45 = *(v43 + 72);
      while (v44 != v45)
      {
        if (*v44)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v44);
          IOGPUResourceListAddResource();
        }

        v44 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v42, buffer, 1, 1, v35);
    v41 = self->_impl;
  }

  gpuAddress = [buffer gpuAddress];
  v47 = [buffer length];
  accelerationStructureUniqueIdentifier = [structure accelerationStructureUniqueIdentifier];
  if (*(v41 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(v41);
  }

  buffer3 = [structure buffer];
  bufferOffset2 = [structure bufferOffset];
  gpuAddress2 = [buffer3 gpuAddress];
  v52 = [buffer3 length];
  v68[0] = gpuAddress2 + bufferOffset2;
  v68[1] = bufferOffset2;
  v68[2] = v52;
  v68[3] = 0;
  v67[0] = gpuAddress + offset;
  v67[1] = offset;
  v67[2] = v47;
  v67[3] = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeDeserialize_impl(v41, v68, structuresCopy, v67, accelerationStructureUniqueIdentifier);
  v53 = self->_progressBins;
  if (v53)
  {
    v54 = v53[21];
    *&v53[2 * v54 + 12] = *(v53 + 11) + *&v53[2 * v54 + 12];
    *(v53 + 11) = 0;
    if (*(v53 + 48) == 1)
    {
      v55 = *(v53 + 9);
      if (v55)
      {
        v56 = *(v53 + 35);
        do
        {
          *(v55 + 8) = v56;
          *(v55 + 9) = v54;
          v55 = *v55;
        }

        while (v55);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v53 + 12, v53 + 7);
      ++*(v53 + 35);
    }

    else if (*(v53 + 22))
    {
      v57 = *(v53 + 35);
      *(v53 + 35) = v57 + 1;
      v58 = *(v53 + 21);
      if (v58)
      {
        v59 = *(v53 + 18);
        v60 = *(v53 + 21);
        do
        {
          *(v59 + 4 * *(v60 + 4)) = v57;
          v60 = *v60;
        }

        while (v60);
        do
        {
          v61 = *v58;
          operator delete(v58);
          v58 = v61;
        }

        while (v61);
      }

      *(v53 + 21) = 0;
      v62 = *(v53 + 20);
      if (v62)
      {
        bzero(*(v53 + 19), 8 * v62);
      }

      *(v53 + 22) = 0;
      if ((v57 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v57];
      }
    }
  }
}

uint64_t __144__AGXG18PFamilyRayTracingGPUBuilder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __144__AGXG18PFamilyRayTracingGPUBuilder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  v9 = objc_opt_new();
  [(AGXG18PFamilyRayTracingGPUBuilder *)self deserializePrimitiveAccelerationStructure:structure fromBuffer:buffer serializedBufferOffset:offset withDescriptor:v9];
}

- (void)serializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream];
  progressBins = self->_progressBins;
  if (progressBins)
  {
    computeEncoder = self->_computeEncoder;
    v14 = [structure size];
    v15 = *(progressBins + 20);
    if (v15 < 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v17 = progressBins[6];
      v18 = progressBins + 7;
      for (i = 1; i != v15; ++i)
      {
        v20 = *v18++;
        v21 = v20;
        if (v20 < v17)
        {
          v17 = v21;
          v16 = i;
        }
      }
    }

    v22 = *progressBins + (progressBins[1] * v14);
    *(progressBins + 21) = v16;
    progressBins[11] = v22;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v16];
    v23 = self->_progressBins;
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];
    v26 = [structure size];
    v68[0] = MEMORY[0x29EDCA5F8];
    v68[1] = 3221225472;
    v68[2] = __140__AGXG18PFamilyRayTracingGPUBuilder_serializeInstanceAccelerationStructure_primitiveAccelerationStructures_toBuffer_serializedBufferOffset___block_invoke;
    v68[3] = &unk_29F3420F0;
    v68[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v23, buffer, bufferOffset, v26, 0, v68);
    [(AGXG18PFamilyRayTracingGPUBuilder *)self substreamSynchronizeAccelerationStructures:structures access:0];
    v27 = self->_progressBins;
    v28 = [structure size];
    v67[0] = MEMORY[0x29EDCA5F8];
    v67[1] = 3221225472;
    v67[2] = __140__AGXG18PFamilyRayTracingGPUBuilder_serializeInstanceAccelerationStructure_primitiveAccelerationStructures_toBuffer_serializedBufferOffset___block_invoke_2;
    v67[3] = &unk_29F3420F0;
    v67[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v27, buffer, offset, v28, 1, v67);
  }

  offsetCopy = offset;
  structuresCopy = structures;
  impl = self->_impl;
  v30 = MEMORY[0x29EDC5638];
  if (structure)
  {
    v31 = impl[2];
    if (*(structure + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v32 = *(structure + 39);
      IOGPUResourceListAddResource();
      v34 = *(v32 + 64);
      v33 = *(v32 + 72);
      while (v34 != v33)
      {
        if (*v34)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v34);
          IOGPUResourceListAddResource();
        }

        v34 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v31, structure, 1, 1, v11);
    impl = self->_impl;
    v30 = MEMORY[0x29EDC5638];
  }

  buffer2 = [structure buffer];
  if (buffer2)
  {
    v37 = buffer2;
    v64 = 104;
    v38 = impl[2];
    v39 = v30;
    if (*(buffer2 + *v30 + 16) >> 61 == 3)
    {
      v40 = *(buffer2 + 312);
      IOGPUResourceListAddResource();
      v42 = *(v40 + 64);
      v41 = *(v40 + 72);
      while (v42 != v41)
      {
        if (*v42)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v42);
          IOGPUResourceListAddResource();
        }

        v42 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v38, v37, 1, 1, v36);
    v30 = v39;
  }

  v43 = self->_impl;
  if (buffer)
  {
    v44 = v43[2];
    if (*(buffer + *v30 + 16) >> 61 == 3)
    {
      v45 = *(buffer + 39);
      IOGPUResourceListAddResource();
      v46 = *(v45 + 64);
      v47 = *(v45 + 72);
      while (v46 != v47)
      {
        if (*v46)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v46);
          IOGPUResourceListAddResource();
        }

        v46 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v44, buffer, 1, 1, v36);
    v43 = self->_impl;
  }

  gpuAddress = [buffer gpuAddress];
  v49 = [buffer length];
  if (*(v43 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(v43);
  }

  buffer3 = [structure buffer];
  bufferOffset2 = [structure bufferOffset];
  gpuAddress2 = [buffer3 gpuAddress];
  v53 = [buffer3 length];
  v70[0] = gpuAddress2 + bufferOffset2;
  v70[1] = bufferOffset2;
  v70[2] = v53;
  v70[3] = 0;
  v69[0] = gpuAddress + offsetCopy;
  v69[1] = offsetCopy;
  v69[2] = v49;
  v69[3] = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeSerialize_impl(v43, v70, structuresCopy, v69);
  v54 = self->_progressBins;
  if (v54)
  {
    v55 = v54[21];
    *&v54[2 * v55 + 12] = *(v54 + 11) + *&v54[2 * v55 + 12];
    *(v54 + 11) = 0;
    if (*(v54 + 48) == 1)
    {
      v56 = *(v54 + 9);
      if (v56)
      {
        v57 = *(v54 + 35);
        do
        {
          *(v56 + 8) = v57;
          *(v56 + 9) = v55;
          v56 = *v56;
        }

        while (v56);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v54 + 12, v54 + 7);
      ++*(v54 + 35);
    }

    else if (*(v54 + 22))
    {
      v58 = *(v54 + 35);
      *(v54 + 35) = v58 + 1;
      v59 = *(v54 + 21);
      if (v59)
      {
        v60 = *(v54 + 18);
        v61 = *(v54 + 21);
        do
        {
          *(v60 + 4 * *(v61 + 4)) = v58;
          v61 = *v61;
        }

        while (v61);
        do
        {
          v62 = *v59;
          operator delete(v59);
          v59 = v62;
        }

        while (v62);
      }

      *(v54 + 21) = 0;
      v63 = *(v54 + 20);
      if (v63)
      {
        bzero(*(v54 + 19), 8 * v63);
      }

      *(v54 + 22) = 0;
      if ((v58 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v58];
      }
    }
  }
}

uint64_t __140__AGXG18PFamilyRayTracingGPUBuilder_serializeInstanceAccelerationStructure_primitiveAccelerationStructures_toBuffer_serializedBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __140__AGXG18PFamilyRayTracingGPUBuilder_serializeInstanceAccelerationStructure_primitiveAccelerationStructures_toBuffer_serializedBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream];
  progressBins = self->_progressBins;
  if (progressBins)
  {
    computeEncoder = self->_computeEncoder;
    v12 = [structure size];
    v13 = *(progressBins + 20);
    if (v13 < 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      v15 = progressBins[6];
      v16 = progressBins + 7;
      for (i = 1; i != v13; ++i)
      {
        v18 = *v16++;
        v19 = v18;
        if (v18 < v15)
        {
          v15 = v19;
          v14 = i;
        }
      }
    }

    v20 = *progressBins + (progressBins[1] * v12);
    *(progressBins + 21) = v14;
    progressBins[11] = v20;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v14];
    v21 = self->_progressBins;
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];
    v24 = [structure size];
    v62[0] = MEMORY[0x29EDCA5F8];
    v62[1] = 3221225472;
    v62[2] = __109__AGXG18PFamilyRayTracingGPUBuilder_serializePrimitiveAccelerationStructure_toBuffer_serializedBufferOffset___block_invoke;
    v62[3] = &unk_29F3420F0;
    v62[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v21, buffer, bufferOffset, v24, 0, v62);
    v25 = self->_progressBins;
    v26 = [structure size];
    v61[0] = MEMORY[0x29EDCA5F8];
    v61[1] = 3221225472;
    v61[2] = __109__AGXG18PFamilyRayTracingGPUBuilder_serializePrimitiveAccelerationStructure_toBuffer_serializedBufferOffset___block_invoke_2;
    v61[3] = &unk_29F3420F0;
    v61[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v25, buffer, offset, v26, 1, v61);
  }

  impl = self->_impl;
  v28 = MEMORY[0x29EDC5638];
  if (structure)
  {
    v29 = impl[2];
    if (*(structure + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v30 = *(structure + 39);
      IOGPUResourceListAddResource();
      v32 = *(v30 + 64);
      v31 = *(v30 + 72);
      while (v32 != v31)
      {
        if (*v32)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v32);
          IOGPUResourceListAddResource();
        }

        v32 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v29, structure, 1, 1, v9);
    impl = self->_impl;
    v28 = MEMORY[0x29EDC5638];
  }

  buffer2 = [structure buffer];
  if (buffer2)
  {
    v35 = buffer2;
    v36 = impl[2];
    if (*(buffer2 + *v28 + 16) >> 61 == 3)
    {
      v37 = *(buffer2 + 312);
      IOGPUResourceListAddResource();
      v38 = *(v37 + 64);
      v39 = *(v37 + 72);
      while (v38 != v39)
      {
        if (*v38)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v38);
          IOGPUResourceListAddResource();
        }

        v38 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v36, v35, 1, 1, v34);
  }

  v40 = self->_impl;
  if (buffer)
  {
    v41 = v40[2];
    if (*(buffer + *v28 + 16) >> 61 == 3)
    {
      v42 = *(buffer + 39);
      IOGPUResourceListAddResource();
      v43 = *(v42 + 64);
      v44 = *(v42 + 72);
      while (v43 != v44)
      {
        if (*v43)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v43);
          IOGPUResourceListAddResource();
        }

        v43 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v41, buffer, 3, 3, v34);
    v40 = self->_impl;
  }

  gpuAddress = [buffer gpuAddress];
  v46 = [buffer length];
  if (*(v40 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(v40);
  }

  buffer3 = [structure buffer];
  bufferOffset2 = [structure bufferOffset];
  gpuAddress2 = [buffer3 gpuAddress];
  v50 = [buffer3 length];
  v64[0] = gpuAddress2 + bufferOffset2;
  v64[1] = bufferOffset2;
  v64[2] = v50;
  v64[3] = 0;
  v63[0] = gpuAddress + offset;
  v63[1] = offset;
  v63[2] = v46;
  v63[3] = 0;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeSerialize_impl(v40, v64, 0, v63);
  v51 = self->_progressBins;
  if (v51)
  {
    v52 = v51[21];
    *&v51[2 * v52 + 12] = *(v51 + 11) + *&v51[2 * v52 + 12];
    *(v51 + 11) = 0;
    if (*(v51 + 48) == 1)
    {
      v53 = *(v51 + 9);
      if (v53)
      {
        v54 = *(v51 + 35);
        do
        {
          *(v53 + 8) = v54;
          *(v53 + 9) = v52;
          v53 = *v53;
        }

        while (v53);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v51 + 12, v51 + 7);
      ++*(v51 + 35);
    }

    else if (*(v51 + 22))
    {
      v55 = *(v51 + 35);
      *(v51 + 35) = v55 + 1;
      v56 = *(v51 + 21);
      if (v56)
      {
        v57 = *(v51 + 18);
        v58 = *(v51 + 21);
        do
        {
          *(v57 + 4 * *(v58 + 4)) = v55;
          v58 = *v58;
        }

        while (v58);
        do
        {
          v59 = *v56;
          operator delete(v56);
          v56 = v59;
        }

        while (v59);
      }

      *(v51 + 21) = 0;
      v60 = *(v51 + 20);
      if (v60)
      {
        bzero(*(v51 + 19), 8 * v60);
      }

      *(v51 + 22) = 0;
      if ((v55 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v55];
      }
    }
  }
}

uint64_t __109__AGXG18PFamilyRayTracingGPUBuilder_serializePrimitiveAccelerationStructure_toBuffer_serializedBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __109__AGXG18PFamilyRayTracingGPUBuilder_serializePrimitiveAccelerationStructure_toBuffer_serializedBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)writeDeserializedAccelerationStructureSize:(id)size serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizeBufferOffset:(unint64_t)bufferOffset
{
  [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream];
  progressBins = self->_progressBins;
  if (progressBins)
  {
    computeEncoder = self->_computeEncoder;
    v14 = *(progressBins + 20);
    if (v14 < 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      v16 = progressBins[6];
      v17 = progressBins + 7;
      for (i = 1; i != v14; ++i)
      {
        v19 = *v17++;
        v20 = v19;
        if (v19 < v16)
        {
          v16 = v20;
          v15 = i;
        }
      }
    }

    v21 = *progressBins + (progressBins[1] * 8.0);
    *(progressBins + 21) = v15;
    progressBins[11] = v21;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v15];
    v22 = self->_progressBins;
    v23 = [size length];
    v57[0] = MEMORY[0x29EDCA5F8];
    v57[1] = 3221225472;
    v57[2] = __123__AGXG18PFamilyRayTracingGPUBuilder_writeDeserializedAccelerationStructureSize_serializedOffset_toBuffer_sizeBufferOffset___block_invoke;
    v57[3] = &unk_29F3420F0;
    v57[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v22, size, offset, v23 - offset, 0, v57);
    v24 = self->_progressBins;
    v56[0] = MEMORY[0x29EDCA5F8];
    v56[1] = 3221225472;
    v56[2] = __123__AGXG18PFamilyRayTracingGPUBuilder_writeDeserializedAccelerationStructureSize_serializedOffset_toBuffer_sizeBufferOffset___block_invoke_2;
    v56[3] = &unk_29F3420F0;
    v56[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v24, buffer, bufferOffset, 4, 1, v56);
  }

  offsetCopy = offset;
  bufferOffsetCopy = bufferOffset;
  impl = self->_impl;
  v26 = impl[2];
  v27 = MEMORY[0x29EDC5638];
  if (size)
  {
    if (*(size + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v28 = *(size + 39);
      IOGPUResourceListAddResource();
      v29 = *(v28 + 64);
      v30 = *(v28 + 72);
      while (v29 != v30)
      {
        if (*v29)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v29);
          IOGPUResourceListAddResource();
        }

        v29 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v26, size, 1, 1, v11);
    impl = self->_impl;
    v26 = impl[2];
  }

  if (buffer)
  {
    if (*(buffer + *v27 + 16) >> 61 == 3)
    {
      v31 = *(buffer + 39);
      IOGPUResourceListAddResource();
      v32 = *(v31 + 64);
      v33 = *(v31 + 72);
      while (v32 != v33)
      {
        if (*v32)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v32);
          IOGPUResourceListAddResource();
        }

        v32 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v26, buffer, 3, 3, v11);
    impl = self->_impl;
  }

  gpuAddress = [size gpuAddress];
  [size length];
  gpuAddress2 = [buffer gpuAddress];
  [buffer length];
  if (*(impl + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(impl);
  }

  v36 = impl[2];
  *(v36 + 26408) = gpuAddress + v53;
  v37 = *(v36 + 22488);
  *v37 = gpuAddress + v53;
  *(v36 + 22504) = 0u;
  *(v36 + 27560) |= 1uLL;
  v38 = *(v36 + 27592) | 1;
  *(v36 + 26416) = gpuAddress2 + v55;
  v37[1] = gpuAddress2 + v55;
  *(v36 + 27560) |= 2uLL;
  *(v36 + 27592) = v38;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(impl, 177, 0);
  v40 = impl[2];
  v60 = vdupq_n_s64(1uLL);
  v61 = 1;
  v58 = v60;
  v59 = 1;
  *(v40 + 2060) |= 4u;
  v41 = *(v40 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v40, Pipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v40, 22, &v60, &v58);
  if (*(v40 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v40, 22, 0, 0);
  }

  if (v41)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v40, v41);
  }

  v42 = self->_progressBins;
  if (v42)
  {
    v43 = v42[21];
    *&v42[2 * v43 + 12] = *(v42 + 11) + *&v42[2 * v43 + 12];
    *(v42 + 11) = 0;
    if (*(v42 + 48) == 1)
    {
      v44 = *(v42 + 9);
      if (v44)
      {
        v45 = *(v42 + 35);
        do
        {
          *(v44 + 8) = v45;
          *(v44 + 9) = v43;
          v44 = *v44;
        }

        while (v44);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v42 + 12, v42 + 7);
      ++*(v42 + 35);
    }

    else if (*(v42 + 22))
    {
      v46 = *(v42 + 35);
      *(v42 + 35) = v46 + 1;
      v47 = *(v42 + 21);
      if (v47)
      {
        v48 = *(v42 + 18);
        v49 = *(v42 + 21);
        do
        {
          *(v48 + 4 * *(v49 + 4)) = v46;
          v49 = *v49;
        }

        while (v49);
        do
        {
          v50 = *v47;
          operator delete(v47);
          v47 = v50;
        }

        while (v50);
      }

      *(v42 + 21) = 0;
      v51 = *(v42 + 20);
      if (v51)
      {
        bzero(*(v42 + 19), 8 * v51);
      }

      *(v42 + 22) = 0;
      if ((v46 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v46];
      }
    }
  }
}

uint64_t __123__AGXG18PFamilyRayTracingGPUBuilder_writeDeserializedAccelerationStructureSize_serializedOffset_toBuffer_sizeBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __123__AGXG18PFamilyRayTracingGPUBuilder_writeDeserializedAccelerationStructureSize_serializedOffset_toBuffer_sizeBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset
{
  [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream];
  progressBins = self->_progressBins;
  if (progressBins)
  {
    computeEncoder = self->_computeEncoder;
    v12 = *(progressBins + 20);
    if (v12 < 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = progressBins[6];
      v15 = progressBins + 7;
      for (i = 1; i != v12; ++i)
      {
        v17 = *v15++;
        v18 = v17;
        if (v17 < v14)
        {
          v14 = v18;
          v13 = i;
        }
      }
    }

    v19 = *progressBins + (progressBins[1] * 8.0);
    *(progressBins + 21) = v13;
    progressBins[11] = v19;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v13];
    v20 = self->_progressBins;
    buffer = [size buffer];
    bufferOffset = [size bufferOffset];
    v23 = [size size];
    v66[0] = MEMORY[0x29EDCA5F8];
    v66[1] = 3221225472;
    v66[2] = __104__AGXG18PFamilyRayTracingGPUBuilder_writeSerializedAccelerationStructureSize_toBuffer_sizeBufferOffset___block_invoke;
    v66[3] = &unk_29F3420F0;
    v66[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v20, buffer, bufferOffset, v23, 0, v66);
    v24 = self->_progressBins;
    v65[0] = MEMORY[0x29EDCA5F8];
    v65[1] = 3221225472;
    v65[2] = __104__AGXG18PFamilyRayTracingGPUBuilder_writeSerializedAccelerationStructureSize_toBuffer_sizeBufferOffset___block_invoke_2;
    v65[3] = &unk_29F3420F0;
    v65[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v24, buffer, offset, 4, 1, v65);
  }

  impl = self->_impl;
  v26 = MEMORY[0x29EDC5638];
  if (size)
  {
    v27 = impl[2];
    if (*(size + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v28 = *(size + 39);
      IOGPUResourceListAddResource();
      v30 = *(v28 + 64);
      v29 = *(v28 + 72);
      while (v30 != v29)
      {
        if (*v30)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v30);
          IOGPUResourceListAddResource();
        }

        v30 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v27, size, 1, 1, v9);
    impl = self->_impl;
    v26 = MEMORY[0x29EDC5638];
  }

  buffer2 = [size buffer];
  if (buffer2)
  {
    v33 = buffer2;
    offsetCopy = offset;
    v64 = 104;
    v34 = impl[2];
    if (*(buffer2 + *v26 + 16) >> 61 == 3)
    {
      v35 = *(buffer2 + 312);
      IOGPUResourceListAddResource();
      v36 = *(v35 + 64);
      v37 = *(v35 + 72);
      while (v36 != v37)
      {
        if (*v36)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v36);
          IOGPUResourceListAddResource();
        }

        v36 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v34, v33, 1, 1, v32);
  }

  v38 = self->_impl;
  if (buffer)
  {
    v39 = v38[2];
    if (*(buffer + *v26 + 16) >> 61 == 3)
    {
      v40 = *(buffer + 39);
      IOGPUResourceListAddResource();
      v41 = *(v40 + 64);
      v42 = *(v40 + 72);
      while (v41 != v42)
      {
        if (*v41)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v41);
          IOGPUResourceListAddResource();
        }

        v41 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v39, buffer, 3, 3, v32);
    v38 = self->_impl;
  }

  gpuAddress = [buffer gpuAddress];
  [buffer length];
  if (*(v38 + 49) == 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(v38);
  }

  buffer3 = [size buffer];
  bufferOffset2 = [size bufferOffset];
  v46 = bufferOffset2 + [buffer3 gpuAddress];
  [buffer3 length];
  v47 = v38[2];
  *(v47 + 26408) = v46 + 64;
  v48 = *(v47 + 22488);
  *v48 = v46 + 64;
  *(v47 + 22504) = 0u;
  *(v47 + 27560) |= 1uLL;
  v49 = *(v47 + 27592) | 1;
  *(v47 + 26416) = gpuAddress + offset;
  v48[1] = gpuAddress + offset;
  *(v47 + 27560) |= 2uLL;
  *(v47 + 27592) = v49;
  Pipeline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getOrCreatePipeline(v38, 176, 0);
  v51 = v38[2];
  v69 = vdupq_n_s64(1uLL);
  v70 = 1;
  v67 = v69;
  v68 = 1;
  *(v51 + 2060) |= 4u;
  v52 = *(v51 + 2336);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v51, Pipeline);
  AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::executeKernelThreadsInternal(v51, 22, &v69, &v67);
  if (*(v51 + 2292) == 1)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::encodeBarrier(v51, 22, 0, 0);
  }

  if (v52)
  {
    AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::setPipelineCommon(v51, v52);
  }

  v53 = self->_progressBins;
  if (v53)
  {
    v54 = v53[21];
    *&v53[2 * v54 + 12] = *(v53 + 11) + *&v53[2 * v54 + 12];
    *(v53 + 11) = 0;
    if (*(v53 + 48) == 1)
    {
      v55 = *(v53 + 9);
      if (v55)
      {
        v56 = *(v53 + 35);
        do
        {
          *(v55 + 8) = v56;
          *(v55 + 9) = v54;
          v55 = *v55;
        }

        while (v55);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v53 + 12, v53 + 7);
      ++*(v53 + 35);
    }

    else if (*(v53 + 22))
    {
      v57 = *(v53 + 35);
      *(v53 + 35) = v57 + 1;
      v58 = *(v53 + 21);
      if (v58)
      {
        v59 = *(v53 + 18);
        v60 = *(v53 + 21);
        do
        {
          *(v59 + 4 * *(v60 + 4)) = v57;
          v60 = *v60;
        }

        while (v60);
        do
        {
          v61 = *v58;
          operator delete(v58);
          v58 = v61;
        }

        while (v61);
      }

      *(v53 + 21) = 0;
      v62 = *(v53 + 20);
      if (v62)
      {
        bzero(*(v53 + 19), 8 * v62);
      }

      *(v53 + 22) = 0;
      if ((v57 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v57];
      }
    }
  }
}

uint64_t __104__AGXG18PFamilyRayTracingGPUBuilder_writeSerializedAccelerationStructureSize_toBuffer_sizeBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __104__AGXG18PFamilyRayTracingGPUBuilder_writeSerializedAccelerationStructureSize_toBuffer_sizeBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options
{
  optionsCopy = options;
  v261 = *MEMORY[0x29EDCA608];
  {
    [AGXG18PFamilyRayTracingGPUBuilder refitAccelerationStructure:descriptor:destination:scratchBuffer:scratchBufferOffset:options:]::forceBuildOnRefit = 0;
  }

  structureCopy = structure;
  if ([AGXG18PFamilyRayTracingGPUBuilder refitAccelerationStructure:descriptor:destination:scratchBuffer:scratchBufferOffset:options:]::forceBuildOnRefit == 1)
  {
    v222 = 0uLL;
    *&v223 = 0;
    v13 = *MEMORY[0x29EDBB788];
    selfCopy = self;
    v15 = *(&self->super.super.super.super.isa + v13);
    if (v15)
    {
      objc_msgSend_accelerationStructureSizesWithDescriptor_(v15, a2, descriptor, descriptor, destination, buffer, offset);
    }

    destinationCopy = destination;
    if (v222 > [structure size])
    {
      destinationCopy = [*(&self->super.super.super.super.isa + v13) newAccelerationStructureWithSize:v222];
    }

    v17 = [-[MTLComputeCommandEncoderSPI device](self->_computeEncoder "device")];
    [(AGXG18PFamilyRayTracingGPUBuilder *)selfCopy buildAccelerationStructure:destinationCopy descriptor:descriptor scratchBuffer:v17 scratchBufferOffset:0];
    if (destinationCopy != destination)
    {
      [(AGXG18PFamilyRayTracingGPUBuilder *)selfCopy copyAndCompactAccelerationStructure:destinationCopy toAccelerationStructure:destination];
    }

    return;
  }

  isInstanceDescriptor = [descriptor isInstanceDescriptor];
  if (isInstanceDescriptor)
  {
    [(AGXG18PFamilyRayTracingGPUBuilder *)self _endVirtualSubstream];
  }

  else
  {
    [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream];
    progressBins = self->_progressBins;
    if (progressBins)
    {
      computeEncoder = self->_computeEncoder;
      PrimitiveCountFromDescriptor = ProgressBinsGetPrimitiveCountFromDescriptor(descriptor);
      v21 = *(progressBins + 20);
      if (v21 < 2)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        v23 = progressBins[6];
        v24 = progressBins + 7;
        for (i = 1; i != v21; ++i)
        {
          v26 = *v24++;
          v27 = v26;
          if (v26 < v23)
          {
            v23 = v27;
            v22 = i;
          }
        }
      }

      v28 = progressBins[4] + (progressBins[5] * PrimitiveCountFromDescriptor);
      *(progressBins + 21) = v22;
      progressBins[11] = v28;
      [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v22];
      v29 = self->_progressBins;
      buffer = [structure buffer];
      bufferOffset = [structure bufferOffset];
      v32 = [structure size];
      v221[0] = MEMORY[0x29EDCA5F8];
      v221[1] = 3221225472;
      v221[2] = __129__AGXG18PFamilyRayTracingGPUBuilder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options___block_invoke;
      v221[3] = &unk_29F3420F0;
      v221[4] = self;
      ProgressBinsSynchronizeBufferAccessRange(v29, buffer, bufferOffset, v32, 0, v221);
      v33 = self->_progressBins;
      buffer2 = [destination buffer];
      bufferOffset2 = [destination bufferOffset];
      v36 = [destination size];
      v220[0] = MEMORY[0x29EDCA5F8];
      v220[1] = 3221225472;
      v220[2] = __129__AGXG18PFamilyRayTracingGPUBuilder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options___block_invoke_2;
      v220[3] = &unk_29F3420F0;
      v220[4] = self;
      ProgressBinsSynchronizeBufferAccessRange(v33, buffer2, bufferOffset2, v36, 1, v220);
      [(AGXG18PFamilyRayTracingGPUBuilder *)self substreamSynchronizeDescriptor:descriptor access:0];
    }
  }

  selfCopy2 = self;
  impl = self->_impl;
  buffer3 = [structure buffer];
  v40 = buffer3;
  v41 = impl[2];
  if (destination)
  {
    v42 = MEMORY[0x29EDC5638];
    if (buffer3)
    {
      if (*(buffer3 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
      {
        v43 = *(buffer3 + 312);
        IOGPUResourceListAddResource();
        v44 = *(v43 + 64);
        v45 = *(v43 + 72);
        while (v44 != v45)
        {
          if (*v44)
          {
            AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v44);
            IOGPUResourceListAddResource();
          }

          v44 += 2;
        }
      }

      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v41, v40, 1, 1, v39);
    }

    v46 = selfCopy2->_impl;
    buffer4 = [destination buffer];
    v49 = buffer4;
    structureCopy3 = destination;
    if (buffer4)
    {
      v51 = v46[2];
      if (*(buffer4 + *v42 + 16) >> 61 == 3)
      {
        v52 = *(buffer4 + 312);
        IOGPUResourceListAddResource();
        v53 = *(v52 + 64);
        v54 = *(v52 + 72);
        while (v53 != v54)
        {
          if (*v53)
          {
            AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v53);
            IOGPUResourceListAddResource();
          }

          v53 += 2;
        }
      }

      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v51, v49, 3, 3, v48);
      structureCopy3 = destination;
    }
  }

  else
  {
    structureCopy3 = structure;
    if (buffer3)
    {
      if (*(buffer3 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
      {
        v55 = *(buffer3 + 312);
        IOGPUResourceListAddResource();
        v56 = *(v55 + 64);
        v57 = *(v55 + 72);
        while (v56 != v57)
        {
          if (*v56)
          {
            AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v56);
            IOGPUResourceListAddResource();
          }

          v56 += 2;
        }
      }

      AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v41, v40, 3, 3, v39);
      structureCopy3 = structure;
    }
  }

  context = objc_autoreleasePoolPush();
  v218 = selfCopy2->_impl;
  [buffer gpuAddress];
  [buffer length];
  [destination accelerationStructureUniqueIdentifier];
  if (structureCopy3 != structureCopy)
  {
    [objc_msgSend(structureCopy3 "buffer")];
    [structureCopy3 bufferOffset];
    [structureCopy3 size];
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newBVHDescriptor(&v243, descriptor, 1, v58, v59, v60, v61);
  if (BYTE2(v244) == 6 && (v250 - 3) >= 2)
  {
    instancedAccelerationStructures = [descriptor instancedAccelerationStructures];
    v64 = [instancedAccelerationStructures count];
    v65 = v64;
    if (v64 <= 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = v64;
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v222, v218, 8 * v66, 0);
    if (v65)
    {
      v67 = 0;
      v68 = *(&v222 + 1);
      do
      {
        v69 = [instancedAccelerationStructures objectAtIndexedSubscript:v67];
        v70 = [objc_msgSend(v69 "buffer")];
        *(v68 + 8 * v67++) = [v69 bufferOffset] + v70;
      }

      while (v65 != v67);
    }

    v211 = v222;
    v71 = [instancedAccelerationStructures count];
    if ([instancedAccelerationStructures count] < 2)
    {
      v72 = 4;
    }

    else
    {
      v72 = 4 * [instancedAccelerationStructures count];
    }

    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBufferForPrivateAllocation(&v222, v218, v72, 0);
    if (v71)
    {
      v73 = 0;
      v74 = *(&v222 + 1);
      do
      {
        *(v74 + 4 * v73) = *([instancedAccelerationStructures objectAtIndexedSubscript:v73] + 360);
        ++v73;
      }

      while (v71 != v73);
    }

    v62 = v222;
  }

  else
  {
    v62 = 0;
    v211 = 0;
    instancedAccelerationStructures = 0;
  }

  v222 = 0u;
  v223 = 0u;
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newResourceBuffer(&v241, v218, &v243, descriptor, &v222);
  v75 = v243;
  if (structureCopy3)
  {
    buffer5 = [structureCopy3 buffer];
    if (buffer5)
    {
      v77 = structureCopy3 == structureCopy;
    }

    else
    {
      v77 = 1;
    }

    if (buffer5)
    {
      v78 = structureCopy3;
    }

    else
    {
      v78 = structureCopy;
    }

    if (v77)
    {
      v212 = 0;
    }

    else
    {
      buffer6 = [structureCopy buffer];
      v212 = 1;
      if (buffer6 == [structureCopy3 buffer])
      {
        bufferOffset3 = [structureCopy bufferOffset];
        if (bufferOffset3 == [structureCopy3 bufferOffset])
        {
          v212 = 0;
        }
      }

      v78 = structureCopy3;
    }
  }

  else
  {
    v212 = 0;
    v78 = structureCopy;
  }

  v215 = v78;
  buffer7 = [v78 buffer];
  bufferOffset4 = [v215 bufferOffset];
  gpuAddress = [buffer7 gpuAddress];
  v84 = [buffer7 length];
  if ((BYTE2(v244) & 0xFE) == 6 || (optionsCopy & 3) != 0)
  {
    v259 = 0uLL;
    *&v260 = 0;
    Inline = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateInline(&v259, v218, 128, 0);
    v209 = v84;
    v89 = v259;
    v207 = v260;
    *(v259 + 96) = 0u;
    *(v89 + 112) = 0u;
    *(v89 + 64) = 0u;
    *(v89 + 80) = 0u;
    *(v89 + 32) = 0u;
    *(v89 + 48) = 0u;
    *v89 = 0u;
    *(v89 + 16) = 0u;
    v208 = HIBYTE(v243);
    {
      if (Inline)
      {
        AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
      }
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride <= 0)
    {
      v90 = 3;
    }

    else
    {
      v90 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride;
    }

    *(v89 + 16) = v241;
    *(v89 + 122) = 0;
    *(v89 + 101) = optionsCopy & 1;
    *(v89 + 102) = (optionsCopy & 2) != 0;
    v210 = v90;
    {
      v90 = v210;
      if (Inline)
      {
        AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
        v90 = v210;
      }
    }

    *(v89 + 103) = AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild | ((BYTE12(v244) & 2) >> 1);
    {
      v90 = v210;
      if (Inline)
      {
        if (v210 > 4)
        {
          v203 = 0;
        }

        else
        {
          v203 = dyld_program_sdk_at_least() ^ 1;
        }

        shouldUpdateOpacityAndShaderTableOffsets::updateOpacityAndShaderTableOffsets = v203;
        v90 = v210;
      }
    }

    *(v89 + 107) = shouldUpdateOpacityAndShaderTableOffsets::updateOpacityAndShaderTableOffsets;
    {
      v90 = v210;
      if (Inline)
      {
        v90 = v210;
      }
    }

    if (v90 <= 4)
    {
      {
        v90 = v210;
        if (Inline)
        {
          AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit = 0;
          v90 = v210;
        }
      }

      {
        v90 = v210;
        if (Inline)
        {
          AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable = 0;
          v90 = v210;
        }
      }

      v92 = v75;
      if (AGX::BVHDescriptor::isRefittable(void)const::forceBuildOnRefit & 1) == 0 && ((AGX::BVHDescriptor::isRefittable(void)const::forceAllBvhsRefittable & 1) != 0 || (BYTE12(v244)))
      {
        goto LABEL_101;
      }

      {
        v90 = v210;
        if (Inline)
        {
          AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
          v90 = v210;
        }
      }

      if (AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild)
      {
LABEL_101:
        LOBYTE(v91) = 1;
      }

      else
      {
        v91 = (BYTE12(v244) >> 1) & 1;
      }
    }

    else
    {
      LOBYTE(v91) = 0;
      v92 = v75;
    }

    *(v89 + 106) = v91;
    *(v89 + 108) = v243;
    v93 = BYTE2(v244);
    if ((BYTE2(v244) & 0xFE) == 6)
    {
      v94 = v250;
      if (v90 >= 5)
      {
        v95 = 44;
      }

      else
      {
        v95 = 48;
      }

      *(&v259 + 1) = v95 | 0x8000000000;
      *&v259 = 0x8000000080;
      LODWORD(v260) = v95;
      v255 = 655369;
      if ((HIBYTE(v243) & (v251 == 1)) != 0)
      {
        v96 = 13;
      }

      else
      {
        v96 = 12;
      }

      v256 = v96;
      v257 = 11;
      if ((HIBYTE(v243) & (v251 == 1)) != 0)
      {
        v97 = 15;
      }

      else
      {
        v97 = 14;
      }

      if (v250 >= 4)
      {
        v94 = 4;
      }

      v98 = *(&v259 + v94);
      v258 = v97;
      *(v89 + 88) = v98;
      *(v89 + 96) = 0;
      *(v89 + 56) = 1;
      v99 = *(&v247 + 1);
      *(v89 + 104) = *(&v250 + 1) == 1;
      *(v89 + 24) = v99;
      v100 = v248;
      *(v89 + 120) = *(&v255 + v94);
      if ((BYTE12(v244) & 4) != 0)
      {
        v101 = -1;
      }

      else
      {
        v101 = 255;
      }

      *(v89 + 112) = v100;
      *(v89 + 116) = v101;
      *(v89 + 40) = v62;
      *(v89 + 48) = v211;
      goto LABEL_118;
    }

    if (!DWORD2(v245))
    {
LABEL_182:
      {
        v90 = v210;
        if (v204)
        {
          AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild = 0;
          v90 = v210;
        }
      }

      v125 = isQTBEnabled(v90, &v243, (AGX::BVHDescriptor::isFastBuild(void)const::forceFastBuild | (HIDWORD(v244) >> 1)) & 1, 1);
      *(v89 + 100) = v125;
      if (*(v89 + 56) < 3u)
      {
        v127 = v125;
      }

      else
      {
        v127 = 0;
      }

      *(v89 + 105) = v127;
      *v89 = gpuAddress + bufferOffset4;
      *(v89 + 8) = v209;
      v128 = *(v218 + 24);
      if (v128)
      {
        v129 = *MEMORY[0x29EDC5638];
        *(v89 + 32) = *(v128 + v129 + 8);
        v130 = *(v218 + 16);
        if (*(v128 + v129 + 16) >> 61 == 3)
        {
          v131 = *(v128 + 312);
          IOGPUResourceListAddResource();
          v132 = *(v131 + 64);
          v133 = *(v131 + 72);
          while (v132 != v133)
          {
            if (*v132)
            {
              AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v132);
              IOGPUResourceListAddResource();
            }

            v132 += 2;
          }
        }

        AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v130, v128, 1, 1, v126);
      }

      if ((v208 & 2) != 0)
      {
        v134 = 1;
      }

      else if ((*(v89 + 56) - 1) <= 1)
      {
        v134 = 1;
      }

      else
      {
        v134 = *(v89 + 56) - 1;
      }

      if (**MEMORY[0x29EDC56B0])
      {
        IOGPUDeviceTraceEvent();
      }

      *(v89 + 123) = v92 - 1;
      *(v89 + 124) = v134;
      v135 = *(v89 + 100);
      v224 = v245;
      v225 = v246;
      v226 = v247;
      v227 = v248;
      v222 = v243;
      v223 = v244;
      v228 = v249;
      v229 = v250;
      v234 = v254;
      v232 = v253[0];
      v233 = v253[1];
      v230 = v251;
      v231 = v252;
      v259 = v241;
      v260 = v242;
      *&v235 = structureCopy;
      v136 = v215;
      v85 = v136;
      v86 = v259;
      v239 = v260;
      if (v210 > 1)
      {
        v137 = v135;
      }

      else
      {
        v137 = 0;
      }

      v138 = v137 & optionsCopy & 1;
      if (v212)
      {
        v139 = 32;
      }

      else
      {
        v139 = 0;
      }

      *(&v235 + 1) = v136;
      *&v236 = *(&v89 + 1);
      v87 = (v139 & 0xFFFFFFF3 | (4 * (optionsCopy & 3)) | v208 & 2 | v138) ^ 2;
      *(&v236 + 1) = v89;
      *&v237 = 128;
      *(&v237 + 1) = v207;
      goto LABEL_208;
    }

    v102 = v252;
    v103 = 1;
    *(v89 + 96) = 1;
    v104 = v253[0];
    *(v89 + 56) = v253[0];
    if (v104 >= 2)
    {
      *(v89 + 64) = *(&v253[1] + 4);
      *(v89 + 72) = *(v253 + 12);
      *(v89 + 60) = 64;
    }

    *(v89 + 80) = 1;
    if (v93 > 5)
    {
      v110 = 0;
      goto LABEL_171;
    }

    if (((1 << v93) & 9) != 0)
    {
      if (v104 < 2)
      {
        v115 = v90;
        if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(0, &v243, v90) == 3)
        {
          v116 = 0x2400000024;
          v117 = 1;
        }

        else if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getPrimLeafEncodingMode(0, &v243, v115) == 2)
        {
          v116 = 0x4000000040;
          v117 = 2;
        }

        else
        {
          v117 = 0;
          v116 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v115 < 5), 0x1FuLL)), 0x4000000030, 0x3C0000002CLL);
        }

        v90 = v115;
        *(v89 + 88) = v116;
        *(v89 + 120) = v117;
        if (BYTE1(v244) != 2)
        {
          v110 = 0;
          v103 = 1;
          *(v89 + 122) = 1;
          goto LABEL_171;
        }

        {
          v90 = v210;
          if (v205)
          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupRefit(AGXG18PFamilyRayTracingAccelerationStructure *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,unsigned long long,unsigned long long,unsigned long long,BOOL,BOOL)::enableMultiQtbRefitForPLOC = 0;
            v90 = v210;
          }
        }

        {
          v90 = v210;
          if (v206)
          {
            AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupRefit(AGXG18PFamilyRayTracingAccelerationStructure *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,unsigned long long,unsigned long long,unsigned long long,BOOL,BOOL)::enableMultiQtbRefitForTopDown = 1;
            v90 = v210;
          }
        }

        if (BYTE4(v243) || (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupRefit(AGXG18PFamilyRayTracingAccelerationStructure *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,unsigned long long,unsigned long long,unsigned long long,BOOL,BOOL)::enableMultiQtbRefitForTopDown & 1) == 0)
        {
          v118 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::setupRefit(AGXG18PFamilyRayTracingAccelerationStructure *,AGX::BVHDescriptor const&,AGXG18PFamilyRayTracingAccelerationStructure *,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::BuilderBuffer const&,AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::SharedBuilderBuffer const&,unsigned long long,unsigned long long,unsigned long long,BOOL,BOOL)::enableMultiQtbRefitForPLOC;
        }

        else
        {
          v118 = 1;
        }

        v110 = 0;
        if ((v118 & (v92 < 0x14)) != 0)
        {
          v111 = 3;
        }

        else
        {
          v111 = 4;
        }
      }

      else
      {
        v110 = 0;
        *(v89 + 88) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v90 < 5), 0x1FuLL)), 0x8000000060, 0x7000000054);
        *(v89 + 120) = 3;
        v111 = 2;
      }

      *(v89 + 122) = v111;
      v103 = 1;
    }

    else if (((1 << v93) & 0x12) != 0)
    {
      v103 = 0;
      if (v90 >= 5)
      {
        v105 = 60;
      }

      else
      {
        v105 = 64;
      }

      if (v90 >= 5)
      {
        v106 = 32;
      }

      else
      {
        v106 = 48;
      }

      v107 = v104 > 1;
      if (v104 <= 1)
      {
        v108 = 4;
      }

      else
      {
        v108 = 5;
      }

      *(v89 + 120) = v108;
      if (v107)
      {
        v109 = v105;
      }

      else
      {
        v109 = v106;
      }

      *(v89 + 88) = v109;
      *(v89 + 92) = v109;
      v110 = 1;
    }

    else
    {
      if (v104 < 2)
      {
        {
          v90 = v210;
          if (Inline)
          {
            getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode = 1;
            v90 = v210;
          }
        }

        if (getCoarseCurveTestMode(AGX::BVHDescriptor const&)::evCoarseCurveTestMode == 1)
        {
          AGX::BVHDescriptor::isRefittable(Inline);
          v90 = v210;
        }

        if (v90 >= 5)
        {
          v112 = 16;
        }

        else
        {
          v112 = 32;
        }

        v113 = 6;
        v114 = 88;
      }

      else
      {
        if (v90 >= 5)
        {
          v112 = 28;
        }

        else
        {
          v112 = 32;
        }

        *(v89 + 88) = v112;
        v113 = 7;
        v114 = 92;
      }

      v103 = 0;
      v110 = 0;
      *(v89 + v114) = v112;
      *(v89 + 120) = v113;
      *(v89 + 92) = v112;
    }

LABEL_171:
    if (v102)
    {
      v119 = *(v89 + 56);
      if (v103)
      {
        v120 = vdup_n_s32(v119 > 1);
        if (v90 > 4)
        {
          v121 = 0x4C00000034;
          v122 = 0x7C0000005CLL;
        }

        else
        {
          v121 = 0x6000000040;
          v122 = 0x8000000060;
        }

        *(v89 + 88) = vbsl_s8(vcltz_s32(vshl_n_s32(v120, 0x1FuLL)), v122, v121);
        goto LABEL_182;
      }

      if (v110)
      {
        v123 = v119 > 1;
        if (v90 > 4)
        {
          v98 = 40;
          v124 = 68;
        }

        else
        {
          v98 = 48;
          v124 = 96;
        }
      }

      else
      {
        v123 = v119 > 1;
        if (v90 > 4)
        {
          v98 = 24;
          v124 = 36;
        }

        else
        {
          v98 = 32;
          v124 = 48;
        }
      }

      if (v123)
      {
        v98 = v124;
      }

      *(v89 + 88) = v98;
      goto LABEL_118;
    }

    if ((v103 & 1) == 0)
    {
      v98 = *(v89 + 88);
LABEL_118:
      *(v89 + 92) = v98;
      goto LABEL_182;
    }

    goto LABEL_182;
  }

  v232 = v253[0];
  v233 = v253[1];
  v234 = v254;
  v228 = v249;
  v229 = v250;
  v230 = v251;
  v231 = v252;
  v224 = v245;
  v225 = v246;
  v226 = v247;
  v227 = v248;
  v222 = v243;
  v223 = v244;
  v259 = v241;
  v260 = v242;
  *&v235 = structureCopy;
  v85 = v215;
  v236 = 0u;
  v237 = 0u;
  v86 = v259;
  v239 = v260;
  *(&v235 + 1) = v85;
  if (v212)
  {
    v87 = 34;
  }

  else
  {
    v87 = 2;
  }

LABEL_208:
  v238 = v86;
  v240 = v87;
  if (*(v218 + 49) == 1)
  {
    if (structureCopy3)
    {
      v140 = structureCopy3;
    }

    else
    {
      v140 = structureCopy;
    }

    v142 = (BYTE2(v244) & 0xFE) == 6 && (v250 - 3) < 2;
    BatchForCommand = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBatchForCommand(v218, 1, structureCopy, v140, 0, -1, 0, 0, instancedAccelerationStructures, v142);
    v144 = BatchForCommand;
    v145 = BatchForCommand[16];
    v146 = BatchForCommand[17];
    if (v145 >= v146)
    {
      v161 = BatchForCommand[15];
      v162 = 0x8E38E38E38E38E39 * ((v145 - v161) >> 5);
      v163 = v162 + 1;
      if (v162 + 1 > 0xE38E38E38E38E3)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v164 = 0x8E38E38E38E38E39 * ((v146 - v161) >> 5);
      if (2 * v164 > v163)
      {
        v163 = 2 * v164;
      }

      if (v164 >= 0x71C71C71C71C71)
      {
        v165 = 0xE38E38E38E38E3;
      }

      else
      {
        v165 = v163;
      }

      if (v165)
      {
        if (v165 <= 0xE38E38E38E38E3)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v166 = v233;
      v167 = 288 * v162;
      *(v167 + 160) = v232;
      *(v167 + 176) = v166;
      *(v167 + 192) = v234;
      v168 = v229;
      *(v167 + 96) = v228;
      *(v167 + 112) = v168;
      v169 = v231;
      *(v167 + 128) = v230;
      *(v167 + 144) = v169;
      v170 = v225;
      *(v167 + 32) = v224;
      *(v167 + 48) = v170;
      v171 = v227;
      *(v167 + 64) = v226;
      *(v167 + 80) = v171;
      v172 = v223;
      *v167 = v222;
      *(v167 + 16) = v172;
      v173 = v235;
      v235 = 0uLL;
      *(v167 + 200) = v173;
      *(v167 + 216) = v236;
      *(v167 + 280) = v240;
      *(v167 + 264) = v239;
      *(v167 + 248) = v238;
      *(v167 + 232) = v237;
      v160 = 288 * v162 + 288;
      v174 = BatchForCommand[15];
      v175 = BatchForCommand[16];
      v176 = (v167 + v174 - v175);
      if (v174 != v175)
      {
        v177 = BatchForCommand[15];
        v178 = (v167 + v174 - v175);
        do
        {
          *v178 = *v177;
          v179 = *(v177 + 1);
          v180 = *(v177 + 2);
          v181 = *(v177 + 4);
          *(v178 + 3) = *(v177 + 3);
          *(v178 + 4) = v181;
          *(v178 + 1) = v179;
          *(v178 + 2) = v180;
          v182 = *(v177 + 5);
          v183 = *(v177 + 6);
          v184 = *(v177 + 8);
          *(v178 + 7) = *(v177 + 7);
          *(v178 + 8) = v184;
          *(v178 + 5) = v182;
          *(v178 + 6) = v183;
          v185 = *(v177 + 9);
          v186 = *(v177 + 10);
          v187 = *(v177 + 11);
          *(v178 + 24) = v177[24];
          *(v178 + 10) = v186;
          *(v178 + 11) = v187;
          *(v178 + 9) = v185;
          v188 = v177[25];
          v177[25] = 0;
          *(v178 + 25) = v188;
          v189 = v177[26];
          v177[26] = 0;
          *(v178 + 26) = v189;
          *(v178 + 216) = *(v177 + 27);
          v190 = *(v177 + 29);
          v191 = *(v177 + 31);
          v192 = *(v177 + 33);
          *(v178 + 70) = *(v177 + 70);
          *(v178 + 264) = v192;
          *(v178 + 248) = v191;
          *(v178 + 232) = v190;
          v177 += 36;
          v178 += 288;
        }

        while (v177 != v175);
        do
        {

          v174 += 36;
        }

        while (v174 != v175);
        v174 = v144[15];
      }

      v144[15] = v176;
      v144[16] = v160;
      v144[17] = 0;
      if (v174)
      {
        operator delete(v174);
      }
    }

    else
    {
      *v145 = v222;
      v147 = v223;
      v148 = v224;
      v149 = v226;
      *(v145 + 3) = v225;
      *(v145 + 4) = v149;
      *(v145 + 1) = v147;
      *(v145 + 2) = v148;
      v150 = v227;
      v151 = v228;
      v152 = v230;
      *(v145 + 7) = v229;
      *(v145 + 8) = v152;
      *(v145 + 5) = v150;
      *(v145 + 6) = v151;
      v153 = v231;
      v154 = v232;
      v155 = v233;
      v145[24] = v234;
      *(v145 + 10) = v154;
      *(v145 + 11) = v155;
      *(v145 + 9) = v153;
      v156 = v235;
      *&v235 = 0;
      v145[25] = v156;
      *(&v235 + 1) = 0;
      v145[26] = v85;
      *(v145 + 27) = v236;
      v157 = v239;
      v158 = v237;
      v159 = v238;
      *(v145 + 70) = v240;
      *(v145 + 33) = v157;
      *(v145 + 31) = v159;
      *(v145 + 29) = v158;
      v160 = (v145 + 36);
    }

    v144[16] = v160;
  }

  else
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeRefits(v218, &v222, 1);
  }

  objc_autoreleasePoolPop(context);
  if ((isInstanceDescriptor & 1) == 0)
  {
    v193 = selfCopy2->_progressBins;
    if (v193)
    {
      v194 = v193[21];
      *&v193[2 * v194 + 12] = *(v193 + 11) + *&v193[2 * v194 + 12];
      *(v193 + 11) = 0;
      if (*(v193 + 48) == 1)
      {
        v195 = *(v193 + 9);
        if (v195)
        {
          v196 = *(v193 + 35);
          do
          {
            *(v195 + 8) = v196;
            *(v195 + 9) = v194;
            v195 = *v195;
          }

          while (v195);
        }

        std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v193 + 12, v193 + 7);
        ++*(v193 + 35);
      }

      else if (*(v193 + 22))
      {
        v197 = *(v193 + 35);
        *(v193 + 35) = v197 + 1;
        v198 = *(v193 + 21);
        if (v198)
        {
          v199 = *(v193 + 18);
          v200 = *(v193 + 21);
          do
          {
            *(v199 + 4 * *(v200 + 4)) = v197;
            v200 = *v200;
          }

          while (v200);
          do
          {
            v201 = *v198;
            operator delete(v198);
            v198 = v201;
          }

          while (v201);
        }

        *(v193 + 21) = 0;
        v202 = *(v193 + 20);
        if (v202)
        {
          bzero(*(v193 + 19), 8 * v202);
        }

        *(v193 + 22) = 0;
        if ((v197 & 0x80000000) == 0 && !selfCopy2->virtualSubstreamsEnabled)
        {
          [(MTLComputeCommandEncoderSPI *)selfCopy2->_computeEncoder signalProgress:v197];
        }
      }
    }
  }
}

uint64_t __129__AGXG18PFamilyRayTracingGPUBuilder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __129__AGXG18PFamilyRayTracingGPUBuilder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream];
  if (self->_progressBins)
  {
    v8 = [structure size];
    if (v8 >= [accelerationStructure size])
    {
      structureCopy = accelerationStructure;
    }

    else
    {
      structureCopy = structure;
    }

    v10 = [structureCopy size];
    computeEncoder = self->_computeEncoder;
    progressBins = self->_progressBins;
    v13 = *(progressBins + 20);
    if (v13 < 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0;
      v15 = progressBins[6];
      v16 = progressBins + 7;
      for (i = 1; i != v13; ++i)
      {
        v18 = *v16++;
        v19 = v18;
        if (v18 < v15)
        {
          v15 = v19;
          v14 = i;
        }
      }
    }

    v20 = *progressBins + (progressBins[1] * v10);
    *(progressBins + 21) = v14;
    progressBins[11] = v20;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v14];
    v21 = self->_progressBins;
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];
    v24 = [structure size];
    v51[0] = MEMORY[0x29EDCA5F8];
    v51[1] = 3221225472;
    v51[2] = __97__AGXG18PFamilyRayTracingGPUBuilder_copyAndCompactAccelerationStructure_toAccelerationStructure___block_invoke;
    v51[3] = &unk_29F3420F0;
    v51[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v21, buffer, bufferOffset, v24, 0, v51);
    v25 = self->_progressBins;
    buffer2 = [accelerationStructure buffer];
    bufferOffset2 = [accelerationStructure bufferOffset];
    v28 = [accelerationStructure size];
    v50[0] = MEMORY[0x29EDCA5F8];
    v50[1] = 3221225472;
    v50[2] = __97__AGXG18PFamilyRayTracingGPUBuilder_copyAndCompactAccelerationStructure_toAccelerationStructure___block_invoke_2;
    v50[3] = &unk_29F3420F0;
    v50[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v25, buffer2, bufferOffset2, v28, 1, v50);
  }

  impl = self->_impl;
  v30 = impl[2];
  v31 = MEMORY[0x29EDC5638];
  if (structure)
  {
    if (*(structure + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v32 = *(structure + 39);
      IOGPUResourceListAddResource();
      v33 = *(v32 + 64);
      v34 = *(v32 + 72);
      while (v33 != v34)
      {
        if (*v33)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v33);
          IOGPUResourceListAddResource();
        }

        v33 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v30, structure, 1, 1, v7);
    impl = self->_impl;
    v30 = impl[2];
  }

  if (accelerationStructure)
  {
    if (*(accelerationStructure + *v31 + 16) >> 61 == 3)
    {
      v35 = *(accelerationStructure + 39);
      IOGPUResourceListAddResource();
      v36 = *(v35 + 64);
      v37 = *(v35 + 72);
      while (v36 != v37)
      {
        if (*v36)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v36);
          IOGPUResourceListAddResource();
        }

        v36 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v30, accelerationStructure, 3, 3, v7);
    impl = self->_impl;
    structureCopy3 = structure;
    accelerationStructureCopy2 = accelerationStructure;
  }

  else
  {
    structureCopy3 = structure;
    accelerationStructureCopy2 = 0;
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopyAndCompact(impl, structureCopy3, accelerationStructureCopy2, 0);
  v40 = self->_progressBins;
  if (v40)
  {
    v41 = v40[21];
    *&v40[2 * v41 + 12] = *(v40 + 11) + *&v40[2 * v41 + 12];
    *(v40 + 11) = 0;
    if (*(v40 + 48) == 1)
    {
      v42 = *(v40 + 9);
      if (v42)
      {
        v43 = *(v40 + 35);
        do
        {
          *(v42 + 8) = v43;
          *(v42 + 9) = v41;
          v42 = *v42;
        }

        while (v42);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v40 + 12, v40 + 7);
      ++*(v40 + 35);
    }

    else if (*(v40 + 22))
    {
      v44 = *(v40 + 35);
      *(v40 + 35) = v44 + 1;
      v45 = *(v40 + 21);
      if (v45)
      {
        v46 = *(v40 + 18);
        v47 = *(v40 + 21);
        do
        {
          *(v46 + 4 * *(v47 + 4)) = v44;
          v47 = *v47;
        }

        while (v47);
        do
        {
          v48 = *v45;
          operator delete(v45);
          v45 = v48;
        }

        while (v48);
      }

      *(v40 + 21) = 0;
      v49 = *(v40 + 20);
      if (v49)
      {
        bzero(*(v40 + 19), 8 * v49);
      }

      *(v40 + 22) = 0;
      if ((v44 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v44];
      }
    }
  }
}

uint64_t __97__AGXG18PFamilyRayTracingGPUBuilder_copyAndCompactAccelerationStructure_toAccelerationStructure___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __97__AGXG18PFamilyRayTracingGPUBuilder_copyAndCompactAccelerationStructure_toAccelerationStructure___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream];
  if (self->_progressBins)
  {
    v7 = [structure size];
    if (v7 >= [accelerationStructure size])
    {
      structureCopy = accelerationStructure;
    }

    else
    {
      structureCopy = structure;
    }

    v9 = [structureCopy size];
    computeEncoder = self->_computeEncoder;
    progressBins = self->_progressBins;
    v12 = *(progressBins + 20);
    if (v12 < 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = progressBins[6];
      v15 = progressBins + 7;
      for (i = 1; i != v12; ++i)
      {
        v17 = *v15++;
        v18 = v17;
        if (v17 < v14)
        {
          v14 = v18;
          v13 = i;
        }
      }
    }

    v19 = *progressBins + (progressBins[1] * v9);
    *(progressBins + 21) = v13;
    progressBins[11] = v19;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v13];
    v20 = self->_progressBins;
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];
    v23 = [structure size];
    v59[0] = MEMORY[0x29EDCA5F8];
    v59[1] = 3221225472;
    v59[2] = __87__AGXG18PFamilyRayTracingGPUBuilder_copyAccelerationStructure_toAccelerationStructure___block_invoke;
    v59[3] = &unk_29F3420F0;
    v59[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v20, buffer, bufferOffset, v23, 0, v59);
    v24 = self->_progressBins;
    buffer2 = [accelerationStructure buffer];
    bufferOffset2 = [accelerationStructure bufferOffset];
    v27 = [accelerationStructure size];
    v58[0] = MEMORY[0x29EDCA5F8];
    v58[1] = 3221225472;
    v58[2] = __87__AGXG18PFamilyRayTracingGPUBuilder_copyAccelerationStructure_toAccelerationStructure___block_invoke_2;
    v58[3] = &unk_29F3420F0;
    v58[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v24, buffer2, bufferOffset2, v27, 1, v58);
  }

  impl = self->_impl;
  buffer3 = [structure buffer];
  v31 = MEMORY[0x29EDC5638];
  if (buffer3)
  {
    v32 = buffer3;
    v33 = impl[2];
    if (*(buffer3 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v34 = *(buffer3 + 312);
      IOGPUResourceListAddResource();
      v36 = *(v34 + 64);
      v35 = *(v34 + 72);
      while (v36 != v35)
      {
        if (*v36)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v36);
          IOGPUResourceListAddResource();
        }

        v36 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v33, v32, 1, 1, v30);
    v31 = MEMORY[0x29EDC5638];
  }

  v37 = self->_impl;
  buffer4 = [accelerationStructure buffer];
  if (buffer4)
  {
    v40 = buffer4;
    v41 = v37[2];
    if (*(buffer4 + *v31 + 16) >> 61 == 3)
    {
      v42 = *(buffer4 + 312);
      IOGPUResourceListAddResource();
      v43 = *(v42 + 64);
      v44 = *(v42 + 72);
      while (v43 != v44)
      {
        if (*v43)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v43);
          IOGPUResourceListAddResource();
        }

        v43 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v41, v40, 3, 3, v39);
  }

  v45 = self->_impl;
  structureCopy2 = structure;
  accelerationStructureCopy2 = accelerationStructure;
  if (*(v45 + 49) == 1)
  {
    BatchForCommand = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBatchForCommand(v45, 3, structure, accelerationStructure, 0, -1, 0, 0, 0, 0);
    structureCopy3 = structure;
    std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100]((BatchForCommand + 18), &structureCopy3);
    if (accelerationStructure)
    {
      structureCopy4 = accelerationStructure;
    }

    else
    {
      structureCopy4 = structure;
    }

    structureCopy3 = structureCopy4;
    std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100]((BatchForCommand + 21), &structureCopy3);
  }

  else
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeCopies(v45, &structureCopy2, &accelerationStructureCopy2, 1uLL, v39);
  }

  v48 = self->_progressBins;
  if (v48)
  {
    v49 = v48[21];
    *&v48[2 * v49 + 12] = *(v48 + 11) + *&v48[2 * v49 + 12];
    *(v48 + 11) = 0;
    if (*(v48 + 48) == 1)
    {
      v50 = *(v48 + 9);
      if (v50)
      {
        v51 = *(v48 + 35);
        do
        {
          *(v50 + 8) = v51;
          *(v50 + 9) = v49;
          v50 = *v50;
        }

        while (v50);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v48 + 12, v48 + 7);
      ++*(v48 + 35);
    }

    else if (*(v48 + 22))
    {
      v52 = *(v48 + 35);
      *(v48 + 35) = v52 + 1;
      v53 = *(v48 + 21);
      if (v53)
      {
        v54 = *(v48 + 18);
        v55 = *(v48 + 21);
        do
        {
          *(v54 + 4 * *(v55 + 4)) = v52;
          v55 = *v55;
        }

        while (v55);
        do
        {
          v56 = *v53;
          operator delete(v53);
          v53 = v56;
        }

        while (v56);
      }

      *(v48 + 21) = 0;
      v57 = *(v48 + 20);
      if (v57)
      {
        bzero(*(v48 + 19), 8 * v57);
      }

      *(v48 + 22) = 0;
      if ((v52 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v52];
      }
    }
  }
}

uint64_t __87__AGXG18PFamilyRayTracingGPUBuilder_copyAccelerationStructure_toAccelerationStructure___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __87__AGXG18PFamilyRayTracingGPUBuilder_copyAccelerationStructure_toAccelerationStructure___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset sizeDataType:(unint64_t)type
{
  [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream];
  progressBins = self->_progressBins;
  sizeCopy = size;
  if (progressBins)
  {
    if (type == 33)
    {
      v12 = 4;
    }

    else
    {
      v12 = 8;
    }

    computeEncoder = self->_computeEncoder;
    v14 = *(progressBins + 20);
    if (v14 < 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      v16 = progressBins[6];
      v17 = progressBins + 7;
      for (i = 1; i != v14; ++i)
      {
        v19 = *v17++;
        v20 = v19;
        if (v19 < v16)
        {
          v16 = v20;
          v15 = i;
        }
      }
    }

    v21 = *progressBins + (progressBins[1] * v12);
    *(progressBins + 21) = v15;
    progressBins[11] = v21;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v15];
    v22 = self->_progressBins;
    buffer = [size buffer];
    bufferOffset = [sizeCopy bufferOffset];
    v25 = [sizeCopy size];
    v58[0] = MEMORY[0x29EDCA5F8];
    v58[1] = 3221225472;
    v58[2] = __106__AGXG18PFamilyRayTracingGPUBuilder_writeCompactedAccelerationStructureSize_toBuffer_offset_sizeDataType___block_invoke;
    v58[3] = &unk_29F3420F0;
    v58[4] = self;
    v26 = buffer;
    size = sizeCopy;
    ProgressBinsSynchronizeBufferAccessRange(v22, v26, bufferOffset, v25, 0, v58);
    v27 = self->_progressBins;
    v57[0] = MEMORY[0x29EDCA5F8];
    v57[1] = 3221225472;
    v57[2] = __106__AGXG18PFamilyRayTracingGPUBuilder_writeCompactedAccelerationStructureSize_toBuffer_offset_sizeDataType___block_invoke_2;
    v57[3] = &unk_29F3420F0;
    v57[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v27, buffer, offset, v12, 1, v57);
  }

  impl = self->_impl;
  buffer2 = [size buffer];
  v31 = MEMORY[0x29EDC5638];
  if (buffer2)
  {
    v32 = buffer2;
    v55 = 104;
    offsetCopy = offset;
    typeCopy = type;
    v35 = impl[2];
    if (*(buffer2 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v36 = *(buffer2 + 312);
      IOGPUResourceListAddResource();
      v38 = *(v36 + 64);
      v37 = *(v36 + 72);
      while (v38 != v37)
      {
        if (*v38)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v38);
          IOGPUResourceListAddResource();
        }

        v38 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v35, v32, 1, 1, v30);
    type = typeCopy;
    offset = offsetCopy;
    size = sizeCopy;
    v31 = MEMORY[0x29EDC5638];
  }

  v39 = self->_impl;
  if (buffer)
  {
    typeCopy2 = type;
    v41 = v39[2];
    if (*(buffer + *v31 + 16) >> 61 == 3)
    {
      v42 = *(buffer + 39);
      IOGPUResourceListAddResource();
      v43 = *(v42 + 64);
      v44 = *(v42 + 72);
      while (v43 != v44)
      {
        if (*v43)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v43);
          IOGPUResourceListAddResource();
        }

        v43 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v41, buffer, 3, 3, v30);
    v39 = self->_impl;
    type = typeCopy2;
    size = sizeCopy;
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteCompactedSize(v39, size, [buffer gpuAddress], objc_msgSend(buffer, "length"), offset, type);
  v45 = self->_progressBins;
  if (v45)
  {
    v46 = v45[21];
    *&v45[2 * v46 + 12] = *(v45 + 11) + *&v45[2 * v46 + 12];
    *(v45 + 11) = 0;
    if (*(v45 + 48) == 1)
    {
      v47 = *(v45 + 9);
      if (v47)
      {
        v48 = *(v45 + 35);
        do
        {
          *(v47 + 8) = v48;
          *(v47 + 9) = v46;
          v47 = *v47;
        }

        while (v47);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v45 + 12, v45 + 7);
      ++*(v45 + 35);
    }

    else if (*(v45 + 22))
    {
      v49 = *(v45 + 35);
      *(v45 + 35) = v49 + 1;
      v50 = *(v45 + 21);
      if (v50)
      {
        v51 = *(v45 + 18);
        v52 = *(v45 + 21);
        do
        {
          *(v51 + 4 * *(v52 + 4)) = v49;
          v52 = *v52;
        }

        while (v52);
        do
        {
          v53 = *v50;
          operator delete(v50);
          v50 = v53;
        }

        while (v53);
      }

      *(v45 + 21) = 0;
      v54 = *(v45 + 20);
      if (v54)
      {
        bzero(*(v45 + 19), 8 * v54);
      }

      *(v45 + 22) = 0;
      if ((v49 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v49];
      }
    }
  }
}

uint64_t __106__AGXG18PFamilyRayTracingGPUBuilder_writeCompactedAccelerationStructureSize_toBuffer_offset_sizeDataType___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __106__AGXG18PFamilyRayTracingGPUBuilder_writeCompactedAccelerationStructureSize_toBuffer_offset_sizeDataType___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset
{
  [(AGXG18PFamilyRayTracingGPUBuilder *)self _beginVirtualSubstream];
  progressBins = self->_progressBins;
  if (progressBins)
  {
    computeEncoder = self->_computeEncoder;
    v11 = *(progressBins + 20);
    if (v11 < 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = progressBins[6];
      v14 = progressBins + 7;
      for (i = 1; i != v11; ++i)
      {
        v16 = *v14++;
        v17 = v16;
        if (v16 < v13)
        {
          v13 = v17;
          v12 = i;
        }
      }
    }

    v18 = *progressBins + (progressBins[1] * 8.0);
    *(progressBins + 21) = v12;
    progressBins[11] = v18;
    [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v12];
    v19 = self->_progressBins;
    buffer = [size buffer];
    bufferOffset = [size bufferOffset];
    v22 = [size size];
    v50[0] = MEMORY[0x29EDCA5F8];
    v50[1] = 3221225472;
    v50[2] = __93__AGXG18PFamilyRayTracingGPUBuilder_writeCompactedAccelerationStructureSize_toBuffer_offset___block_invoke;
    v50[3] = &unk_29F3420F0;
    v50[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v19, buffer, bufferOffset, v22, 0, v50);
    v23 = self->_progressBins;
    v49[0] = MEMORY[0x29EDCA5F8];
    v49[1] = 3221225472;
    v49[2] = __93__AGXG18PFamilyRayTracingGPUBuilder_writeCompactedAccelerationStructureSize_toBuffer_offset___block_invoke_2;
    v49[3] = &unk_29F3420F0;
    v49[4] = self;
    ProgressBinsSynchronizeBufferAccessRange(v23, buffer, offset, 4, 1, v49);
  }

  impl = self->_impl;
  buffer2 = [size buffer];
  v27 = MEMORY[0x29EDC5638];
  if (buffer2)
  {
    v28 = buffer2;
    offsetCopy = offset;
    v30 = impl[2];
    if (*(buffer2 + *MEMORY[0x29EDC5638] + 16) >> 61 == 3)
    {
      v31 = *(buffer2 + 312);
      IOGPUResourceListAddResource();
      v32 = *(v31 + 64);
      v33 = *(v31 + 72);
      while (v32 != v33)
      {
        if (*v32)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v32);
          IOGPUResourceListAddResource();
        }

        v32 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v30, v28, 1, 1, v26);
    offset = offsetCopy;
    v27 = MEMORY[0x29EDC5638];
  }

  v34 = self->_impl;
  if (buffer)
  {
    v35 = v34[2];
    if (*(buffer + *v27 + 16) >> 61 == 3)
    {
      v36 = *(buffer + 39);
      IOGPUResourceListAddResource();
      v37 = *(v36 + 64);
      v38 = *(v36 + 72);
      while (v37 != v38)
      {
        if (*v37)
        {
          AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v37);
          IOGPUResourceListAddResource();
        }

        v37 += 2;
      }
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(v35, buffer, 3, 3, v26);
    v34 = self->_impl;
  }

  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeWriteCompactedSize(v34, size, [buffer gpuAddress], objc_msgSend(buffer, "length"), offset, 33);
  v39 = self->_progressBins;
  if (v39)
  {
    v40 = v39[21];
    *&v39[2 * v40 + 12] = *(v39 + 11) + *&v39[2 * v40 + 12];
    *(v39 + 11) = 0;
    if (*(v39 + 48) == 1)
    {
      v41 = *(v39 + 9);
      if (v41)
      {
        v42 = *(v39 + 35);
        do
        {
          *(v41 + 8) = v42;
          *(v41 + 9) = v40;
          v41 = *v41;
        }

        while (v41);
      }

      std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>(v39 + 12, v39 + 7);
      ++*(v39 + 35);
    }

    else if (*(v39 + 22))
    {
      v43 = *(v39 + 35);
      *(v39 + 35) = v43 + 1;
      v44 = *(v39 + 21);
      if (v44)
      {
        v45 = *(v39 + 18);
        v46 = *(v39 + 21);
        do
        {
          *(v45 + 4 * *(v46 + 4)) = v43;
          v46 = *v46;
        }

        while (v46);
        do
        {
          v47 = *v44;
          operator delete(v44);
          v44 = v47;
        }

        while (v47);
      }

      *(v39 + 21) = 0;
      v48 = *(v39 + 20);
      if (v48)
      {
        bzero(*(v39 + 19), 8 * v48);
      }

      *(v39 + 22) = 0;
      if ((v43 & 0x80000000) == 0 && !self->virtualSubstreamsEnabled)
      {
        [(MTLComputeCommandEncoderSPI *)self->_computeEncoder signalProgress:v43];
      }
    }
  }
}

uint64_t __93__AGXG18PFamilyRayTracingGPUBuilder_writeCompactedAccelerationStructureSize_toBuffer_offset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __93__AGXG18PFamilyRayTracingGPUBuilder_writeCompactedAccelerationStructureSize_toBuffer_offset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset
{
  v6 = MEMORY[0x2A1C7C4A8](self);
  v70 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v6;
  __src[247] = *MEMORY[0x29EDCA608];
  isInstanceDescriptor = [(MTLAccelerationStructureDescriptor *)v10 isInstanceDescriptor];
  v16 = objc_autoreleasePoolPush();
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newBVHDescriptor(v441, v11, 0, v17, v18, v19, v20);
  v440 = 0;
  v429[0] = 0;
  v430 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::calcRiaBvhSize(v441, &v440);
  v431 = 0u;
  v432 = 0u;
  v433 = 0u;
  v434 = 0u;
  v435 = 0u;
  v436 = 0u;
  v437 = 0u;
  v438 = 0u;
  v439 = 0;
  v318[0] = 0;
  v318[1] = -1;
  v318[2] = -1;
  v319 = 0;
  v320 = 0;
  v321 = -1;
  v322 = -1;
  v323 = 0;
  v324 = 0;
  v325 = -1;
  v326 = -1;
  v327 = 0;
  v328 = 0;
  v329 = -1;
  v330 = -1;
  v331 = 0;
  v334 = -1;
  v332 = 0;
  v333 = -1;
  v335 = 0;
  v336 = 0;
  v337 = -1;
  v338 = -1;
  v339 = 0;
  v340 = 0;
  v341 = -1;
  v342 = -1;
  v343 = 0;
  v344 = 0;
  v345 = -1;
  v346 = -1;
  v347 = 0;
  v348 = 0;
  v349 = -1;
  v350 = -1;
  v351 = 0;
  v354 = -1;
  v352 = 0;
  v353 = -1;
  v355 = 0;
  v356 = 0;
  v357 = -1;
  v358 = -1;
  v359 = 0;
  v360 = 0;
  v361 = -1;
  v362 = -1;
  v363 = 0;
  v364 = 0;
  v365 = -1;
  v366 = -1;
  v367 = 0;
  v368 = 0;
  v369 = -1;
  v370 = -1;
  v371 = 0;
  v374 = -1;
  v372 = 0;
  v373 = -1;
  v375 = 0;
  v378 = -1;
  v376 = 0;
  v377 = -1;
  v379 = 0;
  v380 = 0;
  v382 = -1;
  v381 = -1;
  v383 = 0;
  v384 = 0;
  v386 = -1;
  v385 = -1;
  v387 = 0;
  v388 = 0;
  v390 = -1;
  v389 = -1;
  v391 = 0;
  v392 = 0;
  v394 = -1;
  v393 = -1;
  v395 = 0;
  v396 = 0;
  v398 = -1;
  v397 = -1;
  v399 = 0;
  v400 = 0;
  v402 = -1;
  v401 = -1;
  v403 = 0;
  v404 = 0;
  v406 = -1;
  v405 = -1;
  v407 = 0;
  v408 = 0;
  v410 = -1;
  v409 = -1;
  v411 = 0;
  v412 = 0;
  v414 = -1;
  v413 = -1;
  v415 = 0;
  v416 = 0;
  v418 = -1;
  v417 = -1;
  v419 = 0;
  v420 = 0;
  v422 = -1;
  v421 = -1;
  v423 = 0;
  v424 = 0;
  v426 = -1;
  v425 = -1;
  v427 = 0;
  v428 = 0;
  __dst[0] = 0;
  __dst[1] = -1;
  __dst[2] = -1;
  v74 = 0;
  v75 = 0;
  v76 = -1;
  v77 = -1;
  v78 = 0;
  v79 = 0;
  v80 = -1;
  v81 = -1;
  v82 = 0;
  v83 = 0;
  v84 = -1;
  v85 = -1;
  v86 = 0;
  v88 = -1;
  v89 = -1;
  v87 = 0;
  v90 = 0;
  v91 = 0;
  v92 = -1;
  v93 = -1;
  v94 = 0;
  v95 = 0;
  v96 = -1;
  v97 = -1;
  v98 = 0;
  v99 = 0;
  v100 = -1;
  v101 = -1;
  v102 = 0;
  v103 = 0;
  v104 = -1;
  v105 = -1;
  v106 = 0;
  v108 = -1;
  v109 = -1;
  v107 = 0;
  v110 = 0;
  v111 = 0;
  v112 = -1;
  v113 = -1;
  v114 = 0;
  v115 = 0;
  v116 = -1;
  v117 = -1;
  v118 = 0;
  v119 = 0;
  v120 = -1;
  v121 = -1;
  v122 = 0;
  v123 = 0;
  v124 = -1;
  v125 = -1;
  v126 = 0;
  v129 = -1;
  v127 = 0;
  v128 = -1;
  v130 = 0;
  v133 = -1;
  v131 = 0;
  v132 = -1;
  v134 = 0;
  v135 = 0;
  v137 = -1;
  v136 = -1;
  v138 = 0;
  v139 = 0;
  v141 = -1;
  v140 = -1;
  v142 = 0;
  v143 = 0;
  v145 = -1;
  v144 = -1;
  v146 = 0;
  v147 = 0;
  v149 = -1;
  v148 = -1;
  v150 = 0;
  v151 = 0;
  v153 = -1;
  v152 = -1;
  v154 = 0;
  v155 = 0;
  v157 = -1;
  v156 = -1;
  v158 = 0;
  v159 = 0;
  v161 = -1;
  v160 = -1;
  v162 = 0;
  v163 = 0;
  v165 = -1;
  v164 = -1;
  v166 = 0;
  v167 = 0;
  v169 = -1;
  v168 = -1;
  v170 = 0;
  v171 = 0;
  v173 = -1;
  v172 = -1;
  v174 = 0;
  v175 = 0;
  v177 = -1;
  v176 = -1;
  v178 = 0;
  v179 = 0;
  v181 = -1;
  v180 = -1;
  v182 = 0;
  v183 = 0;
  v185 = -1;
  v184 = -1;
  v186 = 0;
  v187 = 0;
  v189 = -1;
  v188 = -1;
  v190 = 0;
  v191 = 0;
  v193 = -1;
  v192 = -1;
  v194 = 0;
  v195 = 0;
  v197 = -1;
  v203 = 0;
  v205 = -1;
  v204 = -1;
  v206 = 0;
  v207 = 0;
  v209 = -1;
  v208 = -1;
  v210 = 0;
  v211 = 0;
  v212 = 0;
  v214 = -1;
  v213 = -1;
  v215 = 0;
  v216 = 0;
  v218 = -1;
  v217 = -1;
  v219 = 0;
  v220 = 0;
  v222 = -1;
  v221 = -1;
  v223 = 0;
  v224 = 0;
  v226 = -1;
  v225 = -1;
  v227 = 0;
  v228 = 0;
  v230 = -1;
  v229 = -1;
  v231 = 0;
  v232 = 0;
  v234 = -1;
  v233 = -1;
  v235 = 0;
  v236 = 0;
  v238 = -1;
  v237 = -1;
  v239 = 0;
  v240 = 0;
  v242 = -1;
  v241 = -1;
  v243 = 0;
  v244 = 0;
  v246 = -1;
  v245 = -1;
  v247 = 0;
  v248 = 0;
  v249 = 0;
  v251 = -1;
  v250 = -1;
  v252 = 0;
  v253 = 0;
  v255 = -1;
  v254 = -1;
  v256 = 0;
  v257 = 0;
  v259 = -1;
  v258 = -1;
  v260 = 0;
  v261 = 0;
  v263 = -1;
  v262 = -1;
  v264 = 0;
  v265 = 0;
  v266 = 0;
  v268 = -1;
  v267 = -1;
  v269 = 0;
  v270 = 0;
  v272 = -1;
  v271 = -1;
  v273 = 0;
  v274 = 0;
  v276 = -1;
  v275 = -1;
  v277 = 0;
  v278 = 0;
  v280 = -1;
  v279 = -1;
  v281 = 0;
  v282 = 0;
  v284 = -1;
  v283 = -1;
  v285 = 0;
  v286 = 0;
  v288 = -1;
  v287 = -1;
  v289 = 0;
  v290 = 0;
  v292 = -1;
  v291 = -1;
  v293 = 0;
  v294 = 0;
  v296 = -1;
  v295 = -1;
  v297 = 0;
  v298 = 0;
  v300 = -1;
  v299 = -1;
  v301 = 0;
  v302 = 0;
  v304 = -1;
  v303 = -1;
  v305 = 0;
  v306 = 0;
  v308 = -1;
  v307 = -1;
  v309 = 0;
  v310 = 0;
  v312 = -1;
  v311 = -1;
  v313 = 0;
  v314 = 0;
  v196 = -1;
  v198 = 0;
  v202 = 0;
  v316 = -1;
  v315 = -1;
  v317 = 0;
  v201 = -1;
  v200 = -1;
  v199 = 0;
  context = v16;
  if (v441[4] - 1 > 1)
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocateTopDownScratch(__src, v441, v429, v440);
    v66 = __dst;
    v21 = __dst;
    v22 = 1976;
  }

  else
  {
    AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::allocatePLOCScratch(__src, v441, v429);
    v66 = v318;
    v21 = v318;
    v22 = 900;
  }

  memcpy(v21, __src, v22);
  v23 = v435;
  if (v435 <= v436)
  {
    v23 = v436;
  }

  if (v23 <= v437)
  {
    v23 = v437;
  }

  if (v23 <= v438)
  {
    v24 = v438;
  }

  else
  {
    v24 = v23;
  }

  v69 = isInstanceDescriptor;
  if (isInstanceDescriptor)
  {
    [v14 _endVirtualSubstream];
  }

  else
  {
    v25 = v439;
    [v14 _beginVirtualSubstream];
    v26 = *(v14 + 104);
    if (v26)
    {
      v27 = v25 + ((v24 + 63) & 0xFFFFFFFFFFFFFFC0);
      v28 = *(v14 + 96);
      PrimitiveCountFromDescriptor = ProgressBinsGetPrimitiveCountFromDescriptor(v11);
      v30 = *(v26 + 40);
      if (v30 < 2)
      {
        v31 = 0;
      }

      else
      {
        v31 = 0;
        v32 = *(v26 + 24);
        v33 = (v26 + 28);
        for (i = 1; i != v30; ++i)
        {
          v35 = *v33++;
          v36 = v35;
          if (v35 < v32)
          {
            v32 = v36;
            v31 = i;
          }
        }
      }

      v37 = *(v26 + 8) + (*(v26 + 12) * PrimitiveCountFromDescriptor);
      *(v26 + 42) = v31;
      *(v26 + 44) = v37;
      [v28 setSubstream:v31];
      v38 = *(v14 + 104);
      buffer = [v13 buffer];
      bufferOffset = [v13 bufferOffset];
      v41 = [v13 size];
      v72[0] = MEMORY[0x29EDCA5F8];
      v72[1] = 3221225472;
      v72[2] = __109__AGXG18PFamilyRayTracingGPUBuilder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset___block_invoke;
      v72[3] = &unk_29F3420F0;
      v72[4] = v14;
      ProgressBinsSynchronizeBufferAccessRange(v38, buffer, bufferOffset, v41, 1, v72);
      [v14 substreamSynchronizeDescriptor:v11 access:0];
      v42 = *(v14 + 104);
      v71[0] = MEMORY[0x29EDCA5F8];
      v71[1] = 3221225472;
      v71[2] = __109__AGXG18PFamilyRayTracingGPUBuilder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset___block_invoke_2;
      v71[3] = &unk_29F3420F0;
      v71[4] = v14;
      ProgressBinsSynchronizeBufferAccessRange(v42, v9, v70, v27 + 64, 1, v71);
    }
  }

  v68 = v11;
  [v13 buffer];
  [v13 buffer];
  v43 = MEMORY[0x29EDC5638];
  MTLResourceListAddResource();
  IOGPUResourceListAddResource();
  MTLResourceListAddResource();
  IOGPUResourceListAddResource();
  __src[0] = v13;
  buffer2 = [v13 buffer];
  __src[1] = buffer2;
  __src[2] = v9;
  v46 = *(*(v14 + 88) + 16);
  if (v13 && *(v13 + *v43 + 16) >> 61 == 3)
  {
    v47 = v13[39];
    IOGPUResourceListAddResource();
    v49 = *(v47 + 64);
    v48 = *(v47 + 72);
    while (v49 != v48)
    {
      if (*v49)
      {
        AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v49);
        IOGPUResourceListAddResource();
      }

      v49 += 2;
    }
  }

  if (buffer2 && *(buffer2 + *v43 + 16) >> 61 == 3)
  {
    v50 = *(buffer2 + 312);
    IOGPUResourceListAddResource();
    v52 = *(v50 + 64);
    v51 = *(v50 + 72);
    while (v52 != v51)
    {
      if (*v52)
      {
        AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v52);
        IOGPUResourceListAddResource();
      }

      v52 += 2;
    }
  }

  if (v9 && *(v9 + *v43 + 16) >> 61 == 3)
  {
    v53 = v9[39];
    IOGPUResourceListAddResource();
    v54 = *(v53 + 64);
    v55 = *(v53 + 72);
    while (v54 != v55)
    {
      if (*v54)
      {
        AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v54);
        IOGPUResourceListAddResource();
      }

      v54 += 2;
    }
  }

  AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(v46, __src, 3u, 3, 3, v45);
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeBuildAndEncodeRiaBvh(*(v14 + 88), v441, v429, v66, v13, v68, [v9 gpuAddress], objc_msgSend(v9, "length"), v70);
  objc_autoreleasePoolPop(context);
  if ((v69 & 1) == 0)
  {
    v56 = *(v14 + 104);
    if (v56)
    {
      v57 = *(v56 + 42);
      *(v56 + 4 * v57 + 24) = *(v56 + 44) + *(v56 + 4 * v57 + 24);
      *(v56 + 44) = 0;
      if (*(v56 + 48) == 1)
      {
        v58 = *(v56 + 72);
        if (v58)
        {
          v59 = *(v56 + 140);
          do
          {
            *(v58 + 8) = v59;
            *(v58 + 9) = v57;
            v58 = *v58;
          }

          while (v58);
        }

        std::__hash_table<std::__hash_value_type<objc_object  {objcproto9MTLBuffer}*,ADSCommandProgressBins::BufferUsage>,std::__unordered_map_hasher<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::hash<objc_object  {objcproto9MTLBuffer}>,std::equal_to<objc_object  {objcproto9MTLBuffer}>,true>,std::__unordered_map_equal<objc_object  {objcproto9MTLBuffer},ADSCommandProgressBins::BufferUsage,std::equal_to,std::hash,true>,std::allocator<ADSCommandProgressBins::BufferUsage>>::__node_handle_merge_multi[abi:nn200100]<std::allocator<ADSCommandProgressBins::BufferUsage>>((v56 + 96), (v56 + 56));
        ++*(v56 + 140);
      }

      else if (*(v56 + 176))
      {
        v60 = *(v56 + 140);
        *(v56 + 140) = v60 + 1;
        v61 = *(v56 + 168);
        if (v61)
        {
          v62 = *(v56 + 144);
          v63 = *(v56 + 168);
          do
          {
            *(v62 + 4 * *(v63 + 4)) = v60;
            v63 = *v63;
          }

          while (v63);
          do
          {
            v64 = *v61;
            operator delete(v61);
            v61 = v64;
          }

          while (v64);
        }

        *(v56 + 168) = 0;
        v65 = *(v56 + 160);
        if (v65)
        {
          bzero(*(v56 + 152), 8 * v65);
        }

        *(v56 + 176) = 0;
        if ((v60 & 0x80000000) == 0 && (*(v14 + 112) & 1) == 0)
        {
          [*(v14 + 96) signalProgress:v60];
        }
      }
    }
  }
}

uint64_t __109__AGXG18PFamilyRayTracingGPUBuilder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __109__AGXG18PFamilyRayTracingGPUBuilder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)setLabel:(id)label
{
  v5.receiver = self;
  v5.super_class = AGXG18PFamilyRayTracingGPUBuilder;
  [(_MTLObjectWithLabel *)&v5 setLabel:?];
  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder setLabel:label];
}

- (void)endEncoding
{
  AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::flush(self->_impl);
  [(AGXG18PFamilyRayTracingGPUBuilder *)self _endVirtualSubstream];
  [(MTLComputeCommandEncoderSPI *)self->_computeEncoder endEncoding];
  v3 = *MEMORY[0x29EDBB788];

  *(&self->super.super.super.super.isa + v3) = 0;
  v4 = *MEMORY[0x29EDBB780];

  *(&self->super.super.super.super.isa + v4) = 0;
}

- (void)dealloc
{
  progressBins = self->_progressBins;
  if (progressBins)
  {
    v4 = progressBins[18];
    if (v4)
    {
      MEMORY[0x29ED520A0](v4, 0x1000C8052888210);
    }

    v5 = progressBins[21];
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    v7 = progressBins[19];
    progressBins[19] = 0;
    if (v7)
    {
      operator delete(v7);
    }

    v8 = progressBins[14];
    if (v8)
    {
      do
      {
        v9 = *v8;
        operator delete(v8);
        v8 = v9;
      }

      while (v9);
    }

    v10 = progressBins[12];
    progressBins[12] = 0;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = progressBins[9];
    if (v11)
    {
      do
      {
        v12 = *v11;
        operator delete(v11);
        v11 = v12;
      }

      while (v12);
    }

    v13 = progressBins[7];
    progressBins[7] = 0;
    if (v13)
    {
      operator delete(v13);
    }

    MEMORY[0x29ED520D0](progressBins, 0x10B0C404C6F8B55);
  }

  impl = self->_impl;
  if (impl)
  {
    v15 = impl[34];
    if (v15)
    {
      v16 = impl[35];
      v17 = impl[34];
      if (v16 != v15)
      {
        do
        {
          v16 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::DeferredBatch::~DeferredBatch(v16 - 41);
        }

        while (v16 != v15);
        v17 = impl[34];
      }

      impl[35] = v15;
      operator delete(v17);
    }

    v18 = impl[31];
    if (v18)
    {
      impl[32] = v18;
      operator delete(v18);
    }

    v19 = impl[28];
    if (v19)
    {
      impl[29] = v19;
      operator delete(v19);
    }

    v20 = impl[25];
    if (v20)
    {
      impl[26] = v20;
      operator delete(v20);
    }

    v21 = impl[22];
    if (v21)
    {
      impl[23] = v21;
      operator delete(v21);
    }

    v22 = impl[19];
    if (v22)
    {
      impl[20] = v22;
      operator delete(v22);
    }

    v23 = impl[16];
    if (v23)
    {
      impl[17] = v23;
      operator delete(v23);
    }

    v24 = impl[13];
    if (v24)
    {
      impl[14] = v24;
      operator delete(v24);
    }

    v25 = impl[10];
    if (v25)
    {
      impl[11] = v25;
      operator delete(v25);
    }

    v26 = impl[7];
    if (v26)
    {
      impl[8] = v26;
      operator delete(v26);
    }

    free(self->_impl);
    self->_impl = 0;
  }

  v27.receiver = self;
  v27.super_class = AGXG18PFamilyRayTracingGPUBuilder;
  [(_MTLCommandEncoder *)&v27 dealloc];
}

- (AGXG18PFamilyRayTracingGPUBuilder)initWithCommandBuffer:(id)buffer descriptor:(id)descriptor
{
  v28.receiver = self;
  v28.super_class = AGXG18PFamilyRayTracingGPUBuilder;
  v6 = [(_MTLObjectWithLabel *)&v28 init];
  if (!v6)
  {
    return v6;
  }

  device = [buffer device];
  v8 = *MEMORY[0x29EDBB788];
  *(&v6->super.super.super.super.isa + v8) = device;
  bufferCopy = buffer;
  *(&v6->super.super.super.super.isa + *MEMORY[0x29EDBB780]) = bufferCopy;
  convertToComputePassDescriptor = [descriptor convertToComputePassDescriptor];
  if (!convertToComputePassDescriptor)
  {
    convertToComputePassDescriptor = objc_alloc_init(MEMORY[0x29EDBB568]);
  }

  v6->_defersCommands = 1;
  if (objc_opt_respondsToSelector())
  {
    maximumComputeSubstreams = [*(&v6->super.super.super.super.isa + v8) maximumComputeSubstreams];
  }

  else
  {
    maximumComputeSubstreams = 0;
  }

  {
    v26 = maximumComputeSubstreams;
    maximumComputeSubstreams = v26;
    if (v27)
    {
      [AGXG18PFamilyRayTracingGPUBuilder initWithCommandBuffer:descriptor:]::evSubstreamCount = -1;
      maximumComputeSubstreams = v26;
    }
  }

  if (maximumComputeSubstreams >= [AGXG18PFamilyRayTracingGPUBuilder initWithCommandBuffer:descriptor:]::evSubstreamCount)
  {
    v12 = [AGXG18PFamilyRayTracingGPUBuilder initWithCommandBuffer:descriptor:]::evSubstreamCount;
  }

  else
  {
    v12 = maximumComputeSubstreams;
  }

  if (descriptor)
  {
    v13 = [descriptor enableSubstreams] ^ 1;
    if (v12 < 2)
    {
      goto LABEL_20;
    }

LABEL_15:
    if ((v13 & 1) == 0 && [*(&v6->super.super.super.super.isa + v8) supportsVirtualSubstreams])
    {
      progressBins = v6->_progressBins;
      if (progressBins)
      {
        progressBins[48] = 1;
      }

      v6->virtualSubstreamsEnabled = 1;
    }

    goto LABEL_20;
  }

  LOBYTE(v13) = 0;
  if (v12 >= 2)
  {
    goto LABEL_15;
  }

LABEL_20:
  [convertToComputePassDescriptor setSubstreamCount:v12];
  v6->_computeEncoder = [buffer computeCommandEncoderWithDescriptor:convertToComputePassDescriptor];
  v15 = malloc_type_calloc(0x128uLL, 1uLL, 0x10B00409275CA1FuLL);
  v6->_impl = v15;
  if (v15)
  {
    v16 = v15;
    v17 = *(&v6->super.super.super.super.isa + v8);
    computeEncoder = v6->_computeEncoder;
    v19 = [convertToComputePassDescriptor substreamCount] > 1;
    *v16 = v17;
    *(v16 + 8) = computeEncoder;
    *(v16 + 16) = *(computeEncoder + 11);
    *(v16 + 24) = 0;
    *(v16 + 44) = 0;
    *(v16 + 49) = 0;
    *(v16 + 51) = 1;
    *(v16 + 292) = 0;
    *(v16 + 244) = 0u;
    *(v16 + 228) = 0u;
    *(v16 + 212) = 0u;
    *(v16 + 196) = 0u;
    *(v16 + 180) = 0u;
    *(v16 + 164) = 0u;
    *(v16 + 148) = 0u;
    *(v16 + 132) = 0u;
    *(v16 + 116) = 0u;
    *(v16 + 100) = 0u;
    *(v16 + 84) = 0u;
    *(v16 + 68) = 0u;
    *(v16 + 52) = 0u;
    *(v16 + 260) = 0u;
    *(v16 + 276) = 0u;
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
    }

    v20 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride;
    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen(void)::riaBvhGenOverride <= 0)
    {
      v20 = 3;
    }

    *(v16 + 44) = v20;
    if (v20 >= 2)
    {
      v21 = *(*v16 + 848);
      explicit = atomic_load_explicit((v21 + 17080), memory_order_acquire);
      if (!explicit)
      {
        os_unfair_lock_lock((v21 + 16920));
        explicit = *(v21 + 17080);
        if (!explicit)
        {
          explicit = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::newQtbTablesBuffer(v16);
          atomic_store(explicit, (v21 + 17080));
        }

        os_unfair_lock_unlock((v21 + 16920));
      }

      *(v16 + 24) = explicit;
    }

    *(*(v16 + 16) + 1961) = 1;
    *(*(*(computeEncoder + 11) + 2328) + 592) = 1;
    if (*(*(*v16 + 848) + 7056) <= 0x1Eu)
    {
      v23 = 6;
    }

    else
    {
      v23 = 7;
    }

    *(v16 + 40) = v23;
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBuilderAlgorithm(void)::riaBvhGen = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getSelectedRiaBvhGen();
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::getBuilderAlgorithm(void)::riaBvhGen == 5)
    {
      v24 = 0;
    }

    else
    {
      v24 = -1;
    }

    *(v16 + 48) = v24;
    *(v16 + 49) = 1;
    *(v16 + 50) = v19;
    *(v16 + 51) = 1;
    {
      AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::RayTracingGPUBuilderGen1(AGXG18PFamilyDevice *,AGXG18PFamilyComputeContext *,BOOL,BOOL)::skipResourceResidency = 0;
    }

    if (AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::RayTracingGPUBuilderGen1(AGXG18PFamilyDevice *,AGXG18PFamilyComputeContext *,BOOL,BOOL)::skipResourceResidency == 1)
    {
      *(v16 + 51) = 0;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)substreamSynchronizeAccelerationStructures:(id)structures access:(unint64_t)access
{
  v22 = *MEMORY[0x29EDCA608];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [structures countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(structures);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        progressBins = self->_progressBins;
        buffer = [v10 buffer];
        bufferOffset = [v10 bufferOffset];
        v14 = [v10 size];
        v16[0] = MEMORY[0x29EDCA5F8];
        v16[1] = 3221225472;
        v16[2] = __87__AGXG18PFamilyRayTracingGPUBuilder_substreamSynchronizeAccelerationStructures_access___block_invoke;
        v16[3] = &unk_29F3420F0;
        v16[4] = self;
        ProgressBinsSynchronizeBufferAccessRange(progressBins, buffer, bufferOffset, v14, access, v16);
      }

      v7 = [structures countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

uint64_t __87__AGXG18PFamilyRayTracingGPUBuilder_substreamSynchronizeAccelerationStructures_access___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 112) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 96);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

- (void)substreamSynchronizeDescriptor:(id)descriptor access:(unint64_t)access
{
  v7 = objc_opt_class();
  if ([v7 isSubclassOfClass:objc_opt_class()])
  {
    if (([descriptor instanceDescriptorType] - 3) > 1)
    {
      instancedAccelerationStructures = [descriptor instancedAccelerationStructures];

      [(AGXG18PFamilyRayTracingGPUBuilder *)self substreamSynchronizeAccelerationStructures:instancedAccelerationStructures access:access];
      return;
    }

    progressBins = self->_progressBins;
    if (!progressBins)
    {
      return;
    }

    computeEncoder = self->_computeEncoder;
    if (*(progressBins + 48) != 1)
    {
      v10 = progressBins[21];
      v11 = *(progressBins + 35);
      *(progressBins + 35) = v11 + 1;
      [(MTLComputeCommandEncoderSPI *)computeEncoder signalProgress:v11];
      if (progressBins[20])
      {
        v12 = 0;
        do
        {
          [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v12];
          [(MTLComputeCommandEncoderSPI *)computeEncoder waitForProgress:v11];
          v12 = (v12 + 1);
        }

        while (v12 < progressBins[20]);
      }

      [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v10];
      if (*(progressBins + 22))
      {
        v13 = *(progressBins + 21);
        if (v13)
        {
          do
          {
            v14 = *v13;
            operator delete(v13);
            v13 = v14;
          }

          while (v14);
        }

LABEL_27:
        *(progressBins + 21) = 0;
        v22 = *(progressBins + 20);
        if (v22)
        {
          bzero(*(progressBins + 19), 8 * v22);
        }

        *(progressBins + 22) = 0;
        return;
      }

      return;
    }

LABEL_15:
    [(MTLComputeCommandEncoderSPI *)computeEncoder endVirtualSubstream];

    [(MTLComputeCommandEncoderSPI *)computeEncoder beginVirtualSubstream];
    return;
  }

  v15 = objc_opt_class();
  if (![v15 isSubclassOfClass:objc_opt_class()])
  {
    return;
  }

  progressBins = self->_progressBins;
  if (!progressBins)
  {
    return;
  }

  computeEncoder = self->_computeEncoder;
  if (*(progressBins + 48) == 1)
  {
    goto LABEL_15;
  }

  v17 = progressBins[21];
  v18 = *(progressBins + 35);
  *(progressBins + 35) = v18 + 1;
  [(MTLComputeCommandEncoderSPI *)computeEncoder signalProgress:v18];
  if (progressBins[20])
  {
    v19 = 0;
    do
    {
      [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v19];
      [(MTLComputeCommandEncoderSPI *)computeEncoder waitForProgress:v18];
      v19 = (v19 + 1);
    }

    while (v19 < progressBins[20]);
  }

  [(MTLComputeCommandEncoderSPI *)computeEncoder setSubstream:v17];
  if (*(progressBins + 22))
  {
    v20 = *(progressBins + 21);
    if (v20)
    {
      do
      {
        v21 = *v20;
        operator delete(v20);
        v20 = v21;
      }

      while (v21);
    }

    goto LABEL_27;
  }
}

@end