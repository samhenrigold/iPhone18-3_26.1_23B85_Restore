char *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferView::contents(void)::$_0,re::BufferView::contents(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,MTL::Buffer *,re::BufferSliceSourceCPU const*> const&>(uint64_t **a1, char **a2)
{
  result = *a2;
  if (*a2)
  {
    v4 = **a1;
    return [result contents] + *(v4 + 16);
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferView::contents(void)::$_0,re::BufferView::contents(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,MTL::Buffer *,re::BufferSliceSourceCPU const*> const&>(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    return *(*(*a1 + 8) + 16) + *(*a2 + 8);
  }

  else
  {
    return 0;
  }
}

id std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferView::sourceLength(void)::$_0,re::BufferView::sourceLength(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,MTL::Buffer *,re::BufferSliceSourceCPU const*> const&>(uint64_t a1, id *a2)
{
  result = *a2;
  if (*a2)
  {
    return [result length];
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::BufferView::sourceLength(void)::$_0,re::BufferView::sourceLength(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,MTL::Buffer *,re::BufferSliceSourceCPU const*> const&>(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    return **a2;
  }

  else
  {
    return 0;
  }
}

void *re::introspect_REMeshOffsetsBlendingMode(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Additive";
    re::introspect_REMeshOffsetsBlendingMode(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Override";
    qword_1EE1C62C8 = v12;
  }

  {
    v13 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_REMeshOffsetsBlendingMode(BOOL)::info, "REMeshOffsetsBlendingMode", 4, 4, 1, 1);
    *v13 = &unk_1F5D0C658;
    *(v13 + 8) = &re::introspect_REMeshOffsetsBlendingMode(BOOL)::enumTable;
    *(v13 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_REMeshOffsetsBlendingMode(BOOL)::isInitialized)
    {
      return &re::introspect_REMeshOffsetsBlendingMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::introspect_REMeshOffsetsBlendingMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::introspect_REMeshOffsetsBlendingMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_REMeshOffsetsBlendingMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_REMeshOffsetsBlendingMode(BOOL)::info;
    }
  }

  re::introspect_REMeshOffsetsBlendingMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_REMeshOffsetsBlendingMode(BOOL)::info, a2);
  v14[0] = 0x3D7D20A70EDE8D68;
  v14[1] = "REMeshOffsetsBlendingMode";
  xmmword_1EE1C6298 = v15;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_REMeshOffsetsBlendingMode(BOOL)::info;
}

void *re::allocInfo_MeshLodLevelInfo(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_463, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_463))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9D60, "MeshLodLevelInfo");
    __cxa_guard_release(&_MergedGlobals_463);
  }

  return &unk_1EE1B9D60;
}

void re::initInfo_MeshLodLevelInfo(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xCB9A0A380331B57CLL;
  v20[1] = "MeshLodLevelInfo";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1B9D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9D40))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_float(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "minScreenArea";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B9D48 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "maxViewDepth";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B9D50 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicArray<unsigned long long>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "meshPartIndices";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000004;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B9D58 = v18;
    __cxa_guard_release(&qword_1EE1B9D40);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B9D48;
  *(this + 9) = re::internal::defaultConstruct<re::MeshLodLevelInfo>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshLodLevelInfo>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshLodLevelInfo>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshLodLevelInfo>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::MeshLodLevelInfo>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
}

uint64_t re::internal::defaultConstructV2<re::MeshLodLevelInfo>(uint64_t result)
{
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t re::selectMeshLodByScreenArea(float32x4_t *a1, float32x4_t *a2, float *a3, uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a1[2].i64[1];
  if (v5)
  {
    v6 = a1[1];
    v7 = vcgtq_f32(*a1, v6);
    v7.i32[3] = v7.i32[2];
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v9 = vmulq_f32(vaddq_f32(*a1, v6), v8);
    v10 = v9.i64[1];
    if ((vmaxvq_u32(v7) & 0x80000000) == 0)
    {
      v11 = *v9.f32;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *v12.f32 = v11;
    v12.i64[1] = v10;
    v13 = a2[1];
    v14 = a2[2];
    v15 = a2[3];
    v16 = vaddq_f32(v15, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, v11.f32[0]), v13, v11, 1), v14, v12, 2));
    v17 = vdivq_f32(v16, vdupq_laneq_s32(v16, 3));
    v18 = vaddq_f32(v15, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*a1)), v13, *a1->f32, 1), v14, *a1, 2));
    v19 = vsubq_f32(vdivq_f32(v18, vdupq_laneq_s32(v18, 3)), v17);
    v20 = vmulq_f32(v19, v19);
    v21 = vmulq_f32(v17, v17);
    v22 = vadd_f32(vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)), vadd_f32(vzip1_s32(*v20.i8, *v21.i8), vzip2_s32(*v20.i8, *v21.i8)));
    v24 = COERCE_DOUBLE(vcgt_f32(vdup_lane_s32(v22, 1), v22));
    v23 = LOBYTE(v24);
    LODWORD(v24) = 1.0;
    if (v23)
    {
      v25 = a3[1] / ((a3[5] - a3[6]) * 0.5);
      *&v24 = (((v25 * (v25 * 3.1416)) * *v22.i32) / (*&v22.i32[1] - *v22.i32)) * 0.25;
      if (*&v24 > 1.0)
      {
        *&v24 = 1.0;
      }

      if (*&v24 < 0.0)
      {
        *&v24 = 0.0;
      }
    }

    if (v5)
    {
      v26 = 0;
      v27 = a1[3].i64[0];
      while (v5 != v26)
      {
        if (*&v24 >= *v27)
        {
          goto LABEL_19;
        }

        ++v26;
        v27 += 12;
        if (v5 == v26)
        {
          return 0;
        }
      }

      v37 = 0;
      memset(v46, 0, sizeof(v46));
      v29 = MEMORY[0x1E69E9C10];
      v38 = 136315906;
      v39 = "operator[]";
      v40 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v41 = 476;
      v42 = 2048;
      v43 = v5;
      v44 = 2048;
      v45 = v5;
      _os_log_send_and_compose_impl(v30, &v37, v46, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v35, v36);
      _os_crash_msg();
      __break(1u);
      goto LABEL_27;
    }

    LODWORD(v26) = 0;
LABEL_19:
    if (v26 == v5)
    {
      return 0;
    }

    if (!a5)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (!a5)
    {
LABEL_27:
      re::internal::assertLog(6, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v33);
      __break(1u);
LABEL_28:
      re::internal::assertLog(6, a2, a3, a4, v24, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v34);
      __break(1u);
    }

    LOBYTE(v26) = 0;
  }

  *a4 = v26;
  result = 1;
  *(a4 + 1) = 1;
  *(a4 + 2) = -1;
  return result;
}

uint64_t re::selectMeshLodByViewDepth(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a1[2].i64[1];
  if (v4)
  {
    v5 = a1[1];
    v6 = vcgtq_f32(*a1, v5);
    v6.i32[3] = v6.i32[2];
    v7 = vaddq_f32(*a1, v5);
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v8 = vmulq_f32(v7, v5);
    v9 = v8.i32[2];
    v10 = v8.i64[0];
    if ((vmaxvq_u32(v6) & 0x80000000) != 0)
    {
      v9 = 0;
      v10 = 0;
    }

    if (v4)
    {
      v11 = 0;
      v12 = *(a2 + 8);
      v12.i32[1] = *(a2 + 24);
      v12.i32[2] = *(a2 + 40);
      v12.i32[3] = *(a2 + 56);
      v13.i64[0] = v10;
      v13.i64[1] = __PAIR64__(1.0, v9);
      v14 = vmulq_f32(v12, v13);
      v15 = fabsf(vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL))));
      v16 = (a1[3].i64[0] + 4);
      while (v4 != v11)
      {
        if (v15 <= *v16)
        {
          goto LABEL_13;
        }

        ++v11;
        v16 += 12;
        if (v4 == v11)
        {
          return 0;
        }
      }

      v26 = 0;
      memset(v35, 0, sizeof(v35));
      v18 = MEMORY[0x1E69E9C10];
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v30 = 476;
      v31 = 2048;
      v32 = v4;
      v33 = 2048;
      v34 = v4;
      _os_log_send_and_compose_impl(v19, &v26, v35, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v24, v25);
      _os_crash_msg();
      __break(1u);
      goto LABEL_21;
    }

    LODWORD(v11) = 0;
LABEL_13:
    if (v11 == v4)
    {
      return 0;
    }

    if (!a4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (!a4)
    {
LABEL_21:
      re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v22);
      __break(1u);
LABEL_22:
      re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v23);
      __break(1u);
    }

    LOBYTE(v11) = 0;
  }

  *a3 = v11;
  result = 1;
  *(a3 + 1) = 1;
  *(a3 + 2) = -1;
  return result;
}

uint64_t (***re::DrawCallHandler::registerHandler(uint64_t a1, uint64_t a2, void *a3))(void)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v5 = *(*a2 + 32);
  v6 = a3;
  v7 = v5(a2, 8, 8);
  *v7 = 0;
  v8 = _Block_copy(v6);
  v9 = *v7;
  *v7 = v8;

  *(a1 + 8) = v7;
  v11 = re::globalAllocators(v10)[2];
  v14[0] = &unk_1F5D09118;
  v14[3] = v11;
  v14[4] = v14;
  v12 = *(*a2 + 16);

  v12(a2, v7, v14);
  return re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v14);
}

void *re::internal::Callable<re::DrawCallHandler::registerHandler(re::Allocator &,void({block_pointer})(objc_object  {objcproto23MTLRenderCommandEncoder}*,re::DrawCallHandlerContext))::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09118;
  return result;
}

void *re::internal::Callable<re::DrawCallHandler::registerHandler(re::Allocator &,void({block_pointer})(objc_object  {objcproto23MTLRenderCommandEncoder}*,re::DrawCallHandlerContext))::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09118;
  return result;
}

re::RenderGraph *re::RenderGraph::RenderGraph(re::RenderGraph *this, const char *a2, unint64_t a3, const char *a4, const char *a5, uint64_t a6)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  v12 = re::DynamicArray<float *>::setCapacity(this, a3);
  ++*(this + 6);
  *(this + 9) = 0;
  *(this + 10) = &str_67;
  *(this + 11) = 0;
  *(this + 12) = &str_67;
  *(this + 13) = a6;
  return this;
}

void re::RenderGraph::~RenderGraph(re::RenderGraph *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::RenderGraphNodeBase>("~RenderGraph", 28, v5);
      v4 -= 8;
    }

    while (v4);
  }

  *(this + 2) = 0;
  ++*(this + 6);
  re::StringID::destroyString((this + 88));
  re::StringID::destroyString((this + 72));
  re::DynamicString::deinit((this + 40));
  re::DynamicArray<unsigned long>::deinit(this);
}

void re::RenderGraph::setup(uint64_t this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v3 = *(this + 16);
  if (v3)
  {
    v6 = *(this + 32);
    v7 = 8 * v3;
    do
    {
      v8 = *v6;
      if (*(*v6 + 64) == 1)
      {
        re::RenderGraphBuilder::startNode(a2, *v6);
        (*(*v8 + 88))(v8, a2, a3);
        if (*(v8 + 65) == 1)
        {
          re::RenderGraphBuilder::handleAutoMsaaTargets(a2);
        }

        if (*(v8 + 66) == 1)
        {
          re::RenderGraphBuilder::handleForceResolve(a2);
        }

        if (*(v8 + 67) == 1)
        {
          *(a2 + 595) = 1;
        }

        if (*(a2 + 617))
        {
          re::RenderGraphBuilder::handleProgrammableBlendingTargets(a2);
        }

        re::RenderGraphBuilder::finishNode(a2, v8);
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }
}

void re::makeCompilingVisualsRenderPipeline(uint64_t a1, unsigned int *a2, _BYTE *a3, void **a4, void **a5)
{
  v8 = *(a1 + 48);
  re::ShaderManager::makeRenderPipelineDescriptor(&v28, v8);
  [v28 setLabel_];
  [v28 setRasterSampleCount_];
  [v28 setInputPrimitiveTopology_];
  v21 = a1;
  if (*(a1 + 366) == 1)
  {
    [v28 setMaxVertexAmplificationCount_];
  }

  v9 = 0;
  v10 = a2 + 1;
  do
  {
    if (v10[v9])
    {
      [objc_msgSend(objc_msgSend(v28 colorAttachments)];
      [objc_msgSend(objc_msgSend(v28 colorAttachments)];
      [objc_msgSend(objc_msgSend(v28 colorAttachments)];
    }

    ++v9;
  }

  while (v9 != 8);
  v11 = a2[9];
  if (v11 - 250 > 0xA || ((1 << (v11 + 6)) & 0x425) == 0)
  {
    v13 = 0;
  }

  else
  {
    [v28 setDepthAttachmentPixelFormat_];
    v13 = 1;
  }

  v14 = 0;
  if (a2[10] - 253 <= 9 && ((1 << (*(a2 + 40) + 3)) & 0x385) != 0)
  {
    [v28 setStencilAttachmentPixelFormat_];
    v14 = 1;
  }

  v15 = [objc_msgSend(MEMORY[0x1E6974050] alloc)];
  v16 = v15;
  if (v13)
  {
    [v15 setDepthCompareFunction_];
    [v16 setDepthWriteEnabled_];
  }

  if (v14)
  {
    if (*a3 == 1)
    {
      v17 = [objc_msgSend(MEMORY[0x1E6974190] alloc)];
      [v17 setReadMask_];
      [v17 setWriteMask_];
      [v17 setStencilCompareFunction_];
      [v17 setStencilFailureOperation_];
      [v17 setDepthFailureOperation_];
      [v17 setDepthStencilPassOperation_];
      [v16 setFrontFaceStencil_];
      if (v17)
      {
      }
    }

    if (a3[8] == 1)
    {
      v18 = [objc_msgSend(MEMORY[0x1E6974190] alloc)];
      [v18 setReadMask_];
      [v18 setWriteMask_];
      [v18 setStencilCompareFunction_];
      [v18 setStencilFailureOperation_];
      [v18 setDepthFailureOperation_];
      [v18 setDepthStencilPassOperation_];
      [v16 setBackFaceStencil_];
      if (v18)
      {
      }
    }
  }

  v27 = [*(v21 + 208) newDepthStencilStateWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=(a5, &v27);
  if (v27)
  {
  }

  re::ShaderManager::makeFunctionDescriptor(&v27, v8);
  v19 = MEMORY[0x1E696AEC0];
  [v27 setName_];
  re::ShaderManager::makeFunctionWithDescriptor(v8, v8[46], &v27, &v26);
  re::ShaderManager::makeFunctionDescriptor(&v25, v8);
  [v25 setName_];
  re::ShaderManager::makeFunctionWithDescriptor(v8, v8[46], &v25, &v24);
  [v28 setVertexFunction_];
  [v28 setFragmentFunction_];
  re::mtl::Device::makeRenderPipelineState((v21 + 208), v28, 0, &v23);
  NS::SharedPtr<MTL::Texture>::operator=(a4, &v23);
  if (v23)
  {
  }

  if (v24)
  {
  }

  if (v25)
  {
  }

  if (v26)
  {
  }

  if (v27)
  {
  }

  if (v16)
  {
  }

  if (v28)
  {
  }
}

void *re::allocInfo_DeformationDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B9DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9DF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9E80, "DeformationDefinition");
    __cxa_guard_release(&qword_1EE1B9DF8);
  }

  return &unk_1EE1B9E80;
}

void re::initInfo_DeformationDefinition(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x6DEEB11F44CBF546;
  v16[1] = "DeformationDefinition";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1B9E00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9E00))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "deformerName";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B9E30 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::FixedArray<unsigned char>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "deformationOptions";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B9E38 = v14;
    __cxa_guard_release(&qword_1EE1B9E00);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B9E30;
  *(this + 9) = re::internal::defaultConstruct<re::DeformationDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DeformationDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::DeformationDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::DeformationDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::DeformationDefinition>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
}

void re::internal::defaultDestruct<re::DeformationDefinition>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::DeformationDefinition>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void re::internal::defaultDestructV2<re::DeformationDefinition>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_DeformationStackDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B9E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9E10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9F10, "DeformationStackDefinition");
    __cxa_guard_release(&qword_1EE1B9E10);
  }

  return &unk_1EE1B9F10;
}

void re::initInfo_DeformationStackDefinition(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v10[0] = 0x9F611EC88668AD56;
  v10[1] = "DeformationStackDefinition";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1B9E20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9E20))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::DeformationDefinition>>::get(v7);
    v8 = (*(*v7 + 32))(v7, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "deformationStack";
    *(v8 + 16) = &qword_1EE1B9E40;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1B9E18 = v8;
    __cxa_guard_release(&qword_1EE1B9E20);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B9E18;
  *(this + 9) = re::internal::defaultConstruct<re::DeformationStackDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DeformationStackDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::DeformationStackDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::DeformationStackDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v9 = v11;
}

void re::IntrospectionInfo<re::DynamicArray<re::DeformationDefinition>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B9E28, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B9E28);
    if (a1)
    {
      re::IntrospectionDynamicArray<re::DeformationDefinition>::IntrospectionDynamicArray();
      __cxa_guard_release(&qword_1EE1B9E28);
    }
  }

  if ((_MergedGlobals_464 & 1) == 0)
  {
    v1 = qword_1EE1B9E08;
    if (qword_1EE1B9E08 || (v1 = re::allocInfo_DeformationDefinition(a1), qword_1EE1B9E08 = v1, re::initInfo_DeformationDefinition(v1, v2, v3, v4), (_MergedGlobals_464 & 1) == 0))
    {
      _MergedGlobals_464 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B9E40, 0);
      qword_1EE1B9E50 = 0x2800000003;
      dword_1EE1B9E58 = v5;
      word_1EE1B9E5C = 0;
      *&xmmword_1EE1B9E60 = 0;
      *(&xmmword_1EE1B9E60 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B9E70 = v1;
      qword_1EE1B9E78 = 0;
      qword_1EE1B9E40 = &unk_1F5D09170;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1B9E40);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1B9E60 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::DeformationStackDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::DeformationStackDefinition>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t re::IntrospectionDynamicArray<re::DeformationDefinition>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1B9E40, 0);
  *(&qword_1EE1B9E50 + 6) = 0;
  qword_1EE1B9E50 = 0;
  *&xmmword_1EE1B9E60 = 0;
  *(&xmmword_1EE1B9E60 + 1) = 0xFFFFFFFFLL;
  qword_1EE1B9E40 = &unk_1F5CADA48;
  qword_1EE1B9E78 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1B9E70);
  qword_1EE1B9E40 = &unk_1F5D09170;
  return result;
}

void *re::IntrospectionDynamicArray<re::DeformationDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DeformationDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DeformationDefinition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DeformationDefinition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DeformationDefinition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DeformationDefinition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::DeformationDefinition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DeformationDefinition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::DeformationDefinition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DeformationDefinition>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  re::DynamicArray<re::DeformationDefinition>::add(this, v11);
  v8 = v12;
  if (v12)
  {
    if (v13)
    {
      v8 = (*(*v12 + 40))();
      v13 = 0;
      v14 = 0;
    }

    v12 = 0;
  }

  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 40 * *(this + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::DeformationDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void re::DynamicArray<re::DeformationDefinition>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 40 * a2;
    v9 = a2;
    do
    {
      v10 = (*(a1 + 32) + v8);
      re::FixedArray<CoreIKTransform>::deinit(v10 + 2);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 40;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::DeformationDefinition>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *v7 = 0;
        v7[1] = &str_67;
        v7[3] = 0;
        v7[4] = 0;
        v7[2] = 0;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::DeformationDefinition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::DeformationDefinition>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::DeformationDefinition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::DeformationDefinition>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::DeformationDefinition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 40 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::RenderManager::RenderManager(re::RenderManager *this)
{
  *this = 1;
  v2 = this + 317;
  *(this + 1) = 0;
  *(this + 2) = &str_67;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 1;
  *(this + 102) = 0;
  *(this + 26) = 0;
  v3 = re::globalAllocators(this);
  *(this + 30) = v3[2];
  *(this + 31) = 0;
  *(this + 16) = xmmword_1E3054760;
  *(this + 17) = xmmword_1E3054770;
  *(this + 37) = 0x101010101010101;
  *(this + 38) = 0x101010101010101;
  *(this + 36) = 32505856;
  *(this + 78) = 257;
  *(this + 316) = 1;
  *v2 = 0;
  *(v2 + 4) = 0x100010001000001;
  *(this + 329) = 0;
  *(this + 331) = 0;
  *(this + 83) = 40;
  *(this + 168) = 257;
  *(this + 338) = 1;
  *(this + 44) = 0;
  *(this + 90) = 1;
  *(this + 369) = 0;
  *(this + 364) = 0;
  v4 = re::globalAllocators(v3);
  *(this + 51) = v4[2];
  *(this + 52) = 0;
  *(this + 424) = 0;
  {
    if (v4)
    {
      re::introspect<re::TriangleFillModeData>(BOOL)::info = re::introspect_TriangleFillModeData(0, v7, v8, v9, v10, v11);
    }
  }

  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 1328, 16);
  re::TargetDisplayInfoProvider::TargetDisplayInfoProvider(v6);
}

void re::RenderManager::~RenderManager(re::RenderManager *this)
{
  re::internal::destroyPersistent<re::TargetDisplayInfoProvider>("~RenderManager", 63, *(this + 43));
  *(this + 43) = 0;
  re::FunctionBase<24ul,BOOL ()(void)>::destroyCallable(this + 384);
  v2 = *(this + 44);
  if (v2)
  {

    *(this + 44) = 0;
  }

  re::FunctionBase<24ul,void ()(void)>::destroyCallable(this + 216);

  re::StringID::destroyString((this + 8));
}

re *re::internal::destroyPersistent<re::TargetDisplayInfoProvider>(re *result, uint64_t a2, re::TargetDisplayInfoProvider *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::TargetDisplayInfoProvider::~TargetDisplayInfoProvider(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t (***re::RenderManager::deinit(re::RenderManager *this))(void)
{
  v102 = *MEMORY[0x1E69E9840];
  v2 = *(this + 14);
  if (v2 && (*(v2 + 787) & 1) == 0)
  {
    re::DrawingManager::prepareForDeinit(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    re::ShaderManager::prepareForDeinit(v3);
  }

  re::FrameManager::prepareForDeinit(*(this + 18));
  v5 = *(this + 14);
  if (v5)
  {
    re::DrawingManager::deinit(v5);
    v6 = *(this + 14);
    if (v6)
    {
      v7 = re::globalAllocators(v5)[2];
      re::DrawingManager::~DrawingManager(v6);
      v5 = (*(*v7 + 40))(v7, v6);
    }

    *(this + 14) = 0;
  }

  *(this + 22) = 0;
  v8 = *(this + 23);
  if (v8)
  {
    v9 = re::globalAllocators(v5)[2];
    v10 = 4368;
    do
    {
      v11 = v8 + v10;
      *(v11 - 208) = 0;
      *(v11 - 200) = *(v8 + v10 - 200) + 1;
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v8 + v10 - 64));
      *(v11 - 224) = 0;
      *(v11 - 216) = 0;
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v8 + v10 - 64));
      *(v11 - 208) = 0;
      ++*(v11 - 200);
      *(v11 - 1440) = 0;
      ++*(v11 - 1432);
      re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit((v8 + v10 - 272));
      *(v8 + v10 - 1456) = 0;
      *(v11 - 1448) = 0;
      v12 = re::HashTable<unsigned long long,re::LateLatchingManager::AnchorEntry,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit((v8 + v10 - 272));
      *(v11 - 1440) = 0;
      ++*(v11 - 1432);
      v10 -= 1456;
    }

    while (v10);
    v5 = (*(*v9 + 40))(v9, v8, v12);
    *(this + 23) = 0;
  }

  v13 = *(this + 24);
  if (v13)
  {
    v14 = re::globalAllocators(v5)[2];
    re::FixedArray<CoreIKTransform>::deinit((v13 + 584));
    v15 = *(v13 + 576);
    if (v15)
    {

      *(v13 + 576) = 0;
    }

    re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v13 + 528));
    re::DynamicArray<unsigned long>::deinit(v13 + 488);
    re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::deinit((v13 + 440));
    v16 = *(v13 + 432);
    if (v16)
    {

      *(v13 + 432) = 0;
    }

    v17 = *(v13 + 424);
    if (v17)
    {

      *(v13 + 424) = 0;
    }

    v18 = *(v13 + 416);
    if (v18)
    {

      *(v13 + 416) = 0;
    }

    re::MeshShadowGenerationBacklog::~MeshShadowGenerationBacklog((v13 + 320));
    re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit((v13 + 272));
    re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit((v13 + 224));
    re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit((v13 + 176));
    v19 = re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::deinit((v13 + 128));
    v20 = *(v13 + 88);
    if (v20)
    {
      if (*(v13 + 120))
      {
        (*(*v20 + 40))(v20, v19);
      }

      *(v13 + 120) = 0;
      *(v13 + 96) = 0;
      *(v13 + 104) = 0;
      *(v13 + 88) = 0;
      ++*(v13 + 112);
    }

    re::DynamicArray<unsigned long>::deinit(v13 + 48);
    std::unique_ptr<re::MeshPart,std::function<void ()(re::MeshPart*)>>::~unique_ptr[abi:nn200100]((v13 + 8));
    (*(*v14 + 40))(v14, v13);
    *(this + 24) = 0;
  }

  v21 = *(this + 3);
  if (v21)
  {
    v22 = re::MaterialManager::deinit(v21);
    v23 = *(this + 3);
    if (v23)
    {
      v24 = re::globalAllocators(v22)[2];
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v23 + 1200));
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v23 + 1152));
      re::DataArray<re::MaterialParameterBlock>::deinit(v23 + 1088);
      re::DynamicArray<unsigned long>::deinit(v23 + 1088);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v23 + 1040));
      v25.n128_f64[0] = re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(v23 + 976);
      v26 = *(v23 + 912);
      if (v26)
      {
        v27 = *(v23 + 944);
        if (v27)
        {
          v28 = *(v23 + 928);
          if (v28)
          {
            v29 = v28 << 6;
            do
            {
              v25.n128_f64[0] = re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v27);
              v27 += 64;
              v29 -= 64;
            }

            while (v29);
            v26 = *(v23 + 912);
            v27 = *(v23 + 944);
          }

          (*(*v26 + 40))(v26, v27, v25);
        }

        *(v23 + 944) = 0;
        *(v23 + 920) = 0;
        *(v23 + 928) = 0;
        *(v23 + 912) = 0;
        ++*(v23 + 936);
      }

      v30 = *(v23 + 880);
      if (v30)
      {

        *(v23 + 880) = 0;
      }

      v31 = *(v23 + 872);
      if (v31)
      {

        *(v23 + 872) = 0;
      }

      v32 = *(v23 + 864);
      if (v32)
      {

        *(v23 + 864) = 0;
      }

      v33 = *(v23 + 856);
      if (v33)
      {

        *(v23 + 856) = 0;
      }

      v34 = *(v23 + 848);
      if (v34)
      {

        *(v23 + 848) = 0;
      }

      v35 = *(v23 + 840);
      if (v35)
      {

        *(v23 + 840) = 0;
      }

      v36 = *(v23 + 832);
      if (v36)
      {

        *(v23 + 832) = 0;
      }

      v37 = *(v23 + 824);
      if (v37)
      {

        *(v23 + 824) = 0;
      }

      v38 = *(v23 + 816);
      if (v38)
      {

        *(v23 + 816) = 0;
      }

      v39 = *(v23 + 808);
      if (v39)
      {

        *(v23 + 808) = 0;
      }

      v40 = *(v23 + 800);
      if (v40)
      {

        *(v23 + 800) = 0;
      }

      v41 = *(v23 + 792);
      if (v41)
      {

        *(v23 + 792) = 0;
      }

      v42 = *(v23 + 784);
      if (v42)
      {

        *(v23 + 784) = 0;
      }

      v43 = *(v23 + 776);
      if (v43)
      {

        *(v23 + 776) = 0;
      }

      v44 = *(v23 + 768);
      if (v44)
      {

        *(v23 + 768) = 0;
      }

      v45 = *(v23 + 760);
      if (v45)
      {

        *(v23 + 760) = 0;
      }

      re::FixedArray<re::DynamicString>::deinit((v23 + 736));
      v46 = *(v23 + 672);
      if (v46)
      {
        if (*(v23 + 704))
        {
          (*(*v46 + 40))(v46);
        }

        *(v23 + 704) = 0;
        *(v23 + 680) = 0;
        *(v23 + 688) = 0;
        *(v23 + 672) = 0;
        ++*(v23 + 696);
      }

      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 592));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 544));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 496));
      re::HashTable<unsigned long,re::SharedPtr<re::MaterialParameterTable>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit((v23 + 440));
      re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(v23 + 400);
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v23 + 336);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 288));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 240));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 192));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 144));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 96));
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((v23 + 48));
      v47 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v23);
      (*(*v24 + 40))(v24, v23, v47);
    }

    *(this + 3) = 0;
  }

  v48 = *(this + 4);
  if (v48)
  {
    re::DataArray<re::MeshModel>::deinit((v48 + 1));
    v49 = re::DataArray<re::MeshInstance>::deinit((v48 + 9));
    *v48 = 0;
    v50 = *(this + 4);
    if (v50)
    {
      v51 = re::globalAllocators(v49)[2];
      re::DataArray<re::MeshModel>::deinit(v50 + 8);
      re::DataArray<re::MeshInstance>::deinit(v50 + 72);
      *v50 = 0;

      re::FixedArray<re::AttributeArgument>::deinit((v50 + 152));
      v52 = *(v50 + 144);
      if (v52)
      {

        *(v50 + 144) = 0;
      }

      v53 = *(v50 + 136);
      if (v53)
      {

        *(v50 + 136) = 0;
      }

      re::DataArray<re::MeshInstance>::deinit(v50 + 72);
      re::DynamicArray<unsigned long>::deinit(v50 + 72);
      re::DataArray<re::MeshModel>::deinit(v50 + 8);
      re::DynamicArray<unsigned long>::deinit(v50 + 8);
      (*(*v51 + 40))(v51, v50);
    }

    *(this + 4) = 0;
  }

  v54 = *(this + 5);
  if (v54)
  {
    re::SamplerManager::deinit(v54);
    v56 = *(this + 5);
    if (v56)
    {
      v57 = re::globalAllocators(v55)[2];
      re::SamplerManager::~SamplerManager(v56);
      (*(*v57 + 40))(v57, v56);
    }

    *(this + 5) = 0;
  }

  v58 = *(this + 6);
  if (v58)
  {
    v59 = re::ShaderManager::deinit(v58, v4);
    v60 = *(this + 6);
    if (v60)
    {
      v61 = re::globalAllocators(v59)[2];
      re::ShaderManager::~ShaderManager(v60);
      (*(*v61 + 40))(v61, v60);
    }

    *(this + 6) = 0;
  }

  v62 = *(this + 7);
  if (v62)
  {
    re::TextureManager::deinit(v62);
    v64 = *(this + 7);
    if (v64)
    {
      v65 = re::globalAllocators(v63)[2];
      re::TextureManager::~TextureManager(v64);
      (*(*v65 + 40))(v65, v64);
    }

    *(this + 7) = 0;
  }

  v66 = *(this + 8);
  if (v66)
  {
    re::TextManager::deinit(v66);
    v68 = *(this + 8);
    if (v68)
    {
      v69 = re::globalAllocators(v67)[2];
      re::TextManager::~TextManager(v68);
      (*(*v69 + 40))(v69, v68);
    }

    *(this + 8) = 0;
  }

  if (*(this + 9))
  {
    *(this + 9) = 0;
  }

  v70 = *(this + 10);
  if (v70)
  {
    re::DebugRenderer::deinit(v70);
    v71 = *(this + 10);
    if (v71)
    {
      v72 = re::globalAllocators(v70)[2];
      re::DebugRenderer::~DebugRenderer(v71);
      v70 = (*(*v72 + 40))(v72, v71);
    }

    *(this + 10) = 0;
  }

  v73 = *(this + 11);
  if (v73)
  {
    *v73 = 0;
    v74 = re::globalAllocators(v70)[2];
    re::PrimitiveRenderer::~PrimitiveRenderer(v73);
    v70 = (*(*v74 + 40))(v74, v73);
    *(this + 11) = 0;
  }

  v75 = *(this + 12);
  if (v75)
  {
    re::s_debugSettingsManager = 0;
    v76 = re::globalAllocators(v70)[2];
    std::mutex::~mutex((v75 + 48));
    v77 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v75);
    v70 = (*(*v76 + 40))(v76, v75, v77);
    *(this + 12) = 0;
  }

  v78 = *(this + 15);
  if (v78)
  {
    v79 = re::globalAllocators(v70)[2];
    re::FixedArray<CoreIKTransform>::deinit(v78 + 247);
    re::FixedArray<CoreIKTransform>::deinit(v78 + 244);
    re::FixedArray<CoreIKTransform>::deinit(v78 + 241);
    v80 = v78[232];
    if (v80)
    {

      v78[232] = 0;
    }

    v81 = v78[231];
    if (v81)
    {

      v78[231] = 0;
    }

    re::SmallHashTable<re::WeakStringID,re::CameraStreamParams,4ul,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false>::~SmallHashTable((v78 + 4));
    v70 = (*(*v79 + 40))(v79, v78);
    *(this + 15) = 0;
  }

  v82 = *(this + 16);
  if (v82)
  {
    v83 = re::globalAllocators(v70)[2];
    v84.n128_f64[0] = re::DynamicString::deinit((v82 + 192));
    v85 = *(v82 + 160);
    if (v85)
    {
      v85(0, v82 + 160, 0, 0, 0, v84.n128_f64[0]);
    }

    v70 = (*(*v83 + 40))(v83, v82, v84);
    *(this + 16) = 0;
  }

  v86 = *(this + 17);
  if (v86)
  {
    v87 = re::globalAllocators(v70)[2];
    re::DataArray<re::DisplayStatsManager::MetricState>::deinit(v86);
    re::DataArray<re::DisplayStatsManager::MetricState>::deinit(v86);
    re::DynamicArray<unsigned long>::deinit(v86);
    v70 = (*(*v87 + 40))(v87, v86);
    *(this + 17) = 0;
  }

  v88 = *(this + 44);
  if (v88)
  {

    *(this + 44) = 0;
  }

  *(this + 204) = 0;
  v89 = *(this + 18);
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = re::globalAllocators(v70)[2];
  v101 = 0;
  re::FunctionBase<24ul,void ()(re::FrameCount)>::operator=<24ul>(v89 + 128, &v97);
  v90 = re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(&v97);
  v91 = *(this + 18);
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = re::globalAllocators(v90)[2];
  v101 = 0;
  re::FunctionBase<24ul,void ()(re::FrameCount)>::operator=<24ul>(v91 + 168, &v97);
  v92 = re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(&v97);
  v93 = *(this + 18);
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = re::globalAllocators(v92)[2];
  v101 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v93 + 208, &v97);
  v94 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v97);
  v95 = *(this + 18);
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = re::globalAllocators(v94)[2];
  v101 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v95 + 288, &v97);
  result = re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v97);
  *(this + 18) = 0;
  *(this + 13) = 0;
  return result;
}

uint64_t re::RenderManager::perFrameAllocator(re::RenderManager *this)
{
  v1 = this;
  v2 = *(this + 14);
  if (v2)
  {
    this = re::RenderFrameBox::get((v2 + 328), *(*(this + 18) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(this + 18) + 16) << 60));
    if (this)
    {
      return *(this + 49);
    }
  }

  v4 = re::globalAllocators(this);
  v5 = *(*(v1 + 18) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v1 + 18) + 16) << 60);
  v6 = v4[6];

  return re::PerFrameAllocatorManager::perFrameAllocator(v6, v5);
}

void re::RenderManager::addDelayedDestructor(void *a1, uint64_t a2)
{
  v4 = a1[14];
  if (!v4 || (v5 = atomic_load((v4 + 832))) != 0 || (v7 = a1[52]) == 0 || ((*(*v7 + 16))(v7) & 1) != 0)
  {
    v6 = a1[18];

    re::FrameManager::addDelayedDestructor(v6, a2);
  }

  else
  {
    v8 = *(**(a2 + 32) + 16);

    v8();
  }
}

void re::RenderManager::addDelayedDestructorToRenderThread(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 14);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v4 + 312);
  if (!v5)
  {
LABEL_5:
    if (!atomic_load((v4 + 832)))
    {
      a1 = *(v3 + 52);
      if (a1)
      {
        a1 = (*(*a1 + 16))(a1);
        if ((a1 & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_6:
    v7 = *(v3 + 18);

    return;
  }

  a1 = pthread_self();
  if (*v5 != a1)
  {
    v4 = *(v3 + 14);
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v8 = *(**(a2 + 32) + 16);

  v8();
}

void re::RenderManager::sampleComputeEncoderMTLCounterBegin(uint64_t a1, id *a2, unsigned int a3)
{
  v3 = *(a1 + 112);
  if (v3)
  {
    v5 = *a2;
    re::DrawingManager::sampleComputeEncoderMTLCounterBegin(v3, &v5, a3);
  }
}

void re::RenderManager::sampleComputeEncoderMTLCounterEnd(uint64_t a1, id *a2, unsigned int a3)
{
  v3 = *(a1 + 112);
  if (v3)
  {
    v5 = *a2;
    re::DrawingManager::sampleComputeEncoderMTLCounterEnd(v3, &v5, a3);
  }
}

void re::RenderManager::enableMTLCounterSamplingOnRenderPassDescriptor(uint64_t a1, id *a2, unsigned int a3)
{
  v3 = *(a1 + 112);
  if (v3)
  {
    v5 = *a2;
    v6 = v5;
    re::DrawingManager::enableMTLCounterSamplingOnRenderPassDescriptor(v3, &v6, a3);
    if (v5)
    {
    }
  }
}

void re::RenderManager::makeComputeCommandEncoderWithMTLCounterSampling(uint64_t a1@<X0>, id *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *(a1 + 112);
  v9 = *a2;
  re::DrawingManager::makeComputeCommandEncoderWithMTLCounterSampling(v8, &v9, a3, a4, a5);
}

void re::RenderManager::reloadLibrary(re::RenderManager *this, const char *a2, const char *a3)
{
  v5 = *(this + 14);
  if (v5)
  {

    re::DrawingManager::reloadLibrary(v5, a2, a3);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = *re::graphicsLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "RenderManager::reloadLibrary called, but DrawingManager does not exist!", v7, 2u);
    }
  }
}

unint64_t re::RenderManager::registerRenderLayer(uint64_t a1, id *a2)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a2;
  v3 = re::DrawingManager::registerRenderLayer(v2, &v5);

  return v3;
}

re::RenderManager *re::RenderManager::createDrawingManager(re::RenderManager *this)
{
  if (!*(this + 14))
  {
    v2 = this;
    v3 = re::globalAllocators(this);
    v4 = (*(*v3[2] + 32))(v3[2], 1856, 8);
    re::DrawingManager::DrawingManager(v4);
    *(v2 + 14) = v5;
    v6 = *(v2 + 20);
    v7 = *(v2 + 4);

    return re::DrawingManager::init(v5, v2, 0, v6, v7, 0);
  }

  return this;
}

uint64_t re::RenderManager::splitCommandBuffersForDebugging(re::RenderManager *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue(v8, "splitCommandBuffersForDebugging", v6);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::RenderManager::splitCommandBuffersForDebugging(void)const::kSplitCommandBuffersForDebugging = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[3208];
}

void *re::allocInfo_RenderManager(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B9FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9FB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9FB8, "RenderManager");
    __cxa_guard_release(&qword_1EE1B9FB0);
  }

  return &unk_1EE1B9FB8;
}

void re::initInfo_RenderManager(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x4A7E34345895822ELL;
  v8[1] = "RenderManager";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x1B000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_RenderManager(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::RenderManager>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderManager>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderManager>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderManager>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

uint64_t re::FunctionBase<24ul,BOOL ()(void)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,BOOL ()(void)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

double re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v6 + v4 + 24));
          v3 = *(a1 + 8);
        }

        v4 += 80;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

double re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 32);
          v3 = *(a1 + 8);
        }

        v4 += 384;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

double re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 18;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t *std::unique_ptr<re::MeshPart,std::function<void ()(re::MeshPart*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::MeshPart *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::MeshPart *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::MeshPart *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::DataArray<re::MeshInstance>::deinit(v4);
}

uint64_t re::DataArray<re::MeshInstance>::deinit(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::MeshInstance>::clear(result);
    if (!v1[2])
    {
      v7 = 0;
      memset(v16, 0, sizeof(v16));
      v4 = MEMORY[0x1E69E9C10];
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v11 = 789;
      v12 = 2048;
      v13 = 0;
      v14 = 2048;
      v15 = 0;
      _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::MeshInstance>::clear(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v24, a1, 0);
  if (*&v24[0] != a1 || DWORD2(v24[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v24);
      re::DataArray<re::MeshInstance>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v24);
    }

    while (*&v24[0] != a1 || WORD4(v24[0]) != 0xFFFF || WORD5(v24[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      v9 = a1[2];
      if (v9 <= v7)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        v12 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 789;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      v10 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v10 - 16));
      (*(**a1 + 40))(*a1, *(v10 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

void re::DataArray<re::MeshInstance>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  v5 = re::DataArray<re::MeshInstance>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    v6 = v5;
    re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit((v5 + 120));
    re::FixedArray<CoreIKTransform>::deinit(v6 + 12);
    re::StringID::destroyString(v6);
    v7 = *(a1 + 16);
    if (v7 <= HIWORD(v2))
    {
      v11 = 0;
      memset(v20, 0, sizeof(v20));
      v8 = MEMORY[0x1E69E9C10];
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v15 = 789;
      v16 = 2048;
      v17 = HIWORD(v2);
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

uint64_t re::DataArray<re::MeshModel>::deinit(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::MeshModel>::clear(result);
    if (!v1[2])
    {
      v7 = 0;
      memset(v16, 0, sizeof(v16));
      v4 = MEMORY[0x1E69E9C10];
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v11 = 789;
      v12 = 2048;
      v13 = 0;
      v14 = 2048;
      v15 = 0;
      _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::MeshModel>::clear(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v24, a1, 0);
  if (*&v24[0] != a1 || DWORD2(v24[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v24);
      re::DataArray<re::MeshModel>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v24);
    }

    while (*&v24[0] != a1 || WORD4(v24[0]) != 0xFFFF || WORD5(v24[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      v9 = a1[2];
      if (v9 <= v7)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        v12 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 789;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      v10 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v10 - 16));
      (*(**a1 + 40))(*a1, *(v10 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

void re::DataArray<re::MeshModel>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  v5 = re::DataArray<re::MeshModel>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    re::MeshModel::~MeshModel(v5);
    v7 = *(a1 + 16);
    if (v7 <= HIWORD(v2))
    {
      v11 = 0;
      memset(v20, 0, sizeof(v20));
      v8 = MEMORY[0x1E69E9C10];
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v15 = 789;
      v16 = 2048;
      v17 = HIWORD(v2);
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

re::MaterialParameterBlock *re::MaterialParameterBlock::MaterialParameterBlock(re::MaterialParameterBlock *this, const re::MaterialParameterBlock *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CF4000;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  bzero(this + 176, 0x2ECuLL);
  *(this + 924) = 0x7FFFFFFFLL;
  *(this + 936) = 0;
  *(this + 948) = 0;
  *(this + 121) = 0;
  *(this + 123) = 0xFFFFFFFFFFFFFFFLL;
  *(this + 124) = 0;
  *(this + 125) = 0xFFFFFFFFFFFFFFFLL;

  return re::MaterialParameterBlock::operator=(this, a2);
}

re::MaterialParameterBlock *re::MaterialParameterBlock::operator=(re::MaterialParameterBlock *this, uint64_t a2)
{
  if (this != a2)
  {
    re::MaterialParameterBlock::disconnectFromTextureHandles(this);
    re::DynamicArray<BOOL>::operator=(this + 24, (a2 + 24));
    v4 = *(a2 + 64);
    if (*(this + 8))
    {
      v5 = (this + 64);
      if (v4)
      {
        re::DynamicArray<re::TextureHandle>::copy(v5, a2 + 64);
        ++*(this + 22);
      }

      else
      {
        re::DynamicArray<re::TextureHandle>::clear(v5);
      }
    }

    else if (v4)
    {
      v6 = *(a2 + 80);
      *(this + 8) = v4;
      re::DynamicArray<re::TextureHandle>::setCapacity(this + 8, v6);
      ++*(this + 22);
      re::DynamicArray<re::TextureHandle>::copy(this + 8, a2 + 64);
    }

    v7 = *(a2 + 104);
    if (*(this + 13))
    {
      v8 = (this + 104);
      if (v7)
      {
        re::DynamicArray<re::BufferSlice>::copy(v8, a2 + 104);
        ++*(this + 32);
      }

      else
      {
        re::DynamicArray<re::BufferSlice>::clear(v8);
      }
    }

    else if (v7)
    {
      v9 = *(a2 + 120);
      *(this + 13) = v7;
      re::DynamicArray<re::BufferSlice>::setCapacity(this + 13, v9);
      ++*(this + 32);
      re::DynamicArray<re::BufferSlice>::copy(this + 13, a2 + 104);
    }

    v10 = *(a2 + 144);
    if (*(this + 18))
    {
      v11 = (this + 144);
      if (v10)
      {
        re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::copy(v11, a2 + 144);
        ++*(this + 42);
      }

      else
      {
        re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(v11);
      }
    }

    else if (v10)
    {
      v12 = *(a2 + 160);
      *(this + 18) = v10;
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(this + 18, v12);
      ++*(this + 42);
      re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::copy(this + 18, a2 + 144);
    }

    re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::copy(this + 23, a2 + 184);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::copy(this + 31, a2 + 248);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::copy(this + 39, a2 + 312);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::copy(this + 47, a2 + 376);
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(this + 55, a2 + 440);
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(this + 63, a2 + 504);
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(this + 71, a2 + 568);
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(this + 79, a2 + 632);
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::copy(this + 87, a2 + 696);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::copy(this + 95, a2 + 760);
    re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(this + 888, a2 + 888);
    *(this + 121) = *(a2 + 968);
    if (*(this + 936))
    {
      if (*(a2 + 936))
      {
        *(this + 937) = *(a2 + 937);
      }

      else
      {
        *(this + 936) = 0;
      }
    }

    else if (*(a2 + 936))
    {
      *(this + 936) = 1;
      *(this + 937) = *(a2 + 937);
    }

    if (*(this + 948))
    {
      if ((*(a2 + 948) & 1) == 0)
      {
        *(this + 948) = 0;
LABEL_32:
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(this + 124, *(a2 + 992));
        *(this + 125) = *(a2 + 1000);
        re::MaterialParameterBlock::connectToTextureHandles(this);
        return this;
      }
    }

    else
    {
      if ((*(a2 + 948) & 1) == 0)
      {
        goto LABEL_32;
      }

      *(this + 948) = 1;
    }

    v13 = *(a2 + 952);
    *(this + 240) = *(a2 + 960);
    *(this + 119) = v13;
    goto LABEL_32;
  }

  return this;
}

uint64_t re::MaterialParameterBlock::MaterialParameterBlock(uint64_t a1, re::MaterialParameterBlock *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CF4000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  bzero((a1 + 176), 0x2ECuLL);
  *(a1 + 924) = 0x7FFFFFFFLL;
  *(a1 + 936) = 0;
  *(a1 + 948) = 0;
  *(a1 + 968) = 0;
  *(a1 + 984) = 0xFFFFFFFFFFFFFFFLL;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 0xFFFFFFFFFFFFFFFLL;

  return re::MaterialParameterBlock::operator=(a1, a2);
}

uint64_t re::MaterialParameterBlock::operator=(uint64_t a1, re::MaterialParameterBlock *this)
{
  if (a1 == this)
  {
    return a1;
  }

  re::MaterialParameterBlock::disconnectFromTextureHandles(this);
  re::MaterialParameterBlock::disconnectFromTextureHandles(a1);
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(a1 + 24, this + 3);
  v5 = *(a1 + 64);
  v6 = *(this + 8);
  if (v5 && v6 && v5 != v6)
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 72);
    v8 = *(this + 9);
    *(a1 + 64) = v6;
    *(a1 + 72) = v8;
    *(this + 8) = v5;
    *(this + 9) = v7;
    v9 = *(a1 + 80);
    *(a1 + 80) = *(this + 10);
    *(this + 10) = v9;
    v10 = *(a1 + 96);
    *(a1 + 96) = *(this + 12);
    *(this + 12) = v10;
    ++*(this + 22);
    ++*(a1 + 88);
    v11 = *(a1 + 104);
    v12 = *(this + 13);
    if (!v11 || !v12 || v11 == v12)
    {
      v13 = *(a1 + 112);
      v14 = *(this + 14);
      *(a1 + 104) = v12;
      *(a1 + 112) = v14;
      *(this + 13) = v11;
      *(this + 14) = v13;
      v15 = *(a1 + 120);
      *(a1 + 120) = *(this + 15);
      *(this + 15) = v15;
      v16 = *(a1 + 136);
      *(a1 + 136) = *(this + 17);
      *(this + 17) = v16;
      ++*(this + 32);
      ++*(a1 + 128);
      re::DynamicArray<re::TextureViews<re::TextureHandle>>::operator=((a1 + 144), this + 18);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 184), this + 23);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 248), this + 31);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 312), this + 39);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 376), this + 47);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 440), this + 55);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 504), this + 63);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 568), this + 71);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 632), this + 79);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 696), this + 87);
      re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 760), this + 95);
      re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(a1 + 888, this + 888);
      *(a1 + 968) = *(this + 121);
      if (*(a1 + 936))
      {
        if (*(this + 936))
        {
          *(a1 + 937) = *(this + 937);
        }

        else
        {
          *(a1 + 936) = 0;
        }
      }

      else if (*(this + 936))
      {
        *(a1 + 936) = 1;
        *(a1 + 937) = *(this + 937);
      }

      if (*(a1 + 948))
      {
        if ((*(this + 948) & 1) == 0)
        {
          *(a1 + 948) = 0;
LABEL_20:
          v18 = *(a1 + 992);
          *(a1 + 992) = *(this + 124);
          *(this + 124) = v18;
          *(a1 + 1000) = *(this + 125);
          re::MaterialParameterBlock::connectToTextureHandles(a1);
          return a1;
        }
      }

      else
      {
        if ((*(this + 948) & 1) == 0)
        {
          goto LABEL_20;
        }

        *(a1 + 948) = 1;
      }

      v17 = *(this + 119);
      *(a1 + 960) = *(this + 240);
      *(a1 + 952) = v17;
      goto LABEL_20;
    }
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
  result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
  __break(1u);
  return result;
}

re::MaterialParameterBlock *re::MaterialParameterBlock::MaterialParameterBlock(re::MaterialParameterBlock *this, re::RenderManager *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CF4000;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  bzero(this + 176, 0x2ECuLL);
  *(this + 924) = 0x7FFFFFFFLL;
  *(this + 936) = 0;
  *(this + 948) = 0;
  *(this + 121) = a2;
  *(this + 123) = 0xFFFFFFFFFFFFFFFLL;
  *(this + 124) = 0;
  *(this + 125) = 0xFFFFFFFFFFFFFFFLL;
  return this;
}

void *re::MaterialParameterBlock::disconnectFromTextureHandles(void *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v18[0] = this + 39;
  v1 = this[41];
  if (v1 >= 0x10)
  {
    v2 = this;
    v3 = 0;
    v4 = this[39];
    v5 = v1 >> 4;
    while (1)
    {
      v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v18[1] = v6 ^ 0xFFFFLL;
      if (v6 != 0xFFFFLL)
      {
        break;
      }

      v3 -= 16;
      ++v4;
      if (!--v5)
      {
        return this;
      }
    }

    v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
    v8 = v7 - v3;
    v19 = v7 - v3;
    if (v7 + 1 != v3)
    {
      do
      {
        v9 = *(v18[0] + 8) + 16 * v8;
        v10 = *(v9 + 8);
        v11 = v2[10];
        if (v11 <= v10)
        {
          v20 = 0;
          memset(v29, 0, sizeof(v29));
          v13 = MEMORY[0x1E69E9C10];
          v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v21 = 136315906;
          v22 = "operator[]";
          v23 = 1024;
          if (v14)
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          v24 = 789;
          v25 = 2048;
          v26 = v10;
          v27 = 2048;
          v28 = v11;
          _os_log_send_and_compose_impl(v15, &v20, v29, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v16, v17);
          _os_crash_msg();
          __break(1u);
        }

        v12 = v2[12] + 16 * v10;
        v17 = *v9;
        re::TextureHandle::stopTrackingMaterialParameterBlock(v12, v2, &v17);
        v17 = 0;
        this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v18);
        v8 = v19;
      }

      while (v19 != -1);
    }
  }

  return this;
}

void *re::MaterialParameterBlock::connectToTextureHandles(void *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v18[0] = this + 39;
  v1 = this[41];
  if (v1 >= 0x10)
  {
    v2 = this;
    v3 = 0;
    v4 = this[39];
    v5 = v1 >> 4;
    while (1)
    {
      v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v18[1] = v6 ^ 0xFFFFLL;
      if (v6 != 0xFFFFLL)
      {
        break;
      }

      v3 -= 16;
      ++v4;
      if (!--v5)
      {
        return this;
      }
    }

    v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
    v8 = v7 - v3;
    v19 = v7 - v3;
    if (v7 + 1 != v3)
    {
      do
      {
        v9 = *(v18[0] + 8) + 16 * v8;
        v10 = *(v9 + 8);
        v11 = v2[10];
        if (v11 <= v10)
        {
          v20 = 0;
          memset(v29, 0, sizeof(v29));
          v13 = MEMORY[0x1E69E9C10];
          v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v21 = 136315906;
          v22 = "operator[]";
          v23 = 1024;
          if (v14)
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          v24 = 789;
          v25 = 2048;
          v26 = v10;
          v27 = 2048;
          v28 = v11;
          _os_log_send_and_compose_impl(v15, &v20, v29, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v16, v17);
          _os_crash_msg();
          __break(1u);
        }

        v12 = v2[12] + 16 * v10;
        v17 = *v9;
        re::TextureHandle::startTrackingMaterialParameterBlock(v12, v2, &v17);
        v17 = 0;
        this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v18);
        v8 = v19;
      }

      while (v19 != -1);
    }
  }

  return this;
}

void re::MaterialParameterBlock::deinit(re::MaterialParameterBlock *this)
{
  re::MaterialParameterBlock::disconnectFromTextureHandles(this);
  re::DynamicArray<unsigned long>::deinit(this + 24);
  re::DynamicArray<re::TextureHandle>::deinit(this + 64);
  re::DynamicArray<re::BufferSlice>::deinit(this + 104);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 144);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 184);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 248);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 312);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 376);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 440);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 504);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 568);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 632);
  re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::deinit(this + 696);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 760);
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 111);
  *(this + 121) = 0;
  v2 = *(this + 124);
  if (v2)
  {

    *(this + 124) = 0;
  }

  *(this + 125) = 0xFFFFFFFFFFFFFFFLL;
}

void re::MaterialParameterBlock::clear(re::MaterialParameterBlock *this)
{
  re::MaterialParameterBlock::disconnectFromTextureHandles(this);
  *(this + 5) = 0;
  ++*(this + 12);
  re::DynamicArray<re::TextureHandle>::clear(this + 64);
  re::DynamicArray<re::BufferSlice>::clear(this + 104);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 144);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(this + 23);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(this + 31);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(this + 39);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(this + 47);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(this + 55);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(this + 63);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(this + 71);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::clear(this + 79);
  re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::clear(this + 87);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(this + 95);
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(this + 888);
  if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(this))
  {
    re::MaterialParameterTableDelta::encodeClear(*(this + 122));
  }

  *(this + 125) = 0xFFFFFFFFFFFFFFFLL;
  if (*(this + 948) == 1)
  {
    *(this + 948) = 0;
  }

  if (*(this + 936) == 1)
  {
    *(this + 936) = 0;
  }
}

void re::DynamicArray<re::TextureHandle>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 16 * v2;
    do
    {
      re::TextureHandle::invalidate(v3);
      v3 += 2;
      v4 -= 16;
    }

    while (v4);
  }

  ++*(result + 24);
}

uint64_t re::DynamicArray<re::BufferSlice>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 40 * v2;
    do
    {
      v5 = *(v3 + 24);
      if (v5 != -1)
      {
        result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v5])(&v6, v3);
      }

      *(v3 + 24) = -1;
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(re::MaterialParameterBlock *this)
{
  v2 = *(this + 121);
  v3 = *(v2 + 112);
  if (v3 && re::DrawingManager::checkDeltasCanBeEnqueuedOrDropDelta_115383182<re::PbrParameterDelta>(*(v2 + 112), *(this + 122)))
  {
    v4 = *(*(this + 121) + 144);
    v5 = *(v4 + 48);
    if (((*(this + 123) ^ v5) & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      *(this + 123) = v5 & 0xFFFFFFFFFFFFFFFLL | (*(v4 + 40) << 60);
      re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(&v8, this);
      *(this + 122) = re::DrawingManager::addRenderFrameDeltaForNextFrame<re::MaterialParameterTableDelta,re::MaterialParameterTable>(v3, &v8);
      if (v8)
      {
      }
    }

    return 1;
  }

  else
  {
    *(this + 122) = 0;
    v7 = *(this + 124);
    if (v7)
    {

      result = 0;
      *(this + 124) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::MaterialParameterBlock::handle@<X0>(re::MaterialParameterBlock *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 23, a2);
  if (v6 != -1)
  {
    v7 = *(a1 + 24) + 16 * v6;
    LOWORD(v8) = *(v7 + 8);
    v9 = *(v7 + 10);
    result = re::MaterialParameterBlock::keysHash(a1);
    v11 = *(v7 + 11);
    v12 = 9;
    goto LABEL_10;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 55, a2) != -1)
  {
    result = re::MaterialParameterBlock::keysHash(a1);
    LOWORD(v8) = 0;
    v9 = 0;
    v11 = 0;
    v12 = 25;
    goto LABEL_10;
  }

  v13 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 39, a2);
  if (v13 != -1)
  {
    v8 = *(*(a1 + 40) + 16 * v13 + 8);
    result = re::MaterialParameterBlock::keysHash(a1);
    v11 = 0;
    v12 = 10;
LABEL_7:
    v9 = 1;
    goto LABEL_10;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 71, a2) != -1)
  {
    result = re::MaterialParameterBlock::keysHash(a1);
    LOWORD(v8) = 0;
    v9 = 0;
    v11 = 0;
    v12 = 26;
    goto LABEL_10;
  }

  v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 31, a2);
  if (v14 != -1)
  {
    v8 = *(*(a1 + 32) + 16 * v14 + 8);
    result = re::MaterialParameterBlock::keysHash(a1);
    v11 = 0;
    v12 = 11;
    goto LABEL_7;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 63, a2) != -1)
  {
    result = re::MaterialParameterBlock::keysHash(a1);
    LOWORD(v8) = 0;
    v9 = 0;
    v11 = 0;
    v12 = 27;
    goto LABEL_10;
  }

  v15 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 47, a2);
  if (v15 != -1)
  {
    v8 = *(*(a1 + 48) + 16 * v15 + 8);
    result = re::MaterialParameterBlock::keysHash(a1);
    v11 = 0;
    v12 = 12;
    goto LABEL_7;
  }

  if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 79, a2) == -1)
  {
    LOWORD(v8) = 0;
    v9 = 0;
    v12 = 0;
    result = 0;
    v11 = 0;
  }

  else
  {
    result = re::MaterialParameterBlock::keysHash(a1);
    LOWORD(v8) = 0;
    v9 = 0;
    v11 = 0;
    v12 = 28;
  }

LABEL_10:
  *a3 = *a2;
  *(a3 + 8) = v8;
  *(a3 + 10) = v9;
  *(a3 + 12) = v12;
  *(a3 + 16) = result;
  *(a3 + 24) = v11;
  return result;
}

uint64_t re::MaterialParameterBlock::keysHash(re::MaterialParameterBlock *this)
{
  v1 = (*(this + 76) + (*(this + 60) << 6) + (*(this + 60) >> 2) - 0x61C8864680B583E9) ^ *(this + 60);
  v2 = (*(this + 68) + (v1 << 6) + (v1 >> 2) - 0x61C8864680B583E9) ^ v1;
  v3 = (*(this + 84) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v4 = (*(this + 28) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v5 = (*(this + 44) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v6 = (*(this + 36) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  return (*(this + 52) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
}

uint64_t *re::MaterialParameterBlock::handle@<X0>(uint64_t *__return_ptr a1@<X8>, re::MaterialParameterBlock *this@<X0>, const char *a3@<X1>)
{
  if (a3)
  {
    v3 = *a3;
    if (*a3)
    {
      v4 = a3[1];
      if (v4)
      {
        v5 = a3 + 2;
        do
        {
          v3 = 31 * v3 + v4;
          v6 = *v5++;
          v4 = v6;
        }

        while (v6);
      }

      v3 &= ~0x8000000000000000;
    }
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v3;
  return re::MaterialParameterBlock::handle(this, &v8, a1);
}

int32x2_t re::MaterialParameterBlock::colorGamut4FValue@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Constant = re::ShaderGraphMaterial::getConstant(a1, a2);
  v6 = *(Constant + 8);
  v7 = *(a1 + 968);
  if (v7)
  {
    v7 = *(v7 + 160);
    if (v7)
    {
      LOBYTE(v7) = *v7;
    }
  }

  v8 = *Constant;
  *a3 = *Constant;
  result = vzip1_s32((v8 >> 32), v6);
  *(a3 + 4) = result;
  *(a3 + 12) = v6.i32[1];
  *(a3 + 16) = v7;
  return result;
}

re::TextureHandle *re::MaterialParameterBlock::textureHandleValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::TextureHandle *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v4 = *(a1 + 80);
  if (v4 <= v3)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 797;
    v15 = 2048;
    v16 = v3;
    v17 = 2048;
    v18 = v4;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(a1 + 96) + 16 * v3);

  return re::TextureHandle::TextureHandle(a3, v5);
}

uint64_t re::MaterialParameterBlock::bufferValue(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *(a1 + 120);
  if (v3 <= v2)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = v2;
    v16 = 2048;
    v17 = v3;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(a1 + 136) + 40 * *(a2 + 8);

  return re::BufferSlice::buffer(v4, a2);
}

id re::MaterialParameterBlock::samplerValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  v5 = *(a1 + 160);
  if (v5 <= v4)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 797;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(a1 + 176) + 8 * v4);
  *a3 = result;
  return result;
}

void re::MaterialParameterBlock::bindingValue(re *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 12) & 7;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 63, buf);
      v8 = *(a1 + 64);
      goto LABEL_17;
    }

    if (v6 == 4)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 79, buf);
      v8 = *(a1 + 80);
      goto LABEL_17;
    }
  }

  else
  {
    if (v6 == 1)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 55, buf);
      v8 = *(a1 + 56);
      goto LABEL_17;
    }

    if (v6 == 2)
    {
      *buf = *a2;
      v7 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1 + 71, buf);
      v8 = *(a1 + 72);
LABEL_17:
      v14 = v8 + 40 * v7;
      *a3 = *(v14 + 8);
      *(a3 + 8) = *(v14 + 16);
      *(a3 + 16) = *(v14 + 24);
      *(a3 + 24) = *(v14 + 32);
      return;
    }
  }

  v9 = *re::graphicsLogObjects(a1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = *a2;
    if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else if (v15)
    {
      v16 = re::WeakStringID::debugStr(void)const::msg;
      snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v15);
    }

    else
    {
      v16 = &str_67;
    }

    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Attempted to get a binding from an invalid handle %s", buf, 0xCu);
  }

  *a3 = 3;
  v10 = re::StringID::invalid(buf);
  v11 = buf[0];
  *(a3 + 8) = *buf >> 1;
  if (v11)
  {
    if (buf[0])
    {
    }
  }

  *(a3 + 16) = 0;
  v12 = re::StringID::invalid(buf);
  v13 = buf[0];
  *(a3 + 24) = *buf >> 1;
  if (v13)
  {
    if (buf[0])
    {
    }
  }
}

void re::MaterialParameterBlock::removeParameter(re::MaterialParameterBlock *this, const char *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = a2[1];
      if (v4)
      {
        v5 = a2 + 2;
        do
        {
          v3 = 31 * v3 + v4;
          v6 = *v5++;
          v4 = v6;
        }

        while (v6);
      }

      v3 &= ~0x8000000000000000;
    }
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v17 = v3;
  re::MaterialParameterBlock::handle(this, &v17, &v14);
  v8 = v16 & 7;
  if (v8)
  {
    if ((v16 & 0x10) != 0)
    {
      v13 = v14;
      re::MaterialParameterBlock::removeBinding(this, &v13);
    }

    else
    {
      if ((v16 & 7u) > 2)
      {
        if (v8 == 3)
        {
          v10 = v14;
          re::MaterialParameterBlock::removeBuffer(this, &v10);
          return;
        }

        if (v8 == 4)
        {
          v9 = v14;
          re::MaterialParameterBlock::removeSampler(this, &v9);
          return;
        }
      }

      else
      {
        if (v8 == 1)
        {
          v12 = v14;
          re::MaterialParameterBlock::removeConstant(this, &v12, v15);
          return;
        }

        if (v8 == 2)
        {
          v11 = v14;
          re::MaterialParameterBlock::removeTexture(this, &v11);
          return;
        }
      }

      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Trying to remove a paramter which exists but has an invalid type.", "!Unreachable code", "removeParameter", 477);
      _os_crash("assertion failure: (!Unreachable code) Trying to remove a paramter which exists but has an invalid type.");
      __break(1u);
    }
  }
}

re *re::MaterialParameterBlock::removeBinding(re::MaterialParameterBlock *a1, unint64_t *a2)
{
  v14 = *a2;
  result = re::MaterialParameterBlock::handle(a1, &v14, v15);
  v14 = 0;
  v5 = v16 & 7;
  if ((v16 & 7) == 0 || (v16 & 0x10) == 0)
  {
    return result;
  }

  if ((v16 & 7u) > 2)
  {
    if (v5 == 3)
    {
      v7 = a1 + 504;
      goto LABEL_16;
    }

    if (v5 == 4)
    {
      v7 = a1 + 632;
      goto LABEL_16;
    }

LABEL_12:
    v8 = *re::graphicsLogObjects(result);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter type", v13, 2u);
    }

    goto LABEL_17;
  }

  if (v5 == 1)
  {
    v7 = a1 + 440;
    goto LABEL_16;
  }

  if (v5 != 2)
  {
    goto LABEL_12;
  }

  v7 = a1 + 568;
LABEL_16:
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::remove(v7, a2);
LABEL_17:
  result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
  if (result && v5 <= 4)
  {
    v9 = *a2;
    v10 = *(a1 + 122) + qword_1E30DA9A8[v5 - 1];
    v11 = *(v10 + 16);
    if (v11 >= *(v10 + 8))
    {
      result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::growCapacity(v10, v11 + 1);
      v11 = *(v10 + 16);
    }

    v12 = *(v10 + 32) + 48 * v11;
    *v12 = v9;
    *(v12 + 8) = 0;
    *(v10 + 16) = v11 + 1;
    ++*(v10 + 24);
  }

  return result;
}

_anonymous_namespace_ *re::MaterialParameterBlock::removeConstant(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  re::removeNameMappedConstant(&v7, (a1 + 184), (a1 + 24), a3);
  v6 = *a2;
  v7 = 0;
  return re::MaterialParameterBlock::addRemoveConstantDelta(a1, &v6);
}

void re::MaterialParameterBlock::removeTexture(uint64_t a1, size_t *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 312);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 312), a2);
  if (v6 != -1)
  {
    v7 = *(*(a1 + 320) + 16 * v6 + 8);
    v8 = *(a1 + 80);
    if (v8 <= v7)
    {
      v37 = 0;
      v50 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v29 = MEMORY[0x1E69E9C10];
      v38 = 136315906;
      v39 = "operator[]";
      v40 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      v41 = 789;
      v42 = 2048;
      v43 = v7;
      v44 = 2048;
      v45 = v8;
      _os_log_send_and_compose_impl(v30, &v37, &v46, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v34, v35);
      _os_crash_msg();
      __break(1u);
      goto LABEL_29;
    }

    v9 = *(a1 + 96) + 16 * v7;
    v36 = *a2;
    re::TextureHandle::stopTrackingMaterialParameterBlock(v9, a1, &v36);
  }

  v35 = *a2;
  v10 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v5, &v35);
  if (v10 == -1)
  {
    goto LABEL_21;
  }

  v11 = *(a1 + 320) + 16 * v10;
  v13 = *(v11 + 8);
  v12 = (v11 + 8);
  v2 = v13;
  v8 = *(a1 + 80);
  if (v8 <= v13)
  {
LABEL_29:
    v37 = 0;
    v50 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v38 = 136315906;
    v39 = "removeStableAt";
    v40 = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v41 = 969;
    v42 = 2048;
    v43 = v2;
    v44 = 2048;
    v45 = v8;
    _os_log_send_and_compose_impl(v33, &v37, &v46, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v34, v35);
    _os_crash_msg();
    __break(1u);
  }

  if (v8 - 1 > v2)
  {
    v14 = *(a1 + 96);
    v15 = v14 + 16 * v2;
    if (v15 + 16 != v14 + 16 * v8)
    {
      v16 = 16 * v8 - 16 * v2 - 16;
      do
      {
        v17 = v15 + 16;
        re::TextureHandle::operator=(v15, v15 + 16);
        v15 = v17;
        v16 -= 16;
      }

      while (v16);
      v8 = *(a1 + 80);
    }
  }

  re::TextureHandle::invalidate((*(a1 + 96) + 16 * v8 - 16));
  --*(a1 + 80);
  ++*(a1 + 88);
  v18 = *v12;
  *&v46 = v5;
  v19 = *(a1 + 328);
  if (v19 >= 0x10)
  {
    v20 = 0;
    v21 = *v5;
    v22 = v19 >> 4;
    while (1)
    {
      v23 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v21), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      *(&v46 + 1) = v23 ^ 0xFFFFLL;
      if (v23 != 0xFFFFLL)
      {
        break;
      }

      v20 -= 16;
      ++v21;
      if (!--v22)
      {
        goto LABEL_20;
      }
    }

    v24 = __clz(__rbit64(v23 ^ 0xFFFFLL));
    v25 = v24 - v20;
    *&v47 = v24 - v20;
    if (v24 + 1 != v20)
    {
      do
      {
        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(v5, *(a1 + 320) + 16 * v25);
        v26 = *(a1 + 320) + 16 * v47;
        v27 = *(v26 + 8);
        if (v27 >= v18)
        {
          *(v26 + 8) = v27 - 1;
        }

        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(v5, v26);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v46);
        v25 = v47;
      }

      while (v47 != -1);
    }
  }

LABEL_20:
  re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::remove(v5, &v35);
LABEL_21:
  v35 = 0;
  if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
  {
    v28 = *(a1 + 976);
    *&v46 = *a2;
    BYTE8(v46) = 0;
    re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::add((v28 + 136), &v46);
    if (BYTE8(v46) == 1)
    {
      re::TextureHandle::invalidate(&v47);
    }
  }
}

_anonymous_namespace_ *re::MaterialParameterBlock::removeBuffer(int8x16_t **a1, uint64_t *a2)
{
  v10 = *a2;
  re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::BufferSlice>>(&v10, a1 + 31, (a1 + 13));
  v10 = 0;
  result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
  if (result)
  {
    v5 = a1[122];
    v6 = *a2;
    v7 = 0;
    result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::add(&v5[6], &v6);
    if (v7 == 1 && v9 != -1)
    {
      return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v9])(&v11, &v8);
    }
  }

  return result;
}

void re::MaterialParameterBlock::removeSampler(int8x16_t **a1, uint64_t *a2)
{
  v7 = *a2;
  re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>>(&v7, a1 + 47, (a1 + 18));
  v7 = 0;
  if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
  {
    v4 = *a2;
    v5 = 0;
    re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::add(&a1[122][11], &v4);
    if (v5 == 1)
    {
      if (v6)
      {
      }
    }
  }
}

void *re::MaterialParameterBlock::addConstant(uint64_t *a1, void *a2, size_t a3, const void *a4, uint64_t a5)
{
  LODWORD(v6) = a5;
  v37 = *MEMORY[0x1E69E9840];
  v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 23, a2);
  if (v11 == -1)
  {
    v14 = a1[5] + 3;
    *buf = v14 & 0xFFFC;
    buf[2] = a3;
    buf[3] = v6;
    re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(a1 + 23, a2, buf);
    v12 = v14 & 0xFFFC;
    re::DynamicArray<BOOL>::resize((a1 + 3), v12 + a3);
    v15 = a1[5];
    if (v15 > v12)
    {
      goto LABEL_15;
    }

    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *buf = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = v12;
    v30 = 2048;
    v31 = v15;
    _os_log_send_and_compose_impl(v16, &v23, buf, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
  }

  else
  {
    v5 = a1[24] + 16 * v11;
    v12 = *re::graphicsLogObjects(v11);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    if (*a2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*a2)
      {
        v13 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *a2);
      }

      else
      {
        v13 = &str_67;
      }

      goto LABEL_13;
    }
  }

  v13 = 0;
LABEL_13:
  *buf = 136315138;
  *&buf[4] = v13;
  _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a mutable constant (%s) that already exists. Overwiting with new values.", buf, 0xCu);
LABEL_14:
  v12 = *(v5 + 8);
  v17 = a1[5];
  if (v17 <= v12)
  {
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *buf = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = v12;
    v30 = 2048;
    v31 = v17;
    _os_log_send_and_compose_impl(v21, &v23, buf, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
  }

LABEL_15:
  memcpy((a1[7] + v12), a4, a3);
  v22 = *a2;
  return re::MaterialParameterBlock::addConstantDelta(a1, &v22, a3, a4, v6);
}

void re::MaterialParameterBlock::addBinding(re::MaterialParameterBlock *a1, unint64_t *a2, char *a3, char *a4, uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v36 = *a2;
  v10 = re::MaterialParameterBlock::handle(a1, &v36, &v37);
  v36 = 0;
  if ((v38 & 7) != 0 && (v38 & 0x10) != 0)
  {
    v20 = *re::graphicsLogObjects(v10);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *a2;
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = 0;
      }

      else if (v22)
      {
        v23 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v22);
      }

      else
      {
        v23 = &str_67;
      }

      *buf = 136315650;
      *&buf[4] = v23;
      v40 = 2080;
      v41 = a3;
      v42 = 2080;
      v43 = a4;
      _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a mutable binding (%s) that already exists. Overwiting with new values (%s, %s).", buf, 0x20u);
    }

    re::MaterialParameterBlock::setBinding(v31, a3, a1, &v37, a4, a5);
    return;
  }

  v12 = re::StringID::invalid(buf);
  if (buf[0])
  {
    if (buf[0])
    {
    }
  }

  v13 = re::StringID::invalid(buf);
  if (buf[0])
  {
    if (buf[0])
    {
    }
  }

  v14 = 0;
  v32 = 1;
  v33 = *a2;
  while (1)
  {
    v15 = strcmp(re::s_materialTableIDMappings[v14], a3);
    if (!v15)
    {
      break;
    }

    if (++v14 == 168)
    {
      LOBYTE(v14) = 0;
      break;
    }
  }

  v34 = v14;
  if (a4)
  {
    v16 = *a4;
    if (*a4)
    {
      v17 = a4[1];
      if (v17)
      {
        v18 = a4 + 2;
        do
        {
          v16 = 31 * v16 + v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }

      v16 &= ~0x8000000000000000;
    }
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v35 = v16;
  if (a5 > 2)
  {
    if (a5 == 3)
    {
      v24 = (a1 + 504);
      goto LABEL_38;
    }

    if (a5 == 4)
    {
      v24 = (a1 + 632);
      goto LABEL_38;
    }

LABEL_34:
    v25 = *re::graphicsLogObjects(v15);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter type", buf, 2u);
    }

    goto LABEL_39;
  }

  if (a5 == 1)
  {
    v24 = (a1 + 440);
    goto LABEL_38;
  }

  if (a5 != 2)
  {
    goto LABEL_34;
  }

  v24 = (a1 + 568);
LABEL_38:
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addNew(v24, a2, &v32);
LABEL_39:
  if (!re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
  {
    return;
  }

  if (a5 > 2)
  {
    if (a5 == 3)
    {
      v30 = *(a1 + 122);
      *buf = *a2;
      buf[8] = 1;
      *(&v41 + 2) = v32;
      v43 = v33;
      v44 = v34;
      v45 = v35;
      v27 = (v30 + 256);
    }

    else
    {
      if (a5 != 4)
      {
        return;
      }

      v28 = *(a1 + 122);
      *buf = *a2;
      buf[8] = 1;
      *(&v41 + 2) = v32;
      v43 = v33;
      v44 = v34;
      v45 = v35;
      v27 = (v28 + 336);
    }
  }

  else if (a5 == 1)
  {
    v29 = *(a1 + 122);
    *buf = *a2;
    buf[8] = 1;
    *(&v41 + 2) = v32;
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v27 = (v29 + 216);
  }

  else
  {
    if (a5 != 2)
    {
      return;
    }

    v26 = *(a1 + 122);
    *buf = *a2;
    buf[8] = 1;
    *(&v41 + 2) = v32;
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v27 = (v26 + 296);
  }

  re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::add(v27, buf);
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 48 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = *(a2 + 16);
    *(v5 + 24) = *(a2 + 24);
    *(v5 + 32) = *(a2 + 32);
    *(v5 + 40) = *(a2 + 40);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

__n128 re::MaterialParameterBlock::setBinding@<Q0>(uint64_t *__return_ptr a1@<X8>, char *__s2@<X2>, re::MaterialParameterBlock *a3@<X0>, uint64_t *a4@<X1>, char *a5@<X3>, uint64_t a6@<X4>)
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = *(a4 + 12);
  if ((v11 & 8) == 0)
  {
    v30 = *a4;
    result.n128_f64[0] = re::MaterialParameterBlock::setBinding(a3, &v30, __s2, a5, a6, a1);
    return result;
  }

  v13 = 0;
  v31 = 1;
  v14 = *a4;
  v32 = *a4;
  while (1)
  {
    v15 = strcmp(re::s_materialTableIDMappings[v13], __s2);
    if (!v15)
    {
      break;
    }

    if (++v13 == 168)
    {
      LOBYTE(v13) = 0;
      break;
    }
  }

  v33 = v13;
  if (a5)
  {
    v16 = *a5;
    if (*a5)
    {
      v17 = a5[1];
      if (v17)
      {
        v18 = a5 + 2;
        do
        {
          v16 = 31 * v16 + v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }

      v16 &= ~0x8000000000000000;
    }
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v34 = v16;
  v20 = v11 & 7;
  if (v20 > 2)
  {
    if (v20 == 3)
    {
      *buf = v14;
      v21 = (a3 + 504);
      goto LABEL_27;
    }

    if (v20 == 4)
    {
      *buf = v14;
      v21 = (a3 + 632);
      goto LABEL_27;
    }
  }

  else
  {
    if (v20 == 1)
    {
      *buf = v14;
      v21 = (a3 + 440);
      goto LABEL_27;
    }

    if (v20 == 2)
    {
      *buf = v14;
      v21 = (a3 + 568);
LABEL_27:
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace(v21, buf, &v31);
      goto LABEL_28;
    }
  }

  v22 = *re::graphicsLogObjects(v15);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    if (*a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0;
    }

    else if (*a4)
    {
      v23 = re::WeakStringID::debugStr(void)const::msg;
      snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *a4);
    }

    else
    {
      v23 = &str_67;
    }

    *buf = 136315138;
    *&buf[4] = v23;
    _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Attempted to set a binding from an invalid handle %s", buf, 0xCu);
  }

LABEL_28:
  if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a3))
  {
    v24 = *(a4 + 12) & 7;
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v29 = *(a3 + 122);
        *buf = *a4;
        buf[8] = 1;
        v36 = v31;
        v37 = v32;
        v38 = v33;
        v39 = v34;
        v26 = (v29 + 256);
        goto LABEL_38;
      }

      if (v24 == 4)
      {
        v27 = *(a3 + 122);
        *buf = *a4;
        buf[8] = 1;
        v36 = v31;
        v37 = v32;
        v38 = v33;
        v39 = v34;
        v26 = (v27 + 336);
        goto LABEL_38;
      }
    }

    else
    {
      if (v24 == 1)
      {
        v28 = *(a3 + 122);
        *buf = *a4;
        buf[8] = 1;
        v36 = v31;
        v37 = v32;
        v38 = v33;
        v39 = v34;
        v26 = (v28 + 216);
        goto LABEL_38;
      }

      if (v24 == 2)
      {
        v25 = *(a3 + 122);
        *buf = *a4;
        buf[8] = 1;
        v36 = v31;
        v37 = v32;
        v38 = v33;
        v39 = v34;
        v26 = (v25 + 296);
LABEL_38:
        re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::add(v26, buf);
      }
    }
  }

  *a1 = *a4;
  result = *(a4 + 1);
  *(a1 + 1) = result;
  *(a1 + 24) = *(a4 + 24);
  return result;
}

void re::MaterialParameterBlock::addTexture(unint64_t *a1, const re::WeakStringID *a2, re::TextureHandle *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 39, a2);
  if (v6 == -1)
  {
    LODWORD(buf[0]) = *(a1 + 80);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew(a1 + 39, a2, buf);
    re::DynamicArray<re::TextureHandle>::add((a1 + 8), a3);
  }

  else
  {
    v7 = a1[40] + 16 * v6;
    v8 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 0;
      }

      else if (*a2)
      {
        v9 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *a2);
      }

      else
      {
        v9 = &str_67;
      }

      re::TextureHandle::metalTexture(v22, a3);
      v10 = *v22;
      v11 = [objc_msgSend(*v22 label)];
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = v9;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = v11;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a mutable texture (%s) that already exists. Overwiting with new value (%s).", buf, 0x16u);
      if (v10)
      {
      }
    }

    v12 = *(v7 + 8);
    v13 = a1[10];
    if (v13 <= v12)
    {
      v21 = 0;
      memset(buf, 0, sizeof(buf));
      v15 = MEMORY[0x1E69E9C10];
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v22 = 136315906;
      *&v22[4] = "operator[]";
      v23 = 1024;
      if (v16)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v24 = 789;
      v25 = 2048;
      v26 = v12;
      v27 = 2048;
      v28 = v13;
      _os_log_send_and_compose_impl(v17, &v21, buf, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v22, 38, v18, v19);
      _os_crash_msg();
      __break(1u);
    }

    v14 = a1[12] + 16 * v12;
    v20 = *a2;
    re::TextureHandle::stopTrackingMaterialParameterBlock(v14, a1, &v20);
    re::TextureHandle::operator=(v14, a3);
  }

  v19 = *a2;
  re::TextureHandle::startTrackingMaterialParameterBlock(a3, a1, &v19);
  re::MaterialParameterBlock::enqueueTextureValueChangedDelta(a1, a2, a3);
}

void re::MaterialParameterBlock::enqueueTextureValueChangedDelta(re::MaterialParameterBlock *this, const re::WeakStringID *a2, const re::TextureHandle *a3)
{
  if (*(this + 121) && re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(this))
  {
    v6 = *(this + 122);
    v7 = *a2;
    v8 = 1;
    re::TextureHandle::TextureHandle(v9, a3);
    re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::add((v6 + 136), &v7);
    if (v8 == 1)
    {
      re::TextureHandle::invalidate(v9);
    }
  }
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 32 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    if (*(a2 + 24))
    {
      v7 = *(a2 + 16);
      if (v7)
      {
        *(v5 + 16) = v7;
        *(v5 + 24) = *(a2 + 24);
        *(a2 + 24) = 0;
      }
    }

    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::MaterialParameterBlock::addBuffer(unint64_t *a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 31, a2);
  if (v6 == -1)
  {
    *buf = *(a1 + 120);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew(a1 + 31, a2, buf);
    re::DynamicArray<re::BufferSlice>::add((a1 + 13), a3);
  }

  else
  {
    v7 = a1[32] + 16 * v6;
    v8 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 0;
      }

      else if (*a2)
      {
        v9 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *a2);
      }

      else
      {
        v9 = &str_67;
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a mutable buffer (%s) that already exists. Overwiting with new value.", buf, 0xCu);
    }

    v10 = *(v7 + 8);
    v11 = a1[15];
    if (v11 <= v10)
    {
      v19 = 0;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      *buf = 0u;
      v16 = MEMORY[0x1E69E9C10];
      *v20 = 136315906;
      *&v20[4] = "operator[]";
      v21 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v22 = 789;
      v23 = 2048;
      v24 = v10;
      v25 = 2048;
      v26 = v11;
      _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v20, 38, v18);
      _os_crash_msg();
      __break(1u);
    }

    v12 = a1[17] + 40 * v10;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v12, a3);
    *(v12 + 32) = *(a3 + 32);
  }

  result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
  if (result)
  {
    *v20 = *a2;
    v20[8] = 0;
    *(&v26 + 2) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v20[8], a3);
    v14 = *(a3 + 32);
    v15 = a1[122];
    v27 = v14;
    *buf = *v20;
    buf[8] = 1;
    LOBYTE(v29) = 0;
    DWORD2(v30) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v29, &v20[8]);
    *&v31 = v27;
    result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::add((v15 + 96), buf);
    if (buf[8] == 1 && DWORD2(v30) != -1)
    {
      result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[DWORD2(v30)])(&v19, &v29);
    }

    if (*(&v26 + 2) != -1)
    {
      return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[*(&v26 + 2)])(buf, &v20[8]);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 56 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = 0;
    v7 = v5 + 16;
    *(v7 + 24) = -1;
    this = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v7, a2 + 16);
    *(v7 + 32) = *(a2 + 48);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

uint64_t re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::BufferSlice>>(void *a1, int8x16_t **a2, uint64_t a3)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a2, a1);
  if (result != -1)
  {
    v7 = &a2[1][result];
    re::DynamicArray<re::BufferSlice>::removeStableAt(a3, v7->u32[2]);
    v10 = v7->u32[2];
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::mapValues<void re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::AssetHandle>>(re::WeakStringID,re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &,re::DynamicArray<re::AssetHandle> &)::{lambda(re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &)#1}>(a2, &v10, v8, v9);
    return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::remove(a2, a1);
  }

  return result;
}

void re::MaterialParameterBlock::addSampler(unint64_t *a1, void *a2, id *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 47, a2);
  if (v6 == -1)
  {
    *buf = *(a1 + 160);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew(a1 + 47, a2, buf);
    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 18), a3);
  }

  else
  {
    v7 = a1[48] + 16 * v6;
    v8 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 0;
      }

      else if (*a2)
      {
        v9 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *a2);
      }

      else
      {
        v9 = &str_67;
      }

      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a sampler (%s) that already exists. Overwiting with new value.", buf, 0xCu);
    }

    v10 = *(v7 + 8);
    v11 = a1[20];
    if (v11 <= v10)
    {
      v18 = 0;
      v30 = 0u;
      v31 = 0u;
      *v28 = 0u;
      v29 = 0u;
      *buf = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v19 = 136315906;
      v20 = "operator[]";
      v21 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v22 = 789;
      v23 = 2048;
      v24 = v10;
      v25 = 2048;
      v26 = v11;
      _os_log_send_and_compose_impl(v16, &v18, buf, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
    }

    NS::SharedPtr<MTL::Buffer>::operator=((a1[22] + 8 * v10), a3);
  }

  if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
  {
    v12 = *a2;
    v13 = *a3;
    v14 = a1[122];
    *buf = v12;
    buf[8] = 1;
    v28[0] = v13;
    re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::add((v14 + 176), buf);
    if (buf[8] == 1 && v28[0])
    {
    }

    if (v13)
    {
    }
  }
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 24 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 24 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    this = *(a2 + 16);
    *(v5 + 16) = this;
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

uint64_t re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>>(void *a1, int8x16_t **a2, uint64_t a3)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a2, a1);
  if (result != -1)
  {
    v7 = &a2[1][result];
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::removeStableAt(a3, v7->u32[2]);
    v10 = v7->u32[2];
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::mapValues<void re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::AssetHandle>>(re::WeakStringID,re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &,re::DynamicArray<re::AssetHandle> &)::{lambda(re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &)#1}>(a2, &v10, v8, v9);
    return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::remove(a2, a1);
  }

  return result;
}

_anonymous_namespace_ *re::MaterialParameterBlock::addPassTechniqueMapping(re::MaterialParameterBlock *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a2;
  v10 = a4;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  DWORD1(v9) = 0x7FFFFFFF;
  v5 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(this + 888, &v10, &v7);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v7);
  re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v5, &v12, &v11);
  result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(this);
  if (result)
  {
    *&v7 = v10;
    *(&v7 + 1) = v12;
    LOBYTE(v8) = 1;
    *(&v8 + 1) = v11;
    LOBYTE(v9) = 0;
    return re::DynamicArray<re::PassTechniqueMappingDelta>::add((*(this + 122) + 496), &v7);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::PassTechniqueMappingDelta>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::PassTechniqueMappingDelta>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 40 * v4;
  *v5 = *a2;
  v6 = *(a2 + 16);
  *(v5 + 16) = v6;
  if (v6 == 1)
  {
    *(v5 + 24) = *(a2 + 24);
  }

  *(v5 + 32) = *(a2 + 32);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::MaterialParameterBlock::removePassTechniqueMapping(re::MaterialParameterBlock *this, unint64_t a2, unint64_t a3)
{
  v15 = a3;
  result = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 888, &v15);
  if (result)
  {
    if (*result)
    {
      v6 = a2 % *(result + 6);
      v7 = *(*(result + 1) + 4 * v6);
      if (v7 != 0x7FFFFFFF)
      {
        v8 = *(result + 2);
        v9 = *(*(result + 1) + 4 * v6);
        while (*(v8 + 24 * v9 + 8) != a2)
        {
          v9 = *(v8 + 24 * v9) & 0x7FFFFFFF;
          if (v9 == 0x7FFFFFFF)
          {
            return result;
          }
        }

        if (*(v8 + 24 * v7 + 8) == a2)
        {
          LODWORD(v10) = *(*(result + 1) + 4 * v6);
          v7 = 0x7FFFFFFF;
          goto LABEL_15;
        }

        v10 = *(v8 + 24 * v7) & 0x7FFFFFFF;
        if (v10 != 0x7FFFFFFF)
        {
          if (*(v8 + 24 * v10 + 8) == a2)
          {
LABEL_15:
            v11 = a2;
            v12 = __PAIR64__(v10, v6);
            v13 = v7;
            re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal(result, &v11);
            result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(this);
            if (result)
            {
              v11 = v15;
              v12 = a2;
              LOBYTE(v13) = 0;
              v14 = 0;
              return re::DynamicArray<re::PassTechniqueMappingDelta>::add((*(this + 122) + 496), &v11);
            }

            return result;
          }

          while (1)
          {
            v7 = v10;
            v10 = *(v8 + 24 * v10) & 0x7FFFFFFF;
            if (v10 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v8 + 24 * v10 + 8) == a2)
            {
              goto LABEL_15;
            }
          }
        }

        LODWORD(v10) = 0x7FFFFFFF;
        goto LABEL_15;
      }
    }
  }

  return result;
}

uint64_t re::MaterialParameterBlock::tryGetPassTechniqueMapping(re::MaterialParameterBlock *this, unint64_t a2, uint64_t a3)
{
  v7 = a3;
  result = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 888, &v7);
  if (result)
  {
    if (!*result)
    {
      return 0;
    }

    v5 = *(*(result + 8) + 4 * (a2 % *(result + 24)));
    if (v5 == 0x7FFFFFFF)
    {
      return 0;
    }

    else
    {
      v6 = *(result + 16);
      while (*(v6 + 24 * v5 + 8) != a2)
      {
        v5 = *(v6 + 24 * v5) & 0x7FFFFFFF;
        if (v5 == 0x7FFFFFFF)
        {
          return 0;
        }
      }

      return v6 + 24 * v5 + 16;
    }
  }

  return result;
}

uint64_t re::MaterialParameterBlock::setDepthBiasState(uint64_t this, unsigned __int8 *a2)
{
  v3 = this;
  v4 = *(this + 948);
  v5 = *a2;
  if (v4 != 1 || v5 == 0)
  {
    if ((v4 & 1) == 0 && !*a2)
    {
      return this;
    }
  }

  else if (*(this + 952) == *(a2 + 1) && *(this + 956) == *(a2 + 2) && *(this + 960) == *(a2 + 3))
  {
    return this;
  }

  if ((v4 & 1) == 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_18;
    }

    *(this + 948) = 1;
LABEL_17:
    v7 = *(a2 + 4);
    *(this + 960) = *(a2 + 3);
    *(this + 952) = v7;
    goto LABEL_18;
  }

  if (v5)
  {
    goto LABEL_17;
  }

  *(this + 948) = 0;
LABEL_18:
  this = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(this);
  if (!this)
  {
    return this;
  }

  v8 = *(v3 + 976);
  if (*(v8 + 548))
  {
    if ((*a2 & 1) == 0)
    {
      *(v8 + 548) = 0;
      return this;
    }
  }

  else
  {
    if ((*a2 & 1) == 0)
    {
      return this;
    }

    *(v8 + 548) = 1;
  }

  v9 = *(a2 + 4);
  *(v8 + 560) = *(a2 + 3);
  *(v8 + 552) = v9;
  return this;
}

void re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(uint64_t *__return_ptr a1@<X8>, re::MaterialParameterBlock *this@<X0>)
{
  v3 = *(this + 124);
  if (v3)
  {
    *a1 = v3;
LABEL_6:
    v8 = (v3 + 8);
    return;
  }

  re::make::shared::object<re::MaterialParameterTable>(this, &v9);
  v6 = *(this + 124);
  *(this + 124) = v9;
  v9 = v6;
  if (v6)
  {
  }

  *(this + 125) = 0xFFFFFFFFFFFFFFFLL;
  v3 = *(this + 124);
  *a1 = v3;
  if (v3)
  {
    goto LABEL_6;
  }
}

uint64_t re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(re::MaterialParameterBlock *a1, void *a2)
{
  v11[5] = *MEMORY[0x1E69E9840];
  re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(&v10, a1);
  v4 = a2[3];
  if (((*(a1 + 125) ^ v4) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    v7 = v10;
    if (!v10)
    {
      return v7;
    }

    goto LABEL_5;
  }

  v5 = (*(*a2 + 32))(a2, 8, 8);
  v6 = v5;
  v7 = v10;
  *v5 = v10;
  if (v7)
  {
    v5 = (v7 + 8);
  }

  v8 = re::globalAllocators(v5)[2];
  v11[0] = &unk_1F5D09218;
  v11[3] = v8;
  v11[4] = v11;
  (*(*a2 + 16))(a2, v6, v11);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v11);
  *(a1 + 125) = v4;
  if (v7)
  {
LABEL_5:
  }

  return v7;
}

void *re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(re::Allocator *a1, re::MaterialParameterTableBuilder *a2)
{
  v4 = (*(*a2 + 32))(a2, 1128, 8);
  bzero(v4, 0x468uLL);
  re::MaterialParameterTable::MaterialParameterTable(v4);
  re::MaterialParameterTableBuilder::build(a2, a1, v4, v5);
  re::MaterialParameterTable::buildPerFrameDestructor(v4, a2);
  return v4;
}

void re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(const re::MaterialParameterBlock **__return_ptr a1@<X8>, re::MaterialParameterBlock *this@<X0>)
{
  re::make::shared::object<re::MaterialParameterTable>(this, a1);
  v6 = *a1;
}

void *re::MaterialParameterBlock::copyParametersFromArray(re::Allocator *a1, void *a2, uint64_t a3)
{
  v6 = (*(*a1 + 32))(a1, 1128, 8);
  bzero(v6, 0x468uLL);
  re::MaterialParameterTable::MaterialParameterTable(v6);
  re::MaterialParameterTableBuilder::buildFromParameterBlockArray(a1, a2, a3, v6);
  re::MaterialParameterTable::buildPerFrameDestructor(v6, a1);
  return v6;
}

double re::MaterialParameterBlock::setConstant@<D0>(re::MaterialParameterBlock *a1@<X0>, unint64_t *a2@<X1>, size_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = *a2;
  re::MaterialParameterBlock::handle(a1, &v19, a6);
  v19 = 0;
  if ((*(a6 + 12) & 7) != 0)
  {
    *&result = re::MaterialParameterBlock::setConstant(v13, a3, a4, a1, a6, a5).n128_u64[0];
  }

  else
  {
    v18 = *a2;
    re::MaterialParameterBlock::addConstant(a1, &v18, a3, a4, a5);
    v18 = 0;
    v14 = *a2;
    re::MaterialParameterBlock::handle(a1, &v14, &v15);
    *a6 = v15;
    result = *&v16;
    *(a6 + 8) = v16;
    *(a6 + 24) = v17;
  }

  return result;
}

__n128 re::MaterialParameterBlock::setConstant@<Q0>(uint64_t *__return_ptr a1@<X8>, size_t __n@<X2>, void *__s2@<X3>, re::MaterialParameterBlock *a4@<X0>, uint64_t a5@<X1>, uint64_t a6@<X4>)
{
  v6 = a6;
  v32 = *MEMORY[0x1E69E9840];
  if ((*(a5 + 12) & 8) != 0)
  {
    v14 = (a5 + 8);
    v13 = *(a5 + 8);
    v15 = *(a4 + 5);
    if (v15 <= v13)
    {
      v22 = 0;
      memset(v31, 0, sizeof(v31));
      v17 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v26 = 789;
      v27 = 2048;
      v28 = v13;
      v29 = 2048;
      v30 = v15;
      _os_log_send_and_compose_impl(v18, &v22, v31, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v19, v20);
      _os_crash_msg();
      __break(1u);
    }

    v16 = *(a4 + 7);
    if (memcmp((v16 + v13), __s2, __n))
    {
      memcpy((v16 + v13), __s2, __n);
      v21 = *a5;
      re::MaterialParameterBlock::addConstantDelta(a4, &v21, __n, __s2, v6);
    }

    *a1 = *a5;
    result = *v14;
    *(a1 + 1) = *v14;
    *(a1 + 24) = *(a5 + 24);
  }

  else
  {
    v20 = *a5;
    result.n128_f64[0] = re::MaterialParameterBlock::setConstant(a4, &v20, __n, __s2, a6, a1);
  }

  return result;
}

void *re::MaterialParameterBlock::addConstantDelta(re::MaterialParameterBlock *a1, void *a2, size_t a3, const void *a4, int a5)
{
  v28 = *MEMORY[0x1E69E9840];
  result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
  if (result)
  {
    v11 = *(a1 + 122);
    v12 = *(v11 + 32) + 3;
    *&v27[0] = *a2;
    BYTE8(v27[0]) = 1;
    *(v27 + 10) = v12 & 0xFFFC | (a3 << 16) | (a5 << 24);
    re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::add((v11 + 56), v27);
    re::DynamicArray<BOOL>::resize(*(a1 + 122) + 16, (v12 & 0xFFFC) + a3);
    v13 = *(a1 + 122);
    v14 = *(v13 + 32);
    if (v14 <= (v12 & 0xFFFCu))
    {
      v18 = 0;
      memset(v27, 0, sizeof(v27));
      v15 = MEMORY[0x1E69E9C10];
      v19 = 136315906;
      v20 = "operator[]";
      v21 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v22 = 789;
      v23 = 2048;
      v24 = v12 & 0xFFFC;
      v25 = 2048;
      v26 = v14;
      _os_log_send_and_compose_impl(v16, &v18, v27, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
    }

    return memcpy((*(v13 + 48) + (v12 & 0xFFFC)), a4, a3);
  }

  return result;
}

_anonymous_namespace_ *re::MaterialParameterBlock::addRemoveConstantDelta(re::MaterialParameterBlock *a1, uint64_t *a2)
{
  result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
  if (result)
  {
    v5 = *(a1 + 122);
    v6 = *a2;
    v7 = 0;
    return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::add((v5 + 56), &v6);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v4 >= v5)
  {
    v6 = v4 + 1;
    if (v5 < v4 + 1)
    {
      if (*result)
      {
        v7 = 2 * v5;
        if (!v5)
        {
          v7 = 8;
        }

        if (v7 <= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::setCapacity(result, v8);
      }

      else
      {
        result = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::ConstantLocation>,true>>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v4 = *(v3 + 2);
  }

  v9 = *(v3 + 4) + 16 * v4;
  *v9 = *a2;
  v10 = *(a2 + 8);
  *(v9 + 8) = v10;
  if (v10 == 1)
  {
    *(v9 + 10) = *(a2 + 10);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return result;
}

double re::MaterialParameterBlock::setBool@<D0>(uint64_t *__return_ptr a1@<X8>, re::MaterialParameterBlock *this@<X0>, const char *a3@<X1>, char a4@<W2>)
{
  v9 = a4;
  if (a3)
  {
    v4 = *a3;
    if (*a3)
    {
      v5 = a3[1];
      if (v5)
      {
        v6 = a3 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(this, &v10, 1uLL, &v9, 2, a1);
}

double re::MaterialParameterBlock::setFloat@<D0>(uint64_t *__return_ptr a1@<X8>, re::MaterialParameterBlock *this@<X0>, const char *a3@<X1>, float a4@<S0>)
{
  v9 = a4;
  if (a3)
  {
    v4 = *a3;
    if (*a3)
    {
      v5 = a3[1];
      if (v5)
      {
        v6 = a3 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(this, &v10, 4uLL, &v9, 1, a1);
}

double re::MaterialParameterBlock::setInt@<D0>(re::MaterialParameterBlock *this@<X0>, const char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(this, &v10, 4uLL, &v9, 3, a4);
}

double re::MaterialParameterBlock::setUint@<D0>(uint64_t *__return_ptr a1@<X8>, re::MaterialParameterBlock *this@<X0>, const char *a3@<X1>, int a4@<W2>)
{
  v9 = a4;
  if (a3)
  {
    v4 = *a3;
    if (*a3)
    {
      v5 = a3[1];
      if (v5)
      {
        v6 = a3 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(this, &v10, 4uLL, &v9, 7, a1);
}

double re::MaterialParameterBlock::setVector2F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 8uLL, &v9, 32, a4);
}

double re::MaterialParameterBlock::setInt2@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 8uLL, &v9, 4, a3);
}

double re::MaterialParameterBlock::setUint2@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 8uLL, &v9, 8, a3);
}

double re::MaterialParameterBlock::setVector3F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }

      v5 &= ~0x8000000000000000;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v5;
  return re::MaterialParameterBlock::setConstant(a1, &v11, 0x10uLL, v10, 33, a5);
}

double re::MaterialParameterBlock::setColorGamut3F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[0] = a3;
  v19[1] = a4;
  v8 = *(a1 + 121);
  if (v8 && (v9 = *(v8 + 160)) != 0)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  *&v11 = re::ColorGamut3F::as(v19, v10, 1);
  DWORD2(v11) = v12;
  v18 = v11;
  if (a2)
  {
    v13 = *a2;
    if (*a2)
    {
      v14 = a2[1];
      if (v14)
      {
        v15 = a2 + 2;
        do
        {
          v13 = 31 * v13 + v14;
          v16 = *v15++;
          v14 = v16;
        }

        while (v16);
      }

      v13 &= ~0x8000000000000000;
    }
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = v13;
  return re::MaterialParameterBlock::setConstant(a1, &v20, 0x10uLL, &v18, 20, a5);
}

double re::MaterialParameterBlock::setColorGamut3F@<D0>(re::MaterialParameterBlock *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v8 = *(a1 + 121);
  if (v8 && (v9 = *(v8 + 160)) != 0)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  *&v11 = re::ColorGamut3F::as(v16, v10, 1);
  DWORD2(v11) = v12;
  v15 = v11;
  v14 = *a2;
  return re::MaterialParameterBlock::setConstant(a1, &v14, 0x10uLL, &v15, 20, a5);
}

double re::MaterialParameterBlock::setColorGamut3F@<D0>(re::MaterialParameterBlock *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v15[0] = a3;
  v15[1] = a4;
  v8 = *(a1 + 121);
  if (v8 && (v9 = *(v8 + 160)) != 0)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  *&v11 = re::ColorGamut3F::as(v15, v10, 1);
  DWORD2(v11) = v12;
  v14 = v11;
  *&result = re::MaterialParameterBlock::setConstant(a5, 0x10uLL, &v14, a1, a2, 20).n128_u64[0];
  return result;
}

double re::MaterialParameterBlock::setInt3@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 0x10uLL, &v9, 5, a3);
}

double re::MaterialParameterBlock::setUint3@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 0x10uLL, &v9, 9, a3);
}

double re::MaterialParameterBlock::setVector4F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }

      v5 &= ~0x8000000000000000;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v5;
  return re::MaterialParameterBlock::setConstant(a1, &v11, 0x10uLL, v10, 34, a5);
}

double re::MaterialParameterBlock::setColorGamut4F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 121);
  if (v7 && (v8 = *(v7 + 160)) != 0)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  re::ColorGamut4F::as(a3, v9, 1, v15);
  v16 = *v15;
  if (a2)
  {
    v10 = *a2;
    if (*a2)
    {
      v11 = a2[1];
      if (v11)
      {
        v12 = a2 + 2;
        do
        {
          v10 = 31 * v10 + v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }

      v10 &= ~0x8000000000000000;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15[0] = v10;
  return re::MaterialParameterBlock::setConstant(a1, v15, 0x10uLL, &v16, 21, a4);
}

double re::MaterialParameterBlock::setColorGamut4F@<D0>(re::MaterialParameterBlock *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 121);
  if (v7 && (v8 = *(v7 + 160)) != 0)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  re::ColorGamut4F::as(a3, v9, 1, &v12);
  v13 = v12;
  v11 = *a2;
  return re::MaterialParameterBlock::setConstant(a1, &v11, 0x10uLL, &v13, 21, a4);
}

double re::MaterialParameterBlock::setColorGamut4F@<D0>(re::MaterialParameterBlock *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 121);
  if (v7 && (v8 = *(v7 + 160)) != 0)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  re::ColorGamut4F::as(a3, v9, 1, &v11);
  __s2 = v11;
  *&result = re::MaterialParameterBlock::setConstant(a4, 0x10uLL, &__s2, a1, a2, 21).n128_u64[0];
  return result;
}

double re::MaterialParameterBlock::setInt4@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 0x10uLL, &v9, 6, a3);
}

double re::MaterialParameterBlock::setUint4@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v10, 0x10uLL, &v9, 10, a3);
}

double re::MaterialParameterBlock::setMatrix2x2F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }

      v5 &= ~0x8000000000000000;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v5;
  return re::MaterialParameterBlock::setConstant(a1, &v11, 0x10uLL, v10, 48, a5);
}

double re::MaterialParameterBlock::setMatrix3x3F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v9, 0x30uLL, a3, 49, a4);
}

double re::MaterialParameterBlock::setMatrix4x4F@<D0>(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  return re::MaterialParameterBlock::setConstant(a1, &v9, 0x40uLL, a3, 50, a4);
}

double re::MaterialParameterBlock::setTextureHandle@<D0>(uint64_t *__return_ptr a1@<X8>, re::MaterialParameterBlock *this@<X0>, const char *a3@<X1>, const re::TextureHandle *a4@<X2>)
{
  if (a3)
  {
    v4 = *a3;
    if (*a3)
    {
      v5 = a3[1];
      if (v5)
      {
        v6 = a3 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  return re::MaterialParameterBlock::setTextureHandle(this, &v9, a4, a1);
}

double re::MaterialParameterBlock::setTextureHandle@<D0>(re::MaterialParameterBlock *a1@<X0>, unint64_t *a2@<X1>, re::TextureHandle *a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *a2;
  re::MaterialParameterBlock::handle(a1, &v15, a4);
  v15 = 0;
  if ((*(a4 + 12) & 7) != 0)
  {
    *&result = re::MaterialParameterBlock::setTextureHandle(a1, a4, a3, v9).n128_u64[0];
  }

  else
  {
    v14 = *a2;
    re::MaterialParameterBlock::addTexture(a1, &v14, a3);
    v14 = 0;
    v10 = *a2;
    re::MaterialParameterBlock::handle(a1, &v10, &v11);
    *a4 = v11;
    result = *&v12;
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
  }

  return result;
}

__n128 re::MaterialParameterBlock::setTextureHandle@<Q0>(re::MaterialParameterBlock *a1@<X0>, uint64_t a2@<X1>, const re::TextureHandle *a3@<X2>, uint64_t a4@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v21 = *a2;
  if ((*(a2 + 12) & 8) != 0)
  {
    v11 = (a2 + 8);
    v10 = *(a2 + 8);
    v12 = *(a1 + 10);
    if (v12 <= v10)
    {
      v22 = 0;
      memset(v31, 0, sizeof(v31));
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

      v26 = 789;
      v27 = 2048;
      v28 = v10;
      v29 = 2048;
      v30 = v12;
      _os_log_send_and_compose_impl(v16, &v22, v31, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v17, v18);
      _os_crash_msg();
      __break(1u);
    }

    v13 = *(a1 + 12) + 16 * v10;
    if (*(a3 + 1) != *(v13 + 8))
    {
      v20 = v7;
      re::TextureHandle::stopTrackingMaterialParameterBlock(v13, a1, &v20);
      v14 = re::TextureHandle::operator=(v13, a3);
      v19 = v7;
      re::TextureHandle::startTrackingMaterialParameterBlock(v14, a1, &v19);
      re::MaterialParameterBlock::enqueueTextureValueChangedDelta(a1, &v21, a3);
      v7 = *a2;
    }

    *a4 = v7;
    result = *v11;
    *(a4 + 8) = *v11;
    *(a4 + 24) = v11[1].n128_u8[0];
  }

  else
  {
    v18 = v7;
    result.n128_f64[0] = re::MaterialParameterBlock::setTextureHandle(a1, &v18, a3, a4);
  }

  return result;
}

__n128 re::MaterialParameterBlock::setBuffer@<Q0>(re::MaterialParameterBlock *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 12) & 8) != 0)
  {
    v10 = (a2 + 1);
    v9 = *(a2 + 4);
    v11 = *(a1 + 15);
    if (v11 <= v9)
    {
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v34 = 0u;
      v35 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      *v26 = 136315906;
      *&v26[4] = "operator[]";
      v27 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v28 = 789;
      v29 = 2048;
      v30 = v9;
      v31 = 2048;
      v32 = v11;
      _os_log_send_and_compose_impl(v16, &v25, &v34, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v26, 38, v20, v21[0]);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      if (re::BufferSlice::operator==((*(a1 + 17) + 40 * *(a2 + 4)), a3))
      {
LABEL_13:
        *a4 = *a2;
        result = *v10;
        *(a4 + 8) = *v10;
        *(a4 + 24) = *(a2 + 24);
        return result;
      }

      v9 = v10->n128_u16[0];
      v11 = *(a1 + 15);
      if (v11 > v9)
      {
        v12 = *(a1 + 17) + 40 * v10->n128_u16[0];
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v12, a3);
        *(v12 + 32) = *(a3 + 32);
        if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
        {
          *v26 = *a2;
          v26[8] = 0;
          *(&v32 + 2) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v26[8], a3);
          v13 = *(a3 + 32);
          v14 = *(a1 + 122);
          v33 = v13;
          *&v34 = *v26;
          BYTE8(v34) = 1;
          LOBYTE(v35) = 0;
          DWORD2(v36) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v35, &v26[8]);
          *&v37 = v33;
          re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::add((v14 + 96), &v34);
          if (BYTE8(v34) == 1 && DWORD2(v36) != -1)
          {
            (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[DWORD2(v36)])(&v25, &v35);
          }

          if (*(&v32 + 2) != -1)
          {
            (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[*(&v32 + 2)])(&v34, &v26[8]);
          }
        }

        goto LABEL_13;
      }
    }

    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v26 = 136315906;
    *&v26[4] = "operator[]";
    v27 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = v9;
    v31 = 2048;
    v32 = v11;
    _os_log_send_and_compose_impl(v19, &v25, &v34, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v26, 38, v20, v21[0]);
    _os_crash_msg();
    __break(1u);
  }

  v24 = *a2;
  LOBYTE(v21[0]) = 0;
  v22 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v21, a3);
  v23 = *(a3 + 32);
  result.n128_f64[0] = re::MaterialParameterBlock::setBuffer(a1, &v24, v21, a4);
  if (v22 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v22])(&v34, v21, result.n128_f64[0]);
  }

  return result;
}

double re::MaterialParameterBlock::setBuffer@<D0>(re::MaterialParameterBlock *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *a2;
  re::MaterialParameterBlock::handle(a1, &v22, a4);
  v22 = 0;
  if ((*(a4 + 12) & 7) != 0)
  {
    v10[0] = 0;
    v11 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v10, a3);
    v12 = *(a3 + 32);
    v8 = re::MaterialParameterBlock::setBuffer(a1, a4, v10, v13);
    v13[0] = 0;
    if (v11 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v11])(&v15, v10, v8);
    }
  }

  else
  {
    v21 = *a2;
    v18[0] = 0;
    v19 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v18, a3);
    v20 = *(a3 + 32);
    re::MaterialParameterBlock::addBuffer(a1, &v21, v18);
    if (v19 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v19])(&v15, v18);
    }

    v19 = -1;
    v21 = 0;
    v14 = *a2;
    re::MaterialParameterBlock::handle(a1, &v14, &v15);
    *a4 = v15;
    v8.n128_u64[0] = v16;
    *(a4 + 8) = v16;
    *(a4 + 24) = v17;
  }

  return v8.n128_f64[0];
}

void re::MaterialParameterBlock::setBuffer(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = a2[1];
      if (v8)
      {
        v9 = a2 + 2;
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      v7 &= ~0x8000000000000000;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15 = v7;
  v12[0] = 0;
  v13 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v12, a3);
  v14 = *(a3 + 32);
  v11 = re::MaterialParameterBlock::setBuffer(a1, &v15, v12, a4);
  if (v13 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v13])(&v16, v12, v11);
  }
}

void re::MaterialParameterBlock::setBufferWithBytes(re::MaterialParameterBlock *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(*(a1 + 121) + 208);
  v11 = [v10 newBufferWithBytes:a3 length:a4 options:0];
  v17 = *a2;
  v13[0] = v11;
  v14 = 0;
  v15 = 0;
  v16 = [v11 length];
  v12 = re::MaterialParameterBlock::setBuffer(a1, &v17, v13, a5);
  if (v14 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v14])(&v18, v13, v12);
  }

  v14 = -1;
  if (v11)
  {
  }
}

void re::MaterialParameterBlock::setSampler(re::MaterialParameterBlock *a1@<X0>, char *a2@<X1>, id *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = a2[1];
      if (v7)
      {
        v8 = a2 + 2;
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }

      v6 &= ~0x8000000000000000;
    }
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v6;
  v10 = *a3;
  v11 = v10;
  re::MaterialParameterBlock::setSampler(a1, &v12, &v11, a4);
  if (v10)
  {
  }
}

double re::MaterialParameterBlock::setSampler@<D0>(re::MaterialParameterBlock *a1@<X0>, unint64_t *a2@<X1>, id *a3@<X2>, uint64_t a4@<X8>)
{
  v17 = *a2;
  re::MaterialParameterBlock::handle(a1, &v17, a4);
  v17 = 0;
  if ((*(a4 + 12) & 7) != 0)
  {
    v9 = *a3;
    *&result = re::MaterialParameterBlock::setSampler(a1, a4, &v9, v10).n128_u64[0];
    v10[0] = 0;
    if (v9)
    {
    }
  }

  else
  {
    v16 = *a2;
    v15 = *a3;
    re::MaterialParameterBlock::addSampler(a1, &v16, &v15);
    if (v15)
    {

      v15 = 0;
    }

    v16 = 0;
    v11 = *a2;
    re::MaterialParameterBlock::handle(a1, &v11, &v12);
    *a4 = v12;
    result = *&v13;
    *(a4 + 8) = v13;
    *(a4 + 24) = v14;
  }

  return result;
}

__n128 re::MaterialParameterBlock::setSampler@<Q0>(re::MaterialParameterBlock *a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 12) & 8) != 0)
  {
    v10 = (a2 + 8);
    v11 = *(a2 + 8);
    v12 = *(a1 + 20);
    if (v12 <= v11)
    {
      v22 = 0;
      v34 = 0u;
      v35 = 0u;
      *v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v17 = MEMORY[0x1E69E9C10];
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v26 = 789;
      v27 = 2048;
      v28 = v11;
      v29 = 2048;
      v30 = v12;
      _os_log_send_and_compose_impl(v18, &v22, &v31, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v19, v20);
      _os_crash_msg();
      __break(1u);
    }

    v13 = (*(a1 + 22) + 8 * v11);
    if (*v13 != *a3)
    {
      NS::SharedPtr<MTL::Buffer>::operator=(v13, a3);
      if (re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
      {
        v14 = *a2;
        v15 = *a3;
        v16 = *(a1 + 122);
        *&v31 = v14;
        BYTE8(v31) = 1;
        v32[0] = v15;
        re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::add((v16 + 176), &v31);
        if (BYTE8(v31) == 1 && v32[0])
        {
        }

        if (v15)
        {
        }
      }
    }

    *a4 = *a2;
    result = *v10;
    *(a4 + 8) = *v10;
    *(a4 + 24) = *(a2 + 24);
  }

  else
  {
    v21 = *a2;
    v8 = *a3;
    v20 = v8;
    result.n128_f64[0] = re::MaterialParameterBlock::setSampler(a1, &v21, &v20, a4);
    if (v8)
    {
    }
  }

  return result;
}

BOOL re::MaterialParameterBlock::bindTextureToSampler(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 47, a3);
  if (v9 == -1)
  {
    v17 = *re::graphicsLogObjects(0xFFFFFFFFFFFFFFFFLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *a2;
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = 0;
      }

      else if (v18)
      {
        v19 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v18);
      }

      else
      {
        v19 = &str_67;
      }

      v28 = *a3;
      if (*a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = 0;
      }

      else if (v28)
      {
        v29 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v28);
      }

      else
      {
        v29 = &str_67;
      }

      *buf = 136315394;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = v29;
      _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Attempting to bind texture %s to non-existent sampler %s, skipping binding.", buf, 0x16u);
    }
  }

  else
  {
    v10 = a1[48];
    re::DynamicString::format(buf, "%llu", v8, a4);
    v11 = &buf[9];
    if (buf[8])
    {
      v11 = *&buf[16];
    }

    if (v11)
    {
      v12 = *v11;
      if (v12)
      {
        if (buf[8])
        {
          v13 = (*&buf[16] + 1);
        }

        else
        {
          v13 = &buf[10];
        }

        v14 = *v13;
        if (*v13)
        {
          v15 = v13 + 1;
          do
          {
            v12 = 31 * v12 + v14;
            v16 = *v15++;
            v14 = v16;
          }

          while (v16);
        }

        v12 &= ~0x8000000000000000;
      }
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v34 = v12;
    if (*buf)
    {
      v20 = (buf[8] & 1) == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      (*(**buf + 40))();
    }

    v21 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 47, &v34);
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addOrReplace(a1 + 87, a2, &v34);
    re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
    if (v21 == -1)
    {
      v22 = *(v10 + 16 * v9 + 8);
      *buf = a1[20];
      re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew(a1 + 47, &v34, buf);
      v23 = a1[20];
      if (v23 <= v22)
      {
        v35 = 0;
        v45 = 0u;
        v46 = 0u;
        v44 = 0u;
        memset(buf, 0, sizeof(buf));
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v36 = 136315906;
        *&v36[4] = "operator[]";
        v37 = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        v38 = 789;
        v39 = 2048;
        v40 = v22;
        v41 = 2048;
        v42 = v23;
        _os_log_send_and_compose_impl(v33, &v35, buf, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v34);
        _os_crash_msg();
        __break(1u);
      }

      *v36 = *(a1[22] + 8 * v22);
      re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 18), v36);
      if (a1[122])
      {
        v24 = v34;
        v25 = *v36;
        v26 = a1[122];
        *buf = v24;
        buf[8] = 1;
        *&buf[16] = v25;
        re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::add((v26 + 176), buf);
        if (buf[8] == 1 && *&buf[16])
        {
        }

        if (v25)
        {
        }
      }

      if (*v36)
      {
      }
    }

    v27 = a1[122];
    if (v27)
    {
      *buf = *a2;
      buf[8] = 1;
      *&buf[16] = v34;
      re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakStringID>,true>>::add((v27 + 376), buf);
    }
  }

  return v9 != -1;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakStringID>,true>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 24 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 16) = *(a2 + 16);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

BOOL re::MaterialParameterBlock::unbindTextureFromSamplers(re::MaterialParameterBlock *a1, uint64_t *a2)
{
  v4 = re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::remove(a1 + 696, a2);
  if (v4 && re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1))
  {
    v5 = *(a1 + 122);
    v7 = *a2;
    v8 = 0;
    re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakStringID>,true>>::add((v5 + 376), &v7);
  }

  return v4;
}

uint64_t re::MaterialParameterBlock::setUVIndexForTexture(re::MaterialParameterBlock *a1, uint64_t *a2, int a3)
{
  v11 = a3;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 95, a2);
  if (result == -1 || *(*(a1 + 96) + 16 * result + 8) != a3)
  {
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addOrReplace(a1 + 95, a2, &v11);
    result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
    if (result)
    {
      v7 = *(a1 + 122);
      v8 = *a2;
      v9 = 1;
      v10 = v11;
      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::add((v7 + 416), &v8);
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 16 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 12) = *(a2 + 12);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

uint64_t re::MaterialParameterBlock::setSwizzleForTexture(re::MaterialParameterBlock *a1, unint64_t *a2, int a3)
{
  v12 = a3;
  v10 = *a2;
  result = re::MaterialParameterBlock::handle(a1, &v10, v11);
  v10 = 0;
  if ((v11[12] & 7) != 0)
  {
    result = re::MaterialParameterHandle::isParameterType(v11, 64);
    if (result)
    {
      re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::addOrReplace(a1 + 103, a2, &v12);
      result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
      if (result)
      {
        v6 = *(a1 + 122);
        v7 = *a2;
        v8 = 1;
        v9 = v12;
        return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::add((v6 + 456), &v7);
      }
    }
  }

  return result;
}

unint64_t re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::addOrReplace(uint64_t *a1, void *a2, _DWORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = v6;
    re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::updateKvpsHash(a1, (a1[1] + 16 * v6));
    *(a1[1] + 16 * v7 + 8) = *a3;
    re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::updateKvpsHash(a1, (a1[1] + 16 * v7));
    return a1[1] + 16 * v7 + 8;
  }
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 16 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = v6;
  if (v6 == 1)
  {
    *(v5 + 9) = *(a2 + 9);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::MaterialParameterBlock::resetSwizzleForTexture(re::MaterialParameterBlock *a1, uint64_t *a2)
{
  result = re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::remove(a1 + 824, a2);
  if (result)
  {
    result = re::MaterialParameterBlock::ensureThisFrameRenderThreadDeltaIsAllocated(a1);
    if (result)
    {
      v5 = *a2;
      v6 = 0;
      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::add((*(a1 + 122) + 456), &v5);
    }
  }

  return result;
}

BOOL re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::updateHashes(a1, (*(a1 + 8) + 16 * v3));
    v10 = *(a1 + 16);
    *(*(a1 + 8) + 16 * v4) = 0;
    v11.i64[0] = -1;
    v11.i64[1] = v8;
    v12 = vaddq_s64(*(a1 + 24), v11);
    *(a1 + 24) = v12;
    if (v10 >= 0x11 && v12.i64[0] < v10 >> 2)
    {
      re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

double re::MaterialParameterBlock::setBinding@<D0>(re::MaterialParameterBlock *a1@<X0>, unint64_t *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = *a2;
  re::MaterialParameterBlock::handle(a1, &v19, a6);
  v19 = 0;
  if ((*(a6 + 12) & 7) != 0)
  {
    *&result = re::MaterialParameterBlock::setBinding(v13, a3, a1, a6, a4, a5).n128_u64[0];
  }

  else
  {
    v18 = *a2;
    re::MaterialParameterBlock::addBinding(a1, &v18, a3, a4, a5);
    v18 = 0;
    v14 = *a2;
    re::MaterialParameterBlock::handle(a1, &v14, &v15);
    *a6 = v15;
    result = *&v16;
    *(a6 + 8) = v16;
    *(a6 + 24) = v17;
  }

  return result;
}

void re::MaterialParameterBlock::setBinding(_anonymous_namespace_ *a1@<X0>, const char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = 0;
  v14 = &str_67;
  v15 = v13 >> 1;
  re::MaterialParameterBlock::setBinding(a1, &v15, a3, a4, a5, a6);
  if (v13)
  {
    if (v13)
    {
    }
  }
}

void re::internal::Callable<re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(re::PerFrameAllocator *)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {

    *v2 = 0;
  }
}

void *re::internal::Callable<re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(re::PerFrameAllocator *)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09218;
  return result;
}

void *re::internal::Callable<re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(re::PerFrameAllocator *)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09218;
  return result;
}

void re::DynamicArray<re::TextureHandle>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::TextureHandle>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = 16 * v13;
      do
      {
        v16 = re::TextureHandle::operator=(v14, v12);
        v12 += 16;
        v14 = v16 + 16;
        v15 -= 16;
      }

      while (v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = (v12 + 16 * v13);
      v18 = (v14 + 16 * v13);
      v19 = 16 * v4 - 16 * v13;
      do
      {
        v20 = re::TextureHandle::TextureHandle(v18, v17);
        v17 = (v17 + 16);
        v18 = (v20 + 16);
        v19 -= 16;
      }

      while (v19);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 16 * v4;
      do
      {
        v9 = re::TextureHandle::operator=(v6, v7);
        v7 += 16;
        v6 = v9 + 16;
        v8 -= 16;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = (v6 + 16 * v4);
      v11 = 16 * v5 - 16 * v4;
      do
      {
        re::TextureHandle::invalidate(v10);
        v10 += 2;
        v11 -= 16;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::BufferSlice>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::BufferSlice>::setCapacity(result, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = v3[2];
    v14 = v3[4];
    if (v13)
    {
      v15 = v12 + 40 * v13;
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v14, v12);
        *(v14 + 32) = *(v12 + 32);
        v12 += 40;
        v14 += 40;
      }

      while (v12 != v15);
      v14 = v3[4];
      v13 = v3[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v16 = 5 * v13;
      v17 = v12 + 40 * v4;
      v18 = v12 + 8 * v16;
      v19 = v14 + 8 * v16;
      do
      {
        *v19 = 0;
        *(v19 + 24) = -1;
        result = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v19, v18);
        *(v19 + 32) = *(v18 + 32);
        v18 += 40;
        v19 += 40;
      }

      while (v18 != v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = v7 + 40 * v4;
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v6, v7);
        *(v6 + 32) = *(v7 + 32);
        v7 += 40;
        v6 += 40;
      }

      while (v7 != v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 40 * v4;
      v10 = 40 * v5 - 40 * v4;
      do
      {
        v11 = *(v9 + 24);
        if (v11 != -1)
        {
          result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v11])(&v20, v9);
        }

        *(v9 + 24) = -1;
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::WeakParameterBinding>,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::TextureHandle>,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::BufferSlice>,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::DynamicArray<re::BufferSlice>::removeStableAt(uint64_t result, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(result + 16);
  if (v3 <= a2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "removeStableAt";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 969;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v3;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v4 = result;
  if (v3 - 1 > a2)
  {
    v5 = *(result + 32);
    v6 = v5 + 40 * a2;
    v7 = v5 + 40 * v3;
    if (v6 + 40 != v7)
    {
      do
      {
        result = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v6, v6 + 40);
        *(v6 + 32) = *(v6 + 72);
        v8 = v6 + 80;
        v6 += 40;
      }

      while (v8 != v7);
      v3 = *(v4 + 16);
    }
  }

  v9 = *(v4 + 32) + 40 * v3;
  v10 = *(v9 - 16);
  if (v10 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix_4[v10])(v23, v9 - 40);
    v3 = *(v4 + 16);
  }

  *(v9 - 16) = -1;
  *(v4 + 16) = v3 - 1;
  ++*(v4 + 24);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<NS::SharedPtr<MTL::SamplerState>>,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::PassTechniqueMappingDelta>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::PassTechniqueMappingDelta>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PassTechniqueMappingDelta>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<unsigned int>,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

unint64_t re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::internalAdd(uint64_t *a1, void *a2, _DWORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v12;
  v17 = a1[1] + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v19);
  re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::updateHashes(a1, (a1[1] + 16 * v16));
  return a1[1] + 16 * v16 + 8;
}

unint64_t re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::updateKvpsHash(uint64_t a1, unsigned __int8 *a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  result = re::Hash<re::mtl::TextureSwizzleChannels>::operator()(&v6, a2 + 8);
  *(a1 + 48) ^= v4 ^ (result + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9);
  return result;
}

double re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::doResize(a1, v3);
}

unint64_t re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::updateHashes(uint64_t a1, unsigned __int8 *a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  *(a1 + 40) ^= v4;
  result = re::Hash<re::mtl::TextureSwizzleChannels>::operator()(&v6, a2 + 8);
  *(a1 + 48) ^= v4 ^ (result + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9);
  return result;
}

double re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<re::WeakStringID,re::mtl::TextureSwizzleChannels,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::mtl::TextureSwizzleChannels>,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v21);
}

unint64_t re::Hash<re::mtl::TextureSwizzleChannels>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  v3 = v2 ^ (v2 >> 31);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2[1]) ^ ((0xBF58476D1CE4E5B9 * a2[1]) >> 27));
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2[2]) ^ ((0xBF58476D1CE4E5B9 * a2[2]) >> 27));
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2[3]) ^ ((0xBF58476D1CE4E5B9 * a2[3]) >> 27));
  v7 = (v4 ^ (v4 >> 31)) + (v3 << 6) + (v3 >> 2);
  return ((((v7 - 0x61C8864680B583E9) ^ v3) << 6) + (((v7 - 0x61C8864680B583E9) ^ v3) >> 2) + (((v6 ^ (v6 >> 31)) + ((v5 ^ (v5 >> 31)) << 6) + ((v5 ^ (v5 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v5 ^ (v5 >> 31)) - 0x61C8864680B583E9) ^ (v7 - 0x61C8864680B583E9) ^ v3;
}

_anonymous_namespace_ *re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<re::WeakStringID,re::Optional<re::mtl::TextureSwizzleChannels>,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void re::ArgumentBufferTextureRecord::destroyTexture(re::ArgumentBufferTextureRecord *this)
{
  if (*(this + 28) == 1)
  {
    v2 = *this;
    if (*this)
    {

      *this = 0;
    }
  }

  else
  {

    re::TextureHandle::invalidate(this);
  }
}

void re::ArgumentBufferTextureRecord::getRenderThreadTexture(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  if (*(this + 28) == 1)
  {
    *a1 = *this;
  }

  else
  {

    re::TextureHandle::metalTexture(a1, this);
  }
}

float32x2_t *re::ColorGamut4F::ColorGamut4F(float32x2_t *a1, CGColorRef color, __int8 a3)
{
  v17 = *MEMORY[0x1E69E9840];
  a1[2].i8[0] = 0;
  ColorSpace = CGColorGetColorSpace(color);
  Components = CGColorGetComponents(color);
  v14 = 0;
  if (re::ColorHelpers::getColorGamutFromCGStandardLinearColorSpace(ColorSpace, &v14))
  {
    *a1 = vcvt_f32_f64(*Components);
    v8 = Components[1].f64[0];
    a1[1].f32[0] = v8;
    Alpha = CGColorGetAlpha(color);
    a1[1].f32[1] = Alpha;
    a1[2].i8[0] = v14;
  }

  else
  {
    Name = CGColorSpaceGetName(ColorSpace);
    if (re::ColorHelpers::getColorGamutFromCGColorSpaceName(Name, &v14))
    {
      a3 = v14;
    }

    if (re::ColorHelpers::getCGColorTransformToGamut(re::ColorGamut)::onceToken[0] != -1)
    {
      dispatch_once(re::ColorHelpers::getCGColorTransformToGamut(re::ColorGamut)::onceToken, &__block_literal_global_37);
    }

    CGColorTransformConvertColorComponents();
    a1[2].i8[0] = a3;
    *a1 = vcvt_f32_f64(v15);
    v11 = v16;
    a1[1].f32[0] = v11;
    v12 = CGColorGetAlpha(color);
    a1[1].f32[1] = v12;
  }

  return a1;
}

void re::ColorGamut4F::as(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  if (v6 == a2)
  {
    *a4 = *a1;
    *(a4 + 16) = *(a1 + 16);
    return;
  }

  v8 = a2;
  re::ColorHelpers::computeGamutTransformMatrix(v6, a2, v11);
  v9 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v11[0], *a1), v11[1], *(a1 + 4)), v11[2], *(a1 + 8));
  if ((~a3 & 3) != 0)
  {
    if (a3)
    {
      v9.i32[3] = 0;
      v9 = vmaxnmq_f32(v9, 0);
      goto LABEL_10;
    }

    if ((a3 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9.i32[3] = 0;
    v9 = vmaxnmq_f32(v9, 0);
  }

  v9.i32[3] = 0;
  v9 = vminnmq_f32(v9, xmmword_1E304F3C0);
LABEL_10:
  v10 = *(a1 + 12);
  *a4 = v9.i64[0];
  *(a4 + 8) = v9.i32[2];
  *(a4 + 12) = v10;
  *(a4 + 16) = v8;
}

CGColorRef re::ColorGamut4F::createCGColor(float32x2_t *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = vcvtq_f64_f32(this[1]);
  v4[0] = vcvtq_f64_f32(*this);
  v4[1] = v1;
  CGColorSpaceFromWorkingColorGamut = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(this[2].u8[0]);
  return CGColorCreate(CGColorSpaceFromWorkingColorGamut, v4);
}

uint64_t re::ColorGamut3F::as(uint64_t *a1, unsigned int a2, int a3)
{
  if (*(a1 + 12) == a2)
  {
    return *a1;
  }

  v11[3] = v3;
  v11[4] = v4;
  v6 = a1[1];
  v7 = *a1;
  v8 = v6;
  v9 = 1065353216;
  v10 = BYTE4(v6);
  re::ColorGamut4F::as(&v7, a2, a3, v11);
  return v11[0];
}

void *re::introspect_ColorGamut(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Rec709";
    re::introspect_ColorGamut(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "P3D65";
    qword_1EE1C6960 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "ACEScg";
    qword_1EE1C6968 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 3;
    *(v16 + 16) = "Rec2020";
    qword_1EE1C6970 = v16;
  }

  {
    v17 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_ColorGamut(BOOL)::info, "ColorGamut", 1, 1, 1, 1);
    *v17 = &unk_1F5D0C658;
    *(v17 + 8) = &re::introspect_ColorGamut(BOOL)::enumTable;
    *(v17 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_ColorGamut(BOOL)::isInitialized)
    {
      return &re::introspect_ColorGamut(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v3 = re::introspect_ColorGamut(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v3)
    {
      return &re::introspect_ColorGamut(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_ColorGamut(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_ColorGamut(BOOL)::info;
    }
  }

  re::introspect_ColorGamut(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_ColorGamut(BOOL)::info, a2);
  v18[0] = 0xD480D84AC2E5ELL;
  v18[1] = "ColorGamut";
  xmmword_1EE1C6930 = v19;
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_ColorGamut(BOOL)::info;
}

void *re::allocInfo_ColorGamut3F(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_466, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_466))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BA0B0, "ColorGamut3F");
    __cxa_guard_release(&_MergedGlobals_466);
  }

  return &unk_1EE1BA0B0;
}

void re::initInfo_ColorGamut3F(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0x31DB7ABF0A5A1BC4;
  v23[1] = "ColorGamut3F";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1BA050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA050))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_float(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "r";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1BA068 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "g";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1BA070 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "b";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1BA078 = v18;
    v19 = re::introspectionAllocator();
    re::introspect_ColorGamut(1, v20);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "gamut";
    *(v21 + 16) = &re::introspect_ColorGamut(BOOL)::info;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0xC00000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1BA080 = v21;
    __cxa_guard_release(&qword_1EE1BA050);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BA068;
  *(this + 9) = re::internal::defaultConstruct<re::ColorGamut3F>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ColorGamut3F>;
  *(this + 13) = re::internal::defaultConstructV2<re::ColorGamut3F>;
  *(this + 14) = re::internal::defaultDestructV2<re::ColorGamut3F>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v22 = v24;
}

void *re::internal::defaultConstructV2<re::ColorGamut3F>(void *result)
{
  *(result + 5) = 0;
  *result = 0;
  return result;
}

void *re::allocInfo_ColorGamut4F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA058))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BA140, "ColorGamut4F");
    __cxa_guard_release(&qword_1EE1BA058);
  }

  return &unk_1EE1BA140;
}

void re::initInfo_ColorGamut4F(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0x31DB7ABF0A5A1C02;
  v27[1] = "ColorGamut4F";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1BA060, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA060))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_float(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "r";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1BA088 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "g";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1BA090 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "b";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1BA098 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "a";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0xC00000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1BA0A0 = v22;
    v23 = re::introspectionAllocator();
    re::introspect_ColorGamut(1, v24);
    v25 = (*(*v23 + 32))(v23, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "gamut";
    *(v25 + 16) = &re::introspect_ColorGamut(BOOL)::info;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x1000000005;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1BA0A8 = v25;
    __cxa_guard_release(&qword_1EE1BA060);
  }

  *(this + 2) = 0x1400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1BA088;
  *(this + 9) = re::internal::defaultConstruct<re::ColorGamut4F>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ColorGamut4F>;
  *(this + 13) = re::internal::defaultConstructV2<re::ColorGamut4F>;
  *(this + 14) = re::internal::defaultDestructV2<re::ColorGamut4F>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v26 = v28;
}

double re::internal::defaultConstruct<re::ColorGamut4F>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  *a3 = xmmword_1E30474D0;
  *(a3 + 16) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ColorGamut4F>(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1E30474D0;
  *(a1 + 16) = 0;
  return result;
}

void re::introspect_RenderGraphResourceOperationType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BA1D8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BA1E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA1E0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BA238, "RenderGraphResourceOperationType", 4, 4, 1, 1);
      qword_1EE1BA238 = &unk_1F5D0C658;
      qword_1EE1BA278 = &re::introspect_RenderGraphResourceOperationType(BOOL)::enumTable;
      dword_1EE1BA248 = 9;
      __cxa_guard_release(&qword_1EE1BA1E0);
    }

    if (_MergedGlobals_467)
    {
      break;
    }

    _MergedGlobals_467 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BA238, a2);
    v49 = 0x74B10DF276B47AF6;
    v50 = "RenderGraphResourceOperationType";
    v53 = 208862;
    v54 = "int";
    v4 = v52[0];
    v5 = v52[1];
    if (v53)
    {
      if (v53)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BA278;
      v53 = v4;
      v54 = v5;
      re::TypeBuilder::beginEnumType(v52, &v49, 1, 1, &v53);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v51.var0 = 2 * v11;
            v51.var1 = v10;
            re::TypeBuilder::addEnumConstant(v52, v15, &v51);
            if (*&v51.var0)
            {
              if (*&v51.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v51.var0 = 2 * v20;
              v51.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v52, v24, &v51);
              if (*&v51.var0)
              {
                if (*&v51.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v52, v26);
      xmmword_1EE1BA258 = v51;
      if (v49)
      {
        if (v49)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v50);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v48);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1BA1D8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Read";
      qword_1EE1BA280 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Write";
      qword_1EE1BA288 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "WriteDepth";
      qword_1EE1BA290 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "WriteStencil";
      qword_1EE1BA298 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "WriteBlit";
      qword_1EE1BA2A0 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "WriteCompute";
      qword_1EE1BA2A8 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 6;
      *(v41 + 16) = "WriteResolve";
      qword_1EE1BA2B0 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 7;
      *(v43 + 16) = "WriteResolveDepth";
      qword_1EE1BA2B8 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 8;
      *(v45 + 16) = "WriteResolveStencil";
      qword_1EE1BA2C0 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 10;
      *(v47 + 16) = "ReadFramebuffer";
      qword_1EE1BA2C8 = v47;
      __cxa_guard_release(&qword_1EE1BA1D8);
    }
  }
}

void *re::allocInfo_ReadSettings(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA1E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA1E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BA328, "ReadSettings");
    __cxa_guard_release(&qword_1EE1BA1E8);
  }

  return &unk_1EE1BA328;
}

void re::initInfo_ReadSettings(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0x3C332C74121BAFF2;
  v31[1] = "ReadSettings";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE1BA1F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA1F0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint32_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "computeIndex";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1BA208 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_BOOL(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "isOptional";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1BA210 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "makeStencilView";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x500000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1BA218 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "makeArrayView";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x600000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1BA220 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::mtl::introspect_RenderStage(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "renderStage";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x800000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1BA228 = v26;
    v27 = re::introspectionAllocator();
    re::introspect_RenderGraphResourceOperationType(v27, v28);
    v29 = (*(*v27 + 32))(v27, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "type";
    *(v29 + 16) = &qword_1EE1BA238;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0xC00000006;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1BA230 = v29;
    __cxa_guard_release(&qword_1EE1BA1F0);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1BA208;
  *(this + 9) = re::internal::defaultConstruct<re::ReadSettings>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ReadSettings>;
  *(this + 13) = re::internal::defaultConstructV2<re::ReadSettings>;
  *(this + 14) = re::internal::defaultDestructV2<re::ReadSettings>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v30 = v32;
}

double re::internal::defaultConstruct<re::ReadSettings>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 3) = 0;
  *a3 = 0;
  *&result = 2;
  *(a3 + 8) = 2;
  return result;
}

double re::internal::defaultConstructV2<re::ReadSettings>(uint64_t a1)
{
  *(a1 + 3) = 0;
  *a1 = 0;
  *&result = 2;
  *(a1 + 8) = 2;
  return result;
}

void *re::allocInfo_WriteSettings(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BA1F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA1F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BA3B8, "WriteSettings");
    __cxa_guard_release(&qword_1EE1BA1F8);
  }

  return &unk_1EE1BA3B8;
}

void re::initInfo_WriteSettings(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v50[0] = 0xC0DE7BC02E28B204;
  v50[1] = "WriteSettings";
  if (v50[0])
  {
    if (v50[0])
    {
    }
  }

  *(this + 2) = v51;
  if ((atomic_load_explicit(&qword_1EE1BA200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA200))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint32_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "attachmentIndex";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1BA2D0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint32_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "computeIndex";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 2;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1BA2D8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint32_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "slotIndex";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 3;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1BA2E0 = v18;
    v19 = re::introspectionAllocator();
    re::introspect_RenderGraphResourceOperationType(v19, v20);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "type";
    *(v21 + 16) = &qword_1EE1BA238;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x400000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1BA2E8 = v21;
    v22 = re::introspectionAllocator();
    v23 = re::introspect_Vector4F(1);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "clearColor";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x1000000005;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1BA2F0 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_float(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "clearDepth";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x1000000006;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1BA2F8 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_BOOL(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "forceClear";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x2000000007;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE1BA300 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::introspect_BOOL(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "isOptional";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x2100000008;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1BA308 = v36;
    v37 = re::introspectionAllocator();
    v39 = re::mtl::introspect_MultisampleDepthResolveFilter(1, v38);
    v40 = (*(*v37 + 32))(v37, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "depthResolveFilter";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x2400000009;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1BA310 = v40;
    v41 = re::introspectionAllocator();
    v43 = re::mtl::introspect_MultisampleStencilResolveFilter(1, v42);
    v44 = (*(*v41 + 32))(v41, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "stencilResolveFilter";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x280000000ALL;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1BA318 = v44;
    v45 = re::introspectionAllocator();
    v47 = re::introspect_uint32_t(1, v46);
    v48 = (*(*v45 + 32))(v45, 72, 8);
    *v48 = 1;
    *(v48 + 8) = "clearStencil";
    *(v48 + 16) = v47;
    *(v48 + 24) = 0;
    *(v48 + 32) = 0x100000000BLL;
    *(v48 + 40) = 0;
    *(v48 + 48) = 0;
    *(v48 + 56) = 0;
    *(v48 + 64) = 0;
    qword_1EE1BA320 = v48;
    __cxa_guard_release(&qword_1EE1BA200);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE1BA2D0;
  *(this + 9) = re::internal::defaultConstruct<re::WriteSettings>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::WriteSettings>;
  *(this + 13) = re::internal::defaultConstructV2<re::WriteSettings>;
  *(this + 14) = re::internal::defaultDestructV2<re::WriteSettings>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v49 = v51;
}

double re::internal::defaultConstruct<re::WriteSettings>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0x100000000;
  result = 0.0;
  *(a3 + 16) = xmmword_1E30474D0;
  *(a3 + 32) = 0;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::WriteSettings>(uint64_t a1)
{
  *a1 = 0x100000000;
  result = 0.0;
  *(a1 + 16) = xmmword_1E30474D0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  return result;
}

unint64_t re::RenderGraphBufferDescription::makeValid(uint64_t a1, id *a2, uint64_t a3)
{
  result = *a2;
  if (*a2 && !*a1)
  {
    if (*(a1 + 8) == -1)
    {
      result = [result length];
      *(a1 + 8) = (*(a1 + 20) * result);
    }

    if (*(a1 + 32) == -1)
    {
      result = [*a2 protectionOptions];
      *(a1 + 32) = result & a3;
    }
  }

  return result;
}

{
  result = *a2;
  if (*a2 && !*a1)
  {
    if (*(a1 + 8) == -1)
    {
      v7 = [result width];
      result = [*a2 height];
      *(a1 + 8) = (*(a1 + 20) * (result * v7));
    }

    if (*(a1 + 32) == -1)
    {
      result = [*a2 protectionOptions];
      *(a1 + 32) = result & a3;
    }
  }

  return result;
}

uint64_t *re::RenderGraphBufferDescription::valuesToString@<X0>(re::DynamicString *__return_ptr a1@<X8>, re::RenderGraphBufferDescription *this@<X0>)
{
  *(a1 + 1) = 0;
  v4 = (a1 + 8);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  re::DynamicString::setCapacity(a1, 0);
  if (*v4)
  {
    *v4 = 1;
    v5 = *(a1 + 2);
  }

  else
  {
    *v4 = 0;
    v5 = a1 + 9;
  }

  *v5 = 0;
  re::DynamicString::setCapacity(a1, 0x400uLL);
  re::DynamicString::format(&v8, "type: %d length: %zu lengthMultiplier: %f initialOptions: %d protectionOptions: %llu isMemoryless: %d", v6, *this, *(this + 1), *(this + 5), *(this + 6), *(this + 4), (*(this + 6) & 0x70) == 48);
  re::DynamicString::operator=(a1, &v8);
  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  return re::DynamicString::trimExcess(a1);
}

uint64_t re::RenderGraphBufferHandle::introspectionSerialize(uint64_t a1, const char *a2, void *a3, re::DynamicString *a4)
{
  re::DynamicString::format(&v6, "%llu", a2, *a3);
  re::DynamicString::operator=(a4, &v6);
  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  return 1;
}

uint64_t re::RenderGraphBufferHandle::introspectionDeserialize(int a1, int a2, int a3, unint64_t *a4, char *__str)
{
  v5 = __str;
  do
  {
    v7 = *v5++;
    v6 = v7;
    if (!v7)
    {
      __endptr = 0;
      *a4 = strtoull(__str, &__endptr, 10);
      return 1;
    }
  }

  while ((v6 & 0x80) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) != 0);
  v8 = *__str;
  if (*__str)
  {
    v9 = __str[1];
    if (v9)
    {
      v10 = __str + 2;
      do
      {
        v8 = 31 * v8 + v9;
        v11 = *v10++;
        v9 = v11;
      }

      while (v11);
    }

    v8 &= ~0x8000000000000000;
  }

  *a4 = v8;
  return 1;
}

uint64_t *re::introspect_RenderGraphBufferHandle(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BA450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BA450))
  {
    re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BA458, "RenderGraphBufferHandle", 16, 8, 0, 0);
    qword_1EE1BA458 = &unk_1F5D0C698;
    qword_1EE1BA498 = re::internal::defaultConstruct<re::RenderGraphBufferHandle>;
    qword_1EE1BA4A0 = re::RenderGraphBufferHandle::introspectionSerialize;
    qword_1EE1BA4A8 = re::RenderGraphBufferHandle::introspectionDeserialize;
    qword_1EE1BA4B8 = 0;
    unk_1EE1BA4C0 = 0;
    qword_1EE1BA4B0 = re::RenderGraphBufferHandle::introspectionDeepCopy;
    dword_1EE1BA468 = 11;
    __cxa_guard_release(&qword_1EE1BA450);
  }

  if (v2)
  {
    if (_MergedGlobals_468)
    {
      return &qword_1EE1BA458;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v10);
    v3 = _MergedGlobals_468;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v10);
    if (v3)
    {
      return &qword_1EE1BA458;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (_MergedGlobals_468)
    {
LABEL_11:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &qword_1EE1BA458;
    }
  }

  _MergedGlobals_468 = 1;
  re::IntrospectionRegistry::add(&qword_1EE1BA458, a2);
  v9[0] = 0xA33A75EAF1B787C0;
  v9[1] = "RenderGraphBufferHandle";
  xmmword_1EE1BA478 = v10;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &qword_1EE1BA458;
}

double re::internal::defaultConstruct<re::RenderGraphBufferHandle>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  result = NAN;
  a3[1] = -1;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphBufferHandle>(void *a1)
{
  *a1 = 0;
  result = NAN;
  a1[1] = -1;
  return result;
}

uint64_t *re::FixedArray<re::AttributeArgument>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

re *re::TechniqueStage::deinit(re *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = this;
    v3 = re::globalAllocators(this);
    this = (*(*v3[2] + 40))(v3[2], v1);
    *(v2 + 1) = 0;
  }

  return this;
}

void re::MaterialPipelineData::~MaterialPipelineData(re::TechniqueStage **this)
{
  *this = &unk_1F5D09270;
  re::internal::destroyPersistent<re::TechniqueStage>("deinit", 206, this[2]);
  this[2] = 0;
  re::internal::destroyPersistent<re::TechniqueStage>("deinit", 208, this[3]);
  this[3] = 0;
  re::FixedArray<re::TechniqueFunctionConstant>::deinit(this + 16);
  re::FixedArray<re::LinkedFunction>::deinit(this + 7);
  re::FixedArray<re::LinkedFunction>::deinit(this + 4);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  re::MaterialPipelineData::~MaterialPipelineData(this);

  JUMPOUT(0x1E6906520);
}

void re::MaterialPipelineData::generatePipelineStateKey(re::MaterialPipelineData *this)
{
  v55 = *MEMORY[0x1E69E9840];
  *(this + 20) = 0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 272);
    v4 = 0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30));
    v5 = ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) - 0x61C8864680B583E9;
    *(this + 20) = v5;
    if (v3)
    {
      v6 = 0;
      v7 = v3;
      do
      {
        if (!v7)
        {
          v42 = 0;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          *cf = 0u;
          v39 = MEMORY[0x1E69E9C10];
          *v43 = 136315906;
          *&v43[4] = "operator[]";
          v44 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          v45 = 468;
          v46 = 2048;
          v47 = v3;
          v48 = 2048;
          v49 = v3;
          _os_log_send_and_compose_impl(v40, &v42, cf, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v43, 38, v41);
          _os_crash_msg();
          __break(1u);
        }

        v8 = *(v2 + 280) + v6;
        v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v8 + 16)) ^ ((0xBF58476D1CE4E5B9 * *(v8 + 16)) >> 27));
        v10 = ((v5 << 6) - 0x61C8864680B583E9 + (v5 >> 2) + (v9 ^ (v9 >> 31))) ^ v5;
        v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v8 + 18)) ^ ((0xBF58476D1CE4E5B9 * *(v8 + 18)) >> 27));
        v5 = ((v11 ^ (v11 >> 31)) - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10;
        *(this + 20) = v5;
        v6 += 24;
        --v7;
      }

      while (24 * v3 != v6);
    }

    v12 = strlen(*(v2 + 8));
    if (v12)
    {
      MurmurHash3_x64_128(*(v2 + 8), v12, 0, cf);
      v13 = (cf[1] + 64 * cf[0] + (cf[0] >> 2) - 0x61C8864680B583E9) ^ cf[0];
      v2 = *(this + 2);
    }

    else
    {
      v13 = 0;
    }

    v14 = ((v5 << 6) - 0x61C8864680B583E9 + (v5 >> 2) + (((v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + *(v2 + 16)) ^ v13)) ^ v5;
    *(this + 20) = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 3);
  if (v15)
  {
    v16 = strlen(*(v15 + 8));
    if (v16)
    {
      MurmurHash3_x64_128(*(v15 + 8), v16, 0, cf);
      v17 = (cf[1] + 64 * cf[0] + (cf[0] >> 2) - 0x61C8864680B583E9) ^ cf[0];
      v15 = *(this + 3);
    }

    else
    {
      v17 = 0;
    }

    v14 ^= (v14 << 6) - 0x61C8864680B583E9 + (v14 >> 2) + (((v17 << 6) - 0x61C8864680B583E9 + (v17 >> 2) + *(v15 + 16)) ^ v17);
    *(this + 20) = v14;
  }

  v18 = *(this + 5);
  if (v18)
  {
    v19 = 200 * v18;
    v20 = *(this + 6) + 48;
    do
    {
      v21 = ((v14 << 6) - 0x61C8864680B583E9 + (v14 >> 2) + (*(v20 - 24) >> 1)) ^ v14;
      *(this + 20) = v21;
      v22 = ((*(v20 - 40) >> 1) - 0x61C8864680B583E9 + (v21 << 6) + (v21 >> 2)) ^ v21;
      *(this + 20) = v22;
      v23 = *v20;
      if (*v20)
      {
        re::sg::CachedCompilationMaterial::getMaterial(cf, *v20);
        v24 = cf[0];
        if (cf[0])
        {
          v24 = CFHash(cf[0]);
        }
      }

      else
      {
        v24 = *(v20 - 8);
      }

      v25 = (v24 + 64 * v22 + (v22 >> 2) - 0x61C8864680B583E9) ^ v22;
      *(this + 20) = v25;
      if (v23)
      {

        v25 = *(this + 20);
      }

      v26 = 0xBF58476D1CE4E5B9 * (*(v20 + 8) ^ (*(v20 + 8) >> 30));
      v27 = ((v25 << 6) - 0x61C8864680B583E9 + (v25 >> 2) + ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) ^ ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) >> 31))) ^ v25;
      v14 = (*(v20 + 40) - 0x61C8864680B583E9 + (v27 << 6) + (v27 >> 2)) ^ v27;
      *(this + 20) = v14;
      v20 += 200;
      v19 -= 200;
    }

    while (v19);
  }

  v28 = *(this + 8);
  if (v28)
  {
    v29 = 200 * v28;
    v30 = *(this + 9) + 48;
    do
    {
      v31 = ((v14 << 6) - 0x61C8864680B583E9 + (v14 >> 2) + (*(v30 - 24) >> 1)) ^ v14;
      *(this + 20) = v31;
      v32 = ((*(v30 - 40) >> 1) - 0x61C8864680B583E9 + (v31 << 6) + (v31 >> 2)) ^ v31;
      *(this + 20) = v32;
      v33 = *v30;
      if (*v30)
      {
        re::sg::CachedCompilationMaterial::getMaterial(v43, *v30);
        v34 = *v43;
        if (*v43)
        {
          v34 = CFHash(*v43);
        }
      }

      else
      {
        v34 = *(v30 - 8);
      }

      v35 = ((v32 << 6) - 0x61C8864680B583E9 + (v32 >> 2) + v34) ^ v32;
      *(this + 20) = v35;
      if (v33)
      {

        v35 = *(this + 20);
      }

      v36 = 0xBF58476D1CE4E5B9 * (*(v30 + 8) ^ (*(v30 + 8) >> 30));
      v37 = ((v35 << 6) - 0x61C8864680B583E9 + (v35 >> 2) + ((0x94D049BB133111EBLL * (v36 ^ (v36 >> 27))) ^ ((0x94D049BB133111EBLL * (v36 ^ (v36 >> 27))) >> 31))) ^ v35;
      v14 = (*(v30 + 40) - 0x61C8864680B583E9 + (v37 << 6) + (v37 >> 2)) ^ v37;
      *(this + 20) = v14;
      v30 += 200;
      v29 -= 200;
    }

    while (v29);
  }

  v38 = ((v14 << 6) - 0x61C8864680B583E9 + (v14 >> 2) + (((*(this + 23) << 6) - 0x61C8864680B583E9 + (*(this + 23) >> 2) + *(this + 176)) ^ *(this + 23))) ^ v14;
  *(this + 19) = (*(this + 21) - 0x61C8864680B583E9 + (v38 << 6) + (v38 >> 2)) ^ v38;
  *(this + 20) = v38;
}

uint64_t re::MaterialTechnique::combinedBuffersHash(re::MaterialTechnique *this)
{
  v1 = *(this + 1);
  v2 = (v1[77] + (v1[55] << 6) + (v1[55] >> 2) - 0x61C8864680B583E9) ^ v1[55];
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + ((*(v1[2] + 560) + (*(v1[2] + 384) << 6) + (*(v1[2] + 384) >> 2) - 0x61C8864680B583E9) ^ *(v1[2] + 384))) ^ v2;
}

uint64_t re::MaterialTechnique::combinedTexturesHash(re::MaterialTechnique *this)
{
  v1 = *(this + 1);
  v2 = (v1[130] + (v1[113] << 6) + (v1[113] >> 2) - 0x61C8864680B583E9) ^ v1[113];
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + ((*(v1[2] + 984) + (*(v1[2] + 848) << 6) + (*(v1[2] + 848) >> 2) - 0x61C8864680B583E9) ^ *(v1[2] + 848))) ^ v2;
}

uint64_t re::MaterialTechnique::combinedConstantsHash(re::MaterialTechnique *this)
{
  v1 = *(this + 1);
  v2 = (v1[69] + (v1[47] << 6) + (v1[47] >> 2) - 0x61C8864680B583E9) ^ v1[47];
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + ((*(v1[2] + 496) + (*(v1[2] + 320) << 6) + (*(v1[2] + 320) >> 2) - 0x61C8864680B583E9) ^ *(v1[2] + 320))) ^ v2;
}

uint64_t re::MaterialTechnique::combinedSamplersHash(re::MaterialTechnique *this)
{
  v1 = *(this + 1);
  v2 = (v1[143] + (v1[121] << 6) + (v1[121] >> 2) - 0x61C8864680B583E9) ^ v1[121];
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + ((*(v1[2] + 1088) + (*(v1[2] + 912) << 6) + (*(v1[2] + 912) >> 2) - 0x61C8864680B583E9) ^ *(v1[2] + 912))) ^ v2;
}

uint64_t re::MaterialTechnique::combinedTextureBlocksHash(re::MaterialTechnique *this)
{
  v1 = *(this + 1);
  v2 = (v1[165] + (v1[157] << 6) + (v1[157] >> 2) - 0x61C8864680B583E9) ^ v1[157];
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + ((*(v1[2] + 1264) + (*(v1[2] + 1200) << 6) + (*(v1[2] + 1200) >> 2) - 0x61C8864680B583E9) ^ *(v1[2] + 1200))) ^ v2;
}

void re::MaterialTechniqueVariant::releasePipelineStates(re::MaterialTechniqueVariant *this, re::RenderManager *a2, re::DrawingManager *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *(this + 14);
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 5);
    while (1)
    {
      v9 = *v8;
      v8 += 24;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(this + 14);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v6)
  {
    v10 = *(this + 5) + 96 * v7;
    v15 = *(v10 + 40);
    v16 = *(v10 + 56);
    v17 = *(v10 + 72);
    v13 = *(v10 + 8);
    v14 = *(v10 + 24);
    v20 = 0;
    *v11 = &unk_1F5D092E0;
    *(v11 + 8) = a3;
    *(v11 + 16) = v13;
    *(v11 + 32) = v14;
    *(v11 + 48) = v15;
    *(v11 + 64) = v16;
    *(v11 + 80) = v17;
    v20 = v11;
    re::RenderManager::addDelayedDestructorToRenderThread(a2, v18);
    re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v18);
    v12 = *(this + 14);
    if (v12 <= v7 + 1)
    {
      v12 = v7 + 1;
    }

    while (v12 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(this + 5) + 96 * v7) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v7) = v12;
LABEL_14:
    ;
  }

  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::clear(this + 24);
}