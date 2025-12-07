@interface VFXModelDeformerInstanceWrapper
- (MTLComputeCommandEncoder)currentComputeEncoder;
- (__n128)_currentFrustumInfo;
- (__n128)_currentTransforms;
- (unint64_t)_currentFrameHash;
- (void)configureStageInputOutputDescriptor:(id)descriptor withDeformerFunction:(id)function;
- (void)dealloc;
- (void)setStageInputOutputBuffersToComputeEncoder:(id)encoder;
- (void)setStageInputOutputBuffersToCurrentComputeEncoder;
@end

@implementation VFXModelDeformerInstanceWrapper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXModelDeformerInstanceWrapper;
  [(VFXModelDeformerInstanceWrapper *)&v3 dealloc];
}

- (void)configureStageInputOutputDescriptor:(id)descriptor withDeformerFunction:(id)function
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = objc_msgSend_stageInputAttributes(function, a2, descriptor);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v35, v39, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v36;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        if (objc_msgSend_attributeIndex(v14, v9, v10, v33, v34))
        {
          if (objc_msgSend_attributeIndex(v14, v15, v16) == 3)
          {
            v19 = *&self->_stageInputOutputDescriptors.dstPositions.bufferAttributeOffset;
            v33 = *&self->_stageInputOutputDescriptors.dstPositions.isActive;
            v34 = v19;
            descriptorCopy6 = descriptor;
            v21 = 3;
          }

          else if (objc_msgSend_attributeIndex(v14, v17, v18) == 1)
          {
            v25 = *&self->_stageInputOutputDescriptors.srcNormals.bufferAttributeOffset;
            v33 = *&self->_stageInputOutputDescriptors.srcNormals.isActive;
            v34 = v25;
            descriptorCopy6 = descriptor;
            v21 = 1;
          }

          else if (objc_msgSend_attributeIndex(v14, v23, v24) == 4)
          {
            v28 = *&self->_stageInputOutputDescriptors.dstNormals.bufferAttributeOffset;
            v33 = *&self->_stageInputOutputDescriptors.dstNormals.isActive;
            v34 = v28;
            descriptorCopy6 = descriptor;
            v21 = 4;
          }

          else if (objc_msgSend_attributeIndex(v14, v26, v27) == 2)
          {
            v31 = *&self->_stageInputOutputDescriptors.srcTangents.bufferAttributeOffset;
            v33 = *&self->_stageInputOutputDescriptors.srcTangents.isActive;
            v34 = v31;
            descriptorCopy6 = descriptor;
            v21 = 2;
          }

          else
          {
            if (objc_msgSend_attributeIndex(v14, v29, v30) != 5)
            {
              continue;
            }

            v32 = *&self->_stageInputOutputDescriptors.dstTangents.bufferAttributeOffset;
            v33 = *&self->_stageInputOutputDescriptors.dstTangents.isActive;
            v34 = v32;
            descriptorCopy6 = descriptor;
            v21 = 5;
          }
        }

        else
        {
          v22 = *&self->_stageInputOutputDescriptors.srcPositions.bufferAttributeOffset;
          v33 = *&self->_stageInputOutputDescriptors.srcPositions.isActive;
          v34 = v22;
          descriptorCopy6 = descriptor;
          v21 = 0;
        }

        sub_1AF1E7700(descriptorCopy6, v21, &v33);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v35, v39, 16);
    }

    while (v11);
  }
}

- (unint64_t)_currentFrameHash
{
  currentUpdateRenderContext = self->_stack->_currentUpdateRenderContext;
  v4 = objc_msgSend_engineContext(currentUpdateRenderContext, a2, v2);
  v5 = sub_1AF1302C4(v4);
  v8 = objc_msgSend_currentFrameIndex(currentUpdateRenderContext, v6, v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ currentUpdateRenderContext)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ currentUpdateRenderContext)));
  v10 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&v5) ^ ((0xC6A4A7935BD1E995 * *&v5) >> 47))) ^ 0x35253C9ADE8F4CA8 ^ (0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))));
  return (0xC6A4A7935BD1E995 * (v10 ^ (v10 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v10 ^ (v10 >> 47))) >> 47);
}

- (__n128)_currentTransforms
{
  v2 = *(self + 8);
  v3 = *(v2 + 560);
  *(a2 + 128) = *(v2 + 544);
  *(a2 + 144) = v3;
  v4 = *(v2 + 592);
  *(a2 + 160) = *(v2 + 576);
  *(a2 + 176) = v4;
  v5 = *(v2 + 496);
  *(a2 + 64) = *(v2 + 480);
  *(a2 + 80) = v5;
  v6 = *(v2 + 528);
  *(a2 + 96) = *(v2 + 512);
  *(a2 + 112) = v6;
  v7 = *(v2 + 432);
  *a2 = *(v2 + 416);
  *(a2 + 16) = v7;
  result = *(v2 + 448);
  v9 = *(v2 + 464);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

- (__n128)_currentFrustumInfo
{
  v2 = *(self + 8);
  v3 = *(v2 + 688);
  *(a2 + 64) = *(v2 + 672);
  *(a2 + 80) = v3;
  *(a2 + 96) = *(v2 + 704);
  v4 = *(v2 + 624);
  *a2 = *(v2 + 608);
  *(a2 + 16) = v4;
  result = *(v2 + 656);
  *(a2 + 32) = *(v2 + 640);
  *(a2 + 48) = result;
  return result;
}

- (void)setStageInputOutputBuffersToComputeEncoder:(id)encoder
{
  if (self->_stageInputOutputDescriptors.srcPositions.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(encoder, a2, self->_currentUpdateBuffers.srcPositions, 0, 10);
  }

  if (self->_stageInputOutputDescriptors.dstPositions.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(encoder, a2, self->_currentUpdateBuffers.dstPositions, 0, 13);
  }

  if (self->_stageInputOutputDescriptors.srcNormals.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(encoder, a2, self->_currentUpdateBuffers.srcNormals, 0, 11);
  }

  if (self->_stageInputOutputDescriptors.dstNormals.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(encoder, a2, self->_currentUpdateBuffers.dstNormals, 0, 14);
  }

  if (self->_stageInputOutputDescriptors.srcTangents.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(encoder, a2, self->_currentUpdateBuffers.srcTangents, 0, 12);
  }

  if (self->_stageInputOutputDescriptors.dstTangents.isActive)
  {
    dstTangents = self->_currentUpdateBuffers.dstTangents;

    objc_msgSend_setBuffer_offset_atIndex_(encoder, a2, dstTangents, 0, 15);
  }
}

- (void)setStageInputOutputBuffersToCurrentComputeEncoder
{
  currentUpdateComputeEncoder = self->_currentUpdateComputeEncoder;
  if (!currentUpdateComputeEncoder)
  {
    currentUpdateComputeEncoder = (*(self->_currentUpdateComputeEncoderProvider + 2))();
    self->_currentUpdateComputeEncoder = currentUpdateComputeEncoder;
  }

  if (self->_stageInputOutputDescriptors.srcPositions.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(currentUpdateComputeEncoder, a2, self->_currentUpdateBuffers.srcPositions, 0, 10);
  }

  if (self->_stageInputOutputDescriptors.dstPositions.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(self->_currentUpdateComputeEncoder, a2, self->_currentUpdateBuffers.dstPositions, 0, 13);
  }

  if (self->_stageInputOutputDescriptors.srcNormals.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(self->_currentUpdateComputeEncoder, a2, self->_currentUpdateBuffers.srcNormals, 0, 11);
  }

  if (self->_stageInputOutputDescriptors.dstNormals.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(self->_currentUpdateComputeEncoder, a2, self->_currentUpdateBuffers.dstNormals, 0, 14);
  }

  if (self->_stageInputOutputDescriptors.srcTangents.isActive)
  {
    objc_msgSend_setBuffer_offset_atIndex_(self->_currentUpdateComputeEncoder, a2, self->_currentUpdateBuffers.srcTangents, 0, 12);
  }

  if (self->_stageInputOutputDescriptors.dstTangents.isActive)
  {
    v4 = self->_currentUpdateComputeEncoder;
    dstTangents = self->_currentUpdateBuffers.dstTangents;

    objc_msgSend_setBuffer_offset_atIndex_(v4, a2, dstTangents, 0, 15);
  }
}

- (MTLComputeCommandEncoder)currentComputeEncoder
{
  result = self->_currentUpdateComputeEncoder;
  if (!result)
  {
    result = (*(self->_currentUpdateComputeEncoderProvider + 2))();
    self->_currentUpdateComputeEncoder = result;
  }

  return result;
}

@end