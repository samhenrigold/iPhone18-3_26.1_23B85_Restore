uint64_t std::__function::__func<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_0,std::allocator<md::LabelStyleContext::applyScales(md::StyleSettingsObjectNode const*)::$_0>,void ()(unsigned long,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F13D8;
  a2[1] = v2;
  return result;
}

void DaVinci::GetDataIDs(DaVinci *this)
{
  v2[60] = *MEMORY[0x1E69E9840];
  {
    v2[0] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>();
    v2[1] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>();
    v2[2] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::View>>();
    v2[3] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>();
    v2[4] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>();
    v2[5] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Transform>>();
    v2[6] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>();
    v2[7] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>();
    v2[8] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>();
    v2[9] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Style>>();
    v2[10] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>();
    v2[11] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>();
    v2[12] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>();
    v2[13] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>();
    v2[14] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>();
    v2[15] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>();
    v2[16] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>();
    v2[17] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>();
    v2[18] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Clipping>>();
    v2[19] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle>>();
    v2[20] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinciTraffic::Style>>();
    v2[21] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ClippedStroke>>();
    v2[22] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>();
    v2[23] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>();
    v2[24] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>();
    v2[25] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>();
    v2[26] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>();
    v2[27] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>();
    v2[28] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>();
    v2[29] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>();
    v2[30] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>();
    v2[31] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>();
    v2[32] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>();
    v2[33] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>();
    v2[34] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>();
    v2[35] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>();
    v2[36] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>();
    v2[37] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>();
    v2[38] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>();
    v2[39] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedFillStyle>>();
    v2[40] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>();
    v2[41] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>();
    v2[42] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>();
    v2[43] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>();
    v2[44] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>();
    v2[45] = gdc::typeIndex<DaVinci::AmbientTexture>();
    v2[46] = gdc::typeIndex<DaVinci::ShadowTexture>();
    v2[47] = gdc::typeIndex<DaVinci::TexTexture>();
    v2[48] = gdc::typeIndex<DaVinci::OcclusionTexture>();
    v2[49] = gdc::typeIndex<DaVinci::RouteMaskTexture>();
    v2[50] = gdc::typeIndex<DaVinci::EmissiveTexture>();
    v2[51] = gdc::typeIndex<DaVinci::OverlayTexture>();
    v2[52] = gdc::typeIndex<DaVinci::StyleIndexTexture>();
    v2[53] = gdc::typeIndex<DaVinci::StyleTexture>();
    v2[54] = gdc::typeIndex<DaVinci::AridityTexture>();
    v2[55] = gdc::typeIndex<DaVinci::TemperatureTexture>();
    v2[56] = gdc::typeIndex<DaVinci::Gradient1Texture>();
    v2[57] = gdc::typeIndex<DaVinci::Gradient2Texture>();
    v2[58] = gdc::typeIndex<DaVinci::DiffuseTexture>();
    v1 = 0;
    v2[59] = gdc::typeIndex<DaVinci::AlphaTexture>();
    DaVinci::GetDataIDs(void)::kDataIDs = 0u;
    unk_1EB82EC18 = 0u;
    dword_1EB82EC28 = 1065353216;
    do
    {
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&DaVinci::GetDataIDs(void)::kDataIDs, v2[v1], &v2[v1]);
      ++v1;
    }

    while (v1 != 60);
  }
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[494];
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinciTraffic::Style>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinciTraffic::Style>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[496];
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ClippedStroke>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ClippedStroke>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[492];
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedFillStyle>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedFillStyle>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[490];
}

uint64_t gdc::typeIndex<DaVinci::AlphaTexture>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::AlphaTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[486];
}

void md::VirtualSubTileHelper::computeScaleAndOffset(uint64_t a1, uint64_t a2, unsigned int a3, int a4, float *a5)
{
  v6 = *(a2 + 1);
  v7 = a3 & 0x3F;
  if ((a3 & 0x3F) >= v6)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v9 = 0;
    v10 = *(a2 + 8);
    v11 = 1 << v6;
    v12 = ~*(a2 + 4);
    v47 = 0u;
    v49 = 0;
    v45 = 0u;
    v46 = 0u;
    v48 = 0u;
    v51 = 0;
    v44 = v11;
    *&v47 = v11;
    v50 = v11;
    v13 = -v11 / v11;
    v52 = v13 * v10;
    v53 = v13 * (v11 + v12);
    v54 = xmmword_1B33B0740;
    v14 = 1 << v7;
    v15 = ((1 << v7) + (~a4 | 0xFC000000));
    v16 = 1.0 / (1 << v7);
    v36 = 0;
    v38 = 0;
    v40 = 0;
    v37 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = v16;
    v35 = v16;
    v39 = v16;
    v41 = v16 * (a3 >> 6);
    v42 = v16 * v15;
    v43 = xmmword_1B33B0740;
    v17 = &v44;
    do
    {
      v18 = 0;
      v19 = &v32;
      do
      {
        v20 = 0;
        v21 = 0.0;
        v22 = v17;
        do
        {
          v23 = *v22;
          v22 += 4;
          v21 = v21 + v19[v20++] * v23;
        }

        while (v20 != 4);
        v55[4 * v18++ + v9] = v21;
        v19 += 4;
      }

      while (v18 != 4);
      ++v9;
      ++v17;
    }

    while (v9 != 4);
    v24 = (v15 + 0.5) / v14;
    v25 = exp(v24 * 6.28318531 + -3.14159265);
    v26 = atan(v25);
    v27 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v26 * 114.591559 + -90.0) / (1.0 / v14);
    *a5 = v27;
    v28.f64[0] = v55[5];
    v29 = v55[0];
    v30 = v56;
    v31 = v57;
    *a1 = v29;
    v28.f64[1] = v55[10];
    *(a1 + 4) = vcvt_hight_f32_f64(vcvt_f32_f64(v28), v30);
    *(a1 + 20) = v31;
    *(a1 + 24) = 1;
  }
}

void md::Logic<md::MaterialLogic,md::MaterialContext,md::LogicDependencies<gdc::TypeList<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void gdc::RegistryView<md::components::FlexClientStateChanged,md::components::Material>::each<md::components::Material,md::MaterialLogic::_updateMaterialComponents(md::StyleLogicContext const&)::$_1>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = v3[7];
  v5 = v3[8];
  if (v4 != v5)
  {
    v9 = v3[10];
    do
    {
      v10 = *a1;
      if (*(v10 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((*a1 + 32), *(v4 + 4)))
      {
        v11 = *v4;
        v12 = gdc::Registry::storage<md::components::ClientState>(a3);
        v13 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v12, v11);
        md::MaterialLogic::_updateMaterialForComponent(a2, a3, v11, v9, v13);
      }

      v9 += 3;
      v4 += 8;
    }

    while (v4 != v5);
  }
}

void md::MaterialLogic::_resolvePendingMaterials(md::MaterialContext &,md::StyleLogicContext const&,md::IdentifiedResourceContext const&)::$_0::operator()(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = gdc::Registry::storage<md::components::ClientState>(*(a1 + 8));
  v8 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v7, a2);
  md::MaterialLogic::_resolveMaterial(&v61, v6, a3, v8);
  v9 = v61;
  if (!v61)
  {
    **(a1 + 32) = 1;
    v13 = v62;
    if (!v62)
    {
      return;
    }

    goto LABEL_78;
  }

  v10 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>((*(v6 + 120) + 16), a3);
  if (v10)
  {
    v11 = v10;
    v10 = v10[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *(v9 + 16);
  v15 = *(v9 + 24);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = gms::MaterialSheet<ggl::Texture2D>::attributeMapForMaterial(v10, v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (v16)
  {
    v17 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v16, 0x10059u) != *(v16 + 12);
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v17 = 0;
  if (v12)
  {
LABEL_14:
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

LABEL_15:
  if (!v17)
  {
    goto LABEL_38;
  }

  v18 = gdc::Registry::storage<md::components::SupportsFlexing>(*(a1 + 8));
  v58 = a2;
  v19 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v18 + 4, &v58);
  if (v20)
  {
    v21 = v18[11];
    v22 = v18[12];
    if (v21 >= v22)
    {
      v26 = v18[10];
      v27 = v21 - v26 + 1;
      if (v27 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v28 = v22 - v26;
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v29 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        operator new();
      }

      v23 = v21 - v26 + 1;
      memcpy(0, v26, v21 - v26);
      v18[10] = 0;
      v18[11] = v23;
      v18[12] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v23 = v21 + 1;
    }

    v18[11] = v23;
    v24 = v18[31];
    goto LABEL_36;
  }

  v24 = v18[31];
  if (v18[10] + ((v19 - v18[7]) >> 3) == v18[11])
  {
LABEL_36:
    for (i = v18[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v24, &v58, 1);
    }

    goto LABEL_38;
  }

  for (j = v18[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v24, &v58, 1);
  }

LABEL_38:
  v31 = *(a1 + 8);
  v13 = v62;
  if (v62)
  {
    atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
    v59 = v9;
    v60 = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v59 = v9;
    v60 = 0;
  }

  v58 = a3;
  v32 = gdc::Registry::storage<md::components::Material>(v31);
  gdc::ComponentStorageWrapper<md::components::Material>::emplace(v32, a2, &v58);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v60);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v33 = gdc::Registry::storage<md::components::DidResolvePendingMaterial>(*(a1 + 8));
  v58 = a2;
  v34 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v33 + 4, &v58);
  if (v35)
  {
    v36 = v33[11];
    v37 = v33[12];
    if (v36 >= v37)
    {
      v41 = v33[10];
      v42 = v36 - v41 + 1;
      if (v42 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v43 = v37 - v41;
      if (2 * v43 > v42)
      {
        v42 = 2 * v43;
      }

      if (v43 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v44 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        operator new();
      }

      v38 = v36 - v41 + 1;
      memcpy(0, v41, v36 - v41);
      v33[10] = 0;
      v33[11] = v38;
      v33[12] = 0;
      if (v41)
      {
        operator delete(v41);
      }
    }

    else
    {
      v38 = v36 + 1;
    }

    v33[11] = v38;
    v39 = v33[31];
    goto LABEL_63;
  }

  v39 = v33[31];
  if (v33[10] + ((v34 - v33[7]) >> 3) == v33[11])
  {
LABEL_63:
    for (k = v33[22]; k; k = *k)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v39, &v58, 1);
    }

    goto LABEL_65;
  }

  for (m = v33[16]; m; m = *m)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(m[6], v39, &v58, 1);
  }

LABEL_65:
  **(a1 + 24) = 1;
  v46 = *(a1 + 16);
  v48 = *(v46 + 8);
  v47 = *(v46 + 16);
  if (v48 >= v47)
  {
    v50 = (v48 - *v46) >> 3;
    if ((v50 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v51 = v47 - *v46;
    v52 = v51 >> 2;
    if (v51 >> 2 <= (v50 + 1))
    {
      v52 = v50 + 1;
    }

    if (v51 >= 0x7FFFFFFFFFFFFFF8)
    {
      v53 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v53 = v52;
    }

    if (v53)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v53);
    }

    v54 = (8 * v50);
    *v54 = a2;
    v49 = 8 * v50 + 8;
    v55 = *(v46 + 8) - *v46;
    v56 = v54 - v55;
    memcpy(v54 - v55, *v46, v55);
    v57 = *v46;
    *v46 = v56;
    *(v46 + 8) = v49;
    *(v46 + 16) = 0;
    if (v57)
    {
      operator delete(v57);
    }
  }

  else
  {
    *v48 = a2;
    v49 = (v48 + 1);
  }

  *(v46 + 8) = v49;
  if (v13)
  {
LABEL_78:
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }
}

void sub_1B2D489BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::storage<md::components::SupportsFlexing>(uint64_t a1)
{
  v3 = 0x3E7F125C68B9E585;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x3E7F125C68B9E585uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::DidResolvePendingMaterial>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::components::DidResolvePendingMaterial>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::DidResolvePendingMaterial>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::SupportsFlexing>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::components::SupportsFlexing>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::SupportsFlexing>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void md::MaterialLogic::_updateMaterialComponents(md::StyleLogicContext const&)::$_1::operator()(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  v8 = gdc::Registry::storage<md::components::ClientState>(a2);
  v9 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v8, a3);

  md::MaterialLogic::_updateMaterialForComponent(a1, a2, a3, a4, v9);
}

BOOL gdc::ComponentStorageWrapper<md::components::FlexClientStateChanged>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::components::FlexClientStateChanged>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::FlexClientStateChanged>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void gms::MaterialManager<ggl::Texture2D>::replaceMaterialSheet(uint64_t a1, unint64_t a2, uint64_t *a3, char *a4)
{
  std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::__erase_unique<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(*(a1 + 240), a2, 0);
  std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::__erase_unique<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(*(a1 + 232), a2, 0);
  std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::__erase_unique<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(*(a1 + 336), a2, 0);
  std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::__erase_unique<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(*(a1 + 328), a2, 0);
  std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>>>::__erase_unique<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(*(a1 + 432), a2, 0);
  std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>>>::__erase_unique<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(*(a1 + 424), a2, 0);
  v8 = *a3;
  v7 = a3[1];
  v15[0] = a2;
  v15[1] = v8;
  v16 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>((a1 + 16), a2, v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  v9 = *(a1 + 64);
  if (!*&v9)
  {
    goto LABEL_22;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = a2;
    if (*&v9 <= a2)
    {
      v11 = a2 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & a2;
  }

  v12 = *(*(a1 + 56) + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == a2)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v9)
      {
        v14 %= *&v9;
      }
    }

    else
    {
      v14 &= *&v9 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_22;
    }

LABEL_21:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_22;
    }
  }

  if (v13[2] != a2)
  {
    goto LABEL_21;
  }
}

void gms::MaterialManager<ggl::Texture2D>::markAsFailedMaterial(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 104);
  v3[0] = *(a1 + 96);
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gms::MaterialManager<ggl::Texture2D>::replaceMaterialSheet(a1, a2, v3, (a1 + 112));
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void sub_1B2D49668(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>(float *a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }
}

void std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::__erase_unique<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(void *a1, unint64_t a2, unint64_t a3)
{
  v4 = std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::_Material<ggl::Texture2D>>>>>>::find<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(a1, a2, a3);
  if (v4)
  {
    v5 = a1[1];
    v6 = v4[1];
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      if (v6 >= *&v5)
      {
        v6 %= *&v5;
      }
    }

    else
    {
      v6 &= *&v5 - 1;
    }

    v8 = *(*a1 + 8 * v6);
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8 != v4);
    if (v9 == a1 + 2)
    {
      goto LABEL_20;
    }

    v10 = v9[1];
    if (v7.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v6)
    {
LABEL_20:
      if (!*v4)
      {
        goto LABEL_21;
      }

      v11 = *(*v4 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v6)
      {
LABEL_21:
        *(*a1 + 8 * v6) = 0;
      }
    }

    v12 = *v4;
    if (*v4)
    {
      v13 = *(v12 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }
      }

      else
      {
        v13 &= *&v5 - 1;
      }

      if (v13 != v6)
      {
        *(*a1 + 8 * v13) = v9;
        v12 = *v4;
      }
    }

    *v9 = v12;
    *v4 = 0;
    --a1[3];

    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,void *>>>::operator()[abi:nn200100](1, v4);
  }
}

void std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>>>::__erase_unique<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(void *a1, unint64_t a2, unint64_t a3)
{
  v4 = std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>>>::find<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey>(a1, a2, a3);
  if (v4)
  {
    v5 = a1[1];
    v6 = v4[1];
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      if (v6 >= *&v5)
      {
        v6 %= *&v5;
      }
    }

    else
    {
      v6 &= *&v5 - 1;
    }

    v8 = *(*a1 + 8 * v6);
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8 != v4);
    if (v9 == a1 + 2)
    {
      goto LABEL_20;
    }

    v10 = v9[1];
    if (v7.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v6)
    {
LABEL_20:
      if (!*v4)
      {
        goto LABEL_21;
      }

      v11 = *(*v4 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v6)
      {
LABEL_21:
        *(*a1 + 8 * v6) = 0;
      }
    }

    v12 = *v4;
    if (*v4)
    {
      v13 = *(v12 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }
      }

      else
      {
        v13 &= *&v5 - 1;
      }

      if (v13 != v6)
      {
        *(*a1 + 8 * v13) = v9;
        v12 = *v4;
      }
    }

    *v9 = v12;
    *v4 = 0;
    --a1[3];

    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,void *>>>::operator()[abi:nn200100](1, v4);
  }
}

void *gdc::ComponentStorageWrapper<md::components::DidResolvePendingMaterial>::clear(void *result)
{
  v1 = result;
  if (result[29])
  {
    v2 = result[28];
    if (v2)
    {
      v3 = result[31];
      v4 = result[7];
      v5 = (result[8] - v4) >> 3;
      do
      {
        result = std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v2[6], v3, v4, v5);
        v2 = *v2;
      }

      while (v2);
    }
  }

  v1[8] = v1[7];
  v1[11] = v1[10];
  return result;
}

uint64_t md::Logic<md::MaterialLogic,md::MaterialContext,md::LogicDependencies<gdc::TypeList<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD2404CDD1F9A6950 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::AssetContext,md::IdentifiedResourceContext,md::RegistryContext,md::SceneQueryContext,md::StyleLogicContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::MaterialContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::MaterialContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::MaterialContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::MaterialContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29F16A0;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((v2 + 32));
    v3 = *(v2 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    MEMORY[0x1B8C62190](v2, 0x10A0C400E1A17F2);
  }

  return a1;
}

void md::MaterialLogic::~MaterialLogic(md::MaterialLogic *this)
{
  md::MaterialLogic::~MaterialLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F14F8;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 192);
  v2 = *(this + 23);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

uint64_t gms::MaterialManager<ggl::Texture2D>::~MaterialManager(uint64_t a1)
{
  for (i = 384; i != 304; i -= 40)
  {
    std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>>>::~__hash_table(a1 + i);
  }

  for (j = 288; j != 208; j -= 40)
  {
    std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>>>::~__hash_table(a1 + j);
  }

  for (k = 192; k != 112; k -= 40)
  {
    std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>>>::~__hash_table(a1 + k);
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 56);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((a1 + 16));
  v8 = *(a1 + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,std::__unordered_map_hasher<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,true>,std::__unordered_map_equal<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyEqual,gms::MaterialManager<ggl::Texture2D>::MaterialCacheKeyHash,true>,std::allocator<std::__hash_value_type<gms::MaterialManager<ggl::Texture2D>::MaterialCacheKey,std::optional<std::shared_ptr<gms::Material<ggl::Texture2D>>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<gms::MaterialManager<ggl::Texture2D> *,std::shared_ptr<gms::MaterialManager<ggl::Texture2D>>::__shared_ptr_default_delete<gms::MaterialManager<ggl::Texture2D>,gms::MaterialManager<ggl::Texture2D>>,std::allocator<gms::MaterialManager<ggl::Texture2D>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    gms::MaterialManager<ggl::Texture2D>::~MaterialManager(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<gms::MaterialManager<ggl::Texture2D> *,std::shared_ptr<gms::MaterialManager<ggl::Texture2D>>::__shared_ptr_default_delete<gms::MaterialManager<ggl::Texture2D>,gms::MaterialManager<ggl::Texture2D>>,std::allocator<gms::MaterialManager<ggl::Texture2D>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void gms::LinearResolver::~LinearResolver(gms::LinearResolver *this)
{
  *this = &unk_1F2A0B788;
  v1 = (this + 8);
  std::vector<std::pair<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>,unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A0B788;
  v1 = (this + 8);
  std::vector<std::pair<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>,unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v1);
}

void std::vector<std::pair<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>,unsigned int>>::__destroy_vector::operator()[abi:nn200100](gss::zone_mallocator ***a1)
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
        v4 = (v4 - 32);
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gms::LinearResolver::attributesForIndex(gms::LinearResolver *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2) - v2;
  v4 = v2 + 32 * a2;
  if (a2 >= (v3 >> 5))
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void gms::LinearResolver::addMaterial(void *a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  v22 = *a2;
  v5 = *(a2 + 2);
  LODWORD(v23) = v5;
  v6 = *(a2 + 6);
  WORD2(v23) = v6;
  v7 = *(a2 + 7);
  HIWORD(v23) = v7;
  v8 = *(a2 + 16);
  LOBYTE(v24) = v8;
  v9 = *(a2 + 17);
  HIBYTE(v24) = v9;
  *a2 = 0;
  a2[1] = 0;
  *(a2 + 8) = 256;
  v25 = a3;
  v11 = a1[2];
  v10 = a1[3];
  if (v11 >= v10)
  {
    v13 = a1[1];
    v14 = (v11 - v13) >> 5;
    v15 = v14 + 1;
    if ((v14 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v16 = v10 - v13;
    if (v16 >> 4 > v15)
    {
      v15 = v16 >> 4;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (!(v17 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v18 = 32 * v14;
    *v18 = v4;
    *(v18 + 8) = v5;
    *(v18 + 12) = v6;
    *(v18 + 14) = v7;
    *(v18 + 16) = v8;
    *(v18 + 17) = v9;
    v22 = 0;
    v23 = 0;
    v24 = 256;
    *(v18 + 24) = a3;
    v12 = 32 * v14 + 32;
    if (v13 != v11)
    {
      v19 = v13;
      v20 = 0;
      do
      {
        *v20 = 0;
        *(v20 + 8) = 0;
        *(v20 + 16) = 256;
        *v20 = *v19;
        *(v20 + 8) = *(v19 + 2);
        *(v20 + 12) = *(v19 + 3);
        *(v20 + 16) = *(v19 + 8);
        *v19 = 0;
        *(v19 + 1) = 0;
        *(v19 + 8) = 256;
        *(v20 + 24) = *(v19 + 6);
        v19 = (v19 + 32);
        v20 += 32;
      }

      while (v19 != v11);
      do
      {
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v13);
        v13 = (v13 + 32);
      }

      while (v13 != v11);
    }

    v21 = a1[1];
    a1[1] = 0;
    *(a1 + 1) = v12;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v11 = v4;
    *(v11 + 8) = v5;
    *(v11 + 12) = v6;
    *(v11 + 14) = v7;
    *(v11 + 16) = v8;
    *(v11 + 17) = v9;
    v22 = 0;
    v23 = 0;
    v24 = 256;
    v12 = v11 + 32;
    *(v11 + 24) = a3;
  }

  a1[2] = v12;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v22);
}

void sub_1B2D4A570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  _Unwind_Resume(a1);
}

void gms::TextureStore<ggl::Texture2D>::~TextureStore(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = (a1 + 200);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v3);

  geo::read_write_lock::~read_write_lock(a1);
}

uint64_t std::__shared_ptr_pointer<gms::TextureStore<ggl::Texture2D> *,std::shared_ptr<gms::TextureStore<ggl::Texture2D>>::__shared_ptr_default_delete<gms::TextureStore<ggl::Texture2D>,gms::TextureStore<ggl::Texture2D>>,std::allocator<gms::TextureStore<ggl::Texture2D>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    gms::TextureStore<ggl::Texture2D>::~TextureStore(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<gms::TextureStore<ggl::Texture2D> *,std::shared_ptr<gms::TextureStore<ggl::Texture2D>>::__shared_ptr_default_delete<gms::TextureStore<ggl::Texture2D>,gms::TextureStore<ggl::Texture2D>>,std::allocator<gms::TextureStore<ggl::Texture2D>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *gms::MaterialSheet<ggl::Texture2D>::~MaterialSheet(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[5];
  if (v3)
  {
    v4 = a1[6];
    v5 = a1[5];
    if (v4 != v3)
    {
      do
      {
        v2 = *(v4 - 8);
        if (v2)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v2);
        }

        v4 -= 16;
      }

      while (v4 != v3);
      v5 = a1[5];
    }

    a1[6] = v3;
    v6 = gss::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<gms::_Material<ggl::Texture2D>>>(v6, v5);
  }

  v7 = a1[4];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = a1[2];
  a1[2] = 0;
  if (v8)
  {
    (*(*v8 + 32))(v8);
  }

  v9 = a1[1];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<gms::_Material<ggl::Texture2D>>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *std::__shared_ptr_pointer<gms::MaterialSheet<ggl::Texture2D> *,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>::__shared_ptr_default_delete<gms::MaterialSheet<ggl::Texture2D>,gms::MaterialSheet<ggl::Texture2D>>,std::allocator<gms::MaterialSheet<ggl::Texture2D>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    gms::MaterialSheet<ggl::Texture2D>::~MaterialSheet(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<gms::MaterialSheet<ggl::Texture2D> *,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>::__shared_ptr_default_delete<gms::MaterialSheet<ggl::Texture2D>,gms::MaterialSheet<ggl::Texture2D>>,std::allocator<gms::MaterialSheet<ggl::Texture2D>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::_BuildingMaterial<ggl::Texture2D>::albedoFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 136);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 648))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_BuildingMaterial<ggl::Texture2D>::addAlbedoFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 136);
  if (!v6)
  {
    v7 = a5;
    if (a5)
    {
      LOBYTE(v11) = 27;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Bu, &v11);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, v7);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>(float *a1, unsigned __int8 a2, _WORD *a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % *(a1 + 1);
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != a2)
  {
    goto LABEL_17;
  }
}

void gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(uint64_t *a1, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  operator new();
}

uint64_t std::__function::__value_func<geo::Color<float,3,(geo::ColorSpace)0> ()(float,geo::Color<float,3,(geo::ColorSpace)0> const&,geo::Color<float,3,(geo::ColorSpace)0> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gms::NonZoomablePropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>::addProperty(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 20);
  v5 = *(a4 + 8);
  *(result + 8) = *a4;
  *(result + 16) = v5;
  if ((v4 & 1) == 0)
  {
    *(result + 20) = 1;
  }

  return result;
}

void gms::ZoomablePropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A338;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<geo::Color<float,3,(geo::ColorSpace)0> ()(float,geo::Color<float,3,(geo::ColorSpace)0> const&,geo::Color<float,3,(geo::ColorSpace)0> const&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::ZoomablePropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A338;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<geo::Color<float,3,(geo::ColorSpace)0> ()(float,geo::Color<float,3,(geo::ColorSpace)0> const&,geo::Color<float,3,(geo::ColorSpace)0> const&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

uint64_t gms::ZoomablePropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>::addProperty(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  *(result + 64) = -1082130432;
  *(result + 68) = 1;
  v4 = *a2;
  v5 = *a3;
  v23[0] = v4 | (v5 << 8);
  v24 = *a4;
  v25 = *(a4 + 2);
  if (!*(result + 56))
  {
    return std::__tree<std::__value_type<gm::Range<unsigned char>,geo::Color<float,3,(geo::ColorSpace)0>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,geo::Color<float,3,(geo::ColorSpace)0>>,geo::range_map<unsigned char,geo::Color<float,3,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,3,(geo::ColorSpace)0>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,geo::Color<float,3,(geo::ColorSpace)0>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,geo::Color<float,3,(geo::ColorSpace)0>>>((result + 40), v5, v23);
  }

  v6 = *(result + 40);
  v7 = (result + 48);
  if (v6 == (result + 48))
  {
    v13 = *(result + 40);
  }

  else
  {
    v8 = 0;
    v9 = *(result + 40);
    do
    {
      v10 = v9[1];
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
          v11 = v9[2];
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      ++v8;
      v9 = v11;
    }

    while (v11 != v7);
    v13 = *(result + 40);
    do
    {
      v14 = v8 >> 1;
      v15 = v13;
      if (v8 >= 2)
      {
        v16 = v8 >> 1;
        v17 = v13;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            do
            {
              v15 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v15 = v17[2];
              v12 = *v15 == v17;
              v17 = v15;
            }

            while (!v12);
          }

          v17 = v15;
        }

        while (v16-- > 1);
      }

      if (*(v15 + 29) < v5)
      {
        v20 = v15[1];
        if (v20)
        {
          do
          {
            v13 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v13 = v15[2];
            v12 = *v13 == v15;
            v15 = v13;
          }

          while (!v12);
        }

        v14 = v8 + ~v14;
      }

      v8 = v14;
    }

    while (v14);
  }

  if (v7 == v13 || *(v13 + 28) >= v5)
  {
    if (v6 == v13)
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,geo::Color<float,3,(geo::ColorSpace)0>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,geo::Color<float,3,(geo::ColorSpace)0>>,geo::range_map<unsigned char,geo::Color<float,3,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,3,(geo::ColorSpace)0>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,geo::Color<float,3,(geo::ColorSpace)0>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,geo::Color<float,3,(geo::ColorSpace)0>>>((result + 40), v5, v23);
    }

    v21 = *v13;
    if (*v13)
    {
      do
      {
        v22 = v21;
        v21 = *(v21 + 8);
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v13[2];
        v12 = *v22 == v13;
        v13 = v22;
      }

      while (v12);
    }

    if (v4 >= *(v22 + 29))
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,geo::Color<float,3,(geo::ColorSpace)0>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,geo::Color<float,3,(geo::ColorSpace)0>>,geo::range_map<unsigned char,geo::Color<float,3,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,3,(geo::ColorSpace)0>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,geo::Color<float,3,(geo::ColorSpace)0>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,geo::Color<float,3,(geo::ColorSpace)0>>>((result + 40), v5, v23);
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<gm::Range<unsigned char>,geo::Color<float,3,(geo::ColorSpace)0>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,geo::Color<float,3,(geo::ColorSpace)0>>,geo::range_map<unsigned char,geo::Color<float,3,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,3,(geo::ColorSpace)0>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,geo::Color<float,3,(geo::ColorSpace)0>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,geo::Color<float,3,(geo::ColorSpace)0>>>(uint64_t **a1, unsigned __int8 a2, uint64_t a3)
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
      v5 = *(v3 + 29);
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

float gms::lerp<geo::Color<float,3,(geo::ColorSpace)0>>@<S0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v4 = 0;
  v10 = *a1;
  v11 = *(a1 + 2);
  v8 = *a2;
  v9 = *(a2 + 2);
  do
  {
    *(&v16 + v4) = *(&v8 + v4) - *(&v10 + v4);
    v4 += 4;
  }

  while (v4 != 12);
  v5 = 0;
  v12 = v16;
  v13 = v17;
  do
  {
    *(&v16 + v5) = *(&v12 + v5) * a4;
    v5 += 4;
  }

  while (v5 != 12);
  v6 = 0;
  v14 = v16;
  v15 = v17;
  do
  {
    *(&v16 + v6) = *(&v14 + v6) + *(&v10 + v6);
    v6 += 4;
  }

  while (v6 != 12);
  result = v17;
  *a3 = v16;
  *(a3 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geo::Color<float,3,(geo::ColorSpace)0> (*)(float,geo::Color<float,3,(geo::ColorSpace)0> const&,geo::Color<float,3,(geo::ColorSpace)0> const&),std::allocator<geo::Color<float,3,(geo::ColorSpace)0> (*)(float,geo::Color<float,3,(geo::ColorSpace)0> const&,geo::Color<float,3,(geo::ColorSpace)0> const&)>,geo::Color<float,3,(geo::ColorSpace)0> ()(float,geo::Color<float,3,(geo::ColorSpace)0> const&,geo::Color<float,3,(geo::ColorSpace)0> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0A2F0;
  a2[1] = v2;
  return result;
}

uint64_t gms::_BuildingMaterial<ggl::Texture2D>::alpha(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 624))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_BuildingMaterial<ggl::Texture2D>::addAlpha(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 128);
  if (!v6)
  {
    v7 = a5;
    if (a5)
    {
      LOBYTE(v11) = 26;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Au, &v11);
    }

    gms::createPropertyStore<float>(&v10, v7);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::createPropertyStore<float>(uint64_t *a1, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  operator new();
}

void sub_1B2D4B834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<float ()(float,float const&,float const&)>::~__value_func[abi:nn200100](va);
  MEMORY[0x1B8C62190](v4, 0x10A1C400DB1E3E4);
  *v3 = 0;
  _Unwind_Resume(a1);
}

uint64_t gms::NonZoomablePropertyStore<float>::addProperty(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = *a4;
  *(result + 12) = 1;
  *(result + 8) = v4;
  return result;
}

void gms::ZoomablePropertyStore<float>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A1A0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<float ()(float,float const&,float const&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::ZoomablePropertyStore<float>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A1A0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<float ()(float,float const&,float const&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

uint64_t geo::range_map<unsigned char,float,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,float>>>::insert(uint64_t result, uint64_t *a2)
{
  if (!*(result + 16))
  {
    return std::__tree<std::__value_type<gm::Range<unsigned char>,unsigned int>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,unsigned int>,geo::range_map<unsigned char,unsigned int,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned int>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,unsigned int>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,unsigned int>>(result, *(a2 + 1), a2);
  }

  v2 = (result + 8);
  if (*result == result + 8)
  {
    v8 = *result;
  }

  else
  {
    v3 = 0;
    v4 = *result;
    do
    {
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      ++v3;
      v4 = v6;
    }

    while (v6 != v2);
    v8 = *result;
    do
    {
      v9 = v3 >> 1;
      v10 = v8;
      if (v3 >= 2)
      {
        v11 = v3 >> 1;
        v12 = v8;
        do
        {
          v13 = v12[1];
          if (v13)
          {
            do
            {
              v10 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v10 = v12[2];
              v7 = *v10 == v12;
              v12 = v10;
            }

            while (!v7);
          }

          v12 = v10;
        }

        while (v11-- > 1);
      }

      if (*(v10 + 29) < *(a2 + 1))
      {
        v15 = v10[1];
        if (v15)
        {
          do
          {
            v8 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v7 = *v8 == v10;
            v10 = v8;
          }

          while (!v7);
        }

        v9 = v3 + ~v9;
      }

      v3 = v9;
    }

    while (v9);
  }

  if (v2 == v8 || *(v8 + 28) >= *(a2 + 1))
  {
    if (*result == v8)
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,unsigned int>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,unsigned int>,geo::range_map<unsigned char,unsigned int,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned int>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,unsigned int>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,unsigned int>>(result, *(a2 + 1), a2);
    }

    v16 = *v8;
    if (*v8)
    {
      do
      {
        v17 = v16;
        v16 = *(v16 + 8);
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = v8[2];
        v7 = *v17 == v8;
        v8 = v17;
      }

      while (v7);
    }

    if (*a2 >= *(v17 + 29))
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,unsigned int>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,unsigned int>,geo::range_map<unsigned char,unsigned int,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned int>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,unsigned int>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,unsigned int>>(result, *(a2 + 1), a2);
    }
  }

  return result;
}

uint64_t gms::_BuildingMaterial<ggl::Texture2D>::noColorCorrection(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 600))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_BuildingMaterial<ggl::Texture2D>::addNoColorCorrection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    v7 = a5;
    if (a5)
    {
      LOBYTE(v11) = 25;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x19u, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, v7);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::createPropertyStore<BOOL>(uint64_t *a1, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  operator new();
}

uint64_t std::__function::__value_func<BOOL ()(float,BOOL const&,BOOL const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void gms::ZoomablePropertyStore<BOOL>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A210;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<BOOL ()(float,BOOL const&,BOOL const&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::ZoomablePropertyStore<BOOL>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A210;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<BOOL ()(float,BOOL const&,BOOL const&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

uint64_t gms::ZoomablePropertyStore<BOOL>::addProperty(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, char *a4)
{
  *(result + 64) = -1082130432;
  *(result + 68) = 1;
  v4 = *a2;
  v5 = *a3;
  v23 = v4 | (v5 << 8);
  v24 = *a4;
  if (!*(result + 56))
  {
    return std::__tree<std::__value_type<gm::Range<unsigned char>,unsigned char>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,unsigned char>,geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,unsigned char>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,unsigned char>>((result + 40), v5, &v23);
  }

  v6 = *(result + 40);
  v7 = (result + 48);
  if (v6 == (result + 48))
  {
    v13 = *(result + 40);
  }

  else
  {
    v8 = 0;
    v9 = *(result + 40);
    do
    {
      v10 = v9[1];
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
          v11 = v9[2];
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      ++v8;
      v9 = v11;
    }

    while (v11 != v7);
    v13 = *(result + 40);
    do
    {
      v14 = v8 >> 1;
      v15 = v13;
      if (v8 >= 2)
      {
        v16 = v8 >> 1;
        v17 = v13;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            do
            {
              v15 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v15 = v17[2];
              v12 = *v15 == v17;
              v17 = v15;
            }

            while (!v12);
          }

          v17 = v15;
        }

        while (v16-- > 1);
      }

      if (*(v15 + 26) < v5)
      {
        v20 = v15[1];
        if (v20)
        {
          do
          {
            v13 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v13 = v15[2];
            v12 = *v13 == v15;
            v15 = v13;
          }

          while (!v12);
        }

        v14 = v8 + ~v14;
      }

      v8 = v14;
    }

    while (v14);
  }

  if (v7 == v13 || *(v13 + 25) >= v5)
  {
    if (v6 == v13)
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,unsigned char>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,unsigned char>,geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,unsigned char>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,unsigned char>>((result + 40), v5, &v23);
    }

    v21 = *v13;
    if (*v13)
    {
      do
      {
        v22 = v21;
        v21 = *(v21 + 8);
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v13[2];
        v12 = *v22 == v13;
        v13 = v22;
      }

      while (v12);
    }

    if (v4 >= *(v22 + 26))
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,unsigned char>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,unsigned char>,geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,unsigned char>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,unsigned char>>((result + 40), v5, &v23);
    }
  }

  return result;
}

unint64_t gms::_BuildingMaterial<ggl::Texture2D>::brightnessRemapRange(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 528))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

uint64_t gms::_BuildingMaterial<ggl::Texture2D>::addBrightnessRemapRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 112);
  if (!v6)
  {
    v7 = a5;
    if (a5)
    {
      LOBYTE(v11) = 22;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x16u, &v11);
    }

    gms::createPropertyStore<gm::Matrix<float,2,1>>(&v10, v7);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::createPropertyStore<gm::Matrix<float,2,1>>(uint64_t *a1, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  operator new();
}

uint64_t std::__function::__value_func<gm::Matrix<float,2,1> ()(float,gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gms::NonZoomablePropertyStore<gm::Matrix<float,2,1>>::addProperty(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(result + 16);
  *(result + 8) = *a4;
  if ((v4 & 1) == 0)
  {
    *(result + 16) = 1;
  }

  return result;
}

void gms::ZoomablePropertyStore<gm::Matrix<float,2,1>>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A280;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<gm::Matrix<float,2,1> ()(float,gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::ZoomablePropertyStore<gm::Matrix<float,2,1>>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A280;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<gm::Matrix<float,2,1> ()(float,gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

uint64_t gms::ZoomablePropertyStore<gm::Matrix<float,2,1>>::addProperty(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  *(result + 64) = -1082130432;
  *(result + 68) = 1;
  v4 = *a2;
  v5 = *a3;
  v23 = v4 | (v5 << 8);
  v24 = *a4;
  if (!*(result + 56))
  {
    return std::__tree<std::__value_type<gm::Range<unsigned char>,gm::Matrix<float,2,1>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,gm::Matrix<float,2,1>>,geo::range_map<unsigned char,gm::Matrix<float,2,1>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,gm::Matrix<float,2,1>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,gm::Matrix<float,2,1>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,gm::Matrix<float,2,1>>>((result + 40), v5, &v23);
  }

  v6 = *(result + 40);
  v7 = (result + 48);
  if (v6 == (result + 48))
  {
    v13 = *(result + 40);
  }

  else
  {
    v8 = 0;
    v9 = *(result + 40);
    do
    {
      v10 = v9[1];
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
          v11 = v9[2];
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      ++v8;
      v9 = v11;
    }

    while (v11 != v7);
    v13 = *(result + 40);
    do
    {
      v14 = v8 >> 1;
      v15 = v13;
      if (v8 >= 2)
      {
        v16 = v8 >> 1;
        v17 = v13;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            do
            {
              v15 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v15 = v17[2];
              v12 = *v15 == v17;
              v17 = v15;
            }

            while (!v12);
          }

          v17 = v15;
        }

        while (v16-- > 1);
      }

      if (*(v15 + 29) < v5)
      {
        v20 = v15[1];
        if (v20)
        {
          do
          {
            v13 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v13 = v15[2];
            v12 = *v13 == v15;
            v15 = v13;
          }

          while (!v12);
        }

        v14 = v8 + ~v14;
      }

      v8 = v14;
    }

    while (v14);
  }

  if (v7 == v13 || *(v13 + 28) >= v5)
  {
    if (v6 == v13)
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,gm::Matrix<float,2,1>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,gm::Matrix<float,2,1>>,geo::range_map<unsigned char,gm::Matrix<float,2,1>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,gm::Matrix<float,2,1>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,gm::Matrix<float,2,1>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,gm::Matrix<float,2,1>>>((result + 40), v5, &v23);
    }

    v21 = *v13;
    if (*v13)
    {
      do
      {
        v22 = v21;
        v21 = *(v21 + 8);
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v13[2];
        v12 = *v22 == v13;
        v13 = v22;
      }

      while (v12);
    }

    if (v4 >= *(v22 + 29))
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,gm::Matrix<float,2,1>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,gm::Matrix<float,2,1>>,geo::range_map<unsigned char,gm::Matrix<float,2,1>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,gm::Matrix<float,2,1>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,gm::Matrix<float,2,1>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,gm::Matrix<float,2,1>>>((result + 40), v5, &v23);
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<gm::Range<unsigned char>,gm::Matrix<float,2,1>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,gm::Matrix<float,2,1>>,geo::range_map<unsigned char,gm::Matrix<float,2,1>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,gm::Matrix<float,2,1>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,gm::Matrix<float,2,1>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,gm::Matrix<float,2,1>>>(uint64_t **a1, unsigned __int8 a2, uint64_t a3)
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
      v5 = *(v3 + 29);
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

unint64_t gms::ZoomablePropertyStore<gm::Matrix<float,2,1>>::getProperty(uint64_t a1, float a2)
{
  v4 = floorf(a2);
  v5 = *(a1 + 64);
  if (((v5 == v4) & ~*(a1 + 68)) != 0 || v5 == a2)
  {
    v17 = *(a1 + 72);
    v8 = *(a1 + 76);
    v9 = LODWORD(v17) >> 8;
  }

  else
  {
    if (v4 >= 0x17)
    {
      v6 = 23;
    }

    else
    {
      v6 = v4;
    }

    v7 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6 + 1);
    if (!*(a1 + 56) || (v10 = v7, v11 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6), (a1 + 48) == v11))
    {
      v19 = 0;
      LOBYTE(v17) = 0;
      *(a1 + 64) = v4;
      *(a1 + 68) = 0;
    }

    else
    {
      v12 = *(a1 + 32);
      if (!v12 || (v13 = a2 - v6, v13 > 1.0) || (v13 >= 0.0 ? (v14 = a1 + 48 == v10) : (v14 = 1), v14))
      {
        v17 = v11[8];
        v8 = *(v11 + 9);
        v9 = LODWORD(v17) >> 8;
        *(a1 + 64) = v4;
        *(a1 + 68) = 0;
      }

      else
      {
        v15 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6)[4];
        v22 = v15;
        v21 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6 + 1)[4];
        if (v15 == v21)
        {
          v16 = 0;
          v8 = HIDWORD(v15);
          v17 = *&v15;
        }

        else
        {
          v23 = a2 - v6;
          v17 = (*(*v12 + 48))(v12, &v23, &v22, &v21);
          v8 = v20;
          v16 = 1;
          v4 = a2;
        }

        v9 = LODWORD(v17) >> 8;
        *(a1 + 64) = v4;
        *(a1 + 68) = v16;
      }

      v19 = 1;
    }

    if (*(a1 + 80) == v19)
    {
      if (*(a1 + 80))
      {
        *(a1 + 72) = LOBYTE(v17) | (v9 << 8);
        *(a1 + 76) = v8;
      }
    }

    else if (*(a1 + 80))
    {
      *(a1 + 80) = 0;
    }

    else
    {
      *(a1 + 72) = LOBYTE(v17) | (v9 << 8);
      *(a1 + 76) = v8;
      *(a1 + 80) = 1;
    }
  }

  return LOBYTE(v17) | ((*&v9 & 0xFFFFFFLL) << 8) | (v8 << 32);
}

unint64_t gms::_BuildingMaterial<ggl::Texture2D>::saturationRemapRange(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 504))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

uint64_t gms::_BuildingMaterial<ggl::Texture2D>::addSaturationRemapRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 21;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x15u, &v11);
    }

    gms::createPropertyStore<gm::Matrix<float,2,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BuildingMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 192))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_BuildingMaterial<ggl::Texture2D>::addAlbedoFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 96);
  if (!v6)
  {
    v7 = a5;
    if (a5)
    {
      LOBYTE(v11) = 8;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 8u, &v11);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, v7);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(uint64_t *a1, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  operator new();
}

uint64_t std::__function::__value_func<geo::Color<float,4,(geo::ColorSpace)0> ()(float,geo::Color<float,4,(geo::ColorSpace)0> const&,geo::Color<float,4,(geo::ColorSpace)0> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 gms::NonZoomablePropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>::getProperty@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  a2->n128_u8[0] = 0;
  a2[1].n128_u8[0] = 0;
  if (*(a1 + 24) == 1)
  {
    result = *(a1 + 8);
    *a2 = result;
    a2[1].n128_u8[0] = 1;
  }

  return result;
}

void gms::ZoomablePropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A078;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<geo::Color<float,4,(geo::ColorSpace)0> ()(float,geo::Color<float,4,(geo::ColorSpace)0> const&,geo::Color<float,4,(geo::ColorSpace)0> const&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::ZoomablePropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A078;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<geo::Color<float,4,(geo::ColorSpace)0> ()(float,geo::Color<float,4,(geo::ColorSpace)0> const&,geo::Color<float,4,(geo::ColorSpace)0> const&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

uint64_t gms::ZoomablePropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>::addProperty(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, __int128 *a4)
{
  *(result + 64) = -1082130432;
  *(result + 68) = 1;
  v4 = *a2;
  v5 = *a3;
  v23 = v4 | (v5 << 8);
  v24 = *a4;
  if (!*(result + 56))
  {
    return std::__tree<std::__value_type<gm::Range<unsigned char>,geo::Color<float,4,(geo::ColorSpace)0>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,geo::Color<float,4,(geo::ColorSpace)0>>,geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,geo::Color<float,4,(geo::ColorSpace)0>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>((result + 40), v5, &v23);
  }

  v6 = *(result + 40);
  v7 = (result + 48);
  if (v6 == (result + 48))
  {
    v13 = *(result + 40);
  }

  else
  {
    v8 = 0;
    v9 = *(result + 40);
    do
    {
      v10 = v9[1];
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
          v11 = v9[2];
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      ++v8;
      v9 = v11;
    }

    while (v11 != v7);
    v13 = *(result + 40);
    do
    {
      v14 = v8 >> 1;
      v15 = v13;
      if (v8 >= 2)
      {
        v16 = v8 >> 1;
        v17 = v13;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            do
            {
              v15 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v15 = v17[2];
              v12 = *v15 == v17;
              v17 = v15;
            }

            while (!v12);
          }

          v17 = v15;
        }

        while (v16-- > 1);
      }

      if (*(v15 + 29) < v5)
      {
        v20 = v15[1];
        if (v20)
        {
          do
          {
            v13 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v13 = v15[2];
            v12 = *v13 == v15;
            v15 = v13;
          }

          while (!v12);
        }

        v14 = v8 + ~v14;
      }

      v8 = v14;
    }

    while (v14);
  }

  if (v7 == v13 || *(v13 + 28) >= v5)
  {
    if (v6 == v13)
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,geo::Color<float,4,(geo::ColorSpace)0>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,geo::Color<float,4,(geo::ColorSpace)0>>,geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,geo::Color<float,4,(geo::ColorSpace)0>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>((result + 40), v5, &v23);
    }

    v21 = *v13;
    if (*v13)
    {
      do
      {
        v22 = v21;
        v21 = *(v21 + 8);
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v13[2];
        v12 = *v22 == v13;
        v13 = v22;
      }

      while (v12);
    }

    if (v4 >= *(v22 + 29))
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,geo::Color<float,4,(geo::ColorSpace)0>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,geo::Color<float,4,(geo::ColorSpace)0>>,geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,geo::Color<float,4,(geo::ColorSpace)0>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>((result + 40), v5, &v23);
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<gm::Range<unsigned char>,geo::Color<float,4,(geo::ColorSpace)0>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,geo::Color<float,4,(geo::ColorSpace)0>>,geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,geo::Color<float,4,(geo::ColorSpace)0>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>(uint64_t **a1, unsigned __int8 a2, uint64_t a3)
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
      v5 = *(v3 + 29);
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

void *gms::ZoomablePropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>::getProperty@<X0>(void *result@<X0>, _BYTE *a2@<X8>, float a3@<S0>)
{
  v4 = result;
  v6 = floorf(a3);
  v7 = *(result + 68);
  v8 = *(result + 16);
  *a2 = 0;
  a2[16] = 0;
  if (((v8 == v6) & ~v7) == 0 && v8 != a3)
  {
    if (v6 >= 0x17)
    {
      v9 = 23;
    }

    else
    {
      v9 = v6;
    }

    result = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(result + 5, v9 + 1);
    if (!v4[7] || (v10 = result, result = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(v4 + 5, v9), v4 + 6 == result))
    {
      v17 = 0;
    }

    else
    {
      v11 = v4[4];
      if (v11)
      {
        v12 = a3 - v9;
        if (v12 <= 1.0 && v12 >= 0.0 && v4 + 6 != v10)
        {
          v14 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(v4 + 5, v9);
          v21 = *(v14 + 2);
          result = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(v4 + 5, v9 + 1);
          v20 = *(result + 2);
          if (v21 == v20 && *(&v21 + 1) == *(&v20 + 1))
          {
            v16 = 0;
            *a2 = *(v14 + 2);
          }

          else
          {
            v22 = a3 - v9;
            result = (*(*v11 + 48))(v11, &v22, &v21, &v20);
            v16 = 1;
            v6 = a3;
          }

          v17 = 1;
          a2[16] = 1;
          *(v4 + 16) = v6;
          *(v4 + 68) = v16;
          goto LABEL_24;
        }
      }

      *a2 = *(result + 2);
      v17 = 1;
      a2[16] = 1;
    }

    *(v4 + 16) = v6;
    *(v4 + 68) = 0;
LABEL_24:
    v18 = *(v4 + 88);
    if (v18 == v17)
    {
      if (*(v4 + 88))
      {
        *(v4 + 9) = *a2;
      }
    }

    else
    {
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        *(v4 + 9) = *a2;
        v19 = 1;
      }

      *(v4 + 88) = v19;
    }

    return result;
  }

  if (*(result + 88) == 1)
  {
    *a2 = *(result + 9);
    a2[16] = 1;
  }

  return result;
}

uint64_t std::__function::__func<geo::Color<float,4,(geo::ColorSpace)0> (*)(float,geo::Color<float,4,(geo::ColorSpace)0> const&,geo::Color<float,4,(geo::ColorSpace)0> const&),std::allocator<geo::Color<float,4,(geo::ColorSpace)0> (*)(float,geo::Color<float,4,(geo::ColorSpace)0> const&,geo::Color<float,4,(geo::ColorSpace)0> const&)>,geo::Color<float,4,(geo::ColorSpace)0> ()(float,geo::Color<float,4,(geo::ColorSpace)0> const&,geo::Color<float,4,(geo::ColorSpace)0> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A0A030;
  a2[1] = v2;
  return result;
}

uint64_t gms::_BuildingMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 24))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_BuildingMaterial<ggl::Texture2D>::addAlbedo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 88);
  if (!v6)
  {
    v7 = a5;
    if (a5)
    {
      LOBYTE(v11) = 1;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 1u, &v11);
    }

    gms::createPropertyStore<unsigned char>(&v10, v7);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::createPropertyStore<unsigned char>(uint64_t *a1, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  operator new();
}

uint64_t std::__function::__value_func<unsigned char ()(float,unsigned char const&,unsigned char const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void gms::ZoomablePropertyStore<unsigned char>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A09FC0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<unsigned char ()(float,unsigned char const&,unsigned char const&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::ZoomablePropertyStore<unsigned char>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A09FC0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<unsigned char ()(float,unsigned char const&,unsigned char const&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

uint64_t gms::ZoomablePropertyStore<unsigned char>::addProperty(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, char *a4)
{
  *(result + 64) = -1082130432;
  *(result + 68) = 1;
  v4 = *a2;
  v5 = *a3;
  v23 = v4 | (v5 << 8);
  v24 = *a4;
  if (!*(result + 56))
  {
    return std::__tree<std::__value_type<gm::Range<unsigned char>,unsigned char>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,unsigned char>,geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,unsigned char>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,unsigned char>>((result + 40), v5, &v23);
  }

  v6 = *(result + 40);
  v7 = (result + 48);
  if (v6 == (result + 48))
  {
    v13 = *(result + 40);
  }

  else
  {
    v8 = 0;
    v9 = *(result + 40);
    do
    {
      v10 = v9[1];
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
          v11 = v9[2];
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      ++v8;
      v9 = v11;
    }

    while (v11 != v7);
    v13 = *(result + 40);
    do
    {
      v14 = v8 >> 1;
      v15 = v13;
      if (v8 >= 2)
      {
        v16 = v8 >> 1;
        v17 = v13;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            do
            {
              v15 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v15 = v17[2];
              v12 = *v15 == v17;
              v17 = v15;
            }

            while (!v12);
          }

          v17 = v15;
        }

        while (v16-- > 1);
      }

      if (*(v15 + 26) < v5)
      {
        v20 = v15[1];
        if (v20)
        {
          do
          {
            v13 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v13 = v15[2];
            v12 = *v13 == v15;
            v15 = v13;
          }

          while (!v12);
        }

        v14 = v8 + ~v14;
      }

      v8 = v14;
    }

    while (v14);
  }

  if (v7 == v13 || *(v13 + 25) >= v5)
  {
    if (v6 == v13)
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,unsigned char>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,unsigned char>,geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,unsigned char>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,unsigned char>>((result + 40), v5, &v23);
    }

    v21 = *v13;
    if (*v13)
    {
      do
      {
        v22 = v21;
        v21 = *(v21 + 8);
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v13[2];
        v12 = *v22 == v13;
        v13 = v22;
      }

      while (v12);
    }

    if (v4 >= *(v22 + 26))
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,unsigned char>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,unsigned char>,geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,unsigned char>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,unsigned char>>((result + 40), v5, &v23);
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<gm::Range<unsigned char>,unsigned char>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,unsigned char>,geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,unsigned char>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,unsigned char>>(uint64_t **a1, unsigned __int8 a2, uint64_t a3)
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
      v5 = *(v3 + 26);
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

uint64_t gms::ZoomablePropertyStore<unsigned char>::getProperty(uint64_t a1, float a2)
{
  v4 = floorf(a2);
  v5 = *(a1 + 64);
  if (((v5 == v4) & ~*(a1 + 68)) != 0 || v5 == a2)
  {
    return *(a1 + 69);
  }

  if (v4 >= 0x17)
  {
    v6 = 23;
  }

  else
  {
    v6 = v4;
  }

  v7 = geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::find((a1 + 40), v6 + 1);
  if (!*(a1 + 56) || (v8 = v7, v9 = geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::find((a1 + 40), v6), (a1 + 48) == v9))
  {
    v13 = 0;
    v16 = 0;
    *(a1 + 64) = v4;
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = a2 - v6;
      if (v11 <= 1.0 && v11 >= 0.0 && a1 + 48 != v8)
      {
        v18 = *(geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::find((a1 + 40), v6) + 27);
        v13 = v18;
        v17 = *(geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::find((a1 + 40), v6 + 1) + 27);
        if (v18 == v17)
        {
          v14 = 0;
        }

        else
        {
          v19 = a2 - v6;
          v13 = (*(*v10 + 48))(v10, &v19, &v18, &v17);
          v14 = 1;
          v4 = a2;
        }

        *(a1 + 64) = v4;
        *(a1 + 68) = v14;
        v16 = 1;
        goto LABEL_20;
      }
    }

    v13 = *(v9 + 27);
    *(a1 + 64) = v4;
    v16 = 1;
  }

  *(a1 + 68) = 0;
LABEL_20:
  result = v13 | (v16 << 8);
  *(a1 + 69) = v13 | (v16 << 8);
  return result;
}

void *geo::range_map<unsigned char,unsigned char,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned char>>>::find(void *a1, unsigned __int8 a2)
{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = 0;
    v6 = v3;
    do
    {
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      ++v5;
      v6 = v8;
    }

    while (v8 != v2);
    do
    {
      v10 = v5 >> 1;
      v11 = v3;
      if (v5 >= 2)
      {
        v12 = v5 >> 1;
        v13 = v3;
        do
        {
          v14 = v13[1];
          if (v14)
          {
            do
            {
              v11 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v11 = v13[2];
              v9 = *v11 == v13;
              v13 = v11;
            }

            while (!v9);
          }

          v13 = v11;
          v16 = v12-- <= 1;
        }

        while (!v16);
      }

      if (*(v11 + 26) <= a2)
      {
        v15 = v11[1];
        if (v15)
        {
          do
          {
            v3 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v3 = v11[2];
            v9 = *v3 == v11;
            v11 = v3;
          }

          while (!v9);
        }

        v10 = v5 + ~v10;
      }

      v5 = v10;
    }

    while (v10);
  }

  if (v2 == v3)
  {
    return v2;
  }

  v16 = *(v3 + 25) <= a2 && *(v3 + 26) > a2;
  if (!v16)
  {
    return v2;
  }

  return v3;
}

void gms::_BuildingMaterial<ggl::Texture2D>::~_BuildingMaterial(void *a1)
{
  gms::_BuildingMaterial<ggl::Texture2D>::~_BuildingMaterial(a1);

  JUMPOUT(0x1B8C62190);
}

void *gms::_BuildingMaterial<ggl::Texture2D>::~_BuildingMaterial(void *a1)
{
  *a1 = &unk_1F2A0B3B0;
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  v3 = a1[16];
  a1[16] = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v4 = a1[15];
  a1[15] = 0;
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  v5 = a1[14];
  a1[14] = 0;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  v6 = a1[13];
  a1[13] = 0;
  if (v6)
  {
    (*(*v6 + 32))(v6);
  }

  v7 = a1[12];
  a1[12] = 0;
  if (v7)
  {
    (*(*v7 + 32))(v7);
  }

  v8 = a1[11];
  a1[11] = 0;
  if (v8)
  {
    (*(*v8 + 32))(v8);
  }

  return gms::_Material<ggl::Texture2D>::~_Material(a1);
}

void *gms::_Material<ggl::Texture2D>::~_Material(void *a1)
{
  *a1 = &unk_1F2A09C58;
  v2 = a1[10];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[3];
  if (v4)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = a1[1];
  a1[1] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void gms::_Material<ggl::Texture2D>::~_Material(void *a1)
{
  gms::_Material<ggl::Texture2D>::~_Material(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gms::_BuildingMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0B378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::colorRampRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 224);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 720))();
  }

  *a2 = 0;
  a2[40] = 0;
  return result;
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addColorRampRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 224);
  if (!v6)
  {
    v7 = a5;
    if (a5)
    {
      LOBYTE(v11) = 30;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Eu, &v11);
    }

    gms::createPropertyStore<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>(&v10, v7);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::createPropertyStore<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>(uint64_t *a1, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  operator new();
}

uint64_t std::__function::__value_func<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>> ()(float,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>> const&,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void gms::NonZoomablePropertyStore<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>::~NonZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A860;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::NonZoomablePropertyStore<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>::~NonZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A860;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void gms::NonZoomablePropertyStore<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>::addProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>::unordered_map(&v15, a4);
  v20 = 1;
  if (*(a1 + 48))
  {
    if (*(a1 + 32))
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      *(a1 + 24) = 0;
      v7 = *(a1 + 16);
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          *(*(a1 + 8) + 8 * i) = 0;
        }
      }

      *(a1 + 32) = 0;
    }

    v9 = v15;
    v15 = 0;
    v10 = *(a1 + 8);
    *(a1 + 8) = v9;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = v16;
    v12 = v17;
    *(a1 + 24) = v17;
    *(a1 + 16) = v11;
    v16 = 0;
    v13 = v18;
    *(a1 + 32) = v18;
    *(a1 + 40) = v19;
    if (v13)
    {
      v14 = *(v12 + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v14 >= v11)
        {
          v14 %= v11;
        }
      }

      else
      {
        v14 &= v11 - 1;
      }

      *(*(a1 + 8) + 8 * v14) = a1 + 24;
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    std::__hash_table<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DaVinciTrafficBatchKey>,std::equal_to<md::DaVinciTrafficBatchKey>,true>,std::__unordered_map_equal<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DaVinciTrafficBatchKey>,std::hash<md::DaVinciTrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>>>::__hash_table(a1 + 8, &v15);
    *(a1 + 48) = 1;
  }

  if (v20 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v15);
  }
}

uint64_t *std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>::unordered_map(uint64_t *a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[4];
    if (v5 == 0.0)
    {
      v6 = 0;
    }

    else
    {
      v6 = LODWORD(v5);
    }

    v7 = a1[1];
    if (!*&v7)
    {
      goto LABEL_21;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = v6;
      if (v6 >= *&v7)
      {
        v9 = v6 % v7.i32[0];
      }
    }

    else
    {
      v9 = v6 & (*&v7 + 0xFFFFFFFFLL);
    }

    v10 = *(*a1 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_21:
      operator new();
    }

    while (1)
    {
      v12 = *(v11 + 1);
      if (v12 == v6)
      {
        break;
      }

      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_21;
      }

LABEL_20:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    if (v11[4] != v5)
    {
      goto LABEL_20;
    }
  }

  return a1;
}

uint64_t std::__optional_copy_base<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>,false>::__optional_copy_base[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>::unordered_map(a1, a2);
    *(a1 + 40) = 1;
  }

  return a1;
}

void sub_1B2D4EB78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1);
  }

  _Unwind_Resume(exception_object);
}

void gms::ZoomablePropertyStore<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>::~ZoomablePropertyStore(uint64_t a1)
{
  gms::ZoomablePropertyStore<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>::~ZoomablePropertyStore(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::ZoomablePropertyStore<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A828;
  if (*(a1 + 112) == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 72);
  }

  std::__tree<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,geo::range_map<unsigned char,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::destroy(*(a1 + 48));
  std::__function::__value_func<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>> ()(float,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>> const&,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>> const&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

uint64_t gms::ZoomablePropertyStore<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>::addProperty(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  *(a1 + 64) = -1082130432;
  *(a1 + 68) = 1;
  v23 = *a2 | (*a3 << 8);
  std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>::unordered_map(v24, a4);
  if (!*(a1 + 56))
  {
    goto LABEL_38;
  }

  v5 = *(a1 + 40);
  v6 = (a1 + 48);
  if (v5 == (a1 + 48))
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 40);
    do
    {
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

      ++v7;
      v8 = v10;
    }

    while (v10 != v6);
    v12 = *(a1 + 40);
    do
    {
      v13 = v7 >> 1;
      v14 = v12;
      if (v7 >= 2)
      {
        v15 = v7 >> 1;
        v16 = v12;
        do
        {
          v17 = v16[1];
          if (v17)
          {
            do
            {
              v14 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v14 = v16[2];
              v11 = *v14 == v16;
              v16 = v14;
            }

            while (!v11);
          }

          v16 = v14;
        }

        while (v15-- > 1);
      }

      if (*(v14 + 33) < HIBYTE(v23))
      {
        v19 = v14[1];
        if (v19)
        {
          do
          {
            v12 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v12 = v14[2];
            v11 = *v12 == v14;
            v14 = v12;
          }

          while (!v11);
        }

        v13 = v7 + ~v13;
      }

      v7 = v13;
    }

    while (v13);
  }

  if (v6 == v12 || *(v12 + 32) >= HIBYTE(v23))
  {
    if (v5 == v12)
    {
      goto LABEL_38;
    }

    v20 = *v12;
    if (*v12)
    {
      do
      {
        v21 = v20;
        v20 = *(v20 + 8);
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v12[2];
        v11 = *v21 == v12;
        v12 = v21;
      }

      while (v11);
    }

    if (v23 >= *(v21 + 33))
    {
LABEL_38:
      std::__tree<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,geo::range_map<unsigned char,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>((a1 + 40), HIBYTE(v23), &v23);
    }
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v24);
}

void gms::ZoomablePropertyStore<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>::getProperty(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v3 = a3;
  v6 = floorf(a3);
  v7 = *(a1 + 64);
  if (((v7 == v6) & ~*(a1 + 68)) != 0 || v7 == v3)
  {

    std::__optional_copy_base<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>,false>::__optional_copy_base[abi:nn200100](a2, a1 + 72);
    return;
  }

  *a2 = 0;
  *(a2 + 40) = 0;
  if (v6 >= 0x17)
  {
    v8 = 23;
  }

  else
  {
    v8 = v6;
  }

  v9 = geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::find((a1 + 40), v8 + 1);
  if (*(a1 + 56))
  {
    v10 = v9;
    v11 = geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::find((a1 + 40), v8);
    if ((a1 + 48) != v11)
    {
      if (*(a1 + 32))
      {
        v12 = v3 - v8;
        if (v12 <= 1.0 && v12 >= 0.0 && a1 + 48 != v10)
        {
          v14 = geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::find((a1 + 40), v8);
          std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>::unordered_map(v46, (v14 + 5));
          v15 = geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::find((a1 + 40), v8 + 1);
          std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>::unordered_map(&v43, (v15 + 5));
          if (v47[1] == v45)
          {
            v16 = v47;
            v17 = vcnt_s8(v44);
            v17.i16[0] = vaddlv_u8(v17);
            v18 = v17.u32[0];
LABEL_16:
            v16 = *v16;
            if (!v16)
            {
              std::optional<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>::emplace[abi:nn200100]<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>&,void>(a2, v46);
              v28 = 0;
              v3 = v6;
LABEL_45:
              *(a1 + 64) = v3;
              *(a1 + 68) = v28;
              std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v43);
              std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v46);
              goto LABEL_51;
            }

            v19 = *(v16 + 4);
            v20 = LODWORD(v19);
            if (v19 == 0.0)
            {
              v20 = 0;
            }

            if (v44)
            {
              if (v18 > 1)
              {
                v21 = v20 >= *&v44 ? v20 % v44.i32[0] : v20;
              }

              else
              {
                v21 = v20 & (*&v44 + 0xFFFFFFFFLL);
              }

              v22 = *(v43 + 8 * v21);
              if (v22)
              {
                while (1)
                {
                  v22 = *v22;
                  if (!v22)
                  {
                    break;
                  }

                  v23 = v22[1];
                  if (v20 == v23)
                  {
                    if (*(v22 + 4) == v19)
                    {
                      if (v19 == *(v22 + 4))
                      {
                        v24 = *(v22 + 20);
                        v25 = *(v22 + 7);
                        if (*(v16 + 20) == v24 && *(v16 + 7) == v25)
                        {
                          goto LABEL_16;
                        }
                      }

                      break;
                    }
                  }

                  else
                  {
                    if (v18 > 1)
                    {
                      if (v23 >= *&v44)
                      {
                        v23 %= *&v44;
                      }
                    }

                    else
                    {
                      v23 &= *&v44 - 1;
                    }

                    if (v23 != v21)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }

          v48 = v3 - v8;
          v27 = *(a1 + 32);
          if (!v27)
          {
            v41 = std::__throw_bad_function_call[abi:nn200100]();
            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v43);
            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v46);
            if (*(a2 + 40) == 1)
            {
              std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a2);
            }

            _Unwind_Resume(v41);
          }

          (*(*v27 + 48))(v42);
          if (*(a2 + 40) == 1)
          {
            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a2);
            *(a2 + 40) = 0;
          }

          std::__hash_table<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DaVinciTrafficBatchKey>,std::equal_to<md::DaVinciTrafficBatchKey>,true>,std::__unordered_map_equal<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DaVinciTrafficBatchKey>,std::hash<md::DaVinciTrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>>>::__hash_table(a2, v42);
          v28 = 1;
          *(a2 + 40) = 1;
          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v42);
          goto LABEL_45;
        }
      }

      std::optional<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>::emplace[abi:nn200100]<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>&,void>(a2, (v11 + 5));
    }
  }

  *(a1 + 64) = v6;
  *(a1 + 68) = 0;
LABEL_51:
  v29 = (a1 + 72);
  if (*(a1 + 112) == *(a2 + 40))
  {
    if (v29 != a2 && *(a1 + 112))
    {
      *(a1 + 104) = *(a2 + 32);
      v30 = *(a2 + 16);
      v31 = *(a1 + 80);
      if (!v31)
      {
        goto LABEL_65;
      }

      for (i = 0; i != v31; ++i)
      {
        *(*v29 + 8 * i) = 0;
      }

      v33 = *(a1 + 88);
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      if (v33)
      {
        while (v30)
        {
          v34 = v30[4];
          v33[4] = v34;
          for (j = 5; j != 8; ++j)
          {
            v33[j] = v30[j];
          }

          v36 = *v33;
          if (v34 == 0.0)
          {
            v37 = 0;
          }

          else
          {
            v37 = LODWORD(v34);
          }

          *(v33 + 1) = v37;
          inserted = std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__node_insert_multi_prepare(v29, v37, v33 + 4);
          std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_perform(v29, v33, inserted);
          v30 = *v30;
          v33 = v36;
          if (!v36)
          {
            goto LABEL_65;
          }
        }

        do
        {
          v39 = *v33;
          operator delete(v33);
          v33 = v39;
        }

        while (v39);
      }

      else
      {
LABEL_65:
        if (v30)
        {
          operator new();
        }
      }
    }
  }

  else
  {
    if (*(a1 + 112))
    {
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 72);
      v40 = 0;
    }

    else
    {
      std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>::unordered_map((a1 + 72), a2);
      v40 = 1;
    }

    *(a1 + 112) = v40;
  }
}

uint64_t *std::optional<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>::emplace[abi:nn200100]<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    a1 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
    *(a1 + 40) = 0;
  }

  result = std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>::unordered_map(a1, a2);
  *(result + 40) = 1;
  return result;
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::gradientMaskFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 216);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 696))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addGradientMaskFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 216);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 29;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Du, &v11);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::emissiveFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 208);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 672))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addEmissiveFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 208);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 28;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Cu, &v11);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addAlpha(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 200);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 26;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Au, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addHideOnCollapse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 192);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 24;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x18u, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::gradientMaskFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 184);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 552))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addGradientMaskFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 184);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 23;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x17u, &v11);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::colorRamp@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 176);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 408))();
  }

  *a2 = 0;
  a2[40] = 0;
  return result;
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addColorRamp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 176);
  if (!v6)
  {
    v7 = a5;
    if (a5)
    {
      LOBYTE(v11) = 17;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x11u, &v11);
    }

    gms::createPropertyStore<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>(&v10, v7);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::createPropertyStore<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>(uint64_t *a1, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  operator new();
}

uint64_t std::__function::__value_func<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>> ()(float,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>> const&,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void gms::NonZoomablePropertyStore<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>::~NonZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A7F0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 8);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::NonZoomablePropertyStore<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>::~NonZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A7F0;
  if (*(a1 + 48) == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 8);
  }

  return a1;
}

void gms::NonZoomablePropertyStore<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>::addProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>::unordered_map(&v15, a4);
  v20 = 1;
  if (*(a1 + 48))
  {
    if (*(a1 + 32))
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      *(a1 + 24) = 0;
      v7 = *(a1 + 16);
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          *(*(a1 + 8) + 8 * i) = 0;
        }
      }

      *(a1 + 32) = 0;
    }

    v9 = v15;
    v15 = 0;
    v10 = *(a1 + 8);
    *(a1 + 8) = v9;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = v16;
    v12 = v17;
    *(a1 + 24) = v17;
    *(a1 + 16) = v11;
    v16 = 0;
    v13 = v18;
    *(a1 + 32) = v18;
    *(a1 + 40) = v19;
    if (v13)
    {
      v14 = *(v12 + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v14 >= v11)
        {
          v14 %= v11;
        }
      }

      else
      {
        v14 &= v11 - 1;
      }

      *(*(a1 + 8) + 8 * v14) = a1 + 24;
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    std::__hash_table<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DaVinciTrafficBatchKey>,std::equal_to<md::DaVinciTrafficBatchKey>,true>,std::__unordered_map_equal<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DaVinciTrafficBatchKey>,std::hash<md::DaVinciTrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>>>::__hash_table(a1 + 8, &v15);
    *(a1 + 48) = 1;
  }

  if (v20 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v15);
  }
}

uint64_t *std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>::unordered_map(uint64_t *a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[4];
    if (v5 == 0.0)
    {
      v6 = 0;
    }

    else
    {
      v6 = LODWORD(v5);
    }

    v7 = a1[1];
    if (!*&v7)
    {
      goto LABEL_21;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v9 = v6;
      if (v6 >= *&v7)
      {
        v9 = v6 % v7.i32[0];
      }
    }

    else
    {
      v9 = v6 & (*&v7 + 0xFFFFFFFFLL);
    }

    v10 = *(*a1 + 8 * v9);
    if (!v10 || (v11 = *v10) == 0)
    {
LABEL_21:
      operator new();
    }

    while (1)
    {
      v12 = *(v11 + 1);
      if (v12 == v6)
      {
        break;
      }

      if (v8.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_21;
      }

LABEL_20:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    if (v11[4] != v5)
    {
      goto LABEL_20;
    }
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t std::__optional_copy_base<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>,false>::__optional_copy_base[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40) == 1)
  {
    std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>::unordered_map(a1, a2);
    *(a1 + 40) = 1;
  }

  return a1;
}

void sub_1B2D50280(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1);
  }

  _Unwind_Resume(exception_object);
}

void gms::ZoomablePropertyStore<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>::~ZoomablePropertyStore(uint64_t a1)
{
  gms::ZoomablePropertyStore<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>::~ZoomablePropertyStore(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::ZoomablePropertyStore<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A7B8;
  if (*(a1 + 112) == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 72);
  }

  std::__tree<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,geo::range_map<unsigned char,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::destroy(*(a1 + 48));
  std::__function::__value_func<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>> ()(float,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>> const&,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>> const&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

void std::__tree<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,geo::range_map<unsigned char,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,geo::range_map<unsigned char,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::destroy(*a1);
    std::__tree<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,geo::range_map<unsigned char,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::destroy(a1[1]);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 5));

    operator delete(a1);
  }
}

uint64_t gms::ZoomablePropertyStore<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>::addProperty(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  *(a1 + 64) = -1082130432;
  *(a1 + 68) = 1;
  v23 = *a2 | (*a3 << 8);
  std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>::unordered_map(v24, a4);
  if (!*(a1 + 56))
  {
    goto LABEL_38;
  }

  v5 = *(a1 + 40);
  v6 = (a1 + 48);
  if (v5 == (a1 + 48))
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 40);
    do
    {
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

      ++v7;
      v8 = v10;
    }

    while (v10 != v6);
    v12 = *(a1 + 40);
    do
    {
      v13 = v7 >> 1;
      v14 = v12;
      if (v7 >= 2)
      {
        v15 = v7 >> 1;
        v16 = v12;
        do
        {
          v17 = v16[1];
          if (v17)
          {
            do
            {
              v14 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v14 = v16[2];
              v11 = *v14 == v16;
              v16 = v14;
            }

            while (!v11);
          }

          v16 = v14;
        }

        while (v15-- > 1);
      }

      if (*(v14 + 33) < HIBYTE(v23))
      {
        v19 = v14[1];
        if (v19)
        {
          do
          {
            v12 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v12 = v14[2];
            v11 = *v12 == v14;
            v14 = v12;
          }

          while (!v11);
        }

        v13 = v7 + ~v13;
      }

      v7 = v13;
    }

    while (v13);
  }

  if (v6 == v12 || *(v12 + 32) >= HIBYTE(v23))
  {
    if (v5 == v12)
    {
      goto LABEL_38;
    }

    v20 = *v12;
    if (*v12)
    {
      do
      {
        v21 = v20;
        v20 = *(v20 + 8);
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v12[2];
        v11 = *v21 == v12;
        v12 = v21;
      }

      while (v11);
    }

    if (v23 >= *(v21 + 33))
    {
LABEL_38:
      std::__tree<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,geo::range_map<unsigned char,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>((a1 + 40), HIBYTE(v23), &v23);
    }
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v24);
}

uint64_t std::__tree<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>,geo::range_map<unsigned char,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>>(uint64_t **a1, unsigned __int8 a2, uint64_t a3)
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
      v5 = *(v3 + 33);
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

void gms::ZoomablePropertyStore<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>::getProperty(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v3 = a3;
  v6 = floorf(a3);
  v7 = *(a1 + 64);
  if (((v7 == v6) & ~*(a1 + 68)) != 0 || v7 == v3)
  {

    std::__optional_copy_base<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>,false>::__optional_copy_base[abi:nn200100](a2, a1 + 72);
    return;
  }

  *a2 = 0;
  *(a2 + 40) = 0;
  if (v6 >= 0x17)
  {
    v8 = 23;
  }

  else
  {
    v8 = v6;
  }

  v9 = geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::find((a1 + 40), v8 + 1);
  if (*(a1 + 56))
  {
    v10 = v9;
    v11 = geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::find((a1 + 40), v8);
    if ((a1 + 48) != v11)
    {
      if (*(a1 + 32))
      {
        v12 = v3 - v8;
        if (v12 <= 1.0 && v12 >= 0.0 && a1 + 48 != v10)
        {
          v14 = geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::find((a1 + 40), v8);
          std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>::unordered_map(v46, (v14 + 5));
          v15 = geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::find((a1 + 40), v8 + 1);
          std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>::unordered_map(&v43, (v15 + 5));
          if (v47[1] == v45)
          {
            v16 = v47;
            v17 = vcnt_s8(v44);
            v17.i16[0] = vaddlv_u8(v17);
            v18 = v17.u32[0];
LABEL_16:
            v16 = *v16;
            if (!v16)
            {
              std::optional<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>::emplace[abi:nn200100]<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>&,void>(a2, v46);
              v28 = 0;
              v3 = v6;
LABEL_45:
              *(a1 + 64) = v3;
              *(a1 + 68) = v28;
              std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v43);
              std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v46);
              goto LABEL_51;
            }

            v19 = *(v16 + 4);
            v20 = LODWORD(v19);
            if (v19 == 0.0)
            {
              v20 = 0;
            }

            if (v44)
            {
              if (v18 > 1)
              {
                v21 = v20 >= *&v44 ? v20 % v44.i32[0] : v20;
              }

              else
              {
                v21 = v20 & (*&v44 + 0xFFFFFFFFLL);
              }

              v22 = *(v43 + 8 * v21);
              if (v22)
              {
                while (1)
                {
                  v22 = *v22;
                  if (!v22)
                  {
                    break;
                  }

                  v23 = v22[1];
                  if (v20 == v23)
                  {
                    if (*(v22 + 4) == v19)
                    {
                      if (v19 == *(v22 + 4))
                      {
                        v24 = *(v22 + 20);
                        v25 = *(v22 + 28);
                        if (*(v16 + 20) == v24 && *(v16 + 28) == v25)
                        {
                          goto LABEL_16;
                        }
                      }

                      break;
                    }
                  }

                  else
                  {
                    if (v18 > 1)
                    {
                      if (v23 >= *&v44)
                      {
                        v23 %= *&v44;
                      }
                    }

                    else
                    {
                      v23 &= *&v44 - 1;
                    }

                    if (v23 != v21)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }

          v48 = v3 - v8;
          v27 = *(a1 + 32);
          if (!v27)
          {
            v41 = std::__throw_bad_function_call[abi:nn200100]();
            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v43);
            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v46);
            if (*(a2 + 40) == 1)
            {
              std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a2);
            }

            _Unwind_Resume(v41);
          }

          (*(*v27 + 48))(v42);
          if (*(a2 + 40) == 1)
          {
            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a2);
            *(a2 + 40) = 0;
          }

          std::__hash_table<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DaVinciTrafficBatchKey>,std::equal_to<md::DaVinciTrafficBatchKey>,true>,std::__unordered_map_equal<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DaVinciTrafficBatchKey>,std::hash<md::DaVinciTrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>>>::__hash_table(a2, v42);
          v28 = 1;
          *(a2 + 40) = 1;
          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v42);
          goto LABEL_45;
        }
      }

      std::optional<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>::emplace[abi:nn200100]<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>&,void>(a2, (v11 + 5));
    }
  }

  *(a1 + 64) = v6;
  *(a1 + 68) = 0;
LABEL_51:
  v29 = (a1 + 72);
  if (*(a1 + 112) == *(a2 + 40))
  {
    if (v29 != a2 && *(a1 + 112))
    {
      *(a1 + 104) = *(a2 + 32);
      v30 = *(a2 + 16);
      v31 = *(a1 + 80);
      if (!v31)
      {
        goto LABEL_65;
      }

      for (i = 0; i != v31; ++i)
      {
        *(*v29 + 8 * i) = 0;
      }

      v33 = *(a1 + 88);
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      if (v33)
      {
        while (v30)
        {
          v34 = v30[4];
          v33[4] = v34;
          for (j = 5; j != 9; ++j)
          {
            v33[j] = v30[j];
          }

          v36 = *v33;
          if (v34 == 0.0)
          {
            v37 = 0;
          }

          else
          {
            v37 = LODWORD(v34);
          }

          *(v33 + 1) = v37;
          inserted = std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__node_insert_multi_prepare(v29, v37, v33 + 4);
          std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_perform(v29, v33, inserted);
          v30 = *v30;
          v33 = v36;
          if (!v36)
          {
            goto LABEL_65;
          }
        }

        do
        {
          v39 = *v33;
          operator delete(v33);
          v33 = v39;
        }

        while (v39);
      }

      else
      {
LABEL_65:
        if (v30)
        {
          operator new();
        }
      }
    }
  }

  else
  {
    if (*(a1 + 112))
    {
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 72);
      v40 = 0;
    }

    else
    {
      std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>::unordered_map((a1 + 72), a2);
      v40 = 1;
    }

    *(a1 + 112) = v40;
  }
}

uint64_t *std::optional<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>::emplace[abi:nn200100]<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    a1 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1);
    *(a1 + 40) = 0;
  }

  result = std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>::unordered_map(a1, a2);
  *(result + 40) = 1;
  return result;
}

float *std::__hash_table<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::__unordered_map_hasher<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::hash<float>,std::equal_to<float>,true>,std::__unordered_map_equal<float,std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>,std::equal_to<float>,std::hash<float>,true>,std::allocator<std::__hash_value_type<float,geo::Color<float,4,(geo::ColorSpace)0>>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, float *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = *(v18 + 1);
    if (v16.u32[0] > 1uLL)
    {
      v22 = *(v18 + 1);
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && v18[4] == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::castShadow(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 384))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addCastShadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 168);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 16;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x10u, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addVisibility(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 160);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 11;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xBu, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addZIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 152);
  if (!v6)
  {
    v7 = a5;
    if (a5)
    {
      LOBYTE(v11) = 9;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 9u, &v11);
    }

    gms::createPropertyStore<unsigned int>(&v10, v7);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::createPropertyStore<unsigned int>(uint64_t *a1, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  operator new();
}

uint64_t std::__function::__value_func<unsigned int ()(float,unsigned int const&,unsigned int const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gms::NonZoomablePropertyStore<unsigned int>::addProperty(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = *a4;
  *(result + 12) = 1;
  *(result + 8) = v4;
  return result;
}

void gms::ZoomablePropertyStore<unsigned int>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A0E8;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<unsigned int ()(float,unsigned int const&,unsigned int const&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::ZoomablePropertyStore<unsigned int>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A0E8;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<unsigned int ()(float,unsigned int const&,unsigned int const&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

uint64_t gms::ZoomablePropertyStore<unsigned int>::addProperty(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, _DWORD *a4)
{
  *(result + 64) = -1082130432;
  *(result + 68) = 1;
  v4 = *a2;
  v5 = *a3;
  LOWORD(v23) = v4 | (v5 << 8);
  HIDWORD(v23) = *a4;
  if (!*(result + 56))
  {
    return std::__tree<std::__value_type<gm::Range<unsigned char>,unsigned int>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,unsigned int>,geo::range_map<unsigned char,unsigned int,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned int>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,unsigned int>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,unsigned int>>((result + 40), v5, &v23);
  }

  v6 = *(result + 40);
  v7 = (result + 48);
  if (v6 == (result + 48))
  {
    v13 = *(result + 40);
  }

  else
  {
    v8 = 0;
    v9 = *(result + 40);
    do
    {
      v10 = v9[1];
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
          v11 = v9[2];
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      ++v8;
      v9 = v11;
    }

    while (v11 != v7);
    v13 = *(result + 40);
    do
    {
      v14 = v8 >> 1;
      v15 = v13;
      if (v8 >= 2)
      {
        v16 = v8 >> 1;
        v17 = v13;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            do
            {
              v15 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v15 = v17[2];
              v12 = *v15 == v17;
              v17 = v15;
            }

            while (!v12);
          }

          v17 = v15;
        }

        while (v16-- > 1);
      }

      if (*(v15 + 29) < v5)
      {
        v20 = v15[1];
        if (v20)
        {
          do
          {
            v13 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v13 = v15[2];
            v12 = *v13 == v15;
            v15 = v13;
          }

          while (!v12);
        }

        v14 = v8 + ~v14;
      }

      v8 = v14;
    }

    while (v14);
  }

  if (v7 == v13 || *(v13 + 28) >= v5)
  {
    if (v6 == v13)
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,unsigned int>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,unsigned int>,geo::range_map<unsigned char,unsigned int,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned int>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,unsigned int>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,unsigned int>>((result + 40), v5, &v23);
    }

    v21 = *v13;
    if (*v13)
    {
      do
      {
        v22 = v21;
        v21 = *(v21 + 8);
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v13[2];
        v12 = *v22 == v13;
        v13 = v22;
      }

      while (v12);
    }

    if (v4 >= *(v22 + 29))
    {
      return std::__tree<std::__value_type<gm::Range<unsigned char>,unsigned int>,std::__map_value_compare<gm::Range<unsigned char>,std::__value_type<gm::Range<unsigned char>,unsigned int>,geo::range_map<unsigned char,unsigned int,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,unsigned int>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned char>,unsigned int>>>::__emplace_unique_key_args<gm::Range<unsigned char>,std::pair<gm::Range<unsigned char> const,unsigned int>>((result + 40), v5, &v23);
    }
  }

  return result;
}

unint64_t gms::ZoomablePropertyStore<unsigned int>::getProperty(uint64_t a1, float a2)
{
  v4 = floorf(a2);
  v5 = *(a1 + 64);
  if (((v5 == v4) & ~*(a1 + 68)) != 0 || v5 == a2)
  {
    v14 = *(a1 + 72);
    v8 = v14 >> 8;
    v16 = HIDWORD(v14);
    v17 = v14 & 0xFFFFFF0000000000;
  }

  else
  {
    if (v4 >= 0x17)
    {
      v6 = 23;
    }

    else
    {
      v6 = v4;
    }

    v7 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6 + 1);
    if (!*(a1 + 56) || (v9 = v7, v10 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6), (a1 + 48) == v10))
    {
      LOBYTE(v16) = 0;
      LOBYTE(v14) = 0;
      *(a1 + 64) = v4;
      *(a1 + 68) = 0;
    }

    else
    {
      v11 = *(a1 + 32);
      if (!v11 || (v12 = a2 - v6, v12 > 1.0) || (v12 >= 0.0 ? (v13 = a1 + 48 == v9) : (v13 = 1), v13))
      {
        LODWORD(v14) = *(v10 + 8);
        v8 = v14 >> 8;
        *(a1 + 64) = v4;
        *(a1 + 68) = 0;
      }

      else
      {
        LODWORD(v14) = *(geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6) + 8);
        v20 = v14;
        v19 = *(geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find((a1 + 40), v6 + 1) + 8);
        if (v14 == v19)
        {
          v15 = 0;
        }

        else
        {
          v21 = a2 - v6;
          LODWORD(v14) = (*(*v11 + 48))(v11, &v21, &v20, &v19);
          v15 = 1;
          v4 = a2;
        }

        v8 = v14 >> 8;
        *(a1 + 64) = v4;
        *(a1 + 68) = v15;
      }

      LOBYTE(v16) = 1;
    }

    v17 = 0;
    *(a1 + 72) = v14 | (v8 << 8);
    *(a1 + 76) = v16;
  }

  return v14 | ((*&v8 & 0xFFFFFFLL) << 8) | v17 | (v16 << 32);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addAlbedoFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 144);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 8;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 8u, &v11);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::emissiveFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 136);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 168))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addEmissiveFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 136);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 7;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 7u, &v11);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::metallicFactor(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 144))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addMetallicFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 128);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 6;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 6u, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::roughnessFactor(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 120))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addRoughnessFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 5;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 5u, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addEmissive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 112);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 4;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 4u, &v11);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::roughnessMetallic(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 72))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addRoughnessMetallic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 3;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 3u, &v11);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::normal(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 48))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addNormal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 96);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 2;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 2u, &v11);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 24))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRWithColorRampMaterial<ggl::Texture2D>::addAlbedo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 88);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 1;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 1u, &v11);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::_PBRWithColorRampMaterial<ggl::Texture2D>::~_PBRWithColorRampMaterial(void *a1)
{
  gms::_PBRWithColorRampMaterial<ggl::Texture2D>::~_PBRWithColorRampMaterial(a1);

  JUMPOUT(0x1B8C62190);
}

void *gms::_PBRWithColorRampMaterial<ggl::Texture2D>::~_PBRWithColorRampMaterial(void *a1)
{
  *a1 = &unk_1F2A0B010;
  v2 = a1[28];
  a1[28] = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  v3 = a1[27];
  a1[27] = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v4 = a1[26];
  a1[26] = 0;
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  v5 = a1[25];
  a1[25] = 0;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  v6 = a1[24];
  a1[24] = 0;
  if (v6)
  {
    (*(*v6 + 32))(v6);
  }

  v7 = a1[23];
  a1[23] = 0;
  if (v7)
  {
    (*(*v7 + 32))(v7);
  }

  v8 = a1[22];
  a1[22] = 0;
  if (v8)
  {
    (*(*v8 + 32))(v8);
  }

  v9 = a1[21];
  a1[21] = 0;
  if (v9)
  {
    (*(*v9 + 32))(v9);
  }

  v10 = a1[20];
  a1[20] = 0;
  if (v10)
  {
    (*(*v10 + 32))(v10);
  }

  v11 = a1[19];
  a1[19] = 0;
  if (v11)
  {
    (*(*v11 + 32))(v11);
  }

  v12 = a1[18];
  a1[18] = 0;
  if (v12)
  {
    (*(*v12 + 32))(v12);
  }

  v13 = a1[17];
  a1[17] = 0;
  if (v13)
  {
    (*(*v13 + 32))(v13);
  }

  v14 = a1[16];
  a1[16] = 0;
  if (v14)
  {
    (*(*v14 + 32))(v14);
  }

  v15 = a1[15];
  a1[15] = 0;
  if (v15)
  {
    (*(*v15 + 32))(v15);
  }

  v16 = a1[14];
  a1[14] = 0;
  if (v16)
  {
    (*(*v16 + 32))(v16);
  }

  v17 = a1[13];
  a1[13] = 0;
  if (v17)
  {
    (*(*v17 + 32))(v17);
  }

  v18 = a1[12];
  a1[12] = 0;
  if (v18)
  {
    (*(*v18 + 32))(v18);
  }

  v19 = a1[11];
  a1[11] = 0;
  if (v19)
  {
    (*(*v19 + 32))(v19);
  }

  return gms::_Material<ggl::Texture2D>::~_Material(a1);
}

void std::__shared_ptr_emplace<gms::_PBRWithColorRampMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0AFD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::gradientMaskFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 168);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 696))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::addGradientMaskFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 168);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 29;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Du, &v11);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::albedoFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 160);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 648))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::addAlbedoFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 160);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 27;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Bu, &v11);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::hideOnCollapse(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 576))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::addHideOnCollapse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 152);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 24;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x18u, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::gradientMaskFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 552))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::addGradientMaskFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 144);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 23;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x17u, &v11);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::castShadow(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 384))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::addCastShadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 136);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 16;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x10u, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

unint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::offset(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 312))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::addOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 128);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 13;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xDu, &v11);
    }

    gms::createPropertyStore<gm::Matrix<float,2,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

unint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::tiling(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 288))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::addTiling(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 12;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xCu, &v11);
    }

    gms::createPropertyStore<gm::Matrix<float,2,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::visibility(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 264))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::addVisibility(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 112);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 11;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xBu, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::zIndex(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 216))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::addZIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 9;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 9u, &v11);
    }

    gms::createPropertyStore<unsigned int>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 192))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::addAlbedoFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 96);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 8;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 8u, &v11);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 24))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_TriPlanarMaterial<ggl::Texture2D>::addAlbedo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 88);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 1;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 1u, &v11);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::_TriPlanarMaterial<ggl::Texture2D>::~_TriPlanarMaterial(void *a1)
{
  gms::_TriPlanarMaterial<ggl::Texture2D>::~_TriPlanarMaterial(a1);

  JUMPOUT(0x1B8C62190);
}

void *gms::_TriPlanarMaterial<ggl::Texture2D>::~_TriPlanarMaterial(void *a1)
{
  *a1 = &unk_1F2A0AC70;
  v2 = a1[21];
  a1[21] = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  v3 = a1[20];
  a1[20] = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v4 = a1[19];
  a1[19] = 0;
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  v5 = a1[18];
  a1[18] = 0;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  v6 = a1[17];
  a1[17] = 0;
  if (v6)
  {
    (*(*v6 + 32))(v6);
  }

  v7 = a1[16];
  a1[16] = 0;
  if (v7)
  {
    (*(*v7 + 32))(v7);
  }

  v8 = a1[15];
  a1[15] = 0;
  if (v8)
  {
    (*(*v8 + 32))(v8);
  }

  v9 = a1[14];
  a1[14] = 0;
  if (v9)
  {
    (*(*v9 + 32))(v9);
  }

  v10 = a1[13];
  a1[13] = 0;
  if (v10)
  {
    (*(*v10 + 32))(v10);
  }

  v11 = a1[12];
  a1[12] = 0;
  if (v11)
  {
    (*(*v11 + 32))(v11);
  }

  v12 = a1[11];
  a1[11] = 0;
  if (v12)
  {
    (*(*v12 + 32))(v12);
  }

  return gms::_Material<ggl::Texture2D>::~_Material(a1);
}

void std::__shared_ptr_emplace<gms::_TriPlanarMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0AC38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::gradientMaskFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 176);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 696))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addGradientMaskFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 176);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 29;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Du, &v11);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::albedoFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 168);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 648))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addAlbedoFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 168);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 27;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Bu, &v11);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::alpha(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 624))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addAlpha(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 160);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 26;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Au, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::hideOnCollapse(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 576))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addHideOnCollapse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 152);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 24;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x18u, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::gradientMaskFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 552))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addGradientMaskFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 144);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 23;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x17u, &v11);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::castShadow(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 384))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addCastShadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 136);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 16;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x10u, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

unint64_t gms::_PlanarMaterial<ggl::Texture2D>::offset(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 312))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 128);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 13;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xDu, &v11);
    }

    gms::createPropertyStore<gm::Matrix<float,2,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

unint64_t gms::_PlanarMaterial<ggl::Texture2D>::tiling(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 288))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addTiling(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 12;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xCu, &v11);
    }

    gms::createPropertyStore<gm::Matrix<float,2,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::visibility(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 264))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addVisibility(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 112);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 11;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xBu, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::zIndex(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 216))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addZIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 9;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 9u, &v11);
    }

    gms::createPropertyStore<unsigned int>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::albedoFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 192))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addAlbedoFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 96);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 8;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 8u, &v11);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::albedo(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 24))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PlanarMaterial<ggl::Texture2D>::addAlbedo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 88);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 1;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 1u, &v11);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::_PlanarMaterial<ggl::Texture2D>::~_PlanarMaterial(void *a1)
{
  gms::_PlanarMaterial<ggl::Texture2D>::~_PlanarMaterial(a1);

  JUMPOUT(0x1B8C62190);
}

void *gms::_PlanarMaterial<ggl::Texture2D>::~_PlanarMaterial(void *a1)
{
  *a1 = &unk_1F2A0A8D0;
  v2 = a1[22];
  a1[22] = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  v3 = a1[21];
  a1[21] = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v4 = a1[20];
  a1[20] = 0;
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  v5 = a1[19];
  a1[19] = 0;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  v6 = a1[18];
  a1[18] = 0;
  if (v6)
  {
    (*(*v6 + 32))(v6);
  }

  v7 = a1[17];
  a1[17] = 0;
  if (v7)
  {
    (*(*v7 + 32))(v7);
  }

  v8 = a1[16];
  a1[16] = 0;
  if (v8)
  {
    (*(*v8 + 32))(v8);
  }

  v9 = a1[15];
  a1[15] = 0;
  if (v9)
  {
    (*(*v9 + 32))(v9);
  }

  v10 = a1[14];
  a1[14] = 0;
  if (v10)
  {
    (*(*v10 + 32))(v10);
  }

  v11 = a1[13];
  a1[13] = 0;
  if (v11)
  {
    (*(*v11 + 32))(v11);
  }

  v12 = a1[12];
  a1[12] = 0;
  if (v12)
  {
    (*(*v12 + 32))(v12);
  }

  v13 = a1[11];
  a1[11] = 0;
  if (v13)
  {
    (*(*v13 + 32))(v13);
  }

  return gms::_Material<ggl::Texture2D>::~_Material(a1);
}

void std::__shared_ptr_emplace<gms::_PlanarMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0A898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::colorRampRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 256);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 720))();
  }

  *a2 = 0;
  a2[40] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addColorRampRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 256);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 30;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Eu, &v11);
    }

    gms::createPropertyStore<std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::gradientMaskFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 248);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 696))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addGradientMaskFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 248);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 29;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Du, &v11);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::emissiveFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 240);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 672))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addEmissiveFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 240);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 28;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Cu, &v11);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addAlbedoFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 232);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 27;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Bu, &v11);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addAlpha(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 224);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 26;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Au, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addHideOnCollapse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 216);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 24;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x18u, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::gradientMaskFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 208);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 552))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addGradientMaskFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 208);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 23;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x17u, &v11);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::acceptsOverlays(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 480))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addAcceptsOverlays(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 200);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 20;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x14u, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::brightnessFactor(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 456))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addBrightnessFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 192);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 19;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x13u, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::saturationFactor(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 432))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addSaturationFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 184);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 18;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x12u, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::colorRamp@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 176);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 408))();
  }

  *a2 = 0;
  a2[40] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addColorRamp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 176);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 17;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x11u, &v11);
    }

    gms::createPropertyStore<std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::castShadow(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 384))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addCastShadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 168);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 16;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x10u, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addVisibility(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 160);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 11;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xBu, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addZIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 152);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 9;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 9u, &v11);
    }

    gms::createPropertyStore<unsigned int>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addAlbedoFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 144);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 8;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 8u, &v11);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::emissiveFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 136);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 168))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addEmissiveFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 136);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 7;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 7u, &v11);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::metallicFactor(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 144))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addMetallicFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 128);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 6;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 6u, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::roughnessFactor(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 120))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addRoughnessFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 5;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 5u, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addEmissive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 112);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 4;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 4u, &v11);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::roughnessMetallic(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 72))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addRoughnessMetallic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 3;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 3u, &v11);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::normal(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 48))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addNormal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 96);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 2;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 2u, &v11);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_PBRMaterial<ggl::Texture2D>::addAlbedo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 88);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 1;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 1u, &v11);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::_PBRMaterial<ggl::Texture2D>::~_PBRMaterial(void *a1)
{
  gms::_PBRMaterial<ggl::Texture2D>::~_PBRMaterial(a1);

  JUMPOUT(0x1B8C62190);
}

void *gms::_PBRMaterial<ggl::Texture2D>::~_PBRMaterial(void *a1)
{
  *a1 = &unk_1F2A0A450;
  v2 = a1[32];
  a1[32] = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  v3 = a1[31];
  a1[31] = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v4 = a1[30];
  a1[30] = 0;
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  v5 = a1[29];
  a1[29] = 0;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  v6 = a1[28];
  a1[28] = 0;
  if (v6)
  {
    (*(*v6 + 32))(v6);
  }

  v7 = a1[27];
  a1[27] = 0;
  if (v7)
  {
    (*(*v7 + 32))(v7);
  }

  v8 = a1[26];
  a1[26] = 0;
  if (v8)
  {
    (*(*v8 + 32))(v8);
  }

  v9 = a1[25];
  a1[25] = 0;
  if (v9)
  {
    (*(*v9 + 32))(v9);
  }

  v10 = a1[24];
  a1[24] = 0;
  if (v10)
  {
    (*(*v10 + 32))(v10);
  }

  v11 = a1[23];
  a1[23] = 0;
  if (v11)
  {
    (*(*v11 + 32))(v11);
  }

  v12 = a1[22];
  a1[22] = 0;
  if (v12)
  {
    (*(*v12 + 32))(v12);
  }

  v13 = a1[21];
  a1[21] = 0;
  if (v13)
  {
    (*(*v13 + 32))(v13);
  }

  v14 = a1[20];
  a1[20] = 0;
  if (v14)
  {
    (*(*v14 + 32))(v14);
  }

  v15 = a1[19];
  a1[19] = 0;
  if (v15)
  {
    (*(*v15 + 32))(v15);
  }

  v16 = a1[18];
  a1[18] = 0;
  if (v16)
  {
    (*(*v16 + 32))(v16);
  }

  v17 = a1[17];
  a1[17] = 0;
  if (v17)
  {
    (*(*v17 + 32))(v17);
  }

  v18 = a1[16];
  a1[16] = 0;
  if (v18)
  {
    (*(*v18 + 32))(v18);
  }

  v19 = a1[15];
  a1[15] = 0;
  if (v19)
  {
    (*(*v19 + 32))(v19);
  }

  v20 = a1[14];
  a1[14] = 0;
  if (v20)
  {
    (*(*v20 + 32))(v20);
  }

  v21 = a1[13];
  a1[13] = 0;
  if (v21)
  {
    (*(*v21 + 32))(v21);
  }

  v22 = a1[12];
  a1[12] = 0;
  if (v22)
  {
    (*(*v22 + 32))(v22);
  }

  v23 = a1[11];
  a1[11] = 0;
  if (v23)
  {
    (*(*v23 + 32))(v23);
  }

  return gms::_Material<ggl::Texture2D>::~_Material(a1);
}

void std::__shared_ptr_emplace<gms::_PBRMaterial<ggl::Texture2D>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0A418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::ssaoIntensity(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 840))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addSsaoIntensity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 288);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 35;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x23u, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addDryAdjustment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 280);
  if (!v6)
  {
    v7 = a5;
    if (a5)
    {
      LOBYTE(v11) = 34;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x22u, &v11);
    }

    gms::createPropertyStore<gm::Matrix<float,3,1>>(&v10, v7);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::createPropertyStore<gm::Matrix<float,3,1>>(uint64_t *a1, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    operator new();
  }

  operator new();
}

void sub_1B2D577C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<gm::Matrix<float,3,1> ()(float,gm::Matrix<float,3,1> const&,gm::Matrix<float,3,1> const&)>::~__value_func[abi:nn200100](va);
  MEMORY[0x1B8C62190](v4, 0x10A1C407B04CAF8);
  *v3 = 0;
  _Unwind_Resume(a1);
}

uint64_t gms::NonZoomablePropertyStore<gm::Matrix<float,3,1>>::addProperty(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = *(a4 + 2);
  if ((*(result + 20) & 1) == 0)
  {
    *(result + 20) = 1;
  }

  *(result + 8) = v4;
  *(result + 16) = v5;
  return result;
}

void gms::ZoomablePropertyStore<gm::Matrix<float,3,1>>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A3A8;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<gm::Matrix<float,3,1> ()(float,gm::Matrix<float,3,1> const&,gm::Matrix<float,3,1> const&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::ZoomablePropertyStore<gm::Matrix<float,3,1>>::~ZoomablePropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A0A3A8;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<gm::Matrix<float,3,1> ()(float,gm::Matrix<float,3,1> const&,gm::Matrix<float,3,1> const&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addWetAdjustment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 272);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 33;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x21u, &v11);
    }

    gms::createPropertyStore<gm::Matrix<float,3,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addColdAdjustment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 264);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 32;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x20u, &v11);
    }

    gms::createPropertyStore<gm::Matrix<float,3,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addHotAdjustment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 256);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 31;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Fu, &v11);
    }

    gms::createPropertyStore<gm::Matrix<float,3,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addGradientMaskFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 248);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 29;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Du, &v11);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::emissiveFactorRGB@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 240);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 672))();
  }

  *a2 = 0;
  a2[12] = 0;
  return result;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addEmissiveFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 240);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 28;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Cu, &v11);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addAlbedoFactorRGB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 232);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 27;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Bu, &v11);
    }

    gms::createPropertyStore<geo::Color<float,3,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addAlpha(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 224);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 26;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x1Au, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addHideOnCollapse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 216);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 24;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x18u, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addGradientMaskFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 208);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 23;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x17u, &v11);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

unint64_t gms::_BasicMaterial<ggl::Texture2D>::brightnessRemapRange(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 528))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addBrightnessRemapRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 200);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 22;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x16u, &v11);
    }

    gms::createPropertyStore<gm::Matrix<float,2,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

unint64_t gms::_BasicMaterial<ggl::Texture2D>::saturationRemapRange(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | v4;
    }

    v3 = (*(*v3 + 504))(v3);
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF00;
  return v3 | v4;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addSaturationRemapRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 192);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 21;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x15u, &v11);
    }

    gms::createPropertyStore<gm::Matrix<float,2,1>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::acceptsOverlays(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 480))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addAcceptsOverlays(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 184);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 20;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x14u, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::brightnessFactor(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 456))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addBrightnessFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 176);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 19;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x13u, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::saturationFactor(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = (*(*v3 + 432))(v3);
    }
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addSaturationFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 168);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 18;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x12u, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::castShadow(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    LOWORD(v3) = (**v2)(v2);
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      v4 = 0;
      return v3 | (v4 << 8);
    }

    LOWORD(v3) = (*(*v3 + 384))(v3);
  }

  v4 = BYTE1(v3);
  return v3 | (v4 << 8);
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addCastShadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 160);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 16;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0x10u, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addShininess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 152);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 15;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xFu, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addSpecularity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 144);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 14;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xEu, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addVisibility(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 136);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 11;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xBu, &v11);
    }

    gms::createPropertyStore<BOOL>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addLineWidth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 128);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 10;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 0xAu, &v11);
    }

    gms::createPropertyStore<float>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addZIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 9;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 9u, &v11);
    }

    gms::createPropertyStore<unsigned int>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::emissiveFactor@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    return (**v3)(v3);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 168))();
  }

  *a2 = 0;
  a2[16] = 0;
  return result;
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addEmissiveFactor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 104);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 7;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 7u, &v11);
    }

    gms::createPropertyStore<geo::Color<float,4,(geo::ColorSpace)0>>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addEmissive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 96);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 4;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 4u, &v11);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

uint64_t gms::_BasicMaterial<ggl::Texture2D>::addAlbedo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 88);
  if (!v6)
  {
    if (a5)
    {
      LOBYTE(v11) = 1;
      HIBYTE(v11) = a5;
      std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::__emplace_unique_key_args<gms::PropertyKey,std::pair<gms::PropertyKey const,BOOL>>((a1 + 8), 1u, &v11);
    }

    gms::createPropertyStore<unsigned char>(&v10, a5);
  }

  v8 = *(*v6 + 8);

  return v8();
}

void gms::_BasicMaterial<ggl::Texture2D>::~_BasicMaterial(void *a1)
{
  gms::_BasicMaterial<ggl::Texture2D>::~_BasicMaterial(a1);

  JUMPOUT(0x1B8C62190);
}

void *gms::_BasicMaterial<ggl::Texture2D>::~_BasicMaterial(void *a1)
{
  *a1 = &unk_1F2A098F0;
  v2 = a1[36];
  a1[36] = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  v3 = a1[35];
  a1[35] = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  v4 = a1[34];
  a1[34] = 0;
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  v5 = a1[33];
  a1[33] = 0;
  if (v5)
  {
    (*(*v5 + 32))(v5);
  }

  v6 = a1[32];
  a1[32] = 0;
  if (v6)
  {
    (*(*v6 + 32))(v6);
  }

  v7 = a1[31];
  a1[31] = 0;
  if (v7)
  {
    (*(*v7 + 32))(v7);
  }

  v8 = a1[30];
  a1[30] = 0;
  if (v8)
  {
    (*(*v8 + 32))(v8);
  }

  v9 = a1[29];
  a1[29] = 0;
  if (v9)
  {
    (*(*v9 + 32))(v9);
  }

  v10 = a1[28];
  a1[28] = 0;
  if (v10)
  {
    (*(*v10 + 32))(v10);
  }

  v11 = a1[27];
  a1[27] = 0;
  if (v11)
  {
    (*(*v11 + 32))(v11);
  }

  v12 = a1[26];
  a1[26] = 0;
  if (v12)
  {
    (*(*v12 + 32))(v12);
  }

  v13 = a1[25];
  a1[25] = 0;
  if (v13)
  {
    (*(*v13 + 32))(v13);
  }

  v14 = a1[24];
  a1[24] = 0;
  if (v14)
  {
    (*(*v14 + 32))(v14);
  }

  v15 = a1[23];
  a1[23] = 0;
  if (v15)
  {
    (*(*v15 + 32))(v15);
  }

  v16 = a1[22];
  a1[22] = 0;
  if (v16)
  {
    (*(*v16 + 32))(v16);
  }

  v17 = a1[21];
  a1[21] = 0;
  if (v17)
  {
    (*(*v17 + 32))(v17);
  }

  v18 = a1[20];
  a1[20] = 0;
  if (v18)
  {
    (*(*v18 + 32))(v18);
  }

  v19 = a1[19];
  a1[19] = 0;
  if (v19)
  {
    (*(*v19 + 32))(v19);
  }

  v20 = a1[18];
  a1[18] = 0;
  if (v20)
  {
    (*(*v20 + 32))(v20);
  }

  v21 = a1[17];
  a1[17] = 0;
  if (v21)
  {
    (*(*v21 + 32))(v21);
  }

  v22 = a1[16];
  a1[16] = 0;
  if (v22)
  {
    (*(*v22 + 32))(v22);
  }

  v23 = a1[15];
  a1[15] = 0;
  if (v23)
  {
    (*(*v23 + 32))(v23);
  }

  v24 = a1[14];
  a1[14] = 0;
  if (v24)
  {
    (*(*v24 + 32))(v24);
  }

  v25 = a1[13];
  a1[13] = 0;
  if (v25)
  {
    (*(*v25 + 32))(v25);
  }

  v26 = a1[12];
  a1[12] = 0;
  if (v26)
  {
    (*(*v26 + 32))(v26);
  }

  v27 = a1[11];
  a1[11] = 0;
  if (v27)
  {
    (*(*v27 + 32))(v27);
  }

  return gms::_Material<ggl::Texture2D>::~_Material(a1);
}