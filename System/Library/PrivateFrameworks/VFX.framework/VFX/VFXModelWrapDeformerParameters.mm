@interface VFXModelWrapDeformerParameters
- (VFXModelWrapDeformerParameters)initWithCoder:(id)coder;
- (VFXModelWrapDeformerParameters)initWithDrivingNode:(__n128)node deformedNode:(__n128)deformedNode bindingMode:(__n128)mode bindingTransform:(uint64_t)transform drivingNodeUVChannel:(uint64_t)channel deformedNodeUVChannel:(uint64_t)vChannel;
- (VFXModelWrapDeformerParameters)initWithInnerLayerNode:(__n128)node outerLayerNode:(__n128)layerNode deformedNode:(__n128)deformedNode bindingMode:(uint64_t)mode bindingTransform:(uint64_t)transform;
- (id)extraLayerMeshesWithDrivingMesh0:(__CFXMesh *)mesh0 drivingMesh1:(__CFXMesh *)mesh1;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initParametersIfNeededWithDrivingNodeRef:(__CFXNode *)ref deformedNodeRef:(__CFXNode *)nodeRef;
- (void)initParametersIfNeededWithInnerLayerNodeRef:(__CFXNode *)ref outerLayerNodeRef:(__CFXNode *)nodeRef deformedNodeRef:(__CFXNode *)deformedNodeRef;
@end

@implementation VFXModelWrapDeformerParameters

- (VFXModelWrapDeformerParameters)initWithDrivingNode:(__n128)node deformedNode:(__n128)deformedNode bindingMode:(__n128)mode bindingTransform:(uint64_t)transform drivingNodeUVChannel:(uint64_t)channel deformedNodeUVChannel:(uint64_t)vChannel
{
  v31.receiver = self;
  v31.super_class = VFXModelWrapDeformerParameters;
  v16 = [(VFXModelWrapDeformerParameters *)&v31 init];
  v19 = v16;
  if (v16)
  {
    v16->_isLegacySingleLayerDeformer = 1;
    v16->_bindingMode = a9;
    *v16->_anon_a0 = a2;
    *&v16->_anon_a0[16] = node;
    *&v16->_anon_a0[32] = deformedNode;
    *&v16->_anon_a0[48] = mode;
    v16->_legacyDrivingNodeUVChannel = a10;
    v16->_legacyDeformedNodeUVChannel = a11;
    objc_msgSend_begin(VFXTransaction, v17, v18);
    objc_msgSend_setAnimationDuration_(VFXTransaction, v20, v21, 0.0);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1AF1DF56C;
    v30[3] = &unk_1E7A7C078;
    v30[4] = v19;
    v30[5] = channel;
    v30[6] = vChannel;
    objc_msgSend_enqueueCommandForObject_immediateTransactionBlock_(VFXTransaction, v22, vChannel, v30);
    objc_msgSend_commit(VFXTransaction, v23, v24);
  }

  return v19;
}

- (VFXModelWrapDeformerParameters)initWithInnerLayerNode:(__n128)node outerLayerNode:(__n128)layerNode deformedNode:(__n128)deformedNode bindingMode:(uint64_t)mode bindingTransform:(uint64_t)transform
{
  v29.receiver = self;
  v29.super_class = VFXModelWrapDeformerParameters;
  v14 = [(VFXModelWrapDeformerParameters *)&v29 init];
  v17 = v14;
  if (v14)
  {
    v14->_bindingMode = a10;
    *v14->_anon_a0 = a2;
    *&v14->_anon_a0[16] = node;
    *&v14->_anon_a0[32] = layerNode;
    *&v14->_anon_a0[48] = deformedNode;
    objc_msgSend_begin(VFXTransaction, v15, v16);
    objc_msgSend_setAnimationDuration_(VFXTransaction, v18, v19, 0.0);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1AF1DF6C8;
    v28[3] = &unk_1E7A7C0A0;
    v28[4] = v17;
    v28[5] = transform;
    v28[6] = a8;
    v28[7] = a9;
    objc_msgSend_enqueueCommandForObject_immediateTransactionBlock_(VFXTransaction, v20, a9, v28);
    objc_msgSend_commit(VFXTransaction, v21, v22);
  }

  return v17;
}

- (void)dealloc
{
  free(self->_bindingData.pointIndices);
  free(self->_bindingData.barycentricCoords);
  free(self->_bindingData.innerLayerInfluences);
  free(self->_bindingData.innerLayerTNBs);
  free(self->_bindingData.outerLayerTNBs);
  free(self->_bindingData.innerLayerOffsets);
  free(self->_bindingData.outerLayerOffsets);
  free(self->_bindingData.legacyOffsetsOrTransforms);
  v3.receiver = self;
  v3.super_class = VFXModelWrapDeformerParameters;
  [(VFXModelWrapDeformerParameters *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeInt32_forKey_(coder, a2, self->_vertexCount, @"vertexCount");
  objc_msgSend_encodeInt32_forKey_(coder, v5, LODWORD(self->_bindingMode), @"bindingMode");
  objc_msgSend_encodeInt32_forKey_(coder, v6, LODWORD(self->_bindingData.pointIndicesStride), @"bindingPointIndicesStride");
  objc_msgSend_encodeInt32_forKey_(coder, v7, LODWORD(self->_bindingData.barycentricCoordsStride), @"bindingBarycentricCoordsStride");
  objc_msgSend_encodeInt32_forKey_(coder, v8, LODWORD(self->_bindingData.pointIndicesFormat), @"bindingPointIndicesFormat");
  objc_msgSend_encodeInt32_forKey_(coder, v9, LODWORD(self->_bindingData.barycentricCoordsFormat), @"bindingBarycentricCoordsFormat");
  objc_msgSend_encodeBytes_length_forKey_(coder, v10, self->_bindingData.pointIndices, self->_bindingData.pointIndicesStride * self->_vertexCount, @"bindingPointIndices");
  objc_msgSend_encodeBytes_length_forKey_(coder, v11, self->_bindingData.barycentricCoords, self->_bindingData.barycentricCoordsStride * self->_vertexCount, @"bindingBarycentricCoords");
  if (self->_isLegacySingleLayerDeformer)
  {
    objc_msgSend_encodeBool_forKey_(coder, v12, 1, @"isLegacySingleLayerDeformer");
    legacyOffsetsOrTransformsLength = self->_bindingData.legacyOffsetsOrTransformsLength;
    p_legacyOffsetsOrTransformsLength = &self->_bindingData.legacyOffsetsOrTransformsLength;
    objc_msgSend_encodeBytes_length_forKey_(coder, v15, *(p_legacyOffsetsOrTransformsLength - 1), legacyOffsetsOrTransformsLength, @"bindingOffsetsOrTransforms");
    v17 = @"bindingOffsetsOrTransformsLength";
  }

  else
  {
    objc_msgSend_encodeBytes_length_forKey_(coder, v12, self->_bindingData.innerLayerInfluences, self->_bindingData.innerLayerInfluencesLength, @"bindingInnerLayerInfluences");
    objc_msgSend_encodeInt32_forKey_(coder, v18, LODWORD(self->_bindingData.innerLayerInfluencesLength), @"bindingInnerLayerInfluencesLength");
    if (self->_bindingMode != 1)
    {
      return;
    }

    objc_msgSend_encodeBytes_length_forKey_(coder, v19, self->_bindingData.innerLayerTNBs, self->_bindingData.tnbMatricesLength, @"bindingInnerTNBs");
    objc_msgSend_encodeBytes_length_forKey_(coder, v20, self->_bindingData.outerLayerTNBs, self->_bindingData.tnbMatricesLength, @"bindingOuterTNBs");
    objc_msgSend_encodeInt32_forKey_(coder, v21, LODWORD(self->_bindingData.tnbMatricesLength), @"bindingSpaceVectorsLength");
    offsetsLength = self->_bindingData.offsetsLength;
    p_legacyOffsetsOrTransformsLength = &self->_bindingData.offsetsLength;
    objc_msgSend_encodeBytes_length_forKey_(coder, v23, *(p_legacyOffsetsOrTransformsLength - 2), offsetsLength, @"bindingInnerOffsets");
    objc_msgSend_encodeBytes_length_forKey_(coder, v24, *(p_legacyOffsetsOrTransformsLength - 1), *p_legacyOffsetsOrTransformsLength, @"bindingOuterOffsets");
    v17 = @"bindingOffsetsLength";
  }

  v25 = *p_legacyOffsetsOrTransformsLength;

  objc_msgSend_encodeInt32_forKey_(coder, v16, v25, v17);
}

- (VFXModelWrapDeformerParameters)initWithCoder:(id)coder
{
  v44.receiver = self;
  v44.super_class = VFXModelWrapDeformerParameters;
  v5 = [(VFXModelWrapDeformerParameters *)&v44 init];
  if (v5)
  {
    v5->_vertexCount = objc_msgSend_decodeInt32ForKey_(coder, v4, @"vertexCount");
    v5->_bindingMode = objc_msgSend_decodeInt32ForKey_(coder, v6, @"bindingMode");
    v5->_bindingData.pointIndicesStride = objc_msgSend_decodeInt32ForKey_(coder, v7, @"bindingPointIndicesStride");
    v5->_bindingData.barycentricCoordsStride = objc_msgSend_decodeInt32ForKey_(coder, v8, @"bindingBarycentricCoordsStride");
    v5->_bindingData.pointIndicesFormat = objc_msgSend_decodeIntegerForKey_(coder, v9, @"bindingPointIndicesFormat");
    v5->_bindingData.barycentricCoordsFormat = objc_msgSend_decodeIntegerForKey_(coder, v10, @"bindingBarycentricCoordsFormat");
    vertexCount = v5->_vertexCount;
    v12 = v5->_bindingData.pointIndicesStride * vertexCount;
    v13 = v5->_bindingData.barycentricCoordsStride * vertexCount;
    v5->_bindingData.pointIndices = malloc_type_malloc(v12, 0xBEB32C07uLL);
    v5->_bindingData.barycentricCoords = malloc_type_malloc(v13, 0x3421AD62uLL);
    __n = 0;
    v15 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v14, @"bindingPointIndices", &__n);
    if (__n == v12)
    {
      memcpy(v5->_bindingData.pointIndices, v15, v12);
    }

    v17 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v16, @"bindingBarycentricCoords", &__n);
    if (__n == v13)
    {
      memcpy(v5->_bindingData.barycentricCoords, v17, v13);
    }

    v19 = objc_msgSend_decodeBoolForKey_(coder, v18, @"isLegacySingleLayerDeformer");
    v5->_isLegacySingleLayerDeformer = v19;
    if (v19)
    {
      v21 = objc_msgSend_decodeInt32ForKey_(coder, v20, @"bindingOffsetsOrTransformsLength");
      v5->_bindingData.legacyOffsetsOrTransformsLength = v21;
      v5->_bindingData.legacyOffsetsOrTransforms = malloc_type_malloc(v21, 0x100004052888210uLL);
      __n = 0;
      v23 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v22, @"bindingOffsetsOrTransforms", &__n);
      v24 = __n;
      if (__n == v5->_bindingData.legacyOffsetsOrTransformsLength)
      {
        v25 = v23;
        legacyOffsetsOrTransforms = v5->_bindingData.legacyOffsetsOrTransforms;
LABEL_20:
        memcpy(legacyOffsetsOrTransforms, v25, v24);
      }
    }

    else
    {
      v27 = objc_msgSend_decodeInt32ForKey_(coder, v20, @"bindingInnerLayerInfluencesLength");
      v5->_bindingData.innerLayerInfluencesLength = v27;
      v5->_bindingData.innerLayerInfluences = malloc_type_malloc(v27, 0x100004052888210uLL);
      __n = 0;
      v29 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v28, @"bindingInnerLayerInfluences", &__n);
      if (__n == v5->_bindingData.innerLayerInfluencesLength)
      {
        memcpy(v5->_bindingData.innerLayerInfluences, v29, __n);
      }

      if (v5->_bindingMode == 1)
      {
        v31 = objc_msgSend_decodeInt32ForKey_(coder, v30, @"bindingSpaceVectorsLength");
        v5->_bindingData.tnbMatricesLength = v31;
        v5->_bindingData.innerLayerTNBs = malloc_type_malloc(v31, 0x100004052888210uLL);
        v5->_bindingData.outerLayerTNBs = malloc_type_malloc(v5->_bindingData.tnbMatricesLength, 0x100004052888210uLL);
        __n = 0;
        v33 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v32, @"bindingInnerTNBs", &__n);
        if (__n == v5->_bindingData.tnbMatricesLength)
        {
          memcpy(v5->_bindingData.innerLayerTNBs, v33, __n);
        }

        v35 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v34, @"bindingOuterTNBs", &__n);
        if (__n == v5->_bindingData.tnbMatricesLength)
        {
          memcpy(v5->_bindingData.outerLayerTNBs, v35, __n);
        }

        v37 = objc_msgSend_decodeInt32ForKey_(coder, v36, @"bindingOffsetsLength");
        v5->_bindingData.offsetsLength = v37;
        v5->_bindingData.innerLayerOffsets = malloc_type_malloc(v37, 0x100004052888210uLL);
        v5->_bindingData.outerLayerOffsets = malloc_type_malloc(v5->_bindingData.offsetsLength, 0x100004052888210uLL);
        v39 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v38, @"bindingInnerOffsets", &__n);
        if (__n == v5->_bindingData.offsetsLength)
        {
          memcpy(v5->_bindingData.innerLayerOffsets, v39, __n);
        }

        v41 = objc_msgSend_decodeBytesForKey_returnedLength_(coder, v40, @"bindingOuterOffsets", &__n);
        v24 = __n;
        if (__n == v5->_bindingData.offsetsLength)
        {
          v25 = v41;
          legacyOffsetsOrTransforms = v5->_bindingData.outerLayerOffsets;
          goto LABEL_20;
        }
      }
    }
  }

  return v5;
}

- (void)initParametersIfNeededWithDrivingNodeRef:(__CFXNode *)ref deformedNodeRef:(__CFXNode *)nodeRef
{
  if (!self->_vertexCount)
  {
    free(self->_bindingData.pointIndices);
    free(self->_bindingData.barycentricCoords);
    free(self->_bindingData.legacyOffsetsOrTransforms);
    v8 = sub_1AF1B75A0(ref, v7);
    v10 = sub_1AF1B2C1C(v8, v9);
    v12 = sub_1AF1B75A0(nodeRef, v11);
    v14 = sub_1AF1B2C1C(v12, v13);
    v15 = sub_1AF1A4CE8(v10, 0);
    v16 = sub_1AF1A4CE8(v14, 0);
    v40 = sub_1AF1A4C6C(v10, 0, 0);
    v39 = sub_1AF1A4C6C(v14, 0, 0);
    v41 = v16;
    v18 = sub_1AF1AE6EC(v16, v17);
    self->_vertexCount = v18;
    *&self->_bindingData.barycentricCoordsStride = xmmword_1AFE22040;
    v38 = malloc_type_malloc(4 * (v18 & 0x7FFFFFFF), 0x1000040BDFB0063uLL);
    self->_bindingData.barycentricCoords = v38;
    v42 = v15;
    v20 = sub_1AF1AE6EC(v15, v19) - 1;
    v21 = 1;
    if (v20 > 0xFF)
    {
      v21 = 2;
    }

    v22 = HIWORD(v20);
    if (HIWORD(v20))
    {
      v23 = 4;
    }

    else
    {
      v23 = v21;
    }

    v24 = 3 << (v20 > 0xFF);
    if (v22)
    {
      v24 = 12;
    }

    self->_bindingData.pointIndicesStride = v24;
    v25 = malloc_type_malloc(v24 * self->_vertexCount, 0x4316E93DuLL);
    self->_bindingData.pointIndices = v25;
    if (v23 == 1)
    {
      v27 = 0;
      v28 = 2;
      v26 = v25;
    }

    else
    {
      v26 = 0;
      if (v23 == 2)
      {
        v28 = 14;
        v27 = v25;
      }

      else
      {
        v27 = 0;
        v28 = 38;
      }
    }

    self->_bindingData.pointIndicesFormat = v28;
    if (v22)
    {
      v29 = v25;
    }

    else
    {
      v29 = 0;
    }

    v31 = sub_1AF1A4604(v10, 3, self->_legacyDrivingNodeUVChannel, 0);
    if (!v31)
    {
      v32 = sub_1AF0D5194(0, v30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE1F6C(v32);
      }
    }

    v34 = sub_1AF1A4604(v14, 3, self->_legacyDeformedNodeUVChannel, 0);
    if (!v34)
    {
      v35 = sub_1AF0D5194(0, v33);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE1FF0(v35);
      }
    }

    v36 = sub_1AF1A4C6C(v10, 3, self->_legacyDrivingNodeUVChannel);
    v37 = sub_1AF1A4C6C(v14, 3, self->_legacyDeformedNodeUVChannel);
    sub_1AF1E1A04(self->_bindingMode, self->_vertexCount, v14, v10, v41, v42, v34, v31, *self->_anon_a0, *&self->_anon_a0[16], *&self->_anon_a0[32], *&self->_anon_a0[48], v39, v37, v40, v36, 0, v26, v27, v29, 0, v38, &self->_bindingData.legacyOffsetsOrTransforms, &self->_bindingData.legacyOffsetsOrTransformsLength);
  }
}

- (void)initParametersIfNeededWithInnerLayerNodeRef:(__CFXNode *)ref outerLayerNodeRef:(__CFXNode *)nodeRef deformedNodeRef:(__CFXNode *)deformedNodeRef
{
  if (!self->_vertexCount)
  {
    free(self->_bindingData.pointIndices);
    free(self->_bindingData.barycentricCoords);
    free(self->_bindingData.innerLayerInfluences);
    free(self->_bindingData.innerLayerTNBs);
    free(self->_bindingData.outerLayerTNBs);
    free(self->_bindingData.innerLayerOffsets);
    free(self->_bindingData.outerLayerOffsets);
    v10 = sub_1AF1B75A0(ref, v9);
    v12 = sub_1AF1B2C1C(v10, v11);
    v14 = sub_1AF1B75A0(nodeRef, v13);
    v16 = sub_1AF1B2C1C(v14, v15);
    v18 = sub_1AF1B75A0(deformedNodeRef, v17);
    v20 = sub_1AF1B2C1C(v18, v19);
    v49 = sub_1AF1A4CE8(v12, 0);
    v48 = sub_1AF1A4CE8(v16, 0);
    v50 = v20;
    v21 = sub_1AF1A4CE8(v20, 0);
    v46 = sub_1AF1A4C6C(v12, 0, 0);
    v45 = sub_1AF1A4C6C(v16, 0, 0);
    v47 = v21;
    v23 = sub_1AF1AE6EC(v21, v22);
    self->_vertexCount = v23;
    *&self->_bindingData.barycentricCoordsStride = xmmword_1AFE22050;
    v24 = malloc_type_malloc(8 * (v23 & 0x7FFFFFFF), 0x100004052888210uLL);
    v25 = 0;
    self->_bindingData.barycentricCoords = v24;
    v26 = 1;
    do
    {
      v27 = v26 & 1;
      if (v26)
      {
        v28 = v12;
      }

      else
      {
        v28 = v16;
      }

      v29 = sub_1AF1A4CE8(v28, 0);
      v31 = sub_1AF1AE6EC(v29, v30);
      v26 = 0;
      if (v25 <= v31)
      {
        v25 = v31;
      }
    }

    while (v27);
    v32 = v25 - 1;
    v33 = (v25 - 1) > 0xFF;
    v34 = 1;
    if ((v25 - 1) > 0xFF)
    {
      v34 = 2;
    }

    v35 = HIWORD(v32);
    if (HIWORD(v32))
    {
      v36 = 4;
    }

    else
    {
      v36 = v34;
    }

    v37 = 3 << v33;
    if (v35)
    {
      v37 = 12;
    }

    self->_bindingData.pointIndicesStride = v37;
    v38 = malloc_type_malloc(v37 * self->_vertexCount, 0x9C621D7FuLL);
    self->_bindingData.pointIndices = v38;
    if (v36 == 1)
    {
      v40 = 0;
      v41 = 2;
      v39 = v38;
    }

    else
    {
      v39 = 0;
      if (v36 == 2)
      {
        v41 = 14;
        v40 = v38;
      }

      else
      {
        v39 = 0;
        v40 = 0;
        v41 = 38;
      }
    }

    self->_bindingData.pointIndicesFormat = v41;
    if (v35)
    {
      v42 = v38;
    }

    else
    {
      v42 = 0;
    }

    v43 = 4 * self->_vertexCount;
    self->_bindingData.innerLayerInfluencesLength = v43;
    v44 = malloc_type_malloc(v43, 0x100004052888210uLL);
    self->_bindingData.innerLayerInfluences = v44;
    sub_1AF1E26A8(self->_bindingMode, self->_vertexCount, v50, v12, v16, v47, v49, v48, *self->_anon_a0, *&self->_anon_a0[16], *&self->_anon_a0[32], *&self->_anon_a0[48], v46, v45, 1, v39, v40, v42, v24, 0, v44, &self->_bindingData.innerLayerTNBs, &self->_bindingData.outerLayerTNBs, &self->_bindingData.tnbMatricesLength, &self->_bindingData.innerLayerOffsets, &self->_bindingData.outerLayerOffsets, &self->_bindingData.offsetsLength);
  }
}

- (id)extraLayerMeshesWithDrivingMesh0:(__CFXMesh *)mesh0 drivingMesh1:(__CFXMesh *)mesh1
{
  v6 = sub_1AF1A4CE8(mesh0, 0);
  v7 = sub_1AF1A4CE8(mesh1, 0);
  v9 = sub_1AF1AE6EC(v6, v8);
  mesh0Copy = mesh0;
  v31 = sub_1AF1A4C6C(mesh0, 0, 0);
  v33 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v10, 39);
  v11 = *MEMORY[0x1E695E480];
  bytesDeallocator = *MEMORY[0x1E695E488];
  for (i = 1; i != 40; ++i)
  {
    v14 = malloc_type_malloc(12 * v9, 0x100004052888210uLL);
    if (v9 >= 1)
    {
      v15 = 0;
      v16 = i * 0.025;
      *&v16 = v16;
      v34 = vdupq_lane_s32(*&v16, 0);
      v17 = 2;
      v18 = 1;
      do
      {
        *v19.i64 = sub_1AF1AF084(v6, v15, v13);
        v35 = v19;
        *v21.i64 = sub_1AF1AF084(v7, v15, v20);
        v22 = vmlaq_f32(v35, vsubq_f32(v21, v35), v34);
        *&v14[4 * v17 - 8] = v22.i32[0];
        *&v14[4 * v17 - 4] = v22.i32[1];
        *&v14[4 * v17] = v22.i32[2];
        v15 = v18;
        v17 += 3;
      }

      while (v9 > v18++);
    }

    v24 = CFDataCreateWithBytesNoCopy(v11, v14, 12 * v9, bytesDeallocator);
    values = sub_1AF1ADBE4(v24, 0, v9, 3, 1);
    v25 = CFArrayCreate(v11, &values, 1, MEMORY[0x1E695E9C0]);
    v36 = v31;
    v26 = sub_1AF1A516C(mesh0Copy, 0);
    v27 = sub_1AF27B22C(v25, v26, &v36);
    objc_msgSend_addObject_(v33, v28, v27);
    CFRelease(v27);
    CFRelease(v25);
  }

  return v33;
}

@end