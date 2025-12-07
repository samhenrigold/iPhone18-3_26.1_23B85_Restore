@interface NTKUnity2025Quad
- (NTKUnity2025Quad)initWithDevice:(id)device;
- (id)loadAssetWithPath:(id)path enableMeshAllocation:(BOOL)allocation;
- (void)blendToFragmentUniformsWithIdx1:(int)idx1 idx2:(int)idx2 percent:(float)percent uniforms:(id *)uniforms;
- (void)ensureMeshLoaded:(int64_t)loaded;
- (void)initRenderPipeline;
- (void)loadMesh:(int64_t)mesh;
- (void)loadMeshesWithAssetName:(id)name numberPath:(id)path hour:(int)hour;
- (void)morphBetweenColorways:(float)colorways index1:(int)index1 index2:(int)index2;
- (void)renderForDisplayWithEncoder:(id)encoder;
- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setState:(int)state;
- (void)setTritiumProgress:(double)progress;
- (void)setupForQuadView:(id)view;
- (void)unloadMesh:(int64_t)mesh;
@end

@implementation NTKUnity2025Quad

- (NTKUnity2025Quad)initWithDevice:(id)device
{
  deviceCopy = device;
  v38.receiver = self;
  v38.super_class = NTKUnity2025Quad;
  v6 = [(CLKUIQuad *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v10 = objc_msgSend_sharedDevice(MEMORY[0x277CFA798], v8, v9);
    mtlDevice = v7->_mtlDevice;
    v7->_mtlDevice = v10;

    v12 = v7->_mtlDevice;
    v14 = sub_23C09DC80(v13);
    v16 = objc_msgSend_newDefaultLibraryWithBundle_error_(v12, v15, v14, 0);
    library = v7->_library;
    v7->_library = v16;

    v20 = objc_msgSend_screenScale(deviceCopy, v18, v19);
    v7->_screenScale = v23;
    v7->_currentSettingIdx = 0;
    v7->_smoothedTritiumProgress = 0.0;
    v7->_deviceFPS = 30.0;
    v7->_deltaTime = 0.0333333333;
    v24 = &xmmword_23C0A0B60;
    v25 = &xmmword_27E1EE140;
    v26 = 12;
    do
    {
      v25[-2] = NTKUnity2025MathLinearizeRGBColor(*(v24 - 3), v20, v21, v22);
      v25[-1] = NTKUnity2025MathLinearizeRGBColor(*(v24 - 2), v27, v28, v29);
      *v25 = NTKUnity2025MathLinearizeRGBColor(*(v24 - 1), v30, v31, v32);
      v33 = *v24;
      v24 += 8;
      v25[1] = NTKUnity2025MathLinearizeRGBColor(v33, v34, v35, v36);
      v25 += 4;
      --v26;
    }

    while (v26);
  }

  return v7;
}

- (void)setupForQuadView:(id)view
{
  viewCopy = view;
  objc_msgSend_bounds(viewCopy, v5, v6);
  screenScale = self->_screenScale;
  self->_renderSize.width = v8 * screenScale;
  self->_renderSize.height = v9 * screenScale;
  v12 = objc_msgSend_superview(viewCopy, v10, v11);
  objc_msgSend_safeAreaInsets(v12, v13, v14);
  v16 = v15;
  v19 = objc_msgSend_superview(viewCopy, v17, v18);
  objc_msgSend_safeAreaInsets(v19, v20, v21);
  v23 = v16 - v22;

  v26 = -v23;
  if (v23 >= 0.0)
  {
    v26 = v23;
  }

  v27 = self->_screenScale * v26;
  self->_renderSize.height = self->_renderSize.height + v27;
  v28 = objc_msgSend_colorPixelFormat(viewCopy, v24, v25);

  self->_pixelFormat = v28;

  MEMORY[0x2821F9670](self, sel_initRenderPipeline, v29);
}

- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  if (self->_editingColors)
  {
    v6 = (2 * self->_editingIndex1);
    v7 = (2 * self->_editingIndex2);
    editingFraction = self->_editingFraction;
  }

  else
  {
    currentSettingIdx = self->_currentSettingIdx;
    v6 = (2 * currentSettingIdx);
    v7 = (2 * currentSettingIdx) | 1u;
    editingFraction = self->_smoothedTritiumProgress;
  }

  descriptorCopy = descriptor;
  bufferCopy = buffer;
  *&v12 = editingFraction;
  objc_msgSend_blendBackgroundWithIdx1_idx2_percent_(self, v13, v6, v7, v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v22 = objc_msgSend_colorAttachments(descriptorCopy, v20, v21);
  v24 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, 0);
  objc_msgSend_setClearColor_(v24, v25, v26, v15, v17, v19, 1.0);

  v32 = objc_msgSend_renderCommandEncoderWithDescriptor_(bufferCopy, v27, descriptorCopy);

  objc_msgSend_setDepthStencilState_(v32, v28, self->_depthStencilState);
  objc_msgSend_renderForDisplayWithEncoder_(self, v29, v32);
  objc_msgSend_endEncoding(v32, v30, v31);
}

- (void)renderForDisplayWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  if (self->_editingColors)
  {
    v123 = 2 * self->_editingIndex2;
    v124 = 2 * self->_editingIndex1;
    editingFraction = self->_editingFraction;
  }

  else
  {
    currentSettingIdx = self->_currentSettingIdx;
    v123 = (2 * currentSettingIdx) | 1;
    v124 = 2 * currentSettingIdx;
    editingFraction = self->_smoothedTritiumProgress;
  }

  overrideDate = self->_overrideDate;
  if (overrideDate)
  {
    v10 = overrideDate;
  }

  else
  {
    v10 = objc_msgSend_faceDate(MEMORY[0x277D2BFD8], v4, v5);
  }

  v13 = v10;
  v114 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v11, v12);
  v115 = v13;
  v113 = objc_msgSend_components_fromDate_(v114, v14, 96, v13);
  v17 = objc_msgSend_hour(v113, v15, v16);
  v111 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v18, v19);
  v20 = CLKLocaleIs24HourMode();
  v22 = 12;
  v23 = v17 - 12;
  if (v17 <= 12)
  {
    v23 = v17;
  }

  if (v17)
  {
    v22 = v23;
  }

  if ((v20 & 1) == 0)
  {
    v17 = v22;
  }

  objc_msgSend_ensureMeshLoaded_(self, v21, v17, v111);
  objc_msgSend_setLabel_(encoderCopy, v24, @"Unity2025 Render Encoder");
  v138 = 0uLL;
  renderSize = self->_renderSize;
  v140 = xmmword_23C0A0A80;
  objc_msgSend_setViewport_(encoderCopy, v25, &v138);
  objc_msgSend_setRenderPipelineState_(encoderCopy, v26, self->_unity2025PipelineState);
  objc_msgSend_setCullMode_(encoderCopy, v27, 1);
  objc_msgSend_screenBounds(self->_device, v28, v29);
  v31 = v30;
  objc_msgSend_screenBounds(self->_device, v32, v33);
  v35 = v31 / v34;
  *&v37 = NTKUnity2025MathBuildProjectionMatrix(0.25307, v35);
  v121 = v38;
  v122 = v37;
  v119 = v40;
  v120 = v39;
  v125 = &self->_hourStructs[v17];
  if (v125->numDigits >= 1)
  {
    v41 = 0;
    v42 = &unk_23C0A1120 + 20 * v17;
    v43 = *(v42 + 4);
    v117 = v42;
    v116 = v42 + 8;
    v44 = xmmword_23C0A0A90;
    v45 = xmmword_23C0A0AA0;
    v46 = xmmword_23C0A0AD0;
    v47 = xmmword_23C0A0AE0;
    selfCopy = self;
    do
    {
      v48 = 0;
      v146 = 0;
      v147 = 0;
      *&v49 = self->_smoothedTritiumProgress;
      v146 = __PAIR64__(v43, v49);
      v142 = v122;
      v143 = v121;
      v144 = v120;
      v145 = v119;
      v148[0] = v44;
      v148[1] = v45;
      v148[2] = xmmword_23C0A0AB0;
      v148[3] = xmmword_23C0A0AC0;
      v132 = 0u;
      v133 = 0;
      v134 = 0u;
      v135 = 0u;
      do
      {
        *(&v132 + v48 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(v148[v48])), v45, *&v148[v48], 1), v46, v148[v48], 2), v47, v148[v48], 3);
        ++v48;
      }

      while (v48 != 4);
      v138 = v132;
      renderSize = v133;
      v140 = v134;
      v141 = v135;
      v127 = objc_msgSend_newBufferWithBytes_length_options_(self->_mtlDevice, v36, &v138, 144, 1);
      objc_msgSend_setVertexBuffer_offset_atIndex_(encoderCopy, v50, v127, 0, 1);
      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0;
      v52 = *&v116[4 * v41];
      DWORD1(v137) = *&v117[4 * v41];
      *&v51 = DWORD1(v137);
      DWORD2(v137) = v52;
      *&v51 = editingFraction;
      objc_msgSend_blendToFragmentUniformsWithIdx1_idx2_percent_uniforms_(self, v53, v124, v123, &v132, v51);
      v126 = objc_msgSend_newBufferWithBytes_length_options_(self->_mtlDevice, v54, &v132, 96, 1);
      objc_msgSend_setFragmentBuffer_offset_atIndex_(encoderCopy, v55, v126, 0, 0);
      v56 = 0;
      v128 = v41;
      v129 = &v125->digits[v41];
      do
      {
        v131 = v56;
        v57 = *(v129 + 8 * v56);
        v60 = objc_msgSend_vertexBuffers(v57, v58, v59);
        v62 = objc_msgSend_objectAtIndexedSubscript_(v60, v61, 0);

        v65 = objc_msgSend_buffer(v62, v63, v64);
        v130 = v62;
        v68 = objc_msgSend_offset(v62, v66, v67);
        objc_msgSend_setVertexBuffer_offset_atIndex_(encoderCopy, v69, v65, v68, 0);

        v72 = objc_msgSend_submeshes(v57, v70, v71);
        v75 = objc_msgSend_count(v72, v73, v74);

        v78 = encoderCopy;
        if (v75)
        {
          v79 = 0;
          do
          {
            v80 = objc_msgSend_submeshes(v57, v76, v77);
            v82 = objc_msgSend_objectAtIndexedSubscript_(v80, v81, v79);

            v85 = objc_msgSend_primitiveType(v82, v83, v84);
            v88 = objc_msgSend_indexCount(v82, v86, v87);
            v91 = objc_msgSend_indexType(v82, v89, v90);
            v94 = objc_msgSend_indexBuffer(v82, v92, v93);
            v97 = objc_msgSend_buffer(v94, v95, v96);
            v100 = objc_msgSend_indexBuffer(v82, v98, v99);
            v103 = objc_msgSend_offset(v100, v101, v102);
            objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_(v78, v104, v85, v88, v91, v97, v103);

            ++v79;
            v107 = objc_msgSend_submeshes(v57, v105, v106);
            v110 = objc_msgSend_count(v107, v108, v109);
          }

          while (v110 > v79);
        }

        v56 = v131 + 1;
        encoderCopy = v78;
      }

      while (v131 != 4);

      v41 = v128 + 1;
      self = selfCopy;
      v45 = xmmword_23C0A0AA0;
      v44 = xmmword_23C0A0A90;
      v47 = xmmword_23C0A0AE0;
      v46 = xmmword_23C0A0AD0;
    }

    while (v128 + 1 < v125->numDigits);
  }
}

- (void)ensureMeshLoaded:(int64_t)loaded
{
  hourStructs = self->_hourStructs;
  if (!self->_hourStructs[loaded].digits[0].meshes[0])
  {
    objc_msgSend_loadMesh_(self, a2, loaded);
  }

  v6 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, loaded);
  v7 = CLKLocaleIs24HourMode();
  v8 = 13;
  if (v7)
  {
    v8 = 25;
  }

  if (!hourStructs[(loaded + 1) % v8].digits[0].meshes[0])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23C09E64C;
    block[3] = &unk_278BADFB0;
    block[4] = self;
    block[5] = (loaded + 1) % v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (!hourStructs[10].digits[0].meshes[0])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_23C09E67C;
    v9[3] = &unk_278BADFD8;
    v9[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

- (void)unloadMesh:(int64_t)mesh
{
  if (mesh)
  {
    v3 = &self->_hourStructs[mesh];
    v5 = v3->digits[0].meshes[0];
    digits = v3->digits;
    if (v5)
    {
      meshes = digits[1].meshes;
      v7 = 5;
      do
      {
        v8 = *(meshes - 5);
        *(meshes - 5) = 0;

        v9 = *meshes;
        *meshes++ = 0;

        --v7;
      }

      while (v7);
    }
  }
}

- (void)loadMesh:(int64_t)mesh
{
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"NumberMesh%ld%ld", mesh / 10, mesh % 10);
  objc_msgSend_loadMeshesWithAssetName_numberPath_hour_(self, v5, v8, @"/numbers", mesh);
  if (mesh > 2)
  {
    v7 = -3;
  }

  else
  {
    objc_msgSend_unloadMesh_(self, v6, mesh + 21);
    v7 = 9;
  }

  objc_msgSend_unloadMesh_(self, v6, v7 + mesh);
}

- (id)loadAssetWithPath:(id)path enableMeshAllocation:(BOOL)allocation
{
  allocationCopy = allocation;
  pathCopy = path;
  if (allocationCopy)
  {
    if (!self->_allocator)
    {
      v7 = objc_alloc(MEMORY[0x277CD71E8]);
      v9 = objc_msgSend_initWithDevice_(v7, v8, self->_mtlDevice);
      allocator = self->_allocator;
      self->_allocator = v9;

      if (!self->_allocator)
      {
        v11 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_23C09FAF0();
        }
      }
    }

    if (!self->_descriptor)
    {
      v12 = objc_alloc_init(MEMORY[0x277CD7B90]);
      descriptor = self->_descriptor;
      self->_descriptor = v12;

      v14 = objc_alloc(MEMORY[0x277CBEB18]);
      v15 = objc_alloc(MEMORY[0x277CD7B80]);
      v17 = objc_msgSend_initWithName_format_offset_bufferIndex_(v15, v16, *MEMORY[0x277CD7AB0], 786435, 0, 0);
      v18 = objc_alloc(MEMORY[0x277CD7B80]);
      v20 = objc_msgSend_initWithName_format_offset_bufferIndex_(v18, v19, *MEMORY[0x277CD7AC0], 720898, 16, 0);
      v22 = objc_msgSend_initWithObjects_(v14, v21, v17, v20, 0);
      objc_msgSend_setAttributes_(self->_descriptor, v23, v22);

      v24 = objc_alloc(MEMORY[0x277CBEB18]);
      v25 = objc_alloc(MEMORY[0x277CD7B88]);
      v27 = objc_msgSend_initWithStride_(v25, v26, 32);
      v29 = objc_msgSend_initWithObjects_(v24, v28, v27, 0);
      objc_msgSend_setLayouts_(self->_descriptor, v30, v29);
    }
  }

  v31 = MEMORY[0x277CCA8D8];
  v32 = objc_opt_class();
  v34 = objc_msgSend_bundleForClass_(v31, v33, v32);
  v36 = v34;
  if (v34)
  {
    v37 = objc_msgSend_URLForResource_withExtension_(v34, v35, pathCopy, @"usdc");
    if (v37)
    {
      v38 = objc_alloc(MEMORY[0x277CD7AD0]);
      if (allocationCopy)
      {
        v40 = objc_msgSend_initWithURL_vertexDescriptor_bufferAllocator_(v38, v39, v37, self->_descriptor, self->_allocator);
      }

      else
      {
        v40 = objc_msgSend_initWithURL_(v38, v39, v37);
      }

      v41 = v40;
      if (v40)
      {
        goto LABEL_24;
      }

      v42 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        sub_23C09FB24();
      }
    }

    else
    {
      v42 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        sub_23C09FB58();
      }

      v41 = 0;
    }
  }

  else
  {
    v37 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      sub_23C09FB8C();
    }

    v41 = 0;
  }

LABEL_24:

  return v41;
}

- (void)loadMeshesWithAssetName:(id)name numberPath:(id)path hour:(int)hour
{
  v107 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v10 = objc_msgSend_loadAssetWithPath_enableMeshAllocation_(self, v9, name, 1);
  v12 = objc_msgSend_objectAtPath_(v10, v11, pathCopy);
  v15 = v12;
  v90 = v10;
  v91 = pathCopy;
  if (!v12)
  {
    v89 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
    {
      sub_23C09FBF4();
    }

    goto LABEL_35;
  }

  v16 = objc_msgSend_children(v12, v13, v14, v10, pathCopy);
  v19 = objc_msgSend_count(v16, v17, v18);

  v94 = v19;
  if (v19 != 1)
  {
    v22 = objc_msgSend_children(v15, v20, v21);
    v25 = objc_msgSend_count(v22, v23, v24);

    if (v25 != 24)
    {
      v89 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
      {
        sub_23C09FBC0();
      }

LABEL_35:

      goto LABEL_36;
    }
  }

  if (hour < 0)
  {
    hourCopy = 23;
  }

  else
  {
    hourCopy = hour;
  }

  v27 = hour & ~(hour >> 31);
  if (v27 <= hourCopy)
  {
    v92 = hourCopy + 1;
    digits = self->_hourStructs[v27].digits;
    v93 = v15;
    while (1)
    {
      v28 = &self->_hourStructs[v27];
      v28->hour = v27;
      v29 = objc_msgSend_children(v15, v20, v21);
      v31 = v29;
      v97 = v27;
      if (v94 == 1)
      {
        objc_msgSend_objectAtIndexedSubscript_(v29, v30, 0);
      }

      else
      {
        objc_msgSend_objectAtIndexedSubscript_(v29, v30, v27);
      }
      v32 = ;

      v35 = objc_msgSend_children(v32, v33, v34);
      if (objc_msgSend_count(v35, v36, v37) == 1)
      {
        break;
      }

      v42 = objc_msgSend_children(v32, v38, v39);
      v45 = objc_msgSend_count(v42, v43, v44);

      if (v45 == 2)
      {
        goto LABEL_15;
      }

LABEL_29:

      v27 = v97 + 1;
      digits = (digits + 96);
      v15 = v93;
      if (v97 + 1 == v92)
      {
        goto LABEL_36;
      }
    }

LABEL_15:
    v28->centerZ = 0.0;
    v46 = objc_msgSend_children(v32, v40, v41);
    v49 = objc_msgSend_count(v46, v47, v48);

    if (v49)
    {
      v52 = 0;
      v53 = digits;
      v54 = 99999.0;
      v55 = -99999.0;
      v96 = v32;
      do
      {
        v98 = v52 + 1;
        v28->numDigits = v52 + 1;
        v56 = objc_msgSend_children(v32, v50, v51);
        v99 = v52;
        v58 = objc_msgSend_objectAtIndexedSubscript_(v56, v57, v52);

        for (i = 0; i != 5; ++i)
        {
          v62 = objc_msgSend_children(v58, v59, v60);
          v64 = objc_msgSend_objectAtIndexedSubscript_(v62, v63, i);
          v67 = objc_msgSend_children(v64, v65, v66);
          v69 = objc_msgSend_objectAtIndexedSubscript_(v67, v68, 0);

          if (!v69)
          {
            goto LABEL_24;
          }

          v70 = objc_alloc(MEMORY[0x277CD71E0]);
          mtlDevice = self->_mtlDevice;
          v100 = 0;
          v73 = objc_msgSend_initWithMesh_device_error_(v70, v72, v69, mtlDevice, &v100);
          v74 = v100;
          v75 = v53->meshes[i];
          v53->meshes[i] = v73;

          objc_msgSend_boundingBox(v69, v76, v77);
          if (v54 >= v80)
          {
            v54 = v80;
          }

          objc_msgSend_boundingBox(v69, v78, v79);
          if (v55 < v81)
          {
            v55 = v81;
          }

          v28->centerZ = (v54 + v55) * 0.5;

          if (!v53->meshes[i])
          {
LABEL_24:
            v82 = _NTKLoggingObjectForDomain();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
            {
              *buf = 67109632;
              v102 = v97;
              v103 = 1024;
              v104 = v99;
              v105 = 1024;
              v106 = i;
              _os_log_fault_impl(&dword_23C099000, v82, OS_LOG_TYPE_FAULT, "Error loading or creating mesh for hour:%d digit:%d submesh:%d", buf, 0x14u);
            }
          }
        }

        v32 = v96;
        v85 = objc_msgSend_children(v96, v83, v84);
        v88 = objc_msgSend_count(v85, v86, v87);

        ++v53;
        v52 = v98;
      }

      while (v88 > v98);
    }

    goto LABEL_29;
  }

LABEL_36:
}

- (void)initRenderPipeline
{
  if (!self->_binaryArchive)
  {
    v4 = MEMORY[0x277CFA788];
    v5 = sub_23C09DC80(self);
    v7 = objc_msgSend_archiveWithName_bundle_device_(v4, v6, @"unity2025", v5, self->_mtlDevice);
    binaryArchive = self->_binaryArchive;
    self->_binaryArchive = v7;
  }

  v9 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], a2, v2);
  objc_msgSend_setName_(v9, v10, @"unity2025VertexShader");
  v14 = objc_msgSend_newFunctionInLibrary_withDescriptor_(self->_binaryArchive, v11, self->_library, v9);
  if (!v14)
  {
    v15 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_23C09FC28();
    }
  }

  v16 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v12, v13);
  objc_msgSend_setName_(v16, v17, @"unity2025FragmentShader");
  v19 = objc_msgSend_newFunctionInLibrary_withDescriptor_(self->_binaryArchive, v18, self->_library, v16);
  if (!v19)
  {
    v20 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_23C09FCB4();
    }
  }

  v21 = objc_alloc_init(MEMORY[0x277CD6F78]);
  objc_msgSend_setVertexFunction_(v21, v22, v14);
  objc_msgSend_setFragmentFunction_(v21, v23, v19);
  objc_msgSend_setDepthAttachmentPixelFormat_(v21, v24, 252);
  objc_msgSend_setRasterSampleCount_(v21, v25, 4);
  objc_msgSend_setLabel_(v21, v26, @"Unity2025 Render Pipeline");
  v29 = objc_msgSend_colorAttachments(v21, v27, v28);
  v31 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, 0);

  objc_msgSend_setPixelFormat_(v31, v32, self->_pixelFormat);
  objc_msgSend_setBlendingEnabled_(v31, v33, 0);
  v35 = objc_msgSend_newRenderPipelineStateForDevice_withDescriptor_(self->_binaryArchive, v34, self->_mtlDevice, v21);
  unity2025PipelineState = self->_unity2025PipelineState;
  self->_unity2025PipelineState = v35;

  v37 = objc_opt_new();
  objc_msgSend_setDepthCompareFunction_(v37, v38, 3);
  objc_msgSend_setDepthWriteEnabled_(v37, v39, 1);
  v42 = objc_msgSend_sharedDevice(MEMORY[0x277CFA798], v40, v41);
  v44 = objc_msgSend_newDepthStencilStateWithDescriptor_(v42, v43, v37);
  depthStencilState = self->_depthStencilState;
  self->_depthStencilState = v44;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  if ((NTKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_overrideDate, date);
  }
}

- (void)setState:(int)state
{
  if (self->_state != state)
  {
    if ((state - 1) >= 2)
    {
      v3 = 1.0 / self->_deviceFPS;
    }

    else
    {
      v3 = 0.0166666667;
    }

    self->_deltaTime = v3;
    if (state)
    {
      v4 = &OBJC_IVAR___NTKUnity2025Quad__triggerTwistAnimation;
      if (state == 2)
      {
        v5 = 1;
      }

      else
      {
        v4 = &OBJC_IVAR___NTKUnity2025Quad__twistTimerActive;
        v5 = 0;
      }

      *(&self->super.super.isa + *v4) = v5;
    }

    self->_state = state;
  }
}

- (void)setTritiumProgress:(double)progress
{
  self->_tritiumProgress = progress;
  self->_smoothedTritiumProgress = 0.0;
  tritiumProgress = self->_tritiumProgress;
  if (tritiumProgress > 0.0)
  {
    v4 = tritiumProgress;
    v5 = fminf(fmaxf(v4, 0.0), 1.0);
    v6 = (v5 * -2.0 + 3.0) * (v5 * v5);
    self->_smoothedTritiumProgress = v6;
  }
}

- (void)blendToFragmentUniformsWithIdx1:(int)idx1 idx2:(int)idx2 percent:(float)percent uniforms:(id *)uniforms
{
  v6 = 0;
  v7 = vdupq_lane_s64(COERCE__INT64(percent), 0);
  do
  {
    v8 = vcvtq_f64_f32(*(&unk_23C0A0B20 + 128 * idx1 + v6 * 4 + 80));
    *&uniforms->var0[v6] = vcvt_f32_f64(vmlaq_f64(v8, vsubq_f64(vcvtq_f64_f32(*(&unk_23C0A0B20 + 128 * idx2 + v6 * 4 + 80)), v8), v7));
    v6 += 2;
  }

  while (v6 != 8);
  v9 = (&unk_27E1EE120 + 64 * idx1);
  v10 = (&unk_27E1EE120 + 64 * idx2);
  *&uniforms->var1 = vmlaq_n_f32(v9[1], vsubq_f32(v10[1], v9[1]), percent);
  *&uniforms[1].var0[1] = vmlaq_n_f32(v9[2], vsubq_f32(v10[2], v9[2]), percent);
  *&uniforms[1].var0[5] = vmlaq_n_f32(v9[3], vsubq_f32(v10[3], v9[3]), percent);
  uniforms[1].var2 = percent;
}

- (void)morphBetweenColorways:(float)colorways index1:(int)index1 index2:(int)index2
{
  self->_editingColors = 1;
  self->_editingIndex1 = index1;
  self->_editingIndex2 = index2;
  self->_editingFraction = colorways;
  self->_state = 5;
  v5 = 2 * index1;
  v6 = (&unk_23C0A0B20 + 256 * index1);
  v7 = (&unk_23C0A0B20 + 256 * index2);
  *self->_backgroundColor = vmlaq_n_f32(v6[1], vsubq_f32(v7[1], v6[1]), colorways);
  if (colorways >= 0.5)
  {
    v5 = 2 * index2;
  }

  self->_isGreyscale = (v5 - 2) < 4;
  *self->_complicationForegroundColor = vmlaq_n_f32(*v6, vsubq_f32(*v7, *v6), colorways);
  if (index1 == index2)
  {
    self->_editingColors = 0;
    self->_currentSettingIdx = index1;
    self->_state = 4;
  }
}

@end