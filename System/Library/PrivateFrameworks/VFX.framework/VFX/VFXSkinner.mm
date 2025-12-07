@interface VFXSkinner
+ (VFXSkinner)skinnerWithBaseGeometry:(id)geometry bones:(id)bones boneInverseBindTransforms:(id)transforms boneWeights:(id)weights boneIndices:(id)indices;
+ (VFXSkinner)skinnerWithSkinnerRef:(__CFXSkinner *)ref;
+ (__CFXSkinner)_createSkinnerWithBones:(id)bones boneWeights:(id)weights boneIndices:(id)indices baseMesh:(id)mesh;
+ (__CFXSkinner)_createSkinnerWithCompressedData:(id)data bonesCount:(unint64_t)count vertexCount:(unint64_t)vertexCount;
- (BOOL)_setSkeleton:(id)skeleton;
- (NSArray)boneInverseBindTransforms;
- (NSArray)bones;
- (VFXMeshSource)boneIndices;
- (VFXMeshSource)boneWeights;
- (VFXSkinner)initWithCoder:(id)coder;
- (VFXSkinner)initWithSkinnerRef:(__CFXSkinner *)ref;
- (VFXWorld)world;
- (__CFXWorld)worldRef;
- (__n128)baseGeometryBindTransform;
- (id)baseMesh;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)setBaseGeometryBindTransform:(__n128)transform;
- (void)_setBaseGeometry:(id)geometry;
- (void)_updateModelFromPresentation;
- (void)addWorldReference:(id)reference;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block;
- (void)removeWorldReference:(id)reference;
- (void)setBoneInverseBindTransforms:(id)transforms;
- (void)setBones:(id)bones;
- (void)setSkeleton:(id)skeleton;
- (void)setWorld:(id)world;
@end

@implementation VFXSkinner

- (VFXSkinner)initWithSkinnerRef:(__CFXSkinner *)ref
{
  v9.receiver = self;
  v9.super_class = VFXSkinner;
  v4 = [(VFXSkinner *)&v9 init];
  if (v4)
  {
    v5 = CFRetain(ref);
    v4->_skinner = v5;
    if (v5)
    {
      sub_1AF16CDFC(v5, v4);
    }

    objc_msgSend__updateModelFromPresentation(v4, v6, v7);
  }

  return v4;
}

+ (VFXSkinner)skinnerWithSkinnerRef:(__CFXSkinner *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v8 = objc_msgSend_initWithSkinnerRef_(v6, v7, ref);

    return v8;
  }

  return result;
}

- (void)dealloc
{
  skinner = self->_skinner;
  if (skinner)
  {
    sub_1AF16CDFC(skinner, 0);
    v4 = self->_skinner;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1AF32CB80;
    v8[3] = &unk_1E7A7E6C0;
    v8[4] = v4;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v5, 0, v8);
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v6, v4);
  }

  objc_storeWeak(&self->_skeleton, 0);

  v7.receiver = self;
  v7.super_class = VFXSkinner;
  [(VFXSkinner *)&v7 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = sub_1AF1C8CC0(self->_skinner, a2);
  v5 = [VFXSkinner alloc];
  v7 = objc_msgSend_initWithSkinnerRef_(v5, v6, v4);
  CFRelease(v4);
  v10 = objc_msgSend_skeleton(self, v8, v9);
  objc_msgSend__setSkeleton_(v7, v11, v10);
  objc_msgSend__setBaseGeometry_(v7, v12, self->_baseGeometry);
  objc_msgSend_set_bonesAndIndicesCompression_(v7, v13, self->_bonesAndIndicesCompression);
  return v7;
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

- (void)_updateModelFromPresentation
{
  v3 = sub_1AF15B364(self->_skinner);
  if (v3)
  {
    v6 = objc_msgSend_nodeWithNodeRef_(VFXNode, v4, v3);
  }

  else
  {
    v8 = objc_msgSend_bones(self, v4, v5);
    v6 = sub_1AF32CD28(v8, v9);
    if (!v6)
    {
      return;
    }
  }

  objc_msgSend__setSkeleton_(self, v7, v6);
}

- (void)setSkeleton:(id)skeleton
{
  v5 = objc_msgSend_skeleton(self, a2, skeleton);
  if (objc_msgSend__setSkeleton_(self, v6, skeleton))
  {
    if (self->_skinner)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF32CF08;
      v8[3] = &unk_1E7A7E3B0;
      v8[4] = self;
      v8[5] = skeleton;
      v8[6] = v5;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v7, self, v8);
    }
  }
}

- (id)baseMesh
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return self->_baseGeometry;
  }

  else
  {
    return 0;
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

+ (__CFXSkinner)_createSkinnerWithBones:(id)bones boneWeights:(id)weights boneIndices:(id)indices baseMesh:(id)mesh
{
  v124 = *MEMORY[0x1E69E9840];
  v9 = objc_msgSend_count(bones, a2, bones);
  v12 = v9;
  if (v9 < 2)
  {
    v55 = objc_msgSend_meshRef(mesh, v10, v11);
    v56 = sub_1AF1C6FF8(0, v12, 0, v55);
    sub_1AF130CFC(v56, 1);
  }

  else
  {
    v13 = objc_msgSend_meshSourcesForSemantic_(mesh, v10, @"kGeometrySourceSemanticPosition");
    Object = objc_msgSend_firstObject(v13, v14, v15);
    v19 = objc_msgSend_vectorCount(Object, v17, v18);
    v22 = objc_msgSend_data(weights, v20, v21);
    v25 = objc_msgSend_length(v22, v23, v24);
    v28 = objc_msgSend_bytesPerComponent(weights, v26, v27);
    v31 = objc_msgSend_data(indices, v29, v30);
    v34 = objc_msgSend_length(v31, v32, v33);
    v37 = objc_msgSend_bytesPerComponent(indices, v35, v36);
    v40 = objc_msgSend_vectorCount(indices, v38, v39);
    v43 = objc_msgSend_vectorCount(weights, v41, v42);
    if (v40 != v43 || (v46 = v25 / v19 / v28, v34 / v19 / v37 != v46))
    {
      v59 = sub_1AF0D5194(v43, v44);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8A08();
      }

      return 0;
    }

    v47 = objc_msgSend_floatComponents(weights, v44, v45);
    if (!v47 || (v47 = objc_msgSend_bytesPerComponent(weights, v48, v49), v47 != 4))
    {
      v61 = sub_1AF0D5194(v47, v48);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8A3C();
      }

      return 0;
    }

    v51 = objc_msgSend_bytesPerComponent(indices, v48, v50);
    if (v51 >= 3)
    {
      v54 = sub_1AF0D5194(v51, v52);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8AD8();
      }

      return 0;
    }

    v62 = objc_msgSend_dataStride(indices, v52, v53);
    v65 = objc_msgSend_componentsPerVector(indices, v63, v64);
    v68 = objc_msgSend_bytesPerComponent(indices, v66, v67);
    if (v62 != v68 * v65)
    {
      v117 = sub_1AF0D5194(v68, v69);
      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8A70();
      }

      return 0;
    }

    v71 = objc_msgSend_dataStride(weights, v69, v70);
    v74 = objc_msgSend_componentsPerVector(weights, v72, v73);
    v77 = objc_msgSend_bytesPerComponent(weights, v75, v76);
    if (v71 != v77 * v74)
    {
      v118 = sub_1AF0D5194(v77, v78);
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8AA4();
      }

      return 0;
    }

    v80 = v46 * v19;
    v81 = objc_msgSend_meshRef(mesh, v78, v79);
    v56 = sub_1AF1C6FF8(v19, v12, v46 * v19, v81);
    sub_1AF130CFC(v56, v46);
    v120 = 0;
    v121 = 0;
    v119 = 0;
    sub_1AF1C78C4(v56, &v121, &v120, &v119);
    if (v121 && (v19 & 0x8000000000000000) == 0)
    {
      v84 = 0;
      v85 = vdupq_n_s64(v19);
      v86 = (v19 & 0x7FFFFFFFFFFFFFFCLL) + 4;
      v87 = xmmword_1AFE21100;
      v88 = xmmword_1AFE21110;
      v89 = (v121 + 8);
      v90 = vdupq_n_s64(4uLL);
      do
      {
        v91 = vmovn_s64(vcgeq_u64(v85, v88));
        if (vuzp1_s16(v91, *v85.i8).u8[0])
        {
          *(v89 - 2) = v84 * v46;
        }

        if (vuzp1_s16(v91, *&v85).i8[2])
        {
          *(v89 - 1) = (v84 | 1) * v46;
        }

        if (vuzp1_s16(*&v85, vmovn_s64(vcgeq_u64(v85, *&v87))).i32[1])
        {
          *v89 = (v84 | 2) * v46;
          v89[1] = (v84 | 3) * v46;
        }

        v84 += 4;
        v87 = vaddq_s64(v87, v90);
        v88 = vaddq_s64(v88, v90);
        v89 += 4;
        v86 -= 4;
      }

      while (v86);
    }

    v92 = objc_msgSend_data(indices, v82, v83);
    v95 = objc_msgSend_bytes(v92, v93, v94);
    v98 = objc_msgSend_data(indices, v96, v97);
    v101 = objc_msgSend_bytes(v98, v99, v100);
    v104 = objc_msgSend_data(weights, v102, v103);
    v107 = objc_msgSend_bytes(v104, v105, v106);
    v110 = objc_msgSend_bytesPerComponent(indices, v108, v109);
    if (v80 >= 1)
    {
      v112 = v110;
      for (i = 0; i < v80; ++i)
      {
        if (v112 == 1)
        {
          v114 = *(v95 + i);
        }

        else
        {
          v114 = *(v101 + 2 * i);
        }

        *(v120 + 2 * i) = v114;
        if (v119)
        {
          *(v119 + 4 * i) = *(v107 + 4 * i);
        }

        if (v114 < 0)
        {
          v115 = sub_1AF0D5194(v110, v111);
          v110 = os_log_type_enabled(v115, OS_LOG_TYPE_ERROR);
          if (v110)
          {
            v116 = *(v120 + 2 * i);
            *buf = 67109120;
            v123 = v116;
            _os_log_error_impl(&dword_1AF0CE000, v115, OS_LOG_TYPE_ERROR, "Error: skinner: invalid index (%d)", buf, 8u);
          }

          *(v120 + 2 * i) = -1;
        }
      }
    }

    sub_1AF1C760C(v56);
  }

  v58 = sub_1AF1C8C0C(v56, v57);
  CFRelease(v56);
  return v58;
}

+ (__CFXSkinner)_createSkinnerWithCompressedData:(id)data bonesCount:(unint64_t)count vertexCount:(unint64_t)vertexCount
{
  if (objc_msgSend_count(data, a2, data) != 3)
  {
    v29 = objc_msgSend_count(data, v8, v9);
    if (v29 != 1)
    {
      v31 = sub_1AF0D5194(v29, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF8B0C(v31, v30, v32, v33, v34, v35, v36, v37);
      }
    }

    v18 = objc_msgSend_objectAtIndexedSubscript_(data, v30, 0);
    v23 = objc_msgSend_length(v18, v38, v39);
    v10 = 0;
    v16 = 0;
    v15 = 1;
    goto LABEL_14;
  }

  v10 = objc_msgSend_objectAtIndexedSubscript_(data, v8, 0);
  v13 = objc_msgSend_length(v10, v11, v12);
  if (v13 == vertexCount)
  {
    v15 = 1;
    v16 = objc_msgSend_objectAtIndexedSubscript_(data, v14, 1);
    v18 = objc_msgSend_objectAtIndexedSubscript_(data, v17, 2);
    v23 = objc_msgSend_length(v18, v19, v20);
    if (v10)
    {
      v24 = objc_msgSend_bytes(v10, v21, v22);
      if (vertexCount)
      {
        v25 = 1;
        vertexCountCopy = vertexCount;
        do
        {
          v28 = *v24++;
          v27 = v28;
          if (v25 <= v28)
          {
            v25 = v27;
          }

          --vertexCountCopy;
        }

        while (vertexCountCopy);
        v15 = 0;
LABEL_15:
        v40 = sub_1AF1C6FF8(vertexCount, count, v23, 0);
        sub_1AF130CFC(v40, v25);
        if (count < 2)
        {
LABEL_55:
          v49 = sub_1AF1C8C0C(v40, v41);
          CFRelease(v40);
          return v49;
        }

        v79 = 0;
        v80 = 0;
        v78 = 0;
        sub_1AF1C78C4(v40, &v80, &v79, &v78);
        if (v15)
        {
          if (vertexCount)
          {
            v44 = 0;
            v45 = v80;
            vertexCountCopy2 = vertexCount;
            do
            {
              if (v44 >= v23)
              {
                v47 = v23 - 1;
              }

              else
              {
                v47 = v44;
              }

              if (v44 < v23)
              {
                ++v44;
              }

              *v45++ = v47;
              --vertexCountCopy2;
            }

            while (vertexCountCopy2);
            goto LABEL_34;
          }
        }

        else
        {
          v50 = objc_msgSend_bytes(v10, v42, v43);
          if (vertexCount)
          {
            LODWORD(v44) = 0;
            v51 = v80;
            vertexCountCopy3 = vertexCount;
            do
            {
              *v51++ = v44;
              v53 = *v50++;
              LODWORD(v44) = v44 + v53;
              --vertexCountCopy3;
            }

            while (vertexCountCopy3);
            goto LABEL_34;
          }
        }

        LODWORD(v44) = 0;
LABEL_34:
        v80[vertexCount] = v44;
        v56 = objc_msgSend_bytes(v18, v42, v43);
        if (v16)
        {
          v57 = objc_msgSend_length(v16, v54, v55);
          if (v57 / v23 == 2)
          {
            v68 = objc_msgSend_bytes(v16, v58, v59);
            if (v23 >= 1)
            {
              v70 = v78;
              v69 = v79;
              do
              {
                v71 = *v56++;
                *v69++ = v71;
                v72 = *v68++;
                *v70++ = v72 / 65535.0;
                --v23;
              }

              while (v23);
            }
          }

          else if (v57 / v23 == 1)
          {
            v60 = objc_msgSend_bytes(v16, v58, v59);
            if (v23 >= 1)
            {
              v62 = v78;
              v61 = v79;
              do
              {
                v63 = *v56++;
                *v61++ = v63;
                v64 = *v60++;
                *v62++ = v64 / 255.0;
                --v23;
              }

              while (v23);
            }
          }

          else
          {
            v73 = sub_1AF0D5194(v57, v58);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF8BB8();
            }

            if (v23 >= 1)
            {
              v75 = v78;
              v74 = v79;
              do
              {
                v76 = *v56++;
                *v74++ = v76;
                *v75++ = 1.0;
                --v23;
              }

              while (v23);
            }
          }
        }

        else if (v23 >= 1)
        {
          v66 = v78;
          v65 = v79;
          do
          {
            v67 = *v56++;
            *v65++ = v67;
            *v66++ = 1.0;
            --v23;
          }

          while (v23);
        }

        sub_1AF1C760C(v40);
        goto LABEL_55;
      }

      v15 = 0;
    }

LABEL_14:
    LOBYTE(v25) = 1;
    goto LABEL_15;
  }

  v48 = sub_1AF0D5194(v13, v14);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF8B84();
  }

  return 0;
}

+ (VFXSkinner)skinnerWithBaseGeometry:(id)geometry bones:(id)bones boneInverseBindTransforms:(id)transforms boneWeights:(id)weights boneIndices:(id)indices
{
  if (!bones || (v12 = self, (self = objc_msgSend_count(bones, a2, geometry)) == 0))
  {
    v32 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8C54();
    }

    return 0;
  }

  if (!geometry)
  {
    v33 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8C20();
    }

    return 0;
  }

  v14 = objc_msgSend_count(bones, a2, v13);
  v17 = objc_msgSend_count(transforms, v15, v16);
  if (v14 != v17)
  {
    v34 = sub_1AF0D5194(v17, v18);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8BEC();
    }

    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    SkinnerWithBones_boneWeights_boneIndices_baseMesh = objc_msgSend__createSkinnerWithBones_boneWeights_boneIndices_baseMesh_(v12, v19, bones, weights, indices, geometry);
  }

  else
  {
    SkinnerWithBones_boneWeights_boneIndices_baseMesh = objc_msgSend__createSkinnerWithBones_boneWeights_boneIndices_baseMesh_(v12, v19, bones, weights, indices, 0);
  }

  if (!SkinnerWithBones_boneWeights_boneIndices_baseMesh)
  {
    return 0;
  }

  v21 = SkinnerWithBones_boneWeights_boneIndices_baseMesh;
  v22 = [v12 alloc];
  v24 = objc_msgSend_initWithSkinnerRef_(v22, v23, v21);
  CFRelease(v21);
  objc_msgSend_setBones_(v24, v25, bones);
  objc_msgSend_setBoneInverseBindTransforms_(v24, v26, transforms);
  objc_msgSend__setBaseGeometry_(v24, v27, geometry);
  v29 = sub_1AF32CD28(bones, v28);
  objc_msgSend__setSkeleton_(v24, v30, v29);

  return v24;
}

- (__n128)baseGeometryBindTransform
{
  v4 = objc_msgSend_worldRef(self, v1, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v7 = sub_1AF15B294(self[1]);
  if (v7)
  {
    result = *sub_1AF1BA1FC(v7);
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    result = VFXMatrix4Identity;
    if (!v6)
    {
      return result;
    }
  }

  v10 = result;
  sub_1AF1CEA9C(v6, v8);
  return v10;
}

- (uint64_t)setBaseGeometryBindTransform:(__n128)transform
{
  v8 = objc_msgSend_worldRef(self, v5, v6);
  v10 = v8;
  if (v8)
  {
    sub_1AF1CEA20(v8, v9);
  }

  result = sub_1AF15B294(self[1]);
  if (result)
  {
    result = sub_1AF1C7934(result, a2, transform, a4, a5);
  }

  if (v10)
  {

    return sub_1AF1CEA9C(v10, v12);
  }

  return result;
}

- (VFXMeshSource)boneWeights
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  if (sub_1AF1C9420(self->_skinner))
  {
    v8 = 0;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_31;
  }

  v39 = v6;
  v9 = sub_1AF15B294(self->_skinner);
  v10 = sub_1AF15B294(v9);
  v11 = sub_1AF1C7EB4(v9);
  v42 = 0;
  v43 = 0;
  sub_1AF1C78C4(v9, &v42, 0, &v43);
  v38 = 4 * v10 * v11;
  v13 = malloc_type_malloc(v38, 0x100004052888210uLL);
  v41 = v10;
  if (v10 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = v42;
    v18 = v43;
    v19 = *v42;
    do
    {
      v20 = v19;
      v19 = v17[++v14];
      v21 = v15;
      v22 = v19 - v20;
      v23 = v22;
      if (v11 >= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v11;
      }

      if (v24 < 1)
      {
        v24 = 0;
        v26 = 0.0;
      }

      else
      {
        v15 += v24;
        v25 = &v13[4 * v21];
        v26 = 0.0;
        v27 = v24;
        do
        {
          v28 = *(v18 + 4 * v16);
          v26 = v26 + v28;
          ++v16;
          *v25++ = v28;
          --v27;
        }

        while (v27);
      }

      if (v11 > v24)
      {
        v40 = v15;
        v29 = v23;
        bzero(&v13[4 * v15], 4 * (v11 - v24));
        v23 = v29;
        v15 = v40 + v11 - v24;
      }

      if (v11 < v23 && v26 > 0.0 && v11 != 0)
      {
        if (v24 <= v11)
        {
          v31 = v11;
        }

        else
        {
          v31 = v24;
        }

        v32 = &v13[4 * v21 + 4 * v31];
        v33 = -v11;
        do
        {
          *&v32[4 * v33] = *&v32[4 * v33] / v26;
        }

        while (!__CFADD__(v33++, 1));
      }
    }

    while (v14 != v41);
  }

  v35 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v12, v13, v38, 1);
  v8 = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v36, v35, @"kGeometrySourceSemanticBoneWeights", v41, 1, v11, 4, 0, 0);
  v6 = v39;
  if (v39)
  {
LABEL_31:
    sub_1AF1CEA9C(v6, v7);
  }

  return v8;
}

- (VFXMeshSource)boneIndices
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  if (sub_1AF1C9420(self->_skinner))
  {
    v8 = 0;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_28;
  }

  v46 = v6;
  v9 = sub_1AF15B294(self->_skinner);
  v10 = sub_1AF1C7EB4(v9);
  v11 = sub_1AF15B294(v9);
  v47 = 0;
  v48 = 0;
  v45 = v9;
  sub_1AF1C78C4(v9, &v47, &v48, 0);
  v13 = malloc_type_malloc(2 * v10 * v11, 0x1000040BDFB0063uLL);
  if (v11 < 1)
  {
    v16 = 0;
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = v47;
    v18 = v48;
    v19 = *v47;
    do
    {
      v20 = v19;
      v19 = v17[++v14];
      v21 = v19 - v20;
      if (v10 >= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v10;
      }

      if (v22 < 1)
      {
        v22 = 0;
      }

      else
      {
        v23 = &v13[2 * v15];
        v24 = v22;
        do
        {
          v25 = *(v18 + 2 * v16++);
          *v23 = v25;
          v23 += 2;
          --v24;
        }

        while (v24);
        v15 += v22;
      }

      if (v10 > v22)
      {
        bzero(&v13[2 * v15], 2 * (v10 - v22));
        v15 = v15 + v10 - v22;
      }
    }

    while (v14 != v11);
  }

  v26 = sub_1AF1C78EC(v45, v12);
  if (v16 > v26)
  {
    v28 = sub_1AF0D5194(v26, v27);
    v26 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
    if (v26)
    {
      sub_1AFDF8C88(v28, v27, v29, v30, v31, v32, v33, v34);
    }
  }

  if (v15 != v11 * v10)
  {
    v35 = sub_1AF0D5194(v26, v27);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF8D00(v35, v27, v36, v37, v38, v39, v40, v41);
    }
  }

  v42 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v27, v13, 2 * v11 * v10, 1);
  v8 = objc_msgSend__meshSourceWithData_semantic_vectorCount_componentType_componentCount_dataOffset_dataStride_(VFXMeshSource, v43, v42, @"kGeometrySourceSemanticBoneIndices", v11, 13, v10, 0, 0);
  v6 = v46;
  if (v46)
  {
LABEL_28:
    sub_1AF1CEA9C(v6, v7);
  }

  return v8;
}

- (NSArray)boneInverseBindTransforms
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v7 = sub_1AF15B294(self->_skinner);
  v9 = v7;
  if (v7)
  {
    LODWORD(v10) = sub_1AF1C7940(v7);
    v11 = sub_1AF15B364(v9);
    v9 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v12, v10);
    if (v10 >= 1)
    {
      v10 = v10;
      v14 = (v11 + 32);
      do
      {
        v15 = objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], v8, v13, *(v14 - 4), *(v14 - 2), *v14, v14[2]);
        objc_msgSend_addObject_(v9, v16, v15);
        v14 += 8;
        --v10;
      }

      while (v10);
    }
  }

  if (v6)
  {
    sub_1AF1CEA9C(v6, v8);
  }

  return v9;
}

- (void)setBoneInverseBindTransforms:(id)transforms
{
  v5 = objc_msgSend_worldRef(self, a2, transforms);
  v7 = v5;
  if (v5)
  {
    sub_1AF1CEA20(v5, v6);
    v8 = sub_1AF15B294(self->_skinner);
    if (!v8)
    {
LABEL_10:

      sub_1AF1CEA9C(v7, v9);
      return;
    }
  }

  else
  {
    v8 = sub_1AF15B294(self->_skinner);
    if (!v8)
    {
      return;
    }
  }

  v10 = v8;
  v11 = sub_1AF1C7940(v8);
  v14 = objc_msgSend_count(transforms, v12, v13);
  if (v14 == v11)
  {
    v16 = sub_1AF15B364(v10);
    if (v11)
    {
      v18 = 0;
      v19 = (v16 + 32);
      do
      {
        v20 = objc_msgSend_objectAtIndex_(transforms, v17, v18);
        objc_msgSend_VFXMatrix4Value(v20, v21, v22);
        *(v19 - 2) = v23;
        *(v19 - 1) = v24;
        *v19 = v25;
        v19[1] = v26;
        v19 += 4;
        ++v18;
      }

      while (v11 != v18);
    }

    sub_1AF1C74EC();
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v27 = sub_1AF0D5194(v14, v15);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8D78(v11, transforms, v27);
    }
  }
}

- (NSArray)bones
{
  v4 = objc_msgSend_worldRef(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    sub_1AF1CEA20(v4, v5);
  }

  v7 = sub_1AF1C7594(self->_skinner);
  v10 = objc_msgSend_copy(v7, v8, v9);
  v13 = objc_msgSend_count(v10, v11, v12);
  v16 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v14, v13);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v18 = objc_msgSend_objectAtIndex_(v10, v15, i);
      v20 = objc_msgSend_nodeWithNodeRef_(VFXNode, v19, v18);
      objc_msgSend_addObject_(v16, v21, v20);
    }
  }

  if (v6)
  {
    sub_1AF1CEA9C(v6, v22);
  }

  return v16;
}

- (void)setBones:(id)bones
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF70];
  v6 = objc_msgSend_count(bones, a2, bones);
  v8 = objc_msgSend_arrayWithCapacity_(v5, v7, v6);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(bones, v9, &v24, v28, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(bones);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = objc_msgSend_nodeRef(v16, v11, v12);
        objc_msgSend_addObject_(v8, v18, v17);
        objc_msgSend_setIsJoint_(v16, v19, 1);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(bones, v11, &v24, v28, 16);
    }

    while (v13);
  }

  v20 = objc_msgSend_worldRef(self, v11, v12);
  if (v20)
  {
    v22 = v20;
    sub_1AF1CEA20(v20, v21);
    sub_1AF1C8DC8(self->_skinner, v8);
    sub_1AF1CEA9C(v22, v23);
  }

  else
  {
    sub_1AF1C8DC8(self->_skinner, v8);
  }
}

- (void)encodeWithCoder:(id)coder
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_skeleton(self, a2, coder);
  objc_msgSend_encodeObject_forKey_(coder, v6, v5, @"skeleton");
  v9 = objc_msgSend_baseGeometry(self, v7, v8);
  objc_msgSend_encodeObject_forKey_(coder, v10, v9, @"baseGeometry");
  objc_msgSend_baseGeometryBindTransform(self, v11, v12);
  sub_1AF371B50(coder, @"baseGeometryBindTransform", v13, v14, v15, v16);
  v19 = objc_msgSend_bones(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coder, v20, v19, @"bones");
  if (objc_msgSend_count(v19, v21, v22) >= 2)
  {
    if (self->_bonesAndIndicesCompression)
    {
      v25 = sub_1AF15B294(self->_skinner);
      v26 = sub_1AF15B294(v25);
      v28 = sub_1AF1C78EC(v25, v27);
      v29 = v28;
      v30 = sub_1AF1C7EB4(v25);
      v81 = 0;
      v82 = 0;
      v80 = 0;
      sub_1AF1C78C4(v25, &v81, &v80, &v82);
      v32 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v31, v28);
      v35 = objc_msgSend_bytes(v32, v33, v34);
      if (v28 >= 1)
      {
        v37 = v35;
        v38 = 0;
        do
        {
          v39 = v80;
          if (*(v80 + 2 * v38) >= 0x100u)
          {
            v40 = sub_1AF0D5194(v35, v36);
            v35 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
            v39 = v80;
            if (v35)
            {
              v41 = *(v80 + 2 * v38);
              *buf = 67109120;
              v84 = v41;
              _os_log_error_impl(&dword_1AF0CE000, v40, OS_LOG_TYPE_ERROR, "Error: Bones index too large for compressed representation : %d", buf, 8u);
              v39 = v80;
            }
          }

          *(v37 + v38) = *(v39 + 2 * v38);
          ++v38;
        }

        while (v29 != v38);
      }

      if (v30 <= 1)
      {
        v62 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v36, v32);
      }

      else
      {
        v48 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v36, v26);
        v51 = objc_msgSend_bytes(v48, v49, v50);
        if (v26 >= 1)
        {
          for (i = 0; i != v26; ++i)
          {
            *(v51 + i) = *(v81 + 4 * i + 4) - *(v81 + 4 * i);
          }
        }

        v54 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v52, 2 * v29);
        v57 = objc_msgSend_bytes(v54, v55, v56);
        if (v29 >= 1)
        {
          v59 = v82;
          do
          {
            v60 = *v59++;
            v61 = rintf(v60 * 65535.0);
            if (v61 >= 0xFFFF)
            {
              v61 = 0xFFFF;
            }

            *v57++ = v61 & ~(v61 >> 31);
            --v29;
          }

          while (v29);
        }

        v62 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v58, v48, v54, v32, 0);
      }

      objc_msgSend_encodeObject_forKey_(coder, v63, v62, @"compressedSkinData");
    }

    else
    {
      v42 = objc_msgSend_boneWeights(self, v23, v24);
      objc_msgSend_encodeObject_forKey_(coder, v43, v42, @"boneWeights");
      v46 = objc_msgSend_boneIndices(self, v44, v45);
      objc_msgSend_encodeObject_forKey_(coder, v47, v46, @"boneIndices");
    }
  }

  v64 = objc_msgSend_boneInverseBindTransforms(self, v23, v24);
  v67 = objc_msgSend_count(v64, v65, v66);
  if (v67)
  {
    v69 = v67;
    for (j = 0; j != v69; ++j)
    {
      v71 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v68, @"baseGeometryBindTransform-%d", j);
      v73 = objc_msgSend_objectAtIndex_(v64, v72, j);
      objc_msgSend_VFXMatrix4Value(v73, v74, v75);
      sub_1AF371B50(coder, v71, v76, v77, v78, v79);
    }
  }
}

- (VFXSkinner)initWithCoder:(id)coder
{
  v84.receiver = self;
  v84.super_class = VFXSkinner;
  v6 = [(VFXSkinner *)&v84 init];
  if (v6)
  {
    v82 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1);
    v8 = objc_opt_class();
    v81 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"skeleton");
    v11 = sub_1AF2C11F4(v81, v10);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v12, v11, @"baseGeometry");
    v14 = v13;
    if (v13)
    {
      v83 = 0;
      v15 = v13;
    }

    else
    {
      v16 = objc_opt_class();
      v18 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v17, v16, @"baseMesh");
      if (v18)
      {
        v15 = v18;
        v83 = 0;
      }

      else
      {
        v19 = objc_opt_class();
        v21 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v20, v19, @"baseModel");
        v15 = objc_msgSend_mesh(v21, v22, v23);
        v83 = 1;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v15;
      v26 = objc_msgSend_meshSourcesForSemantic_(v15, v24, @"kGeometrySourceSemanticPosition");
    }

    else
    {
      v25 = 0;
      v26 = objc_msgSend_meshSourcesForSemantic_(0, v24, @"kGeometrySourceSemanticPosition");
    }

    Object = objc_msgSend_firstObject(v26, v27, v28);
    v32 = objc_msgSend_vectorCount(Object, v30, v31);
    v33 = objc_opt_class();
    v35 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v34, v33, @"bones");
    v36 = objc_opt_class();
    v38 = objc_msgSend_vfx_decodeArrayOfObjectsOfClass_forKey_(coder, v37, v36, @"compressedSkinData");
    if (v38)
    {
      v39 = v38;
      v6->_bonesAndIndicesCompression = 1;
      v40 = objc_opt_class();
      v43 = objc_msgSend_count(v35, v41, v42);
      SkinnerWithCompressedData_bonesCount_vertexCount = objc_msgSend__createSkinnerWithCompressedData_bonesCount_vertexCount_(v40, v44, v39, v43, v32);
    }

    else
    {
      v48 = objc_opt_class();
      v50 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v49, v48, @"boneWeights");
      v51 = objc_opt_class();
      v53 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v52, v51, @"boneIndices");
      v54 = objc_opt_class();
      SkinnerWithCompressedData_bonesCount_vertexCount = objc_msgSend__createSkinnerWithBones_boneWeights_boneIndices_baseMesh_(v54, v55, v35, v50, v53, v25);
    }

    v6->_skinner = SkinnerWithCompressedData_bonesCount_vertexCount;
    if (SkinnerWithCompressedData_bonesCount_vertexCount)
    {
      v56 = objc_msgSend_array(MEMORY[0x1E695DF70], v46, v47);
      v59 = objc_msgSend_count(v35, v57, v58);
      if (v59)
      {
        v61 = v59;
        v62 = 0;
        v63 = @"baseGeometryBindTransform-%d";
        if (!v14)
        {
          v63 = @"baseMeshBindTransform-%d";
        }

        if (!v83)
        {
          v64 = v63;
          goto LABEL_20;
        }

        v64 = @"baseModelBindTransform-%d";
        for (i = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v60, @"baseModelBindTransform-%d", 0); ; i = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v60, v64, v62))
        {
          *&v66 = sub_1AF371C4C(coder, i).n128_u64[0];
          v69 = objc_msgSend_valueWithVFXMatrix4_(MEMORY[0x1E696B098], v67, v68, v66);
          objc_msgSend_addObject_(v56, v70, v69);
          if (v61 == ++v62)
          {
            break;
          }

LABEL_20:
          ;
        }
      }

      objc_msgSend__setBaseGeometry_(v6, v60, v15);
      objc_msgSend_setBones_(v6, v71, v35);
      v72 = @"baseGeometryBindTransform";
      if (!v14)
      {
        v72 = @"baseMeshBindTransform";
      }

      if (v83)
      {
        v73 = @"baseModelBindTransform";
      }

      else
      {
        v73 = v72;
      }

      *&v74 = sub_1AF371C4C(coder, v73).n128_u64[0];
      objc_msgSend_setBaseGeometryBindTransform_(v6, v75, v76, v74);
      objc_msgSend_setBoneInverseBindTransforms_(v6, v77, v56);
      objc_msgSend_setSkeleton_(v6, v78, v81);
      objc_msgSend_setImmediateMode_(VFXTransaction, v79, v82);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (void)enumerateReferencesForOperation:(int64_t)operation usingBlock:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  if (operation != 1)
  {
    v6 = objc_msgSend_skeleton(self, a2, operation);
    if (v6)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_1AF32EE00;
      v32[3] = &unk_1E7A7C0C8;
      v32[4] = self;
      (*(block + 2))(block, v6, 1, v32);
    }

    else
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x3052000000;
      v29 = sub_1AF32EE0C;
      v30 = sub_1AF32EE1C;
      v31 = 0;
      v9 = objc_msgSend_bones(self, v7, v8);
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v22, v33, 16);
      if (v13)
      {
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v9);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            if (objc_msgSend_name(v16, v11, v12))
            {
              v21[0] = MEMORY[0x1E69E9820];
              v21[1] = 3221225472;
              v21[2] = sub_1AF32EE28;
              v21[3] = &unk_1E7A7F188;
              v21[4] = v9;
              v21[5] = &v26;
              (*(block + 2))(block, v16, 1, v21);
            }
          }

          v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v22, v33, 16);
        }

        while (v13);
      }

      v17 = objc_msgSend_count(v27[5], v11, v12);
      if (v17 == objc_msgSend_count(v9, v18, v19))
      {
        objc_msgSend_setBones_(self, v20, v27[5]);
      }

      _Block_object_dispose(&v26, 8);
    }
  }
}

- (void)addWorldReference:(id)reference
{
  world = self->_world;
  if (world == reference)
  {
    v5 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, reference);
    v5 = 1;
  }

  self->_worldReferenceCounter = v5;
}

- (void)removeWorldReference:(id)reference
{
  p_world = &self->_world;
  if (!reference || self->_world == reference)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v6 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v6;
      if (!v6)
      {

        objc_msgSend_setWorld_(self, a2, 0);
      }
    }

    else
    {
      v7 = sub_1AF0D5194(self, a2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4930(self, p_world, v7);
      }
    }
  }
}

- (void)setWorld:(id)world
{
  world = self->_world;
  if (world != world)
  {
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF32F098;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF32F0F8;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 16) & 1) == 0)
  {
    return self->_world;
  }

  result = objc_msgSend_worldRef(self, a2, v2);
  if (result)
  {

    return sub_1AF16CDEC(&result->super.isa);
  }

  return result;
}

- (__CFXWorld)worldRef
{
  v3 = objc_msgSend___CFObject(self, a2, v2);

  return sub_1AF1C3FAC(v3, v4);
}

@end