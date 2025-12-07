@interface REDirectMeshPayload
- (AABB)aabb;
- (FixedInlineArray<unsigned)payloadBufferSizes;
- (MeshCollection)makeMeshCollection:(SEL)collection;
- (MeshPayloadBuffers)meshPayloadBuffersWithDevice:(SEL)device;
- (NSArray)instances;
- (NSArray)models;
- (NSArray)parts;
- (REDirectMeshPayload)initWithCoder:(id)coder;
- (REDirectMeshPayload)initWithDirectMesh:(id)mesh;
- (unint64_t)totalPayloadSize;
- (void)encodeWithCoder:(id)coder;
- (void)makeBoundingBoxes:(void *)boxes perPartPerInstanceBoundingBoxes:(void *)boundingBoxes;
@end

@implementation REDirectMeshPayload

- (AABB)aabb
{
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *&retstr->var0.var0.var0.var0 = vnegq_f32(v4);
  *&retstr->var1.var0.var1[1] = v4;
  directMesh = [(REDirectMeshPayload *)self directMesh];
  if (directMesh)
  {
    PartCount = DRMeshGetPartCount();
    v21.i32[2] = 0;
    v21.i64[0] = 0;
    v20.i32[2] = 0;
    v20.i64[0] = 0;
    if (PartCount)
    {
      v7 = 0;
      v8.i64[0] = 0x7F0000007FLL;
      v8.i64[1] = 0x7F0000007FLL;
      v9.i64[0] = 0x7F0000007FLL;
      v9.i64[1] = 0x7F0000007FLL;
      v18 = vnegq_f32(v8);
      v19 = v9;
      do
      {
        if (DRMeshGetPartAt())
        {
          v11 = v20;
          v10 = v21;
          v12 = v18;
          v12.i32[3] = 0;
          v10.i32[3] = 0;
          v13 = vminnmq_f32(v12, v10);
          v14 = v19;
          v14.i32[3] = 0;
          v11.i32[3] = 0;
          v18 = v13;
          v19 = vmaxnmq_f32(v14, v11);
        }

        ++v7;
      }

      while (PartCount != v7);
    }

    else
    {
      v15.i64[0] = 0x7F0000007FLL;
      v15.i64[1] = 0x7F0000007FLL;
      v16.i64[0] = 0x7F0000007FLL;
      v16.i64[1] = 0x7F0000007FLL;
      v18 = vnegq_f32(v15);
      v19 = v16;
    }

    *&retstr->var0.var0.var0.var0 = v18;
    *&retstr->var1.var0.var1[1] = v19;
  }

  return result;
}

- (MeshCollection)makeMeshCollection:(SEL)collection
{
  v119 = *MEMORY[0x1E69E9840];
  directMesh = [(REDirectMeshPayload *)self directMesh];
  v50 = DRMeshCopyDescriptor();
  v65 = 0uLL;
  v66 = 0;
  PartCount = DRMeshGetPartCount();
  v51 = directMesh;
  v6 = DRMeshCopyDescriptor();
  v64 = 0;
  v61[1] = 0;
  v62 = 0;
  v61[0] = 0;
  v63 = 0;
  VertexAttributeCount = DRMeshDescriptorGetVertexAttributeCount();
  if (VertexAttributeCount != -1)
  {
    VertexAttributeCount = re::DynamicArray<re::NamedVertexBuffer>::setCapacity(v61, VertexAttributeCount + 1);
  }

  IndexType = DRMeshDescriptorGetIndexType();
  if (IndexType == 1)
  {
    v9 = 36;
  }

  else
  {
    v9 = 0;
  }

  if (!IndexType)
  {
    v9 = 49;
  }

  v70.i8[0] = v9;
  v70.i8[1] = 1;
  re::MeshPayloadBuffers::slice(a4, 4, 0, 0);
  v73.i32[0] = 0;
  v10 = DRMeshDescriptorGetIndexType();
  v11 = 4 * (v10 == 1);
  if (!v10)
  {
    v11 = 2;
  }

  v73.i32[1] = v11;
  re::DynamicArray<re::NamedVertexBuffer>::add(v61, &v68);
  if (v72 != -1)
  {
    (off_1F5CC8DB0[v72])(&v114, &v70.u32[2]);
  }

  LODWORD(v72) = -1;
  if (v68 && (BYTE8(v68) & 1) != 0)
  {
    (*(*v68 + 40))();
  }

  v12 = DRMeshDescriptorGetVertexAttributeCount();
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      LODWORD(v60) = 0;
      v114.i64[0] = 0;
      *__str = 0;
      *v113 = 0;
      *v56 = 0;
      v55[0] = 0;
      v67 = 0;
      if (DRMeshDescriptorGetVertexAttributeFormat())
      {
        VertexLayout = DRMeshDescriptorGetVertexLayout();
        if (VertexLayout)
        {
          if (v60 <= 0xC)
          {
            v15 = *(*(&off_1E871B370 + v60) + 1);
            v70.i8[0] = v114.i8[0];
            v70.i8[1] = 1;
            re::MeshPayloadBuffers::slice(a4, v56[0], v55[0], 0);
            v73.i64[0] = __PAIR64__(v67, *v113);
            re::DynamicArray<re::NamedVertexBuffer>::add(v61, &v68);
            if (v72 != -1)
            {
              (off_1F5CC8DB0[v72])(&v59, &v70.u32[2]);
            }

            LODWORD(v72) = -1;
            if (v68 && (BYTE8(v68) & 1) != 0)
            {
              (*(*v68 + 40))();
            }
          }
        }
      }
    }
  }

  v16 = v51;
  if (v62)
  {
    v17 = v64 + 40;
    v18 = 88 * v62;
    while (1)
    {
      v19 = (*(v17 - 32) & 1) != 0 ? *(v17 - 24) : (v17 - 31);
      if (!strcmp(v19, "indexTriangles"))
      {
        break;
      }

      v17 += 88;
      v18 -= 88;
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    v20 = DRMeshGetPartCount();
    if (v20)
    {
      v21 = 0;
      v22 = 0;
      v23.i64[0] = 0x7F0000007FLL;
      v23.i64[1] = 0x7F0000007FLL;
      v49 = vnegq_f32(v23);
      do
      {
        v59 = 0;
        v60 = 0;
        v57 = 0;
        v58 = 0;
        v56[2] = 0;
        *v56 = 0;
        LODWORD(v55[1]) = 0;
        v55[0] = 0;
        if (DRMeshGetPartAt())
        {
          v25 = v59;
          v24 = v60;
          v26 = DRMeshDescriptorGetIndexType();
          v27 = 4 * (v26 == 1);
          if (!v26)
          {
            v27 = 2;
          }

          re::MeshPayloadBuffers::slice(a4, 4, v24, v27 * v25);
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v17, &v68);
          *(v17 + 32) = v70.i64[0];
          v16 = v51;
          if (v69.i32[2] != -1)
          {
            (off_1F5CC8DB0[v69.u32[2]])(&v114, &v68);
          }

          v28 = snprintf(__str, 0x40uLL, "Part%zu", v22);
          v53 = 0;
          v54 = &str_67;
          v29 = strlen(__str);
          *v113 = *v56;
          *&v113[16] = *v55;
          v114 = xmmword_1E3047670;
          v115 = xmmword_1E3047680;
          v116 = xmmword_1E30476A0;
          v117 = xmmword_1E30474D0;
          WORD2(v67) = 0;
          LODWORD(v67) = 0;
          v30 = re::MeshPart::MeshPart(&v68, &v53, v58, v64, v62, v59, v59, 1, v113, v22, &v114, &v67, -1, 0);
          if (v53)
          {
            if (v53)
            {
            }
          }

          v53 = 0;
          v54 = &str_67;
          v104 = v57;
          v31 = *(&v65 + 1);
          if (*(&v65 + 1) <= v22)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v88 = 0;
          v87 = 0u;
          v84 = 0u;
          v82 = 0u;
          v80 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          DWORD2(v80) = 1;
          *&v82 = 0;
          v81 = 0uLL;
          DWORD2(v82) = 0;
          *&v84 = 0;
          v83 = 0uLL;
          DWORD2(v84) = 0;
          v85 = 0u;
          v86 = 0u;
          LODWORD(v87) = 0;
          memset(v89, 0, sizeof(v89));
          v90 = xmmword_1E3047670;
          v91 = xmmword_1E3047680;
          v92 = xmmword_1E30476A0;
          v93 = xmmword_1E30474D0;
          *&v32 = 0x7F0000007FLL;
          *(&v32 + 1) = 0x7F0000007FLL;
          v94 = v49;
          v95 = v32;
          v97 = 0;
          v96 = 0;
          v98 = 0;
          v101 = 0;
          v102 = &str_67;
          v103 = 0;
          v104 = 3;
          v105 = 0x180197E00000001;
          v99 = -1;
          v100[0] = -1;
          *(v100 + 5) = -1;
          v31 = *(&v65 + 1);
          if (*(&v65 + 1) <= v22)
          {
            *v113 = 0;
            v117 = 0uLL;
            v118 = 0uLL;
            v115 = 0uLL;
            v116 = 0uLL;
            v114 = 0uLL;
            v39 = MEMORY[0x1E69E9C10];
            v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *__str = 136315906;
            *&__str[4] = "operator[]";
            v107 = 1024;
            if (v40)
            {
              v41 = 3;
            }

            else
            {
              v41 = 2;
            }

            v108 = 468;
            v109 = 2048;
            v110 = v22;
            v111 = 2048;
            v112 = v31;
            _os_log_send_and_compose_impl(v41, v113, &v114, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __str, 38, v45, v46);
            _os_crash_msg();
            __break(1u);
LABEL_59:
            v67 = 0;
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v114 = 0u;
            v42 = MEMORY[0x1E69E9C10];
            v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v113 = 136315906;
            *&v113[4] = "operator[]";
            *&v113[12] = 1024;
            if (v43)
            {
              v44 = 3;
            }

            else
            {
              v44 = 2;
            }

            *&v113[14] = 468;
            *&v113[18] = 2048;
            *&v113[20] = v22;
            *&v113[28] = 2048;
            *&v113[30] = v31;
            _os_log_send_and_compose_impl(v44, &v67, &v114, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v113, 38, v45, v46);
            _os_crash_msg();
            __break(1u);
          }
        }

        v33 = re::MeshPart::operator=(v66 + v21, &v68);
        if (v101)
        {
          if (v101)
          {
          }
        }

        v102 = &str_67;
        v101 = 0;
        re::FixedArray<re::StringID>::deinit(v89);
        re::AttributeTable::~AttributeTable(&v68);
        ++v22;
        v21 += 544;
      }

      while (v20 != v22);
    }

    v34 = 0;
    v35.i64[0] = 0x7F0000007FLL;
    v35.i64[1] = 0x7F0000007FLL;
    v69 = vnegq_f32(v35);
    v70 = v35;
    *&v72 = 0;
    v71 = 0uLL;
    v73 = v69;
    v74 = v35;
    *&v76 = 0;
    v75 = 0uLL;
    do
    {
      v36 = &v68 + v34;
      *(v36 + 18) = 0;
      *(v36 + 22) = 0;
      v34 += 40;
    }

    while (v34 != 720);
    *&v68 = 149034514;
    *(&v68 + 1) = "Model";
    v37 = objc_msgSend_aabb(self);
    v69 = v114;
    v70 = v115;
    v71 = v65;
    v65 = 0uLL;
    *&v72 = v66;
    v66 = 0;
    retstr->var0.var4 = 0;
    retstr->var0.var1 = 0;
    retstr->var0.var2 = 0;
    retstr->var0.var3 = 0;
    re::DynamicArray<re::MeshModel>::setCapacity(retstr, 1uLL);
    ++retstr->var0.var3;
    re::DynamicArray<re::MeshModel>::add(retstr, &v68);
    re::MeshModel::~MeshModel(&v68);
  }

  else
  {
LABEL_33:
    retstr->var0.var4 = 0;
    retstr->var0.var1 = 0;
    retstr->var0.var2 = 0;
    retstr->var0.var0 = 0;
    retstr->var0.var3 = 0;
  }

  re::DynamicArray<re::NamedVertexBuffer>::deinit(v61);
  re::FixedArray<re::MeshPart>::deinit(&v65);

  return result;
}

- (void)makeBoundingBoxes:(void *)boxes perPartPerInstanceBoundingBoxes:(void *)boundingBoxes
{
  v36 = *MEMORY[0x1E69E9840];
  objc_msgSend_aabb(self);
  if (!*(boxes + 1))
  {
    goto LABEL_11;
  }

  v7 = *(boxes + 2);
  *v7 = v20;
  v7[1] = v21;
  directMesh = [(REDirectMeshPayload *)self directMesh];
  PartCount = DRMeshGetPartCount();

  if (PartCount)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      objc_msgSend_aabb(self);
      v13 = *(boundingBoxes + 1);
      if (v13 <= v12)
      {
        break;
      }

      v14 = (*(boundingBoxes + 2) + v11);
      *v14 = v20;
      v14[1] = v21;
      ++v12;
      v11 += 32;
      if (PartCount == v12)
      {
        return;
      }
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = v12;
    v29 = 2048;
    v30 = v13;
    _os_log_send_and_compose_impl(v16, &v22, &v31, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v20, *(&v20 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_11:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v26 = 468;
    v27 = 2048;
    v28 = 0;
    v29 = 2048;
    v30 = 0;
    _os_log_send_and_compose_impl(v19, &v22, &v31, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v20, *(&v20 + 1));
    _os_crash_msg();
    __break(1u);
  }
}

- (REDirectMeshPayload)initWithDirectMesh:(id)mesh
{
  meshCopy = mesh;
  v9.receiver = self;
  v9.super_class = REDirectMeshPayload;
  v5 = [(RESharedResourcePayload *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(REDirectMeshPayload *)v5 setDirectMesh:meshCopy];
    v7 = DRMeshAsResource();
    DRResourceGetIdentifier();
  }

  return v6;
}

- (REDirectMeshPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = REDirectMeshPayload;
  v5 = [(RESharedResourcePayload *)&v14 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
    v11 = {;
    [coderCopy failWithError:v11];

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v9 = v7;
  if (!v7)
    v12 = {;
    [coderCopy failWithError:v12];

    goto LABEL_8;
  }

  [v7 getUUIDBytes:v5->_identifier];

LABEL_5:
  v10 = v5;
LABEL_9:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:self->_identifier];
    [coderCopy encodeObject:v6 forKey:@"identifier"];
  }

  else
  {
    v7 = *re::assetTypesLogObjects(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_FAULT, "REDirectMeshPayload requires an NSXPCCoder", v8, 2u);
    }
  }
}

- (FixedInlineArray<unsigned)payloadBufferSizes
{
  v4 = DRMeshCopyDescriptor();
  DRMeshDescriptorCalculateBufferSizes();

  retstr->var0[6] = 0;
  retstr->var0[7] = 0;
  retstr->var0[4] = 0;
  retstr->var0[5] = 0;
  *retstr->var0 = 0u;
  *&retstr->var0[2] = 0u;
  return result;
}

- (unint64_t)totalPayloadSize
{
  v2 = DRMeshCopyDescriptor();
  DRMeshDescriptorCalculateBufferSizes();

  v3.i64[0] = 0;
  return vaddvq_s64(vaddq_s64(0, vaddq_s64(0, v3)));
}

- (MeshPayloadBuffers)meshPayloadBuffersWithDevice:(SEL)device
{
  v6 = a4;
  directMesh = self->_directMesh;
  if (directMesh)
  {
    if (v6)
    {
      v24 = 0uLL;
      v25 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v8 = DRMeshReadIndicesUsing();
      *buf = v8;
      v9 = v8;
      NS::SharedPtr<MTL::Texture>::operator=(&v24, buf);
      if (*buf)
      {

        *buf = 0;
      }

      v10 = 0;
      v11 = &v22;
      do
      {
        v12 = DRMeshReadVerticesUsing();
        *buf = v12;
        v13 = v12;
        NS::SharedPtr<MTL::Texture>::operator=(v11, buf);
        if (*buf)
        {

          *buf = 0;
        }

        ++v10;
        ++v11;
      }

      while (v10 != 4);
      for (i = 0; i != 64; i += 8)
      {
        *(&retstr->var0.var0.var0.var2.var1.var0.var0[0].var0 + i) = *(&v22 + i);
      }

      retstr->var0.var0.var1 = 0;
      for (j = 56; j != -8; j -= 8)
      {
        v16 = *(&v22 + j);
        if (v16)
        {

          *(&v22 + j) = 0;
        }
      }
    }

    else
    {
      v32 = 0uLL;
      v33 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v17 = *re::foundationCoreLogObjects(directMesh);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "REDirectMeshPayload.meshPayloadBuffersWithDevice has no CPU implementation.", buf, 2u);
      }

      for (k = 0; k != 24; k += 3)
      {
        *(&retstr->var0.var0.var0.var0 + k * 8) = *(&v22 + k * 8);
        retstr->var0.var0.var0.var1.var0.var0[k + 2].var0 = *(&v22 + k * 8 + 16);
      }

      retstr->var0.var0.var1 = 1;
      for (m = 184; m != -8; m -= 24)
      {
        v20 = *(&v22 + m);
        if (v20)
        {

          *(&v22 + m) = 0;
        }
      }
    }
  }

  else
  {
    *&retstr->var0.var0.var1 = 0;
    *(&retstr->var0.var0.var0.var2.var2 + 10) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 11) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 8) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 9) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 6) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 7) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 4) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 5) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 2) = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 3) = 0u;
    *&retstr->var0.var0.var0.var0 = 0u;
    *(&retstr->var0.var0.var0.var2.var2 + 1) = 0u;
  }

  return result;
}

- (NSArray)parts
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "[REDirectMeshPayload parts]", 203);
  result = _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
  return result;
}

- (NSArray)models
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "[REDirectMeshPayload models]", 209);
  result = _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
  return result;
}

- (NSArray)instances
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_directMesh)
  {
    v2 = [REMeshInstanceDescriptor alloc];
    v3 = [(REMeshInstanceDescriptor *)v2 initWithName:@"Model" modelIndex:0 transform:*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)];
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

@end