@interface SCNGeometryWrapDeformerParameters
- (SCNGeometryWrapDeformerParameters)initWithCoder:(id)coder;
- (SCNGeometryWrapDeformerParameters)initWithDrivingNode:(__n128)node deformedNode:(__n128)deformedNode bindingMode:(__n128)mode bindingTransform:(uint64_t)transform drivingNodeUVChannel:(uint64_t)channel deformedNodeUVChannel:(uint64_t)vChannel;
- (SCNGeometryWrapDeformerParameters)initWithInnerLayerNode:(__n128)node outerLayerNode:(__n128)layerNode deformedNode:(__n128)deformedNode bindingMode:(uint64_t)mode bindingTransform:(uint64_t)transform;
- (id)extraLayerMeshesWithDrivingMesh0:(__C3DMesh *)mesh0 drivingMesh1:(__C3DMesh *)mesh1;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initParametersIfNeededWithDrivingNodeRef:(__C3DNode *)ref deformedNodeRef:;
- (void)initParametersIfNeededWithInnerLayerNodeRef:(SCNGeometryWrapDeformerParameters *)self outerLayerNodeRef:(SEL)ref deformedNodeRef:(__C3DNode *)nodeRef;
@end

@implementation SCNGeometryWrapDeformerParameters

- (SCNGeometryWrapDeformerParameters)initWithDrivingNode:(__n128)node deformedNode:(__n128)deformedNode bindingMode:(__n128)mode bindingTransform:(uint64_t)transform drivingNodeUVChannel:(uint64_t)channel deformedNodeUVChannel:(uint64_t)vChannel
{
  v24.receiver = self;
  v24.super_class = SCNGeometryWrapDeformerParameters;
  v16 = [(SCNGeometryWrapDeformerParameters *)&v24 init];
  v17 = v16;
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
    +[SCNTransaction begin];
    [SCNTransaction setAnimationDuration:0.0];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __142__SCNGeometryWrapDeformerParameters_initWithDrivingNode_deformedNode_bindingMode_bindingTransform_drivingNodeUVChannel_deformedNodeUVChannel___block_invoke;
    v23[3] = &unk_2782FE3E0;
    v23[4] = v17;
    v23[5] = channel;
    v23[6] = vChannel;
    [SCNTransaction enqueueCommandForObject:vChannel immediateTransactionBlock:v23];
    +[SCNTransaction commit];
  }

  return v17;
}

uint64_t __142__SCNGeometryWrapDeformerParameters_initWithDrivingNode_deformedNode_bindingMode_bindingTransform_drivingNodeUVChannel_deformedNodeUVChannel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) nodeRef];
  v4 = [*(a1 + 48) nodeRef];

  return [v2 initParametersIfNeededWithDrivingNodeRef:v3 deformedNodeRef:v4];
}

- (SCNGeometryWrapDeformerParameters)initWithInnerLayerNode:(__n128)node outerLayerNode:(__n128)layerNode deformedNode:(__n128)deformedNode bindingMode:(uint64_t)mode bindingTransform:(uint64_t)transform
{
  v22.receiver = self;
  v22.super_class = SCNGeometryWrapDeformerParameters;
  v14 = [(SCNGeometryWrapDeformerParameters *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v14->_bindingMode = a10;
    *v14->_anon_a0 = a2;
    *&v14->_anon_a0[16] = node;
    *&v14->_anon_a0[32] = layerNode;
    *&v14->_anon_a0[48] = deformedNode;
    +[SCNTransaction begin];
    [SCNTransaction setAnimationDuration:0.0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __117__SCNGeometryWrapDeformerParameters_initWithInnerLayerNode_outerLayerNode_deformedNode_bindingMode_bindingTransform___block_invoke;
    v21[3] = &unk_2782FE408;
    v21[4] = v15;
    v21[5] = transform;
    v21[6] = a8;
    v21[7] = a9;
    [SCNTransaction enqueueCommandForObject:a9 immediateTransactionBlock:v21];
    +[SCNTransaction commit];
  }

  return v15;
}

uint64_t __117__SCNGeometryWrapDeformerParameters_initWithInnerLayerNode_outerLayerNode_deformedNode_bindingMode_bindingTransform___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) nodeRef];
  v4 = [*(a1 + 48) nodeRef];
  v5 = [*(a1 + 56) nodeRef];

  return [v2 initParametersIfNeededWithInnerLayerNodeRef:v3 outerLayerNodeRef:v4 deformedNodeRef:v5];
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
  v3.super_class = SCNGeometryWrapDeformerParameters;
  [(SCNGeometryWrapDeformerParameters *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt32:self->_vertexCount forKey:@"vertexCount"];
  [coder encodeInt32:LODWORD(self->_bindingMode) forKey:@"bindingMode"];
  [coder encodeInt32:LODWORD(self->_bindingData.pointIndicesStride) forKey:@"bindingPointIndicesStride"];
  [coder encodeInt32:LODWORD(self->_bindingData.barycentricCoordsStride) forKey:@"bindingBarycentricCoordsStride"];
  [coder encodeInt32:LODWORD(self->_bindingData.pointIndicesFormat) forKey:@"bindingPointIndicesFormat"];
  [coder encodeInt32:LODWORD(self->_bindingData.barycentricCoordsFormat) forKey:@"bindingBarycentricCoordsFormat"];
  [coder encodeBytes:self->_bindingData.pointIndices length:self->_bindingData.pointIndicesStride * self->_vertexCount forKey:@"bindingPointIndices"];
  [coder encodeBytes:self->_bindingData.barycentricCoords length:self->_bindingData.barycentricCoordsStride * self->_vertexCount forKey:@"bindingBarycentricCoords"];
  if (self->_isLegacySingleLayerDeformer)
  {
    [coder encodeBool:1 forKey:@"isLegacySingleLayerDeformer"];
    legacyOffsetsOrTransformsLength = self->_bindingData.legacyOffsetsOrTransformsLength;
    p_legacyOffsetsOrTransformsLength = &self->_bindingData.legacyOffsetsOrTransformsLength;
    [coder encodeBytes:*(p_legacyOffsetsOrTransformsLength - 1) length:legacyOffsetsOrTransformsLength forKey:@"bindingOffsetsOrTransforms"];
    v7 = @"bindingOffsetsOrTransformsLength";
  }

  else
  {
    [coder encodeBytes:self->_bindingData.innerLayerInfluences length:self->_bindingData.innerLayerInfluencesLength forKey:@"bindingInnerLayerInfluences"];
    [coder encodeInt32:LODWORD(self->_bindingData.innerLayerInfluencesLength) forKey:@"bindingInnerLayerInfluencesLength"];
    if (self->_bindingMode != 1)
    {
      return;
    }

    [coder encodeBytes:self->_bindingData.innerLayerTNBs length:self->_bindingData.tnbMatricesLength forKey:@"bindingInnerTNBs"];
    [coder encodeBytes:self->_bindingData.outerLayerTNBs length:self->_bindingData.tnbMatricesLength forKey:@"bindingOuterTNBs"];
    [coder encodeInt32:LODWORD(self->_bindingData.tnbMatricesLength) forKey:@"bindingSpaceVectorsLength"];
    offsetsLength = self->_bindingData.offsetsLength;
    p_legacyOffsetsOrTransformsLength = &self->_bindingData.offsetsLength;
    [coder encodeBytes:*(p_legacyOffsetsOrTransformsLength - 2) length:offsetsLength forKey:@"bindingInnerOffsets"];
    [coder encodeBytes:*(p_legacyOffsetsOrTransformsLength - 1) length:*p_legacyOffsetsOrTransformsLength forKey:@"bindingOuterOffsets"];
    v7 = @"bindingOffsetsLength";
  }

  v9 = *p_legacyOffsetsOrTransformsLength;

  [coder encodeInt32:v9 forKey:v7];
}

- (SCNGeometryWrapDeformerParameters)initWithCoder:(id)coder
{
  v26.receiver = self;
  v26.super_class = SCNGeometryWrapDeformerParameters;
  v4 = [(SCNGeometryWrapDeformerParameters *)&v26 init];
  if (v4)
  {
    v4->_vertexCount = [coder decodeInt32ForKey:@"vertexCount"];
    v4->_bindingMode = [coder decodeInt32ForKey:@"bindingMode"];
    v4->_bindingData.pointIndicesStride = [coder decodeInt32ForKey:@"bindingPointIndicesStride"];
    v4->_bindingData.barycentricCoordsStride = [coder decodeInt32ForKey:@"bindingBarycentricCoordsStride"];
    v4->_bindingData.pointIndicesFormat = [coder decodeIntegerForKey:@"bindingPointIndicesFormat"];
    v4->_bindingData.barycentricCoordsFormat = [coder decodeIntegerForKey:@"bindingBarycentricCoordsFormat"];
    vertexCount = v4->_vertexCount;
    v6 = v4->_bindingData.pointIndicesStride * vertexCount;
    v7 = v4->_bindingData.barycentricCoordsStride * vertexCount;
    v4->_bindingData.pointIndices = malloc_type_malloc(v6, 0x2E606E5BuLL);
    v4->_bindingData.barycentricCoords = malloc_type_malloc(v7, 0xE5BE4130uLL);
    __n = 0;
    v8 = [coder decodeBytesForKey:@"bindingPointIndices" returnedLength:&__n];
    if (__n != v6)
    {
      [SCNGeometryWrapDeformerParameters initWithCoder:];
    }

    memcpy(v4->_bindingData.pointIndices, v8, v6);
    v9 = [coder decodeBytesForKey:@"bindingBarycentricCoords" returnedLength:&__n];
    if (__n != v7)
    {
      [SCNGeometryWrapDeformerParameters initWithCoder:];
    }

    memcpy(v4->_bindingData.barycentricCoords, v9, v7);
    v10 = [coder decodeBoolForKey:@"isLegacySingleLayerDeformer"];
    v4->_isLegacySingleLayerDeformer = v10;
    if (v10)
    {
      v11 = [coder decodeInt32ForKey:@"bindingOffsetsOrTransformsLength"];
      v4->_bindingData.legacyOffsetsOrTransformsLength = v11;
      v4->_bindingData.legacyOffsetsOrTransforms = malloc_type_malloc(v11, 0x100004052888210uLL);
      __n = 0;
      v12 = [coder decodeBytesForKey:@"bindingOffsetsOrTransforms" returnedLength:&__n];
      v13 = __n;
      if (__n != v4->_bindingData.legacyOffsetsOrTransformsLength)
      {
        [SCNGeometryWrapDeformerParameters initWithCoder:];
      }

      v14 = v12;
      legacyOffsetsOrTransforms = v4->_bindingData.legacyOffsetsOrTransforms;
LABEL_14:
      memcpy(legacyOffsetsOrTransforms, v14, v13);
      return v4;
    }

    v16 = [coder decodeInt32ForKey:@"bindingInnerLayerInfluencesLength"];
    v4->_bindingData.innerLayerInfluencesLength = v16;
    v4->_bindingData.innerLayerInfluences = malloc_type_malloc(v16, 0x100004052888210uLL);
    __n = 0;
    v17 = [coder decodeBytesForKey:@"bindingInnerLayerInfluences" returnedLength:&__n];
    if (__n != v4->_bindingData.innerLayerInfluencesLength)
    {
      [SCNGeometryWrapDeformerParameters initWithCoder:];
    }

    memcpy(v4->_bindingData.innerLayerInfluences, v17, __n);
    if (v4->_bindingMode == 1)
    {
      v18 = [coder decodeInt32ForKey:@"bindingSpaceVectorsLength"];
      v4->_bindingData.tnbMatricesLength = v18;
      v4->_bindingData.innerLayerTNBs = malloc_type_malloc(v18, 0x100004052888210uLL);
      v4->_bindingData.outerLayerTNBs = malloc_type_malloc(v4->_bindingData.tnbMatricesLength, 0x100004052888210uLL);
      __n = 0;
      v19 = [coder decodeBytesForKey:@"bindingInnerTNBs" returnedLength:&__n];
      if (__n != v4->_bindingData.tnbMatricesLength)
      {
        [SCNGeometryWrapDeformerParameters initWithCoder:];
      }

      memcpy(v4->_bindingData.innerLayerTNBs, v19, __n);
      v20 = [coder decodeBytesForKey:@"bindingOuterTNBs" returnedLength:&__n];
      if (__n != v4->_bindingData.tnbMatricesLength)
      {
        [SCNGeometryWrapDeformerParameters initWithCoder:];
      }

      memcpy(v4->_bindingData.outerLayerTNBs, v20, __n);
      v21 = [coder decodeInt32ForKey:@"bindingOffsetsLength"];
      v4->_bindingData.offsetsLength = v21;
      v4->_bindingData.innerLayerOffsets = malloc_type_malloc(v21, 0x100004052888210uLL);
      v4->_bindingData.outerLayerOffsets = malloc_type_malloc(v4->_bindingData.offsetsLength, 0x100004052888210uLL);
      v22 = [coder decodeBytesForKey:@"bindingInnerOffsets" returnedLength:&__n];
      if (__n != v4->_bindingData.offsetsLength)
      {
        [SCNGeometryWrapDeformerParameters initWithCoder:];
      }

      memcpy(v4->_bindingData.innerLayerOffsets, v22, __n);
      v23 = [coder decodeBytesForKey:@"bindingOuterOffsets" returnedLength:&__n];
      v13 = __n;
      if (__n != v4->_bindingData.offsetsLength)
      {
        [SCNGeometryWrapDeformerParameters initWithCoder:];
      }

      v14 = v23;
      legacyOffsetsOrTransforms = v4->_bindingData.outerLayerOffsets;
      goto LABEL_14;
    }
  }

  return v4;
}

- (void)initParametersIfNeededWithDrivingNodeRef:(__C3DNode *)ref deformedNodeRef:
{
  if (!self->_vertexCount)
  {
    v4 = v3;
    free(self->_bindingData.pointIndices);
    free(self->_bindingData.barycentricCoords);
    free(self->_bindingData.legacyOffsetsOrTransforms);
    Geometry = C3DNodeGetGeometry(ref, v7);
    Mesh = C3DGeometryGetMesh(Geometry, v9);
    v12 = C3DNodeGetGeometry(v4, v11);
    v14 = C3DGeometryGetMesh(v12, v13);
    PositionSource = C3DMeshGetPositionSource(Mesh, 0);
    v16 = C3DMeshGetPositionSource(v14, 0);
    ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 0, 0);
    v53 = C3DMeshGetChannelForSourceWithSemanticAtIndex(v14, 0, 0);
    v55 = v16;
    Count = C3DMeshSourceGetCount(v16, v17);
    self->_vertexCount = Count;
    *&self->_bindingData.barycentricCoordsStride = xmmword_21C2A2060;
    v52 = malloc_type_malloc(4 * (Count & 0x7FFFFFFF), 0x1000040BDFB0063uLL);
    self->_bindingData.barycentricCoords = v52;
    v56 = PositionSource;
    v20 = C3DMeshSourceGetCount(PositionSource, v19) - 1;
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
    v25 = malloc_type_malloc(v24 * self->_vertexCount, 0xA3C3D017uLL);
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

    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 3, self->_legacyDrivingNodeUVChannel, 0);
    if (!SourceWithSemanticAtIndex)
    {
      v32 = scn_default_log(0, v30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [(SCNGeometryWrapDeformerParameters *)v32 initParametersIfNeededWithDrivingNodeRef:v33 deformedNodeRef:v34, v35, v36, v37, v38, v39];
      }
    }

    v41 = C3DMeshGetSourceWithSemanticAtIndex(v14, 3, self->_legacyDeformedNodeUVChannel, 0);
    if (!v41)
    {
      v42 = scn_default_log(0, v40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        [(SCNGeometryWrapDeformerParameters *)v42 initParametersIfNeededWithDrivingNodeRef:v43 deformedNodeRef:v44, v45, v46, v47, v48, v49];
      }
    }

    v50 = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 3, self->_legacyDrivingNodeUVChannel);
    v51 = C3DMeshGetChannelForSourceWithSemanticAtIndex(v14, 3, self->_legacyDeformedNodeUVChannel);
    C3DWrapDeformerComputeBindingPointIndicesAndBarycentricCoordsFromUVs(self->_bindingMode, self->_vertexCount, v14, Mesh, v55, v56, v41, SourceWithSemanticAtIndex, *self->_anon_a0, *&self->_anon_a0[16], *&self->_anon_a0[32], *&self->_anon_a0[48], v53, v51, ChannelForSourceWithSemanticAtIndex, v50, 0, v26, v27, v29, 0, v52, &self->_bindingData.legacyOffsetsOrTransforms, &self->_bindingData.legacyOffsetsOrTransformsLength);
  }
}

- (void)initParametersIfNeededWithInnerLayerNodeRef:(SCNGeometryWrapDeformerParameters *)self outerLayerNodeRef:(SEL)ref deformedNodeRef:(__C3DNode *)nodeRef
{
  if (!self->_vertexCount)
  {
    v5 = v4;
    v6 = v3;
    free(self->_bindingData.pointIndices);
    free(self->_bindingData.barycentricCoords);
    free(self->_bindingData.innerLayerInfluences);
    free(self->_bindingData.innerLayerTNBs);
    free(self->_bindingData.outerLayerTNBs);
    free(self->_bindingData.innerLayerOffsets);
    free(self->_bindingData.outerLayerOffsets);
    Geometry = C3DNodeGetGeometry(nodeRef, v9);
    Mesh = C3DGeometryGetMesh(Geometry, v11);
    v14 = C3DNodeGetGeometry(v6, v13);
    v16 = C3DGeometryGetMesh(v14, v15);
    v18 = C3DNodeGetGeometry(v5, v17);
    v20 = C3DGeometryGetMesh(v18, v19);
    PositionSource = C3DMeshGetPositionSource(Mesh, 0);
    v48 = C3DMeshGetPositionSource(v16, 0);
    v50 = v20;
    v21 = C3DMeshGetPositionSource(v20, 0);
    ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 0, 0);
    v45 = C3DMeshGetChannelForSourceWithSemanticAtIndex(v16, 0, 0);
    v47 = v21;
    Count = C3DMeshSourceGetCount(v21, v22);
    self->_vertexCount = Count;
    *&self->_bindingData.barycentricCoordsStride = xmmword_21C2A2070;
    v24 = malloc_type_malloc(8 * (Count & 0x7FFFFFFF), 0x100004052888210uLL);
    v25 = 0;
    self->_bindingData.barycentricCoords = v24;
    v26 = 1;
    do
    {
      v27 = v26 & 1;
      if (v26)
      {
        v28 = Mesh;
      }

      else
      {
        v28 = v16;
      }

      v29 = C3DMeshGetPositionSource(v28, 0);
      v31 = C3DMeshSourceGetCount(v29, v30);
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
    v38 = malloc_type_malloc(v37 * self->_vertexCount, 0x46CA9526uLL);
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
    C3DWrapDeformerComputeSharedBindingPointIndicesAndBarycentricCoordsFromSandwichedPositions(self->_bindingMode, self->_vertexCount, v50, Mesh, v16, v47, PositionSource, v48, *self->_anon_a0, *&self->_anon_a0[16], *&self->_anon_a0[32], *&self->_anon_a0[48], ChannelForSourceWithSemanticAtIndex, v45, 1, v39, v40, v42, v24, 0, v44, &self->_bindingData.innerLayerTNBs, &self->_bindingData.outerLayerTNBs, &self->_bindingData.tnbMatricesLength, &self->_bindingData.innerLayerOffsets, &self->_bindingData.outerLayerOffsets, &self->_bindingData.offsetsLength);
  }
}

- (id)extraLayerMeshesWithDrivingMesh0:(__C3DMesh *)mesh0 drivingMesh1:(__C3DMesh *)mesh1
{
  PositionSource = C3DMeshGetPositionSource(mesh0, 0);
  v7 = C3DMeshGetPositionSource(mesh1, 0);
  Count = C3DMeshSourceGetCount(PositionSource, v8);
  mesh0Copy = mesh0;
  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(mesh0, 0, 0);
  v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:39];
  v10 = *MEMORY[0x277CBECE8];
  bytesDeallocator = *MEMORY[0x277CBECF0];
  for (i = 1; i != 40; ++i)
  {
    v12 = malloc_type_malloc(12 * Count, 0x100004052888210uLL);
    if (Count >= 1)
    {
      v13 = 0;
      v14 = i * 0.025;
      *&v14 = v14;
      v30 = vdupq_lane_s32(*&v14, 0);
      v15 = 2;
      v16 = 1;
      do
      {
        *v17.i64 = C3DMeshSourceGetValueAtIndexAsVector3(PositionSource, v13);
        v31 = v17;
        *v18.i64 = C3DMeshSourceGetValueAtIndexAsVector3(v7, v13);
        v19 = vmlaq_f32(v31, vsubq_f32(v18, v31), v30);
        *&v12[4 * v15 - 8] = v19.i32[0];
        *&v12[4 * v15 - 4] = v19.i32[1];
        *&v12[4 * v15] = v19.i32[2];
        v13 = v16;
        v15 += 3;
      }

      while (Count > v16++);
    }

    v21 = CFDataCreateWithBytesNoCopy(v10, v12, 12 * Count, bytesDeallocator);
    values = C3DMeshSourceCreate(v21, 0, Count, 3, 1);
    v22 = CFArrayCreate(v10, &values, 1, MEMORY[0x277CBF128]);
    v32 = ChannelForSourceWithSemanticAtIndex;
    MeshElements = C3DMeshGetMeshElements(mesh0Copy, 0);
    v24 = C3DMeshCreateWithMeshSourcesAndMeshElements(v22, MeshElements, &v32);
    [v29 addObject:v24];
    CFRelease(v24);
    CFRelease(v22);
  }

  return v29;
}

- (void)initParametersIfNeededWithDrivingNodeRef:(uint64_t)a3 deformedNodeRef:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "driverTexcoordSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initParametersIfNeededWithDrivingNodeRef:(uint64_t)a3 deformedNodeRef:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "deformedTexcoordSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end