void sub_1B2934718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsTransparent const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSplined>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSplined>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareFunctionConstantDescriptorSplined::operator()(a1 + 8, a2, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

BOOL md::CameraContext::isSplinedEnabled(md::CameraContext *this, float a2)
{
  v3 = *(this + 769);
  v4 = *(this + 770);
  v5 = +[VKDebugSettings sharedSettings];
  [v5 daVinciGlobeSplinedMaxZoom];
  v7 = fmaxf(v4 + v3, 1.0) <= v6 && gdc::ToCoordinateSystem(*(this + 3784));

  return v7;
}

void ggl::StandardPostchain::CompositePipelineState::~CompositePipelineState(ggl::StandardPostchain::CompositePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LayoutContext::get<md::CameraContext>(void *a1)
{
  v1 = a1[1];
  if (!*&v1)
  {
    return 0;
  }

  v2 = vcnt_s8(v1);
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = 0x1AF456233693CD46;
    if (*&v1 <= 0x1AF456233693CD46uLL)
    {
      v3 = 0x1AF456233693CD46uLL % *&v1;
    }
  }

  else
  {
    v3 = (*&v1 - 1) & 0x1AF456233693CD46;
  }

  v4 = *(*a1 + 8 * v3);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == 0x1AF456233693CD46)
    {
      break;
    }

    if (v2.u32[0] > 1uLL)
    {
      if (v6 >= *&v1)
      {
        v6 %= *&v1;
      }
    }

    else
    {
      v6 &= *&v1 - 1;
    }

    if (v6 != v3)
    {
      return 0;
    }

LABEL_16:
    result = 0;
    v5 = *v5;
    if (!v5)
    {
      return result;
    }
  }

  if (v5[2] != 0x1AF456233693CD46)
  {
    goto LABEL_16;
  }

  v8 = v5[5];
  if (*(v8 + 8) == 0x1AF456233693CD46)
  {
    return *(v8 + 32);
  }

  return 0;
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorUseCameraZBias,md::ls::FunctionConstants &,md::ls::NeedsZBias const&>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsZBias>(v2);
  v5 = v4;
  if (*(v4 + 40) - *(v4 + 32) >= *(v3 + 40) - *(v3 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(v6 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v27, *(v6 + 32), v7, v3, v4);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v26, v7, v7, v3, v5);
  v8 = v27[0];
  v9 = v26;
  if (v27[0] == v26)
  {
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
  }

  else
  {
    v10 = v27[2];
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    v14 = v27[1];
    do
    {
      v15 = *(*(*(v10 + 1) + ((v8[1] >> 3) & 0x1FF8)) + 4 * (v8[1] & 0x3FLL) + 2);
      v16 = v15 & 0x3F;
      v17 = *(*(v10 + 7) + ((v15 >> 3) & 0x1FF8));
      *(v11 + 104 * *v12 + 24) = *v8;
      *(v17 + 70 * v16 + 7) = 1;
      ++v13;
      v18 = v8 + 2;
      do
      {
        v8 = v18;
        v27[0] = v18;
        if (v18 == v14)
        {
          break;
        }

        v19 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v27, *v18, v18[1]);
        v18 = v8 + 2;
      }

      while (!v19);
    }

    while (v8 != v9);
    v20 = *(a1 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v20 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v20 + 4096);
  }

  *(v11 + 104 * *v12 + 24) = -65536;
  v21 = v11 + 104 * *v12;
  v22 = *(v21 + 92);
  *(v21 + 92) = v22 + 1;
  *(v21 + 4 * v22 + 28) = v13;
  v23 = v11 + 104 * *v12;
  v25 = *(v23 + 92);
  v24 = (v23 + 92);
  if (v25 >= 0x10)
  {
    *v24 = 0;
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorUseCameraZBias>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorUseCameraZBias>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorUseCameraZBias,md::ls::FunctionConstants &,md::ls::NeedsZBias const&>(a2);
  *(a1 + 8) = 0;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::NeedsZBias>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsZBias>();
    *algn_1EB83DC18 = 0x499CE17DBD9A1615;
    qword_1EB83DC20 = "md::ls::NeedsZBias]";
    qword_1EB83DC28 = 18;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsZBias>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorTextureEnabled,md::ls::FunctionConstants &,md::ls::TextureHandleForType<DaVinci::TexTexture> const&>(uint64_t a1, uint64_t **a2)
{
  v4 = *(a1 + 8);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v4);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::TexTexture>>(v4);
  v7 = v6;
  if (*(v6 + 40) - *(v6 + 32) >= *(v5 + 40) - *(v5 + 32))
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v8 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v52, *(v8 + 32), v9, v5, v6);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v51, v9, v9, v5, v7);
  v10 = v52[0];
  v11 = v51;
  if (v52[0] == v51)
  {
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    v13 = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = 0;
  }

  else
  {
    v49 = a1;
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    v13 = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = 0;
    v15 = v12;
    v50 = v13;
    do
    {
      v16 = v10[1];
      v17 = (v16 >> 3) & 0x1FF8;
      v18 = v16 & 0x3F;
      v19 = *(*(*(v53 + 8) + v17) + 4 * v18 + 2);
      v20 = *(*(v53 + 56) + ((v19 >> 3) & 0x1FF8));
      v21 = *(*(*(v54 + 8) + v17) + 4 * v18 + 2);
      v22 = *(*(v54 + 56) + ((v21 >> 3) & 0x1FF8));
      *(v12 + 104 * *v13 + 24) = *v10;
      v23 = a2[1];
      if (!v23)
      {
        v24 = **a2;
        v25 = *v24;
        v26 = *(v24 + 8);
        if (v25 == v26)
        {
          goto LABEL_8;
        }

        while (*v25 != 0x348A0B0E758C07C2)
        {
          v23 = 0;
          v25 += 5;
          if (v25 == v26)
          {
            goto LABEL_9;
          }
        }

        if (v25 == v26)
        {
LABEL_8:
          v23 = 0;
        }

        else
        {
          v23 = v25[3];
          v40 = v25[4];
          if (v40)
          {
            atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v40);
          }
        }

LABEL_9:
        a2[1] = v23;
      }

      v27 = a2[2];
      if (!v27)
      {
        v28 = **a2;
        v29 = *v28;
        v30 = *(v28 + 8);
        if (v29 == v30)
        {
          goto LABEL_12;
        }

        while (*v29 != 0xC94DD89A7B09BE9CLL)
        {
          v27 = 0;
          v29 += 5;
          if (v29 == v30)
          {
            goto LABEL_15;
          }
        }

        if (v29 == v30)
        {
LABEL_12:
          v27 = 0;
        }

        else
        {
          v27 = v29[3];
          v41 = v29[4];
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v41);
          }
        }

LABEL_15:
        a2[2] = v27;
      }

      v31 = (*(*v27 + 48))(v27);
      TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(v23, *(v22 + 16 * (v21 & 0x3F)));
      if (TextureStorageTracked)
      {
        v33 = *TextureStorageTracked;
      }

      else
      {
        v33 = 0;
      }

      v34 = *(v31 + 2720);
      v36 = *(v34 + 312);
      v35 = *(v34 + 320);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v35);
      }

      *(v20 + 70 * (v19 & 0x3F) + 17) = v36 != v33;
      ++v14;
      v37 = v52[1];
      v38 = v52[0] + 2;
      v12 = v15;
      do
      {
        v10 = v38;
        v52[0] = v38;
        if (v38 == v37)
        {
          break;
        }

        v39 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v52, *v38, v38[1]);
        v38 = v10 + 2;
      }

      while (!v39);
      v13 = v50;
    }

    while (v10 != v11);
    v42 = *(v49 + 8);
    {
      v13 = v50;
      if (v48)
      {
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
        unk_1EB83D2C0 = 0xC62D89929260CB56;
        qword_1EB83D2C8 = "md::ls::FunctionConstants]";
        qword_1EB83D2D0 = 25;
        v13 = v50;
      }
    }

    *(v42 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v42 + 4096);
  }

  *(v12 + 104 * *v13 + 24) = -65536;
  v43 = v12 + 104 * *v13;
  v44 = *(v43 + 92);
  *(v43 + 92) = v44 + 1;
  *(v43 + 4 * v44 + 28) = v14;
  v45 = v12 + 104 * *v13;
  v47 = *(v45 + 92);
  v46 = (v45 + 92);
  if (v47 >= 0x10)
  {
    *v46 = 0;
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorTextureEnabled>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorTextureEnabled>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorTextureEnabled,md::ls::FunctionConstants &,md::ls::TextureHandleForType<DaVinci::TexTexture> const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::TexTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::TexTexture>>();
    *algn_1EB83CE78 = 0x1D932F2BF291491;
    qword_1EB83CE80 = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    qword_1EB83CE88 = 49;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::TexTexture>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorEmissiveTextureEnabled,md::ls::FunctionConstants &,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&>(uint64_t a1, uint64_t **a2)
{
  v4 = *(a1 + 8);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v4);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(v4);
  v7 = v6;
  if (*(v6 + 40) - *(v6 + 32) >= *(v5 + 40) - *(v5 + 32))
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v8 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v54, *(v8 + 32), v9, v5, v6);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v53, v9, v9, v5, v7);
  v10 = v54[0];
  v11 = v53;
  if (v54[0] == v53)
  {
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    v13 = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = 0;
  }

  else
  {
    v51 = a1;
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    v13 = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = 0;
    v15 = v12;
    v52 = v13;
    do
    {
      v16 = v10[1];
      v17 = (v16 >> 3) & 0x1FF8;
      v18 = v16 & 0x3F;
      v19 = *(*(*(v55 + 8) + v17) + 4 * v18 + 2);
      v20 = *(*(v55 + 56) + ((v19 >> 3) & 0x1FF8));
      v21 = *(*(*(v56 + 8) + v17) + 4 * v18 + 2);
      v22 = *(*(v56 + 56) + ((v21 >> 3) & 0x1FF8));
      *(v12 + 104 * *v13 + 24) = *v10;
      v23 = a2[1];
      if (!v23)
      {
        v24 = **a2;
        v25 = *v24;
        v26 = *(v24 + 8);
        if (v25 == v26)
        {
          goto LABEL_8;
        }

        while (*v25 != 0x348A0B0E758C07C2)
        {
          v23 = 0;
          v25 += 5;
          if (v25 == v26)
          {
            goto LABEL_9;
          }
        }

        if (v25 == v26)
        {
LABEL_8:
          v23 = 0;
        }

        else
        {
          v23 = v25[3];
          v42 = v25[4];
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v42);
          }
        }

LABEL_9:
        a2[1] = v23;
      }

      v27 = a2[2];
      if (!v27)
      {
        v28 = **a2;
        v29 = *v28;
        v30 = *(v28 + 8);
        if (v29 == v30)
        {
          goto LABEL_12;
        }

        while (*v29 != 0xC94DD89A7B09BE9CLL)
        {
          v27 = 0;
          v29 += 5;
          if (v29 == v30)
          {
            goto LABEL_15;
          }
        }

        if (v29 == v30)
        {
LABEL_12:
          v27 = 0;
        }

        else
        {
          v27 = v29[3];
          v43 = v29[4];
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v43);
          }
        }

LABEL_15:
        a2[2] = v27;
      }

      v31 = v20 + 70 * (v19 & 0x3F);
      v32 = (*(*v27 + 48))(v27);
      TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(v23, *(v22 + 16 * (v21 & 0x3F)));
      if (TextureStorageTracked && (v34 = *TextureStorageTracked) != 0)
      {
        v35 = *(v32 + 2720);
        v37 = *(v35 + 312);
        v36 = *(v35 + 320);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          v38 = v37 != v34;
          std::__shared_weak_count::__release_shared[abi:nn200100](v36);
        }

        else
        {
          v38 = v37 != v34;
        }

        v12 = v15;
        *(v31 + 18) = v38;
      }

      else
      {
        *(v31 + 18) = 0;
        v12 = v15;
      }

      ++v14;
      v39 = v54[1];
      v40 = v54[0] + 2;
      do
      {
        v10 = v40;
        v54[0] = v40;
        if (v40 == v39)
        {
          break;
        }

        v41 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v54, *v40, v40[1]);
        v40 = v10 + 2;
      }

      while (!v41);
      v13 = v52;
    }

    while (v10 != v11);
    v44 = *(v51 + 8);
    {
      v13 = v52;
      if (v50)
      {
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
        unk_1EB83D2C0 = 0xC62D89929260CB56;
        qword_1EB83D2C8 = "md::ls::FunctionConstants]";
        qword_1EB83D2D0 = 25;
        v13 = v52;
      }
    }

    *(v44 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v44 + 4096);
  }

  *(v12 + 104 * *v13 + 24) = -65536;
  v45 = v12 + 104 * *v13;
  v46 = *(v45 + 92);
  *(v45 + 92) = v46 + 1;
  *(v45 + 4 * v46 + 28) = v14;
  v47 = v12 + 104 * *v13;
  v49 = *(v47 + 92);
  v48 = (v47 + 92);
  if (v49 >= 0x10)
  {
    *v48 = 0;
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorEmissiveTextureEnabled>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorEmissiveTextureEnabled>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorEmissiveTextureEnabled,md::ls::FunctionConstants &,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PostchainCommon::SSAOConstants>,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::PostchainCommon::SSAOConstants>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PostchainCommon::SSAOConstants>,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::PostchainCommon::SSAOConstants>,ggl::zone_mallocator>>>(v2, a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>();
    unk_1EB83CE10 = 0xCE03281732FA0019;
    qword_1EB83CE18 = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    qword_1EB83CE20 = 54;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void std::vector<std::variant<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::variant<ecs2::AddComponent,ecs2::AddComponentBundle,ecs2::RemoveComponent,ecs2::DestroyEntity,ecs2::ClearComponent>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorEmmisiveEnabled,md::ls::FunctionConstants &,md::ls::StyleEmissiveDataKeyHandle const&>(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleEmissiveDataKeyHandle>(v3);
  v6 = v5;
  if (*(v5 + 40) - *(v5 + 32) >= *(v4 + 40) - *(v4 + 32))
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v7 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v43, *(v7 + 32), v8, v4, v5);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v42, v8, v8, v4, v6);
  v9 = v43[0];
  v40 = v42;
  if (v43[0] == v42)
  {
    v10 = _ZTWN4ecs27Runtime11_localStateE();
    v11 = _ZTWN4ecs27Runtime11_stackIndexE();
    v12 = 0;
  }

  else
  {
    v39 = v43[2];
    v37 = a1;
    v38 = v43[3];
    v10 = _ZTWN4ecs27Runtime11_localStateE();
    v11 = _ZTWN4ecs27Runtime11_stackIndexE();
    v12 = 0;
    v13 = v43[1];
    do
    {
      v14 = v9[1];
      v15 = v14 & 0x3F;
      v16 = (v14 >> 3) & 0x1FF8;
      v17 = *(*(*(v39 + 1) + v16) + 4 * v15 + 2);
      v18 = *(*(v39 + 7) + ((v17 >> 3) & 0x1FF8));
      v19 = *(*(*(v38 + 1) + v16) + 4 * v15 + 2);
      v20 = v19 & 0x3F;
      v21 = *(*(v38 + 7) + ((v19 >> 3) & 0x1FF8));
      v22 = v11;
      LODWORD(v15) = *v11;
      v23 = v10;
      *(v10 + 104 * v15 + 24) = *v9;
      v24 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v25 = md::VKMRenderResourcesStore::getKeyHandle<md::StyleEmissiveColorCacheKey>(v24, *(v21 + 8 * v20));
      v28 = v25 && (v26 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(v24 + 501, v25)) != 0 && (v27 = std::__hash_table<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::__unordered_map_hasher<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,md::StyleEmissiveColorCacheKeyHasher,std::equal_to<md::StyleEmissiveColorCacheKey>,true>,std::__unordered_map_equal<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::equal_to<md::StyleEmissiveColorCacheKey>,md::StyleEmissiveColorCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>>>::find<md::StyleEmissiveColorCacheKey>(v24 + 491, v26)) != 0 && v27[5] != 0;
      v10 = v23;
      *(v18 + 70 * (v17 & 0x3F) + 22) = v28;
      ++v12;
      v29 = v9 + 2;
      v11 = v22;
      do
      {
        v9 = v29;
        v43[0] = v29;
        if (v29 == v13)
        {
          break;
        }

        v30 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v43, *v29, v29[1]);
        v29 = v9 + 2;
      }

      while (!v30);
    }

    while (v9 != v40);
    v31 = *(v37 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v31 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v31 + 4096);
  }

  *(v10 + 104 * *v11 + 24) = -65536;
  v32 = v10 + 104 * *v11;
  v33 = *(v32 + 92);
  *(v32 + 92) = v33 + 1;
  *(v32 + 4 * v33 + 28) = v12;
  v34 = v10 + 104 * *v11;
  v36 = *(v34 + 92);
  v35 = (v34 + 92);
  if (v36 >= 0x10)
  {
    *v35 = 0;
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorEmmisiveEnabled>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorEmmisiveEnabled>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorEmmisiveEnabled,md::ls::FunctionConstants &,md::ls::StyleEmissiveDataKeyHandle const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
}

void md::ClientDrapedPolygonRenderLayer::~ClientDrapedPolygonRenderLayer(md::ClientDrapedPolygonRenderLayer *this)
{
  *this = &unk_1F2A3F770;
  v2 = *(this + 61);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 58));
  *this = &unk_1F2A3F858;
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 54));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 51));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 48));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 45));
  md::CartographicTiledRenderLayer<md::ElevatedPolygonRenderable>::~CartographicTiledRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3F770;
  v2 = *(this + 61);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 58));
  *this = &unk_1F2A3F858;
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 54));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 51));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 48));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 45));

  md::CartographicTiledRenderLayer<md::ElevatedPolygonRenderable>::~CartographicTiledRenderLayer(this);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::StyleEmissiveDataKeyHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleEmissiveDataKeyHandle>();
    unk_1EB83C540 = 0xA50DD2A5BD75DBD6;
    qword_1EB83C548 = "md::ls::StyleEmissiveDataKeyHandle]";
    qword_1EB83C550 = 34;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleEmissiveDataKeyHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorPreserveHeight,md::ls::FunctionConstants &,md::ls::PreserveHeight const&>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PreserveHeight>(v2);
  v5 = v4;
  if (*(v4 + 40) - *(v4 + 32) >= *(v3 + 40) - *(v3 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(v6 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v27, *(v6 + 32), v7, v3, v4);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v26, v7, v7, v3, v5);
  v8 = v27[0];
  v9 = v26;
  if (v27[0] == v26)
  {
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
  }

  else
  {
    v10 = v27[2];
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    v14 = v27[1];
    do
    {
      v15 = *(*(*(v10 + 1) + ((v8[1] >> 3) & 0x1FF8)) + 4 * (v8[1] & 0x3FLL) + 2);
      v16 = v15 & 0x3F;
      v17 = *(*(v10 + 7) + ((v15 >> 3) & 0x1FF8));
      *(v11 + 104 * *v12 + 24) = *v8;
      *(v17 + 70 * v16 + 8) = 1;
      ++v13;
      v18 = v8 + 2;
      do
      {
        v8 = v18;
        v27[0] = v18;
        if (v18 == v14)
        {
          break;
        }

        v19 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v27, *v18, v18[1]);
        v18 = v8 + 2;
      }

      while (!v19);
    }

    while (v8 != v9);
    v20 = *(a1 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v20 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v20 + 4096);
  }

  *(v11 + 104 * *v12 + 24) = -65536;
  v21 = v11 + 104 * *v12;
  v22 = *(v21 + 92);
  *(v21 + 92) = v22 + 1;
  *(v21 + 4 * v22 + 28) = v13;
  v23 = v11 + 104 * *v12;
  v25 = *(v23 + 92);
  v24 = (v23 + 92);
  if (v25 >= 0x10)
  {
    *v24 = 0;
  }
}

void *std::__shared_ptr_emplace<md::ElevatedPolygonRenderResources>::__on_zero_shared(uint64_t a1)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 880));
  v13 = (a1 + 840);
  std::vector<std::pair<md::DaVinciRenderStateCache::RenderStateKey,std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>>,geo::allocator_adapter<std::pair<md::DaVinciRenderStateCache::RenderStateKey,std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v13);
  md::FrameAllocator<ggl::RenderItem>::reset((a1 + 816));
  free(*(a1 + 816));
  ggl::RenderDataHolder::~RenderDataHolder((a1 + 600));
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((a1 + 560));
  v2 = *(a1 + 472);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((a1 + 424));
  v3 = *(a1 + 336);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((a1 + 288));
  v4 = *(a1 + 200);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((a1 + 152));
  v5 = *(a1 + 64);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v6)
  {
    v7 = ggl::FragmentedPool<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup>::~FragmentedPool(v6);
    MEMORY[0x1B8C62190](v7, 0x10A0C405CD4001ALL);
  }

  v8 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v8)
  {
    v9 = ggl::FragmentedPool<ggl::DaVinci::ElevatedFillColorPipelineSetup>::~FragmentedPool(v8);
    MEMORY[0x1B8C62190](v9, 0x10A0C405CD4001ALL);
  }

  v10 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v10)
  {
    v11 = ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup>::~FragmentedPool(v10);
    MEMORY[0x1B8C62190](v11, 0x10A0C405CD4001ALL);
  }

  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<std::pair<md::DaVinciRenderStateCache::RenderStateKey,std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>>,geo::allocator_adapter<std::pair<md::DaVinciRenderStateCache::RenderStateKey,std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        *(v3 - 1) = 0;
        if (v6)
        {
          v7 = (**v6)(v6);
          v8 = mdm::zone_mallocator::instance(v7);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::RenderState>(v8, v6);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v9 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<md::DaVinciRenderStateCache::RenderStateKey,std::unique_ptr<ggl::RenderState,mdm::TypeDeleter<ggl::RenderState>>>>(v9, v4);
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorPreserveHeight>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorPreserveHeight>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorPreserveHeight,md::ls::FunctionConstants &,md::ls::PreserveHeight const&>(a2);
  *(a1 + 8) = 0;
}

void *ggl::FragmentedPool<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PreserveHeight>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PreserveHeight>();
    unk_1EB83D820 = 0x98A9F01DBB8BCCCELL;
    qword_1EB83D828 = "md::ls::PreserveHeight]";
    qword_1EB83D830 = 22;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PreserveHeight>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void std::vector<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorColorCorrection>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorColorCorrection>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, void **a2)
{
  *(a1 + 8) = a2;
  result = md::ita::PrepareFunctionConstantDescriptorColorCorrection::operator()(**a2, (*a2)[1], a2);
  *(a1 + 8) = 0;
  return result;
}

uint64_t md::ita::PrepareFunctionConstantDescriptorColorCorrection::operator()(void *a1, void *a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    goto LABEL_4;
  }

  while (*a1 != 0x41D4E9297E100630)
  {
    a1 += 5;
    if (a1 == a2)
    {
      goto LABEL_4;
    }
  }

  if (a1 == a2)
  {
LABEL_4:
    v4 = 0;
  }

  else
  {
    v4 = a1[3];
    v5 = a1[4];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  v35 = v4;
  v43[0] = &unk_1F2A351F8;
  v43[1] = &v35;
  v44 = v43;
  v6 = *(a3 + 8);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v6);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::ColorCorrectionDataKeyHandle>(v6);
  v9 = v8;
  if (*(v8 + 40) - *(v8 + 32) >= *(v7 + 40) - *(v7 + 32))
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(v10 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v40, *(v10 + 32), v11, v7, v8);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v39, v11, v11, v7, v9);
  v12 = v40;
  v38 = v42;
  v36 = v40;
  v37 = v41;
  v13 = v39;
  if (v40 == v39)
  {
    v15 = _ZTWN4ecs27Runtime11_localStateE();
    v16 = _ZTWN4ecs27Runtime11_stackIndexE();
    v17 = 0;
  }

  else
  {
    v14 = v41;
    v15 = _ZTWN4ecs27Runtime11_localStateE();
    v16 = _ZTWN4ecs27Runtime11_stackIndexE();
    v17 = 0;
    v18 = *(&v40 + 1);
    do
    {
      v19 = v12[1];
      v20 = (v19 >> 3) & 0x1FF8;
      v21 = v19 & 0x3F;
      v22 = *(*(*(v14 + 8) + v20) + 4 * v21 + 2);
      v23 = *(*(v14 + 56) + ((v22 >> 3) & 0x1FF8));
      v24 = *(*(*(*(&v14 + 1) + 8) + v20) + 4 * v21 + 2);
      v25 = *(*(*(&v14 + 1) + 56) + ((v24 >> 3) & 0x1FF8));
      *(v15 + 104 * *v16 + 24) = *v12;
      if (!v44)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v44 + 48))(v44, v23 + 70 * (v22 & 0x3F), v25 + 8 * (v24 & 0x3F));
      ++v17;
      v26 = v12 + 2;
      do
      {
        v12 = v26;
        *&v40 = v26;
        if (v26 == v18)
        {
          break;
        }

        v27 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v40, *v26, v26[1]);
        v26 = v12 + 2;
      }

      while (!v27);
    }

    while (v12 != v13);
    v28 = *(a3 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v28 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v28 + 4096);
  }

  *(v15 + 104 * *v16 + 24) = -65536;
  v29 = v15 + 104 * *v16;
  v30 = *(v29 + 92);
  *(v29 + 92) = v30 + 1;
  *(v29 + 4 * v30 + 28) = v17;
  v31 = v15 + 104 * *v16;
  v33 = *(v31 + 92);
  v32 = (v31 + 92);
  if (v33 >= 0x10)
  {
    *v32 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::ColorCorrectionDataKeyHandle const&)>::~__value_func[abi:nn200100](v43);
}

void *ggl::FragmentedPool<ggl::DaVinci::ElevatedFillColorPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::DaVinci::ElevatedFillColorPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::DaVinci::ElevatedFillColorPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::DaVinci::ElevatedFillColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::DaVinci::ElevatedFillColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::ColorCorrectionDataKeyHandle>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ColorCorrectionDataKeyHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorCorrectionDataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ColorCorrectionDataKeyHandle>(void)::localId;
    unk_1EB82B440 = 0xFA89E73840C3EC51;
    qword_1EB82B448 = "md::ls::ColorCorrectionDataKeyHandle]";
    qword_1EB82B450 = 36;
  }
}

void std::vector<ggl::DaVinci::ElevatedFillColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedFillColorPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::ColorCorrectionDataKeyHandle const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorLandCover,md::ls::FunctionConstants &,md::ls::HasMaterialRasterRenderItem const&>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v2);
  HasMaterialRasterRender = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRasterRenderItem>(v2);
  ecs2::View<void,md::ls::FunctionConstants,md::ls::HasMaterialRasterRenderItem const>::each<md::ls::FunctionConstants&,md::ls::HasMaterialRasterRenderItem const&>(v25, v3, HasMaterialRasterRender);
  v22 = v25[0];
  v23 = v25[1];
  v5 = v27;
  v24 = v26;
  v6 = *&v25[0];
  if (*&v25[0] == v27)
  {
    v8 = _ZTWN4ecs27Runtime11_localStateE();
    v9 = _ZTWN4ecs27Runtime11_stackIndexE();
    v10 = 0;
  }

  else
  {
    v7 = v23;
    v8 = _ZTWN4ecs27Runtime11_localStateE();
    v9 = _ZTWN4ecs27Runtime11_stackIndexE();
    v10 = 0;
    v11 = *(&v22 + 1);
    do
    {
      v12 = *(*(*(v7 + 8) + ((v6[1] >> 3) & 0x1FF8)) + 4 * (v6[1] & 0x3FLL) + 2);
      v13 = *(*(v7 + 56) + ((v12 >> 3) & 0x1FF8)) + 70 * (v12 & 0x3F);
      *(v8 + 104 * *v9 + 24) = *v6;
      *(v13 + 9) = 257;
      ++v10;
      v14 = v6 + 2;
      do
      {
        v6 = v14;
        *&v22 = v14;
        if (v14 == v11)
        {
          break;
        }

        v15 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v22, *v14, v14[1]);
        v14 = v6 + 2;
      }

      while (!v15);
    }

    while (v6 != v5);
    v16 = *(a1 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v16 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v16 + 4096);
  }

  *(v8 + 104 * *v9 + 24) = -65536;
  v17 = v8 + 104 * *v9;
  v18 = *(v17 + 92);
  *(v17 + 92) = v18 + 1;
  *(v17 + 4 * v18 + 28) = v10;
  v19 = v8 + 104 * *v9;
  v21 = *(v19 + 92);
  v20 = (v19 + 92);
  if (v21 >= 0x10)
  {
    *v20 = 0;
  }
}

void std::vector<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedStrokeColorWithDistancePipelineSetup *>(v2, v1);
  }
}

void *ggl::FragmentedPool<ggl::DaVinci::ElevatedStrokeColorPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::DaVinci::ElevatedStrokeColorPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::DaVinci::ElevatedStrokeColorPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorLandCover>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorLandCover>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorLandCover,md::ls::FunctionConstants &,md::ls::HasMaterialRasterRenderItem const&>(a2);
  *(a1 + 8) = 0;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRasterRenderItem>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMaterialRasterRenderItem>();
    unk_1EB83C470 = 0xD5B48B62BD07EF80;
    qword_1EB83C478 = "md::ls::HasMaterialRasterRenderItem]";
    qword_1EB83C480 = 35;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRasterRenderItem>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void std::vector<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::ElevatedStrokeColorPipelineSetup *>(v2, v1);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMaterialRasterRenderItem>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMaterialRasterRenderItem>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[348];
}

uint64_t md::CartographicTiledRenderLayer<md::ElevatedPolygonRenderable>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2BD38;
  v2 = *(a1 + 320);
  if (v2)
  {
    *(a1 + 328) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 296);
  if (v3)
  {
    *(a1 + 304) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    *(a1 + 280) = v4;
    operator delete(v4);
  }

  geo::Pool<md::ElevatedPolygonRenderable>::disposeElements(a1 + 224);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 232));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 160));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(a1 + 104));
  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__function::__value_func<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls27HasMaterialRasterRenderItemEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F0E0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27HasMaterialRasterRenderItemEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4F0E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::ElevatedPolygonRenderable *,md::ElevatedPolygonRenderable *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::~PolygonRenderLayer(void *a1)
{
  md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::~PolygonRenderLayer(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::~PolygonRenderLayer(void *a1)
{
  *a1 = &unk_1F2A10098;
  v2 = a1[59];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  a1[47] = &unk_1F2A4E720;
  v3 = a1[49];
  if (v3)
  {
    a1[50] = v3;
    operator delete(v3);
  }

  std::unique_ptr<md::PolygonRenderResources>::~unique_ptr[abi:nn200100](a1 + 46);

  return md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::~CartographicTiledVectorRenderLayer(a1);
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorPlanar>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorPlanar>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorPlanar,md::ls::FunctionConstants &,md::ls::PlanarParametersCacheKeyHandle const&,md::ls::TriPlanar const*>(a2);
  *(a1 + 8) = 0;
}

uint64_t *std::unique_ptr<md::PolygonRenderResources>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ggl::RenderDataHolder::~RenderDataHolder((v2 + 1088));
    md::FrameAllocator<ggl::RenderItem>::reset((v2 + 1064));
    free(*(v2 + 1064));
    v3 = *(v2 + 1040);
    if (v3)
    {
      *(v2 + 1048) = v3;
      operator delete(v3);
    }

    v23 = (v2 + 1008);
    std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v23);
    v4 = *(v2 + 984);
    if (v4)
    {
      *(v2 + 992) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 976);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(v2 + 960);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(v2 + 944);
    *(v2 + 944) = 0;
    if (v7)
    {
      MEMORY[0x1B8C62190](v7, 0x1000C4049ECCB0CLL);
    }

    v8 = *(v2 + 920);
    *(v2 + 920) = 0;
    if (v8)
    {
      MEMORY[0x1B8C62190](v8, 0x1000C4049ECCB0CLL);
    }

    std::__tree<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::__map_value_compare<gss::StyleAttribute,std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::less<gss::StyleAttribute>,true>,std::allocator<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>>>::destroy(*(v2 + 856));
    for (i = 840; i != 264; i -= 8)
    {
      v10 = *(v2 + i);
      *(v2 + i) = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    v23 = (v2 + 240);
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v23);
    std::unique_ptr<ggl::FragmentedPool<ggl::PolygonFill::MeshPipelineSetup>>::reset[abi:nn200100]((v2 + 232), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v2 + 224), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v2 + 216), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v2 + 208), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::PolygonAnimatableStroke::MeshPipelineSetup>>::reset[abi:nn200100]((v2 + 200), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::HillshadeFillMask::CompressedMeshPipelineSetup>>::reset[abi:nn200100]((v2 + 192), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::PolygonStrokeMask::MeshPipelineSetup>>::reset[abi:nn200100]((v2 + 184), 0);
    std::unique_ptr<ggl::FragmentedPool<ggl::PolygonStroke::MeshPipelineSetup>>::reset[abi:nn200100]((v2 + 176), 0);
    v11 = *(v2 + 168);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v12 = *(v2 + 152);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = *(v2 + 136);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = *(v2 + 120);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = *(v2 + 104);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v16 = *(v2 + 88);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    v17 = *(v2 + 72);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }

    v18 = *(v2 + 56);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    v19 = *(v2 + 40);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    v20 = *(v2 + 24);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    }

    v21 = *(v2 + 8);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

    MEMORY[0x1B8C62190](v2, 0x10A0C406A08F493);
  }

  return a1;
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorOutputLinearDepth,md::ls::FunctionConstants &,md::ls::IntendedStandardPassSceneDepth const&>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedStandardPassSceneDepth>(v2);
  v5 = v4;
  if (*(v4 + 40) - *(v4 + 32) >= *(v3 + 40) - *(v3 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(v6 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v27, *(v6 + 32), v7, v3, v4);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v26, v7, v7, v3, v5);
  v8 = v27[0];
  v9 = v26;
  if (v27[0] == v26)
  {
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
  }

  else
  {
    v10 = v27[2];
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    v14 = v27[1];
    do
    {
      v15 = *(*(*(v10 + 1) + ((v8[1] >> 3) & 0x1FF8)) + 4 * (v8[1] & 0x3FLL) + 2);
      v16 = v15 & 0x3F;
      v17 = *(*(v10 + 7) + ((v15 >> 3) & 0x1FF8));
      *(v11 + 104 * *v12 + 24) = *v8;
      *(v17 + 70 * v16 + 31) = 1;
      ++v13;
      v18 = v8 + 2;
      do
      {
        v8 = v18;
        v27[0] = v18;
        if (v18 == v14)
        {
          break;
        }

        v19 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v27, *v18, v18[1]);
        v18 = v8 + 2;
      }

      while (!v19);
    }

    while (v8 != v9);
    v20 = *(a1 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v20 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v20 + 4096);
  }

  *(v11 + 104 * *v12 + 24) = -65536;
  v21 = v11 + 104 * *v12;
  v22 = *(v21 + 92);
  *(v21 + 92) = v22 + 1;
  *(v21 + 4 * v22 + 28) = v13;
  v23 = v11 + 104 * *v12;
  v25 = *(v23 + 92);
  v24 = (v23 + 92);
  if (v25 >= 0x10)
  {
    *v24 = 0;
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorOutputLinearDepth>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorOutputLinearDepth>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorOutputLinearDepth,md::ls::FunctionConstants &,md::ls::IntendedStandardPassSceneDepth const&>(a2);
  *(a1 + 8) = 0;
}

void std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = ggl::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::MultiRange<unsigned long>>(v5, v3);
  }
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorIdentityMatrix,md::ls::FunctionConstants &,md::ls::UseIdentityMatrix const&>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::UseIdentityMatrix>(v2);
  v5 = v4;
  if (*(v4 + 40) - *(v4 + 32) >= *(v3 + 40) - *(v3 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(v6 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v27, *(v6 + 32), v7, v3, v4);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v26, v7, v7, v3, v5);
  v8 = v27[0];
  v9 = v26;
  if (v27[0] == v26)
  {
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
  }

  else
  {
    v10 = v27[2];
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    v14 = v27[1];
    do
    {
      v15 = *(*(*(v10 + 1) + ((v8[1] >> 3) & 0x1FF8)) + 4 * (v8[1] & 0x3FLL) + 2);
      v16 = v15 & 0x3F;
      v17 = *(*(v10 + 7) + ((v15 >> 3) & 0x1FF8));
      *(v11 + 104 * *v12 + 24) = *v8;
      *(v17 + 70 * v16 + 32) = 1;
      ++v13;
      v18 = v8 + 2;
      do
      {
        v8 = v18;
        v27[0] = v18;
        if (v18 == v14)
        {
          break;
        }

        v19 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v27, *v18, v18[1]);
        v18 = v8 + 2;
      }

      while (!v19);
    }

    while (v8 != v9);
    v20 = *(a1 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v20 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v20 + 4096);
  }

  *(v11 + 104 * *v12 + 24) = -65536;
  v21 = v11 + 104 * *v12;
  v22 = *(v21 + 92);
  *(v21 + 92) = v22 + 1;
  *(v21 + 4 * v22 + 28) = v13;
  v23 = v11 + 104 * *v12;
  v25 = *(v23 + 92);
  v24 = (v23 + 92);
  if (v25 >= 0x10)
  {
    *v24 = 0;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UseIdentityMatrix>();
    *algn_1EB83D228 = 0x944162BB9DE8E7EBLL;
    qword_1EB83D230 = "md::ls::UseIdentityMatrix]";
    qword_1EB83D238 = 25;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UseIdentityMatrix>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorIdentityMatrix>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorIdentityMatrix>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorIdentityMatrix,md::ls::FunctionConstants &,md::ls::UseIdentityMatrix const&>(a2);
  *(a1 + 8) = 0;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UseIdentityMatrix>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UseIdentityMatrix>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[497];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls17UseIdentityMatrixEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A53AC8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__tree<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::__map_value_compare<gss::StyleAttribute,std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::less<gss::StyleAttribute>,true>,std::allocator<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::__map_value_compare<gss::StyleAttribute,std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::less<gss::StyleAttribute>,true>,std::allocator<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>>>::destroy(*a1);
    std::__tree<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::__map_value_compare<gss::StyleAttribute,std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>,std::less<gss::StyleAttribute>,true>,std::allocator<std::__value_type<gss::StyleAttribute,std::unique_ptr<ggl::Texture2D>>>>::destroy(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17UseIdentityMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53AC8;
  a2[1] = v2;
  return result;
}

void std::vector<ggl::PolygonFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonFill::MeshPipelineSetup *>(v2, v1);
  }
}

void md::ita::PrepareFunctionConstantDescriptorTileClipping::operator()(uint64_t **a1, uint64_t a2)
{
  v3 = +[VKDebugSettings sharedSettings];
  if ([v3 enableTileClipping])
  {
    [v3 enableTileClippingDebug];
  }

  ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  operator new();
}

void std::vector<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *>(v2, v1);
  }
}

void VKLineDrawWithOuterStroke(const __CTLine *a1, CGContextRef c)
{
  v34 = *MEMORY[0x1E69E9840];
  CGContextSaveGState(c);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = CTLineGetGlyphRuns(a1);
  v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v27 = *v30;
    key = *MEMORY[0x1E6965658];
    v25 = *MEMORY[0x1E6965A58];
    v24 = *MEMORY[0x1E69659D8];
    do
    {
      v28 = v4;
      for (i = 0; i != v28; ++i)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * i);
        Attributes = CTRunGetAttributes(v6);
        v8 = CTRunGetAttributes(v6);
        Value = CFDictionaryGetValue(v8, key);
        v10 = Value;
        if (Value)
        {
          v11 = CTFontCopyGraphicsFont(Value, 0);
          if (v11)
          {
            CGContextSetFont(c, v11);
            CFRelease(v11);
          }

          Size = CTFontGetSize(v10);
          CGContextSetFontSize(c, Size);
        }

        v13 = CFDictionaryGetValue(Attributes, v25);
        if (v13)
        {
          CGContextSetStrokeColorWithColor(c, v13);
        }

        v14 = CFDictionaryGetValue(Attributes, v24);
        if (v14)
        {
          CGContextSetFillColorWithColor(c, v14);
        }

        v15 = CFDictionaryGetValue(Attributes, kVKOuterStrokeWidthAttributeName);
        v16 = v15;
        if (v15)
        {
          [v15 floatValue];
          CGContextSetLineWidth(c, v17);
        }

        GlyphCount = CTRunGetGlyphCount(v6);
        PositionsPtr = CTRunGetPositionsPtr(v6);
        if (PositionsPtr)
        {
          v20 = 0;
        }

        else
        {
          PositionsPtr = malloc_type_malloc(16 * GlyphCount, 0x1000040451B5BE8uLL);
          v35.location = 0;
          v35.length = 0;
          CTRunGetPositions(v6, v35, PositionsPtr);
          v20 = PositionsPtr;
        }

        GlyphsPtr = CTRunGetGlyphsPtr(v6);
        if (GlyphsPtr)
        {
          v22 = 0;
        }

        else
        {
          v22 = malloc_type_malloc(16 * GlyphCount, 0x1000040451B5BE8uLL);
          v36.location = 0;
          v36.length = 0;
          CTRunGetGlyphs(v6, v36, v22);
          GlyphsPtr = v22;
        }

        CGContextSetBlendMode(c, kCGBlendModeNormal);
        if (v13 && v16)
        {
          CGContextSetTextDrawingMode(c, kCGTextStroke);
          CGContextShowGlyphsAtPositions(c, GlyphsPtr, PositionsPtr, GlyphCount);
        }

        CGContextSetTextDrawingMode(c, kCGTextFill);
        CGContextShowGlyphsAtPositions(c, GlyphsPtr, PositionsPtr, GlyphCount);
        if (v20)
        {
          free(v20);
        }

        if (v22)
        {
          free(v22);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v4);
  }

  CGContextRestoreGState(c);
}

void std::vector<ggl::PolygonFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonFill::CompressedMeshPipelineSetup *>(v2, v1);
  }
}

void md::OverlayContainer::belowOverlays(md::OverlayContainer *this, uint64_t a2)
{
  std::mutex::lock((a2 + 232));
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__init_with_size[abi:nn200100]<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(this, *(a2 + 160), *(a2 + 168), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 168) - *(a2 + 160)) >> 3));

  std::mutex::unlock((a2 + 232));
}

void std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__init_with_size[abi:nn200100]<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::ClippingConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ClippingConstantDataHandle>();
    *algn_1EB83C6B8 = 0x9292F9031FE6DB5;
    qword_1EB83C6C0 = "md::ls::ClippingConstantDataHandle]";
    qword_1EB83C6C8 = 34;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void md::OverlayContainer::aboveOverlays(md::OverlayContainer *this, uint64_t a2)
{
  std::mutex::lock((a2 + 232));
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__init_with_size[abi:nn200100]<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(this, *(a2 + 184), *(a2 + 192), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 192) - *(a2 + 184)) >> 3));

  std::mutex::unlock((a2 + 232));
}

void std::vector<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonAnimatableStroke::MeshPipelineSetup *>(v2, v1);
  }
}

void std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 3;
      v7 = v4 - 3;
      v8 = v4 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        (*v9)(v7);
        v6 -= 3;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::ClippingConstantDataHandle const&,md::ls::SharedUniqueID const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorPositionScale,md::ls::FunctionConstants &,md::ls::PositionScaleInfoConstantDataHandle const&,md::ls::IsMercator const&>(uint64_t a1)
{
  v35[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v2);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v2);
  v35[0] = v3;
  v35[1] = v4;
  v35[2] = v5;
  v6 = 1;
  v7 = v3;
  v8 = v35;
  do
  {
    if (*(v35[v6] + 40) - *(v35[v6] + 32) < *(v7 + 40) - *(v7 + 32))
    {
      v7 = v35[v6];
      v8 = &v35[v6];
    }

    ++v6;
  }

  while (v6 != 3);
  v9 = *(*v8 + 32);
  v10 = *(*v8 + 40);
  v30 = v9;
  v31 = v10;
  v32 = v3;
  v33 = v4;
  v34 = v5;
  while (v9 != v10 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v30, *v9, v9[1]))
  {
    v9 += 2;
    v30 = v9;
  }

  v11 = v30;
  if (v30 == v10)
  {
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v14 = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
  }

  else
  {
    v29 = a1;
    v12 = v32;
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v14 = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
    v16 = v31;
    do
    {
      v17 = *(*(*(v12 + 8) + ((v11[1] >> 3) & 0x1FF8)) + 4 * (v11[1] & 0x3FLL) + 2);
      v18 = v17 & 0x3F;
      v19 = *(*(v12 + 56) + ((v17 >> 3) & 0x1FF8));
      *(v13 + 104 * *v14 + 24) = *v11;
      *(v19 + 70 * v18 + 25) = 1;
      ++v15;
      v20 = v11 + 2;
      while (1)
      {
        v11 = v20;
        v30 = v20;
        if (v20 == v16)
        {
          break;
        }

        v21 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v30, *v20, v20[1]);
        v20 = v11 + 2;
        if (v21)
        {
          v22 = v11;
          goto LABEL_16;
        }
      }

      v22 = v16;
LABEL_16:
      ;
    }

    while (v22 != v10);
    v23 = *(v29 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v23 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v23 + 4096);
  }

  *(v13 + 104 * *v14 + 24) = -65536;
  v24 = v13 + 104 * *v14;
  v25 = *(v24 + 92);
  *(v24 + 92) = v25 + 1;
  *(v24 + 4 * v25 + 28) = v15;
  v26 = v13 + 104 * *v14;
  v28 = *(v26 + 92);
  v27 = (v26 + 92);
  if (v28 >= 0x10)
  {
    *v27 = 0;
  }
}

void std::vector<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *>(v2, v1);
  }
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorPositionScale>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorPositionScale>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorPositionScale,md::ls::FunctionConstants &,md::ls::PositionScaleInfoConstantDataHandle const&,md::ls::IsMercator const&>(a2);
  *(a1 + 8) = 0;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PositionScaleInfoConstantDataHandle>();
    unk_1EB83BAB0 = 0x6C7EE74910D42096;
    qword_1EB83BAB8 = "md::ls::PositionScaleInfoConstantDataHandle]";
    qword_1EB83BAC0 = 43;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void std::vector<ggl::PolygonStrokeMask::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStrokeMask::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonStrokeMask::MeshPipelineSetup *>(v2, v1);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsMercator>();
    *algn_1EB83DC58 = 0x237F9D3BCC905318;
    qword_1EB83DC60 = "md::ls::IsMercator]";
    qword_1EB83DC68 = 18;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMercator>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t md::ita::PrepareFunctionConstantDescriptorECEF::operator()(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v63[0] = &unk_1F2A35000;
  v64 = v63;
  v4 = *(a1 + 8);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v4);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v4);
  v7 = v6;
  if (*(v6 + 40) - *(v6 + 32) >= *(v5 + 40) - *(v5 + 32))
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v8 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v60, *(v8 + 32), v9, v5, v6);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v59, v9, v9, v5, v7);
  v10 = v60;
  v11 = v59[0];
  if (v60 == v59[0])
  {
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v14 = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
  }

  else
  {
    v12 = v62;
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v14 = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
    v16 = v61;
    do
    {
      v17 = v10[1];
      v18 = v17 & 0x3F;
      v19 = (v17 >> 3) & 0x1FF8;
      v20 = *(*(*(v12 + 8) + v19) + 4 * v18 + 2);
      v21 = *(*(v12 + 56) + ((v20 >> 3) & 0x1FF8));
      v22 = *(*(&v12 + 1) + 32);
      v23 = *(*(*(*(&v12 + 1) + 8) + v19) + 4 * v18 + 2);
      *(v13 + 104 * *v14 + 24) = *v10;
      if (!v64)
      {
LABEL_32:
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v64 + 48))(v64, v21 + 70 * (v20 & 0x3F), v22 + 4 * v23);
      ++v15;
      v24 = v10 + 2;
      do
      {
        v10 = v24;
        v60 = v24;
        if (v24 == v16)
        {
          break;
        }

        v25 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v60, *v24, v24[1]);
        v24 = v10 + 2;
      }

      while (!v25);
    }

    while (v10 != v11);
    v26 = *(a1 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v26 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v26 + 4096);
  }

  *(v13 + 104 * *v14 + 24) = -65536;
  v27 = v13 + 104 * *v14;
  v28 = *(v27 + 92);
  *(v27 + 92) = v28 + 1;
  *(v27 + 4 * v28 + 28) = v15;
  v29 = v13 + 104 * *v14;
  v31 = *(v29 + 92);
  v30 = (v29 + 92);
  if (v31 >= 0x10)
  {
    *v30 = 0;
  }

  std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsMercator const&)>::~__value_func[abi:nn200100](v63);
  v63[0] = &unk_1F2A35048;
  v64 = v63;
  v32 = *(a2 + 8);
  v33 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v32);
  IsNot = ecs2::BasicRegistry<void>::storage<md::ls::IsNotMercator>(v32);
  v35 = IsNot;
  if (*(IsNot + 40) - *(IsNot + 32) >= *(v33 + 40) - *(v33 + 32))
  {
    v36 = v33;
  }

  else
  {
    v36 = IsNot;
  }

  v37 = *(v36 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v60, *(v36 + 32), v37, v33, IsNot);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v59, v37, v37, v33, v35);
  v38 = v60;
  v39 = v59[0];
  if (v60 == v59[0])
  {
    v40 = 0;
  }

  else
  {
    v40 = 0;
    v41 = v62;
    v42 = v61;
    do
    {
      v43 = v38[1];
      v44 = v43 & 0x3F;
      v45 = (v43 >> 3) & 0x1FF8;
      v46 = *(*(*(v41 + 8) + v45) + 4 * v44 + 2);
      v47 = *(*(v41 + 56) + ((v46 >> 3) & 0x1FF8));
      v48 = *(*(&v41 + 1) + 32);
      v49 = *(*(*(*(&v41 + 1) + 8) + v45) + 4 * v44 + 2);
      *(v13 + 104 * *v14 + 24) = *v38;
      if (!v64)
      {
        goto LABEL_32;
      }

      (*(*v64 + 48))(v64, v47 + 70 * (v46 & 0x3F), v48 + 4 * v49);
      ++v40;
      v50 = v38 + 2;
      do
      {
        v38 = v50;
        v60 = v50;
        if (v50 == v42)
        {
          break;
        }

        v51 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v60, *v50, v50[1]);
        v50 = v38 + 2;
      }

      while (!v51);
    }

    while (v38 != v39);
    v52 = *(a2 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v52 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v52 + 4096);
  }

  *(v13 + 104 * *v14 + 24) = -65536;
  v53 = v13 + 104 * *v14;
  v54 = *(v53 + 92);
  *(v53 + 92) = v54 + 1;
  *(v53 + 4 * v54 + 28) = v40;
  v55 = v13 + 104 * *v14;
  v57 = *(v55 + 92);
  v56 = (v55 + 92);
  if (v57 >= 0x10)
  {
    *v56 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsNotMercator const&)>::~__value_func[abi:nn200100](v63);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorECEF>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorECEF>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  result = md::ita::PrepareFunctionConstantDescriptorECEF::operator()(a2, a2);
  *(a1 + 8) = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsMercator const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<ggl::PolygonStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStroke::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonStroke::MeshPipelineSetup *>(v2, v1);
  }
}

os_log_t __GEOGetVectorKitRouteLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit", "Route");
  GEOGetVectorKitRouteLog_log = result;
  return result;
}

void ggl::HillshadeFillMask::CompressedMeshPipelineState::~CompressedMeshPipelineState(ggl::HillshadeFillMask::CompressedMeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsNotMercator>();
    unk_1EB83D9D0 = 0xB3266AFC8DD8D727;
    qword_1EB83D9D8 = "md::ls::IsNotMercator]";
    qword_1EB83D9E0 = 21;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IsNotMercator>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ggl::PolygonFill::MeshPipelineState::~MeshPipelineState(ggl::PolygonFill::MeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsNotMercator>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsNotMercator>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[58];
}

void md::RouteOverlayContainer::addOverlay(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v13 = v12;
  std::mutex::lock((a1 + 96));
  v5 = 24;
  if (a3)
  {
    v5 = 48;
  }

  if (std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__emplace_unique_key_args<objc_object  {objcproto14VKRouteOverlay}*,objc_object  {objcproto14VKRouteOverlay} const&>((a1 + v5), v12, &v13))
  {
    v6 = *(a1 + 8);
    if (v6 >= *(a1 + 16))
    {
      v7 = std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__emplace_back_slow_path<objc_object  {objcproto14VKRouteOverlay}*&,geo::memory_management_mode const&>(a1, &v13, &geo::retain);
    }

    else
    {
      v7 = geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v6, v12) + 3;
      *(a1 + 8) = v7;
    }

    *(a1 + 8) = v7;
    v8 = *(a1 + 72);
    if (v8 != (a1 + 80))
    {
      do
      {
        (**v8[4])(v8[4], v12, a3);
        v9 = v8[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v8[2];
            v11 = *v10 == v8;
            v8 = v10;
          }

          while (!v11);
        }

        v8 = v10;
      }

      while (v10 != (a1 + 80));
    }
  }

  std::mutex::unlock((a1 + 96));
}

void sub_1B293B328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  std::mutex::unlock((v9 + 96));

  _Unwind_Resume(a1);
}

void ggl::VenueWall::MeshPipelineState::~MeshPipelineState(ggl::VenueWall::MeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls13IsNotMercatorEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4FB00;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__emplace_unique_key_args<objc_object  {objcproto14VKRouteOverlay}*,objc_object  {objcproto14VKRouteOverlay} const&>(uint64_t **a1, unint64_t a2, uint64_t *a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return 0;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13IsNotMercatorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4FB00;
  a2[1] = v2;
  return result;
}

uint64_t std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__emplace_back_slow_path<objc_object  {objcproto14VKRouteOverlay}*&,geo::memory_management_mode const&>(id **a1, void **a2, unsigned __int8 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v4)
  {
    v4 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v4;
  }

  v25 = a1;
  if (v6)
  {
    if (v6 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v7 = geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((24 * v3), *a2);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v7 - (v9 - *a1));
  v24 = (v7 + 3);
  if (v9 != v8)
  {
    v11 = 24 * v3 - 8 * (v9 - v8);
    v12 = v8;
    v13 = v10;
    v14 = v10;
    do
    {
      *v14 = &unk_1F2A1F258;
      v14 += 3;
      v13[1] = 0;
      objc_storeStrong(v13 + 1, v12[1]);
      v15 = v12[1];
      v12[1] = 0;

      v12 += 3;
      v11 += 24;
      v13 = v14;
    }

    while (v12 != v9);
    v16 = v8;
    v17 = v8;
    do
    {
      v18 = *v17;
      v17 += 3;
      (*v18)(v8);
      v16 += 3;
      v8 = v17;
    }

    while (v17 != v9);
  }

  v19 = *a1;
  *a1 = v10;
  v20 = a1[2];
  v22 = v24;
  *(a1 + 1) = v24;
  *&v24 = v19;
  *(&v24 + 1) = v20;
  v23[0] = v19;
  v23[1] = v19;
  std::__split_buffer<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(v23);
  return v22;
}

void ggl::PolygonAnimatableFill::CompressedMeshPipelineState::~CompressedMeshPipelineState(ggl::PolygonAnimatableFill::CompressedMeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsNotMercator const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorAO,md::ls::FunctionConstants &,md::ls::StyleGroundOcclusionConstantDataHandle const&>(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::StyleGroundOcclusionConstantDataHandle>(v2);
  v5 = v4;
  if (*(v4 + 40) - *(v4 + 32) >= *(v3 + 40) - *(v3 + 32))
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(v6 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v27, *(v6 + 32), v7, v3, v4);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v26, v7, v7, v3, v5);
  v8 = v27[0];
  v9 = v26;
  if (v27[0] == v26)
  {
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
  }

  else
  {
    v10 = v27[2];
    v11 = _ZTWN4ecs27Runtime11_localStateE();
    v12 = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = 0;
    v14 = v27[1];
    do
    {
      v15 = *(*(*(v10 + 1) + ((v8[1] >> 3) & 0x1FF8)) + 4 * (v8[1] & 0x3FLL) + 2);
      v16 = v15 & 0x3F;
      v17 = *(*(v10 + 7) + ((v15 >> 3) & 0x1FF8));
      *(v11 + 104 * *v12 + 24) = *v8;
      *(v17 + 70 * v16 + 16) = 1;
      ++v13;
      v18 = v8 + 2;
      do
      {
        v8 = v18;
        v27[0] = v18;
        if (v18 == v14)
        {
          break;
        }

        v19 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v27, *v18, v18[1]);
        v18 = v8 + 2;
      }

      while (!v19);
    }

    while (v8 != v9);
    v20 = *(a1 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v20 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v20 + 4096);
  }

  *(v11 + 104 * *v12 + 24) = -65536;
  v21 = v11 + 104 * *v12;
  v22 = *(v21 + 92);
  *(v21 + 92) = v22 + 1;
  *(v21 + 4 * v22 + 28) = v13;
  v23 = v11 + 104 * *v12;
  v25 = *(v23 + 92);
  v24 = (v23 + 92);
  if (v25 >= 0x10)
  {
    *v24 = 0;
  }
}

void *geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A1F258;
  a1[1] = v3;
  return a1;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorAO>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorAO>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  ecs2::Runtime::_entities<md::ita::PrepareFunctionConstantDescriptorAO,md::ls::FunctionConstants &,md::ls::StyleGroundOcclusionConstantDataHandle const&>(a2);
  *(a1 + 8) = 0;
}

void ggl::PolygonFill::CompressedMeshPipelineState::~CompressedMeshPipelineState(ggl::PolygonFill::CompressedMeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__split_buffer<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::StyleGroundOcclusionConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleGroundOcclusionConstantDataHandle>();
    *algn_1EB83B9D8 = 0xD5AD9B8C3FE62EE8;
    qword_1EB83B9E0 = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    qword_1EB83B9E8 = 46;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ___ZN2md23TiledGEOResourceFetcher14fetchResourcesERKNSt3__113unordered_mapIN3gdc11ResourceKeyEyNS3_15ResourceKeyHashENS1_8equal_toIS4_EENS1_9allocatorINS1_4pairIKS4_yEEEEEEPN3geo9TaskQueueEPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke(uint64_t a1, const _GEOTileKey *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v10 = a5;
  a6;
  v11 = *(a1 + 48);
  if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
  }

  v12 = GEOGetVectorKitResourceLoadingLog_log;
  v13 = v12;
  v14 = *(a1 + 136);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v13, OS_SIGNPOST_INTERVAL_END, v14, "ResourceFetch", &unk_1B3514CAA, buf, 2u);
  }

  md::GEOResourceFetcher::didLoadGEOKey(v11, a2, *(a1 + 32));
  if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
  }

  v15 = GEOGetVectorKitResourceLoadingLog_log;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = (*(**(v11 + 56) + 16))(*(v11 + 56));
    gdc::ResourceKey::keysInt32Str(&__p, (a1 + 56));
    v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v18 = *(a1 + 152);
    *buf = 136315650;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = v17;
    v28 = 2048;
    v29 = v18;
    _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_DEBUG, "%s TiledGEOResourceFetcher done fetching resource: %s, %llu", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v25 = 0;
  if (v22)
  {
    v19 = [v22 decodedRepresentation];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v24 = v10;
      v21 = [v22 readDataWithError:&v24];
      v24;
    }

    v25 = v21;
  }

  std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>(v23, &v25);
}

void sub_1B293C8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, void *a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a52 == 1 && a41 != a43)
  {
    free(a41);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a39);
  }

  _Unwind_Resume(a1);
}

uint64_t md::ita::PrepareFunctionConstantDescriptorFog::operator()(uint64_t a1, uint64_t a2)
{
  v51[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (!v4)
  {
    v4 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
    *(a1 + 8) = v4;
  }

  v5 = (**v4)(v4);
  result = md::LayoutContext::get<md::CameraContext>(*(v5 + 8));
  v7 = *(result + 3032);
  if (v7 < 1.0)
  {
    v49[0] = &unk_1F2A34FB8;
    v50 = v49;
    v8 = *(a2 + 8);
    v9 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v8);
    v10 = ecs2::BasicRegistry<void>::storage<md::ls::IsMaterial>(v8);
    v11 = ecs2::BasicRegistry<void>::storage<md::ls::MainPassItem>(v8);
    v51[0] = v9;
    v51[1] = v10;
    v12 = 1;
    v13 = v9;
    v14 = v51;
    v51[2] = v11;
    do
    {
      if (*(v51[v12] + 40) - *(v51[v12] + 32) < *(v13 + 40) - *(v13 + 32))
      {
        v13 = v51[v12];
        v14 = &v51[v12];
      }

      ++v12;
    }

    while (v12 != 3);
    v15 = *(*v14 + 32);
    v16 = *(*v14 + 40);
    v44 = v15;
    v45 = v16;
    v46 = v9;
    v47 = v10;
    v48 = v11;
    while (v15 != v16 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v44, *v15, v15[1]))
    {
      v15 += 2;
      v44 = v15;
    }

    v17 = v44;
    if (v44 == v16)
    {
      v21 = _ZTWN4ecs27Runtime11_localStateE();
      v22 = _ZTWN4ecs27Runtime11_stackIndexE();
      v23 = 0;
    }

    else
    {
      v43 = a2;
      v18 = v46;
      v19 = v47;
      v20 = v48;
      v21 = _ZTWN4ecs27Runtime11_localStateE();
      v22 = _ZTWN4ecs27Runtime11_stackIndexE();
      v23 = 0;
      v24 = v45;
      do
      {
        v25 = v17[1];
        v26 = (v25 >> 3) & 0x1FF8;
        v27 = v25 & 0x3F;
        v28 = *(*(*(v18 + 8) + v26) + 4 * v27 + 2);
        v29 = *(*(v18 + 56) + ((v28 >> 3) & 0x1FF8));
        v30 = *(*(*(v19 + 8) + v26) + 4 * v27 + 2);
        v31 = *(*(v19 + 56) + ((v30 >> 3) & 0x1FF8));
        v32 = *(v20 + 32);
        v33 = *(*(*(v20 + 8) + v26) + 4 * v27 + 2);
        *(v21 + 104 * *v22 + 24) = *v17;
        if (!v50)
        {
          std::__throw_bad_function_call[abi:nn200100]();
        }

        (*(*v50 + 48))(v50, v29 + 70 * (v28 & 0x3F), v31 + 8 * (v30 & 0x3F), v32 + 4 * v33);
        ++v23;
        v34 = v17 + 2;
        while (1)
        {
          v17 = v34;
          v44 = v34;
          if (v34 == v24)
          {
            break;
          }

          v35 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v44, *v34, v34[1]);
          v34 = v17 + 2;
          if (v35)
          {
            v36 = v17;
            goto LABEL_20;
          }
        }

        v36 = v24;
LABEL_20:
        ;
      }

      while (v36 != v16);
      v37 = *(v43 + 8);
      {
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
        unk_1EB83D2C0 = 0xC62D89929260CB56;
        qword_1EB83D2C8 = "md::ls::FunctionConstants]";
        qword_1EB83D2D0 = 25;
      }

      *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v37 + 4096);
    }

    *(v21 + 104 * *v22 + 24) = -65536;
    v38 = v21 + 104 * *v22;
    v39 = *(v38 + 92);
    *(v38 + 92) = v39 + 1;
    *(v38 + 4 * v39 + 28) = v23;
    v40 = v21 + 104 * *v22;
    v42 = *(v40 + 92);
    v41 = (v40 + 92);
    if (v42 >= 0x10)
    {
      *v41 = 0;
    }

    return std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsMaterial const&,md::ls::MainPassItem const&)>::~__value_func[abi:nn200100](v49);
  }

  return result;
}

void sub_1B293CE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsMaterial const&,md::ls::MainPassItem const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void ggl::PolygonAnimatableStroke::MeshPipelineState::~MeshPipelineState(ggl::PolygonAnimatableStroke::MeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorFog>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorFog>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareFunctionConstantDescriptorFog::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void md::GEOResourceFetcher::didLoadGEOKey(md::GEOResourceFetcher *this, const _GEOTileKey *a2, void *a3)
{
  if (*(this + 488) == 1)
  {
    std::mutex::lock((this + 496));
    v27 = *a2;
    v28 = a3;
    v6 = std::__unordered_map_hasher<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,md::UniqueKeyHasher,std::equal_to<std::pair<_GEOTileKey,void *>>,true>::operator()[abi:nn200100](&v27);
    v7 = *(this + 568);
    if (v7)
    {
      v8 = v6;
      v9 = vcnt_s8(v7);
      v9.i16[0] = vaddlv_u8(v9);
      v10 = v9.u32[0];
      if (v9.u32[0] > 1uLL)
      {
        v11 = v6;
        if (v6 >= *&v7)
        {
          v11 = v6 % *&v7;
        }
      }

      else
      {
        v11 = (*&v7 - 1) & v6;
      }

      v12 = *(*(this + 70) + 8 * v11);
      if (v12)
      {
        for (i = *v12; i; i = *i)
        {
          v14 = i[1];
          if (v14 == v8)
          {
            v15 = GEOTileKeyEquals();
            if (i[4] == v28)
            {
              v16 = v15;
            }

            else
            {
              v16 = 0;
            }

            if (v16)
            {
              v17 = *(this + 568);
              v18 = i[1];
              v19 = vcnt_s8(v17);
              v19.i16[0] = vaddlv_u8(v19);
              if (v19.u32[0] > 1uLL)
              {
                if (v18 >= *&v17)
                {
                  v18 %= *&v17;
                }
              }

              else
              {
                v18 &= *&v17 - 1;
              }

              v20 = *(this + 70);
              v21 = *(v20 + 8 * v18);
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21 != i);
              if (v22 == (this + 576))
              {
                goto LABEL_39;
              }

              v23 = v22[1];
              if (v19.u32[0] > 1uLL)
              {
                if (v23 >= *&v17)
                {
                  v23 %= *&v17;
                }
              }

              else
              {
                v23 &= *&v17 - 1;
              }

              if (v23 != v18)
              {
LABEL_39:
                if (!*i)
                {
                  goto LABEL_40;
                }

                v24 = *(*i + 8);
                if (v19.u32[0] > 1uLL)
                {
                  if (v24 >= *&v17)
                  {
                    v24 %= *&v17;
                  }
                }

                else
                {
                  v24 &= *&v17 - 1;
                }

                if (v24 != v18)
                {
LABEL_40:
                  *(v20 + 8 * v18) = 0;
                }
              }

              v25 = *i;
              if (*i)
              {
                v26 = *(v25 + 8);
                if (v19.u32[0] > 1uLL)
                {
                  if (v26 >= *&v17)
                  {
                    v26 %= *&v17;
                  }
                }

                else
                {
                  v26 &= *&v17 - 1;
                }

                if (v26 != v18)
                {
                  *(*(this + 70) + 8 * v26) = v22;
                  v25 = *i;
                }
              }

              *v22 = v25;
              *i = 0;
              --*(this + 73);
              std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,void *>>>::operator()[abi:nn200100](1, i);
              break;
            }
          }

          else
          {
            if (v10 > 1)
            {
              if (v14 >= *&v7)
              {
                v14 %= *&v7;
              }
            }

            else
            {
              v14 &= *&v7 - 1;
            }

            if (v14 != v11)
            {
              break;
            }
          }
        }
      }
    }

    std::mutex::unlock((this + 496));
  }
}

void md::ita::PrepareFunctionConstantDescriptorLightDebug::operator()(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (!v4)
  {
    v4 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
    *(a1 + 8) = v4;
  }

  v5 = *((**v4)(v4) + 8);
  v6 = md::LayoutContext::get<md::LightingLogicContext>(v5);
  v7 = md::LayoutContext::get<md::SettingsContext>(v5);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v7;
    v10 = +[VKDebugSettings sharedSettings];
    v11 = v10;
    if (*(v6 + 259) == 1 && [v10 daVinciSSAOOcclusionOnly])
    {
      v12 = [v11 daVinciAdvancedLightingEnabled];
    }

    else
    {
      v12 = 0;
    }

    if (*(v9 + 92) == 1)
    {
      v13 = [v11 daVinciAdvancedLightingEnabled];
    }

    else
    {
      v13 = 0;
    }

    if (*(v9 + 93) == 1)
    {
      v14 = [v11 daVinciAdvancedLightingEnabled];
    }

    else
    {
      v14 = 0;
    }

    if ([v11 daVinciLightingDebugShowOverexposure])
    {
      v15 = [v11 daVinciAdvancedLightingEnabled];
    }

    else
    {
      v15 = 0;
    }

    if ([v11 daVinciLightingDebugShowNormals])
    {
      v16 = [v11 daVinciAdvancedLightingEnabled];
    }

    else
    {
      v16 = 0;
    }

    if ((v12 | v13 | v14 | v15 | v16 | [v11 daVinciRenderingDebugShowUVs]))
    {
      v49[0] = &unk_1F2A34F70;
      v50 = v49;
      v17 = *(a2 + 8);
      v18 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v17);
      HasMaterialRasterRender = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRasterRenderItem>(v17);
      ecs2::View<void,md::ls::FunctionConstants,md::ls::HasMaterialRasterRenderItem const>::each<md::ls::FunctionConstants&,md::ls::HasMaterialRasterRenderItem const&>(v46, v18, HasMaterialRasterRender);
      v43 = v46[0];
      v44 = v46[1];
      v20 = v48;
      v45 = v47;
      v21 = *&v46[0];
      if (*&v46[0] == v48)
      {
        v23 = _ZTWN4ecs27Runtime11_localStateE();
        v24 = _ZTWN4ecs27Runtime11_stackIndexE();
        v25 = 0;
      }

      else
      {
        v42 = v11;
        v22 = v44;
        v23 = _ZTWN4ecs27Runtime11_localStateE();
        v24 = _ZTWN4ecs27Runtime11_stackIndexE();
        v25 = 0;
        v26 = *(&v43 + 1);
        do
        {
          v27 = v21[1];
          v28 = (v27 >> 3) & 0x1FF8;
          v29 = v27 & 0x3F;
          v30 = *(*(*(v22 + 8) + v28) + 4 * v29 + 2);
          v31 = *(*(v22 + 56) + ((v30 >> 3) & 0x1FF8));
          v32 = *(*(*(*(&v22 + 1) + 8) + v28) + 4 * v29 + 2);
          v33 = *(*(*(&v22 + 1) + 56) + ((v32 >> 3) & 0x1FF8));
          *(v23 + 104 * *v24 + 24) = *v21;
          if (!v50)
          {
            std::__throw_bad_function_call[abi:nn200100]();
          }

          (*(*v50 + 48))(v50, v31 + 70 * (v30 & 0x3F), v33 + 8 * (v32 & 0x3F));
          ++v25;
          v34 = v21 + 2;
          do
          {
            v21 = v34;
            *&v43 = v34;
            if (v34 == v26)
            {
              break;
            }

            v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v43, *v34, v34[1]);
            v34 = v21 + 2;
          }

          while (!v35);
        }

        while (v21 != v20);
        v36 = *(a2 + 8);
        {
          ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
          unk_1EB83D2C0 = 0xC62D89929260CB56;
          qword_1EB83D2C8 = "md::ls::FunctionConstants]";
          qword_1EB83D2D0 = 25;
        }

        *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v36 + 4096);
        v11 = v42;
      }

      *(v23 + 104 * *v24 + 24) = -65536;
      v37 = v23 + 104 * *v24;
      v38 = *(v37 + 92);
      *(v37 + 92) = v38 + 1;
      *(v37 + 4 * v38 + 28) = v25;
      v39 = v23 + 104 * *v24;
      v41 = *(v39 + 92);
      v40 = (v39 + 92);
      if (v41 >= 0x10)
      {
        *v40 = 0;
      }

      std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::HasMaterialRasterRenderItem const&)>::~__value_func[abi:nn200100](v49);
    }
  }
}

gdc::DataObject *gdc::DataObject::DataObject(gdc::DataObject *this, NSData *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F2A60898;
  v3 = this + 8;
  *(this + 1) = &unk_1F2A608E0;
  *(this + 2) = 0;
  geo::_retain_ptr<NSData * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v5, a2);
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v3, v5);
  v5[0] = &unk_1F2A608E0;

  return this;
}

void ggl::PolygonStrokeMask::MeshPipelineState::~MeshPipelineState(ggl::PolygonStrokeMask::MeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorLightDebug>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorLightDebug>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::PrepareFunctionConstantDescriptorLightDebug::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
}

void *md::LayoutContext::get<md::LightingLogicContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x41E8D6E445F4145uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x41E8D6E445F4145)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t gdc::ResourceKey::ResourceKey(uint64_t a1, __int16 a2, char *a3, uint64_t a4, uint64_t a5, int a6)
{
  *(a1 + 2) = a2;
  *(a1 + 4) = a6;
  *(a1 + 8) = a1 + 40;
  v8 = (a1 + 8);
  *a1 = 0;
  *(a1 + 16) = a1 + 40;
  *(a1 + 24) = a1 + 40;
  *(a1 + 32) = 32;
  *(a1 + 72) = 0;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>((a1 + 8), a3, &a3[a4]);
  v9 = *(a1 + 16);
  v10 = *v8;
  v11 = v9 - *v8;
  if (v9 == *v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v13 = *v10++;
      v12 ^= (v12 << 6) + (v12 >> 2) - 0x61C8864680B583EBLL + v13;
      --v11;
    }

    while (v11);
  }

  *(a1 + 72) = v12;
  *(a1 + 88) = a5;
  return a1;
}

void geo::small_vector_base<unsigned char>::append<unsigned char const*>(void *result, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = result[1];
  v8 = &v7[-*result];
  if ((a3 - a2) > result[3] - v8)
  {
    geo::small_vector_base<unsigned char>::grow(result, &v8[v6]);
    v7 = result[1];
  }

  if (v4 != a3)
  {
    do
    {
      v9 = *v4++;
      *v7++ = v9;
    }

    while (v4 != a3);
    v7 = result[1];
  }

  result[1] = &v7[v6];
}

void ggl::PolygonStroke::MeshPipelineState::~MeshPipelineState(ggl::PolygonStroke::MeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::_resourceOriginalLoadReasonFromInfo(md *this, NSDictionary *a2)
{
  v2 = [(md *)this objectForKey:*MEMORY[0x1E69A1960]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntValue];
    if ((v4 + 1) >= 7u)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0x2040302010002uLL >> (8 * ((v4 + 1) & 0x1Fu));
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void *md::LayoutContext::get<md::SettingsContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xC97B9E962ADF4AD4);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xC97B9E962ADF4AD4)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t md::_resourceSourceFromInfo(md *this, NSDictionary *a2)
{
  v2 = [(md *)this objectForKey:*MEMORY[0x1E69A1968]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntValue];
    if (v4 >= 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0x30102u >> (8 * v4);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::~CartographicTiledVectorRenderLayer(void *a1)
{
  *a1 = &unk_1F2A2E7A8;
  v2 = a1[44];
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = **v3;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      ggl::RenderItem::~RenderItem((v5 + 1));
      MEMORY[0x1B8C62190](v5, 0x10F0C40137B0629);
      ++v3;
    }

    while (v3 != v4);
    v2 = a1[44];
  }

  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  if (v7 == v8)
  {
    goto LABEL_11;
  }

  do
  {
    v9 = *v7;
    v10 = **v7;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    ggl::RenderItem::~RenderItem((v9 + 1));
    MEMORY[0x1B8C62190](v9, 0x10F0C40137B0629);
    ++v7;
  }

  while (v7 != v8);
  v2 = a1[44];
  if (v2)
  {
LABEL_11:
    md::CartographicTiledRenderResources::~CartographicTiledRenderResources(v2);
    MEMORY[0x1B8C62190]();
  }

  return md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::~CartographicTiledRenderLayer(a1);
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2B510;
  v2 = *(a1 + 320);
  if (v2)
  {
    *(a1 + 328) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 296);
  if (v3)
  {
    *(a1 + 304) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    *(a1 + 280) = v4;
    operator delete(v4);
  }

  geo::Pool<md::MapTileDataRenderable<md::PolygonTileData>>::disposeElements(a1 + 224);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 232));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 160));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(a1 + 104));
  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t md::_resourceTTLFromInfo(md *this, NSDictionary *a2)
{
  v2 = [(md *)this objectForKey:*MEMORY[0x1E69A1958]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntValue];
    v5 = (1000 * v4) & 0xFFFFFF00;
    v6 = (1000 * v4) & 0xF8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  return v5 | v6;
}

uint64_t std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> *,md::MapTileDataRenderable<md::PolygonTileData> *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void md::DaVinciTrafficRenderLayer::~DaVinciTrafficRenderLayer(md::DaVinciTrafficRenderLayer *this)
{
  *this = &unk_1F2A0E568;
  v2 = *(this + 48);
  if (v2)
  {
    *(this + 49) = v2;
    operator delete(v2);
  }

  v3 = *(this + 46);
  *(this + 46) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C4049ECCB0CLL);
  }

  md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::~CartographicTiledVectorRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0E568;
  v2 = *(this + 48);
  if (v2)
  {
    *(this + 49) = v2;
    operator delete(v2);
  }

  v3 = *(this + 46);
  *(this + 46) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C4049ECCB0CLL);
  }

  md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::~CartographicTiledVectorRenderLayer(this);
}

uint64_t gdc::ResourceFetcher::createResource(uint64_t a1, void *a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6, char a7, uint64_t a8)
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = a5;
  v18 = 0;
  if (((*(**a8 + 16))() & 1) == 0)
  {
    v18 = (*(**a8 + 24))();
    std::mutex::lock((a1 + 120));
    gdc::Sampler::addSample(a1 + 40 * a5 + 184, v18);
    std::mutex::unlock((a1 + 120));
  }

  v17 = 0uLL;
  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  if (v14 != v13)
  {
    while (*(a3 + 2) != *v14)
    {
      v14 += 12;
      if (v14 == v13)
      {
        goto LABEL_9;
      }
    }

    if (v14 != v13)
    {
      v26 = 0;
      operator new();
    }
  }

LABEL_9:
  *buf = -1;
  std::string::basic_string[abi:nn200100]<0>(&v21, "GeoDisplayCore");
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v15 = geo::linear_map<unsigned short,std::shared_ptr<gdc::ResourceStore>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::shared_ptr<gdc::ResourceStore>>>,std::vector<std::pair<unsigned short,std::shared_ptr<gdc::ResourceStore>>>>::operator[]((a1 + 24), *(a3 + 2));
  gdc::ResourceStore::failed(*v15, a2, a3, buf);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  return 0;
}

void sub_1B293E654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  _Unwind_Resume(a1);
}

void md::ita::PrepareFunctionConstantDescriptorShadows::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
    *(a1 + 8) = v6;
  }

  v7 = (**v6)(v6);
  v8 = md::LayoutContext::get<md::LightingLogicContext>(*(v7 + 8));
  if (v8)
  {
    v9 = v8;
    v10 = +[VKDebugSettings sharedSettings];
    v71 = v10;
    if ([v10 daVinciAdvancedLightingEnabled] && *(v9 + 257) == 1)
    {
      v75[0] = &unk_1F2A34EE0;
      v76 = v75;
      v11 = *(a2 + 8);
      v12 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v11);
      v13 = ecs2::BasicRegistry<void>::storage<md::ls::UsesShadow>(v11);
      v14 = v13;
      if (*(v13 + 40) - *(v13 + 32) >= *(v12 + 40) - *(v12 + 32))
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      v16 = *(v15 + 40);
      ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v72, *(v15 + 32), v16, v12, v13);
      ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v80, v16, v16, v12, v14);
      v17 = v72;
      v79 = v74;
      v77 = v72;
      v78 = v73;
      v18 = v80[0];
      if (v72 == v80[0])
      {
        v20 = _ZTWN4ecs27Runtime11_localStateE();
        v21 = _ZTWN4ecs27Runtime11_stackIndexE();
        v22 = 0;
      }

      else
      {
        v19 = v73;
        v20 = _ZTWN4ecs27Runtime11_localStateE();
        v21 = _ZTWN4ecs27Runtime11_stackIndexE();
        v22 = 0;
        v23 = *(&v72 + 1);
        do
        {
          v24 = v17[1];
          v25 = v24 & 0x3F;
          v26 = (v24 >> 3) & 0x1FF8;
          v27 = *(*(*(v19 + 8) + v26) + 4 * v25 + 2);
          v28 = *(*(v19 + 56) + ((v27 >> 3) & 0x1FF8));
          v29 = *(*(&v19 + 1) + 32);
          v30 = *(*(*(*(&v19 + 1) + 8) + v26) + 4 * v25 + 2);
          *(v20 + 104 * *v21 + 24) = *v17;
          if (!v76)
          {
            goto LABEL_49;
          }

          (*(*v76 + 48))(v76, v28 + 70 * (v27 & 0x3F), v29 + 4 * v30);
          ++v22;
          v31 = v17 + 2;
          do
          {
            v17 = v31;
            *&v72 = v31;
            if (v31 == v23)
            {
              break;
            }

            v32 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v72, *v31, v31[1]);
            v31 = v17 + 2;
          }

          while (!v32);
        }

        while (v17 != v18);
        v33 = *(a2 + 8);
        {
          ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
          unk_1EB83D2C0 = 0xC62D89929260CB56;
          qword_1EB83D2C8 = "md::ls::FunctionConstants]";
          qword_1EB83D2D0 = 25;
        }

        *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v33 + 4096);
        v10 = v71;
      }

      *(v20 + 104 * *v21 + 24) = -65536;
      v65 = v20 + 104 * *v21;
      v66 = *(v65 + 92);
      *(v65 + 92) = v66 + 1;
      *(v65 + 4 * v66 + 28) = v22;
      v67 = v20 + 104 * *v21;
      v69 = *(v67 + 92);
      v68 = (v67 + 92);
      if (v69 >= 0x10)
      {
        *v68 = 0;
      }

      std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::UsesShadow const&)>::~__value_func[abi:nn200100](v75);
      goto LABEL_47;
    }

    *&v77 = &unk_1F2A34F28;
    *(&v78 + 1) = &v77;
    v34 = *(a3 + 8);
    v35 = ecs2::BasicRegistry<void>::storage<md::ls::FunctionConstants>(v34);
    v36 = ecs2::BasicRegistry<void>::storage<md::ls::UsesShadow>(v34);
    v37 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedStandardPassSceneDepth>(v34);
    if (v36[5] - v36[4] >= v35[5] - v35[4])
    {
      v38 = v35;
    }

    else
    {
      v38 = v36;
    }

    v40 = v38[4];
    v39 = v38[5];
    if (v40 != v39)
    {
      v41 = v35[1];
      v42 = v35[2];
      do
      {
        if (ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v41, v42, v36, *v40, v40[1]))
        {
          break;
        }

        v40 += 2;
      }

      while (v40 != v39);
    }

    if (v40 == v39)
    {
      v43 = _ZTWN4ecs27Runtime11_localStateE();
      v44 = _ZTWN4ecs27Runtime11_stackIndexE();
      v45 = 0;
LABEL_40:
      v10 = v71;
      *(v43 + 104 * *v44 + 24) = -65536;
      v60 = v43 + 104 * *v44;
      v61 = *(v60 + 92);
      *(v60 + 92) = v61 + 1;
      *(v60 + 4 * v61 + 28) = v45;
      v62 = v43 + 104 * *v44;
      v64 = *(v62 + 92);
      v63 = (v62 + 92);
      if (v64 >= 0x10)
      {
        *v63 = 0;
      }

      std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::UsesShadow const&,md::ls::IntendedStandardPassSceneDepth const*)>::~__value_func[abi:nn200100](&v77);
LABEL_47:

      return;
    }

    v70 = a3;
    v43 = _ZTWN4ecs27Runtime11_localStateE();
    v44 = _ZTWN4ecs27Runtime11_stackIndexE();
    v45 = 0;
LABEL_27:
    v46 = v40[1];
    v47 = v46 >> 6;
    v48 = v46 & 0x3F;
    v49 = v37[1];
    if (v47 >= (v37[2] - v49) >> 3)
    {
      goto LABEL_31;
    }

    v50 = *(v49 + 8 * v47);
    if (!v50)
    {
      goto LABEL_32;
    }

    if (*(v50 + 4 * v48) == *v40)
    {
      v50 = v37[4] + 4 * *(v50 + 4 * v48 + 2);
    }

    else
    {
LABEL_31:
      v50 = 0;
    }

LABEL_32:
    v51 = *(*(v35[1] + 8 * v47) + 4 * v48 + 2);
    v52 = *(v35[7] + ((v51 >> 3) & 0x1FF8));
    v53 = v36[4];
    v54 = *(*(v36[1] + 8 * v47) + 4 * v48 + 2);
    *(v43 + 104 * *v44 + 24) = *v40;
    *&v72 = v50;
    if (!*(&v78 + 1))
    {
LABEL_49:
      std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(**(&v78 + 1) + 48))(*(&v78 + 1), v52 + 70 * (v51 & 0x3F), v53 + 4 * v54, &v72);
    ++v45;
    v55 = v35[1];
    v56 = v35[2];
    v57 = v40 + 2;
    while (v57 != v39)
    {
      v40 = v57;
      v58 = ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v55, v56, v36, *v57, v57[1]);
      v57 = v40 + 2;
      if (v58)
      {
        goto LABEL_27;
      }
    }

    v59 = *(v70 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FunctionConstants>();
      unk_1EB83D2C0 = 0xC62D89929260CB56;
      qword_1EB83D2C8 = "md::ls::FunctionConstants]";
      qword_1EB83D2D0 = 25;
    }

    *(v59 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FunctionConstants>(void)::metadata) = *(v59 + 4096);
    goto LABEL_40;
  }
}

void sub_1B293ED70(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::UsesShadow const&)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorShadows>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorShadows>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::PrepareFunctionConstantDescriptorShadows::operator()(a1 + 8, a2, a2);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::~CartographicTiledVectorRenderLayer(void *a1)
{
  *a1 = &unk_1F2A2ED48;
  v2 = a1[44];
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = **v3;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      ggl::RenderItem::~RenderItem((v5 + 1));
      MEMORY[0x1B8C62190](v5, 0x10F0C40137B0629);
      ++v3;
    }

    while (v3 != v4);
    v2 = a1[44];
  }

  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  if (v7 == v8)
  {
    goto LABEL_11;
  }

  do
  {
    v9 = *v7;
    v10 = **v7;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    ggl::RenderItem::~RenderItem((v9 + 1));
    MEMORY[0x1B8C62190](v9, 0x10F0C40137B0629);
    ++v7;
  }

  while (v7 != v8);
  v2 = a1[44];
  if (v2)
  {
LABEL_11:
    md::CartographicTiledRenderResources::~CartographicTiledRenderResources(v2);
    MEMORY[0x1B8C62190]();
  }

  return md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::~CartographicTiledRenderLayer(a1);
}

uint64_t md::TiledGEOResourceFetcher::createResource(id *a1, void *a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6, char a7, uint64_t a8)
{
  Resource = gdc::ResourceFetcher::createResource(a1, a2, a3, a4, a5, a6, a7, a8);
  if ((Resource & 1) == 0)
  {
    if ((*(a8 + 112) & 1) == 0)
    {
      v13 = std::__throw_bad_optional_access[abi:nn200100]();

      _Unwind_Resume(v13);
    }

    v14 = **(a8 + 24);
    v11 = md::TiledGEOResourceFetcher::getTileLoader(a1);
    [v11 reportCorruptTile:&v14];
  }

  return Resource;
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2BC50;
  v2 = *(a1 + 320);
  if (v2)
  {
    *(a1 + 328) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 296);
  if (v3)
  {
    *(a1 + 304) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    *(a1 + 280) = v4;
    operator delete(v4);
  }

  geo::Pool<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::disposeElements(a1 + 224);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 232));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 160));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(a1 + 104));
  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::DaVinciTrafficTileData> *,md::MapTileDataRenderable<md::DaVinciTrafficTileData> *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t gdc::DataObject::length(id *this)
{
  v2 = this[2];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v4 = this[2];
  if (!v4)
  {
    return 0;
  }

  return [v4 length];
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UsesShadow>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::DaVinciTrafficTileData> *,md::MapTileDataRenderable<md::DaVinciTrafficTileData> *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t gdc::Sampler::addSample(uint64_t this, double a2)
{
  v2 = *(this + 32);
  if (v2)
  {
    v3 = fmax(*(this + 8), a2);
    *this = fmin(*this, a2);
    *(this + 8) = v3;
    v4 = v2;
    v5 = *(this + 16) + a2 / v2;
    v6 = v2 + 1;
    a2 = *(this + 24) + a2;
    *(this + 16) = v5 * v4 / v6;
  }

  else
  {
    *this = a2;
    *(this + 8) = a2;
    v6 = 1;
    *(this + 16) = a2;
  }

  *(this + 24) = a2;
  *(this + 32) = v6;
  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UsesShadow>();
    *algn_1EB82F518 = 0x4C30532B0D2F6731;
    qword_1EB82F520 = "md::ls::UsesShadow]";
    qword_1EB82F528 = 18;
  }
}

void std::__function::__func<gdc::ResourceFetcher::createResource(unsigned long long,gdc::ResourceKey const&,gdc::ResourceOriginalLoadReason,gdc::ResourceSource,long long,BOOL,gdc::RawResourceSourceData const&)::$_0,std::allocator<gdc::ResourceFetcher::createResource(unsigned long long,gdc::ResourceKey const&,gdc::ResourceOriginalLoadReason,gdc::ResourceSource,long long,BOOL,gdc::RawResourceSourceData const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
  }

  v2 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
  v3 = v2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 80);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v6 = **(a1 + 16);
    v7 = **(a1 + 24);
    v8 = *(v4 + 88);
    v9 = 134218496;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "ResourceDecode", "resourceSize=%lu source=%hhu parent_signpost=%llu", &v9, 0x1Cu);
  }
}

uint64_t std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 42;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 85;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void md::DebugRenderLayer::~DebugRenderLayer(uint64_t **this)
{
  *this = &unk_1F2A03618;
  std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::~deque[abi:nn200100]((this + 18));
  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((this + 12));
  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((this + 7));
  std::unique_ptr<md::DebugLayerRenderResources>::reset[abi:nn200100](this + 6, 0);
  *this = &unk_1F2A16858;
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A03618;
  std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::~deque[abi:nn200100]((this + 18));
  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((this + 12));
  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((this + 7));
  std::unique_ptr<md::DebugLayerRenderResources>::reset[abi:nn200100](this + 6, 0);
  *this = &unk_1F2A16858;
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UsesShadow>()
{
  v0 = &unk_1EB839000;
  {
    v0 = &unk_1EB839000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UsesShadow>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB839000;
    }
  }

  return v0[291];
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls10UsesShadowEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50158;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void md::RegionalResourceSetDecoder::decode(void *a1@<X1>, _BYTE *a2@<X2>, void *a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2[112])
  {
    v6 = *a2;
    v7 = *(*a2 + 16);
    md::LabelExternalPointFeature::incident(v7);
    objc_claimAutoreleasedReturnValue();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = *(v6 + 16);
      md::LabelExternalPointFeature::incident(v9);
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E69A2450]);
      if ((a2[112] & 1) == 0)
      {
        v13 = std::__throw_bad_optional_access[abi:nn200100]();

        v14 = *(v7 + 8);
        if (v14 != *(v7 + 24))
        {
          free(v14);
        }

        MEMORY[0x1B8C62190](v7, 0x1090C40010BC676);
        _Unwind_Resume(v13);
      }

      v11 = v10;
      v15[0] = **(a2 + 3);
      v12 = *(v6 + 16);
      md::LabelExternalPointFeature::incident(v12);
      objc_claimAutoreleasedReturnValue();
      v9 = [v11 decodeTile:v12 forKey:v15];

      if (([v9 isMemberOfClass:objc_opt_class()] & 1) == 0)
      {
        *a3 = 0;
        a3[1] = 0;

        return;
      }
    }

    if (v9)
    {
      operator new();
    }
  }

  *a3 = 0;
  a3[1] = 0;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10UsesShadowEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50158;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::UsesShadow const&,md::ls::IntendedStandardPassSceneDepth const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<ggl::Textured::ScreenTexturedQuadPipelineSetup *,geo::allocator_adapter<ggl::Textured::ScreenTexturedQuadPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::ScreenTexturedQuadPipelineSetup *>(v2, v1);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::NeedsRenderState>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsRenderState>();
    unk_1EB83D580 = 0x1E85A99FD528C623;
    qword_1EB83D588 = "md::ls::NeedsRenderState]";
    qword_1EB83D590 = 24;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsRenderState>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t ecs2::Runtime::_entities<md::ita::SetupDefaultRenderState,md::ls::NeedsRenderState const&,md::ls::IsTransparent const*,md::ls::RenderItemID const&>(uint64_t a1, uint64_t **a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsRenderState>(a1);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::IsTransparent>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(a1);
  v6 = v5;
  if (*(v5 + 40) - *(v5 + 32) >= v3[5] - v3[4])
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7[4];
  v9 = v7[5];
  if (v8 != v9)
  {
    v10 = v3[1];
    v11 = v3[2];
    do
    {
      if (ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v10, v11, v6, *v8, v8[1]))
      {
        break;
      }

      v8 += 2;
    }

    while (v8 != v9);
  }

  if (v8 == v9)
  {
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = result;
    v14 = 0;
  }

  else
  {
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    v13 = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = 0;
    v37 = v4;
LABEL_10:
    v15 = v8[1];
    v16 = v4[1];
    v38 = v14;
    v19 = v15 >> 6 >= (v4[2] - v16) >> 3 || (v17 = *(v16 + 8 * (v15 >> 6))) == 0 || (v18 = v15 & 0x3F, *(v17 + 4 * v18) != *v8) || *(v4[7] + ((*(v17 + 4 * v18 + 2) >> 3) & 0x1FF8)) == 0;
    *(v12 + 104 * *v13 + 24) = *v8;
    v20 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
    v21 = v20;
    v22 = v20[4];
    if (!v22)
    {
      v23 = md::DaVinciRenderStateCache::renderState((v20[1774] + 2568), 3, 1, 1, 0, 1, 0, 3);
      *v21 = v23;
      v41 = v23;
      v44 = &v41;
      v20 = md::add2((v21 + 97), &v44, 1);
      v22 = v20;
      v21[4] = v20;
    }

    v24 = v21[5];
    if (!v24)
    {
      v25 = md::DaVinciRenderStateCache::renderState((v21[1774] + 2568), 3, 0, 1, 0, 1, 0, 3);
      v21[1] = v25;
      v41 = v25;
      v44 = &v41;
      v20 = md::add2((v21 + 97), &v44, 1);
      v24 = v20;
      v21[5] = v20;
    }

    v26 = ecs2::ExecutionTaskContext::currentEntity(v20);
    if (v19)
    {
      v41 = &off_1F2A52BD8;
      *&v42 = v22;
      *(&v42 + 1) = v26;
      v43 = &v41;
      v46 = &v44;
      v44 = &off_1F2A52BD8;
      v45 = v42;
      HIDWORD(v45) = 0;
      v47 = 0;
      ecs2::Runtime::queueCommand();
      v27 = v38;
      if (v47 != -1)
      {
        (off_1F2A0DFA0[v47])(&v40, &v44);
      }

      v47 = -1;
      result = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v41);
    }

    else
    {
      v41 = &off_1F2A52BD8;
      *&v42 = v24;
      *(&v42 + 1) = v26;
      v43 = &v41;
      v46 = &v44;
      v44 = &off_1F2A52BD8;
      v45 = v42;
      HIDWORD(v45) = 0;
      v47 = 0;
      ecs2::Runtime::queueCommand();
      if (v47 != -1)
      {
        (off_1F2A0DFA0[v47])(&v40, &v44);
      }

      v47 = -1;
      result = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v41);
      v27 = v38;
    }

    v14 = v27 + 1;
    v29 = v3[1];
    v30 = v3[2];
    v31 = v8 + 2;
    while (v31 != v9)
    {
      v8 = v31;
      result = ecs2::ViewIterator<void,std::tuple<md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>,std::tuple<>>::containsAll<md::ls::MaterialPendingProcessing const,md::ls::UniqueMaterialData const>(v29, v30, v6, *v31, v31[1]);
      v31 = v8 + 2;
      if (result)
      {
        v4 = v37;
        goto LABEL_10;
      }
    }
  }

  *(v12 + 104 * *v13 + 24) = -65536;
  v32 = v12 + 104 * *v13;
  v33 = *(v32 + 92);
  *(v32 + 92) = v33 + 1;
  *(v32 + 4 * v33 + 28) = v14;
  v34 = v12 + 104 * *v13;
  v36 = *(v34 + 92);
  v35 = (v34 + 92);
  if (v36 > 0xF)
  {
    *v35 = 0;
  }

  return result;
}

void std::vector<ggl::Textured::Pos2DUVExtendedPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVExtendedPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::Pos2DUVExtendedPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupDefaultRenderState>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupDefaultRenderState>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::SetupDefaultRenderState,md::ls::NeedsRenderState const&,md::ls::IsTransparent const*,md::ls::RenderItemID const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

gdc::Resource *gdc::Resource::Resource(gdc::Resource *this, char **a2)
{
  *this = *a2;
  *(this + 1) = this + 40;
  *(this + 2) = this + 40;
  *(this + 3) = this + 40;
  *(this + 4) = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>(this + 1, a2[1], a2[2]);
  *(this + 9) = a2[9];
  *(this + 5) = *(a2 + 5);
  *(this + 16) = 0;
  *(this + 136) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 60) = 0;
  return this;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsRenderState>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsRenderState>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[16];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16NeedsRenderStateEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F9A0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::vector<ggl::Point::PipelineSetup *,geo::allocator_adapter<ggl::Point::PipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Point::PipelineSetup *>(v2, v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16NeedsRenderStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4F9A0;
  a2[1] = v2;
  return result;
}

id **std::unique_ptr<md::RegionalResourceSet>::~unique_ptr[abi:nn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::RegionalResourceSet::~RegionalResourceSet(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void geo::ScopedFunctions::~ScopedFunctions(geo::ScopedFunctions *this, uint64_t a2)
{
  v3 = *(this + 3);
  if (!v3)
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](this);
    _Unwind_Resume(v4);
  }

  (*(*v3 + 48))(v3, a2);

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](this);
}

void std::vector<ggl::Debug::InstancedBasePipelineSetup *,geo::allocator_adapter<ggl::Debug::InstancedBasePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::InstancedBasePipelineSetup *>(v2, v1);
  }
}

void std::__function::__func<gdc::ResourceFetcher::createResource(unsigned long long,gdc::ResourceKey const&,gdc::ResourceOriginalLoadReason,gdc::ResourceSource,long long,BOOL,gdc::RawResourceSourceData const&)::$_1,std::allocator<gdc::ResourceFetcher::createResource(unsigned long long,gdc::ResourceKey const&,gdc::ResourceOriginalLoadReason,gdc::ResourceSource,long long,BOOL,gdc::RawResourceSourceData const&)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
  }

  v2 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
  v3 = v2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 80);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v6 = **(a1 + 16);
    v7 = **(a1 + 24);
    v8 = *(v4 + 88);
    v9 = 134218496;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v3, OS_SIGNPOST_INTERVAL_END, v5, "ResourceDecode", "resourceSize=%lu source=%hhu parent_signpost=%llu", &v9, 0x1Cu);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IsTransparent>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsTransparent>();
    unk_1EB83D9B0 = 0x73F0259EC1934FB1;
    qword_1EB83D9B8 = "md::ls::IsTransparent]";
    qword_1EB83D9C0 = 21;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsTransparent>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t std::__function::__func<gdc::ResourceManager::addResourceFetcher(std::unique_ptr<gdc::ResourceFetcher> &&)::$_2,std::allocator<std::unique_ptr<gdc::ResourceFetcher> &&>,void ()(std::shared_ptr<gdc::Resource> const&)>::operator()(uint64_t a1)
{
  result = *(*(a1 + 8) + 408);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t std::__function::__func<gdc::LayerDataManager::LayerDataManager(std::function<void ()(void)>,geo::TaskQueue *,gdc::Logger *)::$_0,std::allocator<gdc::LayerDataManager::LayerDataManager(std::function<void ()(void)>,geo::TaskQueue *,gdc::Logger *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = *(*(a1 + 8) + 96);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

char *ecs2::Runtime::_entities<md::ita::SetupCustomRenderState,md::ls::CustomRenderState const&,md::ls::IntendedSceneLayerType<(md::SceneLayer)4> const&,md::ls::NeedsRenderState const&>(uint64_t a1, uint64_t **a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::CustomRenderState>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(a1);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsRenderState>(a1);
  v44 = v4;
  *&v45 = v5;
  *(&v45 + 1) = v6;
  v7 = 1;
  v8 = v4;
  v9 = &v44;
  do
  {
    if ((&v44)[v7][5] - (&v44)[v7][4] < (v8[5] - v8[4]))
    {
      v8 = (&v44)[v7];
      v9 = &(&v44)[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v11 = (*v9)[4];
  v10 = (*v9)[5];
  v35 = v11;
  v36 = v10;
  v37 = v4;
  v38 = v5;
  v39 = v6;
  v34 = v10;
  while (v11 != v10 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v35, *v11, v11[1]))
  {
    v11 += 2;
    v35 = v11;
    v10 = v34;
  }

  v12 = v35;
  if (v35 == v34)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
  }

  else
  {
    v13 = v37;
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
    v17 = v36;
    do
    {
      v18 = *(*(*(v13 + 8) + ((v12[1] >> 3) & 0x1FF8)) + 4 * (v12[1] & 0x3FLL) + 2);
      v19 = *(*(v13 + 56) + ((v18 >> 3) & 0x1FF8)) + 24 * (v18 & 0x3F);
      v20 = result;
      v21 = v15;
      *(v15 + 104 * *result + 24) = *v12;
      v22 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v23 = *v19;
      if (*(v19 + 17) == 1)
      {
        *(v23 + 208) = 1;
      }

      v41 = v23;
      v44 = &v41;
      v24 = md::add2((v22 + 97), &v44, 1);
      v25 = ecs2::ExecutionTaskContext::currentEntity(v24);
      v41 = &off_1F2A52BD8;
      *&v42 = v24;
      *(&v42 + 1) = v25;
      v43 = &v41;
      v46 = &v44;
      v44 = &off_1F2A52BD8;
      v45 = v42;
      HIDWORD(v45) = 0;
      v47 = 0;
      ecs2::Runtime::queueCommand();
      if (v47 != -1)
      {
        (off_1F2A0DFA0[v47])(&v40, &v44);
      }

      v47 = -1;
      std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v41);
      ++v16;
      v26 = v12 + 2;
      while (1)
      {
        v12 = v26;
        v35 = v26;
        if (v26 == v17)
        {
          break;
        }

        v27 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v35, *v26, v26[1]);
        v26 = v12 + 2;
        if (v27)
        {
          v28 = v12;
          goto LABEL_20;
        }
      }

      v28 = v17;
LABEL_20:
      v15 = v21;
      result = v20;
    }

    while (v28 != v34);
  }

  *(v15 + 104 * *result + 24) = -65536;
  v29 = v15 + 104 * *result;
  v30 = *(v29 + 92);
  *(v29 + 92) = v30 + 1;
  *(v29 + 4 * v30 + 28) = v16;
  v31 = v15 + 104 * *result;
  v33 = *(v31 + 92);
  v32 = (v31 + 92);
  if (v33 > 0xF)
  {
    *v32 = 0;
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void md::DaVinciMapEngineMode::DaVinciMapEngineMode(void *a1, uint64_t a2, uint64_t a3, void *a4, std::__shared_weak_count *a5)
{
  v5 = a3;
  v6 = a2;
  v11 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = a4;
    v10 = a5;
    atomic_fetch_add_explicit(&a5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v9 = a4;
    v10 = 0;
  }

  IsEnabled_VKMLayout_SPR = MapsFeature_IsEnabled_VKMLayout_SPR();
  md::DaVinciBaseMapEngineMode::DaVinciBaseMapEngineMode(a1, v6, v5, &v9, IsEnabled_VKMLayout_SPR);
}

void sub_1B29414E4(_Unwind_Exception *a1)
{
  *v1 = &unk_1F2A58888;
  v3 = *(v1 + 82);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::MapEngineMode::~MapEngineMode(v1);
  _Unwind_Resume(a1);
}

void gdc::ResourceFetcher::didFinishLoading(gdc::ResourceFetcher *this, NSError *a2)
{
  v4 = a2;
  v3 = atomic_load(this + 14);
  if (v3)
  {
    (*(*v3 + 24))(v3, v4);
  }
}

void std::vector<ggl::Debug::LinePipelineSetup *,geo::allocator_adapter<ggl::Debug::LinePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::LinePipelineSetup *>(v2, v1);
  }
}

void md::DaVinciMapEngineMode::DaVinciMapEngineMode(void *a1, uint64_t a2, void *a3, std::__shared_weak_count *a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::DaVinciMapEngineMode::DaVinciMapEngineMode(a1, 10, a2, a3, a4);
}

void sub_1B294167C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::BasePipelineSetup *>(v2, v1);
  }
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupCustomRenderState>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupCustomRenderState>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::SetupCustomRenderState,md::ls::CustomRenderState const&,md::ls::IntendedSceneLayerType<(md::SceneLayer)4> const&,md::ls::NeedsRenderState const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>();
    *algn_1EB83CB88 = 0x5DA2A39FD10CA33BLL;
    qword_1EB83CB90 = "md::ls::IntendedSceneLayerType<md::SceneLayer::AboveRoute>]";
    qword_1EB83CB98 = 58;
  }
}

void gdc::LoadingStatusTracker::didFinishLoadingResources(gdc::LoadingStatusTracker *this, NSError *a2)
{
  v4 = a2;
  std::mutex::lock((this + 8));
  if (v4 && *(this + 10) != v4)
  {
    objc_storeStrong(this + 10, a2);
  }

  v5 = *(this + 18);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 - 1;
  *(this + 18) = v6;
  if (!v6)
  {
    if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
    }

    v7 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
    if (os_signpost_enabled(v7))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "LoadingResources", &unk_1B3514CAA, v9, 2u);
    }

    if (*(this + 19))
    {
      std::function<void ()(NSError *)>::operator()(this + 128, *(this + 10));
      v8 = *(this + 10);
      *(this + 10) = 0;
    }
  }

  std::mutex::unlock((this + 8));
}

void sub_1B29418BC(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 8));

  _Unwind_Resume(a1);
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::~FragmentedPool(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v2 = (a1 + 32);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = *(a1 + 1);
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::Debug::BasePipelineSetup *)>::~__value_func[abi:nn200100](a1 + 96);
  std::__function::__value_func<ggl::Debug::BasePipelineSetup * ()(void)>::~__value_func[abi:nn200100](a1 + 64);
  std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::Debug::BasePipelineSetup *,geo::allocator_adapter<ggl::Debug::BasePipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void md::DaVinciBaseMapEngineMode::DaVinciBaseMapEngineMode(uint64_t a1, char a2, int a3, void *a4, char a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = md::MapEngineMode::MapEngineMode(a1, a2);
  *v9 = &unk_1F2A58888;
  *(v9 + 616) = 0u;
  *(v9 + 632) = 0x3F80000000000000;
  *(v9 + 640) = a5;
  *(v9 + 648) = *a4;
  v10 = a4[1];
  *(v9 + 656) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 616) = 100;
  *(a1 + 49) = 1;
  *(a1 + 52) = 21;
  if (a3)
  {
    v11 = +[VKDebugSettings sharedSettings];
    if ([v11 daVinciCameraController])
    {
      v12 = +[VKDebugSettings sharedSettings];
      v13 = [v12 daVinciCameraControllerForceMercatorZoom];

      if (v13)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {

      v14 = 2;
    }

    *(a1 + 224) = v14;
    *(a1 + 225) = 4;
    md::MapEngineMode::addTileSelectionTileSetType(a1);
    v16 = 1;
    v15 = 1;
  }

  else
  {
    *(a1 + 224) = 768;
    v15 = 4;
    v16 = 3;
  }

  LOWORD(v19) = 1;
  v31 = &v19;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 1u, &v31) + 18) = 1;
  LOWORD(v19) = 8;
  v31 = &v19;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 8u, &v31) + 18) = 0;
  LOWORD(v19) = 4;
  v31 = &v19;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 4u, &v31) + 18) = 1;
  LOWORD(v19) = 3;
  v31 = &v19;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 3u, &v31) + 18) = 1;
  LOWORD(v19) = 7;
  v31 = &v19;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 7u, &v31) + 18) = 1;
  LOWORD(v19) = 6;
  v31 = &v19;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 6u, &v31) + 18) = 1;
  LOWORD(v19) = 5;
  v31 = &v19;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 5u, &v31) + 18) = 1;
  LOWORD(v19) = 2;
  v31 = &v19;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 2u, &v31) + 18) = 1;
  LOWORD(v19) = 0;
  v31 = &v19;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>((a1 + 8), 0, &v31) + 18) = 1;
  LOWORD(v31) = 2560;
  v32 = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 464, &v31);
  LOWORD(v31) = 6410;
  v32 = 0x3FD657184AE74487;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 464, &v31);
  LOWORD(v31) = 2560;
  v32 = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 512, &v31);
  LOWORD(v31) = 6410;
  v32 = 0x3FE0C152382D7365;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 512, &v31);
  LOWORD(v31) = 768;
  v32 = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 488, &v31);
  LOWORD(v31) = 3843;
  v32 = 0x3FE38C35418A5BF6;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 488, &v31);
  LOWORD(v31) = 4111;
  v32 = 0x3FF0C152382D7365;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 488, &v31);
  LOWORD(v31) = 4624;
  v32 = 0x3FF38C35418A5BF6;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 488, &v31);
  LOWORD(v31) = 6418;
  v32 = 0x3FF4F1A6C638D03FLL;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 488, &v31);
  v31 = 0x1F2021221D023300;
  LOWORD(v32) = 12572;
  BYTE2(v32) = 36;
  md::MapEngineMode::addRequiredRenderLayers(a1, &v31, 11);
  if (a3)
  {
    LOBYTE(v31) = 1;
  }

  else
  {
    LOBYTE(v31) = 3;
  }

  md::MapEngineMode::addRequiredRenderLayers(a1, &v31, 1);
  v17 = [MEMORY[0x1E69A2398] sharedPlatform];
  v18 = [v17 isInternalInstall];

  if (v18)
  {
    gdc::LogicExecutionGraphBuilder::addLogic<md::DisplayLinkVerificationLogic>(a1 + 232);
  }

  v31 = 0x2B7C4502BD3C99C6;
  v32 = "md::ResolvedSceneLogic]";
  v33 = 22;
  gdc::LogicExecutionGraphBuilder::addFlowAfter((a1 + 232), &v31, 0);
  v31 = 0x17767EADC5B287BLL;
  v32 = "md::ElevationLogic]";
  v33 = 18;
  gdc::LogicExecutionGraphBuilder::addFlowAfter((a1 + 232), &v31, 1);
  gdc::LogicExecutionGraphBuilder::addLogic<md::mun::MuninLogic>(a1 + 232);
  v24 = 0xA5031243356EEB30;
  v25 = "md::ElevatedOverlayLogic]";
  v26 = 24;
  v19 = 0x1DCE255EA309B4ADLL;
  v20 = "md::ElevatedOverlayContext]";
  v21 = 26;
  LOBYTE(v22) = 1;
  v34 = xmmword_1E7B3C7D8;
  v32 = &v34;
  v33 = 2;
  v30 = 0;
  v31 = &unk_1F2A4B5D0;
  v35 = unk_1E7B3C7E8;
  v36 = xmmword_1E7B3C7F8;
  v28 = &unk_1F2A4C258;
  v29 = &v31;
  gdc::LogicExecutionGraphBuilder::addLogic(a1 + 232, &v24, &v19, 1, &v31, &v28);
  gdc::LogicExecutionGraphBuilder::addLogic<md::AnchorLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::AssetLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::AssetInjectionLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::CameraLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::ElevationLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GeometryLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GridLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::HikingLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::IdentifiedResourceLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LabelsLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LightingLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LoadingStatusLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::MapZoomLevelStyleLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::MaterialLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::OverlaysLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::DrapingLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PolygonLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::MeshRenderableLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::NavigationLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::RouteLineLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PuckLocationAnimationTracingLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::RegistryLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingRegistryLogic>(a1 + 232);
  v24 = 0x8D737D0C0FC52C0CLL;
  v25 = "md::EntityDebugHighlightLogic]";
  v26 = 29;
  v19 = 0xE75FAB3171C16149;
  v20 = "md::EntityDebugHighlightContext]";
  v21 = 31;
  LOBYTE(v22) = 1;
  v36 = xmmword_1E7B3C840;
  v37 = unk_1E7B3C850;
  v38 = xmmword_1E7B3C860;
  v39 = *&off_1E7B3C870;
  v34 = xmmword_1E7B3C820;
  v32 = &v34;
  v33 = 4;
  v30 = 0;
  v31 = &unk_1F2A4B610;
  v35 = unk_1E7B3C830;
  v28 = &unk_1F2A4C258;
  v29 = &v31;
  gdc::LogicExecutionGraphBuilder::addLogic(a1 + 232, &v24, &v19, 0, &v31, &v28);
  gdc::LogicExecutionGraphBuilder::addLogic<md::RouteOverlayLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LayerDataLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileSelectionLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingSceneLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SceneQueryLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SettingsLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SharedResourcesLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SkyLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::StyleLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PuckLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::NonTiledAssetLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LocalNorthLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::StandardLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::DebugDrawLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::BVHDebugLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::ResolvedSceneLogic>(a1 + 232);
  if (*(a1 + 640) == 1)
  {
    v24 = 0x3BC31E741FCE930;
    v25 = "md::CollectMapDataLogic<md::MapDataType::DaVinciGround>]";
    v26 = 55;
    v19 = 0x9052DC4F017D3735;
    v20 = "md::CollectMapDataContext<md::MapDataType::DaVinciGround>]";
    v21 = 57;
    LOBYTE(v22) = 1;
    v31 = &unk_1F2A4C218;
    v32 = &v34;
    v34 = xmmword_1E7B3C808;
    v33 = 1;
    *&v35 = 16;
    v29 = &v31;
    v30 = 0;
    v28 = &unk_1F2A4C258;
    gdc::LogicExecutionGraphBuilder::addLogic(a1 + 232, &v24, &v19, 0, &v31, &v28);
    v28 = 0x6E358E41B8F27CBFLL;
    v29 = "md::CollectRenderablesLogic<md::MapDataType::DaVinciGround, md::DaVinciGroundRenderable>]";
    v30 = 88;
    v24 = 0xF20ACC1C64F7EF84;
    v25 = "md::CollectRenderablesLogicContext<md::MapDataType::DaVinciGround>]";
    v26 = 66;
    v27 = 1;
    v31 = &unk_1F2A4C218;
    v32 = &v34;
    v34 = xmmword_1E7B3C8B0;
    v33 = 1;
    *&v35 = 19;
    v20 = &v22;
    v21 = 1;
    v19 = &unk_1F2A4C218;
    v22 = xmmword_1E7B3C880;
    v23 = 57;
    gdc::LogicExecutionGraphBuilder::addLogic(a1 + 232, &v28, &v24, 0, &v31, &v19);
    v24 = 0x1322DEACE457CC27;
    v25 = "md::CollectMapDataLogic<md::MapDataType::DaVinciGroundGlobe>]";
    v26 = 60;
    v19 = 0x412AFB1345D08930;
    v20 = "md::CollectMapDataContext<md::MapDataType::DaVinciGroundGlobe>]";
    v21 = 62;
    LOBYTE(v22) = 1;
    v31 = &unk_1F2A4C218;
    v32 = &v34;
    v34 = xmmword_1E7B3C808;
    v33 = 1;
    *&v35 = 16;
    v29 = &v31;
    v30 = 0;
    v28 = &unk_1F2A4C258;
    gdc::LogicExecutionGraphBuilder::addLogic(a1 + 232, &v24, &v19, 0, &v31, &v28);
    v28 = 0x8555A05B7A670CC0;
    v29 = "md::CollectRenderablesLogic<md::MapDataType::DaVinciGroundGlobe, md::DaVinciGroundRenderable>]";
    v30 = 93;
    v24 = 0x521897C68EA476F3;
    v25 = "md::CollectRenderablesLogicContext<md::MapDataType::DaVinciGroundGlobe>]";
    v26 = 71;
    v27 = 1;
    v31 = &unk_1F2A4C218;
    v32 = &v34;
    v34 = xmmword_1E7B3C8B0;
    v33 = 1;
    *&v35 = 19;
    v20 = &v22;
    v21 = 1;
    v19 = &unk_1F2A4C218;
    v22 = xmmword_1E7B3C898;
    v23 = 62;
    gdc::LogicExecutionGraphBuilder::addLogic(a1 + 232, &v28, &v24, 0, &v31, &v19);
    gdc::LogicExecutionGraphBuilder::addLogic<md::CollectMapDataLogic<(md::MapDataType)54>>(a1 + 232);
    gdc::LogicExecutionGraphBuilder::addLogic<md::CollectRenderablesLogic<(md::MapDataType)54,md::DaVinciGroundRenderable>>(a1 + 232);
    gdc::LogicExecutionGraphBuilder::addLogic<md::CollectMapDataLogic<(md::MapDataType)62>>(a1 + 232);
    gdc::LogicExecutionGraphBuilder::addLogic<md::CollectRenderablesLogic<(md::MapDataType)62,md::DaVinciGroundRenderable>>(a1 + 232);
  }

  LODWORD(v31) = 841426988;
  BYTE4(v31) = 18;
  md::MapEngineMode::addOptionalRenderLayers(a1, &v31, 5);
  LODWORD(v31) = 623260702;
  md::MapEngineMode::addAllowedRenderLayers(a1, &v31, 4);
  LOWORD(v31) = 44;
  WORD1(v31) = v15;
  WORD2(v31) = 46;
  HIWORD(v31) = v15;
  LOWORD(v32) = 50;
  WORD1(v32) = v15;
  WORD2(v32) = 33;
  HIWORD(v32) = v15;
  LODWORD(v33) = 327714;
  md::MapEngineMode::addRequiredMapDataTypes(a1, &v31, 5);
  LODWORD(v31) = 327703;
  WORD2(v31) = 57;
  HIWORD(v31) = v15;
  LOWORD(v32) = 58;
  WORD1(v32) = v15;
  WORD2(v32) = 27;
  HIWORD(v32) = v15;
  LOWORD(v33) = 21;
  WORD1(v33) = v15;
  WORD2(v33) = 22;
  HIWORD(v33) = v15;
  LOWORD(v34) = 43;
  WORD1(v34) = v15;
  WORD2(v34) = 49;
  WORD3(v34) = v15;
  WORD4(v34) = 55;
  WORD5(v34) = v15;
  WORD6(v34) = 56;
  HIWORD(v34) = v15;
  LOWORD(v35) = 62;
  WORD1(v35) = v15;
  WORD2(v35) = 29;
  WORD3(v35) = v15;
  md::MapEngineMode::addOptionalMapDataTypes(a1, &v31, 12);
  LOWORD(v31) = 51;
  WORD1(v31) = v15;
  WORD2(v31) = 54;
  HIWORD(v31) = v15;
  LOWORD(v32) = 63;
  WORD1(v32) = v15;
  WORD2(v32) = 35;
  HIWORD(v32) = v16;
  LOWORD(v33) = 20;
  WORD1(v33) = v15;
  WORD2(v33) = 24;
  HIWORD(v33) = v15;
  LOWORD(v34) = 69;
  WORD1(v34) = v15;
  WORD2(v34) = 48;
  WORD3(v34) = v15;
  WORD4(v34) = 74;
  WORD5(v34) = v15;
  WORD6(v34) = 70;
  HIWORD(v34) = v15;
  LOWORD(v35) = 47;
  WORD1(v35) = v15;
  WORD2(v35) = 66;
  WORD3(v35) = v15;
  WORD4(v35) = 80;
  WORD5(v35) = v15;
  md::MapEngineMode::addAllowedMapDataTypes(a1, &v31, 13);
  operator new();
}

void sub_1B29427C8(_Unwind_Exception *a1)
{
  v5 = *(v1 + 82);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::MapEngineMode::~MapEngineMode(v1);
  _Unwind_Resume(a1);
}

void gdc::DataObject::~DataObject(id *this)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A608E0;
  v4 = 0;
  v2 = this + 1;
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=((this + 1), &v3);
  v3 = &unk_1F2A608E0;

  *v2 = &unk_1F2A608E0;
}

{
  gdc::DataObject::~DataObject(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::CustomRenderState>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CustomRenderState>();
    unk_1EB83D300 = 0xA0C97F52893883B7;
    qword_1EB83D308 = "md::ls::CustomRenderState]";
    qword_1EB83D310 = 25;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomRenderState>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayerType<(md::SceneLayer)4>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[421];
}

void std::vector<ggl::Debug::LineMesh *,geo::allocator_adapter<ggl::Debug::LineMesh *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::LineMesh *>(v2, v1);
  }
}

void *ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::CommonMesh::Pos4Mesh *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::CommonMesh::Pos4Mesh * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS9_10SceneLayerE4EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F5F0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void __destroy_helper_block_ea8_56c23_ZTSN3gdc11ResourceKeyE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 != *(a1 + 80))
  {
    free(v2);
  }
}

void md::GEOVectorTileResourceDecoder::decode(id *a1@<X0>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  if ((a3[14] & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *a3;
  v8 = *(*a3 + 16);
  md::LabelExternalPointFeature::incident(v8);
  objc_claimAutoreleasedReturnValue();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = *(v7 + 16);
    md::LabelExternalPointFeature::incident(v10);
    objc_claimAutoreleasedReturnValue();
LABEL_6:
    if (v10)
    {
      objc_msgSend_vectorTilePtr(v10);
      operator new();
    }

LABEL_8:
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  if ((a3[14] & 1) == 0)
  {
    v13 = std::__throw_bad_optional_access[abi:nn200100]();
    if (*(&v14 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v14 + 1));
    }

    _Unwind_Resume(v13);
  }

  v14 = *a3[3];
  v11 = a1[2];
  v12 = *(v7 + 16);
  md::LabelExternalPointFeature::incident(v12);
  objc_claimAutoreleasedReturnValue();
  v10 = [v11 decodeTile:v12 forKey:&v14];

  if ([v10 isMemberOfClass:{objc_opt_class(), v14}])
  {
    goto LABEL_6;
  }

  *a4 = 0;
  a4[1] = 0;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22IntendedSceneLayerTypeILNS6_10SceneLayerE4EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4F5F0;
  a2[1] = v2;
  return result;
}

void std::vector<ggl::CommonMesh::Pos4Mesh *,geo::allocator_adapter<ggl::CommonMesh::Pos4Mesh *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::CommonMesh::Pos4Mesh *>(v2, v1);
  }
}

uint64_t ecs2::Runtime::_entities<md::ita::SetupCustomRenderStateStencilRefValue,md::ls::CustomRenderState const&,md::ls::RenderItemID const&>(uint64_t a1, uint64_t **a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::CustomRenderState>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(a1);
  v6 = v5;
  if (*(v5 + 40) - *(v5 + 32) >= *(v4 + 40) - *(v4 + 32))
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v7 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v39, *(v7 + 32), v8, v4, v5);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v34, v8, v8, v4, v6);
  v33 = v41;
  v31 = v39;
  v32 = v40;
  v28 = v39;
  v29 = v40;
  v30 = v41;
  v9 = v34;
  v10 = v39;
  if (v39 == v34)
  {
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v13 = result;
    v14 = 0;
  }

  else
  {
    v11 = v29;
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    v13 = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = 0;
    v15 = *(&v28 + 1);
    do
    {
      v16 = *(*(*(v11 + 8) + ((v10[1] >> 3) & 0x1FF8)) + 4 * (v10[1] & 0x3FLL) + 2);
      v17 = *(*(v11 + 56) + ((v16 >> 3) & 0x1FF8)) + 24 * (v16 & 0x3F);
      *(v12 + 104 * *v13 + 24) = *v10;
      result = ecs2::ExecutionTask<md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a2);
      if (*(v17 + 17) == 1)
      {
        v19 = (*(*result + 48))(result);
        if ((*(v17 + 17) & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:nn200100]();
        }

        v20 = *(v17 + 16) + *(v19 + 2764);
        v21 = ecs2::ExecutionTaskContext::currentEntity(v19);
        v36 = &unk_1F2A0DFD8;
        v37 = v20 | (v21 << 32);
        v38 = &v36;
        *(&v40 + 1) = &v39;
        *&v39 = &unk_1F2A0DFD8;
        *(&v39 + 1) = v37;
        LODWORD(v41) = 0;
        ecs2::Runtime::queueCommand();
        if (v41 != -1)
        {
          (off_1F2A0DFA0[v41])(&v35, &v39);
        }

        LODWORD(v41) = -1;
        result = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v36);
      }

      ++v14;
      v22 = v10 + 2;
      do
      {
        v10 = v22;
        *&v28 = v22;
        if (v22 == v15)
        {
          break;
        }

        result = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v28, *v22, v22[1]);
        v22 = v10 + 2;
      }

      while (!result);
    }

    while (v10 != v9);
  }

  *(v12 + 104 * *v13 + 24) = -65536;
  v23 = v12 + 104 * *v13;
  v24 = *(v23 + 92);
  *(v23 + 92) = v24 + 1;
  *(v23 + 4 * v24 + 28) = v14;
  v25 = v12 + 104 * *v13;
  v27 = *(v25 + 92);
  v26 = (v25 + 92);
  if (v27 > 0xF)
  {
    *v26 = 0;
  }

  return result;
}

void ggl::Textured::ScreenTexturedQuadPipelineState::~ScreenTexturedQuadPipelineState(ggl::Textured::ScreenTexturedQuadPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupCustomRenderStateStencilRefValue>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupCustomRenderStateStencilRefValue>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::SetupCustomRenderStateStencilRefValue,md::ls::CustomRenderState const&,md::ls::RenderItemID const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ggl::Textured::Pos2DUVExtendedPipelineState::~Pos2DUVExtendedPipelineState(ggl::Textured::Pos2DUVExtendedPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MetalDeviceContext::doRenderWork(ggl::MetalDeviceContext *this, unsigned __int8 **a2)
{
  v2 = a2;
  v405 = *MEMORY[0x1E69E9840];
  v4 = *(this + 5);
  *(v4 + 50) = 1;
  v360 = a2[4];
  v5 = *(this + 6);
  v6 = *(v4 + 120);
  v7 = *(*(this + 5) + 40);
  v358 = (this + 80);
  v348 = v6;
  v8 = *(v5 + 96);
  v371 = v2;
  if (v8)
  {
    v9 = v8;
    goto LABEL_85;
  }

  v10 = *(v5 + 104);
  if (v10)
  {
    [v10 updateFence:*(v5 + 88)];
    [*(v5 + 104) endEncoding];
    v11 = *(v5 + 104);
    *(v5 + 104) = 0;
  }

  v367 = *(*v5 + 80);
  v356 = [MEMORY[0x1E6974128] renderPassDescriptor];
  if (*(v5 + 68) == 1)
  {
    [v356 setImageblockSampleLength:*(v5 + 64)];
  }

  v12 = (v5 + 16);
  v352 = v5;
  v373 = *(v5 + 8);
  v13 = v373;
  *&v388 = v360;
  v14 = v356;
  v363 = v5 + 16;
  if (*(v373 + 72))
  {
    v15 = 0;
    v16 = 200;
    do
    {
      v17 = *(v13 + v16 - 112);
      v18 = ggl::MetalResourceManager::prepareTexture(v367, v17, v7);
      v20 = ggl::MetalTextureResource::texture(v18, v19);
      v21 = [v14 colorAttachments];
      v22 = [v21 objectAtIndexedSubscript:v15];
      [v22 setTexture:v20];

      v23 = *(v373 + v16 - 104);
      v24 = [v14 colorAttachments];
      v25 = [v24 objectAtIndexedSubscript:v15];
      [v25 setLevel:v23];

      v26 = *(v373 + v16 - 96);
      v27 = [v14 colorAttachments];
      v28 = [v27 objectAtIndexedSubscript:v15];
      [v28 setSlice:v26];

      v29 = v12;
      if (v388)
      {
        if (*v388 == 255)
        {
          v29 = v12;
          v31 = 2;
          goto LABEL_21;
        }

        v29 = (v363 + 8 * v15);
      }

      if (*(v17 + 14))
      {
        v30 = 1;
      }

      else
      {
        v30 = *(v17 + 19) == 0;
      }

      if (*v29)
      {
        v30 = 0;
      }

      v31 = *v29 == 2 || v30;
LABEL_21:
      v32 = [v14 colorAttachments];
      v33 = [v32 objectAtIndexedSubscript:v15];
      [v33 setLoadAction:v31];

      v34 = *(v373 + v16 - 16);
      if (v34)
      {
        v17 = *(v373 + v16 - 16);
        if (!*(v34 + 56))
        {
          goto LABEL_25;
        }
      }

      else if (!*(v17 + 14))
      {
LABEL_25:
        v35 = *(v17 + 19) == 0;
        goto LABEL_26;
      }

      v35 = 1;
LABEL_26:
      v36 = v29[1];
      v37 = v34 == 0;
      if (v34)
      {
        v38 = 2;
      }

      else
      {
        v38 = 1;
      }

      if (v37)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v35)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      if (v36)
      {
        v40 = 0;
      }

      if (v36 == 2)
      {
        v40 = 1;
      }

      if (v36 == 3)
      {
        v41 = v38;
      }

      else
      {
        v41 = v40;
      }

      v42 = [v14 colorAttachments];
      v43 = [v42 objectAtIndexedSubscript:v15];
      [v43 setStoreAction:v41];

      v44 = [v14 colorAttachments];
      v45 = [v44 objectAtIndexedSubscript:v15];
      v46 = [v45 storeAction];

      if (v46 == 2)
      {
        v47 = ggl::MetalResourceManager::prepareTexture(v367, *(v373 + v16 - 16), v7);
        v49 = ggl::MetalTextureResource::texture(v47, v48);
        v50 = [v14 colorAttachments];
        v51 = [v50 objectAtIndexedSubscript:v15];
        [v51 setResolveTexture:v49];

        v52 = *(v373 + v16 - 8);
        v53 = [v14 colorAttachments];
        v54 = [v53 objectAtIndexedSubscript:v15];
        [v54 setResolveLevel:v52];

        v55 = *(v373 + v16);
        v56 = [v14 colorAttachments];
        v57 = [v56 objectAtIndexedSubscript:v15];
        [v57 setResolveSlice:v55];
      }

      if (v388)
      {
        v58 = *(v388 + 4);
        v59 = *(v388 + 8);
        v60 = *(v388 + 12);
        v61 = *(v388 + 16);
      }

      else
      {
        v58 = 1.0;
        v59 = 1.0;
        v60 = 1.0;
        v61 = 1.0;
      }

      v62 = [v14 colorAttachments];
      v63 = [v62 objectAtIndexedSubscript:v15];
      [v63 setClearColor:{v58, v59, v60, v61}];

      ++v15;
      v13 = v373;
      v12 += 2;
      v16 += 24;
    }

    while (v15 < *(v373 + 72));
  }

  v64 = *(v13 + 280);
  v2 = v371;
  if (v64)
  {
    *&v390 = *(v13 + 280);
    v65 = ggl::MetalResourceManager::prepareTexture(v367, v64, v7);
    v383 = ggl::MetalTextureResource::texture(v65, v66);
    v400[0].i64[0] = &v383;
    v400[0].i64[1] = &v373;
    v400[1].i64[0] = v363;
    v400[1].i64[1] = &v390;
    v400[2].i64[0] = &v388;
    v67 = *(v373 + 84);
    v68 = [v14 depthAttachment];
    v69 = (v67 < 0x1B) & (0x4380000u >> v67);
    setupAttachments(ggl::MetalResourceManager *,ggl::RenderTarget *,ggl::PassDescriptor const&,ggl::ClearItem *,MTLRenderPassDescriptor *,unsigned long)::$_0::operator()(v400, v68, v69);

    if (v69)
    {
      if (v388)
      {
        v70 = *(v388 + 24);
      }

      else
      {
        v70 = 1.0;
      }

      v71 = [v14 depthAttachment];
      [v71 setClearDepth:v70];
    }

    v72 = [v14 stencilAttachment];
    v73 = v67 - 25;
    setupAttachments(ggl::MetalResourceManager *,ggl::RenderTarget *,ggl::PassDescriptor const&,ggl::ClearItem *,MTLRenderPassDescriptor *,unsigned long)::$_0::operator()(v400, v72, v73 < 2);

    if (v73 < 2)
    {
      if (v388)
      {
        v74 = *(v388 + 32);
      }

      else
      {
        v74 = 0;
      }

      v75 = [v14 stencilAttachment];
      [v75 setClearStencil:v74];

      v76 = [v14 stencilAttachment];
      [v76 setStencilResolveFilter:0];
    }

    v392 = [v14 depthAttachment];
    [v14 stencilAttachment];
    v393 = v77 = 0;
    do
    {
      v78 = (&v392)[v77];
      if ([v78 storeAction] == 2)
      {
        v79 = ggl::MetalResourceManager::prepareTexture(v367, *(v373 + 304), v7);
        v81 = ggl::MetalTextureResource::texture(v79, v80);
        [v78 setResolveTexture:v81];

        [v78 setResolveLevel:*(v373 + 312)];
        [v78 setResolveSlice:*(v373 + 320)];
      }

      ++v77;
    }

    while (v77 != 2);
    for (i = 1; i != -1; --i)
    {
    }

    v13 = v373;
  }

  v83 = *(v13 + 336);
  if (v83)
  {
    v84 = v83[3];
    if (!v84)
    {
      ggl::MetalResourceManager::newRasterizationRateMap(v367, v83);
    }

    [v14 setRasterizationRateMap:*(v84 + 32)];
    v13 = v373;
  }

  v85 = *(v13 + 328);
  if (v85 == 1)
  {
    v86 = 0;
  }

  else
  {
    v86 = v85;
  }

  [v14 setRenderTargetArrayLength:v86];

  v87 = v360;
  if (v360)
  {
    if (*v360 == 255)
    {
      v87 = 0;
    }

    v360 = v87;
  }

  else
  {
    v360 = 0;
  }

  v88 = *(v352 + 8);
  if (*(v88 + 344) == 1)
  {
    v89 = *(v88 + 184);
    if (v89)
    {
      ggl::MetalResourceManager::updateTextureWithResource(v367, v89, 0);
    }

    else
    {
      ggl::MetalResourceManager::updateTextureWithResource(v367, *(v88 + 88), 0);
    }
  }

  [v14 setVisibilityResultBuffer:*v358];
  v90 = [v348 renderCommandEncoderWithDescriptor:v14];
  v91 = *(v352 + 96);
  *(v352 + 96) = v90;

  if (*(v352 + 76))
  {
    [*(v352 + 96) waitForFence:*(v352 + 88) beforeStages:1];
  }

  [*(v352 + 96) setFrontFacingWinding:1];
  [*(v352 + 96) setCullMode:2];
  LODWORD(v92) = 1.0;
  LODWORD(v93) = 1.0;
  LODWORD(v94) = 1.0;
  LODWORD(v95) = 1.0;
  [*(v352 + 96) setBlendColorRed:v92 green:v93 blue:v94 alpha:v95];
  v9 = *(v352 + 96);

LABEL_85:
  v96 = *(this + 1);
  v349 = v9;
  if (*v96 != v349)
  {
    ggl::MetalBindingManager::resetBindingCache(v96);
    objc_storeStrong(v96, v9);
  }

  v383 = 0;
  v384 = 0;
  v385 = 0;
  v97 = *(this + 5);
  v98 = *(*(this + 6) + 8);
  v99 = *(this + 1);
  v373 = *(this + 2);
  v375 = v98;
  v381 = v99;
  v378 = *(v97 + 40);
  v100 = v349;
  v102 = *(this + 4);
  v101 = *(this + 5);
  v103 = *(v101 + 32);
  v350 = v100;
  v374 = v100;
  v376 = v103;
  v379 = &v383;
  v104 = *(v101 + 24);
  v377 = v104;
  v380 = v102;
  v382 = *(this + 9);
  if (v360)
  {
    v399 = 0;
    v105 = *(*(this + 6) + 8);
    v392 = *(this + 2);
    v393 = v105;
    v394 = v103;
    v395 = v104;
    v106 = *(this + 21);
    v396 = (this + 152);
    v397 = v106;
    v400[0].i64[0] = &unk_1F2A5C9E8;
    v400[0].i64[1] = &v373;
    v400[1].i64[1] = v400;
    std::__function::__value_func<void ()(ggl::RenderItem *)>::swap[abi:nn200100](v400, v398);
    v107 = std::__function::__value_func<void ()(ggl::RenderItem *)>::~__value_func[abi:nn200100](v400);
    v386 = v360;
    if (*(v393 + 82) <= 1u)
    {
      v108 = 1;
    }

    else
    {
      v108 = *(v393 + 82);
    }

    if (!*v396)
    {
      operator new();
    }

    v109 = v397;
    v110 = *v360;
    v111 = *(v393 + 9);
    v390 = *(v393 + 7);
    v391 = v111;
    v112 = v397[9];
    v113 = v397[10];
    if (v112 != v113)
    {
      for (j = v397[9]; j != v113; j += 64)
      {
        if (*j == v110 && *(j + 24) == v391)
        {
          if (v391)
          {
            v115 = &v390;
            v116 = 8;
            v117 = v391;
            while (1)
            {
              v118 = *v115++;
              if (*&j[v116] != v118)
              {
                break;
              }

              v116 += 4;
              if (!--v117)
              {
                goto LABEL_101;
              }
            }
          }

          else
          {
LABEL_101:
            if (*(j + 10) == v108)
            {
              v347 = (j + 48);
              v127 = v397[8];
              v128 = *v397;
              if (v127 == (v397[1] - *v397) >> 4)
              {
                _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_5Clear14ClearConstantsEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v400);
              }

              (*(*v392 + 24))(&v390);
              v146 = (v128 + 16 * v127);
              v400[0].i64[0] = &unk_1F2A5D3D8;
              v400[0].i64[1] = v146;
              v400[1].i64[0] = &v386;
              v400[1].i64[1] = v400;
              v388 = 0uLL;
              (*(*v390 + 16))(v390, v400, &v388);
              if (*(&v388 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v388 + 1));
              }

              std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](v400);
              ggl::Loader::~Loader(&v390);
              v147 = *(v397[4] + 8 * v397[8]);
              v148 = v347[1];
              v400[0].i64[0] = *v347;
              v400[0].i64[1] = v148;
              if (v148)
              {
                atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
                ggl::PipelineSetup::setState(v147, v400[0].i64);
                std::__shared_weak_count::__release_shared[abi:nn200100](v148);
              }

              else
              {
                ggl::PipelineSetup::setState(v147, v400[0].i64);
              }

              v149 = v147[17];
              v149[1] = 0;
              v150 = v147[29];
              v151 = *v146;
              *v149 = *v146;
              if (*(&v151 + 1))
              {
                atomic_fetch_add_explicit((*(&v151 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v152 = *(v150 + 8);
              *v150 = v151;
              if (v152)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v152);
              }

              v153 = v397;
              v154 = *v396;
              v147[37] = *v396;
              for (k = v153[13]; ; k += 16)
              {
                if (k == v153[14])
                {
                  operator new();
                }

                v156 = *k == v386[20] && k[1] == v386[28];
                if (v156 && *(k + 1) == v108)
                {
                  break;
                }
              }

              v2 = v371;
              v158 = *(k + 1);
              v400[0].i64[0] = &off_1F2A5D8B8;
              v400[1].i64[0] = "clearItem";
              v400[1].i64[1] = v158;
              v400[2].i64[0] = v147;
              v400[3].i64[0] = 0;
              v400[3].i32[2] = 1065353216;
              v401 = v154;
              v402 = 0uLL;
              v403 = vdupq_n_s64(1uLL);
              *&v404 = 0;
              v400[2].i32[2] = v386[32];
              std::function<void ()(ggl::RenderItem *)>::operator()(v399, v400);
              ++v397[8];
              std::__function::__value_func<void ()(ggl::RenderItem *)>::~__value_func[abi:nn200100](v398);
              goto LABEL_156;
            }
          }
        }
      }
    }

    v119 = v110 & 0xF;
    if (v110 == 255)
    {
      v119 = 15;
    }

    if (!v110)
    {
      v119 = 0;
    }

    v400[0].i8[0] = 0;
    *(v400 + 4) = xmmword_1B33B0760;
    memset(v400[1].i64 + 4, 0, 24);
    v400[2].i8[12] = v119;
    v120 = (v113 - v112);
    v121 = ((v113 - v112) >> 6) + 1;
    if (v113 - v112 == -64)
    {
      v122 = &v112[64 * v121];
      while (v113 != v122)
      {
        v123 = *(v113 - 1);
        if (v123)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v123);
        }

        v113 -= 64;
      }
    }

    else
    {
      v124 = v397[11];
      if (v124 == v113)
      {
        if (v121 >> 58)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v129 = v124 - v112;
        if (v129 >> 5 > v121)
        {
          v121 = v129 >> 5;
        }

        if (v129 >= 0x7FFFFFFFFFFFFFC0)
        {
          v130 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v130 = v121;
        }

        v131 = ggl::zone_mallocator::instance(v107);
        geo::read_write_lock::read_lock((v131 + 32));
        v132 = malloc_type_zone_malloc(*v131, v130 << 6, 0x1020040745BC74EuLL);
        atomic_fetch_add((v131 + 24), 1u);
        geo::read_write_lock::unlock((v131 + 32));
        v134 = &v120[v132];
        v135 = v132 + 64 * v130;
        *(v134 + 2) = 0u;
        *(v134 + 3) = 0u;
        v122 = &v120[v132 + 64];
        *&v136 = v122;
        *(&v136 + 1) = v135;
        *v368 = v136;
        *v134 = 0u;
        *(v134 + 1) = 0u;
        v138 = v109[9];
        v137 = v109[10];
        v139 = &v134[v138 - v137];
        if (v137 != v138)
        {
          v140 = v109[9];
          v141 = v139;
          do
          {
            v142 = *v140;
            v143 = v140[1];
            *(v141 + 28) = *(v140 + 28);
            *v141 = v142;
            v141[1] = v143;
            v141[3] = v140[3];
            *(v140 + 6) = 0;
            *(v140 + 7) = 0;
            v140 += 4;
            v141 += 4;
          }

          while (v140 != v137);
          do
          {
            v133 = *(v138 + 56);
            if (v133)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v133);
            }

            v138 += 64;
          }

          while (v138 != v137);
        }

        v144 = v109[9];
        v109[9] = v139;
        *(v109 + 5) = *v368;
        if (v144)
        {
          v145 = ggl::zone_mallocator::instance(v133);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ClearCache::PipelineStateEntry>(v145, v144);
          v122 = v109[10];
        }

LABEL_116:
        *(v122 - 64) = v110;
        *(v122 - 56) = v390;
        *(v122 - 40) = v391;
        *(v109[10] - 24) = v108;
        v125 = *(v109[17] + 80);
        v126 = *(v125 + 40);
        v387[0] = *(v125 + 32);
        v387[1] = v126;
        if (v126)
        {
          atomic_fetch_add_explicit((v126 + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      *(v113 + 2) = 0u;
      *(v113 + 3) = 0u;
      *v113 = 0u;
      *(v113 + 1) = 0u;
      v122 = (v113 + 64);
    }

    v109[10] = v122;
    goto LABEL_116;
  }

LABEL_156:
  v159 = *(v2 + 9);
  v160 = *(v2 + 10);
  while (v159 != v160)
  {
    ggl::MetalRenderItemEncoder::encode(&v373, *v159++);
  }

  v161 = this;
  if (*(v2 + 38) || *(v2 + 44))
  {
    *(&v402 + 1) = 0;
    v162 = *(this + 2);
    v400[1] = 0uLL;
    v400[0].i64[0] = v162;
    v163 = v350;
    v164 = *(this + 5);
    v400[2].i64[0] = v163;
    *(&v400[2] + 8) = *(v164 + 24);
    v400[3].i32[2] = *(v2 + 16);
    v400[0].i64[1] = v358;
    v392 = &unk_1F2A5C9E8;
    v393 = &v373;
    v395 = &v392;
    std::__function::__value_func<void ()(ggl::RenderItem *)>::swap[abi:nn200100](&v392, &v401);
    std::__function::__value_func<void ()(ggl::RenderItem *)>::~__value_func[abi:nn200100](&v392);
    v165 = v400[0].i64[1];
    v166 = [*v400[0].i64[1] contents];
    v365 = v400[0].i64[0];
    v167 = *(v2 + 43);
    v169 = *(v2 + 40);
    v168 = *(v2 + 41);
    v170 = (v169 + 8 * (v167 >> 7));
    if (v168 == v169)
    {
      v171 = 0;
    }

    else
    {
      v171 = (*v170 + 32 * (*(v2 + 43) & 0x7FLL));
    }

    v361 = (v2 + 312);
LABEL_165:
    v172 = *(v2 + 44) + v167;
    v173 = v172 >> 7;
    v174 = v172 & 0x7F;
LABEL_166:
    v175 = v171 - 1024;
    while (1)
    {
      v176 = v168 == v169 ? 0 : *(v169 + 8 * v173) + 32 * v174;
      if (v171 == v176)
      {
        break;
      }

      if (v400[2].i64[1] - *(v171 + 1) >= 3uLL)
      {
        v178 = *(v171 + 2);
        if (v178)
        {
          v179 = *(v166 + 8 * *v171);
          *(v178 + 129) = 1;
          *(v178 + 132) = v179;
          *(v178 + 120) = 0;
        }

        *v171 = 0;
        v180 = (v169 + 8 * (v167 >> 7));
        if (v168 == v169)
        {
          v181 = 0;
        }

        else
        {
          v181 = *v180 + 32 * (v167 & 0x7F);
        }

        if (v181 == v171)
        {
          v182 = 0;
        }

        else
        {
          v182 = ((v171 - *v170) >> 5) + 16 * (v170 - v180) - ((v181 - *v180) >> 5);
        }

        v183 = std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)> const*,std::function<void ()(VKCameraDelegateMediator *)> const&,std::function<void ()(VKCameraDelegateMediator *)> const* const*,long,128l>::operator+[abi:nn200100](v180, v181, v182);
        v185 = v183;
        v186 = v184;
        v187 = *(v371 + 44);
        v188 = (v184 - *v183) >> 5;
        if (v182 <= (v187 - 1) >> 1)
        {
          if (v188 < 0)
          {
            v199 = 126 - v188;
            v192 = &v183[-(v199 >> 7)];
            v193 = *v192 + 32 * (~v199 & 0x7F);
          }

          else
          {
            v191 = v188 + 1;
            v192 = &v183[v191 >> 7];
            v193 = *v192 + 32 * (v191 & 0x7F);
          }

          if (v183 == v180)
          {
            std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<ggl::PendingQuery *,std::__deque_iterator<ggl::PendingQuery,ggl::PendingQuery *,ggl::PendingQuery&,ggl::PendingQuery **,long,128l>,0>(&v392, v181, v184, v192, v193);
            v2 = v371;
          }

          else
          {
            std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<ggl::PendingQuery *,std::__deque_iterator<ggl::PendingQuery,ggl::PendingQuery *,ggl::PendingQuery&,ggl::PendingQuery **,long,128l>,0>(&v392, *v183, v184, v192, v193);
            v200 = v393;
            v201 = v394;
            v202 = v185 - 1;
            if (v185 - 1 == v180)
            {
              v2 = v371;
            }

            else
            {
              v2 = v371;
              do
              {
                v203 = *v202--;
                std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<ggl::PendingQuery *,std::__deque_iterator<ggl::PendingQuery,ggl::PendingQuery *,ggl::PendingQuery&,ggl::PendingQuery **,long,128l>,0>(&v392, v203, v203 + 4096, v200, v201);
                v200 = v393;
                v201 = v394;
              }

              while (v202 != v180);
            }

            std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<ggl::PendingQuery *,std::__deque_iterator<ggl::PendingQuery,ggl::PendingQuery *,ggl::PendingQuery&,ggl::PendingQuery **,long,128l>,0>(&v392, v181, *v202 + 4096, v200, v201);
          }

          v210 = *(v181 + 24);
          if (v210)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v210);
          }

          v361[2] = vaddq_s64(v361[2], xmmword_1B33B14D0);
          std::deque<ggl::PendingQuery>::__maybe_remove_front_spare[abi:nn200100](v361, 1);
        }

        else
        {
          if (v188 < 0)
          {
            v194 = 126 - v188;
            v189 = ~v194;
            v190 = &v183[-(v194 >> 7)];
          }

          else
          {
            v189 = v188 + 1;
            v190 = &v183[(v188 + 1) >> 7];
          }

          v195 = *v190 + 32 * (v189 & 0x7F);
          v196 = v361[2].i64[0] + v187;
          v197 = (v169 + 8 * (v196 >> 7));
          if (v168 == v169)
          {
            v198 = 0;
          }

          else
          {
            v198 = *v197 + 32 * (v196 & 0x7F);
          }

          if (v190 == v197)
          {
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<ggl::PendingQuery *,std::__deque_iterator<ggl::PendingQuery,ggl::PendingQuery *,ggl::PendingQuery&,ggl::PendingQuery **,long,128l>,0>(&v392, v195, v198, v183, v186);
            v208 = v394;
            v2 = v371;
          }

          else
          {
            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<ggl::PendingQuery *,std::__deque_iterator<ggl::PendingQuery,ggl::PendingQuery *,ggl::PendingQuery&,ggl::PendingQuery **,long,128l>,0>(&v392, v195, *v190 + 4096, v183, v186);
            v204 = v393;
            v205 = v394;
            v206 = v190 + 1;
            if (v190 + 1 == v197)
            {
              v2 = v371;
            }

            else
            {
              v2 = v371;
              do
              {
                v207 = *v206++;
                std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<ggl::PendingQuery *,std::__deque_iterator<ggl::PendingQuery,ggl::PendingQuery *,ggl::PendingQuery&,ggl::PendingQuery **,long,128l>,0>(&v392, v207, v207 + 4096, v204, v205);
                v204 = v393;
                v205 = v394;
              }

              while (v206 != v197);
            }

            std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<ggl::PendingQuery *,std::__deque_iterator<ggl::PendingQuery,ggl::PendingQuery *,ggl::PendingQuery&,ggl::PendingQuery **,long,128l>,0>(&v392, *v206, v198, v204, v205);
            v208 = v394;
          }

          v209 = *(v208 + 24);
          if (v209)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v209);
          }

          --*(v2 + 44);
          std::deque<ggl::PendingQuery>::__maybe_remove_back_spare[abi:nn200100](v361, 1);
        }

        v167 = *(v2 + 43);
        v169 = *(v2 + 40);
        v168 = *(v2 + 41);
        v211 = (v169 + 8 * (v167 >> 7));
        if (v168 == v169)
        {
          v212 = 0;
        }

        else
        {
          v212 = *v211 + 32 * (*(v2 + 43) & 0x7FLL);
        }

        v170 = std::__deque_iterator<std::function<void ()(VKCameraDelegateMediator *)>,std::function<void ()(VKCameraDelegateMediator *)> const*,std::function<void ()(VKCameraDelegateMediator *)> const&,std::function<void ()(VKCameraDelegateMediator *)> const* const*,long,128l>::operator+[abi:nn200100](v211, v212, v182);
        goto LABEL_165;
      }

      v171 += 8;
      v175 += 8;
      if (*v170 == v175)
      {
        v177 = *(v170 + 1);
        v170 += 8;
        v171 = v177;
        goto LABEL_166;
      }
    }

    v213 = *(v365 + 10);
    v214 = v165[4];
    v392 = 0;
    v393 = 0;
    v394 = 0;
    v388 = 0uLL;
    *&v389 = 0;
    v390 = 0uLL;
    *&v391 = 0;
    if (*(v2 + 38))
    {
      v215 = v214 + 24 * v400[3].i64[0];
      do
      {
        if (v165[1] == v165[2])
        {
          break;
        }

        v216 = *(v2 + 37);
        v217 = *(*(v2 + 34) + ((v216 >> 5) & 0x7FFFFFFFFFFFFF8));
        v218 = v216;
        v219 = *(v217 + 16 * v216);
        *v369 = v219;
        v220 = *(v217 + 16 * v216 + 8);
        if (*(&v219 + 1))
        {
          atomic_fetch_add_explicit((*(&v219 + 1) + 8), 1uLL, memory_order_relaxed);
          v216 = *(v2 + 37);
          v218 = v216;
          v217 = *(*(v2 + 34) + ((v216 >> 5) & 0x7FFFFFFFFFFFFF8));
        }

        v221 = *(v217 + 16 * v218 + 8);
        if (v221)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v221);
          v216 = *(v2 + 37);
        }

        v222 = *(v2 + 38) - 1;
        *(v2 + 37) = v216 + 1;
        *(v2 + 38) = v222;
        std::deque<std::shared_ptr<ggl::QueryItem>>::__maybe_remove_front_spare[abi:nn200100](v2 + 264, 1);
        v223 = *(v369[0] + 128) - 1;
        *(v369[0] + 128) = v223;
        if (!(*(v369[0] + 136) | v223))
        {
          v224 = v165[2];
          v225 = *(v224 - 4);
          v165[2] = v224 - 4;
          v227 = *(v215 + 8);
          v226 = *(v215 + 16);
          if (v227 >= v226)
          {
            v229 = *v215;
            v230 = v227 - *v215;
            v231 = (v230 >> 2) + 1;
            if (v231 >> 62)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v232 = v226 - v229;
            if (v232 >> 1 > v231)
            {
              v231 = v232 >> 1;
            }

            if (v232 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v233 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v233 = v231;
            }

            if (v233)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v233);
            }

            v234 = (4 * (v230 >> 2));
            *v234 = v225;
            v228 = v234 + 1;
            memcpy(0, v229, v230);
            v235 = *v215;
            *v215 = 0;
            *(v215 + 8) = v228;
            *(v215 + 16) = 0;
            if (v235)
            {
              operator delete(v235);
            }

            v2 = v371;
          }

          else
          {
            *v227 = v225;
            v228 = v227 + 1;
          }

          *(v215 + 8) = v228;
          ggl::RenderItem::gatherBufferLoadItems(v369[0], &v390, v365, v400[2].i64[1], v400[3].i64[0]);
          Items = ggl::RenderItem::gatherTextureLoadItems(v369[0], &v388, v400[3].i32[2]);
          if (v220)
          {
            atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v237 = v393;
          if (v393 >= v394)
          {
            v239 = 0xAAAAAAAAAAAAAAABLL * (v393 - v392);
            v240 = v239 + 1;
            if (v239 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            if (0x5555555555555556 * ((v394 - v392) >> 3) > v240)
            {
              v240 = 0x5555555555555556 * ((v394 - v392) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v394 - v392) >> 3) >= 0x555555555555555)
            {
              v241 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v241 = v240;
            }

            if (v241)
            {
              v242 = ggl::zone_mallocator::instance(Items);
              geo::read_write_lock::read_lock((v242 + 32));
              v243 = malloc_type_zone_malloc(*v242, 24 * v241, 0x1020040F89CB87BuLL);
              atomic_fetch_add((v242 + 24), 1u);
              geo::read_write_lock::unlock((v242 + 32));
            }

            else
            {
              v243 = 0;
            }

            v244 = &v243[24 * v239];
            v245 = &v243[24 * v241];
            *v244 = v225;
            *(v244 + 8) = *v369;
            v238 = (v244 + 24);
            v246 = &v244[-(v393 - v392)];
            v247 = memcpy(v246, v392, v393 - v392);
            v248 = v392;
            v392 = v246;
            v393 = v238;
            v394 = v245;
            if (v248)
            {
              v249 = ggl::zone_mallocator::instance(v247);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<unsigned int,std::shared_ptr<ggl::QueryItem>>>(v249, v248);
            }

            v2 = v371;
          }

          else
          {
            *v393 = v225;
            *(v237 + 1) = *v369;
            v238 = v237 + 3;
          }

          v393 = v238;
        }

        if (v220)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v220);
        }
      }

      while (*(v2 + 38));
      v251 = *(&v390 + 1);
      for (m = v390; m != v251; m += 64)
      {
        ggl::MetalResourceManager::upload(v213, m, 0);
      }
    }

    v253 = *(&v388 + 1);
    for (n = v388; n != v253; n += 80)
    {
      ggl::MetalResourceManager::upload(v213, n, v400[1].i64);
    }

    v254 = v392;
    v255 = v393;
    if (v392 != v393)
    {
      do
      {
        v256 = *v254;
        v257 = v254[1];
        v258 = v254[2];
        if (v258)
        {
          atomic_fetch_add_explicit(&v258->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v259 = v256;
        [v400[2].i64[0] setVisibilityResultMode:1 offset:(8 * v256)];
        std::function<void ()(ggl::RenderItem *)>::operator()(*(&v402 + 1), v257);
        v2 = v371;
        v261 = *(v371 + 40);
        v260 = *(v371 + 41);
        if (v260 == v261)
        {
          v262 = 0;
        }

        else
        {
          v262 = 16 * (v260 - v261) - 1;
        }

        v263 = *(v371 + 43);
        v264 = *(v371 + 44) + v263;
        if (v262 == v264)
        {
          if (v263 < 0x80)
          {
            v265 = *(v371 + 42);
            v266 = *(v371 + 39);
            if (v260 - v261 < (v265 - v266))
            {
              if (v265 != v260)
              {
                operator new();
              }

              operator new();
            }

            if (v265 == v266)
            {
              v267 = 1;
            }

            else
            {
              v267 = (v265 - v266) >> 2;
            }

            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v267);
          }

          *(v371 + 43) = v263 - 128;
          v387[0] = *v261;
          *(v371 + 40) = v261 + 1;
          std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(v361, v387);
          v2 = v371;
          v261 = *(v371 + 40);
          v264 = *(v2 + 44) + *(v2 + 43);
        }

        v268 = v400[2].i64[1];
        v269 = &(*(v261 + ((v264 >> 4) & 0xFFFFFFFFFFFFFF8)))[4 * (v264 & 0x7F)];
        *v269 = v259;
        *(v269 + 8) = v268;
        *(v269 + 16) = v257;
        *(v269 + 24) = v258;
        if (v258)
        {
          atomic_fetch_add_explicit(&v258->__shared_owners_, 1uLL, memory_order_relaxed);
          *(*(v269 + 16) + 120) = v269;
          ++*(v2 + 44);
          std::__shared_weak_count::__release_shared[abi:nn200100](v258);
        }

        else
        {
          *(v257 + 120) = v269;
          ++*(v2 + 44);
        }

        v254 += 3;
      }

      while (v254 != v255);
      v254 = v392;
      v255 = v393;
    }

    while (v255 != v254)
    {
      v270 = *(v255 - 1);
      if (v270)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v270);
      }

      v255 -= 3;
    }

    v393 = v254;
    [v400[2].i64[0] setVisibilityResultMode:0 offset:0];
    v387[0] = &v390;
    std::vector<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v387);
    *&v390 = &v388;
    std::vector<ggl::Texture2DLoadItem,geo::allocator_adapter<ggl::Texture2DLoadItem,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v390);
    *&v388 = &v392;
    std::vector<std::pair<unsigned int,std::shared_ptr<ggl::QueryItem>>,geo::allocator_adapter<std::pair<unsigned int,std::shared_ptr<ggl::QueryItem>>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v388);
    std::__function::__value_func<void ()(ggl::RenderItem *)>::~__value_func[abi:nn200100](&v401);

    if (v400[1].i64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v400[1].i64[1]);
    }

    v161 = this;
  }

  v362 = *(v161 + 2);
  v271 = *(*(v161 + 5) + 40);
  v372 = v350;
  v272 = *(v2 + 17);
  v351 = *(v2 + 18);
  if (v272 != v351)
  {
    v370 = *(*(v161 + 5) + 32);
    v357 = *(v161 + 4);
    v359 = *(*(v161 + 5) + 24);
    v364 = *(v161 + 9);
    do
    {
      v355 = v272;
      v366 = *(v362 + 10);
      v273 = *(*v272 + 8);
      v274 = v273[21];
      v275 = *(v274 + 24);
      if (v275)
      {
        goto LABEL_309;
      }

      v276 = objc_alloc_init(MEMORY[0x1E69741C8]);
      v277 = *(v274 + 48);
      v278 = *(v277 + 3);
      if (!v278)
      {
        v278 = ggl::MetalResourceManager::newShaderFunction(v366, v277, *(v274 + 88), *(v274 + 88), *(v274 + 96));
      }

      v279 = v278[4];
      [v276 setTileFunction:v279];
      [v276 setThreadgroupSizeMatchesTileSize:1];
      if (*(v274 + 72))
      {
        v280 = 0;
        do
        {
          v281 = *(v274 + 56 + 4 * v280) - 1;
          if (v281 > 0x2A)
          {
            v282 = 0;
          }

          else
          {
            v282 = qword_1B341CA70[v281];
          }

          v283 = [v276 colorAttachments];
          v284 = [v283 objectAtIndexedSubscript:v280];
          [v284 setPixelFormat:v282];

          ++v280;
        }

        while (v280 != *(v274 + 72));
      }

      [v276 setRasterSampleCount:*(v274 + 80)];
      v285 = *(*(v366 + 32) + 104);
      v400[0].i64[0] = 0;
      v286 = [v285 newRenderPipelineStateWithTileDescriptor:v276 options:0 reflection:0 error:v400];
      v287 = v400[0].i64[0];

      if (v287)
      {
        v289 = [v287 localizedDescription];
        NSLog(@"PSO error: %@", v289);

        v275 = 0;
      }

      else
      {
        v290 = ggl::zone_mallocator::instance(v288);
        v275 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v290, 0x28uLL);
        *v275 = 0;
        *(v275 + 4) = 1281;
        *(v275 + 2) = 0;
        *(v275 + 3) = 0;
        *(v275 + 4) = 0;
        objc_storeStrong(v275 + 4, v286);
        ggl::RenderDataHolder::setRenderResource(v274, v366, v275);
      }

      if (v275)
      {
LABEL_309:
        v291 = atomic_load(v275 + 2);
        if (v291 < v271)
        {
          v292 = v291;
          do
          {
            atomic_compare_exchange_strong(v275 + 2, &v292, v271);
            if (v292 == v291)
            {
              break;
            }

            v291 = v292;
          }

          while (v292 < v271);
        }

        v293 = v372;
        v353 = *(v275 + 4);
        [v372 setRenderPipelineState:?];
        v294 = **(v273[21] + 40);
        v403 = 0u;
        v404 = 0u;
        v401 = 0u;
        v402 = 0u;
        memset(v400, 0, sizeof(v400));
        if (v294[7])
        {
          v295 = 0;
          v296 = 0;
          v297 = 0;
          while (1)
          {
            v298 = (v294[6] + 2 * v297);
            v299 = *v298;
            v300 = v298[1];
            if (v296)
            {
              if (v296 <= 0xF && v295 + v296 == v300)
              {
                goto LABEL_320;
              }

              [v293 setTileBuffers:v400 offsets:&v392 withRange:{v295, v296}];
              v296 = 0;
            }

            v295 = v300;
LABEL_320:
            v301 = *(v273[5] + 16 * v299);
            if (v301)
            {
              v302 = *(*(v301 + 24) + 24);
              v303 = atomic_load((v302 + 16));
              if (v303 < v271)
              {
                v304 = v303;
                do
                {
                  atomic_compare_exchange_strong((v302 + 16), &v304, v271);
                  if (v304 == v303)
                  {
                    break;
                  }

                  v303 = v304;
                }

                while (v304 < v271);
              }

              v305 = *(v302 + 32);
              v306 = v305;
              objc_storeStrong(v400 + v296, v305);
              v307 = v370;
              if (*(v301 + 112) <= 1u)
              {
                v307 = 0;
              }

              (&v392)[v296] = (*(v301 + 40) + v307 * *(v301 + 120));

              ++v296;
              v293 = v372;
            }

            if (++v297 >= v294[7])
            {
              if (v296)
              {
                [v293 setTileBuffers:v400 offsets:&v392 withRange:{v295, v296}];
              }

              break;
            }
          }
        }

        for (ii = 15; ii != -1; --ii)
        {
        }

        v309 = v273[1];
        v310 = v273[2];
        for (jj = v372; v309 != v310; v309 += 2)
        {
          if (*v309)
          {
            ggl::BufferData::vendLoadItem(v400, *v309, v362, v359, v370);
            v312 = *v309;
            if (*(*v309 + 28) >= 2u && !*(v312 + 13))
            {
              *(v312 + 13) = v357;
            }

            v313 = *(v312 + 3);
            if (v400[1].i64[0] != v400[1].i64[1])
            {
              ggl::MetalResourceManager::upload(v366, v400, 0);
            }

            v314 = (*(v313 + 24) + 16);
            v315 = atomic_load(v314);
            if (v315 < v271)
            {
              v316 = v315;
              do
              {
                atomic_compare_exchange_strong(v314, &v316, v271);
                if (v316 == v315)
                {
                  break;
                }

                v315 = v316;
              }

              while (v316 < v271);
            }

            std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v400[2].i64);
          }
        }

        v403 = 0u;
        v404 = 0u;
        v401 = 0u;
        v402 = 0u;
        memset(v400, 0, sizeof(v400));
        if (v294[5])
        {
          v317 = 0;
          v318 = 0;
          v319 = 0;
          v320 = 0;
          while (1)
          {
            v321 = (v294[4] + v317);
            v322 = *v321;
            v323 = v321[1];
            if (v319)
            {
              if (v319 <= 0xF && v318 + v319 == v323)
              {
                goto LABEL_353;
              }

              [jj setTileBuffers:v400 offsets:&v392 withRange:{v318, v319}];
              v319 = 0;
            }

            v318 = v323;
LABEL_353:
            v324 = *(v273[1] + 16 * v322);
            if (v324)
            {
              v325 = *(*(*(v324 + 24) + 24) + 32);
              v326 = v325;
              objc_storeStrong(v400 + v319, v325);
              v327 = v370;
              if (*(v324 + 112) <= 1u)
              {
                v327 = 0;
              }

              (&v392)[v319] = (*(v324 + 40) + v327 * *(v324 + 120));

              ++v319;
            }

            ++v320;
            v317 += 2;
            jj = v372;
            if (v320 >= v294[5])
            {
              if (v319)
              {
                [v372 setTileBuffers:v400 offsets:&v392 withRange:{v318, v319}];
              }

              break;
            }
          }
        }

        for (kk = 15; kk != -1; --kk)
        {
        }

        v329 = v372;
        if (v294[9])
        {
          v330 = 0;
          do
          {
            v331 = (v294[8] + 2 * v330);
            v332 = v331[1];
            v333 = *(v294[10] + 2 * v330 + 1);
            v334 = *(v273[9] + 8 * *v331);
            if (v334)
            {
              v335 = v334;
            }

            else
            {
              v335 = v364;
            }

            v336 = *(v335 + 3);
            if (!v336)
            {
              v336 = ggl::MetalResourceManager::prepareTexture(v366, v335, v271);
            }

            v337 = atomic_load(v336 + 2);
            if (v337 < v271)
            {
              v338 = v337;
              do
              {
                atomic_compare_exchange_strong(v336 + 2, &v338, v271);
                if (v338 == v337)
                {
                  break;
                }

                v337 = v338;
              }

              while (v338 < v271);
            }

            SamplerStateResource = ggl::MetalResourceManager::getSamplerStateResource(v366, v335);
            if (SamplerStateResource)
            {
              v341 = ggl::MetalTextureResource::texture(v336, v339);
              [v329 setTileTexture:v341 atIndex:v332];
              v342 = atomic_load(SamplerStateResource + 2);
              if (v342 < v271)
              {
                v343 = v342;
                do
                {
                  atomic_compare_exchange_strong(SamplerStateResource + 2, &v343, v271);
                  if (v343 == v342)
                  {
                    break;
                  }

                  v342 = v343;
                }

                while (v343 < v271);
              }

              v344 = *(SamplerStateResource + 4);
              [v329 setTileSamplerState:v344 atIndex:v333];

              v329 = v372;
            }

            ++v330;
          }

          while (v330 < v294[9]);
        }

        v345 = [v329 tileWidth];
        v346 = [v329 tileHeight];
        v400[0].i64[0] = v345;
        v400[0].i64[1] = v346;
        v400[1].i64[0] = 1;
        [v329 dispatchThreadsPerTile:v400];
      }

      v272 = v355 + 8;
    }

    while (v355 + 8 != v351);
  }
}

void sub_1B29463E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  geo::read_write_lock::unlock((v63 + 32));
  std::__function::__value_func<void ()(ggl::RenderItem *)>::~__value_func[abi:nn200100](&a63);

  _Unwind_Resume(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>();
    unk_1EB83CBB0 = 0x40FCAF57579CC039;
    qword_1EB83CBB8 = "md::ls::IntendedSceneLayerType<md::SceneLayer::SeeThrough>]";
    qword_1EB83CBC0 = 58;
  }
}

char *ecs2::Runtime::_entities<md::ita::SetupRenderStatesForSeeThrough,md::ls::IntendedSceneLayerType<(md::SceneLayer)3> const&,md::ls::MainPassItem const&,md::ls::IsTransparent const&,md::ls::NeedsRenderState const&>(uint64_t a1, uint64_t **a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayerType<(md::SceneLayer)3>>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MainPassItem>(a1);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::IsTransparent>(a1);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsRenderState>(a1);
  v44 = v4;
  *&v45 = v5;
  *(&v45 + 1) = v6;
  v46 = v7;
  v8 = 1;
  v9 = v4;
  v10 = &v44;
  do
  {
    if ((&v44)[v8][5] - (&v44)[v8][4] < (v9[5] - v9[4]))
    {
      v9 = (&v44)[v8];
      v10 = &(&v44)[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v12 = (*v10)[4];
  v11 = (*v10)[5];
  v34 = v12;
  v35 = v11;
  v36 = v4;
  v37 = v5;
  v38 = v6;
  v39 = v7;
  v33 = v11;
  while (v12 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v34, *v12, v12[1]))
  {
    v12 += 2;
    v34 = v12;
    v11 = v33;
  }

  v13 = v34;
  if (v34 == v33)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
  }

  else
  {
    v32 = a2;
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
    v17 = v35;
    do
    {
      v18 = result;
      v19 = v15;
      *(v15 + 104 * *result + 24) = *v13;
      v20 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v32);
      v21 = *(v20 + 1781);
      if (!v21)
      {
        v22 = v20;
        v41 = (*(v20 + 1774) + 2352);
        v44 = &v41;
        v20 = md::add2(v20 + 776, &v44, 1);
        v21 = v20;
        *(v22 + 1781) = v20;
      }

      v23 = ecs2::ExecutionTaskContext::currentEntity(v20);
      v41 = &off_1F2A52BD8;
      *&v42 = v21;
      *(&v42 + 1) = v23;
      v43 = &v41;
      v46 = &v44;
      v44 = &off_1F2A52BD8;
      v45 = v42;
      HIDWORD(v45) = 0;
      v47 = 0;
      ecs2::Runtime::queueCommand();
      if (v47 != -1)
      {
        (off_1F2A0DFA0[v47])(&v40, &v44);
      }

      v47 = -1;
      std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v41);
      ++v16;
      v24 = v13 + 2;
      while (1)
      {
        v13 = v24;
        v34 = v24;
        if (v24 == v17)
        {
          break;
        }

        v25 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v34, *v24, v24[1]);
        v24 = v13 + 2;
        if (v25)
        {
          v26 = v13;
          goto LABEL_20;
        }
      }

      v26 = v17;
LABEL_20:
      v15 = v19;
      result = v18;
    }

    while (v26 != v33);
  }

  *(v15 + 104 * *result + 24) = -65536;
  v27 = v15 + 104 * *result;
  v28 = *(v27 + 92);
  *(v27 + 92) = v28 + 1;
  *(v27 + 4 * v28 + 28) = v16;
  v29 = v15 + 104 * *result;
  v31 = *(v29 + 92);
  v30 = (v29 + 92);
  if (v31 > 0xF)
  {
    *v30 = 0;
  }

  return result;
}

void ggl::MetalBindingManager::resetBindingCache(ggl::MetalBindingManager *this)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  v2 = (this + 8);
  if (v4 == v3)
  {
    v11 = 0;
    std::vector<unsigned long>::resize(v2, 0x20uLL, &v11);
  }

  else
  {
    v3[14] = 0u;
    v3[15] = 0u;
    v3[12] = 0u;
    v3[13] = 0u;
    v3[10] = 0u;
    v3[11] = 0u;
    v3[8] = 0u;
    v3[9] = 0u;
    v3[6] = 0u;
    v3[7] = 0u;
    v3[4] = 0u;
    v3[5] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    *v3 = 0u;
    v3[1] = 0u;
  }

  v5 = *(this + 20);
  if (*(this + 21) == v5)
  {
    v11 = 0;
    std::vector<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *,std::allocator<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *>>::resize(this + 20, 0x20uLL, &v11);
  }

  else
  {
    v5[14] = 0u;
    v5[15] = 0u;
    v5[12] = 0u;
    v5[13] = 0u;
    v5[10] = 0u;
    v5[11] = 0u;
    v5[8] = 0u;
    v5[9] = 0u;
    v5[6] = 0u;
    v5[7] = 0u;
    v5[4] = 0u;
    v5[5] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
  }

  v6 = *(this + 23);
  if (*(this + 24) == v6)
  {
    v11 = 0;
    std::vector<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *,std::allocator<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *>>::resize(this + 23, 0x20uLL, &v11);
  }

  else
  {
    v6[14] = 0u;
    v6[15] = 0u;
    v6[12] = 0u;
    v6[13] = 0u;
    v6[10] = 0u;
    v6[11] = 0u;
    v6[8] = 0u;
    v6[9] = 0u;
    v6[6] = 0u;
    v6[7] = 0u;
    v6[4] = 0u;
    v6[5] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    *v6 = 0u;
    v6[1] = 0u;
  }

  v7 = *(this + 26);
  if (*(this + 27) == v7)
  {
    v11 = 0;
    std::vector<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *,std::allocator<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *>>::resize(this + 26, 0xEuLL, &v11);
  }

  else
  {
    v7[5] = 0u;
    v7[6] = 0u;
    v7[3] = 0u;
    v7[4] = 0u;
    v7[1] = 0u;
    v7[2] = 0u;
    *v7 = 0u;
  }

  v8 = *(this + 32);
  if (*(this + 33) == v8)
  {
    v11 = 0;
    std::vector<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *,std::allocator<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *>>::resize(this + 32, 0xEuLL, &v11);
  }

  else
  {
    v8[5] = 0u;
    v8[6] = 0u;
    v8[3] = 0u;
    v8[4] = 0u;
    v8[1] = 0u;
    v8[2] = 0u;
    *v8 = 0u;
  }

  v9 = *(this + 29);
  if (*(this + 30) == v9)
  {
    v11 = 0;
    std::vector<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *,std::allocator<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *>>::resize(this + 29, 0xEuLL, &v11);
  }

  else
  {
    v9[5] = 0u;
    v9[6] = 0u;
    v9[3] = 0u;
    v9[4] = 0u;
    v9[1] = 0u;
    v9[2] = 0u;
    *v9 = 0u;
  }

  v10 = *(this + 35);
  if (*(this + 36) == v10)
  {
    v11 = 0;
    std::vector<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *,std::allocator<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable> *>>::resize(this + 35, 0xEuLL, &v11);
  }

  else
  {
    v10[5] = 0u;
    v10[6] = 0u;
    v10[3] = 0u;
    v10[4] = 0u;
    v10[1] = 0u;
    v10[2] = 0u;
    *v10 = 0u;
  }
}

void ggl::MetalDeviceContext::processBuffer(ggl::MetalDeviceContext *this, ggl::CommandBuffer *a2)
{
  v328 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (v2 && *(this + 6))
  {
    spid = *(a2 + 16) | (*(v2 + 40) << 8);
    if (GEOGetGeoGLPerformanceDetailLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoGLPerformanceDetailLog_onceToken, &__block_literal_global_9_50389);
    }

    v5 = GEOGetGeoGLPerformanceDetailLog_log;
    v6 = v5;
    v293 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v7 = *(a2 + 1);
      v8 = *(this + 7);
      buf[0].i32[0] = 136315394;
      *(buf[0].i64 + 4) = v7;
      buf[0].i16[6] = 2048;
      *(&buf[0].i64[1] + 6) = v8;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v6, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ProcessCommandBuffer", "category=%s parent_signpost=%llu", buf, 0x16u);
    }

    v303 = a2;
    v308 = this;

    if (GEOGetGeoGLPerformanceDetailLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoGLPerformanceDetailLog_onceToken, &__block_literal_global_9_50389);
    }

    v9 = GEOGetGeoGLPerformanceDetailLog_log;
    v10 = v9;
    if (v293 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v11 = *(a2 + 1);
      buf[0].i32[0] = 136315138;
      *(buf[0].i64 + 4) = v11;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v10, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CommandBufferLock", "category=%s", buf, 0xCu);
    }

    if (GEOGetGeoGLPerformanceDetailLog_onceToken != -1)
    {
      dispatch_once(&GEOGetGeoGLPerformanceDetailLog_onceToken, &__block_literal_global_9_50389);
    }

    v12 = GEOGetGeoGLPerformanceDetailLog_log;
    v13 = v12;
    if (v293 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v14 = *(a2 + 1);
      buf[0].i32[0] = 136315138;
      *(buf[0].i64 + 4) = v14;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v13, OS_SIGNPOST_INTERVAL_END, spid, "CommandBufferLock", "category=%s", buf, 0xCu);
    }

    v15 = *(*(this + 2) + 80);
    v16 = *(a2 + 9);
    v17 = *(a2 + 10);
    if (v16 != v17)
    {
      v18 = MEMORY[0x1E69E9C10];
      do
      {
        v19 = *v16;
        if (*(*v16 + 16) == 3131955885)
        {
          v20 = v18;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v22 = *v16;
            v23 = *(a2 + 16);
            buf[0].i32[0] = 134218240;
            *(buf[0].i64 + 4) = v22;
            buf[0].i16[6] = 1024;
            *(&buf[0].i32[3] + 2) = v23;
            _os_log_error_impl(&dword_1B2754000, v18, OS_LOG_TYPE_ERROR, "Detected stale render item %p in command buffer %d.  Please file a radar!", buf, 0x12u);
          }

          v19 = *v16;
        }

        ggl::RenderItem::gatherBufferLoadItems(v19, (*(v308 + 5) + 56), *(v308 + 2), *(*(v308 + 5) + 24), *(*(v308 + 5) + 32));
        v21 = *v16++;
        ggl::RenderItem::gatherTextureLoadItems(v21, (*(v308 + 5) + 88), *(a2 + 16));
      }

      while (v16 != v17);
    }

    v24 = a2;
    v25 = *(a2 + 13);
    v312 = *(a2 + 14);
    for (i = v15; v25 != v312; v15 = i)
    {
      v26 = *v25;
      v27 = v308;
      if (**v25 == 3131955885)
      {
        v28 = MEMORY[0x1E69E9C10];
        v29 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v48 = *v25;
          v49 = *(v303 + 16);
          buf[0].i32[0] = 134218240;
          *(buf[0].i64 + 4) = v48;
          buf[0].i16[6] = 1024;
          *(&buf[0].i32[3] + 2) = v49;
          _os_log_error_impl(&dword_1B2754000, v28, OS_LOG_TYPE_ERROR, "Detected stale compute item %p in command buffer %d.  Please file a radar!", buf, 0x12u);
        }

        v26 = *v25;
        v27 = v308;
      }

      v30 = *(v27 + 5);
      v31 = v26[1];
      v32 = v31[5];
      v33 = v31[6];
      if (v32 == v33)
      {
        v41 = v30 + 11;
        v24 = v303;
      }

      else
      {
        v34 = *(v27 + 2);
        v35 = v30[3];
        v36 = v30[4];
        do
        {
          v37 = *v32;
          if (*(*v32 + 18) == 1 && *(v37 + 24) != v35 && *(v37 + 28))
          {
            *(v37 + 24) = v35;
            *(v37 + 56) = *(v37 + 40);
          }

          if (*(v37 + 8) != *(v37 + 7))
          {
            ggl::BufferData::vendLoadItem(buf, *v32, v34, v35, v36);
            v38 = v30[8];
            if (v38 >= v30[9])
            {
              i8 = std::vector<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>>::__emplace_back_slow_path<ggl::BufferLoadItem&>((v30 + 7), buf);
            }

            else
            {
              v39 = buf[1];
              *v38 = buf[0];
              v38[1] = v39;
              std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::__value_func[abi:nn200100](v38[2].i64, v327);
              i8 = v38[4].i8;
            }

            v30[8] = i8;
            std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v327);
          }

          v32 += 2;
        }

        while (v32 != v33);
        v31 = *(*v25 + 8);
        v24 = v303;
        if (!v31)
        {
          goto LABEL_59;
        }

        v41 = (*(v308 + 5) + 88);
      }

      v42 = v31[10];
      for (j = v31[9]; j != v42; ++j)
      {
        v44 = *j;
        if (*j)
        {
          v45 = *(v44 + 14);
          if (v45 == 3)
          {
            LOBYTE(v46) = 1;
            for (k = 96; k != 192; k += 16)
            {
              v46 = v46 & (*(v44 + k) != 0);
            }

            if (v46 && (*(v44 + 193) & 1) == 0)
            {
              ggl::TextureCube::vendImplicitLoadItems(*j, v41);
            }
          }

          else if (v45 == 1 && *(v44 + 14) && (*(v44 + 129) & 1) == 0)
          {
            ggl::Texture2D::vendImplicitLoadItem(buf, v44);
          }
        }
      }

LABEL_59:
      ++v25;
    }

    v50 = *(v24 + 17);
    for (m = *(v24 + 18); v50 != m; v15 = i)
    {
      v51 = *v50;
      if (**v50 == 3131955885)
      {
        v52 = MEMORY[0x1E69E9C10];
        v53 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v71 = *v50;
          v72 = *(v303 + 16);
          buf[0].i32[0] = 134218240;
          *(buf[0].i64 + 4) = v71;
          buf[0].i16[6] = 1024;
          *(&buf[0].i32[3] + 2) = v72;
          _os_log_error_impl(&dword_1B2754000, v52, OS_LOG_TYPE_ERROR, "Detected stale tile item %p in command buffer %d.  Please file a radar!", buf, 0x12u);
        }

        v51 = *v50;
      }

      v54 = *(v308 + 5);
      v55 = v51[1];
      v56 = v55[5];
      v57 = v55[6];
      if (v56 != v57)
      {
        v58 = *(v308 + 2);
        v59 = v54[3];
        v60 = v54[4];
        do
        {
          v61 = *v56;
          if (*v56)
          {
            if (*(v61 + 18) == 1 && *(v61 + 24) != v59 && *(v61 + 28))
            {
              *(v61 + 24) = v59;
              *(v61 + 56) = *(v61 + 40);
            }

            if (*(v61 + 8) != *(v61 + 7))
            {
              ggl::BufferData::vendLoadItem(buf, *v56, v58, v59, v60);
              v62 = v54[8];
              if (v62 >= v54[9])
              {
                v64 = std::vector<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>>::__emplace_back_slow_path<ggl::BufferLoadItem&>((v54 + 7), buf);
              }

              else
              {
                v63 = buf[1];
                *v62 = buf[0];
                v62[1] = v63;
                std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::__value_func[abi:nn200100](v62[2].i64, v327);
                v64 = v62[4].i8;
              }

              v54[8] = v64;
              std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v327);
            }
          }

          v56 += 2;
        }

        while (v56 != v57);
        v55 = *(*v50 + 8);
        if (!v55)
        {
          goto LABEL_94;
        }

        v54 = *(v308 + 5);
      }

      v65 = v55[10];
      for (n = v55[9]; n != v65; ++n)
      {
        v67 = *n;
        if (*n)
        {
          v68 = *(v67 + 14);
          if (v68 == 3)
          {
            LOBYTE(v69) = 1;
            for (ii = 96; ii != 192; ii += 16)
            {
              v69 = v69 & (*(v67 + ii) != 0);
            }

            if (v69 && (*(v67 + 193) & 1) == 0)
            {
              ggl::TextureCube::vendImplicitLoadItems(*n, v54 + 11);
            }
          }

          else if (v68 == 1 && *(v67 + 14) && (*(v67 + 129) & 1) == 0)
          {
            ggl::Texture2D::vendImplicitLoadItem(buf, v67);
          }
        }
      }

LABEL_94:
      ++v50;
    }

    v73 = mach_absolute_time();
    v74 = v308;
    v75 = v303;
    v76 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v308 + 5) + 96) - *(*(v308 + 5) + 88)) >> 4) - 0x3333333333333333 * ((*(v303 + 26) - *(v303 + 25)) >> 4);
    if (v76)
    {
      if (GEOGetGeoGLPerformanceDetailLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoGLPerformanceDetailLog_onceToken, &__block_literal_global_9_50389);
      }

      v77 = GEOGetGeoGLPerformanceDetailLog_log;
      v78 = v77;
      if (v293 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
      {
        v79 = *(v303 + 1);
        buf[0].i32[0] = 136315138;
        *(buf[0].i64 + 4) = v79;
        _os_signpost_emit_with_name_impl(&dword_1B2754000, v78, OS_SIGNPOST_INTERVAL_BEGIN, spid, "UploadTextures", "category=%s", buf, 0xCu);
      }

      v74 = v308;
      v75 = v303;
    }

    v80 = *(v74 + 9);
    if (!*(v80 + 24))
    {
      ggl::Texture2D::vendImplicitLoadItem(buf, v80);
    }

    v81 = *(v75 + 25);
    v82 = *(v75 + 26);
    while (v81 != v82)
    {
      ggl::MetalResourceManager::upload(v15, v81, (*(v308 + 5) + 8));
      v81 += 80;
    }

    v83 = *(v308 + 5);
    v84 = *(v83 + 88);
    v85 = *(v83 + 96);
    while (v84 != v85)
    {
      ggl::MetalResourceManager::upload(v15, v84, (*(v308 + 5) + 8));
      v84 += 80;
    }

    if (v76)
    {
      if (GEOGetGeoGLPerformanceDetailLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoGLPerformanceDetailLog_onceToken, &__block_literal_global_9_50389);
      }

      v86 = GEOGetGeoGLPerformanceDetailLog_log;
      v87 = v86;
      if (v293 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
      {
        v88 = *(v303 + 1);
        buf[0].i32[0] = 136315394;
        *(buf[0].i64 + 4) = v88;
        buf[0].i16[6] = 2048;
        *(&buf[0].i64[1] + 6) = v76;
        _os_signpost_emit_with_name_impl(&dword_1B2754000, v87, OS_SIGNPOST_INTERVAL_END, spid, "UploadTextures", "category=%s textureCount=%zu", buf, 0x16u);
      }
    }

    v89 = mach_absolute_time() - v73;
    if (ggl::Performance::Counters::instance(void)::onceToken[0] != -1)
    {
      dispatch_once(ggl::Performance::Counters::instance(void)::onceToken, &__block_literal_global_50855);
    }

    atomic_fetch_add((*(ggl::Performance::Counters::instance(void)::counters + 32) + 152), v89);
    v90 = mach_absolute_time();
    v91 = *(v303 + 29);
    v92 = *(v303 + 30);
    v93 = ((v92 - v91) >> 6) + ((*(*(v308 + 5) + 64) - *(*(v308 + 5) + 56)) >> 6);
    if (v93)
    {
      if (GEOGetGeoGLPerformanceDetailLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoGLPerformanceDetailLog_onceToken, &__block_literal_global_9_50389);
      }

      v94 = GEOGetGeoGLPerformanceDetailLog_log;
      v95 = v94;
      if (v293 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
      {
        v96 = *(v303 + 1);
        buf[0].i32[0] = 136315138;
        *(buf[0].i64 + 4) = v96;
        _os_signpost_emit_with_name_impl(&dword_1B2754000, v95, OS_SIGNPOST_INTERVAL_BEGIN, spid, "UploadBuffers", "category=%s", buf, 0xCu);
      }

      v91 = *(v303 + 29);
      v92 = *(v303 + 30);
    }

    while (v91 != v92)
    {
      ggl::MetalResourceManager::upload(v15, v91, 0);
      v91 += 64;
    }

    v97 = *(v308 + 5);
    v98 = *(v97 + 56);
    v99 = *(v97 + 64);
    while (v98 != v99)
    {
      ggl::MetalResourceManager::upload(v15, v98, 0);
      v98 += 64;
    }

    if (v93)
    {
      if (GEOGetGeoGLPerformanceDetailLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoGLPerformanceDetailLog_onceToken, &__block_literal_global_9_50389);
      }

      v100 = GEOGetGeoGLPerformanceDetailLog_log;
      v101 = v100;
      if (v293 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v100))
      {
        v102 = *(v303 + 1);
        buf[0].i32[0] = 136315394;
        *(buf[0].i64 + 4) = v102;
        buf[0].i16[6] = 2048;
        *(&buf[0].i64[1] + 6) = v93;
        _os_signpost_emit_with_name_impl(&dword_1B2754000, v101, OS_SIGNPOST_INTERVAL_END, spid, "UploadBuffers", "category=%s bufferCount=%zu", buf, 0x16u);
      }
    }

    v103 = mach_absolute_time() - v90;
    if (ggl::Performance::Counters::instance(void)::onceToken[0] != -1)
    {
      dispatch_once(ggl::Performance::Counters::instance(void)::onceToken, &__block_literal_global_50855);
    }

    v104 = v303;
    atomic_fetch_add((*(ggl::Performance::Counters::instance(void)::counters + 32) + 160), v103);
    v106 = *(v303 + 29);
    v105 = *(v303 + 30);
    if (v105 != v106)
    {
      do
      {
        v107 = v105 - 64;
        std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v105 - 32);
        v105 = v107;
      }

      while (v107 != v106);
    }

    *(v303 + 30) = v106;
    v108 = *(v308 + 5);
    v110 = *(v108 + 56);
    v109 = *(v108 + 64);
    if (v109 != v110)
    {
      do
      {
        v111 = v109 - 64;
        std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v109 - 32);
        v109 = v111;
      }

      while (v111 != v110);
    }

    *(v108 + 64) = v110;
    v113 = *(v303 + 25);
    v112 = *(v303 + 26);
    if (v112 != v113)
    {
      do
      {
        v114 = v112 - 80;
        std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::~__value_func[abi:nn200100](v112 - 32);
        v112 = v114;
      }

      while (v114 != v113);
    }

    *(v303 + 26) = v113;
    v115 = *(v308 + 5);
    v117 = *(v115 + 88);
    v116 = *(v115 + 96);
    if (v116 != v117)
    {
      do
      {
        v118 = v116 - 80;
        std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::~__value_func[abi:nn200100](v116 - 32);
        v116 = v118;
      }

      while (v118 != v117);
    }

    *(v115 + 96) = v117;
    if (!*(v303 + 4) && *(v303 + 9) == *(v303 + 10) && *(v303 + 17) == *(v303 + 18))
    {
      v120 = v308;
      if (*(v303 + 38) || *(v303 + 44))
      {
        v119 = 1;
      }

      else
      {
        v289 = *(v308 + 6);
        if (*(v289 + 84) == 1)
        {
          v119 = *(v289 + 72) ^ 1;
        }

        else
        {
          v119 = 0;
        }
      }
    }

    else
    {
      v119 = 1;
      v120 = v308;
    }

    v304 = *(v303 + 14);
    v306 = *(v303 + 13);
    v290 = *(v303 + 6);
    v291 = *(v303 + 5);
    v121 = *(v303 + 21);
    v122 = *(v303 + 22);
    v301 = v119;
    if ((v119 & 1) == 0 && v306 == v304 && v291 == v290 && v121 == v122)
    {
      if (GEOGetGeoGLPerformanceDetailLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoGLPerformanceDetailLog_onceToken, &__block_literal_global_9_50389);
      }

      v123 = GEOGetGeoGLPerformanceDetailLog_log;
      v124 = v123;
      if (v293 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v123))
      {
        goto LABEL_358;
      }

      v125 = *(v303 + 1);
      v126 = *(v120 + 7);
      buf[0].i32[0] = 136315394;
      *(buf[0].i64 + 4) = v125;
      buf[0].i16[6] = 2048;
      *(&buf[0].i64[1] + 6) = v126;
LABEL_357:
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v124, OS_SIGNPOST_INTERVAL_END, spid, "ProcessCommandBuffer", "category=%s parent_signpost=%llu", buf, 0x16u);
LABEL_358:

      return;
    }

    if (v121 != v122)
    {
      v127 = *(v120 + 2);
      v128 = *(v120 + 5);
      v129 = *(v128 + 40);
      v130 = ggl::MetalDeviceContextFrame::blitCommandEncoder(v128, 0, *(v128 + 48));
      v309 = ggl::MetalDeviceContextFrame::blitCommandEncoder(*(v120 + 5), 1u, *(*(v120 + 5) + 49));
      v317 = v130;
      v132 = *(v303 + 21);
      v131 = *(v303 + 22);
      if (v132 != v131)
      {
        v314 = *(v127 + 80);
        while (1)
        {
          v133 = v317;
          if (v132[1])
          {
            if (v132[1] != 1)
            {
              goto LABEL_245;
            }

            v133 = v309;
          }

          v134 = v133;
          if (v134)
          {
            v135 = v134;
            v136 = *v132;
            if (v136 == 6)
            {
              v137 = *(v132 + 2);
              goto LABEL_172;
            }

            if (v136 == 5)
            {
              v137 = *(v132 + 4);
LABEL_172:
              v138 = *(v137 + 24);
              if (v138)
              {
                v139 = *(v138 + 24);
              }

              else
              {
                v139 = 0;
              }

LABEL_183:
              v140 = *(v132 + 8);
              if (v140)
              {
                goto LABEL_184;
              }

              v141 = 0;
            }

            else
            {
              v140 = *(v132 + 8);
              if (v140)
              {
                v141 = *(v140 + 3);
              }

              else
              {
                v141 = 0;
              }

              v142 = *(v132 + 6);
              if (v142)
              {
                v139 = *(v142 + 24);
                if (!v141)
                {
                  goto LABEL_183;
                }
              }

              else
              {
                v139 = 0;
                if (!v141)
                {
                  goto LABEL_183;
                }
              }

              if (v140)
              {
LABEL_184:
                v141 = ggl::MetalResourceManager::prepareTexture(v314, v140, v129);
              }
            }

            v143 = *v132;
            if (v143 == 6)
            {
              if (!v139)
              {
                v145 = *(*(v132 + 2) + 24);
                if (*(v145 + 3))
                {
                  v139 = 0;
                }

                else
                {
                  v139 = ggl::MetalResourceManager::newBuffer(v314, v145);
                }
              }

              v149 = *(*(v132 + 1) + 24);
              v146 = *(v149 + 3);
              if (!v146)
              {
LABEL_204:
                v146 = ggl::MetalResourceManager::newBuffer(v314, v149);
              }
            }

            else
            {
              if (v143 != 5)
              {
                if (!v139)
                {
                  v147 = *(v132 + 6);
                  if (!v147)
                  {
                    v146 = 0;
                    v139 = 0;
                    goto LABEL_205;
                  }

                  v148 = ggl::MetalResourceManager::newBuffer(v314, v147);
                  v139 = v148;
                  if (v132[148] == 1)
                  {
                    [v135 fillBuffer:v148[4] range:0 value:{*(*(v132 + 6) + 40), 0}];
                  }
                }

                v146 = 0;
                goto LABEL_205;
              }

              if (!v139)
              {
                v144 = *(*(v132 + 4) + 24);
                if (*(v144 + 3))
                {
                  v139 = 0;
                }

                else
                {
                  v139 = ggl::MetalResourceManager::newBuffer(v314, v144);
                }
              }

              v149 = *(*(v132 + 3) + 24);
              v146 = *(v149 + 3);
              if (!v146)
              {
                goto LABEL_204;
              }
            }

LABEL_205:
            if (*v132 - 5 > 1)
            {
              v151 = *(v132 + 5);
              if (v151)
              {
                v151 = *(v151[3] + 32);
              }

              v152 = v151;
              if (v139)
              {
                v153 = v139[4];
              }

              else
              {
                v153 = 0;
              }

              v155 = v153;
            }

            else
            {
              if (v146)
              {
                v150 = v146[4];
              }

              else
              {
                v150 = 0;
              }

              v152 = v150;
              if (v139)
              {
                v154 = v139[4];
              }

              else
              {
                v154 = 0;
              }

              v155 = v154;
              if (v146)
              {
                v156 = atomic_load(v146 + 2);
                if (v156 < v129)
                {
                  v157 = v156;
                  do
                  {
                    atomic_compare_exchange_strong(v146 + 2, &v157, v129);
                    if (v157 == v156)
                    {
                      break;
                    }

                    v156 = v157;
                  }

                  while (v157 < v129);
                }
              }
            }

            v158 = *(v132 + 7);
            if (v158)
            {
              v159 = ggl::MetalResourceManager::prepareTexture(v314, v158, v129);
              v161 = ggl::MetalTextureResource::texture(v159, v160);
              if (v141)
              {
                goto LABEL_225;
              }
            }

            else
            {
              v161 = 0;
              if (v141)
              {
LABEL_225:
                v141 = ggl::MetalTextureResource::texture(v141, v158);
              }
            }

            v162 = *(v132 + 18);
            v163 = *(v132 + 19);
            v164 = *(v132 + 20);
            v165 = *(v132 + 22);
            v166 = *(v132 + 23);
            v167 = *(v132 + 24);
            v168 = *(v132 + 25);
            v169 = *(v132 + 26);
            v170 = *v132;
            if (v170 <= 2)
            {
              if (*v132)
              {
                if (v170 == 1)
                {
                  v178 = *(v132 + 27);
                  v179 = *(v132 + 29);
                  v180 = *(v132 + 31);
                  buf[0].i64[0] = *(v132 + 18);
                  buf[0].i64[1] = v163;
                  buf[1].i64[0] = v164;
                  v181 = *(v132 + 34);
                  v182 = *(v132 + 36);
                  v323 = v167;
                  v324 = v168;
                  v325 = v169;
                  [v135 copyFromBuffer:v152 sourceOffset:v178 sourceBytesPerRow:v179 sourceBytesPerImage:v180 sourceSize:buf toTexture:v141 destinationSlice:v181 destinationLevel:v182 destinationOrigin:&v323];
                }

                else if (v170 == 2)
                {
                  v171 = *(v132 + 35);
                  buf[0].i64[0] = *(v132 + 21);
                  buf[0].i64[1] = v165;
                  buf[1].i64[0] = v166;
                  v323 = v162;
                  v324 = v163;
                  v325 = v164;
                  [v135 copyFromTexture:v161 sourceSlice:*(v132 + 33) sourceLevel:v171 sourceOrigin:buf sourceSize:&v323 toBuffer:v155 destinationOffset:*(v132 + 28) destinationBytesPerRow:*(v132 + 30) destinationBytesPerImage:*(v132 + 32)];
                }

                goto LABEL_244;
              }
            }

            else
            {
              if (*v132 <= 4u)
              {
                if (v170 == 3)
                {
                  buf[0].i64[0] = *(v132 + 21);
                  buf[0].i64[1] = v165;
                  buf[1].i64[0] = v166;
                  v323 = v162;
                  v324 = v163;
                  v325 = v164;
                  v174 = *(v132 + 33);
                  v175 = *(v132 + 34);
                  v176 = *(v132 + 35);
                  v177 = *(v132 + 36);
                  v320 = v167;
                  v321 = v168;
                  v322 = v169;
                  [v135 copyFromTexture:v161 sourceSlice:v174 sourceLevel:v176 sourceOrigin:buf sourceSize:&v323 toTexture:v141 destinationSlice:v175 destinationLevel:v177 destinationOrigin:&v320];
                }

                else if (v170 == 4)
                {
                  [v135 copyFromTexture:v161 toTexture:v141];
                }

                goto LABEL_244;
              }

              if (v170 != 5)
              {
                if (v170 == 6)
                {
                  v172 = *(v132 + 27);
                  v173 = *(v132 + 28);
                  v162 = [v155 length];
                  goto LABEL_241;
                }

                goto LABEL_244;
              }
            }

            v172 = *(v132 + 27);
            v173 = *(v132 + 28);
LABEL_241:
            [v135 copyFromBuffer:v152 sourceOffset:v172 toBuffer:v155 destinationOffset:v173 size:v162];
LABEL_244:
          }

LABEL_245:
          v132 += 152;
          if (v132 == v131)
          {
            v183 = v303;
            v132 = *(v303 + 21);
            goto LABEL_249;
          }
        }
      }

      v183 = v303;
LABEL_249:
      *(v183 + 22) = v132;

      v120 = v308;
      v104 = v303;
    }

    if ((v301 & 1) != 0 && *(*(v120 + 6) + 8))
    {
      ggl::MetalDeviceContext::doRenderWork(v120, v104);
      v120 = v308;
    }

    if (v306 == v304)
    {
LABEL_344:
      if (v291 != v290)
      {
        *(*(v308 + 5) + 50) = 1;
        ggl::MetalDeviceContextPass::endActiveEncoding(*(v308 + 6));
        v269 = *(v303 + 5);
        v270 = *(v303 + 6);
        if (v269 != v270)
        {
          v271 = *(*(v308 + 2) + 80);
          do
          {
            v272 = *v269;
            memset(buf, 0, 24);
            buf[1].i8[8] = *(v272 + 40);
            v274 = *(v272 + 16);
            v273 = *(v272 + 24);
            v275 = v273 - v274;
            if (v273 != v274)
            {
              std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__vallocate[abi:nn200100](buf, v275 >> 3);
              v276 = buf[0].i64[1];
              memmove(buf[0].i64[1], v274, v275);
              v277 = v276 + v275;
              buf[0].i64[1] = v276 + v275;
              v278 = buf[0].i64[0];
              v279 = v277 - buf[0].i64[0];
              if (v277 != buf[0].i64[0])
              {
                v280 = 0;
                v281 = 0;
                v282 = v279 >> 3;
                do
                {
                  v283 = ggl::MetalResourceManager::prepareTexture(v271, *(v278 + 8 * v280), *(*(v308 + 5) + 40));
                  (*(*v272 + 24))(v272, v283, v281++);
                  v280 = v281;
                }

                while (v282 > v281);
              }
            }

            v284 = *(v308 + 2);
            v285 = *(*(v308 + 5) + 120);
            (*(*v272 + 16))(v272, v284, v285);

            std::vector<ggl::Texture *,geo::allocator_adapter<ggl::Texture *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
            ++v269;
          }

          while (v269 != v270);
        }
      }

      if (GEOGetGeoGLPerformanceDetailLog_onceToken != -1)
      {
        dispatch_once(&GEOGetGeoGLPerformanceDetailLog_onceToken, &__block_literal_global_9_50389);
      }

      v286 = GEOGetGeoGLPerformanceDetailLog_log;
      v124 = v286;
      if (v293 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v286))
      {
        goto LABEL_358;
      }

      v287 = *(v303 + 1);
      v288 = *(v308 + 7);
      buf[0].i32[0] = 136315394;
      *(buf[0].i64 + 4) = v287;
      buf[0].i16[6] = 2048;
      *(&buf[0].i64[1] + 6) = v288;
      goto LABEL_357;
    }

    v184 = *(v120 + 5);
    *(v184 + 50) = 1;
    v185 = *(v120 + 6);
    v310 = *(v184 + 120);
    v186 = *(v185 + 96);
    if (v186)
    {
      [v186 updateFence:*(v185 + 88) afterStages:2];
      [*(v185 + 96) endEncoding];
      v187 = *(v185 + 96);
      *(v185 + 96) = 0;
    }

    v188 = *(v185 + 104);
    if (v188)
    {
      goto LABEL_267;
    }

    v189 = *(v185 + 80);
    if (v189)
    {
      if (v189 != 1)
      {
        v188 = 0;
LABEL_265:
        if (*(v185 + 76))
        {
          [v188 waitForFence:*(v185 + 88)];
          v188 = *(v185 + 104);
        }

LABEL_267:
        v192 = v188;

        v193 = *(v308 + 2);
        v194 = *(*(v308 + 5) + 40);
        v195 = v192;
        v196 = *(v303 + 13);
        v294 = *(v303 + 14);
        v295 = v195;
        if (v196 == v294)
        {
          goto LABEL_343;
        }

        v298 = v193;
        v299 = 0;
        v197 = *(v308 + 4);
        v318 = *(*(v308 + 5) + 32);
        v307 = *(v308 + 9);
        v198 = *(*(v308 + 5) + 24);
        v296 = v198;
        v297 = v197;
        while (1)
        {
          v199 = *v196;
          v200 = *(v193 + 10);
          v311 = v295;
          v302 = v199;
          v315 = *(v199 + 8);
          v201 = *(v315 + 21);
          v202 = *(v201 + 24);
          v305 = v200;
          if (!v202)
          {
            v203 = *(v201 + 48);
            v204 = *(v203 + 3);
            if (!v204)
            {
              v204 = ggl::MetalResourceManager::newShaderFunction(v200, v203, *(v201 + 56), *(v201 + 56), *(v201 + 64));
            }

            v205 = v204[4];
            v206 = *(*(v200 + 32) + 104);
            buf[0].i64[0] = 0;
            v207 = [v206 newComputePipelineStateWithFunction:v205 error:buf];
            v208 = buf[0].i64[0];

            if (v208)
            {
              v210 = [v208 localizedDescription];
              NSLog(@"error creating compute CPS: %@", v210);

              v202 = 0;
            }

            else
            {
              v211 = ggl::zone_mallocator::instance(v209);
              v202 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v211, 0x28uLL);
              *v202 = 0;
              *(v202 + 4) = 1537;
              *(v202 + 2) = 0;
              *(v202 + 3) = 0;
              *(v202 + 4) = 0;
              objc_storeStrong(v202 + 4, v207);
              ggl::RenderDataHolder::setRenderResource(v201, v200, v202);
              ggl::ResourceManager::_addResourceStat(v200, "ComputePipelineState", 0xCB8C155300000014, 0);
            }

            v213 = ggl::zone_mallocator::instance(v212);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v213, v204);

            v197 = v297;
            v193 = v298;
            v198 = v296;
          }

          v214 = *(v202 + 4);
          if (v299 != v214)
          {
            [v311 setComputePipelineState:v214];
            v299 = v214;
          }

          v215 = *(v315 + 1);
          v216 = *(v315 + 2);
          while (v215 != v216)
          {
            ggl::BufferData::vendLoadItem(buf, *v215, v193, v198, v318);
            v217 = *v215;
            if (*(*v215 + 28) >= 2u && !*(v217 + 13))
            {
              *(v217 + 13) = v197;
            }

            ggl::MetalResourceManager::upload(v200, buf, 0);
            v218 = (*(*(v217 + 3) + 24) + 16);
            v219 = atomic_load(v218);
            if (v219 < v194)
            {
              v220 = v219;
              do
              {
                atomic_compare_exchange_strong(v218, &v220, v194);
                if (v220 == v219)
                {
                  break;
                }

                v219 = v220;
              }

              while (v220 < v194);
            }

            std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v327);
            v215 += 2;
          }

          v221 = *(v315 + 5);
          v222 = *(v315 + 6);
          while (v221 != v222)
          {
            ggl::BufferData::vendLoadItem(buf, *v221, v193, v198, v318);
            v223 = *v221;
            if (*(*v221 + 28) >= 2u && !*(v223 + 13))
            {
              *(v223 + 13) = v197;
            }

            ggl::MetalResourceManager::upload(v200, buf, 0);
            v224 = (*(*(v223 + 3) + 24) + 16);
            v225 = atomic_load(v224);
            if (v225 < v194)
            {
              v226 = v225;
              do
              {
                atomic_compare_exchange_strong(v224, &v226, v194);
                if (v226 == v225)
                {
                  break;
                }

                v225 = v226;
              }

              while (v226 < v194);
            }

            std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v327);
            v221 += 2;
          }

          v300 = v196;
          v227 = **(v201 + 40);
          memset(v327, 0, sizeof(v327));
          memset(buf, 0, sizeof(buf));
          if (!v227[5])
          {
            v239 = v227 + 7;
            if (!v227[7])
            {
              goto LABEL_322;
            }

            v229 = 0;
            v230 = 0;
LABEL_312:
            v240 = 0;
            v241 = 0;
            while (2)
            {
              v242 = (v227[6] + v240);
              v243 = *v242;
              v244 = v242[1];
              if (v230)
              {
                if (v230 > 0xF || v229 + v230 != v244)
                {
                  [v311 setBuffers:buf offsets:&v323 withRange:{v229, v230}];
                  v230 = 0;
                  goto LABEL_317;
                }
              }

              else
              {
LABEL_317:
                v229 = v244;
              }

              v245 = *(*(v315 + 5) + 16 * v243);
              v246 = *(*(*(v245 + 24) + 24) + 32);
              v247 = v246;
              objc_storeStrong(buf + v230, v246);
              v248 = v318;
              if (*(v245 + 112) <= 1u)
              {
                v248 = 0;
              }

              *(&v323 + v230) = *(v245 + 40) + v248 * *(v245 + 120);

              ++v230;
              ++v241;
              v240 += 2;
              if (v241 >= *v239)
              {
                goto LABEL_321;
              }

              continue;
            }
          }

          v228 = 0;
          v229 = 0;
          v230 = 0;
          v231 = 0;
          do
          {
            v232 = (v227[4] + v228);
            v233 = *v232;
            v234 = v232[1];
            if (!v230)
            {
              goto LABEL_304;
            }

            if (v230 > 0xF || v229 + v230 != v234)
            {
              [v311 setBuffers:buf offsets:&v323 withRange:{v229, v230}];
              v230 = 0;
LABEL_304:
              v229 = v234;
            }

            v235 = *(*(v315 + 1) + 16 * v233);
            v236 = *(*(*(v235 + 24) + 24) + 32);
            v237 = v236;
            objc_storeStrong(buf + v230, v236);
            v238 = v318;
            if (*(v235 + 112) <= 1u)
            {
              v238 = 0;
            }

            *(&v323 + v230) = *(v235 + 40) + v238 * *(v235 + 120);

            ++v230;
            ++v231;
            v228 += 2;
          }

          while (v231 < v227[5]);
          v239 = v227 + 7;
          if (v227[7])
          {
            goto LABEL_312;
          }

LABEL_321:
          [v311 setBuffers:buf offsets:&v323 withRange:{v229, v230}];
          v200 = v305;
LABEL_322:
          if (v227[9])
          {
            v249 = 0;
            do
            {
              v250 = (v227[8] + 2 * v249);
              v251 = v250[1];
              v252 = *(v227[10] + 2 * v249 + 1);
              v253 = *(*(v315 + 9) + 8 * *v250);
              if (v253)
              {
                v254 = v253;
              }

              else
              {
                v254 = v307;
              }

              v255 = *(v254 + 3);
              if (!v255)
              {
                v255 = ggl::MetalResourceManager::prepareTexture(v200, v254, v194);
              }

              v256 = atomic_load(v255 + 2);
              if (v256 < v194)
              {
                v257 = v256;
                do
                {
                  atomic_compare_exchange_strong(v255 + 2, &v257, v194);
                  if (v257 == v256)
                  {
                    break;
                  }

                  v256 = v257;
                }

                while (v257 < v194);
              }

              SamplerStateResource = ggl::MetalResourceManager::getSamplerStateResource(v200, v254);
              if (SamplerStateResource)
              {
                v260 = ggl::MetalTextureResource::texture(v255, v258);
                [v311 setTexture:v260 atIndex:v251];
                v261 = atomic_load(SamplerStateResource + 2);
                if (v261 < v194)
                {
                  v262 = v261;
                  do
                  {
                    atomic_compare_exchange_strong(SamplerStateResource + 2, &v262, v194);
                    if (v262 == v261)
                    {
                      break;
                    }

                    v261 = v262;
                  }

                  while (v262 < v194);
                }

                v263 = *(SamplerStateResource + 4);
                [v311 setSamplerState:v263 atIndex:v252];

                v200 = v305;
              }

              ++v249;
            }

            while (v249 < v227[9]);
          }

          v264 = *(v302 + 16);
          v265 = *(v302 + 24);
          v266 = *(v302 + 28);
          v267 = *(v302 + 36);
          v320 = v264;
          v321 = HIDWORD(v264);
          v322 = v265;
          v319[0] = v266;
          v319[1] = HIDWORD(v266);
          v319[2] = v267;
          [v311 dispatchThreadgroups:&v320 threadsPerThreadgroup:v319];
          for (jj = 15; jj != -1; --jj)
          {
          }

          v196 = v300 + 1;
          v197 = v297;
          v193 = v298;
          v198 = v296;
          if (v300 + 1 == v294)
          {
LABEL_343:

            goto LABEL_344;
          }
        }
      }

      v189 = 1;
    }

    v190 = [v310 computeCommandEncoderWithDispatchType:v189];
    v191 = *(v185 + 104);
    *(v185 + 104) = v190;

    v188 = *(v185 + 104);
    goto LABEL_265;
  }
}