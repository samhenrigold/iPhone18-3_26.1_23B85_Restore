void *ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A35338;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35318;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::GradientConstantDataHandle1,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::AssignGradientParametersConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGradientParametersConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t **a4, uint64_t a5, unint64_t *a6)
{
  v8 = *a4;
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  PipelineDataSet = md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a6);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a6);
  v12 = md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::GradientParameters>(v9, *a3);
  if (v8)
  {
    v13 = md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::GradientParameters>(v9, *v8);
  }

  else
  {
    v13 = 0;
  }

  md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(PipelineDataSet, Pipeline, v12, 0);

  md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(PipelineDataSet, Pipeline, v13, 1);
}

void md::typeToIntOrVectorMap(md *this)
{
  v1[2] = *MEMORY[0x1E69E9840];
  {
    {
      v1[0] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>();
      v1[1] = 0xFFFFFFFFFLL;
      std::unordered_map<unsigned long,std::pair<int,int>>::unordered_map(md::typeToIntOrVectorMap(void)::typeToIntOrVectorMap, v1, 1);
    }
  }
}

uint64_t std::__function::__func<md::ita::AssignGradientParametersConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGradientParametersConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::GradientConstantDataHandle1 const&,md::ls::GradientConstantDataHandle2 const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16008;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignAmbientTextureIndexFiltered::operator()(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v46[0] = &unk_1F2A16050;
  v46[1] = a1;
  v47 = v46;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v48[0] = v4;
  v48[1] = v5;
  v7 = 1;
  v8 = v4;
  v9 = v48;
  v48[2] = v6;
  do
  {
    if (*(v48[v7] + 40) - *(v48[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v48[v7];
      v9 = &v48[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v10 = *(*v9 + 32);
  v11 = *(*v9 + 40);
  v41 = v10;
  v42 = v11;
  v43 = v4;
  v44 = v5;
  v45 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v10, v10[1]))
  {
    v10 += 2;
    v41 = v10;
  }

  v12 = v41;
  if (v41 == v11)
  {
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
  }

  else
  {
    v40 = a2;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
    v19 = v42;
    do
    {
      v20 = *(v13 + 32);
      v21 = v12[1];
      v22 = v21 & 0x3F;
      v23 = (v21 >> 3) & 0x1FF8;
      v24 = *(*(v13 + 8) + v23) + 4 * v22;
      v25 = *(*(*(v14 + 8) + v23) + 4 * v22 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v23) + 4 * v22 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(v24 + 2);
      *(v16 + 104 * *v17 + 24) = *v12;
      if (!v47)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v47 + 48))(v47, v20 + 4 * v29, v26 + 12 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F));
      ++v18;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v41 = v30;
        if (v30 == v19)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_17;
        }
      }

      v32 = v19;
LABEL_17:
      ;
    }

    while (v32 != v11);
    v33 = *(v40 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v33 + 4096);
  }

  *(v16 + 104 * *v17 + 24) = -65536;
  v34 = v16 + 104 * *v17;
  v35 = *(v34 + 92);
  *(v34 + 92) = v35 + 1;
  *(v34 + 4 * v35 + 28) = v18;
  v36 = v16 + 104 * *v17;
  v38 = *(v36 + 92);
  v37 = (v36 + 92);
  if (v38 >= 0x10)
  {
    *v37 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v46);
}

void sub_1B2F1E6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::ita::AssignAmbientTextureIndexFiltered::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignAmbientTextureIndexFiltered::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(a1 + 8);
  v7 = ecs2::ExecutionTask<md::RenderLayerProvider *>::service<md::RenderLayerProvider>(v6);
  v8 = ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v6);
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a4);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a4);
  v10 = (*(*v7 + 88))(v7);

  return md::setTextureForPipeline<DaVinci::AmbientTexture>(a3, Pipeline, v10);
}

uint64_t std::__function::__func<md::ita::AssignAmbientTextureIndexFiltered::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignAmbientTextureIndexFiltered::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16050;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::ita::AssignAmbientTextureIndexAll::operator()(ecs2::Query<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignAmbientTextureIndexAll::operator()(ecs2::Query<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  v6 = ecs2::ExecutionTask<md::RenderLayerProvider *>::service<md::RenderLayerProvider>(v5);
  v7 = ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v5);
  md::VKMRenderResourcesStore::getPipelineDataSet(v7, *a3);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v7, *a3);
  v9 = (*(*v6 + 88))(v6);

  return md::setTextureForPipeline<DaVinci::AmbientTexture>(a2, Pipeline, v9);
}

uint64_t std::__function::__func<md::ita::AssignAmbientTextureIndexAll::operator()(ecs2::Query<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignAmbientTextureIndexAll::operator()(ecs2::Query<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16098;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::ita::AssignShadowTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignShadowTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A160E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::AssignOcclusionTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignOcclusionTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A16128;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::ita::AssignTexTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A16170;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::TexTexture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 16 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F1EF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::Texture **std::__function::__func<md::ita::AssignTexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, TextureHandle *a3, uint64_t a4, unint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v19 = v12[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }

LABEL_4:
    v8[2] = v10;
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a5);
  result = mre::GGLResourceStore::getTextureStorageTracked(v10, *a3);
  if (result)
  {
    v16 = *result;
  }

  else
  {
    v16 = 0;
  }

  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), v16);
  }

  if (*(a4 + 1) == 1)
  {
    v17 = *(a4 + 8);
    v18 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v18, v17, v16);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignTexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::TexTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16170;
  a2[1] = v2;
  return result;
}

uint64_t *ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(uint64_t **a1)
{
  v1 = a1[2];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x41D4E9297E100630)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[2] = v1;
  }

  return v1;
}

__n128 std::__function::__func<md::ita::AssignRouteMaskTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignRouteMaskTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A161B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::ita::AssignEmissiveTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A16200;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 16 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F1F6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::Texture **std::__function::__func<md::ita::AssignEmissiveTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignEmissiveTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, TextureHandle *a3, uint64_t a4, unint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v19 = v12[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }

LABEL_4:
    v8[2] = v10;
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a5);
  result = mre::GGLResourceStore::getTextureStorageTracked(v10, *a3);
  if (result)
  {
    v16 = *result;
  }

  else
  {
    v16 = 0;
  }

  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), v16);
  }

  if (*(a4 + 1) == 1)
  {
    v17 = *(a4 + 8);
    v18 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v18, v17, v16);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignEmissiveTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignEmissiveTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::EmissiveTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16200;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignOverlayTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A16248;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 16 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F1FCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::Texture **std::__function::__func<md::ita::AssignOverlayTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignOverlayTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, TextureHandle *a3, uint64_t a4, unint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v19 = v12[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }

LABEL_4:
    v8[2] = v10;
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a5);
  result = mre::GGLResourceStore::getTextureStorage(v10, *a3, 0);
  if (result)
  {
    v16 = *result;
  }

  else
  {
    v16 = 0;
  }

  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), v16);
  }

  if (*(a4 + 1) == 1)
  {
    v17 = *(a4 + 8);
    v18 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v18, v17, v16);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignOverlayTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignOverlayTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::OverlayTexture> const&,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16248;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignStyleIndexTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A16290;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  HasMaterialRasterRender = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRasterRenderItem>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = HasMaterialRasterRender;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = HasMaterialRasterRender;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F202E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignStyleIndexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleIndexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, ggl::Texture ***a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = Pipeline;
  v11 = *a3;
  v13 = **a3;
  v12 = v11[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), v13);
  }

  if (*(a4 + 1) == 1)
  {
    ggl::PipelineSetup::setTextureDataWithoutCheck(*(v10 + 168), *(a4 + 8), v13);
  }

  if (v12)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }
}

uint64_t std::__function::__func<md::ita::AssignStyleIndexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleIndexTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16290;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignStyleTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A162D8;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  HasMaterialRasterRender = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRasterRenderItem>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = HasMaterialRasterRender;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = HasMaterialRasterRender;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F20880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::Texture *std::__function::__func<md::ita::AssignStyleTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, md::MaterialRaster **a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  result = md::MaterialRaster::styleTexture(*a3, *(*a3 + 122));
  v11 = result;
  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), result);
  }

  if (*(a4 + 1) == 1)
  {
    v12 = *(a4 + 8);
    v13 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v13, v12, v11);
  }

  return result;
}

void md::StyleTexture<md::LowZoomStyle>::textureData(uint64_t *a1, uint64_t a2)
{
  {
    {
      md::StyleTexture<md::LowZoomStyle>::textureData(void)::bytesPerPixel = 4;
    }
  }

  v4 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = v4;
  v6 = 1;
  v5 = 1;
  std::allocate_shared[abi:nn200100]<ggl::TextureData2D,std::allocator<ggl::TextureData2D>,unsigned int,unsigned int,int,ggl::PixelFormat const&,BOOL,0>(a1, &v8, &v7, &v6, &md::StyleTexture<md::LowZoomStyle>::textureData(void)::kPixelFormat, &v5);
}

void sub_1B2F20B94(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

double ggl::Texture2D::Texture2D(uint64_t a1, void *a2, void *a3)
{
  ggl::Texture::Texture(a1, "", 1, 1, 0, *(*a2 + 12), 1, 1);
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *v5 = &unk_1F2A5D9F0;
  *(v5 + 40) = &unk_1F2A5DA10;
  v7 = *a2;
  v6 = a2[1];
  *(v5 + 104) = *(*a2 + 8);
  *(v5 + 112) = v7;
  *(v5 + 120) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(v5 + 128) = 0;
  *(v5 + 130) = 1;
  v8 = a3[1];
  *(v5 + 136) = *a3;
  *(v5 + 144) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(*a2 + 16);
  *(v5 + 80) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::AssignStyleTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::HasMaterialRasterRenderItem const&,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A162D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::AssignAridityTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignAridityTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5)
{
  md::VKMRenderResourcesStore::getPipelineDataSet(**(a1 + 8), *a5);
  result = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a5);
  v10 = result;
  if (*(*(a1 + 16) + 2) == 1)
  {
    result = md::StyleAttributeRasterSet::textureForAttribute(*a3, 0x9Au);
    v11 = *(a1 + 24);
    if (!result)
    {
      result = *v11;
    }

    *v11 = result;
  }

  v12 = **(a1 + 24);
  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(v10 + 168), *(a4 + 4), v12);
  }

  if (*(a4 + 1) == 1)
  {
    v13 = *(a4 + 8);
    v14 = *(v10 + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v14, v13, v12);
  }

  return result;
}

__n128 std::__function::__func<md::ita::AssignAridityTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignAridityTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A16320;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::AssignTemperatureTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTemperatureTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5)
{
  md::VKMRenderResourcesStore::getPipelineDataSet(**(a1 + 8), *a5);
  result = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a5);
  v10 = result;
  if (*(*(a1 + 16) + 3) == 1)
  {
    result = md::StyleAttributeRasterSet::textureForAttribute(*a3, 0x99u);
    v11 = *(a1 + 24);
    if (!result)
    {
      result = *v11;
    }

    *v11 = result;
  }

  v12 = **(a1 + 24);
  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(v10 + 168), *(a4 + 4), v12);
  }

  if (*(a4 + 1) == 1)
  {
    v13 = *(a4 + 8);
    v14 = *(v10 + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v14, v13, v12);
  }

  return result;
}

__n128 std::__function::__func<md::ita::AssignTemperatureTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTemperatureTextureIndex::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A16368;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::ita::AssignGradient1TextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A163B0;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 16 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F213EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::erase(void *a1, unsigned __int16 *a2)
{
  v2 = *(*(a1[1] + ((a2[1] >> 3) & 0x1FF8)) + 4 * (a2[1] & 0x3FLL) + 2);
  v3 = ((a1[5] - a1[4]) >> 2) - 1;
  v4 = v3 & 0x3F;
  v5 = a1[7];
  v6 = *(v5 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v7 = v2 & 0x3F;
  v8 = *(v5 + ((v2 >> 3) & 0x1FF8));
  v9 = *(v8 + 16 * v7);
  *(v8 + 16 * v7) = *(v6 + 16 * v4);
  *(v6 + 16 * v4) = v9;
  return ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, *a2, a2[1]);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35548;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A35568;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35548;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>,64ul>::~storage(a1);
}

ggl::Texture **std::__function::__func<md::ita::AssignGradient1TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGradient1TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, TextureHandle *a3, uint64_t a4, unint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v19 = v12[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }

LABEL_4:
    v8[2] = v10;
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a5);
  result = mre::GGLResourceStore::getTextureStorage(v10, *a3, 0);
  if (result)
  {
    v16 = *result;
  }

  else
  {
    v16 = 0;
  }

  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), v16);
  }

  if (*(a4 + 1) == 1)
  {
    v17 = *(a4 + 8);
    v18 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v18, v17, v16);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignGradient1TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGradient1TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A163B0;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignGradient2TextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A163F8;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 16 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F21CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35660;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A35680;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35660;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>,64ul>::~storage(a1);
}

ggl::Texture **std::__function::__func<md::ita::AssignGradient2TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGradient2TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, TextureHandle *a3, uint64_t a4, unint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v19 = v12[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }

LABEL_4:
    v8[2] = v10;
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a5);
  result = mre::GGLResourceStore::getTextureStorage(v10, *a3, 0);
  if (result)
  {
    v16 = *result;
  }

  else
  {
    v16 = 0;
  }

  if (*a4 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a4 + 4), v16);
  }

  if (*(a4 + 1) == 1)
  {
    v17 = *(a4 + 8);
    v18 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v18, v17, v16);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignGradient2TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignGradient2TextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> const&,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A163F8;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignDiffuseTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A16440;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 12 * (v27 & 0x3F), v30 + 16 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F2250C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

ggl::Texture **std::__function::__func<md::ita::AssignDiffuseTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignDiffuseTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, TextureHandle *a4, unint64_t *a5)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v19 = v12[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }
    }

LABEL_4:
    v8[2] = v10;
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a5);
  result = mre::GGLResourceStore::getTextureStorageTracked(v10, *a4);
  if (result)
  {
    v16 = *result;
  }

  else
  {
    v16 = 0;
  }

  if (*a3 == 1)
  {
    result = ggl::PipelineSetup::setTextureDataWithoutCheck(*(Pipeline + 168), *(a3 + 4), v16);
  }

  if (*(a3 + 1) == 1)
  {
    v17 = *(a3 + 8);
    v18 = *(Pipeline + 168);

    return ggl::PipelineSetup::setTextureDataWithoutCheck(v18, v17, v16);
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignDiffuseTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignDiffuseTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> const&,md::ls::TextureHandleForType<DaVinci::DiffuseTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16440;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignInstanceTransformDeviceData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A16488;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F22B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignInstanceTransformDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignInstanceTransformDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  DeviceData = md::VKMRenderResourcesStore::getDeviceData(v8, *a3);
  if (*a4)
  {
    v11 = 4;
  }

  else
  {
    if (*(a4 + 1) != 1)
    {
      goto LABEL_8;
    }

    v11 = 8;
  }

  v12 = *(a4 + v11);
  if (v12 != -1)
  {
    ggl::PipelineSetup::setResetFlag(Pipeline, v12, 1, 0);
    if ((*a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*a4)
  {
LABEL_7:
    ggl::PipelineSetup::setDeviceDataWithoutCheck(Pipeline[13], Pipeline[25], *(a4 + 4), DeviceData);
  }

LABEL_8:
  if (*(a4 + 1) == 1)
  {
    v13 = *(a4 + 8);
    v14 = Pipeline[13];
    v15 = Pipeline[25];

    ggl::PipelineSetup::setDeviceDataWithoutCheck(v14, v15, v13, DeviceData);
  }
}

uint64_t std::__function::__func<md::ita::AssignInstanceTransformDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignInstanceTransformDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::InstanceTransformHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16488;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignElevationsDeviceData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A164D0;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F230D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignElevationsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignElevationsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  DeviceData = md::VKMRenderResourcesStore::getDeviceData(v8, *a3);
  if (*a4)
  {
    v11 = 4;
  }

  else
  {
    if (*(a4 + 1) != 1)
    {
      goto LABEL_8;
    }

    v11 = 8;
  }

  v12 = *(a4 + v11);
  if (v12 != -1)
  {
    ggl::PipelineSetup::setResetFlag(Pipeline, v12, 1, 0);
    if ((*a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*a4)
  {
LABEL_7:
    ggl::PipelineSetup::setDeviceDataWithoutCheck(Pipeline[13], Pipeline[25], *(a4 + 4), DeviceData);
  }

LABEL_8:
  if (*(a4 + 1) == 1)
  {
    v13 = *(a4 + 8);
    v14 = Pipeline[13];
    v15 = Pipeline[25];

    ggl::PipelineSetup::setDeviceDataWithoutCheck(v14, v15, v13, DeviceData);
  }
}

uint64_t std::__function::__func<md::ita::AssignElevationsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignElevationsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::ElevationHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A164D0;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignNormalsDeviceData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A16518;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F23690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignNormalsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignNormalsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  DeviceData = md::VKMRenderResourcesStore::getDeviceData(v8, *a3);
  if (*a4)
  {
    v11 = 4;
  }

  else
  {
    if (*(a4 + 1) != 1)
    {
      goto LABEL_8;
    }

    v11 = 8;
  }

  v12 = *(a4 + v11);
  if (v12 != -1)
  {
    ggl::PipelineSetup::setResetFlag(Pipeline, v12, 1, 0);
    if ((*a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*a4)
  {
LABEL_7:
    ggl::PipelineSetup::setDeviceDataWithoutCheck(Pipeline[13], Pipeline[25], *(a4 + 4), DeviceData);
  }

LABEL_8:
  if (*(a4 + 1) == 1)
  {
    v13 = *(a4 + 8);
    v14 = Pipeline[13];
    v15 = Pipeline[25];

    ggl::PipelineSetup::setDeviceDataWithoutCheck(v14, v15, v13, DeviceData);
  }
}

uint64_t std::__function::__func<md::ita::AssignNormalsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignNormalsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::NormalsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16518;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignUVsDeviceData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A16560;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F23C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignUVsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignUVsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  DeviceData = md::VKMRenderResourcesStore::getDeviceData(v8, *a3);
  if (*a4)
  {
    v11 = 4;
  }

  else
  {
    if (*(a4 + 1) != 1)
    {
      goto LABEL_8;
    }

    v11 = 8;
  }

  v12 = *(a4 + v11);
  if (v12 != -1)
  {
    ggl::PipelineSetup::setResetFlag(Pipeline, v12, 1, 0);
    if ((*a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*a4)
  {
LABEL_7:
    ggl::PipelineSetup::setDeviceDataWithoutCheck(Pipeline[13], Pipeline[25], *(a4 + 4), DeviceData);
  }

LABEL_8:
  if (*(a4 + 1) == 1)
  {
    v13 = *(a4 + 8);
    v14 = Pipeline[13];
    v15 = Pipeline[25];

    ggl::PipelineSetup::setDeviceDataWithoutCheck(v14, v15, v13, DeviceData);
  }
}

uint64_t std::__function::__func<md::ita::AssignUVsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignUVsDeviceData::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::UVsHandle const&,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A16560;
  a2[1] = v2;
  return result;
}

float md::PolylinePixelHiker::computeBisector(_BYTE *a1, float32x2_t *a2, int a3, float32x2_t *a4, float32x2_t *a5, int a6, md::LabelPoint *this)
{
  if (a1[65] == 1)
  {
    md::LabelPoint::geocentricPoint(this);
    for (i = 0; i != 3; ++i)
    {
      *&v66[i] = *&md::GeocentricNormal(geo::Geocentric<double> const&)::oneOverRadiiSquared[i] * *(this + i * 8);
    }

    v15 = gm::Matrix<double,3,1>::normalized<int,void>(v66);
    v16 = 0;
    *v66 = v15;
    v66[1] = v17;
    v66[2] = v18;
    do
    {
      v19 = *&v66[v16];
      *(&v63 + v16++) = v19;
    }

    while (v16 != 3);
    if (a3)
    {
      v20 = *a4 ^ *a2 | (a4[1].i32[0] ^ a2[1].i32[0]);
      v21 = v20 != 0;
      if ((a6 & 1) == 0)
      {
        if (!v20)
        {
          return 0.0;
        }

        goto LABEL_40;
      }

LABEL_16:
      v23 = *a4 ^ *a5 | (a4[1].i32[0] ^ a5[1].i32[0]);
      if (!v21 && !v23)
      {
        return 0.0;
      }

      if (v23)
      {
        if (v21)
        {
          for (j = 0; j != 3; ++j)
          {
            *(v66 + j * 4) = a4->f32[j] - a2->f32[j];
          }

          v25 = gm::Matrix<float,3,1>::normalized<int,void>(v66);
          v26 = 0;
          *v61 = v25;
          v61[1] = v27;
          v61[2] = v28;
          do
          {
            *(v66 + v26 * 4) = a5->f32[v26] - a4->f32[v26];
            ++v26;
          }

          while (v26 != 3);
          v29 = gm::Matrix<float,3,1>::normalized<int,void>(v66);
          v30 = 0;
          *v60 = v29;
          v60[1] = v31;
          v60[2] = v32;
          do
          {
            *(v66 + v30 * 4) = *&v60[v30] + *&v61[v30];
            ++v30;
          }

          while (v30 != 3);
          v33 = gm::Matrix<float,3,1>::normalized<int,void>(v66);
          v35 = v34;
          v36 = v63;
          result = -((v34 * v65) - (v37 * v64));
          v39 = -((v63 * v37) - (v33 * v65));
          v40 = v33 * v64;
LABEL_46:
          *v62 = result;
          *&v62[1] = v39;
          *&v62[2] = -(v40 - (v36 * v35));
          if (a1[11] == 1 && (a1[12] & 1) == 0)
          {
            for (k = 0; k != 3; ++k)
            {
              *(v66 + k * 4) = -*&v62[k];
            }

            return *v66;
          }

          return result;
        }

        for (m = 0; m != 3; ++m)
        {
          *(v66 + m * 4) = a5->f32[m] - a4->f32[m];
        }

LABEL_45:
        v55 = gm::Matrix<float,3,1>::normalized<int,void>(v66);
        v35 = v56;
        v36 = v63;
        result = -((v65 * v56) - (v64 * v57));
        v39 = -((v63 * v57) - (v65 * v55));
        v40 = v64 * v55;
        goto LABEL_46;
      }

LABEL_40:
      for (n = 0; n != 3; ++n)
      {
        *(v66 + n * 4) = a4->f32[n] - a2->f32[n];
      }

      goto LABEL_45;
    }

    if (a6)
    {
      v21 = 0;
      goto LABEL_16;
    }

    return 0.0;
  }

  if (a3)
  {
    v22 = *a4 != *a2;
    if ((a6 & 1) == 0)
    {
      if (*a4 == *a2)
      {
        return 0.0;
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (!a6)
    {
      return 0.0;
    }

    v22 = 0;
  }

  v41 = *a4;
  v42 = *a5;
  if (!v22 && v41 == v42)
  {
    return 0.0;
  }

  if (v41 == v42)
  {
LABEL_36:
    v52 = vsub_f32(*a2, *a4);
    result = vmuls_lane_f32(1.0 / sqrtf(vaddv_f32(vmul_f32(v52, v52))), v52, 1);
    goto LABEL_37;
  }

  if (v22)
  {
    v43 = a4->f32[1];
    v44 = a4->f32[0] - a2->f32[0];
    v45 = v43 - a2->f32[1];
    v46 = 1.0 / sqrtf((v44 * v44) + (v45 * v45));
    v47 = v46 * v44;
    v48 = v46 * v45;
    v49 = a5->f32[0] - a4->f32[0];
    v50 = a5->f32[1] - v43;
    v51 = 1.0 / sqrtf((v49 * v49) + (v50 * v50));
    result = -((v48 + (v51 * v50)) * (1.0 / sqrtf(((v47 + (v51 * v49)) * (v47 + (v51 * v49))) + ((v48 + (v51 * v50)) * (v48 + (v51 * v50))))));
  }

  else
  {
    v59 = vsub_f32(*a5, *a4);
    result = -(v59.f32[1] * (1.0 / sqrtf(vaddv_f32(vmul_f32(v59, v59)))));
  }

LABEL_37:
  if (a1[11] == 1 && (a1[12] & 1) == 0)
  {
    return -result;
  }

  return result;
}

void md::PolylinePixelHiker::getCursorPosition(std::__shared_weak_count **this)
{
  ((*this)[3].__shared_weak_owners_)(this);
  v3 = this[69];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B2F24420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  (*(*v12 + 8))(v12, a2, a3, a4, a5, a6, a7, a8);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<md::RoadPosition  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::RoadPosition  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinciTraffic::BaseMesh::~BaseMesh(ggl::DaVinciTraffic::BaseMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinciTraffic::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinciTraffic::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DaVinciTraffic::BasePipelineState::~BasePipelineState(ggl::DaVinciTraffic::BasePipelineState *this)
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

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

uint64_t VKPolynomialCoefficientsForHermitePolynomialWithConstraints(uint64_t result, __n128 a2, double a3, __n128 a4, double a5, __n128 a6, double a7, __n128 a8, double a9)
{
  v9 = 0;
  v24 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v17 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a4;
  v21 = a5;
  v22 = a8;
  v23 = a9;
  do
  {
    v10 = 0;
    v11 = (&VKHermiteMatrix + 32 * v9);
    v13 = *v11;
    v12 = v11[1];
    do
    {
      *&v14.f64[0] = v16.n128_u64[v10];
      *&v15.f64[0] = v20.n128_u64[v10];
      *&v14.f64[1] = v18.n128_u64[v10];
      *&v15.f64[1] = v22.n128_u64[v10];
      *(result + v10 * 8) = vaddvq_f64(vmlaq_f64(vmulq_f64(v15, v12), v13, v14));
      ++v10;
    }

    while (v10 != 3);
    ++v9;
    result += 24;
  }

  while (v9 != 4);
  return result;
}

void md::FlyoverTileData::~FlyoverTileData(md::FlyoverTileData *this)
{
  md::FlyoverTileData::~FlyoverTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A16768;
  *(this + 80) = &unk_1F2A167B0;
  md::RegistryManager::removeRegistry(*(this + 98), this);
  v3 = (this + 800);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 99);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = (this + 752);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v3);
  v3 = (this + 728);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);

  md::MapTileData::~MapTileData(this);
}

void sub_1B2F248FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 800);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a10);
  v12 = *(v10 + 792);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  a10 = (v10 + 752);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = (v10 + 728);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a10);
  md::MapTileData::~MapTileData(v10);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_1,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = **(a1 + 16);
  if (*(*(a1 + 16) + 8) != v2)
  {
    v3 = a1;
    v4 = **(a1 + 16);
    v5 = *(a1 + 24);
    if (v2[24] == 1)
    {
      geo::QuadTile::computeHash(v2);
      v4[24] = 0;
    }

    v6 = v5[1];
    if (v6)
    {
      v7 = *(v4 + 2);
      v8 = vcnt_s8(v6);
      v8.i16[0] = vaddlv_u8(v8);
      v9 = v8.u32[0];
      if (v8.u32[0] > 1uLL)
      {
        v10 = *(v4 + 2);
        if (v7 >= *&v6)
        {
          v10 = v7 % *&v6;
        }
      }

      else
      {
        v10 = (*&v6 - 1) & v7;
      }

      v11 = *(*v5 + 8 * v10);
      if (!v11 || (v12 = *v11) == 0)
      {
        v3 = a1;
        goto LABEL_34;
      }

      v13 = *(v4 + 2);
      while (1)
      {
        v14 = *(v12 + 1);
        if (v14 == v7)
        {
          if (v12[40] == 1)
          {
            geo::QuadTile::computeHash(v12 + 16);
            v12[40] = 0;
            v15 = *(v12 + 4);
            if (v4[24])
            {
              v16 = (v4[1] + ((*v4 - 0x61C8864680B583EBLL) << 6) + ((*v4 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*v4 - 0x61C8864680B583EBLL);
              v17 = (*(v4 + 1) + (v16 << 6) + (v16 >> 2) - 0x61C8864680B583EBLL) ^ v16;
              v13 = (*(v4 + 2) + (v17 << 6) + (v17 >> 2) - 0x61C8864680B583EBLL) ^ v17;
              *(v4 + 2) = v13;
              v4[24] = 0;
            }

            else
            {
              v13 = *(v4 + 2);
            }
          }

          else
          {
            v15 = *(v12 + 4);
          }

          if (v15 == v13 && v12[16] == *v4 && v12[17] == v4[1] && *(v12 + 5) == *(v4 + 1) && *(v12 + 6) == *(v4 + 2))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v9 > 1)
          {
            if (v14 >= *&v6)
            {
              v14 %= *&v6;
            }
          }

          else
          {
            v14 &= *&v6 - 1;
          }

          if (v14 != v10)
          {
LABEL_33:
            v3 = a1;
            break;
          }
        }

        v12 = *v12;
        if (!v12)
        {
          goto LABEL_33;
        }
      }
    }

LABEL_34:
    v18 = **(v3 + 32);
    if (v18)
    {
      v19 = *(v18 + 144);
      v20 = *(v18 + 152);
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v19 = 0;
    }

    v23 = 257;
    v24 = 1;
    v26 = 0x3F80000000000000;
    v25 = 0;
    md::HeightMeshBuilder::generateHeightMesh(&v22, v4, v19, &v23);
  }
}

void sub_1B2F25200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::~__value_func[abi:nn200100](a14);
  if (a65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a65);
  }

  if (STACK[0x218])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x218]);
  }

  if (STACK[0x208])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x208]);
  }

  _Unwind_Resume(a1);
}

void sub_1B2F252C8()
{
  if (STACK[0x2A8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2A8]);
  }

  if (STACK[0x268])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x268]);
    if (!v0)
    {
      goto LABEL_8;
    }
  }

  else if (!v0)
  {
    goto LABEL_8;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v0);
LABEL_8:
  JUMPOUT(0x1B2F25288);
}

void std::vector<std::shared_ptr<ggl::CommonMesh::Pos4UVMesh>>::push_back[abi:nn200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = (16 * v6);
    v11 = *a2;
    *a2 = 0uLL;
    v12 = *a1;
    v13 = a1[1] - *a1;
    v14 = (16 * v6 - v13);
    *v10 = v11;
    v5 = v10 + 1;
    memcpy(v10 - v13, v12, v13);
    *a1 = v14;
    a1[1] = v5;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 16;
    *a2 = 0uLL;
  }

  a1[1] = v5;
}

uint64_t *std::vector<md::Mesh>::push_back[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x333333333333333)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x199999999999999)
    {
      v11 = 0x333333333333333;
    }

    else
    {
      v11 = v9;
    }

    v22 = v2;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::Mesh>>(v11);
    }

    v12 = 80 * v8;
    *(&v21 + 1) = 0;
    *v12 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v13 = *(a2 + 16);
    v14 = *(a2 + 32);
    *(v12 + 46) = *(a2 + 46);
    *(v12 + 16) = v13;
    *(v12 + 32) = v14;
    *(v12 + 64) = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *&v21 = 80 * v8 + 80;
    v15 = v2[1];
    v16 = (80 * v8 + *v2 - v15);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::Mesh>,md::Mesh*>(*v2, v15, v16);
    v17 = *v2;
    *v2 = v16;
    v18 = v2[2];
    v19 = v21;
    *(v2 + 1) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v20[0] = v17;
    v20[1] = v17;
    result = std::__split_buffer<md::Mesh>::~__split_buffer(v20);
    v7 = v19;
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    *(v3 + 46) = *(a2 + 46);
    v3[1] = v5;
    v3[2] = v6;
    v3[4] = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v7 = v3 + 5;
  }

  v2[1] = v7;
  return result;
}

uint64_t *md::components::TexturedMeshInstance::TexturedMeshInstance(uint64_t *a1, uint64_t a2, __int128 *a3, void *a4, void **a5, uint64_t a6)
{
  v9 = md::components::MeshInstance::MeshInstance(a1, a2, a3, 0, a6, 0);
  v10 = a4[1];
  *(v9 + 112) = *a4;
  *(v9 + 120) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  std::vector<std::shared_ptr<ggl::Texture2D>>::__init_with_size[abi:nn200100]<std::shared_ptr<ggl::Texture2D>*,std::shared_ptr<ggl::Texture2D>*>(a1 + 16, *a5, a5[1], (a5[1] - *a5) >> 4);
  return a1;
}

void sub_1B2F25738(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2F25B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 + 120);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  std::__split_buffer<md::components::TexturedMeshInstance>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_2::operator()(uint64_t **a1, unsigned int a2)
{
  v2 = **a1;
  if (v2)
  {
    v5 = a1[1];
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    if (v7)
    {
      v8 = **a1;
      v9 = *(v8 + 144);
      v10 = *(v8 + 152);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 1065353216;
      md::HeightMeshBuilder::getHeightMesh(&v23, (v5 + 21), v9, a2, &v17);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      v21 = xmmword_1B33AFF10;
      v22 = 0x80000000800000;
      v11 = v23;
      v12 = v24;
      if (v23 != v24)
      {
        do
        {
          for (i = 0; i != 12; i += 4)
          {
            v14 = (&v21 + i);
            v15 = *&v11[i];
            *v14 = fminf(v15, *(&v21 + i));
            v14[3] = fmaxf(*(&v21 + i + 12), v15);
          }

          v11 += 12;
        }

        while (v11 != v12);
      }

      md::constructBoundingVolume(&v16);
    }
  }
}

void sub_1B2F25D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void gdc::ComponentStorageWrapper<md::components::BoundingVolume>::emplace(void *a1, uint64_t a2, void *a3)
{
  v35 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v35);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v19 = a1[10];
      v20 = (v7 - v19) >> 5;
      v21 = v20 + 1;
      if ((v20 + 1) >> 59)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = v8 - v19;
      if (v22 >> 4 > v21)
      {
        v21 = v22 >> 4;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFE0)
      {
        v23 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        if (!(v23 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v24 = a3[1];
      v25 = (32 * v20);
      *v25 = *a3;
      v25[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v26 = a3[3];
      *(32 * v20 + 0x10) = a3[2];
      *(32 * v20 + 0x18) = v26;
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = v25 + 4;
      v34 = (v25 + 4);
      v27 = a1[10];
      v28 = a1[11];
      v29 = (v25 + v27 - v28);
      if (v28 != v27)
      {
        v30 = a1[10];
        v31 = v29;
        do
        {
          *v31 = *v30;
          *v30 = 0;
          *(v30 + 8) = 0;
          v31[1] = *(v30 + 16);
          *(v30 + 16) = 0;
          *(v30 + 24) = 0;
          v30 += 32;
          v31 += 2;
        }

        while (v30 != v28);
        do
        {
          std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v27);
          v27 += 32;
        }

        while (v27 != v28);
      }

      v32 = a1[10];
      a1[10] = v29;
      *(a1 + 11) = v34;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      v9 = a3[1];
      *v7 = *a3;
      v7[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = a3[3];
      v7[2] = a3[2];
      v7[3] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = v7 + 4;
    }

    a1[11] = v11;
    v17 = a1[31];
LABEL_36:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v17, &v35, 1);
    }

    return;
  }

  v12 = a1[10] + 4 * (v5 - a1[7]);
  v13 = *a3;
  *a3 = 0;
  a3[1] = 0;
  v14 = *(v12 + 8);
  *v12 = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = *(a3 + 1);
  a3[2] = 0;
  a3[3] = 0;
  v16 = *(v12 + 24);
  *(v12 + 16) = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  v17 = a1[31];
  if (v12 == a1[11])
  {
    goto LABEL_36;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v17, &v35, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<md::components::BoundingVolume>::remove(void *a1, uint64_t a2)
{
  v18 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 4 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 32);
    v8 = *(v7 - 24);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[1];
    *v6 = v9;
    v6[1] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v12 = *(v7 - 16);
    v11 = *(v7 - 8);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = v6[3];
    v6[2] = v12;
    v6[3] = v11;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = a1[11] - 32;
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v14);
    a1[11] = v14;
    v15 = a1[28];
    if (v15)
    {
      v16 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v15[6], v16, &v18, 1);
        v15 = *v15;
      }

      while (v15);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::BoundingVolume>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::components::BoundingVolume>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::components::BoundingVolume>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 32;
        std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<md::components::BoundingVolume>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::components::BoundingVolume>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t std::__split_buffer<md::components::TexturedMeshInstance>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 152;
    std::__destroy_at[abi:nn200100]<md::components::TexturedMeshInstance,0>(i - 152);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_1,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_1,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

__n128 std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_1,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A16810;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

void std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_1,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A16810;
  v1 = a1[6];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_1,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A16810;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_0,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = *v2;
  v45 = v2[1];
  if (*v2 != v45)
  {
    v48 = *(a1 + 8);
    do
    {
      v4 = *v3;
      v58 = 0;
      v57 = 0;
      v47 = v3;
      v50 = v4;
      if (**(a1 + 24) == *(*(a1 + 24) + 8))
      {
        v8 = 0;
      }

      else
      {
        md::HeightMeshBuilder::getImageOfType(&v62, v4, 2u);
        md::HeightMeshBuilder::getImageOfType(&v59, *v3, 4u);
        v5 = **(a1 + 24);
        v7 = *(v5 + 32);
        v6 = *(v5 + 40);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = 0;
        if (v62 && v59 && v7)
        {
          _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v53);
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v60);
        }

        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v63);
        }
      }

      v9 = &v61;
      geo::RigidTransform<double,double>::toMatrix(&v61, (v50 + 19));
      v10 = 0;
      v11 = v56;
      do
      {
        v12 = 0;
        v13 = v11;
        do
        {
          *v13 = v9[v12];
          v13 += 3;
          v12 += 4;
        }

        while (v12 != 12);
        ++v10;
        v11 = (v11 + 8);
        ++v9;
      }

      while (v10 != 3);
      v14 = v50[19];
      v15 = v50[20];
      v16 = v50[21];
      gm::Matrix<double,4,4>::inverted<int,void>(&v54, (v48 + 352));
      v17 = 0;
      v18 = v53;
      v19 = v56;
      do
      {
        v20 = 0;
        v21 = v18;
        do
        {
          *v21 = v19->i64[v20];
          v21 += 4;
          v20 += 3;
        }

        while (v20 != 9);
        ++v17;
        ++v18;
        v19 = (v19 + 8);
      }

      while (v17 != 3);
      v22 = 0;
      v53[3] = 0;
      v53[7] = 0;
      v53[11] = 0;
      v53[12] = v14;
      v53[13] = v15;
      v53[14] = v16;
      v23 = &v54;
      v53[15] = 0x3FF0000000000000;
      do
      {
        v24 = 0;
        v25 = v53;
        do
        {
          v26 = 0;
          v27 = 0.0;
          v28 = v23;
          do
          {
            v29 = *v28;
            v28 += 4;
            v27 = v27 + *&v25[v26++] * v29;
          }

          while (v26 != 4);
          *(&v61 + 4 * v24++ + v22) = v27;
          v25 += 4;
        }

        while (v24 != 4);
        ++v22;
        ++v23;
      }

      while (v22 != 4);
      v30 = 0;
      v31 = &v61;
      do
      {
        v33 = *v31;
        v32 = *(v31 + 1);
        v31 += 4;
        v55[v30++] = vcvt_hight_f32_f64(vcvt_f32_f64(v33), v32);
      }

      while (v30 != 4);
      v34 = 0;
      v35 = v53;
      v36 = v55;
      do
      {
        v37 = 0;
        v38 = v35;
        do
        {
          *v38 = v36[v37].i32[0];
          v38 = (v38 + 12);
          ++v37;
        }

        while (v37 != 4);
        ++v34;
        v35 = (v35 + 4);
        v36 = (v36 + 4);
      }

      while (v34 != 3);
      v39 = *(a1 + 32);
      v52[2] = v48;
      v52[3] = v39;
      v52[4] = v53;
      v40 = v50[32];
      v49 = v50[33];
      if (v40 != v49)
      {
        do
        {
          if (*(v40 + 177) - 3 < 2)
          {
            md::HeightMeshBuilder::getImageOfType(v52, *v3, 5u);
            if ((*(a1 + 56) & 1) == 0)
            {
              goto LABEL_46;
            }

            v41 = **(a1 + 48);
            v42 = *(v41 + 144);
            v43 = *(v41 + 152);
            if (v43)
            {
              atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
            }

            if (v42)
            {
              v44 = &unk_1F2A310B0;
              v63 = v42;
            }

            else
            {
LABEL_46:
              v44 = &unk_1F2A310F8;
            }

            v62 = v44;
            v64 = &v62;
            v61 = 0xAAAAAAAAAAAAAAABLL * ((*(v40 + 88) - *(v40 + 80)) >> 2);
            LOBYTE(v54) = 7;
            std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4UV>,std::allocator<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4UV>>,char const(&)[19],unsigned long,ggl::BufferUsage,0>(&v51, &v61, &v54);
          }

          if (!*(v40 + 177))
          {
            v61 = 0xAAAAAAAAAAAAAAABLL * ((*(v40 + 88) - *(v40 + 80)) >> 2);
            LOBYTE(v54) = 7;
            std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4UV>,std::allocator<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4UV>>,char const(&)[19],unsigned long,ggl::BufferUsage,0>(&v62, &v61, &v54);
          }

          v40 += 184;
        }

        while (v40 != v49);
        v8 = v58;
      }

      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      v3 += 2;
    }

    while (v47 + 2 != v45);
  }
}

void sub_1B2F277A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a38);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (STACK[0x2D0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2D0]);
  }

  v41 = *(v39 - 192);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  _Unwind_Resume(a1);
}

void md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_0::operator() const(ggl::ResourceAccessor *)::{lambda(std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::c3m::SubMesh const&,gm::Box<float,3> const&,std::vector<gdc::Resource::LoadMetadata> &&<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const::Texture2D> const&)#1}::operator()(void *a1, __int128 *a2, __int128 *a3, void *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 736);
  v8 = *(v7 - 16);
  v9 = *(v7 - 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *a2;
    *(&v17[0] + 1) = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = *a2;
    *(&v17[0] + 1) = 0;
  }

  *&v17[0] = v8;
  v17[1] = v10;
  v18 = 3;
  v19 = *a3;
  v20 = *(a3 + 2);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<md::Mesh>::push_back[abi:nn200100]((v6 + 752), v17);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  if (*(&v17[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v17[0] + 1));
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v11 = *(v6 + 760) - 80;
  v13 = a1[1];
  v12 = a1[2];
  memset(v16, 0, sizeof(v16));
  LOBYTE(v14) = 0;
  v15 = 0;
  md::components::TexturedMeshInstance::TexturedMeshInstance(v17, v11, v12, a4, v16, &v14);
  gdc::Registry::createWith<md::components::TexturedMeshInstance>(v13, v17);
}

void sub_1B2F27A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  *(v31 - 56) = v30 + 128;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100]((v31 - 56));
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a30);
  }

  a10 = &a12;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a10);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::FlyoverTileData::FlyoverTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,std::vector<std::pair<geo::QuadTile,std::vector<gdc::Resource::LoadMetadata> &&<md::RasterTileResource>>> &&,std::unordered_map<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&,geo,std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &::QuadTileHash,std::equal_to<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> &&>,std::allocator<std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>><std::vector<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>,std::allocator<std::vector<std::shared_ptr<md::GEOFlyoverTileResource>> &&>> && const,geo>>> &&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *)::$_0,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager>>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A167C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void md::RenderLayer::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v11, "Render Layer ");
  std::to_string(&v10, *(a1 + 34));
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v10;
  }

  else
  {
    v4 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v11, v4, size);
  v12 = *v6;
  v6->__r_.__value_.__r.__words[0] = 0;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  gdc::DebugTreeNode::DebugTreeNode(a2, &v12);
  std::string::basic_string[abi:nn200100]<0>(&v11, "Active");
  gdc::DebugTreeValue::DebugTreeValue(v7, *(a1 + 32));
  gdc::DebugTreeNode::addProperty(a2, &v11, v7);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void md::PolylineLabelPlacement::lineOffset(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);
  v3 = *(this + 8);
  v4 = *(this + 40);
  v5 = *(v3 + 8);
  if (v4 < (*(v3 + 16) - v5) >> 4)
  {
    v6 = 0.0;
    if (*(this + 40))
    {
      v7 = *(v3 + 8);
      v8 = *(this + 40);
      do
      {
        v9 = *v7;
        v7 += 2;
        v6 = *(v9 + 8) + v6;
        --v8;
      }

      while (v8);
    }

    md::LabelLineSegment::offsetAtCoordinate(*(v5 + 16 * v4), *(v5 + 16 * v4 + 8), *(this + 41), *(this + 21));
  }
}

uint64_t md::PolylineLabelPlacement::forward(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);
  v3 = *(this + 6);
  if (v3)
  {
    if (*(this + 22) != *(v3 + 16))
    {
      goto LABEL_6;
    }

    v3 = *(this + 9);
    if (v3)
    {
      if ((*(this + 41) & 0x80000000) == 0)
      {
        LOBYTE(v3) = *(v3 + 8);
        return v3 & 1;
      }

LABEL_6:
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

uint64_t md::PolylineLabelPlacement::textIndex(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);

  return md::LabelLinePosition::textIndex((this + 48));
}

uint64_t md::PolylineLabelPlacement::travelDirection(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);

  return md::LabelLinePosition::travelDirection((this + 48));
}

uint64_t md::PolylineLabelPlacement::geoTransitLink(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);
  v3 = *(this + 6);
  if (v3 && *(this + 22) == *(v3 + 16) && (v4 = *(this + 9)) != 0 && (*(this + 41) & 0x80000000) == 0 && (v5 = *v4) != 0 && *(v5 + 32) == 2)
  {
    return *(v5 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t md::PolylineLabelPlacement::geoFeature(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);

  return md::LabelLinePosition::geoFeature((this + 48));
}

uint64_t md::PolylineLabelPlacement::hasAnnotation(md::PolylineLabelPlacement *this, double a2)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a2);

  return md::LabelLinePosition::hasAnnotation((this + 48));
}

uint64_t md::LabelLinePosition::hasAnnotation(md::LabelLinePosition *this)
{
  if (*(*this + 152))
  {
    return 0;
  }

  result = md::LabelLinePosition::geoFeature(this);
  if (result)
  {
    return *(result + 150) != 0;
  }

  return result;
}

unint64_t md::PolylineLabelPlacement::positionInTraffic(uint64_t a1, void *a2, double a3)
{
  md::LabelLineResolvedPosition::ensureValidLinePosition((a1 + 48), a3);
  if (!a2[5])
  {
    return 0;
  }

  result = md::LabelLinePosition::geoFeature((a1 + 48));
  if (!result)
  {
    return result;
  }

  v6 = a2[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = 0x9DDFEA08EB382D69 * ((8 * (result & 0x1FFFFFFF) + 8) ^ HIDWORD(result));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(result) ^ (v7 >> 47) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = vcnt_s8(v6);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v9;
    if (v9 >= *&v6)
    {
      v11 = v9 % *&v6;
    }
  }

  else
  {
    v11 = v9 & (*&v6 - 1);
  }

  v12 = *(*a2 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (!v13)
  {
    return 0;
  }

  while (1)
  {
    v14 = v13[1];
    if (v9 == v14)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v6)
      {
        v14 %= *&v6;
      }
    }

    else
    {
      v14 &= *&v6 - 1;
    }

    if (v14 != v11)
    {
      return 0;
    }

LABEL_18:
    v13 = *v13;
    if (!v13)
    {
      return 0;
    }
  }

  if (v13[2] != result)
  {
    goto LABEL_18;
  }

  v15 = v13[3];
  v16 = v13[4] - v15;
  v17 = md::LabelLinePosition::section((a1 + 48));
  if (v17 >= v16 >> 5)
  {
    return 0;
  }

  v18 = (v15 + 32 * v17);
  v19 = *v18;
  v20 = v18[1];
  if (v19 == v20)
  {
    return 0;
  }

  v21 = *(a1 + 82);
  v22 = *(a1 + 84);
  while (1)
  {
    v23 = *(v19 + 16);
    v24 = *(v19 + 20);
    if (v23 <= v24)
    {
      v25 = *(v19 + 20);
    }

    else
    {
      v25 = *(v19 + 16);
    }

    v26 = *(v19 + 24);
    v27 = *(v19 + 28);
    if (v24 >= v23)
    {
      v28 = *(v19 + 16);
    }

    else
    {
      v28 = *(v19 + 20);
    }

    if (v24 >= v23)
    {
      v29 = fminf(v27, v26);
      v30 = fmaxf(v26, v27);
      if (v23 == v24)
      {
        v26 = v30;
      }

      else
      {
        v29 = *(v19 + 24);
        v26 = *(v19 + 28);
      }

      v27 = v29;
    }

    if (v28 < v21 || (v28 == v21 ? (v31 = v27 <= v22) : (v31 = 0), v31))
    {
      if (v25 > v21)
      {
        break;
      }

      if (v25 == v21 && v26 >= v22)
      {
        break;
      }
    }

    result = 0;
    v19 += 32;
    if (v19 == v20)
    {
      return result;
    }
  }

  return 1;
}

uint64_t md::PolylineLabelPlacement::secondaryMercatorPosition(uint64_t a1, double *a2, double a3)
{
  v5 = md::LabelPoint::mercatorPoint((a1 + 152));
  v6 = *v5;
  *a2 = *v5;
  v7 = *(v5 + 8);
  *a2 = v6 + a3;
  *(a2 + 1) = v7;
  return 1;
}

void md::PolylineLabelPlacement::debugRoadNameForPosition(md::PolylineLabelPlacement *this@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v3 = a2;
  v4 = (this + 48);
  if (*(*(this + 6) + 152))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  md::LabelLineResolvedPosition::ensureValidLinePosition((this + 48), a3);
  v5 = md::LabelLinePosition::geoFeature(v4);
  v39 = 0;
  if (geo::codec::featureGetNativeLabelCount(v5))
  {
    geo::codec::featureGetNativeLabel(v5, 0, &v39, 0);
  }

  std::string::basic_string[abi:nn200100]<0>(&v33, "RoadPosition name=");
  if (v39)
  {
    v6 = v39;
  }

  else
  {
    v6 = "*** no name ***";
  }

  v7 = strlen(v6);
  v8 = std::string::append(&v33, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v34, " index=", 7uLL);
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v12 = *&v35.__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  md::LabelLineResolvedPosition::ensureValidLinePosition(v4, v12);
  v13 = md::LabelLinePosition::textIndex(v4);
  std::to_string(&v32, v13);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v32;
  }

  else
  {
    v14 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v35, v14, size);
  v17 = v16->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v36, " travelDir=", 0xBuLL);
  v19 = v18->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
  v20 = *&v37.__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  md::LabelLineResolvedPosition::ensureValidLinePosition(v4, v20);
  v21 = md::LabelLinePosition::travelDirection(v4);
  std::string::basic_string[abi:nn200100]<0>(__p, off_1E7B35F28[v21]);
  if ((v31 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v23 = v31;
  }

  else
  {
    v23 = __p[1];
  }

  v24 = std::string::append(&v37, v22, v23);
  __src = *v24;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v26 = __src.__r_.__value_.__l.__size_;
    if (__src.__r_.__value_.__l.__size_ >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    p_src = __src.__r_.__value_.__r.__words[0];
  }

  else
  {
    p_src = &__src;
    v26 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  }

  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v26 | 7) + 1;
    }

    v28 = mdm::zone_mallocator::instance(v24);
    v29 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v28, v27);
    v3[1] = v26;
    v3[2] = v27 | 0x8000000000000000;
    *v3 = v29;
    v3 = v29;
  }

  else
  {
    *(v3 + 23) = v26;
    if (!v26)
    {
      goto LABEL_32;
    }
  }

  memmove(v3, p_src, v26);
LABEL_32:
  *(v3 + v26) = 0;
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_1B2F284A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (v47 < 0)
  {
    operator delete(*(v48 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v48 - 89) < 0)
  {
    operator delete(*(v48 - 112));
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::PolylineLabelPlacement::lock@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(this + 48) + 56);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (v3)
  {
    this = std::mutex::try_lock(v3);
    *a2 = v3;
    *(a2 + 8) = this;
  }

  return this;
}

void std::__shared_ptr_emplace<md::PolylineLabelPlacement>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2A388;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::PolylineLabelPlacement::~PolylineLabelPlacement(md::PolylineLabelPlacement *this)
{
  *this = &unk_1F2A168B0;
  v1 = *(this + 7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A168B0;
  v1 = *(this + 7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

_DWORD *md::RoadPosition::setValidAtZoom(_DWORD *this, uint64_t a2, int a3)
{
  v3 = a2;
  v4 = this[3];
  v5 = v4 | (1 << a2);
  if (!a3)
  {
    v5 = v4 & ~(1 << a2);
  }

  this[3] = v5;
  if (this[6] < a2)
  {
    v6 = this;
    this = (*(*this + 176))(this, a2, 1.0);
    v6[6] = v3;
  }

  return this;
}

uint64_t md::PolylineLabelPlacement::PolylineLabelPlacement(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, int a6, double a7, float a8)
{
  *(a1 + 8) = 0;
  *(a1 + 9) = a3;
  *(a1 + 10) = 0;
  *(a1 + 18) = 0;
  *(a1 + 20) = a6;
  *(a1 + 24) = -1;
  *(a1 + 32) = a7;
  *(a1 + 40) = a8;
  *(a1 + 44) = 0;
  *(a1 + 45) = a4;
  *a1 = &unk_1F2A168B0;
  md::LabelLineResolvedPosition::LabelLineResolvedPosition(a1 + 48, a2);
  md::RoadPosition::setValidAtZoom(a1, a5, 1);
  return a1;
}

void sub_1B2F288A4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *md::GraphTraversalContext::pushItem(unint64_t *a1, uint64_t a2)
{
  v4 = a1[12];
  v5 = a1[13];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 46 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[15];
  if (v6 == a1[16] + v7)
  {
    v8 = v7 >= 0x2E;
    v9 = v7 - 46;
    if (!v8)
    {
      v10 = a1[14];
      v11 = a1[11];
      if (v5 - v4 < (v10 - v11))
      {
        operator new();
      }

      if (v10 == v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = (v10 - v11) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v12);
    }

    a1[15] = v9;
    v16 = *v4;
    a1[12] = (v4 + 1);
    std::__split_buffer<gdc::TrianglePair *>::emplace_back<gdc::TrianglePair *&>(a1 + 11, &v16);
    v4 = a1[12];
    v5 = a1[13];
  }

  if (v5 == v4)
  {
    v14 = 0;
  }

  else
  {
    v13 = a1[16] + a1[15];
    v14 = v4[v13 / 0x2E] - 4048 * (v13 / 0x2E) + 88 * v13;
  }

  *v14 = *a2;
  result = md::GraphTraversalPath::GraphTraversalPath((v14 + 8), (a2 + 8));
  *(v14 + 80) = *(a2 + 80);
  ++a1[16];
  return result;
}

void sub_1B2F28DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::__emplace_unique_key_args<md::MuninJunction const*,md::MuninJunction const*&>(void *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }
}

uint64_t md::GraphTraversalContext::hasVisited(int8x8_t *this, const MuninRoadEdge *a2)
{
  if (this->i8[0] != 1)
  {
    v6 = this[7];
    if (v6)
    {
      v7 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ (a2 >> 32));
      v8 = 0x9DDFEA08EB382D69 * ((a2 >> 32) ^ (v7 >> 47) ^ v7);
      v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      v10 = vcnt_s8(v6);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = v9;
        if (v9 >= *&v6)
        {
          v11 = v9 % *&v6;
        }
      }

      else
      {
        v11 = v9 & (*&v6 - 1);
      }

      v12 = *(*&this[6] + 8 * v11);
      if (v12)
      {
        v13 = *v12;
        if (v13)
        {
          while (1)
          {
            v14 = v13[1];
            if (v9 == v14)
            {
              if (v13[2] == a2)
              {
                return 1;
              }
            }

            else
            {
              if (v10.u32[0] > 1uLL)
              {
                if (v14 >= *&v6)
                {
                  v14 %= *&v6;
                }
              }

              else
              {
                v14 &= *&v6 - 1;
              }

              if (v14 != v11)
              {
                return 0;
              }
            }

            v13 = *v13;
            if (!v13)
            {
              return 0;
            }
          }
        }
      }
    }

    return 0;
  }

  v2 = this[17];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(*&v2 + 24);
  v4 = *(*&v2 + 32);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        v3 = v4;
        return v3 != v4;
      }
    }
  }

  return v3 != v4;
}

void md::MuninAvailabilityDaVinciLayerDataSource::~MuninAvailabilityDaVinciLayerDataSource(md::MuninAvailabilityDaVinciLayerDataSource *this)
{
  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelManager::debugString(md::LabelManager *this, uint64_t a2, int a3)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v146);
  if (a3)
  {
    v6 = v146;
    *(&v146 + *(v146 - 24) + 8) = *(&v146 + *(v146 - 24) + 8) & 0xFFFFFEFB | 4;
    *(&v148[0].__locale_ + *(v6 - 24)) = 2;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "LayoutZoom:", 11);
    v7 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Loading Counts: image=", 22);
    v8 = atomic_load((*(a2 + 264) + 140));
    v9 = MEMORY[0x1B8C61C90](&v146, v8);
    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, ", textData=", 11);
    v11 = atomic_load((*(a2 + 272) + 56));
    v12 = MEMORY[0x1B8C61C90](v10, v11);
    v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, ", glyphImage=", 13);
    v14 = atomic_load((*(a2 + 280) + 64));
    v15 = MEMORY[0x1B8C61C90](v13, v14);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, "\n", 1);
    v16 = *(a2 + 360);
    v18 = v16[12];
    v17 = v16[13];
    v19 = v16[11];
    v21 = v16[37];
    v20 = v16[38];
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Occlusions:(Labels,Graphics) unsubmitted=(", 42);
    v22 = MEMORY[0x1B8C61CB0](&v146, v19);
    v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, ",", 1);
    v24 = MEMORY[0x1B8C61CB0](v23, v21);
    v25 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, ") pending=(", 11);
    v26 = MEMORY[0x1B8C61CB0](v25, (v17 - v18) >> 4);
    v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, ",", 1);
    v28 = MEMORY[0x1B8C61CB0](v27, v20);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, ")\n", 2);
    if (*(a2 + 3072) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Scissor Rect: min=(", 19);
      v29 = MEMORY[0x1B8C61C90](&v146, *(a2 + 3056));
      v30 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, ", ", 2);
      v31 = MEMORY[0x1B8C61C90](v30, *(a2 + 3060));
      v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, "), max=(", 8);
      v33 = MEMORY[0x1B8C61C90](v32, *(a2 + 3064));
      v34 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, ", ", 2);
      v35 = MEMORY[0x1B8C61C90](v34, *(a2 + 3068));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, ")\n", 2);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "RouteTrafficFeaturesActive=", 27);
    v36 = (*(**(*(a2 + 168) + 48) + 16))(*(*(a2 + 168) + 48));
    v37 = MEMORY[0x1B8C61C80](&v146, v36);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, "\n", 1);
    v38 = *(a2 + 3168);
    v39 = *(v38 + 144);
    v40 = *(v38 + 148);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Staging GlyphCache: hits=", 25);
    v41 = MEMORY[0x1B8C61C90](&v146, v39);
    v42 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, " misses=", 8);
    v43 = MEMORY[0x1B8C61C90](v42, v40);
    *(v43 + *(*v43 - 24) + 16) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, " hit%=", 6);
    v44 = std::ostream::operator<<();
    v45 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v44, " size=", 6);
    v46 = MEMORY[0x1B8C61C90](v45, *(*(a2 + 3168) + 152));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, "\n", 1);
    v47 = *(*(a2 + 304) + 128);
    v48 = v47[36];
    v49 = v47[37];
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Atlas GlyphCache: hits=", 23);
    v50 = MEMORY[0x1B8C61C90](&v146, v48);
    v51 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, " misses=", 8);
    v52 = MEMORY[0x1B8C61C90](v51, v49);
    *(v52 + *(*v52 - 24) + 16) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, " hit%=", 6);
    v53 = std::ostream::operator<<();
    v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, " size=", 6);
    v55 = MEMORY[0x1B8C61C90](v54, v47[38]);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v55, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Atlas glyphs=", 13);
    v56 = MEMORY[0x1B8C61C80](&v146, *(*(a2 + 304) + 96));
    v57 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v56, " workingSize=", 13);
    v58 = MEMORY[0x1B8C61C90](v57, *(*(a2 + 304) + 116));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v58, "\n", 1);
    v59 = *(a2 + 264);
    v61 = *(v59 + 88);
    v60 = *(v59 + 96);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "ImageLoader[", 12);
    v62 = MEMORY[0x1B8C61C90](&v146, v61);
    v63 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v62, "]: hits=", 8);
    v64 = MEMORY[0x1B8C61C90](v63, HIDWORD(v61));
    v65 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v64, " misses=", 8);
    v66 = MEMORY[0x1B8C61C90](v65, v60);
    *(v66 + *(*v66 - 24) + 16) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v66, " hit%=", 6);
    v67 = std::ostream::operator<<();
    v68 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v67, " size=", 6);
    v69 = MEMORY[0x1B8C61C90](v68, HIDWORD(v60));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v69, "\n", 1);
    v70 = (*(***(a2 + 280) + 24))(**(a2 + 280));
    v71 = (*(***(a2 + 280) + 32))(**(a2 + 280));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "GlyphLoader: large-scale=", 25);
    v72 = MEMORY[0x1B8C61CF0](&v146, v71);
    v73 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v72, ", total=", 8);
    v74 = MEMORY[0x1B8C61CF0](v73, v70);
    v75 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v74, ", %=", 4);
    *(v75 + *(*v75 - 24) + 16) = 1;
    v76 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v76, "\n", 1);
    v77 = (*(***(a2 + 280) + 40))(**(a2 + 280));
    v79 = v78;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "GlyphLoader CTFont[", 19);
    v80 = MEMORY[0x1B8C61C90](&v146, v77);
    v81 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v80, "]: hits=", 8);
    v82 = MEMORY[0x1B8C61C90](v81, HIDWORD(v77));
    v83 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v82, " misses=", 8);
    v84 = MEMORY[0x1B8C61C90](v83, v79);
    *(v84 + *(*v84 - 24) + 16) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v84, " hit%=", 6);
    v85 = std::ostream::operator<<();
    v86 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v85, " size=", 6);
    v87 = MEMORY[0x1B8C61C90](v86, HIDWORD(v79));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v87, "\n", 1);
    v88 = *(a2 + 304);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "GlyphSizes:", 11);
    v90 = *(v88 + 136);
    v89 = *(v88 + 144);
    if (v89 != v90)
    {
      v91 = 0;
      v92 = 0;
      v93 = 1;
      do
      {
        if (*(v90 + 4 * v92))
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, " ", 1);
          v94 = MEMORY[0x1B8C61C90](&v146, v91);
          v95 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v94, "=", 1);
          MEMORY[0x1B8C61C90](v95, *(*(v88 + 136) + 4 * v92));
          v90 = *(v88 + 136);
          v89 = *(v88 + 144);
        }

        v92 = v93++;
        v91 = (v91 + 16);
      }

      while (v92 < (v89 - v90) >> 2);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "RoadPath Glyphs Placed: ", 24);
    v96 = MEMORY[0x1B8C61C90](&v146, *(a2 + 3432));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v96, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Renderer: descs=", 16);
    v97 = MEMORY[0x1B8C61C90](&v146, *(*(a2 + 328) + 1808));
    v98 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v97, ", items=", 8);
    v99 = MEMORY[0x1B8C61C90](v98, (*(*(a2 + 328) + 1812) + *(*(a2 + 328) + 1816)));
    v100 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v99, "(glyph=", 7);
    v101 = MEMORY[0x1B8C61C90](v100, *(*(a2 + 328) + 1812));
    v102 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v101, ",icon=", 6);
    v103 = MEMORY[0x1B8C61C90](v102, *(*(a2 + 328) + 1816));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v103, ")", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "DevBuff:fl=", 11);
    v104 = MEMORY[0x1B8C61C90](&v146, *(*(a2 + 328) + 1624));
    v105 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v104, ",by=", 4);
    v106 = MEMORY[0x1B8C61C90](v105, *(*(a2 + 328) + 1768));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v106, "\n", 1);
    v107 = *(a2 + 336);
    std::mutex::lock(v107);
    v109 = *(v107 + 408);
    v108 = *(v107 + 416);
    std::mutex::unlock(v107);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Styles[Shared][", 15);
    v110 = MEMORY[0x1B8C61C90](&v146, v109);
    v111 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v110, "]: hits=", 8);
    v112 = MEMORY[0x1B8C61C90](v111, HIDWORD(v109));
    v113 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v112, " misses=", 8);
    v114 = MEMORY[0x1B8C61C90](v113, v108);
    *(v114 + *(*v114 - 24) + 16) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v114, " hit%=", 6);
    v115 = std::ostream::operator<<();
    v116 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v115, " size=", 6);
    v117 = MEMORY[0x1B8C61C90](v116, HIDWORD(v108));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v117, "\n", 1);
    v118 = *(a2 + 336);
    std::mutex::lock(v118);
    v120 = *(v118 + 296);
    v119 = *(v118 + 304);
    std::mutex::unlock(v118);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Styles[Layout][", 15);
    v121 = MEMORY[0x1B8C61C90](&v146, v120);
    v122 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v121, "]: hits=", 8);
    v123 = MEMORY[0x1B8C61C90](v122, HIDWORD(v120));
    v124 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v123, " misses=", 8);
    v125 = MEMORY[0x1B8C61C90](v124, v119);
    *(v125 + *(*v125 - 24) + 16) = 1;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v125, " hit%=", 6);
    v126 = std::ostream::operator<<();
    v127 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v126, " size=", 6);
    v128 = MEMORY[0x1B8C61C90](v127, HIDWORD(v119));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v128, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "Scales:", 7);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, " content=", 9);
    v129 = std::ostream::operator<<();
    v130 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v129, " label=", 7);
    v131 = MEMORY[0x1B8C61C80](v130, *(a2 + 3400));
    v132 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v131, " resolved=", 10);
    MEMORY[0x1B8C61C80](v132, *(a2 + 3401));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, " shield=", 8);
    v133 = MEMORY[0x1B8C61C80](&v146, *(a2 + 3392));
    v134 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v133, " navShield=", 11);
    MEMORY[0x1B8C61C80](v134, *(a2 + 3393));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, "\n", 1);
    md::LabelTextureAtlasStore::debugString(&__p, *(a2 + 256));
    if ((v145 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v145 & 0x80u) == 0)
    {
      v136 = v145;
    }

    else
    {
      v136 = v144;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, p_p, v136);
    if (v145 < 0)
    {
      operator delete(__p);
    }
  }

  (*(**(a2 + 240) + 288))(&__p);
  if ((v145 & 0x80u) == 0)
  {
    v137 = &__p;
  }

  else
  {
    v137 = __p;
  }

  if ((v145 & 0x80u) == 0)
  {
    v138 = v145;
  }

  else
  {
    v138 = v144;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v146, v137, v138);
  if (v145 < 0)
  {
    operator delete(__p);
  }

  if ((v153 & 0x10) != 0)
  {
    v140 = v152;
    if (v152 < v149)
    {
      v152 = v149;
      v140 = v149;
    }

    locale = v148[4].__locale_;
  }

  else
  {
    if ((v153 & 8) == 0)
    {
      v139 = 0;
      *(this + 23) = 0;
      goto LABEL_38;
    }

    locale = v148[1].__locale_;
    v140 = v148[3].__locale_;
  }

  v139 = v140 - locale;
  if ((v140 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v139 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v139;
  if (v139)
  {
    memmove(this, locale, v139);
  }

LABEL_38:
  *(this + v139) = 0;
  v146 = *MEMORY[0x1E69E54E8];
  *(&v146 + *(v146 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v147 = MEMORY[0x1E69E5548] + 16;
  if (v151 < 0)
  {
    operator delete(v150);
  }

  v147 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v148);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v154);
}

void sub_1B2F2A0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(a24);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

void md::FlyoverMetaData::~FlyoverMetaData(md::FlyoverMetaData *this)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 88);
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(this + 8);
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

void md::FlyoverMetaData::elevationBoundsForTile(md::FlyoverMetaData *this, md::FlyoverRegionManager ***a2, const geo::QuadTile *a3)
{
  RegionAreas = md::FlyoverRegionManager::getRegionAreas(**a2, a3);
  if (*RegionAreas == RegionAreas[1])
  {
    *this = 0;
    *(this + 16) = 0;
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
    md::FlyoverMetaData::heightIndices(**a2, a3, &v14);
    begin = v14.__begin_;
    end = v14.__end_;
    if (v14.__begin_ != v14.__end_)
    {
      v9 = -20000.0;
      v10 = 20000.0;
      v11 = v14.__begin_;
      while (1)
      {
        md::FlyoverMetaData::elevationBoundsForHeightTile(v12, **a2, a3, *v11);
        if ((v13 & 1) == 0)
        {
          break;
        }

        v10 = fmin(v10, v12[0]);
        v9 = fmax(v12[1], v9);
        if (++v11 == end)
        {
          if (v9 < v10)
          {
            break;
          }

          *this = v10;
          *(this + 1) = v9;
          *(this + 16) = 1;
          if (begin)
          {
            goto LABEL_8;
          }

          return;
        }
      }
    }

    *this = 0;
    *(this + 16) = 0;
    if (begin)
    {
LABEL_8:
      operator delete(begin);
    }
  }
}

void sub_1B2F2A3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::FlyoverMetaData::heightIndices(md::FlyoverRegionManager *a1, uint64_t a2, std::vector<unsigned int> *a3)
{
  RegionAreas = md::FlyoverRegionManager::getRegionAreas(a1, a2);
  v6 = RegionAreas[1];
  if (*RegionAreas != v6)
  {
    v7 = *RegionAreas + 24;
    do
    {
      v8 = *(a2 + 8);
      v10[0] = *(a2 + 1) | ((~(-1 << *(a2 + 1)) - *(a2 + 4)) << 32);
      v10[1] = v8;
      geo::c3mm::C3mmArea::getHeightIndices(*(v7 - 24), v10, a3);
      v9 = a3->__begin_ != a3->__end_ || v7 == v6;
      v7 += 24;
    }

    while (!v9);
  }
}

uint64_t *md::FlyoverMetaData::elevationBoundsForHeightTile(md::FlyoverMetaData *this, const geo::QuadTile *a2, geo::QuadTile *a3, uint64_t a4)
{
  result = md::FlyoverRegionManager::getRegionAreas(a2, a3);
  v8 = *result;
  v9 = result[1];
  if (*result == v9)
  {
    *this = 0;
    *(this + 16) = 0;
  }

  else
  {
    v10 = *(a3 + 2) | (a4 << 32);
    v17[0] = *(a3 + 1) | ((~(-1 << *(a3 + 1)) - *(a3 + 1)) << 32);
    v17[1] = v10;
    v14[0] = 0;
    v14[1] = 0;
    v15 = 1;
    v16 = 0;
    v11 = v8 + 24;
    while (1)
    {
      result = geo::c3mm::C3mmArea::getEntry(*(v11 - 24), v17, v14);
      if (result != -1)
      {
        break;
      }

      if ((vcgt_f32(vdup_lane_s32(v14[0], 1), v14[0]).u8[0] & 1) == 0)
      {
        v12 = v11 == v9;
        v11 += 24;
        if (!v12)
        {
          continue;
        }
      }

      *this = vcvtq_f64_f32(v14[0]);
      v13 = 1;
      goto LABEL_10;
    }

    v13 = 0;
    *this = 0;
LABEL_10:
    *(this + 16) = v13;
  }

  return result;
}

uint64_t md::FlyoverMetaData::tileType(md::FlyoverMetaData *this, const geo::QuadTile *a2, uint64_t a3)
{
  md::FlyoverMetaData::tileCacheLookup(v11, this, a2, a3, 0);
  if (v17 == 1)
  {
    if (v15 == 1)
    {
      geo::QuadTile::computeHash(v11);
    }

    v4 = v14;
    if (*(a2 + 24))
    {
      v9 = (*(a2 + 1) + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
      v10 = (*(a2 + 1) + (v9 << 6) + (v9 >> 2) - 0x61C8864680B583EBLL) ^ v9;
      v5 = (*(a2 + 2) + (v10 << 6) + (v10 >> 2) - 0x61C8864680B583EBLL) ^ v10;
      *(a2 + 2) = v5;
      *(a2 + 24) = 0;
    }

    else
    {
      v5 = *(a2 + 2);
    }

    if (v4 == v5 && v11[0] == *a2 && v11[1] == *(a2 + 1) && v12 == *(a2 + 1) && v13 == *(a2 + 2))
    {
      v6 = 1;
      v7 = v16;
    }

    else
    {
      v7 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  return v7 | (v6 << 8);
}

void md::FlyoverMetaData::tileCacheLookup(md::FlyoverMetaData *this, const geo::QuadTile *a2, uint64_t *a3, uint64_t a4, int a5)
{
  v7 = a3;
  v62 = *(a3 + 4);
  v61[0] = *a3;
  v63 = a3[2];
  v64 = *(a3 + 24);
  v65 = a4;
  v10 = std::__hash_table<std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,std::__unordered_map_hasher<md::FlyoverMetaData::TileCacheEntry,std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,md::FlyoverMetaData::TileCacheEntryHash,std::equal_to<md::FlyoverMetaData::TileCacheEntry>,true>,std::__unordered_map_equal<md::FlyoverMetaData::TileCacheEntry,std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,std::equal_to<md::FlyoverMetaData::TileCacheEntry>,md::FlyoverMetaData::TileCacheEntryHash,true>,std::allocator<std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>>>::find<md::FlyoverMetaData::TileCacheEntry>(a2 + 3, v61);
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = *(a2 + 9);
  v12 = *(v10 + 7);
  if (v11 != v12)
  {
    v13 = v12[1];
    if (v13 != v11)
    {
      v14 = *v12;
      *(v14 + 8) = v13;
      *v13 = v14;
      v15 = *v11;
      *(v15 + 8) = v12;
      *v12 = v15;
      *v11 = v12;
      v12[1] = v11;
      v11 = *(a2 + 9);
    }
  }

  if ((a2 + 64) == v11)
  {
LABEL_7:
    RegionAreas = md::FlyoverRegionManager::getRegionAreas(**a2, v7);
    v17 = *(v7 + 1);
    v18 = *(v7 + 1);
    v19 = *(v7 + 2);
    v60[0] = v17 | ((~(-1 << v17) - v18) << 32);
    v60[1] = v19 | (a4 << 32);
    v58 = 0;
    v59 = 0;
    v55[0] = 0;
    v55[1] = 0;
    v56 = 1;
    v57 = 0;
    v54 = 3;
    v20 = *RegionAreas;
    v21 = *(RegionAreas + 8);
    if (*RegionAreas == v21)
    {
      goto LABEL_12;
    }

    while (geo::c3mm::C3mmArea::getMeshTypeForKeyOrParent(*v20, v60, &v54, &v58) == -1)
    {
      if (v54 != 1)
      {
        if (v54 == 2)
        {
          v25 = 3;
        }

        else
        {
          v25 = v54 != 3;
        }

        v26 = v58;
        v27 = (1 << v58) + ~HIDWORD(v58);
        v48 = v58;
        v47 = -1;
        v28 = v59;
        v29 = HIDWORD(v59);
        v49 = v27;
        v50 = v59;
        v51 = 0;
        v52 = 1;
        v53 = HIDWORD(v59);
        v35 = *(v20 + 4);
        geo::QuadTile::computeHash(&v47);
        v30 = v51;
        if (v7[3])
        {
          v33 = (*(v7 + 1) + ((*v7 - 0x61C8864680B583EBLL) << 6) + ((*v7 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*v7 - 0x61C8864680B583EBLL);
          v34 = (*(v7 + 1) + (v33 << 6) + (v33 >> 2) - 0x61C8864680B583EBLL) ^ v33;
          v31 = (*(v7 + 2) + (v34 << 6) + (v34 >> 2) - 0x61C8864680B583EBLL) ^ v34;
          v7[2] = v31;
          *(v7 + 24) = 0;
        }

        else
        {
          v31 = v7[2];
        }

        if (v30 != v31 || v47 != *v7 || v48 != *(v7 + 1) || v49 != *(v7 + 1) || (v32 = *(v7 + 2), LOBYTE(v7) = v25, v50 != v32))
        {
          geo::c3mm::C3mmArea::getEntry(*v20, v60, v55);
          if (v56 > 3)
          {
            LOBYTE(v7) = 1;
          }

          else
          {
            LODWORD(v7) = 0x30201u >> (8 * v56);
          }
        }

        v37 = v26;
        v38 = v27;
        v39 = v28;
        v36 = -1;
        v40 = 0;
        v41 = 1;
        v42 = v29;
        v43 = v25;
        v44 = v35;
        v45 = 1;
        v46 = v7;
        geo::Cache<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue,md::FlyoverMetaData::TileCacheEntryHash,geo::LRUPolicy>::insert(a2 + 16, v61, &v36);
      }

      v20 += 3;
      if (v20 == v21)
      {
        LOBYTE(v17) = *(v7 + 1);
        v18 = *(v7 + 1);
        LODWORD(v19) = *(v7 + 2);
LABEL_12:
        v22 = *v7;
        v23 = v7[2];
        v24 = *(v7 + 24);
        v37 = v17;
        v38 = v18;
        v39 = v19;
        v36 = v22;
        v40 = v23;
        v41 = v24;
        v42 = a4;
        v43 = 2;
        LOBYTE(v44) = 0;
        v45 = 0;
        v46 = 2;
        geo::Cache<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue,md::FlyoverMetaData::TileCacheEntryHash,geo::LRUPolicy>::insert(a2 + 16, v61, &v36);
      }
    }

    if (a5)
    {
      std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(a2 + 11, v7, v7);
    }

    *this = 0;
    *(this + 56) = 0;
  }

  else
  {
    *(this + 4) = *(v11 + 60);
    *this = *(v11 + 28);
    *(this + 2) = v11[9];
    *(this + 24) = *(v11 + 80);
    *(this + 8) = *(v11 + 22);
    *(this + 36) = *(v11 + 92);
    *(this + 5) = v11[12];
    *(this + 48) = *(v11 + 104);
    *(this + 56) = 1;
  }
}

void geo::Cache<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue,md::FlyoverMetaData::TileCacheEntryHash,geo::LRUPolicy>::insert(uint64_t a1, geo::QuadTile *a2, char *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,std::__unordered_map_hasher<md::FlyoverMetaData::TileCacheEntry,std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,md::FlyoverMetaData::TileCacheEntryHash,std::equal_to<md::FlyoverMetaData::TileCacheEntry>,true>,std::__unordered_map_equal<md::FlyoverMetaData::TileCacheEntry,std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,std::equal_to<md::FlyoverMetaData::TileCacheEntry>,md::FlyoverMetaData::TileCacheEntryHash,true>,std::allocator<std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>>>::find<md::FlyoverMetaData::TileCacheEntry>((a1 + 8), a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 7);
    v8 = *v6;
    v7 = v6[1];
    *(v8 + 8) = v7;
    *v7 = v8;
    --*(a1 + 64);
    operator delete(v6);
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((a1 + 8), v5);
  }

  operator new();
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,std::__unordered_map_hasher<md::FlyoverMetaData::TileCacheEntry,std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,md::FlyoverMetaData::TileCacheEntryHash,std::equal_to<md::FlyoverMetaData::TileCacheEntry>,true>,std::__unordered_map_equal<md::FlyoverMetaData::TileCacheEntry,std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,std::equal_to<md::FlyoverMetaData::TileCacheEntry>,md::FlyoverMetaData::TileCacheEntryHash,true>,std::allocator<std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>>>::find<md::FlyoverMetaData::TileCacheEntry>(void *a1, geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = *(this + 2) ^ (2 * *(this + 8));
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *(this + 2) ^ (2 * *(this + 8));
    if (v5 >= *&v4)
    {
      v8 = v5 % *&v4;
    }
  }

  else
  {
    v8 = v5 & (*&v4 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (i = *v9; i; i = *i)
  {
    v11 = *(i + 1);
    if (v11 == v5)
    {
      if (std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>::operator()[abi:nn200100](i + 16, this))
      {
        return i;
      }
    }

    else
    {
      if (v7 > 1)
      {
        if (v11 >= *&v4)
        {
          v11 %= *&v4;
        }
      }

      else
      {
        v11 &= *&v4 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return i;
}

void md::FlyoverMetaData::adjustedTile(md::FlyoverMetaData *this, const geo::QuadTile *a2, uint64_t *a3, int a4)
{
  md::FlyoverMetaData::tileCacheLookup(v10, a2, a3, 0, a4);
  v5 = 0;
  v6 = 0;
  if (v15 == 1)
  {
    v5 = v10[0];
    v7 = v12;
    v8 = v13;
    v9 = v14;
    *(this + 1) = v10[1];
    *(this + 4) = v11;
    *(this + 2) = v7;
    *(this + 24) = v8;
    v6 = 1;
    *(this + 32) = v9;
  }

  *this = v5;
  *(this + 40) = v6;
}

__n128 geo::small_vector_base<md::FlyoverOctile>::small_vector_base(void *a1, void *a2, uint64_t a3)
{
  *a1 = a3;
  a1[1] = a3;
  a1[2] = a3;
  v3 = a2[2];
  a1[3] = a2[3];
  v4 = *a2;
  if (*a2 == v3)
  {
    a1[1] = a3 + a2[1] - v4;
    v7 = a2[1];
    if (v4 != v7)
    {
      v8 = 0;
      do
      {
        v9 = a3 + v8;
        *(v9 + 24) = 0;
        *(v9 + 4) = *(v4 + v8 + 4);
        *v9 = *(v4 + v8);
        *(v9 + 16) = *(v4 + v8 + 16);
        *(v9 + 24) = *(v4 + v8 + 24);
        result = *(v4 + v8 + 32);
        *(v9 + 32) = result;
        v8 += 48;
      }

      while (v4 + v8 != v7);
    }
  }

  else
  {
    v5 = a2[1];
    *a1 = v4;
    a1[1] = v5;
    result.n128_u64[0] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

void geo::small_vector_base<md::FlyoverOctile>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(48 * v9, 0x10000408903FB4CuLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = 0;
    do
    {
      v15 = &v10[v14];
      v15[24] = 0;
      *(v15 + 4) = *&v12[v14 + 4];
      *v15 = *&v12[v14];
      *(v15 + 2) = *&v12[v14 + 16];
      v15[24] = v12[v14 + 24];
      *(v15 + 2) = *&v12[v14 + 32];
      v14 += 48;
    }

    while (&v12[v14] != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = &v11[v4 - v3];
  *(a1 + 24) = v9;
}

void md::DaVinciGroundTileResourceFetcher::~DaVinciGroundTileResourceFetcher(md::DaVinciGroundTileResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F2BAAC(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    v27 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v27, a19);
  }

  if (a17 < 0)
  {
    v28 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v28, a12);
  }

  _Unwind_Resume(a1);
}

void *geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A4B8F8;
  a1[1] = v3;
  return a1;
}

uint64_t (***std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t (***result)(void), uint64_t (***a2)(void), id *a3))(void)
{
  if (result != a2)
  {
    v4 = result;
    v5 = a3;
    v6 = result;
    v7 = a3;
    do
    {
      *v7 = &unk_1F2A4B8F8;
      v7 += 3;
      a3[1] = 0;
      objc_storeStrong(a3 + 1, v6[1]);
      v8 = v6[1];
      v6[1] = 0;

      v6 += 3;
      v5 += 3;
      a3 = v7;
    }

    while (v6 != a2);
    v9 = v4;
    v10 = v4;
    do
    {
      v11 = *v10;
      v10 += 3;
      result = (*v11)(v4);
      v9 += 3;
      v4 = v10;
    }

    while (v10 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(uint64_t a1)
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

void geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4B8F8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4B8F8;

  return a1;
}

void ggl::Blur::XPipelineState::~XPipelineState(ggl::Blur::XPipelineState *this)
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

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::Blur::XPipelineSetup::~XPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Blur::YPipelineState::~YPipelineState(ggl::Blur::YPipelineState *this)
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

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::Blur::YPipelineSetup::~YPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Blur::Downsample4XPipelineState::~Downsample4XPipelineState(ggl::Blur::Downsample4XPipelineState *this)
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

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::Blur::Downsample4XPipelineSetup::~Downsample4XPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F2C554(_Unwind_Exception *a1)
{
  if (*(v2 - 65) < 0)
  {
    operator delete(*(v2 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_1B2F2CC50(_Unwind_Exception *a1)
{
  std::__shared_mutex_base::unlock_shared(v4);

  _Unwind_Resume(a1);
}

void md::mun::MuninViewDataRequester::requestDataKeys(md::mun::MuninViewDataRequester *this, const gdc::SelectionContext *a2)
{
  v2 = *(a2 + 10);
  v3 = *(a2 + 11);
  if (v2 != v3)
  {
    v5 = *(a2 + 1);
    do
    {
      md::mun::MuninMetadataContainer::activePoint(v9, *(a2 + 9), *v2);
      if (v13 == 1)
      {
        md::mun::ViewId::toLayerDataKey(v6, v2, v12, v11, -1073741827);
        gdc::LayerDataCollector::addDataKey(v5, v6);
        if (v7 != v8)
        {
          free(v7);
        }

        if (v13)
        {
          geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v10);
        }
      }

      v2 += 2;
    }

    while (v2 != v3);
  }
}

uint64_t md::DebugConsoleMapRect::DebugConsoleMapRect(uint64_t a1, uint64_t a2, float *a3, float64x2_t *a4, double *a5, double *a6)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_1B33B0730;
  *(a1 + 24) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 40) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 112) = 0x3FF0000000000000;
  *(a1 + 152) = 0x3FF0000000000000;
  *(a1 + 192) = 0x3FF0000000000000;
  *(a1 + 252) = 0;
  *(a1 + 236) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 220) = 1065353216;
  *(a1 + 240) = 1065353216;
  *(a1 + 260) = 1065353216;
  v10 = *a3;
  *(a1 + 8) = *a3;
  v11 = a3[1];
  *(a1 + 12) = v11;
  v12 = a3[2];
  *(a1 + 16) = v12;
  v13 = a3[3];
  *(a1 + 20) = v13;
  memset(&v49[4], 0, 56);
  *&v49[60] = 1065353216;
  *v49 = v12 - v10;
  *&v49[20] = v13 - v11;
  memset(&v42[20], 0, 28);
  *&v42[4] = 0u;
  *v42 = 1065353216;
  *&v42[20] = 1065353216;
  *&v42[40] = 1065353216;
  *&v42[48] = v10;
  *&v42[52] = v11;
  *&v43 = 0x3F80000000000000;
  gm::operator*<float,4,4,4>(v41, v42, v49);
  v14 = v41[1];
  *(a1 + 200) = v41[0];
  *(a1 + 216) = v14;
  v15 = v41[3];
  *(a1 + 232) = v41[2];
  *(a1 + 248) = v15;
  v39 = *a5;
  v38 = *a6;
  v16 = exp(a4->f64[1] * 6.28318531 + -3.14159265);
  v17 = atan(v16);
  v18 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v17 * 114.591559 + -90.0);
  v19.f64[0] = v39;
  *(a1 + 56) = v39;
  *(a1 + 64) = v38;
  v19.f64[1] = v38;
  __asm { FMOV            V2.2D, #0.5 }

  _Q0 = vmulq_f64(vmaxnmq_f64(vmulq_n_f64(v19, v18), 0), _Q2);
  _Q2 = vsubq_f64(*a4, _Q0);
  v40 = vaddq_f64(*a4, _Q0);
  *(a1 + 24) = _Q2;
  *(a1 + 40) = v40;
  _Q1 = vsubq_f64(v40, _Q2);
  _Q2.f64[0] = 0.5;
  __asm { FMLA            D0, D2, V1.D[1] }

  v28 = exp(_Q0.f64[0] * 6.28318531 + -3.14159265);
  v29 = atan(v28);
  *&v30 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v29 * 114.591559 + -90.0);
  v31 = *(a1 + 24);
  v32 = vsubq_f64(v40, v31);
  *(a1 + 56) = vdivq_f64(v32, vdupq_lane_s64(v30, 0));
  *&v42[40] = 0u;
  v44 = 0;
  v46 = 0;
  v43 = 0u;
  memset(&v42[8], 0, 32);
  *&v42[40] = v32.f64[1];
  *v42 = v32.f64[0];
  v45 = v32.f64[0];
  v47 = v31;
  v48 = xmmword_1B33B0740;
  gm::Matrix<double,4,4>::inverted<int,void>(v49, v42);
  v33 = v51;
  *(a1 + 136) = v50;
  *(a1 + 152) = v33;
  v34 = v53;
  *(a1 + 168) = v52;
  *(a1 + 184) = v34;
  v35 = *&v49[16];
  *(a1 + 72) = *v49;
  *(a1 + 88) = v35;
  v36 = *&v49[48];
  *(a1 + 104) = *&v49[32];
  *(a1 + 120) = v36;
  return a1;
}

double md::DebugConsoleMapRect::worldPointToPixel(uint64_t a1, __n128 a2)
{
  v6 = a2;
  v7 = 0;
  v3 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>((a1 + 72), &v6);
  *&v4 = v4;
  v6.n128_f32[0] = v3;
  *(v6.n128_u64 + 4) = LODWORD(v4);
  return gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(a1 + 200, &v6);
}

void md::DebugConsoleMapRect::drawPixelCircle(float32x2_t *a1, float32x2_t *a2, uint64_t a3, int a4)
{
  if (gm::Box<float,2>::intersects<int,void>(a1 + 1, a2))
  {
    v9 = 0;
    v10 = (*a1 + 96);
    do
    {
      v10[v9] = *(a3 + v9);
      ++v9;
    }

    while (v9 != 4);
    v11 = *a1;
    LODWORD(v8) = a2[1].i32[0];
    v11[2] = a2->f32[0];
    v11[3] = a2->f32[1];
    if (a4)
    {

      ggl::DebugConsole::drawCircleWithFill(v11, *&v8);
    }

    else
    {

      ggl::DebugConsole::drawCircle(v11, v8);
    }
  }
}

BOOL gm::Box<float,2>::intersects<int,void>(float32x2_t *a1, float32x2_t *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = a1[1].f32[v3];
    v5 = a1->f32[v3];
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 >= v5);
  if (v4 < v5)
  {
    return 0;
  }

  v6 = a2[1].f32[0];
  if (v6 == 0.0)
  {
    return 0;
  }

  v7 = vmaxnm_f32(vsub_f32(*a2, a1[1]), vsub_f32(*a1, *a2));
  if (v7.f32[0] >= v6 || v7.f32[1] >= v6)
  {
    return 0;
  }

  result = 1;
  if (v7.f32[0] > 0.0 && v7.f32[1] > 0.0)
  {
    return vaddv_f32(vmul_f32(v7, v7)) < (v6 * v6);
  }

  return result;
}

void md::DebugConsoleMapRect::drawWorldCircleWithPixelRadius(float32x2_t *a1, unsigned int a2, uint64_t a3, int a4, __n128 a5)
{
  v9 = md::DebugConsoleMapRect::worldPointToPixel(a1, a5);
  v11 = __PAIR64__(v10, LODWORD(v9));
  v12 = a2;
  md::DebugConsoleMapRect::drawPixelCircle(a1, &v11, a3, a4);
}

float md::DebugConsoleMapRect::drawPixelRect(float *a1, int8x16_t *a2, uint64_t a3, int a4, float32x4_t a5, float32x4_t a6)
{
  v7 = 0;
  v8 = a1 + 2;
  v9 = &a2->i64[1];
  v10 = 1;
  while (1)
  {
    result = a1[v7 + 4];
    if (result <= *&a2->i32[v7])
    {
      break;
    }

    result = v8[v7];
    if (result >= *(v9 + v7))
    {
      break;
    }

    v12 = v10;
    v10 = 0;
    v7 = 1;
    if ((v12 & 1) == 0)
    {
      v13 = 0;
      v14 = *a1 + 96;
      do
      {
        *(v14 + v13) = *(a3 + v13);
        ++v13;
      }

      while (v13 != 4);
      if (a4)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          a5.i32[0] = *(v9 + v16);
          a6.i32[0] = a2->i32[v16];
          if (v15)
          {
            break;
          }

          v15 = 1;
          v16 = 1;
        }

        while (a5.f32[0] >= a6.f32[0]);
        v26 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a6, a5), 0), *a2, vaddq_f32(*a2, xmmword_1B33B1450));
        v17 = gm::Box<float,2>::intersection(v8, &v26);
        v27 = v17;
        v28 = v18;
        v29 = v19;
        v30 = v20;
        v21 = *a1;
        v21[1].f32[0] = v17;
        v21[1].i32[1] = v18;
        return ggl::DebugConsole::drawRectangleWithFill(v21, &v29, v17);
      }

      else
      {
        v27 = gm::Box<float,2>::intersection(v8, a2);
        v28 = v22;
        v29 = v23;
        v30 = v24;
        v25 = *a1;
        *(v25 + 8) = v27;
        *(v25 + 12) = v22;
        return ggl::DebugConsole::drawRectangle(v25, &v29);
      }
    }
  }

  return result;
}

void md::DebugConsoleMapRect::drawWorldSegment(uint64_t *a1, float64x2_t *a2, uint64_t a3)
{
  v6 = 0;
  v28 = 1.0;
  v29 = 0.0;
  v7 = a1 + 3;
  v8 = a1 + 5;
  v9 = 1;
  while (1)
  {
    v10 = a2->f64[v6];
    if (v10 < *&v7[v6] || v10 >= *&v8[v6])
    {
      break;
    }

    v11 = v9;
    v9 = 0;
    v6 = 1;
    if ((v11 & 1) == 0)
    {
      v12 = 0;
      v13 = a2[1].f64[0] + a2->f64[0];
      v14 = 1;
      while (v13 >= *&v7[v12] && v13 < *&v8[v12])
      {
        v15 = v14;
        v14 = 0;
        v13 = a2[1].f64[1] + a2->f64[1];
        v12 = 1;
        if ((v15 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      break;
    }
  }

  if (gm::Ray<double,2>::segmentIntersectsBox(a2, v7, &v29, &v28, 2.22044605e-16))
  {
LABEL_11:
    v16 = 0;
    v17 = *a1 + 96;
    do
    {
      *(v17 + v16) = *(a3 + v16);
      ++v16;
    }

    while (v16 != 4);
    v18 = *a1;
    v25 = a2[1];
    v26 = *a2;
    v19 = md::DebugConsoleMapRect::worldPointToPixel(a1, vmlaq_n_f64(*a2, v25, v29));
    v20 = LODWORD(v19);
    v22 = v21;
    v23 = md::DebugConsoleMapRect::worldPointToPixel(a1, vmlaq_n_f64(v26, v25, v28));
    v27[0] = *&v23;
    v27[1] = v24;
    *(v18 + 8) = v20;
    *(v18 + 12) = v22;
    ggl::DebugConsole::drawLine(v18, v27, *&v23);
  }
}

void md::DebugConsoleMapRect::drawWorldRectWithMeterDimension(uint64_t a1, float64x2_t *a2, uint64_t a3, int a4, __n128 a5)
{
  v9 = (*(a1 + 16) - *(a1 + 8)) / *(a1 + 56);
  v10 = (*(a1 + 20) - *(a1 + 12)) / *(a1 + 64);
  *v11.i64 = md::DebugConsoleMapRect::worldPointToPixel(a1, a5);
  v12 = *a2;
  v13.f64[1] = a2->f64[1];
  v13.f64[0] = v9;
  __asm { FMOV            V3.2D, #0.5 }

  v12.f64[1] = v10;
  v19 = vmulq_f64(vmulq_f64(v13, _Q3), v12);
  v11.i32[1] = v20;
  v21 = vdupq_lane_s64(v11.i64[0], 0);
  v22 = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v19);
  v11.i64[0] = vsubq_f32(v11, v22).u64[0];
  v23 = vaddq_f32(v21, v22);
  v11.i64[1] = v23.i64[1];
  v24 = v11;
  md::DebugConsoleMapRect::drawPixelRect(a1, &v24, a3, a4, v11, v23);
}

void md::DebugConsoleMapRect::drawWorldRect(float *result, __n128 *a2, uint64_t a3, int a4)
{
  v8 = 0;
  v9 = 1;
  while (a2[1].n128_f64[v8] > *&result[2 * v8 + 6] && a2->n128_f64[v8] < *&result[2 * v8 + 10])
  {
    v10 = v9;
    v9 = 0;
    v8 = 1;
    if ((v10 & 1) == 0)
    {
      v11 = md::DebugConsoleMapRect::worldPointToPixel(result, *a2);
      v12 = LODWORD(v11);
      v14 = v13;
      *v15.i64 = md::DebugConsoleMapRect::worldPointToPixel(result, a2[1]);
      v17.i64[0] = __PAIR64__(v14, v12);
      v17.i64[1] = __PAIR64__(v16.u32[0], v15.u32[0]);
      md::DebugConsoleMapRect::drawPixelRect(result, &v17, a3, a4, v15, v16);
      return;
    }
  }
}

float32x2_t *md::DebugConsoleMapRect::drawWorldSymbol(float32x2_t *result, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = 0;
  for (i = 1; ; i = 0)
  {
    v7 = a2->n128_f64[v5];
    if (v7 < *&result[v5 + 3] || v7 >= *&result[v5 + 5])
    {
      break;
    }

    v8 = i;
    v5 = 1;
    if ((v8 & 1) == 0)
    {
      v9 = 0;
      v10 = *result + 96;
      do
      {
        *(v10 + v9) = *(a4 + v9);
        ++v9;
      }

      while (v9 != 4);
      v11 = *result;
      v12 = md::DebugConsoleMapRect::worldPointToPixel(result, *a2);
      v11[1].i32[0] = LODWORD(v12);
      v11[1].i32[1] = v13;

      return ggl::DebugConsole::drawSymbol(v11, v4);
    }
  }

  return result;
}

void md::DebugConsoleMapRect::drawWorldArrow(float32x2_t *a1, double *a2, uint64_t a3, __n128 a4, float a5, float a6)
{
  v11 = md::DebugConsoleMapRect::worldPointToPixel(a1, a4);
  v12 = *&v11;
  v14 = v13;
  md::DebugConsoleMapRect::drawWorldCircleWithPixelRadius(a1, 5u, a3, 1, a4);
  v15 = *a2;
  v16 = __sincosf_stret(v15);
  v17 = 1.0 / sqrtf((v16.__cosval * v16.__cosval) + (v16.__sinval * v16.__sinval));
  v21 = v12 - ((a5 * 0.25) * (v17 * v16.__cosval));
  v22 = v14 - ((v17 * v16.__sinval) * (a5 * 0.25));
  v18 = (a6 * 0.5) * (v17 * v16.__cosval);
  v19 = (v17 * v16.__sinval) * (a6 * 0.5);
  v23 = v21 - v19;
  v24 = v22 + v18;
  v25 = v21 + ((a5 * 0.75) * (v17 * v16.__cosval));
  v26 = v22 + ((a5 * 0.75) * (v17 * v16.__sinval));
  v27 = v21 + v19;
  v28 = v22 - v18;
  v29 = v21;
  v30 = v22;
  ggl::DebugConsole::drawLineStrip(*a1, &v21, 5uLL);
}

double md::StandardGlobeLabelMapTile::assignWorldPointToLabel(md::StandardGlobeLabelMapTile *this, md::Label *a2)
{
  v3 = (*(**(a2 + 1) + 120))(*(a2 + 1), a2 + 48, *(this + 9), *(this + 70));
  v4 = md::LabelPoint::geocentricPoint(v3);
  v11 = *v4;
  v12 = *(v4 + 2);
  md::LabelPoint::geocentricPoint(v4);
  for (i = 0; i != 6; i += 2)
  {
    *&v13[i / 2] = *&md::GeocentricNormal(geo::Geocentric<double> const&)::oneOverRadiiSquared[i / 2] * *&v3[i];
  }

  v13[0] = gm::Matrix<double,3,1>::normalized<int,void>(v13);
  v13[1] = v6;
  v13[2] = v7;
  v8 = v3[10];
  v9 = v8 != 3.4028e38;
  if (v8 == 3.4028e38)
  {
    v8 = 0.0;
  }

  return md::Label::setWorldPoint(a2, &v11, v13, LODWORD(v8) | (v9 << 32));
}

double md::StandardGlobeLabelMapTile::worldPointFromMercatorPoint(uint64_t a1, double *a2)
{
  v2 = *a2 * 6.28318531;
  v3 = exp(a2[1] * 6.28318531 + -3.14159265);
  v4 = atan(v3);
  v5 = fmod(v2, 6.28318531);
  v6 = fmod(v5 + 6.28318531, 6.28318531) + -3.14159265;
  v7 = __sincos_stret(v4 * 2.0 + -1.57079633);
  return 6378137.0 / sqrt(v7.__sinval * v7.__sinval * -0.00669437999 + 1.0) * v7.__cosval * __sincos_stret(v6).__cosval;
}

void md::StandardGlobeLabelMapTile::~StandardGlobeLabelMapTile(md::StandardGlobeLabelMapTile *this)
{
  md::StandardLabelMapTile::~StandardLabelMapTile(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ta2::TextureAtlas::debugDisplay(ta2::TextureAtlas *this, unsigned int a2)
{
  v2 = *(this + 14);
  if (a2 >= ((*(this + 15) - v2) >> 4))
  {
    return 0;
  }

  else
  {
    return *(*(v2 + 16 * a2) + 192);
  }
}

uint64_t ta2::TextureAtlas::debugString@<X0>(ta2::TextureAtlas *this@<X0>, void *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v33);
  v5 = *(this + 14);
  v4 = *(this + 15);
  if (v4 != v5)
  {
    if (v4 - v5 >= 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  __dst = a2;
  v6 = v33;
  *(&v33 + *(v33 - 24) + 8) = *(&v33 + *(v33 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v35[0].__locale_ + *(v6 - 24)) = 0;
  v7 = *(this + 31);
  if (v7 >= 0)
  {
    v8 = this + 8;
  }

  else
  {
    v8 = *(this + 1);
  }

  if (v7 >= 0)
  {
    v9 = *(this + 31);
  }

  else
  {
    v9 = *(this + 2);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, v8, v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, "[T2](pages=", 11);
  v10 = MEMORY[0x1B8C61CB0](&v33, (*(this + 15) - *(this + 14)) >> 4);
  v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, " txts=", 6);
  v12 = MEMORY[0x1B8C61CB0](v11, 0);
  v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, " area=", 6);
  v14 = MEMORY[0x1B8C61C90](v13, 0);
  v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, "kB", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, " usage%=", 8);
  v16 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, ") ", 2);
  if (*(this + 15) != *(this + 14))
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v20 = *(8 * v18);
      v19 = *(8 * v18 + 4);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, "\n\t", 2);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, "pg:", 3);
      v21 = MEMORY[0x1B8C61CB0](&v33, v18);
      v22 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, " txts=", 6);
      MEMORY[0x1B8C61CB0](v22, (*(*(*(this + 14) + v17) + 368) - *(*(*(this + 14) + v17) + 360)) >> 4);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, " area(", 6);
      v23 = MEMORY[0x1B8C61C90](&v33, v20);
      v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, "x", 1);
      v25 = MEMORY[0x1B8C61C90](v24, v19);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, ")=", 2);
      v26 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, "kB", 2);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, " usage%=", 8);
      std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, ") ", 2);
      ++v18;
      v17 += 16;
    }

    while (v18 < (*(this + 15) - *(this + 14)) >> 4);
  }

  if ((v40 & 0x10) != 0)
  {
    v29 = v39;
    v27 = __dst;
    if (v39 < v36)
    {
      v39 = v36;
      v29 = v36;
    }

    locale = v35[4].__locale_;
  }

  else
  {
    v27 = __dst;
    if ((v40 & 8) == 0)
    {
      v28 = 0;
      *(__dst + 23) = 0;
      goto LABEL_26;
    }

    locale = v35[1].__locale_;
    v29 = v35[3].__locale_;
  }

  v28 = v29 - locale;
  if ((v29 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v28 >= 0x17)
  {
    operator new();
  }

  v27[23] = v28;
  if (v28)
  {
    memmove(v27, locale, v28);
  }

LABEL_26:
  v27[v28] = 0;
  v33 = *MEMORY[0x1E69E54E8];
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v34 = MEMORY[0x1E69E5548] + 16;
  if (v38 < 0)
  {
    operator delete(__p);
  }

  v34 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v35);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v41);
}

void ta2::TextureAtlas::allocateTextureRegion(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v4 = *(*a2 + 20);
  v5 = *(*a2 + 16) + 2;
  v6 = 0;
  if (a3)
  {
    v7 = 1;
    do
    {
      v8 = v5;
      v9 = *(a1 + 64 + 4 * v6);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v7 = 0;
      v5 = v4 + 2;
      v6 = 1;
    }

    while (v9 >= v8);
  }

  else
  {
    v10 = 1;
    do
    {
      v8 = v5;
      v9 = *(a1 + 56 + 4 * v6);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v10 = 0;
      v5 = v4 + 2;
      v6 = 1;
    }

    while (v9 >= v8);
  }

  if (v9 >= v8)
  {
    operator new();
  }

  *a4 = 0;
  a4[1] = 0;
}

os_log_t ___ZL30GEOGetVectorKitTextureAtlasLogv_block_invoke_17135()
{
  result = os_log_create("com.apple.VectorKit", "TextureAtlas");
  GEOGetVectorKitTextureAtlasLog(void)::log = result;
  return result;
}

void std::__shared_ptr_emplace<ta2::TextureAtlasRegion>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A16E80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ta2::TextureAtlas::createRegionLoadItems(void *a1, uint64_t *a2)
{
  std::vector<ta2::TextureAtlas::RegionLoadItem>::reserve(a2, 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) + ((a1[1] - *a1) >> 4));
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = *v4;
      if (*(*v4 + 128) != 2)
      {
        v9 = 0;
        memset(v8, 0, sizeof(v8));
        v7 = v4[1];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          *&v8[0] = v6;
          *(&v8[0] + 1) = v7;
          std::vector<ta2::TextureAtlas::RegionLoadItem>::push_back[abi:nn200100](a2, v8);
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        else
        {
          *&v8[0] = v6;
          std::vector<ta2::TextureAtlas::RegionLoadItem>::push_back[abi:nn200100](a2, v8);
        }
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

uint64_t **std::__tree<std::shared_ptr<ta2::TextureAtlasRegion>>::__emplace_hint_unique_key_args<std::shared_ptr<ta2::TextureAtlasRegion>,std::shared_ptr<ta2::TextureAtlasRegion> const&>(uint64_t **result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v4 = (result + 1);
  if (result + 1 == a2 || (v5 = a2[4], v5 > a3))
  {
    v6 = *a2;
    if (*result == a2)
    {
      v8 = a2;
LABEL_16:
      if (v6)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a2;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (v8[4] < a3)
    {
      goto LABEL_16;
    }

    v14 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v15 = v14;
        v16 = v14[4];
        if (v16 <= a3)
        {
          break;
        }

        v14 = *v15;
        v4 = v15;
        if (!*v15)
        {
          goto LABEL_38;
        }
      }

      if (v16 >= a3)
      {
        break;
      }

      v4 = v15 + 1;
      v14 = v15[1];
      if (!v14)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v9 = v4;
    goto LABEL_19;
  }

  if (v5 >= a3)
  {
    return result;
  }

  v9 = a2 + 1;
  v10 = a2[1];
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a2;
    do
    {
      v17 = v11;
      v11 = v11[2];
    }

    while (*v11 != v17);
  }

  if (v11 != v4 && v11[4] <= a3)
  {
    v18 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = v18[4];
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v19;
        v4 = v19;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        goto LABEL_40;
      }

      v4 = v19 + 1;
      v18 = v19[1];
      if (!v18)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  if (!*v9)
  {
LABEL_38:
    operator new();
  }

  return result;
}

void ta2::TextureAtlasPage::releaseRegions(ta2::TextureAtlasPage *this, uint64_t a2)
{
  *(this + 27) = a2;
  v2 = *(this + 45);
  for (i = *(this + 46); v2 != i; v2 += 2)
  {
    v4 = *v2;
    if (!*(*v2 + 88) && !*(v4 + 32))
    {
      *(v4 + 32) = *(v4 + 24);
      v5 = *(v4 + 56);
      v6 = *(v4 + 64);
      *(v4 + 40) = v5 - 1;
      *(v4 + 44) = (v5 - 0x100000000) >> 32;
      *(v4 + 48) = v6 + 1;
      *(v4 + 52) = (v6 + 0x100000000) >> 32;
    }

    *(v4 + 129) = 0;
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 45);
}

void std::__introsort<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,false>(__int128 *a1, __int128 *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v8 = (a2 - 40);
    v130 = (a2 - 120);
    v132 = a2 - 5;
    v9 = a1;
    v147 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = a2 - v9;
          v11 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v9) >> 3);
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1, (a1 + 40), v8);
                return;
              case 4:
                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1, (a1 + 40), a1 + 5);
                v58 = *(a2 - 5);
                v57 = (a2 - 40);
                if (*(v58 + 68) - *(v58 + 60) <= (*(*(a1 + 10) + 68) - *(*(a1 + 10) + 60)))
                {
                  return;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(a1 + 5, v57);
                if (*(*(a1 + 10) + 68) - *(*(a1 + 10) + 60) <= (*(*(a1 + 5) + 68) - *(*(a1 + 5) + 60)))
                {
                  return;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>((a1 + 40), a1 + 5);
                if (*(*(a1 + 5) + 68) - *(*(a1 + 5) + 60) <= (*(*a1 + 68) - *(*a1 + 60)))
                {
                  return;
                }

                v56 = (a1 + 40);
                v55 = a1;
                goto LABEL_76;
              case 5:

                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1, (a1 + 40), a1 + 5, (a1 + 120), v8);
                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            if (v11 == 2)
            {
              v54 = *(a2 - 5);
              v53 = (a2 - 40);
              if (*(v54 + 68) - *(v54 + 60) <= (*(*a1 + 68) - *(*a1 + 60)))
              {
                return;
              }

              v55 = a1;
              v56 = v53;
LABEL_76:

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(v55, v56);
              return;
            }
          }

          if (v10 <= 959)
          {
            v59 = (a1 + 40);
            v61 = a1 == a2 || v59 == a2;
            if (a4)
            {
              if (!v61)
              {
                v62 = 0;
                v63 = a1;
                do
                {
                  v64 = v59;
                  v65 = *(v63 + 5);
                  v66 = *v63;
                  if (*(v65 + 68) - *(v65 + 60) > (*(*v63 + 68) - *(*v63 + 60)))
                  {
                    v67 = *(v63 + 6);
                    *v64 = 0;
                    *(v64 + 1) = 0;
                    v143 = *(v63 + 56);
                    v68 = v62;
                    v69 = *(v63 + 9);
                    while (1)
                    {
                      v70 = a1 + v68;
                      v71 = *(a1 + v68 + 8);
                      *v70 = 0;
                      *(v70 + 1) = 0;
                      v72 = *(a1 + v68 + 48);
                      *(v70 + 5) = v66;
                      *(v70 + 6) = v71;
                      if (v72)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v72);
                      }

                      *(v70 + 14) = *(v70 + 4);
                      *(v70 + 60) = *(v70 + 20);
                      *(v70 + 17) = *(v70 + 7);
                      *(v70 + 9) = *(v70 + 4);
                      if (!v68)
                      {
                        break;
                      }

                      v66 = *(a1 + v68 - 40);
                      v68 -= 40;
                      if (*(v65 + 68) - *(v65 + 60) <= (*(v66 + 68) - *(v66 + 60)))
                      {
                        v73 = (a1 + v68 + 40);
                        goto LABEL_103;
                      }
                    }

                    v73 = a1;
LABEL_103:
                    v74 = *(v73 + 1);
                    *v73 = v65;
                    *(v73 + 1) = v67;
                    if (v74)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v74);
                    }

                    v73[1] = v143;
                    *(v73 + 4) = v69;
                    a2 = v147;
                  }

                  v59 = (v64 + 40);
                  v62 += 40;
                  v63 = v64;
                }

                while ((v64 + 40) != a2);
              }
            }

            else if (!v61)
            {
              v120 = a1 + 1;
              do
              {
                v121 = v59;
                v122 = *(a1 + 5);
                v123 = *a1;
                if (*(v122 + 68) - *(v122 + 60) > (*(*a1 + 68) - *(*a1 + 60)))
                {
                  v124 = *(a1 + 6);
                  *v121 = 0;
                  *(v121 + 1) = 0;
                  v146 = *(a1 + 56);
                  v125 = v120;
                  v126 = *(a1 + 9);
                  do
                  {
                    v127 = *(v125 - 1);
                    *(v125 - 2) = 0;
                    *(v125 - 1) = 0;
                    v128 = v125[4];
                    v125[3] = v123;
                    v125[4] = v127;
                    if (v128)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v128);
                    }

                    *(v125 + 10) = *v125;
                    *(v125 + 44) = *(v125 + 4);
                    *(v125 + 13) = *(v125 + 3);
                    v125[7] = v125[2];
                    v123 = *(v125 - 7);
                    v125 -= 5;
                  }

                  while (*(v122 + 68) - *(v122 + 60) > (*(v123 + 68) - *(v123 + 60)));
                  v129 = v125[4];
                  v125[3] = v122;
                  v125[4] = v124;
                  if (v129)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v129);
                  }

                  *(v125 + 5) = v146;
                  v125[7] = v126;
                  a2 = v147;
                }

                v59 = (v121 + 40);
                v120 += 5;
                a1 = v121;
              }

              while ((v121 + 40) != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v75 = v12 >> 1;
              v76 = v12 >> 1;
              do
              {
                v77 = v76;
                if (v75 >= v76)
                {
                  v78 = (2 * v76) | 1;
                  v79 = a1 + 5 * v78;
                  if (2 * v77 + 2 >= v11)
                  {
                    v80 = *v79;
                  }

                  else
                  {
                    v80 = *v79;
                    if (*(*v79 + 68) - *(*v79 + 60) > (*(v79[5] + 68) - *(v79[5] + 60)))
                    {
                      v80 = v79[5];
                      v79 += 5;
                      v78 = 2 * v77 + 2;
                    }
                  }

                  v81 = a1 + 5 * v77;
                  v82 = *v81;
                  if (*(v80 + 68) - *(v80 + 60) <= (*(*v81 + 68) - *(*v81 + 60)))
                  {
                    v83 = v81[1];
                    *v81 = 0;
                    v81[1] = 0;
                    v144 = *(v81 + 1);
                    v133 = v83;
                    v138 = v81[4];
                    v84 = *v79;
                    do
                    {
                      v85 = v79;
                      v86 = v79[1];
                      *v85 = 0;
                      v85[1] = 0;
                      v87 = v81[1];
                      *v81 = v84;
                      v81[1] = v86;
                      if (v87)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v87);
                      }

                      *(v81 + 4) = *(v85 + 4);
                      *(v81 + 5) = *(v85 + 5);
                      *(v81 + 6) = *(v85 + 6);
                      *(v81 + 7) = *(v85 + 7);
                      v81[4] = v85[4];
                      if (v75 < v78)
                      {
                        break;
                      }

                      v79 = a1 + 5 * ((2 * v78) | 1);
                      if (2 * v78 + 2 >= v11)
                      {
                        v84 = *v79;
                        v78 = (2 * v78) | 1;
                      }

                      else
                      {
                        v84 = *v79;
                        if (*(*v79 + 68) - *(*v79 + 60) <= (*(v79[5] + 68) - *(v79[5] + 60)))
                        {
                          v78 = (2 * v78) | 1;
                        }

                        else
                        {
                          v84 = v79[5];
                          v79 += 5;
                          v78 = 2 * v78 + 2;
                        }
                      }

                      v81 = v85;
                    }

                    while (*(v84 + 68) - *(v84 + 60) <= (*(v82 + 68) - *(v82 + 60)));
                    v88 = v85[1];
                    *v85 = v82;
                    v85[1] = v133;
                    if (v88)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v88);
                    }

                    *(v85 + 1) = v144;
                    v85[4] = v138;
                  }
                }

                v76 = v77 - 1;
              }

              while (v77);
              v89 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 3);
              v90 = v147;
              do
              {
                v91 = 0;
                v92 = v90;
                v94 = *a1;
                v93 = *(a1 + 1);
                *a1 = 0;
                *(a1 + 1) = 0;
                v148 = *(a1 + 4);
                v145 = *(a1 + 5);
                v139 = *(a1 + 6);
                v134 = *(a1 + 7);
                v95 = a1;
                v131 = *(a1 + 4);
                do
                {
                  v96 = v95 + 40 * v91;
                  v97 = v96 + 40;
                  if (2 * v91 + 2 >= v89)
                  {
                    v98 = *v97;
                    v91 = (2 * v91) | 1;
                  }

                  else
                  {
                    v100 = *(v96 + 10);
                    v99 = v96 + 80;
                    v98 = v100;
                    if (*(*(v99 - 5) + 68) - *(*(v99 - 5) + 60) > (*(v100 + 68) - *(v100 + 60)))
                    {
                      v97 = v99;
                      v91 = 2 * v91 + 2;
                    }

                    else
                    {
                      v98 = *(v99 - 5);
                      v91 = (2 * v91) | 1;
                    }
                  }

                  v101 = *(v97 + 1);
                  *v97 = 0;
                  *(v97 + 1) = 0;
                  v102 = *(v95 + 1);
                  *v95 = v98;
                  *(v95 + 1) = v101;
                  if (v102)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v102);
                  }

                  *(v95 + 4) = *(v97 + 4);
                  *(v95 + 5) = *(v97 + 5);
                  *(v95 + 6) = *(v97 + 6);
                  *(v95 + 7) = *(v97 + 7);
                  *(v95 + 4) = *(v97 + 4);
                  v95 = v97;
                }

                while (v91 <= ((v89 - 2) >> 1));
                v90 = (v92 - 40);
                if (v97 == v92 - 40)
                {
                  v118 = *(v97 + 1);
                  *v97 = v94;
                  *(v97 + 1) = v93;
                  if (v118)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v118);
                  }

                  *(v97 + 4) = v148;
                  *(v97 + 5) = v145;
                  *(v97 + 6) = v139;
                  *(v97 + 7) = v134;
                  *(v97 + 4) = v131;
                }

                else
                {
                  v103 = *(v92 - 40);
                  *v90 = 0;
                  *(v92 - 4) = 0;
                  v104 = *(v97 + 1);
                  *v97 = v103;
                  if (v104)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v104);
                  }

                  *(v97 + 4) = *(v92 - 6);
                  *(v97 + 5) = *(v92 - 5);
                  *(v97 + 6) = *(v92 - 4);
                  *(v97 + 7) = *(v92 - 3);
                  *(v97 + 4) = *(v92 - 1);
                  v105 = *(v92 - 4);
                  *(v92 - 5) = v94;
                  *(v92 - 4) = v93;
                  if (v105)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v105);
                  }

                  *(v92 - 6) = v148;
                  *(v92 - 5) = v145;
                  *(v92 - 4) = v139;
                  *(v92 - 3) = v134;
                  *(v92 - 1) = v131;
                  v106 = v97 + 40 - a1;
                  if (v106 >= 41)
                  {
                    v107 = (-2 - 0x3333333333333333 * (v106 >> 3)) >> 1;
                    v108 = a1 + 5 * v107;
                    v109 = *v97;
                    if (*(*v108 + 68) - *(*v108 + 60) > (*(*v97 + 68) - *(*v97 + 60)))
                    {
                      v110 = (v92 - 40);
                      v111 = *(v97 + 1);
                      *v97 = 0;
                      *(v97 + 1) = 0;
                      v149 = *(v97 + 1);
                      v112 = *(v97 + 4);
                      v113 = *v108;
                      do
                      {
                        v114 = v108;
                        v115 = v108[1];
                        *v114 = 0;
                        v114[1] = 0;
                        v116 = *(v97 + 1);
                        *v97 = v113;
                        *(v97 + 1) = v115;
                        if (v116)
                        {
                          std::__shared_weak_count::__release_shared[abi:nn200100](v116);
                        }

                        *(v97 + 4) = *(v114 + 4);
                        *(v97 + 5) = *(v114 + 5);
                        *(v97 + 6) = *(v114 + 6);
                        *(v97 + 7) = *(v114 + 7);
                        *(v97 + 4) = v114[4];
                        if (!v107)
                        {
                          break;
                        }

                        v107 = (v107 - 1) >> 1;
                        v108 = a1 + 5 * v107;
                        v113 = *v108;
                        v97 = v114;
                      }

                      while (*(*v108 + 68) - *(*v108 + 60) > (*(v109 + 68) - *(v109 + 60)));
                      v117 = v114[1];
                      *v114 = v109;
                      v114[1] = v111;
                      if (v117)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v117);
                      }

                      *(v114 + 1) = v149;
                      v114[4] = v112;
                      v90 = v110;
                    }
                  }
                }
              }

              while (v89-- > 2);
            }

            return;
          }

          v13 = (a1 + 40 * (v11 >> 1));
          if (v10 < 0x1401)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(v13, a1, v8);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1, v13, v8);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>((a1 + 40), (v13 - 40), v132);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1 + 5, (v13 + 40), v130);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>((v13 - 40), v13, (v13 + 40));
            v14 = *a1;
            v140 = a1[1];
            *a1 = 0;
            *(a1 + 1) = 0;
            v15 = *(a1 + 4);
            v16 = *v13;
            *v13 = 0;
            *(v13 + 1) = 0;
            v17 = *(a1 + 1);
            *a1 = v16;
            if (v17)
            {
              v135 = v14;
              std::__shared_weak_count::__release_shared[abi:nn200100](v17);
              v14 = v135;
            }

            *(a1 + 2) = *(v13 + 2);
            *(a1 + 3) = *(v13 + 3);
            *(a1 + 4) = *(v13 + 4);
            v18 = *(v13 + 1);
            *v13 = v14;
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v18);
            }

            v13[1] = v140;
            *(v13 + 4) = v15;
          }

          --a3;
          if ((a4 & 1) != 0 || *(*(a1 - 5) + 68) - *(*(a1 - 5) + 60) > (*(*a1 + 68) - *(*a1 + 60)))
          {
            break;
          }

          v38 = *a1;
          *a1 = 0;
          *(a1 + 1) = 0;
          v142 = v38;
          v39 = v38;
          v40 = *(v38 + 68) - *(v38 + 60);
          if (v40 <= *(*v8 + 68) - *(*v8 + 60))
          {
            v42 = (a1 + 40);
            do
            {
              v9 = v42;
              if (v42 >= a2)
              {
                break;
              }

              v42 = (v42 + 40);
            }

            while (v40 <= *(*v9 + 68) - *(*v9 + 60));
          }

          else
          {
            v9 = a1;
            do
            {
              v41 = *(v9 + 5);
              v9 = (v9 + 40);
            }

            while (v40 <= *(v41 + 68) - *(v41 + 60));
          }

          v43 = a2;
          if (v9 < a2)
          {
            v43 = a2;
            do
            {
              v44 = *(v43 - 5);
              v43 = (v43 - 40);
            }

            while (v40 > *(v44 + 68) - *(v44 + 60));
          }

          v137 = a1[1];
          v45 = *(a1 + 4);
          while (v9 < v43)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(v9, v43);
            v46 = *(v39 + 68) - *(v39 + 60);
            do
            {
              v47 = *(v9 + 5);
              v9 = (v9 + 40);
            }

            while (v46 <= *(v47 + 68) - *(v47 + 60));
            do
            {
              v48 = *(v43 - 5);
              v43 = (v43 - 40);
            }

            while (v46 > *(v48 + 68) - *(v48 + 60));
          }

          v49 = (v9 - 40);
          if ((v9 - 40) != a1)
          {
            v50 = *v49;
            *v49 = 0;
            *(v9 - 4) = 0;
            v51 = *(a1 + 1);
            *a1 = v50;
            if (v51)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v51);
            }

            *(a1 + 4) = *(v9 - 6);
            *(a1 + 5) = *(v9 - 5);
            *(a1 + 6) = *(v9 - 4);
            *(a1 + 7) = *(v9 - 3);
            *(a1 + 4) = *(v9 - 1);
          }

          v52 = *(v9 - 4);
          *(v9 - 40) = v142;
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v52);
          }

          a4 = 0;
          *(v9 - 24) = v137;
          *(v9 - 1) = v45;
        }

        v136 = *a1;
        v19 = *a1;
        v141 = a1[1];
        *a1 = 0;
        *(a1 + 1) = 0;
        v20 = *(a1 + 4);
        v21 = v19;
        v22 = *(v19 + 68) - *(v19 + 60);
        v23 = a1;
        do
        {
          v24 = v23;
          v25 = *(v23 + 5);
          v23 = (v23 + 40);
        }

        while (*(v25 + 68) - *(v25 + 60) > v22);
        v26 = v147;
        if (v24 == a1)
        {
          v26 = v147;
          do
          {
            if (v23 >= v26)
            {
              break;
            }

            v28 = *(v26 - 5);
            v26 = (v26 - 40);
          }

          while (*(v28 + 68) - *(v28 + 60) <= v22);
        }

        else
        {
          do
          {
            v27 = *(v26 - 5);
            v26 = (v26 - 40);
          }

          while (*(v27 + 68) - *(v27 + 60) <= v22);
        }

        if (v23 >= v26)
        {
          v9 = v23;
        }

        else
        {
          v29 = v26;
          v9 = v23;
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(v9, v29);
            v30 = *(v21 + 68) - *(v21 + 60);
            do
            {
              v31 = *(v9 + 5);
              v9 = (v9 + 40);
            }

            while (*(v31 + 68) - *(v31 + 60) > v30);
            do
            {
              v32 = *(v29 - 5);
              v29 = (v29 - 40);
            }

            while (*(v32 + 68) - *(v32 + 60) <= v30);
          }

          while (v9 < v29);
        }

        v33 = (v9 - 40);
        a2 = v147;
        if ((v9 - 40) != a1)
        {
          v34 = *v33;
          *v33 = 0;
          *(v9 - 4) = 0;
          v35 = *(a1 + 1);
          *a1 = v34;
          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v35);
          }

          *(a1 + 4) = *(v9 - 6);
          *(a1 + 5) = *(v9 - 5);
          *(a1 + 6) = *(v9 - 4);
          *(a1 + 7) = *(v9 - 3);
          *(a1 + 4) = *(v9 - 1);
        }

        v36 = *(v9 - 4);
        *(v9 - 40) = v136;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v36);
        }

        *(v9 - 24) = v141;
        *(v9 - 1) = v20;
        if (v23 >= v26)
        {
          break;
        }

LABEL_45:
        std::__introsort<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,false>(a1, v9 - 5, a3, a4 & 1);
        a4 = 0;
      }

      v37 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*>(a1, v9 - 40);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*>(v9, v147))
      {
        break;
      }

      if (!v37)
      {
        goto LABEL_45;
      }
    }

    a2 = (v9 - 40);
    if (!v37)
    {
      continue;
    }

    break;
  }
}

void ta2::TextureAtlas::createFailedRegionLoadItems(void *a1, uint64_t *a2)
{
  std::vector<ta2::TextureAtlas::RegionLoadItem>::reserve(a2, a1[33] - 0x3333333333333333 * ((a2[1] - *a2) >> 3));
  v4 = a1[31];
  v5 = a1 + 32;
  if (v4 != a1 + 32)
  {
    do
    {
      if (*(v4[4] + 129) == 1)
      {
        v15 = 0;
        v13 = 0u;
        v14 = 0u;
        v6 = v4[4];
        v7 = v4[5];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          *&v13 = v6;
          *(&v13 + 1) = v7;
          v6 = v4[4];
        }

        else
        {
          *&v13 = v4[4];
        }

        v15 = v6[3];
        v9 = v6[7];
        v8 = v6[8];
        LODWORD(v14) = v9 - 1;
        DWORD1(v14) = (v9 - 0x100000000) >> 32;
        DWORD2(v14) = v8 + 1;
        HIDWORD(v14) = (v8 + 0x100000000) >> 32;
        std::vector<ta2::TextureAtlas::RegionLoadItem>::push_back[abi:nn200100](a2, &v13);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }
      }

      v10 = v4[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v4[2];
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void ta2::TextureAtlas::loadRegions(uint64_t a1, uint32x4_t *a2, __n128 *a3, double a4, uint32x4_t a5)
{
  v101 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v5 = a3;
    v6 = a2;
    v8 = xmmword_1B33B1490;
    do
    {
      v9 = v6[2].i64[0];
      if (v9)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = v6[1].u32[v11 + 2];
          v13 = v6[1].u32[v11];
          if (v10)
          {
            break;
          }

          v10 = 1;
          v11 = 1;
        }

        while (v12 >= v13);
        v8.i32[0] = v12;
        a5.i32[0] = v13;
        v14 = vdupq_lane_s32(*&vcgtq_u32(a5, v8), 0);
        a5 = v6[1];
        v8 = vbslq_s8(v14, a5, vaddq_s32(a5, xmmword_1B33B1490));
        v15 = v8.i32[0];
        v16 = v8.i32[2];
        v17 = v6->i64[0];
        v18 = HIDWORD(v8.i64[1]);
        v19 = HIDWORD(v8.i64[0]);
        if (!*(v6->i64[0] + 129))
        {
          *(v17 + 24) = v9;
          *(v17 + 56) = v8;
          a5.i64[0] = v9[23];
          a5.i64[1] = a5.i64[0];
          v8 = vmulq_f32(a5, vcvtq_f32_u32(v8));
          *(v17 + 129) = 1;
          *(v17 + 72) = v8;
          v20 = v9[46];
          v21 = v9[47];
          if (v20 >= v21)
          {
            v24 = v9[45];
            v25 = (v20 - v24) >> 4;
            v26 = v25 + 1;
            if ((v25 + 1) >> 60)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v27 = v21 - v24;
            if (v27 >> 3 > v26)
            {
              v26 = v27 >> 3;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF0)
            {
              v28 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            v96 = (v9 + 45);
            if (v28)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v28);
            }

            v29 = 16 * v25;
            v30 = *v6;
            *(16 * v25) = *v6;
            if (v30.i64[1])
            {
              atomic_fetch_add_explicit((v30.i64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v23 = (v29 + 16);
            v31 = v9[45];
            v32 = v9[46] - v31;
            v33 = v29 - v32;
            memcpy((v29 - v32), v31, v32);
            v34 = v9[45];
            v9[45] = v33;
            v9[46] = v23;
            v35 = v9[47];
            v9[47] = 0;
            *&v95 = v34;
            *(&v95 + 1) = v35;
            *&v94 = v34;
            *(&v94 + 1) = v34;
            std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(&v94);
            v5 = a3;
          }

          else
          {
            *v20 = v6->i64[0];
            v22 = v6->i64[1];
            v20[1] = v22;
            if (v22)
            {
              atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
            }

            v23 = v20 + 2;
          }

          v9[46] = v23;
          v17 = v6->i64[0];
        }

        v36 = *(v17 + 32);
        if (v36)
        {
          *(v36 + 216) = *(a1 + 304);
          v37 = *(a1 + 424);
          v38 = *(v36 + 192);
          v39 = *(v36 + 200) | v87 & 0xFFFFFFFFFFFFFF00;
          v40 = *(v6[2].i64[0] + 200) | v86 & 0xFFFFFFFFFFFFFF00;
          LODWORD(v94) = 0;
          HIDWORD(v94) = 0;
          v41 = *(v17 + 48);
          *(&v94 + 4) = *(v17 + 40);
          *&v95 = vsub_s32(v41, *(&v94 + 4));
          *(&v95 + 1) = 1;
          v96 = v6[1].i64[0];
          LODWORD(v97) = 0;
          BYTE4(v97) = 0;
          v86 = v40;
          v87 = v39;
          (*(*v37 + 16))(v37, v38);
        }

        else
        {
          v42 = *(v17 + 88);
          if (v42)
          {
            v82 = v19;
            v43 = *(v17 + 96);
            if (v43)
            {
              atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v44 = v42[8];
            v85 = v43;
            v45 = *(a1 + 408);
            LODWORD(v94) = v44;
            WORD2(v94) = 1;
            v46 = (*(*v45 + 16))(v45, &v94);
            v47 = *(a1 + 424);
            v94 = (*(*v42 + 16))(v42, 0);
            *&v95 = v44;
            if (v85)
            {
              atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *(&v95 + 1) = &unk_1F2A16F70;
            v96 = v42;
            v97 = v85;
            v98 = &v95 + 8;
            v48 = *(*v47 + 48);
            v49 = v47;
            v50 = v46;
            v48(v49, v46, &v94);
            std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&v95 + 8);
            v51 = *(a1 + 424);
            v52 = v6[2].i64[0];
            v53 = *(v52 + 192);
            v54 = *(v52 + 200) | v83 & 0xFFFFFFFFFFFFFF00;
            v55 = (v16 - v15) * *(a1 + 36);
            LODWORD(v94) = 0;
            *(&v94 + 4) = __PAIR64__(v44, v55);
            HIDWORD(v94) = v16 - v15;
            LODWORD(v95) = v18 - v82;
            *(&v95 + 4) = 1;
            HIDWORD(v95) = v15;
            v96 = v82;
            LOBYTE(v97) = 0;
            (*(*v51 + 32))(v51, v46, v53, v54, &v94);
            v56 = *(a1 + 368);
            v58 = *(v56 - 16);
            v57 = *(v56 - 8);
            v83 = v54;
            if (v58 >= v57)
            {
              v60 = *(v56 - 24);
              v61 = (v58 - v60) >> 3;
              if ((v61 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v62 = v57 - v60;
              v63 = v62 >> 2;
              if (v62 >> 2 <= (v61 + 1))
              {
                v63 = v61 + 1;
              }

              if (v62 >= 0x7FFFFFFFFFFFFFF8)
              {
                v64 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v64 = v63;
              }

              if (v64)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v64);
              }

              *(8 * v61) = v50;
              v59 = 8 * v61 + 8;
              v65 = *(v56 - 24);
              v66 = *(v56 - 16) - v65;
              v67 = (8 * v61 - v66);
              memcpy(v67, v65, v66);
              v68 = *(v56 - 24);
              *(v56 - 24) = v67;
              *(v56 - 16) = v59;
              *(v56 - 8) = 0;
              if (v68)
              {
                operator delete(v68);
              }
            }

            else
            {
              *v58 = v50;
              v59 = (v58 + 1);
            }

            v69 = 0;
            *(v56 - 16) = v59;
            v71 = *(v6->i64[0] + 56);
            v70 = *(v6->i64[0] + 64);
            v72 = (v70 + 0x100000000) >> 32;
            LODWORD(v94) = v70 - v71 + 2;
            DWORD1(v94) = 1;
            DWORD2(v94) = v71 - 1;
            HIDWORD(v94) = (v71 - 0x100000000) >> 32;
            *&v95 = v94 | 0x100000000;
            DWORD2(v95) = v71 - 1;
            HIDWORD(v95) = v72 - 1;
            LODWORD(v96) = 1;
            HIDWORD(v96) = v72 - HIDWORD(v94);
            LODWORD(v97) = v71 - 1;
            HIDWORD(v97) = HIDWORD(v94);
            LODWORD(v98) = 1;
            HIDWORD(v98) = v72 - HIDWORD(v94);
            v99 = v70;
            v100 = HIDWORD(v94);
            do
            {
              v73 = *(a1 + 424);
              v74 = (*(*v6->i64[0] + 32))();
              v76 = v75;
              v77 = (*(*v6->i64[0] + 32))();
              v88 = 0u;
              v78 = *(&v94 + v69 + 8);
              v89 = *(&v94 + v69);
              v90 = 1;
              v91 = v78;
              v92 = 0;
              v93 = 0;
              (*(*v73 + 16))(v73, v74, v76, v77, v79, &v88);
              v69 += 16;
            }

            while (v69 != 64);
            if (v85)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v85);
            }

            v5 = a3;
          }
        }

        v80 = v6->i64[0];
        v81 = *(a1 + 304);
        *(v80 + 129) = 2;
        *(v80 + 104) = v81;
      }

      v6 = (v6 + 40);
    }

    while (v6 != v5);
  }
}

void std::vector<ta2::TextureAtlas::RegionLoadItem>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 4);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__function::__func<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0,std::allocator<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0,std::allocator<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0,std::allocator<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A16F70;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0,std::allocator<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A16F70;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0,std::allocator<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A16F70;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

uint64_t *std::vector<ta2::TextureAtlas::RegionLoadItem>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ta2::TextureAtlas::RegionLoadItem>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

unint64_t *std::vector<ta2::TextureAtlas::RegionLoadItem>::push_back[abi:nn200100](unint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v19[4] = v2;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ta2::TextureAtlas::RegionLoadItem>>(v11);
    }

    v12 = *(a2 + 8);
    v13 = 40 * v8;
    *v13 = *a2;
    *(v13 + 8) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(a2 + 16);
    *(40 * v8 + 0x20) = *(a2 + 32);
    *(40 * v8 + 0x10) = v14;
    v7 = v13 + 40;
    v15 = v2[1];
    v16 = v13 + *v2 - v15;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<ta2::TextureAtlas::RegionLoadItem>,ta2::TextureAtlas::RegionLoadItem*>(*v2, v15, v16);
    v17 = *v2;
    *v2 = v16;
    v2[1] = v7;
    v18 = v2[2];
    v2[2] = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ta2::TextureAtlas::RegionLoadItem>::~__split_buffer(v19);
  }

  else
  {
    v5 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  v2[1] = v7;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<ta2::TextureAtlas::RegionLoadItem>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<ta2::TextureAtlas::RegionLoadItem>,ta2::TextureAtlas::RegionLoadItem*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *v5 = 0;
      *(v5 + 8) = 0;
      v6 = *(v5 + 16);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 16) = v6;
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
    do
    {
      v7 = *(v4 + 8);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v4 += 40;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<ta2::TextureAtlas::RegionLoadItem>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 32);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL ta2::TextureAtlasPage::reserveRegions(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = (a2 + 32);
    v7 = 1;
    v8 = a3;
    while (1)
    {
      v9 = *(v6 - 4);
      v11 = *(v9 + 56);
      v10 = *(v9 + 64);
      v12 = v10 - v11 + 2;
      v13 = ((v10 + 0x100000000) >> 32) - ((v11 - 0x100000000) >> 32);
      v14 = geo::SkylineBin::insert((a1 + 6), v12, v13);
      v16 = (HIDWORD(v15) - HIDWORD(v14)) * (v15 - v14);
      if (v16 != v13 * v12)
      {
        break;
      }

      a1[52] += v16;
      *(v6 - 2) = v14;
      *(v6 - 1) = v15;
      *v6 = a1;
      v6 += 5;
      v5 = v7++ >= a3;
      if (!--v8)
      {
        return 1;
      }
    }

    if (!a1[53])
    {
      a1[53] = (a1[52] * 0.8);
    }
  }

  else
  {
    return 1;
  }

  return v5;
}

uint64_t std::construct_at[abi:nn200100]<ta2::TextureAtlasPage,ta2::TextureAtlas &,gm::Matrix<unsigned int,2,1> &,unsigned int &,BOOL &,BOOL,std::shared_ptr<mre::GraphicsResourceStore> &,ta2::TextureAtlasPage*>(uint64_t a1, uint64_t a2, uint32x2_t *a3, uint64_t a4, char a5, char a6, uint64_t a7, std::__shared_weak_count *a8)
{
  v11[0] = a7;
  v11[1] = a8;
  if (a8)
  {
    atomic_fetch_add_explicit(&a8->__shared_owners_, 1uLL, memory_order_relaxed);
    ta2::TextureAtlasPage::TextureAtlasPage(a1, a2, a3, a4, a5 & 1, a6 & 1, v11);
    std::__shared_weak_count::__release_shared[abi:nn200100](a8);
  }

  else
  {
    ta2::TextureAtlasPage::TextureAtlasPage(a1, a2, a3, a4, a5 & 1, a6 & 1, v11);
  }

  return a1;
}

void ta2::TextureAtlas::clearPageEdges(ta2::TextureAtlas *this, ta2::TextureAtlasPage *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(**(this + 51) + 24))(*(this + 51), *(a2 + 24), *(a2 + 200));
  if (!v4)
  {
    if (GEOGetVectorKitTextureAtlasLog(void)::onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitTextureAtlasLog(void)::onceToken, &__block_literal_global_17126);
    }

    v5 = GEOGetVectorKitTextureAtlasLog(void)::log;
    if (os_log_type_enabled(GEOGetVectorKitTextureAtlasLog(void)::log, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      *v24 = "textureDescriptor";
      *&v24[8] = 2080;
      *&v24[10] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/TextureAtlas2.cpp";
      *&v24[18] = 1024;
      *&v24[20] = 542;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "Using stale/invalid texture: Assertion with expression - %s : Failed in file - %s line - %i", &v23, 0x1Cu);
    }
  }

  v6 = *v4;
  if (*(this + 15) >= v4[1])
  {
    v7 = v4[1];
  }

  else
  {
    v7 = *(this + 15);
  }

  v8 = 0x200u / *(this + 36);
  if (v7)
  {
    v9 = 0;
    do
    {
      if (v7 >= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v7;
      }

      v11 = *(this + 53);
      v12 = *(this + 44);
      v13 = *(a2 + 24);
      v14 = *(a2 + 200);
      v15 = *(this + 36);
      v23 = 0;
      *v24 = v15;
      *&v24[4] = 0x100000200;
      *&v24[12] = v10;
      *&v24[16] = 1;
      v25 = 0;
      v26 = v9;
      v27 = 0;
      (*(*v11 + 32))(v11, v12, v13, v14, &v23);
      v9 += v10;
      v7 -= v10;
    }

    while (v7);
  }

  if (*(this + 14) < v6)
  {
    v6 = *(this + 14);
  }

  if (v6)
  {
    v16 = 0;
    do
    {
      if (v6 >= v8)
      {
        v17 = v8;
      }

      else
      {
        v17 = v6;
      }

      v18 = *(this + 53);
      v19 = *(this + 44);
      v20 = *(a2 + 24);
      v21 = *(a2 + 200);
      v22 = *(this + 36) * v8;
      v23 = 0;
      *v24 = v22;
      *&v24[4] = 512;
      *&v24[8] = v17;
      *&v24[12] = 0x100000001;
      *&v24[20] = 0;
      v25 = v16;
      v26 = 0;
      v27 = 0;
      (*(*v18 + 32))(v18, v19, v20, v21, &v23);
      v16 += v17;
      v6 -= v17;
    }

    while (v6);
  }
}

uint64_t ta2::TextureAtlasPage::TextureAtlasPage(uint64_t a1, uint64_t a2, uint32x2_t *a3, unsigned int a4, char a5, char a6, void *a7)
{
  *a1 = a2;
  *(a1 + 8) = *a7;
  v12 = a7[1];
  *(a1 + 16) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a3->i32[0];
  v14 = a3->u32[1];
  *(a1 + 24) = &unk_1F2A16DD8;
  *(a1 + 44) = 0;
  *(a1 + 52) = 256;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = &unk_1F2A16E10;
  *(a1 + 96) = 0;
  *(a1 + 116) = 1;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 108) = 512;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 168) = 0;
  v24 = 0uLL;
  *(a1 + 152) = 0;
  std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100]((a1 + 144), &v24);
  geo::SkylineBin::resize(a1 + 24, v13, v14, 1, 0);
  __asm { FMOV            V2.2S, #1.0 }

  v20 = vdiv_f32(_D2, vcvt_f32_u32(*a3));
  *(a1 + 176) = *a3;
  *(a1 + 184) = v20;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 850045863;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 850045863;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  if (a4)
  {
    operator new();
  }

  *(a1 + 53) = a5;
  if (*(a1 + 80) == 1)
  {
    *(a1 + 116) = a5;
  }

  if ((a6 & 1) == 0)
  {
    *&v24 = *(a1 + 176);
    v21 = *(a1 + 8);
    DWORD2(v24) = *(*a1 + 32);
    HIDWORD(v24) = 3;
    *(a1 + 192) = (**v21)(v21, &v24);
    *(a1 + 200) = v22;
  }

  return a1;
}

void geo::SkylineBin::resize(uint64_t a1, unsigned int a2, unsigned int a3, char a4, int a5)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 56) = a4;
  *(a1 + 24) = a5;
  *(a1 + 16) = 0;
  v5 = *(a1 + 32);
  *(a1 + 40) = v5;
  v6 = *(a1 + 48);
  if (v5 >= v6)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2);
    v8 = 2 * v7;
    if (2 * v7 <= 1)
    {
      v8 = 1;
    }

    if (v7 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v9);
  }

  *v5 = 0;
  *(v5 + 8) = a2;
  *(a1 + 40) = v5 + 12;
  if (*(a1 + 56) == 1)
  {
    v10 = *(a1 + 28);
    *(a1 + 72) = a2;
    *(a1 + 76) = a3;
    *(a1 + 84) = 769;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 144) = v10;
    *(a1 + 104) = *(a1 + 96);
    *&v12 = 0;
    *(&v12 + 1) = __PAIR64__(a3, a2);
    v11 = (a1 + 120);
    *(a1 + 128) = *(a1 + 120);
    std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100]((a1 + 120), &v12);
    v11[1] = *v11;
  }
}

BOOL geo::GuillotineBin::erase(geo::GuillotineBin *this, __int128 *a2)
{
  v4 = *(this + 4);
  v5 = *(this + 5);
  v27 = *a2;
  v6 = v4;
  if (v5 != v4)
  {
    while (!md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==(v6, &v27))
    {
      v6 += 16;
      if (v6 == v5)
      {
        return 0;
      }
    }
  }

  v7 = v6 + 16;
  if (v6 != v5 && v7 != v5)
  {
    do
    {
      if (!md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==(v7, &v27))
      {
        *v6 = *v7;
        *(v6 + 4) = *(v7 + 4);
        *(v6 + 8) = *(v7 + 8);
        *(v6 + 12) = *(v7 + 12);
        v6 += 16;
      }

      v7 += 16;
    }

    while (v7 != v5);
  }

  if (v6 == v5)
  {
    return 0;
  }

  *(this + 5) = v6;
  v9 = (v6 - v4) >> 4;
  v10 = ((v5 - v4) >> 4) - 1;
  v11 = v9 == v10;
  if (v9 == v10)
  {
    v13 = *(this + 8);
    v12 = *(this + 9);
    if (v13 >= v12)
    {
      v16 = *(this + 7);
      v17 = (v13 - v16) >> 4;
      v18 = v17 + 1;
      if ((v17 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v12 - v16;
      if (v19 >> 3 > v18)
      {
        v18 = v19 >> 3;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF0)
      {
        v20 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v20);
      }

      v21 = (16 * v17);
      *v21 = *a2;
      v14 = 16 * v17 + 16;
      v22 = *(this + 7);
      v23 = *(this + 8);
      v24 = (v21 + v22 - v23);
      if (v22 != v23)
      {
        v25 = v24;
        do
        {
          v26 = *v22;
          v22 += 16;
          *v25++ = v26;
        }

        while (v22 != v23);
        v22 = *(this + 7);
      }

      *(this + 7) = v24;
      *(this + 8) = v14;
      *(this + 9) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v13 = *a2;
      v14 = (v13 + 1);
    }

    *(this + 8) = v14;
    *(this + 4) += (*(a2 + 3) - *(a2 + 1)) * (*a2 - *(a2 + 2));
    *(this + 6) += (*(a2 + 3) - *(a2 + 1)) * (*(a2 + 2) - *a2);
    if (*(this + 28) == 1)
    {
      geo::GuillotineBin::mergeFreeList(this);
    }
  }

  return v11;
}