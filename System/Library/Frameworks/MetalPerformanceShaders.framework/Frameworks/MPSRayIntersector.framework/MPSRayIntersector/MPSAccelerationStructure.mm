@interface MPSAccelerationStructure
- (MPSAccelerationStructure)copyWithZone:(NSZone *)zone group:(MPSAccelerationStructureGroup *)group;
- (MPSAccelerationStructure)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSAccelerationStructure)initWithCoder:(NSCoder *)aDecoder group:(MPSAccelerationStructureGroup *)group;
- (MPSAccelerationStructure)initWithDevice:(id)device;
- (MPSAccelerationStructure)initWithGroup:(MPSAccelerationStructureGroup *)group;
- (MPSBVHOptions)getBVHOptions;
- (id)copyAccelerationStructureWithZone:(_NSZone *)zone device:(id)device group:(id)group;
- (id)description;
- (void)dealloc;
- (void)decodeAccelerationStructureWithCoder:(id)coder;
- (void)encodeClearWithEncoder:(id)encoder buffer:(id)buffer bufferOffset:(unint64_t)offset value:(unsigned int)value;
- (void)encodeIndirectDispatchWithEncoder:(id)encoder pipeline:(id)pipeline threadCountBuffer:(id)buffer threadCountBufferOffset:(unint64_t)offset indirectDispatchBuffer:(id)dispatchBuffer indirectDispatchBufferOffset:(unint64_t)bufferOffset;
- (void)encodeWithCoder:(NSCoder *)coder;
- (void)rebuild;
- (void)setUsage:(MPSAccelerationStructureUsage)usage;
- (void)sharedInitAccelerationStructureWithGroup:(id)group;
@end

@implementation MPSAccelerationStructure

- (void)setUsage:(MPSAccelerationStructureUsage)usage
{
  if (usage >= 0xC)
  {
    sub_239E24BF0(self, a2);
  }

  self->_usage = usage;
}

- (void)sharedInitAccelerationStructureWithGroup:(id)group
{
  self->_boundingBoxCopyPipeline = MPSLibrary::GetComputeState();
  v5 = objc_autoreleasePoolPush();
  if (!group)
  {
    v6 = [MPSAccelerationStructureGroup alloc];
    group = objc_msgSend_initWithDevice_(v6, v7, (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2]);
  }

  self->_group = group;

  objc_autoreleasePoolPop(v5);
}

- (MPSAccelerationStructure)initWithDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSAccelerationStructure;
  v3 = [(MPSKernel *)&v7 initWithDevice:device];
  v5 = v3;
  if (v3)
  {
    objc_msgSend_sharedInitAccelerationStructureWithGroup_(v3, v4, 0);
  }

  return v5;
}

- (MPSAccelerationStructure)initWithGroup:(MPSAccelerationStructureGroup *)group
{
  if (!group)
  {
    sub_239E24C40(self, a2);
  }

  v5 = objc_msgSend_device(group, a2, group);
  v10.receiver = self;
  v10.super_class = MPSAccelerationStructure;
  v6 = [(MPSKernel *)&v10 initWithDevice:v5];
  v8 = v6;
  if (v6)
  {
    objc_msgSend_sharedInitAccelerationStructureWithGroup_(v6, v7, group);
  }

  return v8;
}

- (void)decodeAccelerationStructureWithCoder:(id)coder
{
  v13[4] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, v13, 4);
  v9 = objc_msgSend_setWithArray_(v5, v8, v7);
  self->_privateOptions = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v10, v9, @"MPSAccelerationStructureKeyOptions");
  self->_status = objc_msgSend_decodeIntegerForKey_(coder, v11, @"MPSAccelerationStructureKeyStatus");
  self->_usage = objc_msgSend_decodeIntegerForKey_(coder, v12, @"MPSAccelerationStructureKeyUsage");
}

- (MPSAccelerationStructure)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSAccelerationStructure;
  v5 = [(MPSKernel *)&v11 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (v5)
  {
    if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      objc_msgSend_sharedInitAccelerationStructureWithGroup_(v5, v6, 0);
      objc_msgSend_decodeAccelerationStructureWithCoder_(v7, v8, aDecoder);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v9 = objc_opt_class();
        NSStringFromClass(v9);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v7;
}

- (MPSAccelerationStructure)initWithCoder:(NSCoder *)aDecoder group:(MPSAccelerationStructureGroup *)group
{
  v7 = objc_msgSend_device(group, a2, aDecoder);
  v14.receiver = self;
  v14.super_class = MPSAccelerationStructure;
  v8 = [(MPSKernel *)&v14 initWithCoder:aDecoder device:v7];
  v10 = v8;
  if (v8)
  {
    if (*(&v8->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      objc_msgSend_sharedInitAccelerationStructureWithGroup_(v8, v9, group);
      objc_msgSend_decodeAccelerationStructureWithCoder_(v10, v11, aDecoder);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v12 = objc_opt_class();
        NSStringFromClass(v12);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSAccelerationStructure;
  [(MPSKernel *)&v3 dealloc];
}

- (void)encodeWithCoder:(NSCoder *)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v8.receiver = self;
  v8.super_class = MPSAccelerationStructure;
  [(MPSKernel *)&v8 encodeWithCoder:?];
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_privateOptions, @"MPSAccelerationStructureKeyOptions");
  objc_msgSend_encodeInteger_forKey_(coder, v6, self->_status, @"MPSAccelerationStructureKeyStatus");
  objc_msgSend_encodeInteger_forKey_(coder, v7, self->_usage, @"MPSAccelerationStructureKeyUsage");
}

- (id)description
{
  objc_msgSend_boundingBox(self, a2, v2);
  v15 = v5;
  v16 = v4;
  v6 = MEMORY[0x277CCACA8];
  v17.receiver = self;
  v17.super_class = MPSAccelerationStructure;
  v7 = [(MPSAccelerationStructure *)&v17 description];
  status = self->_status;
  usage = self->_usage;
  v11 = "Unknown";
  v12 = "Unknown";
  if (usage <= 0xB)
  {
    v12 = off_278B3D4C0[usage];
  }

  if (status == 1)
  {
    v11 = "MPSAccelerationStructureStatusBuilt";
  }

  if (status)
  {
    v13 = v11;
  }

  else
  {
    v13 = "MPSAccelerationStructureStatusUnbuilt";
  }

  return objc_msgSend_stringWithFormat_(v6, v8, @"%@\n\tgroup: %p\n\tbounding box: min = { %f, %f, %f }, max = { %f, %f, %f }\n\tstatus: %s\n\tusage: %s", v7, self->_group, *&v16, *(&v16 + 1), *(&v16 + 2), *&v15, *(&v15 + 1), *(&v15 + 2), v13, v12);
}

- (id)copyAccelerationStructureWithZone:(_NSZone *)zone device:(id)device group:(id)group
{
  v13.receiver = self;
  v13.super_class = MPSAccelerationStructure;
  v7 = [(MPSKernel *)&v13 copyWithZone:zone device:device];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_sharedInitAccelerationStructureWithGroup_(v7, v8, group);
    v9[12] = objc_msgSend_copy(self->_privateOptions, v10, v11);
    v9[14] = self->_status;
    v9[15] = self->_usage;
  }

  return v9;
}

- (MPSAccelerationStructure)copyWithZone:(NSZone *)zone group:(MPSAccelerationStructureGroup *)group
{
  objc_msgSend_device(group, a2, zone);

  return MEMORY[0x2821F9670](self, sel_copyAccelerationStructureWithZone_device_group_, zone);
}

- (MPSBVHOptions)getBVHOptions
{
  retstr->var0 = 0;
  if ((self->_usage & 3) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  retstr->var1 = v5;
  *&retstr->var2 = 0x3727C5AC3F800000;
  *&retstr->var4 = xmmword_239E27070;
  *&retstr->var8 = xmmword_239E27080;
  *&retstr->var12 = 0;
  result = self->_privateOptions;
  if (!result)
  {
    return result;
  }

  v7 = objc_msgSend_valueForKey_(result, a3, MPSAccelerationStructureOptionComputeStatistics);
  if (v7)
  {
    retstr->var0 = objc_msgSend_BOOLValue(v7, v8, v9);
  }

  v10 = objc_msgSend_valueForKey_(self->_privateOptions, v8, MPSAccelerationStructureOptionFragmentCost);
  if (v10)
  {
    objc_msgSend_floatValue(v10, v11, v12);
    retstr->var2 = v13;
  }

  v14 = objc_msgSend_valueForKey_(self->_privateOptions, v11, MPSAccelerationStructureOptionSplitHeuristic);
  if (v14)
  {
    v16 = v14;
    if (objc_msgSend_isEqualToString_(v14, v15, MPSAccelerationStructureSplitHeuristicObjectMedian))
    {
      retstr->var1 = 0;
      goto LABEL_19;
    }

    if (objc_msgSend_isEqualToString_(v16, v15, MPSAccelerationStructureSplitHeuristicSAH))
    {
      v17 = 1;
LABEL_18:
      retstr->var1 = v17;
      goto LABEL_19;
    }

    if (objc_msgSend_isEqualToString_(v16, v15, MPSAccelerationStructureSplitHeuristicBinnedSAH))
    {
      v17 = 2;
      goto LABEL_18;
    }

    if (objc_msgSend_isEqualToString_(v16, v15, MPSAccelerationStructureSplitHeuristicBinnedSpatialSAH))
    {
      v17 = 3;
      goto LABEL_18;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v54 = v16;
      MTLReportFailure();
    }
  }

LABEL_19:
  v18 = objc_msgSend_valueForKey_(self->_privateOptions, v15, MPSAccelerationStructureOptionMinimumOverlap, v54);
  if (v18)
  {
    objc_msgSend_floatValue(v18, v19, v20);
    retstr->var3 = v21;
  }

  v22 = objc_msgSend_valueForKey_(self->_privateOptions, v19, MPSAccelerationStructureOptionBatchSize);
  if (v22)
  {
    retstr->var4 = objc_msgSend_unsignedIntegerValue(v22, v23, v24);
  }

  v25 = objc_msgSend_valueForKey_(self->_privateOptions, v23, MPSAccelerationStructureOptionMaximumConcurrentNodeSize);
  if (v25)
  {
    retstr->var5 = objc_msgSend_unsignedIntegerValue(v25, v26, v27);
  }

  v28 = objc_msgSend_valueForKey_(self->_privateOptions, v26, MPSAccelerationStructureOptionBins);
  if (v28)
  {
    retstr->var9 = objc_msgSend_unsignedIntegerValue(v28, v29, v30);
  }

  v31 = objc_msgSend_valueForKey_(self->_privateOptions, v29, MPSAccelerationStructureOptionMaxDepth);
  if (v31)
  {
    v34 = objc_msgSend_unsignedIntegerValue(v31, v32, v33);
    retstr->var8 = v34;
  }

  else
  {
    v34 = 32;
  }

  v35 = objc_msgSend_valueForKey_(self->_privateOptions, v32, MPSAccelerationStructureOptionMaxFragmentsPerLeaf);
  if (v35)
  {
    retstr->var7 = objc_msgSend_unsignedIntegerValue(v35, v36, v37);
  }

  v38 = objc_msgSend_valueForKey_(self->_privateOptions, v36, MPSAccelerationStructureOptionMinFragmentsPerLeaf);
  if (v38)
  {
    retstr->var6 = objc_msgSend_unsignedIntegerValue(v38, v39, v40);
  }

  v41 = objc_msgSend_valueForKey_(self->_privateOptions, v39, MPSAccelerationStructureOptionBuilder);
  if (!v41)
  {
    goto LABEL_40;
  }

  v43 = v41;
  if (objc_msgSend_isEqualToString_(v41, v42, MPSAccelerationStructureBuilderGPU))
  {
    v44 = 2;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v43, v42, MPSAccelerationStructureBuilderCPU))
    {
      if (MTLReportFailureTypeEnabled())
      {
        v55 = v43;
        MTLReportFailure();
      }

      goto LABEL_40;
    }

    v44 = 1;
  }

  retstr->var10 = v44;
LABEL_40:
  v45 = objc_msgSend_valueForKey_(self->_privateOptions, v42, MPSAccelerationStructureOptionGPUBuilderType, v55);
  if (v45)
  {
    v47 = v45;
    if (objc_msgSend_isEqualToString_(v45, v46, MPSAccelerationStructureGPUBuilderTypeDefault))
    {
      retstr->var13 = 0;
    }

    else if (objc_msgSend_isEqualToString_(v47, v46, MPSAccelerationStructureGPUBuilderTypeFast))
    {
      retstr->var13 = 1;
    }

    else if (MTLReportFailureTypeEnabled())
    {
      v56 = v47;
      MTLReportFailure();
    }
  }

  v48 = objc_msgSend_valueForKey_(self->_privateOptions, v46, MPSAccelerationStructureOptionBranchingFactor, v56);
  if (v48)
  {
    v51 = objc_msgSend_unsignedIntegerValue(v48, v49, v50);
    retstr->var11 = v51;
  }

  else
  {
    v51 = 2;
  }

  result = objc_msgSend_valueForKey_(self->_privateOptions, v49, MPSAccelerationStructureOptionNodeLayout);
  if (result)
  {
    v53 = result;
    result = objc_msgSend_isEqualToString_(result, v52, MPSAccelerationStructureNodeLayoutSOA);
    if (result)
    {
      retstr->var12 = 0;
    }

    else
    {
      result = objc_msgSend_isEqualToString_(v53, v52, MPSAccelerationStructureNodeLayoutAOS);
      if (result)
      {
        retstr->var12 = 1;
      }

      else
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }
    }
  }

  if (v51 == 4)
  {
    if (v34 >= 0x11)
    {
      return sub_239E24C90(v34, v52);
    }
  }

  else if (v51 == 2)
  {
    if (v34 >= 0x21)
    {
      return sub_239E24CE4(v34, v52);
    }
  }

  else
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      return MTLReportFailure();
    }
  }

  return result;
}

- (void)rebuild
{
  v3 = dispatch_semaphore_create(0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_239E1899C;
  v5[3] = &unk_278B3D290;
  v5[4] = v3;
  objc_msgSend_rebuildWithCompletionHandler_(self, v4, v5);
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  kdebug_trace();
  dispatch_release(v3);
}

- (void)encodeClearWithEncoder:(id)encoder buffer:(id)buffer bufferOffset:(unint64_t)offset value:(unsigned int)value
{
  valueCopy = value;
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(encoder, v10, ComputeState);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v11, buffer, offset, 29);
  objc_msgSend_setBytes_length_atIndex_(encoder, v12, &valueCopy, 4, 30);
  v17 = vdupq_n_s64(1uLL);
  v18 = v17;
  v19 = 1;
  v16 = objc_msgSend_threadExecutionWidth(ComputeState, v13, v14);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v15, &v18, &v16);
}

- (void)encodeIndirectDispatchWithEncoder:(id)encoder pipeline:(id)pipeline threadCountBuffer:(id)buffer threadCountBufferOffset:(unint64_t)offset indirectDispatchBuffer:(id)dispatchBuffer indirectDispatchBufferOffset:(unint64_t)bufferOffset
{
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(encoder, v15, ComputeState);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v16, buffer, offset, 28);
  v32 = objc_msgSend_threadExecutionWidth(pipeline, v17, v18);
  objc_msgSend_setBytes_length_atIndex_(encoder, v19, &v32, 4, 29);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v20, dispatchBuffer, bufferOffset, 30);
  v28 = vdupq_n_s64(1uLL);
  v30 = v28;
  *v31 = v28;
  *&v31[16] = 1;
  v29 = objc_msgSend_threadExecutionWidth(ComputeState, v21, v22);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v23, v31, &v29);
  objc_msgSend_setComputePipelineState_(encoder, v24, pipeline);
  *v31 = objc_msgSend_threadExecutionWidth(pipeline, v25, v26);
  *&v31[8] = v28;
  objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(encoder, v27, dispatchBuffer, bufferOffset, v31);
}

@end