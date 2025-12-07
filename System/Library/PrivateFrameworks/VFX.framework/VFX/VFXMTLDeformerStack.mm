@interface VFXMTLDeformerStack
- (Class)deformerClassForMeshlesshGeometry:(__CFXGeometry *)geometry;
- (MTLBlitCommandEncoder)currentBlitEncoder;
- (RGCachedComputeCommandEncoder)currentComputeEncoder;
- (__n128)_currentFrustumInfo;
- (__n128)currentTransforms;
- (id)deindexedToFirstDeindexedTableBufferWithBlitEncoder:(id)encoder indexSizeOut:(unint64_t *)out;
- (id)deindexedToOriginalTableBufferWithBlitEncoder:(id)encoder indexSizeOut:(unint64_t *)out;
- (id)dependencyBufferForInput:(unint64_t)input dependencyMesh:(id)mesh;
- (id)dependencyBufferForInput:(unint64_t)input dependencyStack:(id)stack;
- (id)newBufferForDataKind:(unsigned __int8)kind meshSource:(__CFXMeshSource *)source dataType:(signed __int16)type forStageInputOutputDescriptor:(BOOL)descriptor usePrivateStorageMode:(BOOL)mode outStride:(unint64_t *)stride;
- (id)newBufferForDataKind:(unsigned __int8)kind positionSource:(__CFXMeshSource *)source normalSource:(__CFXMeshSource *)normalSource positionDataType:(signed __int16)type normalDataType:(signed __int16)dataType forStageInputOutputDescriptor:(BOOL)descriptor usePrivateStorageMode:(BOOL)mode outStride:(unint64_t *)self0 outPositionOffset:(unint64_t *)self1 outNormalOffset:(unint64_t *)self2;
- (id)originalToFirstDeindexedTableBufferWithBlitEncoder:(id)encoder indexSizeOut:(unint64_t *)out;
- (unint64_t)currentFrameHash;
- (void)dealloc;
- (void)encodeCommandsInNewCommandBufferUsingBlock:(id)block;
- (void)enumerateInternalDeformersUsingBlock:(id)block;
- (void)reconfigureIfNeededWithContext:(id)context programHashCodeRequirements:(id)requirements;
- (void)setStageInputOutputBuffersToEncoder:(id)encoder;
- (void)setupFinalMeshFromBaseMeshWithInfo:(id)info;
- (void)setupFinalMeshFromMeshlessBaseGeometryWithInfo:(id)info;
- (void)setupInitialBuffersWithBasePositionSourceProvider:(id)provider baseNormalSourceProvider:(id)sourceProvider baseTangentSourceProvider:(id)tangentSourceProvider info:(id)info;
- (void)updateDependencyBuffersInBufferArray:(id *)array forDeformer:(id)deformer;
@end

@implementation VFXMTLDeformerStack

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLDeformerStack;
  [(VFXMTLDeformerStack *)&v3 dealloc];
}

- (Class)deformerClassForMeshlesshGeometry:(__CFXGeometry *)geometry
{
  v3 = CFGetTypeID(geometry);
  v5 = sub_1AF15B134(v3, v4);
  if (v3 == v5)
  {

    return objc_opt_class();
  }

  else
  {
    v8 = sub_1AF0D5194(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE28F4();
    }

    return 0;
  }
}

- (void)enumerateInternalDeformersUsingBlock:(id)block
{
  if (self->_morphDeformer)
  {
    (*(block + 2))(block);
  }

  if (self->_skinDeformer)
  {
    (*(block + 2))(block);
  }

  if (self->_meshlessDeformer)
  {
    (*(block + 2))(block);
  }

  if (self->_smoothNormalsDeformer)
  {
    v5 = *(block + 2);

    v5(block);
  }
}

- (void)setupInitialBuffersWithBasePositionSourceProvider:(id)provider baseNormalSourceProvider:(id)sourceProvider baseTangentSourceProvider:(id)tangentSourceProvider info:(id)info
{
  v6 = *&info.var0;
  initialPositionBuffer = self->_initialPositionBuffer;
  if (initialPositionBuffer)
  {
    CFRelease(initialPositionBuffer);
    self->_initialPositionBuffer = 0;
  }

  initialNormalBuffer = self->_initialNormalBuffer;
  if (initialNormalBuffer)
  {
    CFRelease(initialNormalBuffer);
    self->_initialNormalBuffer = 0;
  }

  initialTangentBuffer = self->_initialTangentBuffer;
  if (initialTangentBuffer)
  {
    CFRelease(initialTangentBuffer);
    self->_initialTangentBuffer = 0;
  }

  initialBuffersStageInputDescriptor = self->_initialBuffersStageInputDescriptor;
  if (initialBuffersStageInputDescriptor)
  {
    CFRelease(initialBuffersStageInputDescriptor);
    self->_initialBuffersStageInputDescriptor = 0;
  }

  self->_initialPositionStageInputOutputDescriptorInfo.isActive = 0;
  self->_initialNormalStageInputOutputDescriptorInfo.isActive = 0;
  self->_initialTangentStageInputOutputDescriptorInfo.isActive = 0;
  if ((v6 & 0x100010001) != 0)
  {
    self->_initialBuffersStageInputDescriptor = objc_alloc_init(MEMORY[0x1E6974188]);
    v15 = (*(provider + 2))(provider, self->_deformDataKind);
    v19 = sub_1AF1AE6EC(v15, v16);
    if (v6)
    {
      v20 = objc_msgSend_attributes(self->_initialBuffersStageInputDescriptor, v17, v18);
      v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0);
      objc_msgSend_setFormat_(v22, v23, 30);
      objc_msgSend_setOffset_(v22, v24, 0);
      objc_msgSend_setBufferIndex_(v22, v25, 10);
      v28 = objc_msgSend_layouts(self->_initialBuffersStageInputDescriptor, v26, v27);
      v31 = objc_msgSend_bufferIndex(v22, v29, v30);
      v33 = objc_msgSend_objectAtIndexedSubscript_(v28, v32, v31);
      objc_msgSend_setStepFunction_(v33, v34, 5);
      if ((v6 & 0x100) != 0)
      {
        v123 = 0;
        self->_initialPositionBuffer = objc_msgSend_newBufferForDataKind_meshSource_dataType_forStageInputOutputDescriptor_usePrivateStorageMode_outStride_(self, v35, self->_deformDataKind, v15, 8, 1, 1, &v123);
        objc_msgSend_setStride_(v33, v41, v123);
      }

      else
      {
        v36 = sub_1AF1F1A7C(30);
        sub_1AFDE851C(self->_resourceManager, v19 * v36, 32);
        self->_initialPositionBuffer = v37;
        objc_msgSend_setStride_(v33, v38, v36);
      }

      v42 = objc_msgSend_format(v22, v39, v40);
      v45 = objc_msgSend_offset(v22, v43, v44);
      v48 = objc_msgSend_stride(v33, v46, v47);
      self->_initialPositionStageInputOutputDescriptorInfo.isActive = 1;
      self->_initialPositionStageInputOutputDescriptorInfo.bufferAttributeFormat = v42;
      self->_initialPositionStageInputOutputDescriptorInfo.bufferAttributeOffset = v45;
      self->_initialPositionStageInputOutputDescriptorInfo.bufferLayoutStride = v48;
      if ((v6 & 0x10000) == 0)
      {
LABEL_12:
        if ((v6 & 0x100000000) == 0)
        {
          return;
        }

        goto LABEL_25;
      }
    }

    else if ((v6 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    v49 = objc_msgSend_attributes(self->_initialBuffersStageInputDescriptor, v17, v18);
    v51 = objc_msgSend_objectAtIndexedSubscript_(v49, v50, 1);
    objc_msgSend_setFormat_(v51, v52, 30);
    objc_msgSend_setOffset_(v51, v53, 0);
    objc_msgSend_setBufferIndex_(v51, v54, 11);
    v57 = objc_msgSend_layouts(self->_initialBuffersStageInputDescriptor, v55, v56);
    v60 = objc_msgSend_bufferIndex(v51, v58, v59);
    v62 = objc_msgSend_objectAtIndexedSubscript_(v57, v61, v60);
    objc_msgSend_setStepFunction_(v62, v63, 5);
    if ((v6 & 0x1000000) != 0)
    {
      v70 = (*(sourceProvider + 2))(sourceProvider, self->_deformDataKind);
      if (!v70)
      {
        v71 = sub_1AF0D5194(0, v69);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE2928(v71, v69, v72, v73, v74, v75, v76, v77);
        }
      }

      v123 = 0;
      self->_initialNormalBuffer = objc_msgSend_newBufferForDataKind_meshSource_dataType_forStageInputOutputDescriptor_usePrivateStorageMode_outStride_(self, v69, self->_deformDataKind, v70, 8, 1, 1, &v123);
      objc_msgSend_setStride_(v62, v78, v123);
    }

    else
    {
      v64 = sub_1AF1F1A7C(30);
      sub_1AFDE851C(self->_resourceManager, v19 * v64, 32);
      self->_initialNormalBuffer = v65;
      objc_msgSend_setStride_(v62, v66, v64);
    }

    v79 = objc_msgSend_format(v51, v67, v68);
    v82 = objc_msgSend_offset(v51, v80, v81);
    v85 = objc_msgSend_stride(v62, v83, v84);
    self->_initialNormalStageInputOutputDescriptorInfo.isActive = 1;
    self->_initialNormalStageInputOutputDescriptorInfo.bufferAttributeFormat = v79;
    self->_initialNormalStageInputOutputDescriptorInfo.bufferAttributeOffset = v82;
    self->_initialNormalStageInputOutputDescriptorInfo.bufferLayoutStride = v85;
    if ((v6 & 0x100000000) != 0)
    {
LABEL_25:
      v86 = objc_msgSend_attributes(self->_initialBuffersStageInputDescriptor, v17, v18);
      v88 = objc_msgSend_objectAtIndexedSubscript_(v86, v87, 2);
      objc_msgSend_setFormat_(v88, v89, 31);
      objc_msgSend_setOffset_(v88, v90, 0);
      objc_msgSend_setBufferIndex_(v88, v91, 12);
      v94 = objc_msgSend_layouts(self->_initialBuffersStageInputDescriptor, v92, v93);
      v97 = objc_msgSend_bufferIndex(v88, v95, v96);
      v99 = objc_msgSend_objectAtIndexedSubscript_(v94, v98, v97);
      objc_msgSend_setStepFunction_(v99, v100, 5);
      if ((v6 & 0x10000000000) != 0)
      {
        v107 = (*(tangentSourceProvider + 2))(tangentSourceProvider, self->_deformDataKind);
        if (!v107)
        {
          v108 = sub_1AF0D5194(0, v106);
          if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE29A0(v108, v106, v109, v110, v111, v112, v113, v114);
          }
        }

        v123 = 0;
        self->_initialTangentBuffer = objc_msgSend_newBufferForDataKind_meshSource_dataType_forStageInputOutputDescriptor_usePrivateStorageMode_outStride_(self, v106, self->_deformDataKind, v107, 9, 1, 1, &v123);
        objc_msgSend_setStride_(v99, v115, v123);
      }

      else
      {
        v101 = sub_1AF1F1A7C(31);
        sub_1AFDE851C(self->_resourceManager, v19 * v101, 32);
        self->_initialTangentBuffer = v102;
        objc_msgSend_setStride_(v99, v103, v101);
      }

      v116 = objc_msgSend_format(v88, v104, v105);
      v119 = objc_msgSend_offset(v88, v117, v118);
      v122 = objc_msgSend_stride(v99, v120, v121);
      self->_initialTangentStageInputOutputDescriptorInfo.isActive = 1;
      self->_initialTangentStageInputOutputDescriptorInfo.bufferAttributeFormat = v116;
      self->_initialTangentStageInputOutputDescriptorInfo.bufferAttributeOffset = v119;
      self->_initialTangentStageInputOutputDescriptorInfo.bufferLayoutStride = v122;
    }
  }
}

- (void)setupFinalMeshFromBaseMeshWithInfo:(id)info
{
  *&v139[5] = *MEMORY[0x1E69E9840];
  deformPositionBuffer = self->_deformPositionBuffer;
  if (deformPositionBuffer)
  {
    CFRelease(deformPositionBuffer);
    self->_deformPositionBuffer = 0;
  }

  deformNormalBuffer = self->_deformNormalBuffer;
  if (deformNormalBuffer)
  {
    CFRelease(deformNormalBuffer);
    self->_deformNormalBuffer = 0;
  }

  deformTangentBuffer = self->_deformTangentBuffer;
  if (deformTangentBuffer)
  {
    CFRelease(deformTangentBuffer);
    self->_deformTangentBuffer = 0;
  }

  finalMesh = self->_finalMesh;
  if (finalMesh)
  {
    CFRelease(finalMesh);
    self->_finalMesh = 0;
  }

  finalPositionBuffer = self->_finalPositionBuffer;
  if (finalPositionBuffer)
  {
    CFRelease(finalPositionBuffer);
    self->_finalPositionBuffer = 0;
  }

  finalNormalBuffer = self->_finalNormalBuffer;
  if (finalNormalBuffer)
  {
    CFRelease(finalNormalBuffer);
    self->_finalNormalBuffer = 0;
  }

  finalTangentBuffer = self->_finalTangentBuffer;
  if (finalTangentBuffer)
  {
    CFRelease(finalTangentBuffer);
    self->_finalTangentBuffer = 0;
  }

  finalDataKind = self->_finalDataKind;
  v13 = objc_msgSend_vertexDescriptor(MEMORY[0x1E69741E0], a2, *&info.var0);
  v14 = sub_1AF1A4F3C(self->_baseMesh);
  v15 = objc_alloc(MEMORY[0x1E695DF70]);
  v17 = objc_msgSend_initWithCapacity_(v15, v16, v14);
  v134 = 0;
  v135 = &v134;
  v136 = 0x2020000000;
  v137 = 0;
  baseMesh = self->_baseMesh;
  v19 = self->_finalDataKind;
  v132[0] = MEMORY[0x1E69E9820];
  v132[1] = 3221225472;
  v132[2] = sub_1AF1E5014;
  v132[3] = &unk_1E7A7C1F8;
  v132[4] = self;
  v132[5] = v17;
  v132[6] = v13;
  v132[7] = &v134;
  v133 = finalDataKind == 0;
  sub_1AF1A2BEC(baseMesh, v19, v132);
  if (info.var0)
  {
    v21 = sub_1AF1F1A7C(30);
    v22 = sub_1AF1A4604(self->_baseMesh, 0, 0, self->_deformDataKind);
    v24 = sub_1AF1AE6EC(v22, v23);
    if ((*&info.var0 & 0x100) != 0)
    {
      v26 = objc_msgSend_newBufferForDataKind_meshSource_dataType_forStageInputOutputDescriptor_usePrivateStorageMode_outStride_(self, v25, self->_deformDataKind, v22, 8, 0, 0, 0);
    }

    else
    {
      sub_1AFDE851C(self->_resourceManager, v24 * v21, 32);
    }

    self->_deformNormalBuffer = v26;
    v27 = self->_finalDataKind;
    if (v27 == self->_deformDataKind)
    {
      v28 = v26;
    }

    else
    {
      v31 = sub_1AF1A4604(self->_baseMesh, 0, 0, v27);
      v33 = sub_1AF1AE6EC(v31, v32);
      sub_1AFDE851C(self->_resourceManager, v33 * v21, 32);
    }

    self->_finalNormalBuffer = v28;
    v34 = objc_msgSend_count(v17, v29, v30);
    objc_msgSend_addObject_(v17, v35, self->_finalNormalBuffer);
    v38 = objc_msgSend_attributes(v13, v36, v37);
    v40 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, 1);
    objc_msgSend_setFormat_(v40, v41, 30);
    objc_msgSend_setOffset_(v40, v42, 0);
    objc_msgSend_setBufferIndex_(v40, v43, v34 + 18);
    v46 = objc_msgSend_layouts(v13, v44, v45);
    v49 = objc_msgSend_bufferIndex(v40, v47, v48);
    v51 = objc_msgSend_objectAtIndexedSubscript_(v46, v50, v49);
    objc_msgSend_setStride_(v51, v52, v21);
    objc_msgSend_setStepFunction_(v51, v53, 1);
    v56 = objc_msgSend_offset(v40, v54, v55);
    v59 = objc_msgSend_stride(v51, v57, v58);
    self->_deformNormalStageInputOutputDescriptorInfo.isActive = 1;
    self->_deformNormalStageInputOutputDescriptorInfo.bufferAttributeFormat = 30;
    self->_deformNormalStageInputOutputDescriptorInfo.bufferAttributeOffset = v56;
    self->_deformNormalStageInputOutputDescriptorInfo.bufferLayoutStride = v59;
  }

  if ((*&info & 0x10000) != 0)
  {
    v60 = sub_1AF1F1A7C(31);
    v61 = sub_1AF1A4604(self->_baseMesh, 0, 0, self->_deformDataKind);
    v63 = sub_1AF1AE6EC(v61, v62);
    if ((*&info & 0x1000000) != 0)
    {
      v65 = objc_msgSend_newBufferForDataKind_meshSource_dataType_forStageInputOutputDescriptor_usePrivateStorageMode_outStride_(self, v64, self->_deformDataKind, v61, 9, 0, 0, 0);
    }

    else
    {
      sub_1AFDE851C(self->_resourceManager, v63 * v60, 32);
    }

    self->_deformTangentBuffer = v65;
    v66 = self->_finalDataKind;
    if (v66 == self->_deformDataKind)
    {
      v67 = v65;
    }

    else
    {
      v70 = sub_1AF1A4604(self->_baseMesh, 0, 0, v66);
      v72 = sub_1AF1AE6EC(v70, v71);
      sub_1AFDE851C(self->_resourceManager, v72 * v60, 32);
    }

    self->_finalTangentBuffer = v67;
    v73 = objc_msgSend_count(v17, v68, v69);
    objc_msgSend_addObject_(v17, v74, self->_finalTangentBuffer);
    v77 = objc_msgSend_attributes(v13, v75, v76);
    v79 = objc_msgSend_objectAtIndexedSubscript_(v77, v78, 2);
    objc_msgSend_setFormat_(v79, v80, 31);
    objc_msgSend_setOffset_(v79, v81, 0);
    objc_msgSend_setBufferIndex_(v79, v82, v73 + 18);
    v85 = objc_msgSend_layouts(v13, v83, v84);
    v88 = objc_msgSend_bufferIndex(v79, v86, v87);
    v90 = objc_msgSend_objectAtIndexedSubscript_(v85, v89, v88);
    objc_msgSend_setStride_(v90, v91, v60);
    objc_msgSend_setStepFunction_(v90, v92, 1);
    v95 = objc_msgSend_offset(v79, v93, v94);
    v98 = objc_msgSend_stride(v90, v96, v97);
    self->_deformTangentStageInputOutputDescriptorInfo.isActive = 1;
    self->_deformTangentStageInputOutputDescriptorInfo.bufferAttributeFormat = 31;
    self->_deformTangentStageInputOutputDescriptorInfo.bufferAttributeOffset = v95;
    self->_deformTangentStageInputOutputDescriptorInfo.bufferLayoutStride = v98;
  }

  v99 = sub_1AF1A3CCC(self->_baseMesh, v20);
  v100 = objc_alloc(MEMORY[0x1E695DF70]);
  v102 = objc_msgSend_initWithCapacity_(v100, v101, v99);
  if (v99 >= 1)
  {
    for (i = 0; i != v99; ++i)
    {
      v104 = sub_1AF1A3D1C(self->_baseMesh, i, self->_finalDataKind);
      v106 = sub_1AF1A7034(v104, v105);
      v107 = sub_1AF1F156C(v106);
      if (v107)
      {
        v109 = sub_1AFDE7F98(self->_resourceManager);
        objc_msgSend_addObject_(v102, v110, v109);
      }

      else if (self->_finalDataKind | finalDataKind)
      {
        v111 = sub_1AF0D5194(v107, v108);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE2A18(v138, v139, v111);
        }
      }
    }
  }

  v112 = self->_finalDataKind;
  if (self->_deformDataKind != v112)
  {
    v113 = sub_1AF1A4604(self->_baseMesh, 0, 0, v112);
    self->_splatUniforms.maxIndex = sub_1AF1AE6EC(v113, v114);
    v131 = 0;
    v117 = objc_msgSend_currentBlitEncoder(self, v115, v116);
    objc_msgSend_deindexedToOriginalTableBufferWithBlitEncoder_indexSizeOut_(self, v118, v117, &v131);
    v130 = v131;
    v119 = self->_deformTangentBuffer;
    v129 = self->_deformNormalBuffer != 0;
    v128 = v119 != 0;
    v120 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_atIndex_(v120, v121, &v130, 33, 0);
    objc_msgSend_setConstantValue_type_atIndex_(v120, v122, &v129, 53, 1);
    objc_msgSend_setConstantValue_type_atIndex_(v120, v123, &v128, 53, 2);
    v125 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v124, @"UInt%d-%d-%d", (8 * v130), v129, v128);
    self->_splatDeformedToFinalPipeline = objc_msgSend_computePipelineStateForKernel_constants_constantsHash_(self->_resourceManager, v126, @"deformer_splat", v120, v125);
  }

  v127 = objc_alloc_init(VFXMTLMesh);
  self->_finalMesh = v127;
  sub_1AFDEA024(v127, v13);
  sub_1AFDEA1F4(self->_finalMesh, v17);
  sub_1AFDEA214(self->_finalMesh, v102);
  sub_1AFDEA29C(self->_finalMesh, v135[3]);

  _Block_object_dispose(&v134, 8);
}

- (void)setupFinalMeshFromMeshlessBaseGeometryWithInfo:(id)info
{
  deformPositionBuffer = self->_deformPositionBuffer;
  if (deformPositionBuffer)
  {
    CFRelease(deformPositionBuffer);
    self->_deformPositionBuffer = 0;
  }

  deformNormalBuffer = self->_deformNormalBuffer;
  if (deformNormalBuffer)
  {
    CFRelease(deformNormalBuffer);
    self->_deformNormalBuffer = 0;
  }

  deformTangentBuffer = self->_deformTangentBuffer;
  if (deformTangentBuffer)
  {
    CFRelease(deformTangentBuffer);
    self->_deformTangentBuffer = 0;
  }

  finalMesh = self->_finalMesh;
  if (finalMesh)
  {
    CFRelease(finalMesh);
    self->_finalMesh = 0;
  }

  finalPositionBuffer = self->_finalPositionBuffer;
  if (finalPositionBuffer)
  {
    CFRelease(finalPositionBuffer);
    self->_finalPositionBuffer = 0;
  }

  finalNormalBuffer = self->_finalNormalBuffer;
  if (finalNormalBuffer)
  {
    CFRelease(finalNormalBuffer);
    self->_finalNormalBuffer = 0;
  }

  finalTangentBuffer = self->_finalTangentBuffer;
  if (finalTangentBuffer)
  {
    CFRelease(finalTangentBuffer);
    self->_finalTangentBuffer = 0;
  }

  if (!self->_meshlessDeformer)
  {
    v12 = sub_1AF0D5194(finalTangentBuffer, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE2A94(v12, a2, *&info.var0, v13, v14, v15, v16, v17);
    }
  }

  self->_finalMesh = objc_msgSend_finalMesh(self->_meshlessDeformer, a2, *&info.var0);
  v18 = sub_1AF1F1A7C(30);
  v19 = sub_1AFDEA004(self->_finalMesh);
  v22 = objc_msgSend_attributes(v19, v20, v21);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, 0);
  v27 = objc_msgSend_layouts(v19, v25, v26);
  v30 = objc_msgSend_bufferIndex(v24, v28, v29);
  v32 = objc_msgSend_objectAtIndexedSubscript_(v27, v31, v30);
  v33 = sub_1AF170784(self->_baseGeometry);
  v35 = sub_1AF1AE6EC(v33, v34);
  sub_1AFDE851C(self->_resourceManager, v35 * v18, 32);
  self->_deformPositionBuffer = v36;
  CFRelease(v33);
  if (info.var0 && (v40 = sub_1AF0D5194(v37, v38), v37 = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE2B0C(v40, v38, v39, v41, v42, v43, v44, v45);
    if ((*&info & 0x10000) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*&info & 0x10000) == 0)
  {
    goto LABEL_23;
  }

  v46 = sub_1AF0D5194(v37, v38);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE2B84(v46, v38, v39, v47, v48, v49, v50, v51);
  }

LABEL_23:
  v52 = objc_msgSend_offset(v24, v38, v39);
  v55 = objc_msgSend_stride(v32, v53, v54);
  self->_deformPositionStageInputOutputDescriptorInfo.isActive = 1;
  self->_deformPositionStageInputOutputDescriptorInfo.bufferAttributeFormat = 30;
  self->_deformPositionStageInputOutputDescriptorInfo.bufferAttributeOffset = v52;
  self->_deformPositionStageInputOutputDescriptorInfo.bufferLayoutStride = v55;
}

- (id)deindexedToOriginalTableBufferWithBlitEncoder:(id)encoder indexSizeOut:(unint64_t *)out
{
  *&v31[5] = *MEMORY[0x1E69E9840];
  if (!self->_deindexedToOriginalTableBuffer)
  {
    sub_1AF1A4604(self->_baseMesh, 0, 0, 1);
    v29 = 0;
    v7 = sub_1AF1A4F94(self->_baseMesh, &v29);
    result = sub_1AF1A4FA8(self->_baseMesh);
    if (!result)
    {
      return result;
    }

    v9 = sub_1AF1A4604(self->_baseMesh, 0, 0, 0);
    v11 = sub_1AF1AE6EC(v9, v10);
    v12 = v29;
    v13 = v29 - 1;
    encoderCopy = encoder;
    if ((v29 - 1) < 0)
    {
      v16 = 8;
    }

    else
    {
      v14 = v13 >> 15;
      v15 = v13 > 0x7F;
      v16 = 1;
      if (v15)
      {
        v16 = 2;
      }

      if (v14)
      {
        v16 = 4;
      }
    }

    self->_deindexedToOriginalTableBufferIndexSize = v16;
    *out = v16;
    v27 = self->_deindexedToOriginalTableBufferIndexSize * v12;
    v17 = malloc_type_malloc(v27, 0x407733AFuLL);
    v19 = v17;
    deindexedToOriginalTableBufferIndexSize = self->_deindexedToOriginalTableBufferIndexSize;
    if (deindexedToOriginalTableBufferIndexSize == 1)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    if (deindexedToOriginalTableBufferIndexSize == 2)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    if (deindexedToOriginalTableBufferIndexSize == 4)
    {
      v23 = v17;
    }

    else
    {
      v23 = 0;
    }

    if (!v29)
    {
LABEL_31:
      self->_deindexedToOriginalTableBuffer = sub_1AFDE847C(self->_resourceManager, v19, v27, encoderCopy);
      free(v19);
      return self->_deindexedToOriginalTableBuffer;
    }

    v24 = 0;
    while (1)
    {
      v25 = *(v7 + 4 * v24);
      if (v25 >= v11 && (v26 = sub_1AF0D5194(v17, v18), v17 = os_log_type_enabled(v26, OS_LOG_TYPE_FAULT), v17))
      {
        sub_1AFDE2BFC(v30, v31, v26);
        if (!v21)
        {
LABEL_27:
          if (v22)
          {
            *(v22 + 2 * v24) = v25;
          }

          else
          {
            *(v23 + 4 * v24) = v25;
          }

          goto LABEL_30;
        }
      }

      else if (!v21)
      {
        goto LABEL_27;
      }

      *(v21 + v24) = v25;
LABEL_30:
      if (++v24 >= v29)
      {
        goto LABEL_31;
      }
    }
  }

  *out = self->_deindexedToOriginalTableBufferIndexSize;
  return self->_deindexedToOriginalTableBuffer;
}

- (id)deindexedToFirstDeindexedTableBufferWithBlitEncoder:(id)encoder indexSizeOut:(unint64_t *)out
{
  *&v37[5] = *MEMORY[0x1E69E9840];
  if (self->_deindexedToFirstDeindexedTableBuffer)
  {
    *out = self->_deindexedToFirstDeindexedTableBufferIndexSize;
  }

  else
  {
    sub_1AF1A4604(self->_baseMesh, 0, 0, 1);
    v33 = 0;
    v7 = sub_1AF1A4F94(self->_baseMesh, &v33);
    result = sub_1AF1A4FA8(self->_baseMesh);
    if (!result)
    {
      return result;
    }

    v9 = result;
    encoderCopy = encoder;
    v10 = sub_1AF1A4604(self->_baseMesh, 0, 0, 0);
    v12 = sub_1AF1AE6EC(v10, v11);
    v13 = v33;
    v14 = v33 - 1;
    if ((v33 - 1) < 0)
    {
      v17 = 8;
    }

    else
    {
      v15 = v14 >> 15;
      v16 = v14 > 0x7F;
      v17 = 1;
      if (v16)
      {
        v17 = 2;
      }

      if (v15)
      {
        v17 = 4;
      }
    }

    self->_deindexedToFirstDeindexedTableBufferIndexSize = v17;
    *out = v17;
    v30 = self->_deindexedToFirstDeindexedTableBufferIndexSize * v13;
    v18 = malloc_type_malloc(v30, 0xF4697E52uLL);
    v20 = v18;
    deindexedToFirstDeindexedTableBufferIndexSize = self->_deindexedToFirstDeindexedTableBufferIndexSize;
    if (deindexedToFirstDeindexedTableBufferIndexSize == 1)
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    if (deindexedToFirstDeindexedTableBufferIndexSize == 2)
    {
      v23 = v18;
    }

    else
    {
      v23 = 0;
    }

    if (deindexedToFirstDeindexedTableBufferIndexSize == 4)
    {
      v24 = v18;
    }

    else
    {
      v24 = 0;
    }

    v32 = v24;
    if (v33)
    {
      for (i = 0; i < v33; ++i)
      {
        v26 = *(v7 + 4 * i);
        v27 = v9[v26];
        if (v26 >= v12)
        {
          v28 = sub_1AF0D5194(v18, v19);
          v18 = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
          if (v18)
          {
            sub_1AFDE2BFC(v36, v37, v28);
          }
        }

        if (v27 >= v33)
        {
          v29 = sub_1AF0D5194(v18, v19);
          v18 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);
          if (v18)
          {
            sub_1AFDE2C44(v34, &v35, v29);
          }
        }

        if (i == v27)
        {
          if (v22)
          {
            *(v22 + i) = -1;
          }

          else if (v23)
          {
            *(v23 + 2 * i) = -1;
          }

          else
          {
            *(v32 + 4 * i) = -1;
          }
        }

        else if (v22)
        {
          *(v22 + i) = v27;
        }

        else if (v23)
        {
          *(v23 + 2 * i) = v27;
        }

        else
        {
          *(v32 + 4 * i) = v27;
        }
      }
    }

    self->_deindexedToFirstDeindexedTableBuffer = sub_1AFDE847C(self->_resourceManager, v20, v30, encoderCopy);
    free(v20);
  }

  return self->_deindexedToFirstDeindexedTableBuffer;
}

- (id)originalToFirstDeindexedTableBufferWithBlitEncoder:(id)encoder indexSizeOut:(unint64_t *)out
{
  if (self->_originalToFirstDeindexedTableBuffer)
  {
    *out = self->_originalToFirstDeindexedTableBufferIndexSize;
  }

  else
  {
    sub_1AF1A4604(self->_baseMesh, 0, 0, 1);
    result = sub_1AF1A4FA8(self->_baseMesh);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v9 = sub_1AF1A4604(self->_baseMesh, 0, 0, 0);
    v11 = sub_1AF1AE6EC(v9, v10);
    v12 = v11;
    v13 = 1;
    if (v11 - 1 > 0xFF)
    {
      v13 = 2;
    }

    v14 = 4;
    if (!((v11 - 1) >> 16))
    {
      v14 = v13;
    }

    self->_originalToFirstDeindexedTableBufferIndexSize = v14;
    *out = v14;
    v15 = v11;
    v16 = self->_originalToFirstDeindexedTableBufferIndexSize * v11;
    v17 = malloc_type_malloc(v16, 0xB69AB802uLL);
    v18 = v17;
    originalToFirstDeindexedTableBufferIndexSize = self->_originalToFirstDeindexedTableBufferIndexSize;
    if (originalToFirstDeindexedTableBufferIndexSize == 1)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    if (originalToFirstDeindexedTableBufferIndexSize == 2)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    if (originalToFirstDeindexedTableBufferIndexSize == 4)
    {
      v22 = v17;
    }

    else
    {
      v22 = 0;
    }

    if (v12)
    {
      v23 = v21;
      v24 = v20;
      do
      {
        v26 = *v8++;
        v25 = v26;
        if (v20)
        {
          *v24 = v25;
        }

        else if (v21)
        {
          *v23 = v25;
        }

        else
        {
          *v22 = v25;
        }

        ++v24;
        ++v23;
        ++v22;
        --v15;
      }

      while (v15);
    }

    self->_originalToFirstDeindexedTableBuffer = sub_1AFDE847C(self->_resourceManager, v17, v16, encoder);
    free(v18);
  }

  return self->_originalToFirstDeindexedTableBuffer;
}

- (id)newBufferForDataKind:(unsigned __int8)kind meshSource:(__CFXMeshSource *)source dataType:(signed __int16)type forStageInputOutputDescriptor:(BOOL)descriptor usePrivateStorageMode:(BOOL)mode outStride:(unint64_t *)stride
{
  descriptorCopy = descriptor;
  typeCopy = type;
  v14 = sub_1AF1AE6EC(source, a2);
  v16 = sub_1AF288070(typeCopy, v15);
  if (descriptorCopy)
  {
    v17 = sub_1AFDE78C8(&self->_resourceManager->super.isa);
    if (sub_1AF1F32D4(v17, v18, v19))
    {
      v16 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }
  }

  v20 = malloc_type_malloc(v16 * v14, 0x100004077774924uLL);
  v35 = 0u;
  v36 = 0u;
  sub_1AF1AE1A8(source, v21, &v35);
  if (v14)
  {
    v27 = 0;
    v28 = v20;
    do
    {
      *v29.i64 = sub_1AF279750(BYTE4(v36), (v35 + v27 * BYTE6(v36)), v24, v25, v26);
      sub_1AF279B88(typeCopy, v28, v29);
      v28 += v16;
      ++v27;
    }

    while (v14 != v27);
  }

  resourceManager = self->_resourceManager;
  if (mode)
  {
    v31 = objc_msgSend_currentBlitEncoder(self, v22, v23);
    v32 = sub_1AFDE847C(resourceManager, v20, v16 * v14, v31);
  }

  else
  {
    sub_1AFDE8444(self->_resourceManager, v20, v16 * v14, 0);
  }

  v33 = v32;
  free(v20);
  if (stride)
  {
    *stride = v16;
  }

  return v33;
}

- (id)newBufferForDataKind:(unsigned __int8)kind positionSource:(__CFXMeshSource *)source normalSource:(__CFXMeshSource *)normalSource positionDataType:(signed __int16)type normalDataType:(signed __int16)dataType forStageInputOutputDescriptor:(BOOL)descriptor usePrivateStorageMode:(BOOL)mode outStride:(unint64_t *)self0 outPositionOffset:(unint64_t *)self1 outNormalOffset:(unint64_t *)self2
{
  descriptorCopy = descriptor;
  dataTypeCopy = dataType;
  typeCopy = type;
  if (kind == 1 && normalSource && (v18 = sub_1AF1AE6EC(source, a2), v20 = sub_1AF1AE6EC(normalSource, v19), v18 != v20))
  {
    v46 = sub_1AF0D5194(v20, a2);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE2C8C();
    }

    return 0;
  }

  else
  {
    v21 = sub_1AF1AE6EC(source, a2);
    v23 = sub_1AF288070(typeCopy, v22);
    v25 = sub_1AF288070(dataTypeCopy, v24);
    v26 = v25 + v23;
    if (descriptorCopy)
    {
      v27 = v25;
      v28 = sub_1AFDE78C8(&self->_resourceManager->super.isa);
      if (sub_1AF1F32D4(v28, v29, v30))
      {
        v26 = (v27 + ((v23 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v23 = (v23 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      }
    }

    selfCopy = self;
    v31 = malloc_type_malloc(v26 * v21, 0x100004077774924uLL);
    v51 = 0u;
    v52 = 0u;
    sub_1AF1AE1A8(source, v32, &v51);
    v37 = 0uLL;
    v49 = 0u;
    v50 = 0u;
    if (normalSource)
    {
      sub_1AF1AE1A8(normalSource, v33, &v49);
    }

    if (v21)
    {
      v38 = 0;
      v39 = v31;
      do
      {
        *v40.i64 = sub_1AF279750(BYTE4(v52), (v51 + v38 * BYTE6(v52)), v37, v35, v36);
        sub_1AF279B88(typeCopy, v39, v40);
        if (normalSource)
        {
          *v41.i64 = sub_1AF279750(BYTE4(v50), (v49 + v38 * BYTE6(v50)), v37, v35, v36);
          sub_1AF279B88(dataTypeCopy, v39 + v23, v41);
        }

        v39 += v26;
        ++v38;
      }

      while (v21 != v38);
    }

    v42 = selfCopy[1];
    if (mode)
    {
      v43 = objc_msgSend_currentBlitEncoder(selfCopy, v33, v34);
      v44 = sub_1AFDE847C(v42, v31, v26 * v21, v43);
    }

    else
    {
      sub_1AFDE8444(selfCopy[1], v31, v26 * v21, 0);
    }

    v45 = v44;
    free(v31);
    if (stride)
    {
      *stride = v26;
    }

    if (offset)
    {
      *offset = 0;
    }

    if (normalOffset)
    {
      *normalOffset = v23;
    }
  }

  return v45;
}

- (MTLBlitCommandEncoder)currentBlitEncoder
{
  result = self->_currentInitResourceBlitEncoder;
  if (!result)
  {
    result = *objc_msgSend_resourceBlitEncoder(self->_currentInitRenderContext, a2, v2);
    self->_currentInitResourceBlitEncoder = result;
  }

  return result;
}

- (void)reconfigureIfNeededWithContext:(id)context programHashCodeRequirements:(id)requirements
{
  v4 = *&requirements.var0;
  v193 = *MEMORY[0x1E69E9840];
  if (self->_isValid && (!requirements.var0 || self->_finalTangentBuffer))
  {
    return;
  }

  self->_currentInitRenderContext = context;
  v6 = sub_1AF16B950(self->_cfxDeformerStack, a2);
  v7 = sub_1AF170774(v6);
  v9 = v7;
  baseGeometry = self->_baseGeometry;
  if (baseGeometry != v6)
  {
    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v6;
    }

    self->_baseGeometry = v6;
    self->_baseMesh = v10;
  }

  if (v7)
  {
    v11 = objc_msgSend_deformerClassForMeshlesshGeometry_(self, v8, v6);
    v13 = objc_msgSend_deformsControlPointsForMeshlessGeometry_(v11, v12, v6);
  }

  else
  {
    v11 = 0;
    v13 = objc_msgSend_deformsControlPointsForMeshlessGeometry_(0, v8, v6);
  }

  v140 = v13;
  finalDataKind = self->_finalDataKind;
  v16 = sub_1AF16BA50(self->_cfxDeformerStack, v14);
  v18 = sub_1AF16BB4C(self->_cfxDeformerStack, v17);
  v145 = v18;
  if (v18)
  {
    v158 = !sub_1AF1C9420(v18);
  }

  else
  {
    v158 = 0;
  }

  v156 = v6;
  v20 = sub_1AF16BC38(self->_cfxDeformerStack, v19);
  v25 = objc_msgSend_count(v20, v21, v22);
  if (v16)
  {
    v26 = objc_msgSend_requiredInputs(VFXMTLMorphDeformer, v23, v24);
  }

  else
  {
    v26 = 0;
  }

  if (v158)
  {
    v26 |= objc_msgSend_requiredInputs(VFXMTLSkinDeformer, v23, v24);
  }

  selfCopy = self;
  v148 = v11;
  if (v11)
  {
    v26 |= objc_msgSend_requiredInputs(v11, v23, v24);
  }

  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v184, v192, 16, v140);
  if (v27)
  {
    v30 = v27;
    v31 = *v185;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v185 != v31)
        {
          objc_enumerationMutation(v20);
        }

        LODWORD(v26) = objc_msgSend_requiredInputs(*(*(&v184 + 1) + 8 * i), v28, v29) | v26;
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v28, &v184, v192, 16);
    }

    while (v30);
  }

  baseMesh = selfCopy->_baseMesh;
  if (!baseMesh)
  {
    v34 = 0;
    goto LABEL_33;
  }

  v34 = sub_1AF1A47C0(baseMesh, 1, selfCopy->_deformDataKind, 0);
  v35 = selfCopy->_baseMesh;
  if (!v35)
  {
LABEL_33:
    v36 = 0;
    goto LABEL_34;
  }

  v36 = sub_1AF1A47C0(v35, 4, selfCopy->_deformDataKind, 0);
LABEL_34:
  v149 = v9;
  v37 = finalDataKind != 0;
  finalNormalBuffer = selfCopy->_finalNormalBuffer;
  finalTangentBuffer = selfCopy->_finalTangentBuffer;
  v157 = v16;
  if (v16)
  {
    v38 = sub_1AF1E7C04(VFXMTLMorphDeformer, v16);
    v39 = v38;
  }

  else
  {
    v39 = 0;
    v38 = -1;
  }

  if (v158)
  {
    v40 = objc_msgSend_supportedOutputs(VFXMTLSkinDeformer, v28, v29);
    v39 |= v40;
    v38 &= v40;
  }

  if (v148)
  {
    v41 = objc_msgSend_supportedOutputs(v148, v28, v29);
    v39 |= v41;
    v38 &= v41;
  }

  v153 = (v34 | (v26 >> 1)) & v37;
  v152 = (v4 | v36 | (v26 >> 2)) & v37;
  v183 = 0u;
  v182 = 0u;
  v181 = 0u;
  v180 = 0u;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v28, &v180, v191, 16);
  if (v42)
  {
    v45 = v42;
    v46 = *v181;
    v47 = selfCopy;
    do
    {
      for (j = 0; j != v45; ++j)
      {
        if (*v181 != v46)
        {
          objc_enumerationMutation(v20);
        }

        v49 = objc_msgSend_supportedOutputs(*(*(&v180 + 1) + 8 * j), v43, v44);
        v39 |= v49;
        v38 &= v49;
      }

      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v43, &v180, v191, 16);
    }

    while (v45);
  }

  else
  {
    v47 = selfCopy;
  }

  v150 = v153 & ((v38 & 2) == 0);
  v50 = 3;
  if (v150)
  {
    v50 = 1;
  }

  if (!v153)
  {
    v50 = 1;
  }

  if (v152)
  {
    v51 = v50 | 4;
  }

  else
  {
    v51 = v50;
  }

  if (v157)
  {
    v52 = objc_msgSend_requiredOutputs(VFXMTLMorphDeformer, v43, v44);
    v51 |= v52;
    v53 = (v52 >> 9) & 1;
  }

  else
  {
    LODWORD(v53) = 0;
  }

  if (v158)
  {
    v54 = objc_msgSend_requiredOutputs(VFXMTLSkinDeformer, v43, v44);
    v51 |= v54;
    LODWORD(v53) = (v54 >> 9) & 1 | v53;
  }

  if (v148)
  {
    v55 = objc_msgSend_requiredOutputs(v148, v43, v44);
    v51 |= v55;
    LODWORD(v53) = (v55 >> 9) & 1 | v53;
  }

  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v43, &v176, v190, 16);
  if (v56)
  {
    v59 = v56;
    v60 = *v177;
    do
    {
      for (k = 0; k != v59; ++k)
      {
        if (*v177 != v60)
        {
          objc_enumerationMutation(v20);
        }

        v62 = objc_msgSend_requiredOutputs(*(*(&v176 + 1) + 8 * k), v57, v58);
        v51 |= v62;
        LODWORD(v53) = (v62 >> 9) & 1 | v53;
      }

      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v57, &v176, v190, 16);
    }

    while (v59);
  }

  v146 = v25;
  v142 = v47->_smoothNormalsDeformer != 0;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v63 = sub_1AFDEA208(v47->_finalMesh);
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v172, v189, 16);
  if (v65)
  {
    v66 = v65;
    v67 = 0;
    v68 = *v173;
    do
    {
      for (m = 0; m != v66; ++m)
      {
        if (*v173 != v68)
        {
          objc_enumerationMutation(v63);
        }

        v67 |= v53 ^ (sub_1AFDEA1E8(*(*(&v172 + 1) + 8 * m)) != 0);
      }

      v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v70, &v172, v189, 16);
    }

    while (v66);
  }

  else
  {
    v67 = 0;
  }

  if (v158)
  {
    v71 = 1;
    v72 = selfCopy;
    v73 = v146;
  }

  else
  {
    v73 = v146;
    v71 = v141;
    if (v146)
    {
      v71 = 1;
    }

    v72 = selfCopy;
  }

  v74 = v150 ^ v142;
  v76 = *(v72 + 832);
  v77 = (v153 ^ v150) & ((v38 & 2) == 0);
  v78 = v39 & 2;
  v79 = (v78 << 7) ^ 0x100;
  if (((v153 ^ v150) & ((v38 & 2) == 0)) == 0)
  {
    v79 = 0;
  }

  v155 = v79;
  v80 = v152 & ((v38 & 4) == 0);
  v81 = v39 & 4;
  v82 = (v81 << 22) ^ 0x1000000;
  if (!v80)
  {
    v82 = 0;
  }

  v147 = v82;
  v83 = v153 ^ (finalNormalBuffer != 0);
  v84 = v152 ^ (finalTangentBuffer != 0);
  v75 = *(v72 + 80);
  v85 = v71 ^ (v75 != 0);
  v86 = (v157 == 0) ^ (v76 == 0);
  if (baseGeometry != v156 || !*(v72 + 56) || (v83 & 1) != 0 || (v84 & 1) != 0 || ((v71 ^ (v75 != 0)) & 1) != 0 || v86)
  {
    v87 = v80 & (v81 != 0);
    if (!v157)
    {
      v87 = 1;
    }

    v88 = v77 & (v78 != 0);
    if (!v157)
    {
      v88 = 1;
    }

    v170[0] = MEMORY[0x1E69E9820];
    v170[1] = 3221225472;
    v170[2] = sub_1AF1E69BC;
    v170[3] = &unk_1E7A7C220;
    v171 = v149;
    v170[5] = v156;
    v170[4] = v72;
    v168[0] = MEMORY[0x1E69E9820];
    v168[1] = 3221225472;
    v168[2] = sub_1AF1E6A18;
    v168[3] = &unk_1E7A7C248;
    v169 = v149;
    v168[4] = v72;
    v166[0] = MEMORY[0x1E69E9820];
    v166[1] = 3221225472;
    v166[2] = sub_1AF1E6AD4;
    v166[3] = &unk_1E7A7C248;
    v167 = v149;
    v166[4] = v72;
    v104 = v87 == 0;
    v89 = 0x10000000000;
    if (v104)
    {
      v89 = 0;
    }

    v90 = 0x100000000;
    if ((v152 & v71) == 0)
    {
      v90 = 0;
    }

    v104 = v88 == 0;
    v91 = 0x1000000;
    if (v104)
    {
      v91 = 0;
    }

    v92 = 0x10000;
    if ((v153 & v71) == 0)
    {
      v92 = 0;
    }

    objc_msgSend_setupInitialBuffersWithBasePositionSourceProvider_baseNormalSourceProvider_baseTangentSourceProvider_info_(v72, finalTangentBuffer, v170, v168, v166, v89 | ((v157 == 0) << 8) | v91 | v71 | v90 | v92);
    v76 = *(v72 + 832);
  }

  if ((sub_1AFDE323C(v76) != v157) | (v83 | v84 | v74) & 1)
  {
    v93 = *(v72 + 832);
    if (v93)
    {
      CFRelease(v93);
      *(v72 + 832) = 0;
    }

    v94 = v149;
    if (v157)
    {
      *(v72 + 832) = sub_1AFDE3184([VFXMTLMorphDeformer alloc], v157, v51, *(v72 + 49), *(v72 + 8), v72);
    }
  }

  else
  {
    v95 = v85 | v86;
    v94 = v149;
    if (v95)
    {
      sub_1AFDE3248(*(v72 + 832));
    }
  }

  if ((sub_1AFDE323C(*(v72 + 840)) != v145) | (v83 | v84 | v74) & 1)
  {
    v96 = *(v72 + 840);
    if (v96)
    {
      CFRelease(v96);
      *(v72 + 840) = 0;
    }

    if (v158)
    {
      *(v72 + 840) = sub_1AFDE3860([VFXMTLSkinDeformer alloc], v145, v156, v51, *(v72 + 49), *(v72 + 8), v72);
    }
  }

  v99 = 0;
  if (v94 && baseGeometry != v156)
  {
    v100 = objc_msgSend_alloc(v148, v97, v98);
    v99 = objc_msgSend_initWithMeshlessGeometry_outputs_deformDataKind_finalDataKind_resourceManager_computeContext_(v100, v101, *(v72 + 32), v51, *(v72 + 49), *(v72 + 48), *(v72 + 8), v72);
  }

  *(v72 + 848) = v99;

  if (v150 & v74)
  {
    v103 = sub_1AFDE3C24([VFXMTLSmoothNormalsDeformer alloc], *(v72 + 40), *(v72 + 48), *(v72 + 8), v72);
  }

  else
  {
    v103 = 0;
  }

  *(v72 + 856) = v103;
  v104 = baseGeometry != v156 || *(v72 + 112) == 0;
  v105 = v104;
  if ((v105 | v83 | v84 | v67))
  {
    v106 = 0x10000;
    if (!v152)
    {
      v106 = 0;
    }

    v107 = v106 | v153 | v147;
    if (v94)
    {
      objc_msgSend_setupFinalMeshFromMeshlessBaseGeometryWithInfo_(v72, v102, v107 | v155);
    }

    else
    {
      objc_msgSend_setupFinalMeshFromBaseMeshWithInfo_(v72, v102, v107 | v155);
    }
  }

  *(v72 + 864) = 0;
  v108 = *(v72 + 256);
  __src[0] = *(v72 + 240);
  __src[1] = v108;
  __src[2] = __src[0];
  __src[3] = v108;
  v109 = *(v72 + 288);
  __src[4] = *(v72 + 272);
  __src[5] = v109;
  __src[6] = __src[4];
  __src[7] = v109;
  v110 = *(v72 + 320);
  __src[8] = *(v72 + 304);
  __src[9] = v110;
  __src[10] = __src[8];
  __src[11] = v110;
  memset(&__src[12], 0, 192);
  if (v73)
  {
    v159 = sub_1AF16CDEC(*(v72 + 24));
    v111 = sub_1AF1A4604(*(v72 + 40), 0, 0, *(v72 + 49));
    v113 = sub_1AF1AE6EC(v111, v112);
    v114 = objc_alloc(MEMORY[0x1E696AD18]);
    v116 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v114, v115, 258, 0, v73);
    if (objc_msgSend_count(v20, v117, v118))
    {
      v119 = objc_alloc(MEMORY[0x1E695DF70]);
      v122 = objc_msgSend_count(v20, v120, v121);
      *(v72 + 864) = objc_msgSend_initWithCapacity_(v119, v123, v122);
      v161 = 0u;
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v125 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v124, &v161, v188, 16);
      if (v125)
      {
        v127 = v125;
        v128 = *v162;
        do
        {
          v129 = 0;
          do
          {
            if (*v162 != v128)
            {
              objc_enumerationMutation(v20);
            }

            v130 = *(*(&v161 + 1) + 8 * v129);
            v131 = objc_msgSend_objectForKey_(*(v72 + 872), v126, v130);
            if (v131)
            {
              v133 = v131;
              objc_msgSend_addObject_(*(v72 + 864), v132, v131);
              objc_msgSend_setObject_forKey_(v116, v134, v133, v130);
            }

            else
            {
              v135 = [VFXModelDeformerInstanceWrapper alloc];
              memcpy(__dst, __src, sizeof(__dst));
              v136 = sub_1AFDE21F8(v135, v72, v130, v159, v51, v113, __dst);
              objc_msgSend_addObject_(*(v72 + 864), v137, v136);
              objc_msgSend_setObject_forKey_(v116, v138, v136, v130);
            }

            ++v129;
          }

          while (v127 != v129);
          v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v126, &v161, v188, 16);
          v127 = v139;
        }

        while (v139);
      }
    }
  }

  else
  {
    v116 = 0;
  }

  *(v72 + 872) = v116;
  *(v72 + 50) = 1;
  *(v72 + 400) = 0;
  *(v72 + 408) = 0;
}

- (unint64_t)currentFrameHash
{
  currentUpdateRenderContext = self->_currentUpdateRenderContext;
  v4 = objc_msgSend_engineContext(currentUpdateRenderContext, a2, v2);
  v5 = sub_1AF1302C4(v4);
  v8 = objc_msgSend_currentFrameIndex(currentUpdateRenderContext, v6, v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ currentUpdateRenderContext)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ currentUpdateRenderContext)));
  v10 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&v5) ^ ((0xC6A4A7935BD1E995 * *&v5) >> 47))) ^ 0x35253C9ADE8F4CA8 ^ (0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))));
  return (0xC6A4A7935BD1E995 * (v10 ^ (v10 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v10 ^ (v10 >> 47))) >> 47);
}

- (__n128)currentTransforms
{
  v2 = *(self + 560);
  *(a2 + 128) = *(self + 544);
  *(a2 + 144) = v2;
  v3 = *(self + 592);
  *(a2 + 160) = *(self + 576);
  *(a2 + 176) = v3;
  v4 = *(self + 496);
  *(a2 + 64) = *(self + 480);
  *(a2 + 80) = v4;
  v5 = *(self + 528);
  *(a2 + 96) = *(self + 512);
  *(a2 + 112) = v5;
  v6 = *(self + 432);
  *a2 = *(self + 416);
  *(a2 + 16) = v6;
  result = *(self + 448);
  v8 = *(self + 464);
  *(a2 + 32) = result;
  *(a2 + 48) = v8;
  return result;
}

- (__n128)_currentFrustumInfo
{
  v2 = *(self + 688);
  *(a2 + 64) = *(self + 672);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(self + 704);
  v3 = *(self + 624);
  *a2 = *(self + 608);
  *(a2 + 16) = v3;
  result = *(self + 656);
  *(a2 + 32) = *(self + 640);
  *(a2 + 48) = result;
  return result;
}

- (RGCachedComputeCommandEncoder)currentComputeEncoder
{
  result = self->_currentUpdateComputeCommandEncoder;
  if (!result)
  {
    v5 = objc_msgSend_resourceComputeEncoder(self->_currentUpdateRenderContext, a2, v2);
    self->_currentUpdateComputeCommandEncoder = v5;
    objc_msgSend_pushDebugGroup_(v5, v6, @"VFX: Deformers");
    return self->_currentUpdateComputeCommandEncoder;
  }

  return result;
}

- (void)encodeCommandsInNewCommandBufferUsingBlock:(id)block
{
  self->_currentUpdateComputeCommandEncoder = 0;
  v4 = objc_msgSend_resourceCommandBuffer(self->_currentUpdateRenderContext, a2, block);
  v5 = *(block + 2);

  v5(block, v4);
}

- (void)setStageInputOutputBuffersToEncoder:(id)encoder
{
  objc_msgSend_setBuffer_offset_atIndex_(encoder, a2, self->_currentUpdateBuffers.srcPositions, 0, 10);
  objc_msgSend_setBuffer_offset_atIndex_(encoder, v5, self->_currentUpdateBuffers.srcNormals, 0, 11);
  srcTangents = self->_currentUpdateBuffers.srcTangents;

  objc_msgSend_setBuffer_offset_atIndex_(encoder, v6, srcTangents, 0, 12);
}

- (id)dependencyBufferForInput:(unint64_t)input dependencyStack:(id)stack
{
  if (input <= 8)
  {
    if (((1 << input) & 0x48) != 0)
    {
      return *(stack + 11);
    }

    if (((1 << input) & 0x90) != 0)
    {
      return *(stack + 12);
    }

    if (((1 << input) & 0x120) != 0)
    {
      return *(stack + 13);
    }
  }

  v5 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE2E4C();
  }

  return 0;
}

- (id)dependencyBufferForInput:(unint64_t)input dependencyMesh:(id)mesh
{
  v4 = sub_1AF0D5194(self, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE2E80();
  }

  return 0;
}

- (void)updateDependencyBuffersInBufferArray:(id *)array forDeformer:(id)deformer
{
  v4 = MEMORY[0x1E69E9820];
  *&array->var8 = 0u;
  *&array->var10 = 0u;
  *&array->var6 = 0u;
  v5[0] = v4;
  v5[1] = 3221225472;
  v5[2] = sub_1AF1E701C;
  v5[3] = &unk_1E7A7C2C0;
  v5[4] = self;
  v5[5] = array;
  objc_msgSend__enumerateDependencyNodesUsingBlock_(deformer, a2, v5);
}

@end