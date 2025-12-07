@interface VFXMTLSkinDeformer
- (id)makeReadOnlyBuffersWithBaseGeometry:(__CFXGeometry *)geometry baseMesh:(__CFXMesh *)mesh blitEncoder:(id)encoder;
- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers;
- (void)dealloc;
- (void)setupWithComputeContext:(id)context;
@end

@implementation VFXMTLSkinDeformer

- (void)dealloc
{
  skinner = self->_skinner;
  if (skinner)
  {
    CFRelease(skinner);
    self->_skinner = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXMTLSkinDeformer;
  [(VFXMTLSkinDeformer *)&v4 dealloc];
}

- (void)setupWithComputeContext:(id)context
{
  v6 = sub_1AF170740(self->_baseGeometry);
  if (!v6)
  {
    v7 = sub_1AF0D5194(0, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE3258(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v16 = sub_1AF1A4604(v6, 0, 0, self->_dataKind);
  if (!v16)
  {
    v17 = sub_1AF0D5194(0, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE33C0(v17, v15, v18, v19, v20, v21, v22, v23);
    }
  }

  self->_baseVertexCount = sub_1AF1AE6EC(v16, v15);
  resourceManager = self->_resourceManager;
  skinner = self->_skinner;
  dataKind = self->_dataKind;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = sub_1AF1EA6A4;
  v55[3] = &unk_1E7A7C380;
  v55[4] = context;
  v55[5] = self;
  v55[6] = v6;
  v28 = objc_msgSend_renderResourceForSkinner_baseMesh_dataKind_provider_(resourceManager, v27, skinner, v6, dataKind, v55);
  v29 = v28;
  if (v28)
  {
    self->_influenceOffsetsBuffer = *(v28 + 24);
    self->_boneIndicesBuffer = *(v29 + 32);
    v30 = *(v29 + 40);
  }

  else
  {
    sub_1AFDE3924(self);
    v30 = 0;
  }

  self->_boneWeightsBuffer = v30;
  skinNormals = self->_skinNormals;
  v31 = objc_alloc_init(MEMORY[0x1E6974060]);
  objc_msgSend_setConstantValue_type_withName_(v31, v32, &skinNormals, 53, @"needNormal");
  skinTangents = self->_skinTangents;
  objc_msgSend_setConstantValue_type_withName_(v31, v33, &skinTangents, 53, @"needTangent");
  if (v29)
  {
    v35 = *(v29 + 8);
    v36 = *(v29 + 16);
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v51 = v36;
  v52 = v35;
  objc_msgSend_setConstantValue_type_withName_(v31, v34, &v52, 33, @"weight_index_size");
  objc_msgSend_setConstantValue_type_withName_(v31, v37, &v51, 33, @"bone_index_size");
  v39 = 84;
  if (!skinTangents)
  {
    v39 = 45;
  }

  v40 = 78;
  if (!skinNormals)
  {
    v40 = 45;
  }

  v41 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v38, @"Int%d_Int%d_%c%c", (8 * v52), (8 * v51), v40, v39);
  self->_useFallbackCopyKernel = v29 == 0;
  if (v29)
  {
    v44 = v41;
    v45 = @"skin_var";
  }

  else
  {
    v46 = 84;
    if (!skinTangents)
    {
      v46 = 45;
    }

    v47 = 78;
    if (!skinNormals)
    {
      v47 = 45;
    }

    v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v42, @"%c%c", v47, v46);
    v45 = @"skin_copy_as_fallback";
  }

  v48 = self->_resourceManager;
  v49 = objc_msgSend_stageInputDescriptor(context, v42, v43);
  self->_computePipeline = objc_msgSend_computePipelineStateForKernel_withStageDescriptor_stageDescriptorUpdateBlock_constants_constantsHash_(v48, v50, v45, v49, 0, v31, v44);
}

- (id)makeReadOnlyBuffersWithBaseGeometry:(__CFXGeometry *)geometry baseMesh:(__CFXMesh *)mesh blitEncoder:(id)encoder
{
  v141 = *MEMORY[0x1E69E9840];
  v9 = sub_1AF15B294(self->_skinner);
  if (!v9)
  {
    v10 = sub_1AF0D5194(0, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE9C0(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = objc_alloc_init(VFXMTLSkinDeformerReadOnlyBuffers);
  v135 = 0;
  v136 = 0;
  v134 = 0;
  sub_1AF1C78C4(v9, &v136, &v135, &v134);
  v133 = 0;
  v19 = sub_1AF1A4F94(mesh, &v133);
  v20 = sub_1AF1C7940(v9);
  v22 = v20;
  v23 = v20 - 129;
  v24 = 1;
  if ((v20 - 129) < 0xFFFFFF80)
  {
    v24 = 2;
  }

  if (v20 <= 0)
  {
    v25 = 8;
  }

  else
  {
    v25 = v24;
  }

  if (v25 >= 4)
  {
    v26 = 4;
  }

  else
  {
    v26 = v25;
  }

  if (self->_dataKind != 1 || !v19)
  {
    v131 = v26;
    v42 = sub_1AF15B294(v9);
    p_baseVertexCount = &self->_baseVertexCount;
    baseVertexCount = self->_baseVertexCount;
    if (v42 == baseVertexCount)
    {
      if (v134)
      {
        v46 = sub_1AF1C78EC(v9, v43);
        baseVertexCount = v46;
      }

      else
      {
        v46 = self->_baseVertexCount;
      }

      v128 = v46;
      v49 = v46 - 1;
      if (v46 - 1 < 0x8000)
      {
        encoderCopy = encoder;
        v53 = (*p_baseVertexCount + 1) << (v49 > 0x7F);
        v54 = malloc_type_malloc(v53, 0xBFABE935uLL);
        v55 = v54;
        v56 = v49 > 0x7F;
        if (v49 <= 0x7F)
        {
          v52 = 1;
        }

        else
        {
          v52 = 2;
        }

        if (v56)
        {
          if (v54)
          {
            v57 = v136;
            if (*p_baseVertexCount + 1 > 1)
            {
              v58 = *p_baseVertexCount + 1;
            }

            else
            {
              v58 = 1;
            }

            v59 = v54;
            do
            {
              v60 = *v57++;
              *v59++ = v60;
              --v58;
            }

            while (v58);
          }
        }

        else if (v54)
        {
          v96 = 0;
          do
          {
            *(v54 + v96) = v136[v96];
            ++v96;
          }

          while (v96 <= *p_baseVertexCount);
        }

        v97 = v53;
        encoder = encoderCopy;
        v98 = sub_1AFDE847C(self->_resourceManager, v54, v97, encoderCopy);
        if (v18)
        {
          objc_setProperty_nonatomic(v18, v99, v98, 24);
        }

        free(v55);
      }

      else
      {
        v50 = sub_1AFDE847C(self->_resourceManager, v136, 4 * (self->_baseVertexCount + 1), encoder);
        if (v18)
        {
          objc_setProperty_nonatomic(v18, v51, v50, 24);
        }

        v52 = 4;
      }

      if (v135 && v134)
      {
        if (v128)
        {
          v100 = 0;
          while (v135[v100] < v22)
          {
            if (baseVertexCount == ++v100)
            {
              goto LABEL_101;
            }
          }

          v106 = sub_1AF0D5194(v50, v135);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            v123 = v135[v100];
            *buf = 67109376;
            v138 = v123;
            v139 = 1024;
            v140 = v22;
            _os_log_error_impl(&dword_1AF0CE000, v106, OS_LOG_TYPE_ERROR, "Error: Skinning internal consistency error - out of range bone index ('%d < %d' assertion failed)", buf, 0xEu);
          }

          goto LABEL_112;
        }

LABEL_101:
        if (v22 < 1 || v23 > 0xFFFFFF7F)
        {
          v103 = malloc_type_malloc(v131 * baseVertexCount, 0x264A9974uLL);
          v104 = v103;
          if (v25 == 1)
          {
            if (v128)
            {
              v105 = 0;
              do
              {
                *(v103 + v105) = v135[v105];
                ++v105;
              }

              while (baseVertexCount != v105);
            }
          }

          else if (v128 && v22 <= 0)
          {
            v108 = v135;
            v109 = baseVertexCount;
            v110 = v103;
            do
            {
              v111 = *v108++;
              *v110++ = v111;
              --v109;
            }

            while (v109);
          }

          v112 = sub_1AFDE847C(self->_resourceManager, v103, v131 * baseVertexCount, encoder);
          if (v18)
          {
            objc_setProperty_nonatomic(v18, v113, v112, 32);
          }

          free(v104);
        }

        else
        {
          v101 = sub_1AFDE847C(self->_resourceManager, v135, v131 * baseVertexCount, encoder);
          if (v18)
          {
            objc_setProperty_nonatomic(v18, v102, v101, 32);
          }
        }
      }

      else
      {
        sub_1AFDE39C4(v131 * baseVertexCount, self, encoder, v18);
      }

      v114 = v52;
      if (v134)
      {
        v115 = sub_1AFDE847C(self->_resourceManager, v134, 4 * baseVertexCount, encoder);
        v117 = v131;
        if (!v18)
        {
          return v18;
        }

        objc_setProperty_nonatomic(v18, v116, v115, 40);
      }

      else
      {
        v118 = malloc_type_malloc(4 * baseVertexCount, 0x100004052888210uLL);
        v63 = v118;
        v117 = v131;
        if (v128)
        {
          memset_pattern16(v118, &xmmword_1AFE21160, 4 * baseVertexCount);
        }

        v119 = sub_1AFDE847C(self->_resourceManager, v63, 4 * baseVertexCount, encoder);
        if (!v18)
        {
          goto LABEL_88;
        }

        objc_setProperty_nonatomic(v18, v120, v119, 40);
        free(v63);
      }

      v18->_influenceIndexSize = v114;
      v18->_boneIndexSize = v117;
      return v18;
    }

    v47 = sub_1AF0D5194(v42, v43);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE3954();
    }

LABEL_112:

    return 0;
  }

  v28 = &self->_baseVertexCount;
  v27 = self->_baseVertexCount;
  if (v27 != v133)
  {
    v48 = sub_1AF0D5194(v20, v21);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE3A48();
    }

    goto LABEL_112;
  }

  v29 = malloc_type_malloc(4 * (v27 + 1), 0x100004052888210uLL);
  v30 = v29;
  *v29 = 0;
  encoderCopy2 = encoder;
  if (*v28)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = v136;
    do
    {
      v35 = v34[*(v19 + 4 * v32) + 1] - v34[*(v19 + 4 * v32)];
      v33 += v35;
      v31 += v35;
      v29[v32 + 1] = v31;
      v36 = *v28;
      ++v32;
    }

    while (v32 < v36);
    v37 = (v36 + 1);
    if (!((v33 - 1) >> 15))
    {
      if ((v33 - 1) <= 0x7F)
      {
        v127 = (v36 + 1);
        v121 = malloc_type_malloc(v37, 0xD4896D0AuLL);
        v39 = v121;
        v122 = 0;
        v124 = 1;
        do
        {
          *(v121 + v122) = v30[v122];
          ++v122;
        }

        while (v122 <= *v28);
      }

      else
      {
        v127 = 2 * v37;
        v38 = malloc_type_malloc(2 * v37, 0x867F1AE0uLL);
        v39 = v38;
        v40 = 0;
        if (*v28 + 1 > 1)
        {
          v41 = *v28 + 1;
        }

        else
        {
          v41 = 1;
        }

        v124 = 2;
        do
        {
          *(v38 + v40) = v30[v40];
          ++v40;
        }

        while (v41 != v40);
      }

      goto LABEL_52;
    }
  }

  else
  {
    v33 = 0;
    v37 = 1;
  }

  v127 = 4 * v37;
  v124 = 4;
  v39 = v30;
LABEL_52:
  v132 = v26;
  v125 = v33 * v26;
  v61 = malloc_type_malloc(v33 * v26, 0xA3B093A1uLL);
  v126 = 4 * v33;
  v62 = malloc_type_malloc(4 * v33, 0x100004052888210uLL);
  v63 = v62;
  if (v25 == 1)
  {
    v75 = *v28;
    v65 = v127;
    if (v75)
    {
      v76 = 0;
      do
      {
        v77 = v30[v76];
        v78 = v76 + 1;
        v79 = v30[v76 + 1] - v77;
        if (v79)
        {
          v80 = v136[*(v19 + 4 * v76)];
          do
          {
            v61[v77] = v135[v80];
            *(v62 + v77++) = *(v134 + v80++);
            --v79;
          }

          while (v79);
          v75 = *v28;
        }

        ++v76;
      }

      while (v78 < v75);
    }
  }

  else if (v25 == 2)
  {
    v64 = *v28;
    v65 = v127;
    if (v64)
    {
      v66 = 0;
      v68 = v135;
      v67 = v136;
      v69 = v134;
      v70 = *v30;
      do
      {
        v71 = v66 + 1;
        v72 = v30[v66 + 1];
        v73 = v72 - v70;
        if (v72 != v70)
        {
          v74 = v67[*(v19 + 4 * v66)];
          do
          {
            *&v61[2 * v70] = v68[v74];
            *(v62 + v70++) = v69[v74++];
            --v73;
          }

          while (v73);
        }

        v70 = v72;
        v66 = v71;
      }

      while (v71 != v64);
    }
  }

  else
  {
    v65 = v127;
    if (v22 <= 0)
    {
      v81 = *v28;
      if (v81)
      {
        v82 = 0;
        v84 = v135;
        v83 = v136;
        v85 = v134;
        do
        {
          v86 = v30[v82];
          v87 = v82 + 1;
          v88 = v30[v82 + 1] - v86;
          if (v88)
          {
            v89 = v83[*(v19 + 4 * v82)];
            do
            {
              *&v61[4 * v86] = v84[v89];
              *(v62 + v86++) = v85[v89++];
              --v88;
            }

            while (v88);
            v81 = *v28;
          }

          ++v82;
        }

        while (v87 < v81);
      }
    }
  }

  if (v18)
  {
    v18->_influenceIndexSize = v124;
    v18->_boneIndexSize = v132;
  }

  v90 = sub_1AFDE847C(self->_resourceManager, v39, v65, encoderCopy2);
  if (v18)
  {
    objc_setProperty_nonatomic(v18, v91, v90, 24);
  }

  v92 = sub_1AFDE847C(self->_resourceManager, v61, v125, encoderCopy2);
  if (v18)
  {
    objc_setProperty_nonatomic(v18, v93, v92, 32);
  }

  v94 = sub_1AFDE847C(self->_resourceManager, v63, v126, encoderCopy2);
  if (v18)
  {
    objc_setProperty_nonatomic(v18, v95, v94, 40);
  }

  if (v39 != v30)
  {
    free(v30);
  }

  free(v39);
  free(v61);
LABEL_88:
  free(v63);
  return v18;
}

- (unint64_t)updateWithComputeContext:(id)context buffers:(id *)buffers
{
  v7 = objc_msgSend_currentFrameHash(context, a2, context);
  if (self->_currentFrameHash == v7)
  {
    return 0;
  }

  self->_currentFrameHash = v7;
  v11 = objc_msgSend_currentComputeEncoder(context, v8, v9);
  objc_msgSend_resetCache(v11, v12, v13);
  if (self->_useFallbackCopyKernel)
  {
    v16 = 1;
  }

  else
  {
    objc_msgSend_setBuffer_offset_atIndex_(v11, v14, self->_influenceOffsetsBuffer, 0, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v11, v17, self->_boneIndicesBuffer, 0, 2);
    objc_msgSend_setBuffer_offset_atIndex_(v11, v18, self->_boneWeightsBuffer, 0, 3);
    v21 = objc_msgSend_currentBufferAllocatorPerFrame(context, v19, v20);
    v64[0] = 0;
    v22 = sub_1AF1C9DCC(self->_skinner, v64);
    v23 = CFXBufferAllocatorPerFrameAllocateWithBytes(v21, v22, 16 * v64[0]);
    objc_msgSend_setBufferSlice_atIndex_(v11, v24, v23, v24, 4);
    v16 = 5;
  }

  var1 = buffers->var1;
  var3 = buffers->var3;
  var5 = buffers->var5;
  v28 = objc_msgSend_length(var1, v14, v15);
  v66 = v28 / 0xC;
  if (self->_baseVertexCount != v66)
  {
    v30 = sub_1AF0D5194(v28, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE3ABC(v30, v29, v31, v32, v33, v34, v35, v36);
    }
  }

  objc_msgSend_setBytes_length_atIndex_(v11, v29, &v66, 4, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v11, v37, var1, 0, v16);
  if (self->_skinNormals)
  {
    v40 = v66;
    v41 = objc_msgSend_length(var3, v38, v39);
    if (v40 != v41 / 0xC)
    {
      v43 = sub_1AF0D5194(v41, v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE3B34(v43, v42, v44, v45, v46, v47, v48, v49);
      }
    }

    objc_msgSend_setBuffer_offset_atIndex_(v11, v42, var3, 0, v16 + 1);
  }

  if (self->_skinTangents)
  {
    v50 = v66;
    v51 = objc_msgSend_length(var5, v38, v39);
    if (v50 > v51 >> 4)
    {
      v53 = sub_1AF0D5194(v51, v52);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE3BAC(v53, v52, v54, v55, v56, v57, v58, v59);
      }
    }

    objc_msgSend_setBuffer_offset_atIndex_(v11, v52, var5, 0, v16 | 2);
  }

  objc_msgSend_setStageInputOutputBuffersToEncoder_(context, v38, v11);
  memset(v64, 0, 24);
  v64[3] = v66;
  v10 = 1;
  v65 = vdupq_n_s64(1uLL);
  objc_msgSend_setStageInRegion_(v11, v60, v64);
  v61 = sub_1AFDE323C(self->_computePipeline);
  objc_msgSend_dispatchOnVertices_vertexCount_(v11, v62, v61, v66);
  return v10;
}

@end