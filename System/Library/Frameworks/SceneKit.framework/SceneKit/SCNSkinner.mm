@interface SCNSkinner
+ (SCNSkinner)skinnerWithBaseGeometry:(SCNGeometry *)baseGeometry bones:(NSArray *)bones boneInverseBindTransforms:(NSArray *)boneInverseBindTransforms boneWeights:(SCNGeometrySource *)boneWeights boneIndices:(SCNGeometrySource *)boneIndices;
+ (SCNSkinner)skinnerWithSkinnerRef:(__C3DSkinner *)ref;
+ (__C3DSkinner)_createSkinnerWithBones:(id)bones boneWeights:(id)weights boneIndices:(id)indices baseGeometry:(id)geometry;
+ (__C3DSkinner)_createSkinnerWithCompressedData:(id)data bonesCount:(unint64_t)count vertexCount:(unint64_t)vertexCount;
+ (id)_skinnerWithBaseGeometry:(id)geometry skinnableGeometry:(id)skinnableGeometry bones:(id)bones boneInverseBindTransforms:(id)transforms bindMatrix:(SCNMatrix4 *)matrix;
- (BOOL)_setSkeleton:(id)skeleton;
- (NSArray)boneInverseBindTransforms;
- (NSArray)bones;
- (SCNGeometrySource)boneIndices;
- (SCNGeometrySource)boneWeights;
- (SCNMatrix4)baseGeometryBindTransform;
- (SCNSkinner)initWithCoder:(id)coder;
- (SCNSkinner)initWithSkinnerRef:(__C3DSkinner *)ref;
- (__C3DScene)sceneRef;
- (id)copyWithZone:(_NSZone *)zone;
- (id)scene;
- (void)_setBaseGeometry:(id)geometry;
- (void)_syncObjCModel;
- (void)boneIndices;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setBaseGeometry:(SCNGeometry *)baseGeometry;
- (void)setBaseGeometryBindTransform:(SCNMatrix4 *)baseGeometryBindTransform;
- (void)setBoneInverseBindTransforms:(id)transforms;
- (void)setBones:(id)bones;
- (void)setSkeleton:(SCNNode *)skeleton;
@end

@implementation SCNSkinner

- (SCNSkinner)initWithSkinnerRef:(__C3DSkinner *)ref
{
  v7.receiver = self;
  v7.super_class = SCNSkinner;
  v4 = [(SCNSkinner *)&v7 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_skinner = v5;
    if (v5)
    {
      C3DEntitySetObjCWrapper(v5, v4);
    }

    [(SCNSkinner *)v4 _syncObjCModel];
  }

  return v4;
}

+ (SCNSkinner)skinnerWithSkinnerRef:(__C3DSkinner *)ref
{
  result = C3DEntityGetObjCWrapper(ref);
  if (!result)
  {
    v6 = [[self alloc] initWithSkinnerRef:ref];

    return v6;
  }

  return result;
}

- (void)dealloc
{
  skinner = self->_skinner;
  if (skinner)
  {
    C3DEntitySetObjCWrapper(skinner, 0);
    v4 = self->_skinner;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __21__SCNSkinner_dealloc__block_invoke;
    v6[3] = &__block_descriptor_40_e8_v16__0d8l;
    v6[4] = v4;
    [SCNTransaction postCommandWithContext:0 object:0 applyBlock:v6];
  }

  objc_storeWeak(&self->_skeleton, 0);

  v5.receiver = self;
  v5.super_class = SCNSkinner;
  [(SCNSkinner *)&v5 dealloc];
}

void __21__SCNSkinner_dealloc__block_invoke(uint64_t a1)
{
  C3DSkinnerSetJoints(*(a1 + 32), 0);
  C3DSkinnerSetSkeleton(*(a1 + 32), 0);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

- (id)copyWithZone:(_NSZone *)zone
{
  Copy = C3DSkinnerCreateCopy(self->_skinner, a2);
  v5 = [[SCNSkinner alloc] initWithSkinnerRef:Copy];
  CFRelease(Copy);
  [(SCNSkinner *)v5 _setSkeleton:[(SCNSkinner *)self skeleton]];
  [(SCNSkinner *)v5 _setBaseGeometry:self->_baseGeometry];
  [(SCNSkinner *)v5 set_bonesAndIndicesCompression:self->_bonesAndIndicesCompression];
  return v5;
}

- (BOOL)_setSkeleton:(id)skeleton
{
  Weak = objc_loadWeak(&self->_skeleton);
  if (Weak != skeleton)
  {
    objc_storeWeak(&self->_skeleton, skeleton);
  }

  return Weak != skeleton;
}

- (void)_syncObjCModel
{
  MTLVertexFormat = C3DMeshSourceGetMTLVertexFormat(self->_skinner);
  if (MTLVertexFormat)
  {
    v4 = [SCNNode nodeWithNodeRef:MTLVertexFormat];
  }

  else
  {
    v4 = _commonAncessor_0([(SCNSkinner *)self bones]);
    if (!v4)
    {
      return;
    }
  }

  [(SCNSkinner *)self _setSkeleton:v4];
}

- (void)setSkeleton:(SCNNode *)skeleton
{
  skeleton = [(SCNSkinner *)self skeleton];
  if ([(SCNSkinner *)self _setSkeleton:skeleton])
  {
    if (self->_skinner)
    {
      sceneRef = [(SCNSkinner *)self sceneRef];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __26__SCNSkinner_setSkeleton___block_invoke;
      v7[3] = &unk_2782FC928;
      v7[4] = self;
      v7[5] = skeleton;
      v7[6] = skeleton;
      [SCNTransaction postCommandWithContext:sceneRef object:self applyBlock:v7];
    }
  }
}

void __26__SCNSkinner_setSkeleton___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) skinnerRef];
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = C3DSkinnerSkeletonNeedsRetargeting(v2, [v3 nodeRef]);
  v5 = *(a1 + 40);
  if (v4)
  {
    if (!C3DSkinnerTransposeSkeleton(v2, [v5 nodeRef]))
    {
      v6 = C3DSkinnerTransposeSkeletonUsingNodeNames(v2, [*(a1 + 40) nodeRef]);
      if (!v6)
      {
        v8 = scn_default_log(v6, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 40);
          v9 = *(a1 + 48);
          v13 = 138412546;
          v14 = v9;
          v15 = 2112;
          v16 = v10;
          _os_log_impl(&dword_21BEF7000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Failed to transpose skeleton\nold skeleton: %@\nnew skeleton: %@", &v13, 0x16u);
        }
      }
    }

    return;
  }

  if (!v5)
  {
    C3DSkinnerSetJoints(v2, 0);
LABEL_11:
    v12 = v2;
    v11 = 0;
    goto LABEL_12;
  }

  v11 = [v5 nodeRef];
  v12 = v2;
LABEL_12:

  C3DSkinnerSetSkeleton(v12, v11);
}

- (void)setBaseGeometry:(SCNGeometry *)baseGeometry
{
  v3 = scn_default_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SCNSkinner setBaseGeometry:];
  }
}

- (void)_setBaseGeometry:(id)geometry
{
  if (geometry)
  {
    baseGeometry = self->_baseGeometry;
    if (baseGeometry != geometry)
    {

      self->_baseGeometry = geometry;
    }
  }
}

+ (__C3DSkinner)_createSkinnerWithBones:(id)bones boneWeights:(id)weights boneIndices:(id)indices baseGeometry:(id)geometry
{
  v64 = *MEMORY[0x277D85DE8];
  v9 = [bones count];
  v10 = v9;
  if (v9 < 2)
  {
    v25 = C3DSkinCreateWith(0, v9, 0, [geometry __CFObject]);
    C3DSkinSetMaxInfluencesPerVertex(v25, 1);
  }

  else
  {
    v11 = [objc_msgSend(objc_msgSend(geometry geometrySourcesForSemantic:{@"kGeometrySourceSemanticVertex", "firstObject"), "vectorCount"}];
    v12 = [objc_msgSend(weights "data")];
    bytesPerComponent = [weights bytesPerComponent];
    v14 = [objc_msgSend(indices "data")];
    bytesPerComponent2 = [indices bytesPerComponent];
    vectorCount = [indices vectorCount];
    vectorCount2 = [weights vectorCount];
    if (vectorCount != vectorCount2 || (v19 = v12 / v11 / bytesPerComponent, v14 / v11 / bytesPerComponent2 != v19))
    {
      v28 = scn_default_log(vectorCount2, v18);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    floatComponents = [weights floatComponents];
    if (!floatComponents || (floatComponents = [weights bytesPerComponent], floatComponents != 4))
    {
      v30 = scn_default_log(floatComponents, v21);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    bytesPerComponent3 = [indices bytesPerComponent];
    if (bytesPerComponent3 >= 3)
    {
      v24 = scn_default_log(bytesPerComponent3, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    dataStride = [indices dataStride];
    componentsPerVector = [indices componentsPerVector];
    bytesPerComponent4 = [indices bytesPerComponent];
    if (dataStride != bytesPerComponent4 * componentsPerVector)
    {
      v57 = scn_default_log(bytesPerComponent4, v34);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    dataStride2 = [weights dataStride];
    componentsPerVector2 = [weights componentsPerVector];
    bytesPerComponent5 = [weights bytesPerComponent];
    if (dataStride2 != bytesPerComponent5 * componentsPerVector2)
    {
      v58 = scn_default_log(bytesPerComponent5, v38);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        +[SCNSkinner _createSkinnerWithBones:boneWeights:boneIndices:baseGeometry:];
      }

      return 0;
    }

    v39 = v19 * v11;
    v25 = C3DSkinCreateWith(v11, v10, v19 * v11, [geometry __CFObject]);
    C3DSkinSetMaxInfluencesPerVertex(v25, v19);
    v60 = 0;
    v61 = 0;
    v59 = 0;
    C3DSkinGetVertexWeightsPointers(v25, &v61, &v60, &v59);
    if (v61 && (v11 & 0x8000000000000000) == 0)
    {
      v40 = 0;
      v41 = vdupq_n_s64(v11);
      v42 = (v11 & 0x7FFFFFFFFFFFFFFELL) + 2;
      v43 = xmmword_21C27F640;
      v44 = (v61 + 8);
      v45 = vdupq_n_s64(2uLL);
      do
      {
        v46 = vmovn_s64(vcgeq_u64(v41, v43));
        if (v46.i8[0])
        {
          *(v44 - 1) = v40 * v19;
        }

        if (v46.i8[4])
        {
          *v44 = (v40 | 1) * v19;
        }

        v40 += 2;
        v43 = vaddq_s64(v43, v45);
        v44 += 2;
        v42 -= 2;
      }

      while (v42);
    }

    v47 = [objc_msgSend(indices "data")];
    v48 = [objc_msgSend(indices "data")];
    v49 = [objc_msgSend(weights "data")];
    bytesPerComponent6 = [indices bytesPerComponent];
    if (v39 >= 1)
    {
      v52 = bytesPerComponent6;
      for (i = 0; i < v39; ++i)
      {
        if (v52 == 1)
        {
          v54 = *(v47 + i);
        }

        else
        {
          v54 = *(v48 + 2 * i);
        }

        *(v60 + 2 * i) = v54;
        if (v59)
        {
          *(v59 + 4 * i) = *(v49 + 4 * i);
        }

        if (v54 < 0)
        {
          v55 = scn_default_log(bytesPerComponent6, v51);
          bytesPerComponent6 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
          if (bytesPerComponent6)
          {
            v56 = *(v60 + 2 * i);
            *buf = 67109120;
            v63 = v56;
            _os_log_error_impl(&dword_21BEF7000, v55, OS_LOG_TYPE_ERROR, "Error: skinner: invalid index (%d)", buf, 8u);
          }

          *(v60 + 2 * i) = -1;
        }
      }
    }

    C3DSkinPackWeightAndIndices(v25);
  }

  v27 = C3DSkinnerCreateWithSkin(v25, v26);
  CFRelease(v25);
  return v27;
}

+ (__C3DSkinner)_createSkinnerWithCompressedData:(id)data bonesCount:(unint64_t)count vertexCount:(unint64_t)vertexCount
{
  if ([data count] != 3)
  {
    v20 = [data count];
    if (v20 != 1)
    {
      v22 = scn_default_log(v20, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [(SCNSkinner *)v22 _createSkinnerWithCompressedData:v23 bonesCount:v24 vertexCount:v25, v26, v27, v28, v29];
      }
    }

    v13 = [data objectAtIndexedSubscript:0];
    v14 = [v13 length];
    v8 = 0;
    v12 = 0;
    v11 = 1;
    goto LABEL_14;
  }

  v8 = [data objectAtIndexedSubscript:0];
  v9 = [v8 length];
  if (v9 == vertexCount)
  {
    v11 = 1;
    v12 = [data objectAtIndexedSubscript:1];
    v13 = [data objectAtIndexedSubscript:2];
    v14 = [v13 length];
    if (v8)
    {
      bytes = [v8 bytes];
      if (vertexCount)
      {
        v16 = 1;
        vertexCountCopy = vertexCount;
        do
        {
          v19 = *bytes++;
          v18 = v19;
          if (v16 <= v19)
          {
            v16 = v18;
          }

          --vertexCountCopy;
        }

        while (vertexCountCopy);
        v11 = 0;
LABEL_15:
        v30 = C3DSkinCreateWith(vertexCount, count, v14, 0);
        C3DSkinSetMaxInfluencesPerVertex(v30, v16);
        if (count < 2)
        {
LABEL_55:
          v37 = C3DSkinnerCreateWithSkin(v30, v31);
          CFRelease(v30);
          return v37;
        }

        v64 = 0;
        v65 = 0;
        v63 = 0;
        C3DSkinGetVertexWeightsPointers(v30, &v65, &v64, &v63);
        if (v11)
        {
          if (vertexCount)
          {
            v32 = 0;
            v33 = v65;
            vertexCountCopy2 = vertexCount;
            do
            {
              if (v32 >= v14)
              {
                v35 = v14 - 1;
              }

              else
              {
                v35 = v32;
              }

              if (v32 < v14)
              {
                ++v32;
              }

              *v33++ = v35;
              --vertexCountCopy2;
            }

            while (vertexCountCopy2);
            goto LABEL_34;
          }
        }

        else
        {
          bytes2 = [v8 bytes];
          if (vertexCount)
          {
            v32 = 0;
            v39 = v65;
            vertexCountCopy3 = vertexCount;
            do
            {
              *v39++ = v32;
              v41 = *bytes2++;
              v32 += v41;
              --vertexCountCopy3;
            }

            while (vertexCountCopy3);
            goto LABEL_34;
          }
        }

        v32 = 0;
LABEL_34:
        v65[vertexCount] = v32;
        bytes3 = [v13 bytes];
        if (v12)
        {
          v43 = [v12 length];
          if (v43 / v14 == 2)
          {
            bytes4 = [v12 bytes];
            if (v14 >= 1)
            {
              v55 = v63;
              v54 = v64;
              do
              {
                v56 = *bytes3++;
                *v54++ = v56;
                v57 = *bytes4++;
                *v55++ = v57 / 65535.0;
                --v14;
              }

              while (v14);
            }
          }

          else if (v43 / v14 == 1)
          {
            bytes5 = [v12 bytes];
            if (v14 >= 1)
            {
              v47 = v63;
              v46 = v64;
              do
              {
                v48 = *bytes3++;
                *v46++ = v48;
                v49 = *bytes5++;
                *v47++ = v49 / 255.0;
                --v14;
              }

              while (v14);
            }
          }

          else
          {
            v58 = scn_default_log(v43, v44);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              +[SCNSkinner _createSkinnerWithCompressedData:bonesCount:vertexCount:];
            }

            if (v14 >= 1)
            {
              v60 = v63;
              v59 = v64;
              do
              {
                v61 = *bytes3++;
                *v59++ = v61;
                *v60++ = 1.0;
                --v14;
              }

              while (v14);
            }
          }
        }

        else if (v14 >= 1)
        {
          v51 = v63;
          v50 = v64;
          do
          {
            v52 = *bytes3++;
            *v50++ = v52;
            *v51++ = 1.0;
            --v14;
          }

          while (v14);
        }

        C3DSkinPackWeightAndIndices(v30);
        goto LABEL_55;
      }

      v11 = 0;
    }

LABEL_14:
    LOWORD(v16) = 1;
    goto LABEL_15;
  }

  v36 = scn_default_log(v9, v10);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    +[SCNSkinner _createSkinnerWithCompressedData:bonesCount:vertexCount:];
  }

  return 0;
}

+ (SCNSkinner)skinnerWithBaseGeometry:(SCNGeometry *)baseGeometry bones:(NSArray *)bones boneInverseBindTransforms:(NSArray *)boneInverseBindTransforms boneWeights:(SCNGeometrySource *)boneWeights boneIndices:(SCNGeometrySource *)boneIndices
{
  if (!bones || (v12 = self, (self = [(NSArray *)bones count]) == 0))
  {
    v20 = scn_default_log(self, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[SCNSkinner skinnerWithBaseGeometry:bones:boneInverseBindTransforms:boneWeights:boneIndices:];
    }

    return 0;
  }

  if (!baseGeometry)
  {
    v21 = scn_default_log(self, a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[SCNSkinner skinnerWithBaseGeometry:bones:boneInverseBindTransforms:boneWeights:boneIndices:];
    }

    return 0;
  }

  v13 = [(NSArray *)bones count];
  v14 = [(NSArray *)boneInverseBindTransforms count];
  if (v13 != v14)
  {
    v22 = scn_default_log(v14, v15);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[SCNSkinner skinnerWithBaseGeometry:bones:boneInverseBindTransforms:boneWeights:boneIndices:];
    }

    return 0;
  }

  v16 = [v12 _createSkinnerWithBones:bones boneWeights:boneWeights boneIndices:boneIndices baseGeometry:baseGeometry];
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = [[v12 alloc] initWithSkinnerRef:v16];
  CFRelease(v17);
  [v18 setBones:bones];
  [v18 setBoneInverseBindTransforms:boneInverseBindTransforms];
  [v18 _setBaseGeometry:baseGeometry];
  [v18 _setSkeleton:_commonAncessor_0(bones)];

  return v18;
}

+ (id)_skinnerWithBaseGeometry:(id)geometry skinnableGeometry:(id)skinnableGeometry bones:(id)bones boneInverseBindTransforms:(id)transforms bindMatrix:(SCNMatrix4 *)matrix
{
  geometryRef = [skinnableGeometry geometryRef];
  Mesh = C3DGeometryGetMesh(geometryRef, v13);
  result = C3DSkinCreateWithSkinnableMesh(Mesh, [bones count]);
  if (result)
  {
    v17 = result;
    v18 = C3DSkinnerCreateWithSkin(result, v16);
    CFRelease(v17);
    v19 = [[self alloc] initWithSkinnerRef:v18];
    CFRelease(v18);
    [v19 setBones:bones];
    [v19 setBoneInverseBindTransforms:transforms];
    v20 = *&matrix->m21;
    v22[0] = *&matrix->m11;
    v22[1] = v20;
    v21 = *&matrix->m41;
    v22[2] = *&matrix->m31;
    v22[3] = v21;
    [v19 setBaseGeometryBindTransform:v22];
    [v19 _setBaseGeometry:geometry];
    [v19 _setSkeleton:_commonAncessor_0(bones)];
    return v19;
  }

  return result;
}

- (SCNMatrix4)baseGeometryBindTransform
{
  *retstr = SCNMatrix4Identity;
  sceneRef = [(SCNSkinner *)self sceneRef];
  v7 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v6);
  }

  result = C3DGeometryGetOverrideMaterial(self->_skinner);
  if (result)
  {
    DefaultShapeMatrix = C3DSkinGetDefaultShapeMatrix(result);
    C3DMatrix4x4ToSCNMatrix4(DefaultShapeMatrix, retstr);
  }

  if (v7)
  {

    return C3DSceneUnlock(v7, v9);
  }

  return result;
}

- (void)setBaseGeometryBindTransform:(SCNMatrix4 *)baseGeometryBindTransform
{
  sceneRef = [(SCNSkinner *)self sceneRef];
  v7 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v6);
  }

  OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
  if (OverrideMaterial)
  {
    v10 = OverrideMaterial;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    C3DMatrix4x4FromSCNMatrix4(&v12, baseGeometryBindTransform);
    v11[0] = v12;
    v11[1] = v13;
    v11[2] = v14;
    v11[3] = v15;
    C3DSkinSetDefaultShapeMatrix(v10, v11);
  }

  if (v7)
  {
    C3DSceneUnlock(v7, v9);
  }
}

- (SCNGeometrySource)boneWeights
{
  sceneRef = [(SCNSkinner *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  if (C3DSkinnerHasOnlyOneJoint(self->_skinner))
  {
    v7 = 0;
    if (!v5)
    {
      return v7;
    }

    goto LABEL_28;
  }

  v34 = v5;
  OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
  MTLVertexFormat = C3DMeshSourceGetMTLVertexFormat(OverrideMaterial);
  MaxInfluencesPerVertex = C3DSkinGetMaxInfluencesPerVertex(OverrideMaterial);
  v40 = 0;
  v41 = 0;
  C3DSkinGetVertexWeightsPointers(OverrideMaterial, &v40, 0, &v41);
  v33 = 4 * MTLVertexFormat * MaxInfluencesPerVertex;
  v37 = malloc_type_malloc(v33, 0x100004052888210uLL);
  v39 = MTLVertexFormat;
  if (MTLVertexFormat >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v40;
    v15 = v41;
    v16 = *v40;
    v17 = 4 * (MaxInfluencesPerVertex & ~(MaxInfluencesPerVertex >> 63));
    v35 = -MaxInfluencesPerVertex;
    v36 = MaxInfluencesPerVertex;
    v18 = v37;
    v19 = &v37[v17 / 4];
    do
    {
      v20 = v16;
      v16 = v14[++v11];
      v21 = v16 - v20;
      if (v16 - v20 >= MaxInfluencesPerVertex)
      {
        v22 = MaxInfluencesPerVertex;
      }

      else
      {
        v22 = v16 - v20;
      }

      if (v22 < 1)
      {
        v22 = 0;
        v23 = 0.0;
      }

      else
      {
        v12 += v22;
        v23 = 0.0;
        v24 = v18;
        v25 = v22;
        do
        {
          v26 = *(v15 + 4 * v13);
          v23 = v23 + v26;
          ++v13;
          *v24++ = v26;
          --v25;
        }

        while (v25);
      }

      if (MaxInfluencesPerVertex > v22)
      {
        v27 = 4 * (MaxInfluencesPerVertex - v22);
        v38 = v12;
        v28 = v11;
        bzero(&v37[v12], v27);
        v11 = v28;
        MaxInfluencesPerVertex = v36;
        v12 = v38 + v36 - v22;
      }

      if (v21 > MaxInfluencesPerVertex && v23 > 0.0 && MaxInfluencesPerVertex >= 1)
      {
        v30 = v35;
        do
        {
          *&v19[4 * v30] = *&v19[4 * v30] / v23;
        }

        while (!__CFADD__(v30++, 1));
      }

      v18 = (v18 + v17);
      v19 += v17;
    }

    while (v11 != v39);
  }

  v7 = +[SCNGeometrySource geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:](SCNGeometrySource, "geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:", [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v37 length:v33 freeWhenDone:1], @"kGeometrySourceSemanticBoneWeights", v39, 1, MaxInfluencesPerVertex, 4, 0, 0);
  v5 = v34;
  if (v34)
  {
LABEL_28:
    C3DSceneUnlock(v5, v6);
  }

  return v7;
}

- (SCNGeometrySource)boneIndices
{
  sceneRef = [(SCNSkinner *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  if (C3DSkinnerHasOnlyOneJoint(self->_skinner))
  {
    v7 = 0;
    if (!v5)
    {
      return v7;
    }

    goto LABEL_28;
  }

  v45 = v5;
  OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
  MaxInfluencesPerVertex = C3DSkinGetMaxInfluencesPerVertex(OverrideMaterial);
  MTLVertexFormat = C3DMeshSourceGetMTLVertexFormat(OverrideMaterial);
  v48 = 0;
  v49 = 0;
  v44 = OverrideMaterial;
  C3DSkinGetVertexWeightsPointers(OverrideMaterial, &v48, &v49, 0);
  v11 = malloc_type_malloc(2 * MaxInfluencesPerVertex * MTLVertexFormat, 0x1000040BDFB0063uLL);
  v46 = v11;
  v47 = MTLVertexFormat;
  if (MTLVertexFormat < 1)
  {
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v48;
    v17 = v49;
    v18 = *v48;
    v19 = v11;
    do
    {
      v20 = v18;
      v18 = v16[++v13];
      v21 = v18 - v20;
      if (v21 >= MaxInfluencesPerVertex)
      {
        v22 = MaxInfluencesPerVertex;
      }

      else
      {
        v22 = v21;
      }

      if (v22 < 1)
      {
        v22 = 0;
      }

      else
      {
        v14 += v22;
        v23 = v19;
        v24 = v22;
        do
        {
          v25 = *(v17 + 2 * v15++);
          *v23 = v25;
          v23 += 2;
          --v24;
        }

        while (v24);
      }

      if (MaxInfluencesPerVertex > v22)
      {
        bzero(&v46[2 * v14], 2 * (MaxInfluencesPerVertex - v22));
        v14 = v14 + MaxInfluencesPerVertex - v22;
      }

      v19 += 2 * (MaxInfluencesPerVertex & ~(MaxInfluencesPerVertex >> 63));
    }

    while (v13 != v47);
  }

  WeightsCount = C3DSkinGetWeightsCount(v44, v12);
  if (v15 > WeightsCount)
  {
    v28 = scn_default_log(WeightsCount, v27);
    WeightsCount = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
    if (WeightsCount)
    {
      [(SCNSkinner *)v28 boneIndices:v27];
    }
  }

  if (v14 != v47 * MaxInfluencesPerVertex)
  {
    v35 = scn_default_log(WeightsCount, v27);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      [(SCNSkinner *)v35 boneIndices:v36];
    }
  }

  v7 = +[SCNGeometrySource _geometrySourceWithData:semantic:vectorCount:componentType:componentCount:dataOffset:dataStride:](SCNGeometrySource, "_geometrySourceWithData:semantic:vectorCount:componentType:componentCount:dataOffset:dataStride:", [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v46 length:2 * v47 * MaxInfluencesPerVertex freeWhenDone:1], @"kGeometrySourceSemanticBoneIndices", v47, 14, MaxInfluencesPerVertex, 0, 0);
  v5 = v45;
  if (v45)
  {
LABEL_28:
    C3DSceneUnlock(v5, v6);
  }

  return v7;
}

- (NSArray)boneInverseBindTransforms
{
  sceneRef = [(SCNSkinner *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
  v8 = OverrideMaterial;
  if (OverrideMaterial)
  {
    LODWORD(v9) = C3DSkinGetJointsCount(OverrideMaterial);
    InverseBindMatricesPtr = C3DSkinGetInverseBindMatricesPtr(v8);
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
    if (v9 >= 1)
    {
      v9 = v9;
      do
      {
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        C3DMatrix4x4ToSCNMatrix4(InverseBindMatricesPtr, &v13);
        v12[0] = v13;
        v12[1] = v14;
        v12[2] = v15;
        v12[3] = v16;
        -[NSArray addObject:](v8, "addObject:", [MEMORY[0x277CCAE60] valueWithSCNMatrix4:v12]);
        InverseBindMatricesPtr += 64;
        --v9;
      }

      while (v9);
    }
  }

  if (v5)
  {
    C3DSceneUnlock(v5, v7);
  }

  return v8;
}

- (void)setBoneInverseBindTransforms:(id)transforms
{
  sceneRef = [(SCNSkinner *)self sceneRef];
  v7 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v6);
    OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
    if (!OverrideMaterial)
    {
LABEL_13:
      C3DSceneUnlock(v7, v9);
      return;
    }
  }

  else
  {
    OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
    if (!OverrideMaterial)
    {
      return;
    }
  }

  v10 = OverrideMaterial;
  JointsCount = C3DSkinGetJointsCount(OverrideMaterial);
  v12 = [transforms count];
  if (v12 == JointsCount)
  {
    InverseBindMatricesPtr = C3DSkinGetInverseBindMatricesPtr(v10);
    if (JointsCount)
    {
      v15 = InverseBindMatricesPtr;
      for (i = 0; i != JointsCount; ++i)
      {
        v17 = [transforms objectAtIndex:{i, 0, 0, 0, 0, 0, 0, 0, 0}];
        if (v17)
        {
          objc_msgSend_SCNMatrix4Value(v17);
        }

        else
        {
          memset(v19, 0, sizeof(v19));
        }

        C3DMatrix4x4FromSCNMatrix4(v15, v19);
        v15 += 4;
      }
    }

    C3DSkinInverseBindMatricesHaveChanged(v10);
    if (v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = scn_default_log(v12, v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(SCNSkinner *)JointsCount setBoneInverseBindTransforms:transforms, v18];
    }
  }
}

- (NSArray)bones
{
  sceneRef = [(SCNSkinner *)self sceneRef];
  v5 = sceneRef;
  if (sceneRef)
  {
    C3DSceneLock(sceneRef, v4);
  }

  v6 = [C3DSkinnerGetJoints(self->_skinner) copy];
  v7 = [v6 count];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      -[NSArray addObject:](v8, "addObject:", +[SCNNode nodeWithNodeRef:](SCNNode, "nodeWithNodeRef:", [v6 objectAtIndex:i]));
    }
  }

  if (v5)
  {
    C3DSceneUnlock(v5, v10);
  }

  return v8;
}

- (void)setBones:(id)bones
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(bones, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [bones countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(bones);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        [v5 addObject:{objc_msgSend(v10, "nodeRef")}];
        [v10 setIsJoint:1];
      }

      v7 = [bones countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  sceneRef = [(SCNSkinner *)self sceneRef];
  if (sceneRef)
  {
    v13 = sceneRef;
    C3DSceneLock(sceneRef, v12);
    C3DSkinnerSetJoints(self->_skinner, v5);
    C3DSceneUnlock(v13, v14);
  }

  else
  {
    C3DSkinnerSetJoints(self->_skinner, v5);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v44 = *MEMORY[0x277D85DE8];
  [coder encodeObject:-[SCNSkinner skeleton](self forKey:{"skeleton"), @"skeleton"}];
  [coder encodeObject:-[SCNSkinner baseGeometry](self forKey:{"baseGeometry"), @"baseGeometry"}];
  if (self)
  {
    objc_msgSend_baseGeometryBindTransform(self);
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
  }

  SCNEncodeSCNMatrix4(coder, @"baseGeometryBindTransform", &v38);
  bones = [(SCNSkinner *)self bones];
  [coder encodeObject:bones forKey:@"bones"];
  if ([(NSArray *)bones count]>= 2)
  {
    if (self->_bonesAndIndicesCompression)
    {
      OverrideMaterial = C3DGeometryGetOverrideMaterial(self->_skinner);
      MTLVertexFormat = C3DMeshSourceGetMTLVertexFormat(OverrideMaterial);
      WeightsCount = C3DSkinGetWeightsCount(OverrideMaterial, v8);
      MaxInfluencesPerVertex = C3DSkinGetMaxInfluencesPerVertex(OverrideMaterial);
      v37 = 0;
      *&v38 = 0;
      v36 = 0;
      C3DSkinGetVertexWeightsPointers(OverrideMaterial, &v37, &v36, &v38);
      v11 = [MEMORY[0x277CBEB28] dataWithLength:WeightsCount];
      bytes = [v11 bytes];
      if (WeightsCount >= 1)
      {
        v14 = bytes;
        for (i = 0; i != WeightsCount; ++i)
        {
          v16 = v36;
          if (*(v36 + 2 * i) >= 0x100u)
          {
            v17 = scn_default_log(bytes, v13);
            bytes = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
            v16 = v36;
            if (bytes)
            {
              v18 = *(v36 + 2 * i);
              *buf = 67109120;
              v43 = v18;
              _os_log_error_impl(&dword_21BEF7000, v17, OS_LOG_TYPE_ERROR, "Error: Bones index too large for compressed representation : %d", buf, 8u);
              v16 = v36;
            }
          }

          *(v14 + i) = *(v16 + 2 * i);
        }
      }

      if (MaxInfluencesPerVertex <= 1)
      {
        v29 = [MEMORY[0x277CBEA60] arrayWithObject:v11];
      }

      else
      {
        v21 = [MEMORY[0x277CBEB28] dataWithLength:MTLVertexFormat];
        bytes2 = [v21 bytes];
        if (MTLVertexFormat >= 1)
        {
          for (j = 0; j != MTLVertexFormat; ++j)
          {
            *(bytes2 + j) = *(v37 + 8 * j + 8) - *(v37 + 8 * j);
          }
        }

        weightsCount = [MEMORY[0x277CBEB28] dataWithLength:2 * WeightsCount];
        bytes3 = [weightsCount bytes];
        if (WeightsCount >= 1)
        {
          v26 = v38;
          do
          {
            v27 = *v26++;
            v28 = rintf(v27 * 65535.0);
            if (v28 >= 0xFFFF)
            {
              v28 = 0xFFFF;
            }

            *bytes3++ = v28 & ~(v28 >> 31);
            --WeightsCount;
          }

          while (WeightsCount);
        }

        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:{v21, weightsCount, v11, 0}];
      }

      boneIndices = v29;
      v20 = @"compressedSkinData";
    }

    else
    {
      [coder encodeObject:-[SCNSkinner boneWeights](self forKey:{"boneWeights"), @"boneWeights"}];
      boneIndices = [(SCNSkinner *)self boneIndices];
      v20 = @"boneIndices";
    }

    [coder encodeObject:boneIndices forKey:v20];
  }

  boneInverseBindTransforms = [(SCNSkinner *)self boneInverseBindTransforms];
  v31 = [(NSArray *)boneInverseBindTransforms count];
  if (v31)
  {
    v32 = v31;
    for (k = 0; k != v32; ++k)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"baseGeometryBindTransform-%d", k];
      v35 = [(NSArray *)boneInverseBindTransforms objectAtIndex:k];
      if (v35)
      {
        objc_msgSend_SCNMatrix4Value(v35);
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
      }

      SCNEncodeSCNMatrix4(coder, v34, &v38);
    }
  }
}

- (SCNSkinner)initWithCoder:(id)coder
{
  v25.receiver = self;
  v25.super_class = SCNSkinner;
  v4 = [(SCNSkinner *)&v25 init];
  if (v4)
  {
    v5 = +[SCNTransaction immediateMode];
    [SCNTransaction setImmediateMode:1];
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"skeleton"];
    v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"baseGeometry"];
    v8 = [objc_msgSend(objc_msgSend(v7 geometrySourcesForSemantic:{@"kGeometrySourceSemanticVertex", "firstObject"), "vectorCount"}];
    v9 = [coder scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"bones"];
    v10 = [coder scn_decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"compressedSkinData"];
    if (v10)
    {
      v4->_bonesAndIndicesCompression = 1;
      v11 = [objc_opt_class() _createSkinnerWithCompressedData:v10 bonesCount:objc_msgSend(v9 vertexCount:{"count"), v8}];
    }

    else
    {
      v12 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"boneWeights"];
      v13 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"boneIndices"];
      v11 = [objc_opt_class() _createSkinnerWithBones:v9 boneWeights:v12 boneIndices:v13 baseGeometry:v7];
    }

    v4->_skinner = v11;
    if (v11)
    {
      array = [MEMORY[0x277CBEB18] array];
      v15 = [v9 count];
      if (v15)
      {
        v16 = v15;
        for (i = 0; i != v16; ++i)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          SCNDecodeSCNMatrix4(coder, [MEMORY[0x277CCACA8] stringWithFormat:@"baseGeometryBindTransform-%d", i], &v21);
          v20[0] = v21;
          v20[1] = v22;
          v20[2] = v23;
          v20[3] = v24;
          [array addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithSCNMatrix4:", v20)}];
        }
      }

      [(SCNSkinner *)v4 _setBaseGeometry:v7];
      [(SCNSkinner *)v4 setBones:v9];
      SCNDecodeSCNMatrix4(coder, @"baseGeometryBindTransform", v19);
      v21 = v19[0];
      v22 = v19[1];
      v23 = v19[2];
      v24 = v19[3];
      [(SCNSkinner *)v4 setBaseGeometryBindTransform:&v21];
      [(SCNSkinner *)v4 setBoneInverseBindTransforms:array];
      [(SCNSkinner *)v4 setSkeleton:v6];
      [SCNTransaction setImmediateMode:v5];
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (__C3DScene)sceneRef
{
  __CFObject = [(SCNSkinner *)self __CFObject];

  return C3DGetScene(__CFObject, v3);
}

- (id)scene
{
  result = [(SCNSkinner *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

+ (void)_createSkinnerWithCompressedData:(uint64_t)a3 bonesCount:(uint64_t)a4 vertexCount:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "skinCompressedData.count == 1";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. skinner: invalid compressed data", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)boneIndices
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "w == numberOfInfluence * vertexCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, self, a3, "Assertion '%s' failed. boneIndices - failed to deindex (2)", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setBoneInverseBindTransforms:(NSObject *)a3 .cold.1(__int16 a1, void *a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = [a2 count];
  _os_log_error_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_ERROR, "Error: number of transforms (%d) doesn't match the number of joints (%d)", v4, 0xEu);
}

@end