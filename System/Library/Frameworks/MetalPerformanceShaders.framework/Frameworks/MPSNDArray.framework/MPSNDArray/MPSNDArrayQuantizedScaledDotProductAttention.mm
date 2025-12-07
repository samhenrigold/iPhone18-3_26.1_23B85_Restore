@interface MPSNDArrayQuantizedScaledDotProductAttention
- (MPSNDArrayQuantizedScaledDotProductAttention)initWithDevice:(id)device kernelType:(int)type qQuantizationDescriptor:(id)descriptor kQuantizationDescriptor:(id)quantizationDescriptor vQuantizationDescriptor:(id)vQuantizationDescriptor;
- (MPSNDArrayQuantizedScaledDotProductAttention)initWithDevice:(id)device kernelType:(int)type qQuantizationDescriptor:(id)descriptor kQuantizationDescriptor:(id)quantizationDescriptor vQuantizationDescriptor:(id)vQuantizationDescriptor sourceCount:(unint64_t)count;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
@end

@implementation MPSNDArrayQuantizedScaledDotProductAttention

- (MPSNDArrayQuantizedScaledDotProductAttention)initWithDevice:(id)device kernelType:(int)type qQuantizationDescriptor:(id)descriptor kQuantizationDescriptor:(id)quantizationDescriptor vQuantizationDescriptor:(id)vQuantizationDescriptor sourceCount:(unint64_t)count
{
  v12 = *&type;
  if (descriptor && (([descriptor hasZeroPoint] & 1) != 0 || (objc_msgSend(descriptor, "hasMinValue") & 1) != 0))
  {
    goto LABEL_10;
  }

  if (([quantizationDescriptor hasZeroPoint] & 1) == 0 && (objc_msgSend(quantizationDescriptor, "hasMinValue") & 1) == 0 && (objc_msgSend(vQuantizationDescriptor, "hasZeroPoint") & 1) == 0)
  {
    [vQuantizationDescriptor hasMinValue];
  }

  if (descriptor)
  {
LABEL_10:
    if ([descriptor hasZeroPoint] & 1) != 0 || (objc_msgSend(descriptor, "hasMinValue"))
    {
      goto LABEL_23;
    }
  }

  if (([quantizationDescriptor hasZeroPoint] & 1) != 0 || (objc_msgSend(quantizationDescriptor, "hasMinValue") & 1) != 0 || (objc_msgSend(vQuantizationDescriptor, "hasZeroPoint") & 1) != 0 || objc_msgSend(vQuantizationDescriptor, "hasMinValue"))
  {
LABEL_23:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v18.receiver = self;
  v18.super_class = MPSNDArrayQuantizedScaledDotProductAttention;
  v15 = [(MPSNDArrayScaledDotProductAttention *)&v18 initWithDevice:device kernelType:v12 sourceCount:count];
  if (descriptor)
  {
    descriptorCopy = descriptor;
  }

  else
  {
    descriptorCopy = 0;
  }

  v15->_qQuantizationDescriptor = descriptorCopy;
  v15->_kQuantizationDescriptor = quantizationDescriptor;
  v15->_vQuantizationDescriptor = vQuantizationDescriptor;
  v15->super.super._encode = EncodeQuantizedSDPA;
  return v15;
}

- (MPSNDArrayQuantizedScaledDotProductAttention)initWithDevice:(id)device kernelType:(int)type qQuantizationDescriptor:(id)descriptor kQuantizationDescriptor:(id)quantizationDescriptor vQuantizationDescriptor:(id)vQuantizationDescriptor
{
  v10 = *&type;
  if (descriptor)
  {
    v13 = [descriptor getNDArrayCount] + 4;
  }

  else
  {
    v13 = 4;
  }

  getNDArrayCount = [quantizationDescriptor getNDArrayCount];
  v15 = getNDArrayCount + v13 + [vQuantizationDescriptor getNDArrayCount];

  return [(MPSNDArrayQuantizedScaledDotProductAttention *)self initWithDevice:device kernelType:v10 qQuantizationDescriptor:descriptor kQuantizationDescriptor:quantizationDescriptor vQuantizationDescriptor:vQuantizationDescriptor sourceCount:v15];
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v62.receiver = self;
  v62.super_class = MPSNDArrayQuantizedScaledDotProductAttention;
  object = [(MPSNDArrayMultiaryBase *)&v62 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
  if ([kernel layout] == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if ([kernel layout] == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = [arrays objectAtIndexedSubscript:0];
  v14 = [arrays objectAtIndexedSubscript:1];
  v15 = *MEMORY[0x277CD7410];
  v16 = *(v13 + v15);
  v17 = *(v13 + v15 + 16);
  v18 = *(v13 + v15 + 48);
  v19 = *MEMORY[0x277CD73D8];
  v20 = *(v13 + v19);
  v59 = *(v13 + v15 + 32);
  v60 = v18;
  v58[0] = v16;
  v58[1] = v17;
  v21 = *(v58 + (v20 & 0xF));
  v55 = *(v14 + v19);
  v22 = (&v54 | v12 & 0xF);
  v23 = *(v14 + v15 + 4 * (*(&v55 | v12 & 0xF) & 0xF));
  v54 = v20;
  v57[2] = v59;
  v57[3] = v18;
  v57[0] = v16;
  v57[1] = v17;
  v24 = *(v57 + (*v22 & 0xF));
  v56[2] = v59;
  v56[3] = v18;
  v56[0] = v16;
  v56[1] = v17;
  v25 = *(v56 + (*(&v54 | v11 & 0xF) & 0xF));
  v61[2] = v59;
  v61[3] = v18;
  v61[0] = v16;
  v61[1] = v17;
  v26 = *(v61 + (BYTE3(v20) & 0xF));
  v27 = (v26 * v25 * v24 * v23 * (2 * v21 + 10));
  if ((*(destArrays + *MEMORY[0x277CD73C8]) & 0xFFF8) == 0x20)
  {
    [object setFloat32Ops:v27];
    [object setFloat16Ops:0.0];
  }

  else
  {
    [object setFloat16Ops:v27];
    [object setFloat32Ops:0.0];
  }

  [object float32Ops];
  v29 = v28;
  [object float16Ops];
  v31 = v30;
  [object deviceMemoryBytesRead];
  v33 = v32;
  [object deviceMemoryBytesWrite];
  v35 = v34;
  v36 = [arrays count];
  if (v36 == 6)
  {
    [arrays objectAtIndexedSubscript:0];
    v53 = MPSGetDataTypeName();
    [arrays objectAtIndexedSubscript:1];
    v51 = MPSGetDataTypeName();
    [arrays objectAtIndexedSubscript:2];
    MPSGetDataTypeName();
    [arrays objectAtIndexedSubscript:3];
    MPSGetDataTypeName();
    [arrays objectAtIndexedSubscript:4];
    MPSGetDataTypeName();
    [arrays objectAtIndexedSubscript:5];
    MPSGetDataTypeName();
    MPSGetDataTypeName();
    MPSKernel_LogInfo(kernel, v38, "QuantizedSDPA: Q is not quantized, Batches=%lu, PromptSize=%lu, Contexts=%lu, Heads=%lu, Features=%lu, Q Datatype: %s, K Datatype: %s, V Datatype: %s, Mask Datatype: %s, KScale Datatype: %s, VScale Datatype: %s, Dest Datatype: %s\t", v26, v24, v23, v25, v21, v53, v51);
  }

  else if (v36 == 7)
  {
    [arrays objectAtIndexedSubscript:0];
    v52 = MPSGetDataTypeName();
    [arrays objectAtIndexedSubscript:1];
    v50 = MPSGetDataTypeName();
    [arrays objectAtIndexedSubscript:2];
    v49 = MPSGetDataTypeName();
    [arrays objectAtIndexedSubscript:3];
    MPSGetDataTypeName();
    [arrays objectAtIndexedSubscript:4];
    MPSGetDataTypeName();
    [arrays objectAtIndexedSubscript:5];
    MPSGetDataTypeName();
    [arrays objectAtIndexedSubscript:6];
    MPSGetDataTypeName();
    MPSGetDataTypeName();
    MPSKernel_LogInfo(kernel, v37, "QuantizedSDPA: Q is quantized, Batches=%lu, PromptSize=%lu, Contexts=%lu, Heads=%lu, Features=%lu, Q Datatype: %s, K Datatype: %s, V Datatype: %s, Mask Datatype: %s, QScale Datatype: %s, KScale Datatype: %s, VScale Datatype: %s, Dest Datatype: %s\t", v26, v24, v23, v25, v21, v52, v50, v49);
  }

  v39 = (v29 + v31) / (v33 + v35);
  [object float16Ops];
  v41 = v40;
  [object float32Ops];
  v43 = v42;
  [object deviceMemoryBytesRead];
  v45 = v44;
  [object deviceMemoryBytesWrite];
  MPSKernel_LogInfo(kernel, v46, "QuantizedSDPA: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v41, v43, v45, v47, v39);
  return object;
}

@end