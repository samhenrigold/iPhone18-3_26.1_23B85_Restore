void sub_1B2DA2D80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZN4ecs27Runtime9_entitiesIN2md3ita28CreateUnflattenedRenderItemsEJRKNS2_2ls16SliceAssignmentTILNS2_9SliceTypeE2EEERKNS5_26RenderableMeshVertexFormatERKNS5_8TileTypeERKNS5_18IntendedSceneLayerERKNS5_14MeshLayerTypeVEPNS5_17AssociationHandleEPKNS5_13HasMeshHandleEPKNS5_35PositionScaleInfoConstantDataHandleEPKNS5_22ViewConstantDataHandleEPKNS5_27TransformConstantDataHandleEPKNS5_18StyleDataKeyHandleEPKNS5_22StyleSSAODataKeyHandleEPKNS5_26StyleEmissiveDataKeyHandleEPKNS5_28ColorCorrectionDataKeyHandleEPKNS5_29StyleCameraConstantDataHandleEPKNS5_15ColorDataHandleEPKNS5_10IndexRangeEPKNS5_38StyleGroundOcclusionConstantDataHandleERKNS5_17PendingProcessingEPKNS5_13NormalsHandleEPKNS5_23InstanceTransformHandleEPKNS5_9UVsHandleEPKNS5_15ElevationHandleEPKNS5_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS5_35LandCoverSettingsConstantDataHandleEPKNS5_24ShadowConstantDataHandleEPKNS5_25PrepassConstantDataHandleEPKNS5_26ClippingConstantDataHandleEPKNS5_30PlanarParametersCacheKeyHandleEPKNS24_INS25_10TexTextureEEEPKNS24_INS25_15EmissiveTextureEEEPKNS24_INS25_14OverlayTextureEEEPKNS5_29BlendRasterConstantDataHandleEPKNS5_31RasterOverlayConstantDataHandleEPKNS5_26HasStyleAttributeRasterSetEPKNS5_17HasMaterialRasterEPKNS5_16NeedsClimateTintEPKNS5_17CustomRenderStateEPKNS5_19ColorRampDataHandleEPKNS5_14SharedUniqueIDEPKNS5_8IsOpaqueEPKNS5_13IsTransparentEPKNS5_10NeedsZBiasEPKNS5_14PreserveHeightEPKNS5_13InstanceCountEPKNS5_7IsDecalEPKNS5_10IsMaterialEPKNS5_9TriPlanarEPKNS5_10IsMercatorEPKNS5_23SupportsStylizedShadingEPKNS5_26SupportsSteepnessDarkeningEPKNS5_14RenderableHashEEJEEEvOT_NSt3__113type_identityINS4R_5tupleIJDpT0_EEEEERKNS_16ComponentFiltersIJDpT1_EEE(uint64_t a1, uint64_t **a2)
{
  v104 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v92 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)2>>(v3);
  v90 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshVertexFormat>(v3);
  v88 = ecs2::BasicRegistry<void>::storage<md::ls::TileType>(v3);
  v86 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayer>(v3);
  v83 = ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(v3);
  v98 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(v3);
  HasMesh = ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(v3);
  v96 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v3);
  v95 = ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(v3);
  v94 = ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(v3);
  v93 = ecs2::BasicRegistry<void>::storage<md::ls::StyleDataKeyHandle>(v3);
  v91 = ecs2::BasicRegistry<void>::storage<md::ls::StyleSSAODataKeyHandle>(v3);
  v89 = ecs2::BasicRegistry<void>::storage<md::ls::StyleEmissiveDataKeyHandle>(v3);
  v87 = ecs2::BasicRegistry<void>::storage<md::ls::ColorCorrectionDataKeyHandle>(v3);
  v85 = ecs2::BasicRegistry<void>::storage<md::ls::StyleCameraConstantDataHandle>(v3);
  v84 = ecs2::BasicRegistry<void>::storage<md::ls::ColorDataHandle>(v3);
  v82 = ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(v3);
  v81 = ecs2::BasicRegistry<void>::storage<md::ls::StyleGroundOcclusionConstantDataHandle>(v3);
  v66 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessing>(v3);
  v80 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v3);
  v79 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v3);
  v78 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v3);
  v77 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v3);
  v76 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(v3);
  v75 = ecs2::BasicRegistry<void>::storage<md::ls::LandCoverSettingsConstantDataHandle>(v3);
  v74 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowConstantDataHandle>(v3);
  v73 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassConstantDataHandle>(v3);
  v72 = ecs2::BasicRegistry<void>::storage<md::ls::ClippingConstantDataHandle>(v3);
  v71 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v3);
  v70 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::TexTexture>>(v3);
  v69 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(v3);
  v68 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(v3);
  v67 = ecs2::BasicRegistry<void>::storage<md::ls::BlendRasterConstantDataHandle>(v3);
  v65 = ecs2::BasicRegistry<void>::storage<md::ls::RasterOverlayConstantDataHandle>(v3);
  HasStyleAttributeRaster = ecs2::BasicRegistry<void>::storage<md::ls::HasStyleAttributeRasterSet>(v3);
  HasMaterial = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRaster>(v3);
  v62 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsClimateTint>(v3);
  v61 = ecs2::BasicRegistry<void>::storage<md::ls::CustomRenderState>(v3);
  v60 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(v3);
  v59 = ecs2::BasicRegistry<void>::storage<md::ls::SharedUniqueID>(v3);
  v58 = ecs2::BasicRegistry<void>::storage<md::ls::IsOpaque>(v3);
  v57 = ecs2::BasicRegistry<void>::storage<md::ls::IsTransparent>(v3);
  v56 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsZBias>(v3);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PreserveHeight>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceCount>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::IsDecal>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::IsMaterial>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::TriPlanar>(v3);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v3);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsStylizedShading>(v3);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsSteepnessDarkening>(v3);
  v12 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableHash>(v3);
  *__src = v92;
  *&__src[8] = v90;
  *&__src[16] = v88;
  *&__src[24] = v86;
  v13 = 8;
  v14 = v92;
  v15 = __src;
  *&__src[32] = v83;
  *&__src[40] = v66;
  do
  {
    if (*(*&__src[v13] + 40) - *(*&__src[v13] + 32) < *(v14 + 40) - *(v14 + 32))
    {
      v14 = *&__src[v13];
      v15 = &__src[v13];
    }

    v13 += 8;
  }

  while (v13 != 48);
  v16 = *v15;
  *&__src[16] = v92;
  *&__src[24] = v90;
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  *&__src[32] = v88;
  *&__src[40] = v86;
  *&__src[48] = v83;
  *&__src[56] = v98;
  *&__src[64] = HasMesh;
  *&__src[72] = v96;
  *&__src[80] = v95;
  *&__src[88] = v94;
  *&__src[96] = v93;
  *&__src[104] = v91;
  *&__src[112] = v89;
  *&__src[120] = v87;
  *&__src[128] = v85;
  *&__src[136] = v84;
  *&__src[144] = v82;
  *&__src[152] = v81;
  *&__src[160] = v66;
  *&__src[168] = v80;
  *&__src[176] = v79;
  *&__src[184] = v78;
  *&__src[192] = v77;
  *__src = v17;
  *&__src[8] = v18;
  *&__src[200] = v76;
  *&__src[208] = v75;
  *&__src[216] = v74;
  *&__src[224] = v73;
  *&__src[232] = v72;
  *&__src[240] = v71;
  *&__src[248] = v70;
  *&__src[256] = v69;
  *&__src[264] = v68;
  *&__src[272] = v67;
  *&__src[280] = v65;
  *&__src[288] = HasStyleAttributeRaster;
  *&__src[296] = HasMaterial;
  *&__src[304] = v62;
  *&__src[312] = v61;
  *&__src[320] = v60;
  *&__src[328] = v59;
  *&__src[336] = v58;
  *&__src[344] = v57;
  *&__src[352] = v56;
  *&__src[360] = v4;
  *&__src[368] = v5;
  *&__src[376] = v6;
  *&__src[384] = v7;
  *&__src[392] = v8;
  *&__src[400] = v9;
  *&__src[408] = v10;
  *&__src[416] = v11;
  *&__src[424] = v12;
  v55 = v18;
  if (v17 != v18)
  {
    v19 = *&__src[8];
    v20 = *__src;
    do
    {
      if (_ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16SliceAssignmentTILNS3_9SliceTypeE2EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_18IntendedSceneLayerERKNS4_14MeshLayerTypeVEPNS4_17AssociationHandleEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleERKNS4_17PendingProcessingEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS23_INS24_10TexTextureEEEPKNS23_INS24_15EmissiveTextureEEEPKNS23_INS24_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_14RenderableHashEEEENS2_IJEEEEE11containsAllIJS8_SB_SE_SH_SK_S1P_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(__src, *v17, v17[1]))
      {
        break;
      }

      v20 += 2;
      *__src = v20;
      v17 = v20;
    }

    while (v20 != v19);
  }

  memcpy(__dst, __src, sizeof(__dst));
  v21 = __dst[0];
  if (__dst[0] != v55)
  {
    v22 = _ZTWN4ecs27Runtime11_localStateE();
    v23 = _ZTWN4ecs27Runtime11_stackIndexE();
    v24 = 0;
    v53 = v22;
    v54 = v23;
    while (1)
    {
      v25 = v21[1];
      v26 = v25 >> 6;
      v27 = v25 & 0x3F;
      v28 = *v21;
      v29 = *(__dst[7] + 8);
      if (v26 < (*(__dst[7] + 16) - v29) >> 3 && (v30 = *(v29 + 8 * v26)) != 0 && *(v30 + 4 * v27) == v28)
      {
        v31 = *(v30 + 4 * v27 + 2);
        v32 = *(*(__dst[7] + 56) + ((v31 >> 3) & 0x1FF8)) + 24 * (v31 & 0x3F);
      }

      else
      {
        v32 = 0;
      }

      v33 = *(__dst[53] + 8);
      v99 = v24;
      if (v26 < (*(__dst[53] + 16) - v33) >> 3 && (v34 = *(v33 + 8 * v26)) != 0)
      {
        v35 = v22;
        if (*(v34 + 4 * v27) == v28)
        {
          v36 = v32;
          goto LABEL_22;
        }
      }

      else
      {
        v35 = v22;
      }

      v36 = v32;
LABEL_22:
      *(v35 + 104 * *v23 + 24) = *v21;
      ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a2);
      v37 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v38 = *a2;
      v39 = ecs2::ExecutionTaskContext::currentEntity(v37);
      ecs2::addComponent<md::ls::FinishedProcessing>(v38, v39);
      Entity = ecs2::ExecutionTaskContext::createEntity((*a2)[1]);
      if (v36)
      {
        createRenderItemForEntity(&v101, Entity, v37, v36);
        if (v102 != 1)
        {
          if (!v102)
          {
            *__src = v101;
            *&__src[16] = 48;
            ecs2::addComponent<md::ls::RenderItemID>(*a2, Entity, __src);
          }

          std::__throw_bad_variant_access[abi:nn200100]();
        }
      }

      else
      {
        LOBYTE(v101) = 2;
      }

      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v41 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = "";
        if (v101 <= 2uLL)
        {
          v42 = off_1E7B3D650[v101];
        }

        *__src = 136315906;
        *&__src[4] = v42;
        *&__src[12] = 2080;
        *&__src[14] = "false";
        *&__src[22] = 2080;
        *&__src[24] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
        *&__src[32] = 1024;
        *&__src[34] = 568;
        _os_log_impl(&dword_1B2754000, v41, OS_LOG_TYPE_ERROR, "Failed to create unflattened render item (%s): Assertion with expression - %s : Failed in file - %s line - %i", __src, 0x26u);
      }

      ecs2::ExecutionTaskContext::destroyEntity(*a2, Entity);
      v24 = v99 + 1;
      v43 = __dst[1];
      v44 = (__dst[0] + 4);
      v22 = v53;
      v23 = v54;
      while (1)
      {
        v21 = v44;
        __dst[0] = v44;
        if (v44 == v43)
        {
          break;
        }

        IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_14RenderableHashEEEENS2_IJEEEEE11containsAllIJS8_SB_SE_SH_SK_S1P_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE = _ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16SliceAssignmentTILNS3_9SliceTypeE2EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_18IntendedSceneLayerERKNS4_14MeshLayerTypeVEPNS4_17AssociationHandleEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleERKNS4_17PendingProcessingEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS23_INS24_10TexTextureEEEPKNS23_INS24_15EmissiveTextureEEEPKNS23_INS24_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_14RenderableHashEEEENS2_IJEEEEE11containsAllIJS8_SB_SE_SH_SK_S1P_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(__dst, *v44, v44[1]);
        v44 = v21 + 2;
        if (IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_14RenderableHashEEEENS2_IJEEEEE11containsAllIJS8_SB_SE_SH_SK_S1P_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE)
        {
          v43 = v21;
          break;
        }
      }

      if (v43 == v55)
      {
        v46 = *(a1 + 8);
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
        *(v46 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata) = *(v46 + 4096);
        goto LABEL_40;
      }
    }
  }

  v22 = _ZTWN4ecs27Runtime11_localStateE();
  v23 = _ZTWN4ecs27Runtime11_stackIndexE();
  v24 = 0;
LABEL_40:
  *(v22 + 104 * *v23 + 24) = -65536;
  v47 = v22 + 104 * *v23;
  v48 = *(v47 + 92);
  *(v47 + 92) = v48 + 1;
  *(v47 + 4 * v48 + 28) = v24;
  v49 = v22 + 104 * *v23;
  v51 = *(v49 + 92);
  v50 = (v49 + 92);
  if (v51 >= 0x10)
  {
    *v50 = 0;
  }
}

void sub_1B2DA4CD4(_Unwind_Exception *a1)
{
  if (STACK[0x3A8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x3A8]);
  }

  _Unwind_Resume(a1);
}

BOOL _ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16SliceAssignmentTILNS3_9SliceTypeE2EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_18IntendedSceneLayerERKNS4_14MeshLayerTypeVEPNS4_17AssociationHandleEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleERKNS4_17PendingProcessingEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS23_INS24_10TexTextureEEEPKNS23_INS24_15EmissiveTextureEEEPKNS23_INS24_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_14RenderableHashEEEENS2_IJEEEEE11containsAllIJS8_SB_SE_SH_SK_S1P_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0 && *(v13 + 4 * (a3 & 0x3F)) == a2 && (v14 = *(a1[20] + 8), v3 < (*(a1[20] + 16) - v14) >> 3) && (v15 = *(v14 + 8 * v3)) != 0)
  {
    return *(v15 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14RenderableHashEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableHash>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableHash>();
    unk_1EB83D7E0 = 0x763953A644184BA9;
    qword_1EB83D7E8 = "md::ls::RenderableHash]";
    qword_1EB83D7F0 = 22;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A505D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A505F0;
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

void ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A505D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26SupportsSteepnessDarkeningEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsSteepnessDarkening>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsSteepnessDarkening,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FD10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsSteepnessDarkening,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FD10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10IsMaterialEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsMaterial>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsMaterial>();
    *algn_1EB83DC78 = 0x3E8485C60908F920;
    qword_1EB83DC80 = "md::ls::IsMaterial]";
    qword_1EB83DC88 = 18;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51800;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51820;
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

void ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51800;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls8IsOpaqueEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsOpaque>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsOpaque,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A513A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsOpaque,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A513A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26HasStyleAttributeRasterSetEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>(void)::metadata;
  HasStyleAttributeRaster = ecs2::BasicRegistry<void>::storage<md::ls::HasStyleAttributeRasterSet>(v3);
  v6 = v2 >> 22;
  v7 = HasStyleAttributeRaster[1];
  if (v2 >> 22 < (HasStyleAttributeRaster[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = HasStyleAttributeRaster;
        v11 = HasStyleAttributeRaster[31];
        v12 = HasStyleAttributeRaster[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasStyleAttributeRasterSet>();
    unk_1EB83C690 = 0x985FB09D9DF9959FLL;
    qword_1EB83C698 = "md::ls::HasStyleAttributeRasterSet]";
    qword_1EB83C6A0 = 34;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52750;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52770;
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

void ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52750;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31RasterOverlayConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RasterOverlayConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 40 * (v13 & 0x3F);
        v17 = *v16;
        v18 = *(v16 + 16);
        v19 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 40 * (v14 & 0x3F);
        v20 = *(v16 + 32);
        v21 = *(v19 + 32);
        v22 = *(v19 + 16);
        *v16 = *v19;
        *(v16 + 16) = v22;
        *(v16 + 32) = v21;
        *(v19 + 32) = v20;
        *v19 = v17;
        *(v19 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RasterOverlayConstantDataHandle>();
    *algn_1EB83BBB8 = 0xDC66BF6D06F6D0BALL;
    qword_1EB83BBC0 = "md::ls::RasterOverlayConstantDataHandle]";
    qword_1EB83BBC8 = 39;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52000;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52020;
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

void ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52000;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29BlendRasterConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::BlendRasterConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::BlendRasterConstantDataHandle>();
    unk_1EB83BDF0 = 0xDF0018B9242ADFDBLL;
    qword_1EB83BDF8 = "md::ls::BlendRasterConstantDataHandle]";
    qword_1EB83BE00 = 37;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51F30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51F50;
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

void ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51F30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci14OverlayTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>();
    *algn_1EB83CE38 = 0xD2D99CA7D5B116C8;
    qword_1EB83CE40 = "md::ls::TextureHandleForType<DaVinci::OverlayTexture>]";
    qword_1EB83CE48 = 53;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51E60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51E80;
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

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51E60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls35LandCoverSettingsConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::LandCoverSettingsConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A5BE78;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A5BE98;
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

void ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A5BE78;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>();
    *algn_1EB83CE58 = 0xDD9825BCFA7911B2;
    qword_1EB83CE60 = "md::ls::TextureHandleForType<DaVinci::DiffuseTexture>]";
    qword_1EB83CE68 = 53;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51980;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A519A0;
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

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51980;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29StyleCameraConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleCameraConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleCameraConstantDataHandle>();
    *algn_1EB83BD78 = 0x96F87A2692FE4013;
    qword_1EB83BD80 = "md::ls::StyleCameraConstantDataHandle]";
    qword_1EB83BD88 = 37;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50D20;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50D40;
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

void ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50D20;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22StyleSSAODataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleSSAODataKeyHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50B80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50BA0;
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

void ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50B80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18StyleDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleDataKeyHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleDataKeyHandle>();
    unk_1EB83D110 = 0x1BB343378E1EE5BLL;
    qword_1EB83D118 = "md::ls::StyleDataKeyHandle]";
    qword_1EB83D120 = 26;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50AB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50AD0;
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

void ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50AB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateUnflattenedRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateUnflattenedRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8C80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::SliceAssignmentT<(md::SliceType)5> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::PendingProcessingDepthPrePass const&,md::ls::AssociationHandle *,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::ElevationHandle const*,md::ls::PrepassShadowConstantDataHandle const&,md::ls::PrepassConstantDataHandle const&,md::ls::PreserveHeight const*,md::ls::ClippingConstantDataHandle const*,md::ls::IsMercator const*,md::ls::InstanceCount const*>,std::tuple<>>::containsAll<md::ls::SliceAssignmentT<(md::SliceType)5> const,md::ls::RenderableMeshVertexFormat const,md::ls::TileType const,md::ls::PendingProcessingDepthPrePass const,md::ls::PrepassShadowConstantDataHandle const,md::ls::PrepassConstantDataHandle const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[17] + 8), v3 < (*(a1[17] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0 && *(v13 + 4 * (a3 & 0x3F)) == a2 && (v14 = *(a1[18] + 8), v3 < (*(a1[18] + 16) - v14) >> 3) && (v15 = *(v14 + 8 * v3)) != 0)
  {
    return *(v15 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31PrepassShadowConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassShadowConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PrepassShadowConstantDataHandle>();
    *algn_1EB83BBD8 = 0x70E01531993BB945;
    qword_1EB83BBE0 = "md::ls::PrepassShadowConstantDataHandle]";
    qword_1EB83BBE8 = 39;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A530D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A530F0;
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

void ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A530D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>::~storage(a1);
}

void ecs2::BasicRegistry<void>::remove<md::ls::PendingProcessingDepthPrePass>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessingDepthPrePass>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      if (*(v8 + 4 * ((a2 >> 16) & 0x3F)) == a2)
      {
        v9 = v5;
        v10 = v5[25];
        for (i = v5[26]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), a2);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v9, a2, WORD1(a2));
      }
    }
  }

  v12 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v12 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessingDepthPrePass>();
    unk_1EB83BDA0 = 0xB7D4B4C2109DE954;
    qword_1EB83BDA8 = "md::ls::PendingProcessingDepthPrePass]";
    qword_1EB83BDB0 = 37;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingProcessingDepthPrePass,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41A80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingProcessingDepthPrePass,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41A80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE5EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)5>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)5>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A33AA8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)5>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A33AA8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateDepthPrePassRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateDepthPrePassRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8BA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ecs2::BasicRegistry<void>::remove<md::ls::PendingProcessingShadow>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessingShadow>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      if (*(v8 + 4 * ((a2 >> 16) & 0x3F)) == a2)
      {
        v9 = v5;
        v10 = v5[25];
        for (i = v5[26]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), a2);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v9, a2, WORD1(a2));
      }
    }
  }

  v12 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v12 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessingShadow>();
    *algn_1EB83CA08 = 0xEC85A518158AB507;
    qword_1EB83CA10 = "md::ls::PendingProcessingShadow]";
    qword_1EB83CA18 = 31;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingProcessingShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41A18;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingProcessingShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41A18;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE4EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)4>>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)4>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A339B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)4>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A339B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateShadowPassRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateShadowPassRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8AD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZZN3gdc16forEachInnerTypeINSt3__15tupleIJN2md2ls16MeshRenderableIDENS4_16SliceAssignmentTILNS3_9SliceTypeE7EEENS4_26RenderableMeshVertexFormatENS4_8TileTypeENS4_17PendingProcessingENS4_14MeshLayerTypeVENS4_18IntendedSceneLayerENS4_13HasMeshHandleENS4_35PositionScaleInfoConstantDataHandleENS4_22ViewConstantDataHandleENS4_27TransformConstantDataHandleENS4_18StyleDataKeyHandleENS4_22StyleSSAODataKeyHandleENS4_26StyleEmissiveDataKeyHandleENS4_28ColorCorrectionDataKeyHandleENS4_29StyleCameraConstantDataHandleENS4_15ColorDataHandleENS4_10IndexRangeENS4_38StyleGroundOcclusionConstantDataHandleENS4_26SharedMaterialZIndexHandleENS4_13NormalsHandleENS4_23InstanceTransformHandleENS4_9UVsHandleENS4_31StyleRouteLineMaskDataKeyHandleENS4_15ElevationHandleENS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEENS4_35LandCoverSettingsConstantDataHandleENS4_24ShadowConstantDataHandleENS4_25PrepassConstantDataHandleENS4_26ClippingConstantDataHandleENS4_30PlanarParametersCacheKeyHandleENSW_INSX_10TexTextureEEENSW_INSX_15EmissiveTextureEEENSW_INSX_14OverlayTextureEEENS4_29BlendRasterConstantDataHandleENS4_31RasterOverlayConstantDataHandleENS4_40FlyoverCommonTransformConstantDataHandleENS4_30FlyoverCommonS2TransformHandleENS4_28FlyoverCommonTexcoordsHandleENS4_27FlyoverCommonMaterialHandleENS4_29FlyoverClipConstantDataHandleENSW_IN7Flyover14DiffuseTextureEEENSW_INS1I_12NightTextureEEENS4_26HasStyleAttributeRasterSetENS4_17HasMaterialRasterENS4_16NeedsClimateTintENS4_17CustomRenderStateENS4_19ColorRampDataHandleENS4_14SharedUniqueIDENS4_8IsOpaqueENS4_13IsTransparentENS4_10NeedsZBiasENS4_14PreserveHeightENS4_13InstanceCountENS4_7IsDecalENS4_10IsMaterialENS4_9TriPlanarENS4_10IsMercatorENS4_23SupportsStylizedShadingENS4_26SupportsSteepnessDarkeningENS4_15FlyoverInstanceENS4_12CustomZIndexENS4_14RenderableHashENS4_21PredefinedRenderStateEEEEZNS_18typelist_as_vectorIS28_EENS1_6vectorINS_8TypeInfoENS1_9allocatorIS2B_EEEEvEUlTyvE_EEvOT0_ENKUlTpTnmNS1_16integer_sequenceImJXspT_EEEEE_clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15ELm16ELm17ELm18ELm19ELm20ELm21ELm22ELm23ELm24ELm25ELm26ELm27ELm28ELm29ELm30ELm31ELm32ELm33ELm34ELm35ELm36ELm37ELm38ELm39ELm40ELm41ELm42ELm43ELm44ELm45ELm46ELm47ELm48ELm49ELm50ELm51ELm52ELm53ELm54ELm55ELm56ELm57ELm58ELm59ELm60ELm61ELm62ELm63EEEEDaS2J_(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v2) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = 24 * v6;
    *v10 = 0x8DCCA4FD35258189;
    *(v10 + 8) = "md::ls::MeshRenderableID]";
    *(v10 + 16) = 24;
    v5 = 24 * v6 + 24;
    v11 = *(v2 + 8) - *v2;
    v12 = 24 * v6 - v11;
    memcpy((v10 - v11), *v2, v11);
    v13 = *v2;
    *v2 = v12;
    *(v2 + 8) = v5;
    *(v2 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v3 = 0x8DCCA4FD35258189;
    v3[1] = "md::ls::MeshRenderableID]";
    v3[2] = 24;
    v5 = (v3 + 3);
  }

  *(v2 + 8) = v5;
  v14 = *a1;
  v15 = *(*a1 + 8);
  v16 = *(*a1 + 16);
  if (v15 >= v16)
  {
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *v14) >> 3);
    v19 = v18 + 1;
    if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *v14) >> 3);
    if (2 * v20 > v19)
    {
      v19 = 2 * v20;
    }

    if (v20 >= 0x555555555555555)
    {
      v21 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v21);
    }

    v22 = 24 * v18;
    *v22 = 0xAC1208F38C3ADC06;
    *(v22 + 8) = "md::ls::SliceAssignmentT<md::SliceType::Main>]";
    *(v22 + 16) = 45;
    v17 = 24 * v18 + 24;
    v23 = *(v14 + 8) - *v14;
    v24 = 24 * v18 - v23;
    memcpy((v22 - v23), *v14, v23);
    v25 = *v14;
    *v14 = v24;
    *(v14 + 8) = v17;
    *(v14 + 16) = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v15 = 0xAC1208F38C3ADC06;
    v15[1] = "md::ls::SliceAssignmentT<md::SliceType::Main>]";
    v15[2] = 45;
    v17 = (v15 + 3);
  }

  *(v14 + 8) = v17;
  v26 = *a1;
  v27 = *(*a1 + 8);
  v28 = *(*a1 + 16);
  if (v27 >= v28)
  {
    v30 = 0xAAAAAAAAAAAAAAABLL * ((v27 - *v26) >> 3);
    v31 = v30 + 1;
    if (v30 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v32 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *v26) >> 3);
    if (2 * v32 > v31)
    {
      v31 = 2 * v32;
    }

    if (v32 >= 0x555555555555555)
    {
      v33 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v33 = v31;
    }

    if (v33)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v33);
    }

    v34 = 24 * v30;
    *v34 = 0xE8C803AC798645E1;
    *(v34 + 8) = "md::ls::RenderableMeshVertexFormat]";
    *(v34 + 16) = 34;
    v29 = 24 * v30 + 24;
    v35 = *(v26 + 8) - *v26;
    v36 = 24 * v30 - v35;
    memcpy((v34 - v35), *v26, v35);
    v37 = *v26;
    *v26 = v36;
    *(v26 + 8) = v29;
    *(v26 + 16) = 0;
    if (v37)
    {
      operator delete(v37);
    }
  }

  else
  {
    *v27 = 0xE8C803AC798645E1;
    v27[1] = "md::ls::RenderableMeshVertexFormat]";
    v27[2] = 34;
    v29 = (v27 + 3);
  }

  *(v26 + 8) = v29;
  v38 = *a1;
  v39 = *(*a1 + 8);
  v40 = *(*a1 + 16);
  if (v39 >= v40)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * ((v39 - *v38) >> 3);
    v43 = v42 + 1;
    if (v42 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v44 = 0xAAAAAAAAAAAAAAABLL * ((v40 - *v38) >> 3);
    if (2 * v44 > v43)
    {
      v43 = 2 * v44;
    }

    if (v44 >= 0x555555555555555)
    {
      v45 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v45 = v43;
    }

    if (v45)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v45);
    }

    v46 = 24 * v42;
    *v46 = 0x751B872B282C3971;
    *(v46 + 8) = "md::ls::TileType]";
    *(v46 + 16) = 16;
    v41 = 24 * v42 + 24;
    v47 = *(v38 + 8) - *v38;
    v48 = 24 * v42 - v47;
    memcpy((v46 - v47), *v38, v47);
    v49 = *v38;
    *v38 = v48;
    *(v38 + 8) = v41;
    *(v38 + 16) = 0;
    if (v49)
    {
      operator delete(v49);
    }
  }

  else
  {
    *v39 = 0x751B872B282C3971;
    v39[1] = "md::ls::TileType]";
    v39[2] = 16;
    v41 = (v39 + 3);
  }

  *(v38 + 8) = v41;
  v50 = *a1;
  v51 = *(*a1 + 8);
  v52 = *(*a1 + 16);
  if (v51 >= v52)
  {
    v54 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *v50) >> 3);
    v55 = v54 + 1;
    if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v56 = 0xAAAAAAAAAAAAAAABLL * ((v52 - *v50) >> 3);
    if (2 * v56 > v55)
    {
      v55 = 2 * v56;
    }

    if (v56 >= 0x555555555555555)
    {
      v57 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v57 = v55;
    }

    if (v57)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v57);
    }

    v58 = 24 * v54;
    *v58 = 0x75DBD6381F1903FFLL;
    *(v58 + 8) = "md::ls::PendingProcessing]";
    *(v58 + 16) = 25;
    v53 = 24 * v54 + 24;
    v59 = *(v50 + 8) - *v50;
    v60 = 24 * v54 - v59;
    memcpy((v58 - v59), *v50, v59);
    v61 = *v50;
    *v50 = v60;
    *(v50 + 8) = v53;
    *(v50 + 16) = 0;
    if (v61)
    {
      operator delete(v61);
    }
  }

  else
  {
    *v51 = 0x75DBD6381F1903FFLL;
    v51[1] = "md::ls::PendingProcessing]";
    v51[2] = 25;
    v53 = (v51 + 3);
  }

  *(v50 + 8) = v53;
  v62 = *a1;
  v63 = *(*a1 + 8);
  v64 = *(*a1 + 16);
  if (v63 >= v64)
  {
    v66 = 0xAAAAAAAAAAAAAAABLL * ((v63 - *v62) >> 3);
    v67 = v66 + 1;
    if (v66 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v68 = 0xAAAAAAAAAAAAAAABLL * ((v64 - *v62) >> 3);
    if (2 * v68 > v67)
    {
      v67 = 2 * v68;
    }

    if (v68 >= 0x555555555555555)
    {
      v69 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v69 = v67;
    }

    if (v69)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v69);
    }

    v70 = 24 * v66;
    *v70 = 0xECC498AF223943D5;
    *(v70 + 8) = "md::ls::MeshLayerTypeV]";
    *(v70 + 16) = 22;
    v65 = 24 * v66 + 24;
    v71 = *(v62 + 8) - *v62;
    v72 = 24 * v66 - v71;
    memcpy((v70 - v71), *v62, v71);
    v73 = *v62;
    *v62 = v72;
    *(v62 + 8) = v65;
    *(v62 + 16) = 0;
    if (v73)
    {
      operator delete(v73);
    }
  }

  else
  {
    *v63 = 0xECC498AF223943D5;
    v63[1] = "md::ls::MeshLayerTypeV]";
    v63[2] = 22;
    v65 = (v63 + 3);
  }

  *(v62 + 8) = v65;
  v74 = *a1;
  v75 = *(*a1 + 8);
  v76 = *(*a1 + 16);
  if (v75 >= v76)
  {
    v78 = 0xAAAAAAAAAAAAAAABLL * ((v75 - *v74) >> 3);
    v79 = v78 + 1;
    if (v78 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v80 = 0xAAAAAAAAAAAAAAABLL * ((v76 - *v74) >> 3);
    if (2 * v80 > v79)
    {
      v79 = 2 * v80;
    }

    if (v80 >= 0x555555555555555)
    {
      v81 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v81 = v79;
    }

    if (v81)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v81);
    }

    v82 = 24 * v78;
    *v82 = 0xEC2A00DC914732D7;
    *(v82 + 8) = "md::ls::IntendedSceneLayer]";
    *(v82 + 16) = 26;
    v77 = 24 * v78 + 24;
    v83 = *(v74 + 8) - *v74;
    v84 = 24 * v78 - v83;
    memcpy((v82 - v83), *v74, v83);
    v85 = *v74;
    *v74 = v84;
    *(v74 + 8) = v77;
    *(v74 + 16) = 0;
    if (v85)
    {
      operator delete(v85);
    }
  }

  else
  {
    *v75 = 0xEC2A00DC914732D7;
    v75[1] = "md::ls::IntendedSceneLayer]";
    v75[2] = 26;
    v77 = (v75 + 3);
  }

  *(v74 + 8) = v77;
  v86 = *a1;
  v87 = *(*a1 + 8);
  v88 = *(*a1 + 16);
  if (v87 >= v88)
  {
    v90 = 0xAAAAAAAAAAAAAAABLL * ((v87 - *v86) >> 3);
    v91 = v90 + 1;
    if (v90 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v92 = 0xAAAAAAAAAAAAAAABLL * ((v88 - *v86) >> 3);
    if (2 * v92 > v91)
    {
      v91 = 2 * v92;
    }

    if (v92 >= 0x555555555555555)
    {
      v93 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v93 = v91;
    }

    if (v93)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v93);
    }

    v94 = 24 * v90;
    *v94 = 0xCD844FF303308290;
    *(v94 + 8) = "md::ls::HasMeshHandle]";
    *(v94 + 16) = 21;
    v89 = 24 * v90 + 24;
    v95 = *(v86 + 8) - *v86;
    v96 = 24 * v90 - v95;
    memcpy((v94 - v95), *v86, v95);
    v97 = *v86;
    *v86 = v96;
    *(v86 + 8) = v89;
    *(v86 + 16) = 0;
    if (v97)
    {
      operator delete(v97);
    }
  }

  else
  {
    *v87 = 0xCD844FF303308290;
    v87[1] = "md::ls::HasMeshHandle]";
    v87[2] = 21;
    v89 = (v87 + 3);
  }

  *(v86 + 8) = v89;
  v98 = *a1;
  v99 = *(*a1 + 8);
  v100 = *(*a1 + 16);
  if (v99 >= v100)
  {
    v102 = 0xAAAAAAAAAAAAAAABLL * ((v99 - *v98) >> 3);
    v103 = v102 + 1;
    if (v102 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v104 = 0xAAAAAAAAAAAAAAABLL * ((v100 - *v98) >> 3);
    if (2 * v104 > v103)
    {
      v103 = 2 * v104;
    }

    if (v104 >= 0x555555555555555)
    {
      v105 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v105 = v103;
    }

    if (v105)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v105);
    }

    v106 = 24 * v102;
    *v106 = 0x6C7EE74910D42096;
    *(v106 + 8) = "md::ls::PositionScaleInfoConstantDataHandle]";
    *(v106 + 16) = 43;
    v101 = 24 * v102 + 24;
    v107 = *(v98 + 8) - *v98;
    v108 = 24 * v102 - v107;
    memcpy((v106 - v107), *v98, v107);
    v109 = *v98;
    *v98 = v108;
    *(v98 + 8) = v101;
    *(v98 + 16) = 0;
    if (v109)
    {
      operator delete(v109);
    }
  }

  else
  {
    *v99 = 0x6C7EE74910D42096;
    v99[1] = "md::ls::PositionScaleInfoConstantDataHandle]";
    v99[2] = 43;
    v101 = (v99 + 3);
  }

  *(v98 + 8) = v101;
  v110 = *a1;
  v111 = *(*a1 + 8);
  v112 = *(*a1 + 16);
  if (v111 >= v112)
  {
    v114 = 0xAAAAAAAAAAAAAAABLL * ((v111 - *v110) >> 3);
    v115 = v114 + 1;
    if (v114 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v116 = 0xAAAAAAAAAAAAAAABLL * ((v112 - *v110) >> 3);
    if (2 * v116 > v115)
    {
      v115 = 2 * v116;
    }

    if (v116 >= 0x555555555555555)
    {
      v117 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v117 = v115;
    }

    if (v117)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v117);
    }

    v118 = 24 * v114;
    *v118 = 0xCFE242268B958ADALL;
    *(v118 + 8) = "md::ls::ViewConstantDataHandle]";
    *(v118 + 16) = 30;
    v113 = 24 * v114 + 24;
    v119 = *(v110 + 8) - *v110;
    v120 = 24 * v114 - v119;
    memcpy((v118 - v119), *v110, v119);
    v121 = *v110;
    *v110 = v120;
    *(v110 + 8) = v113;
    *(v110 + 16) = 0;
    if (v121)
    {
      operator delete(v121);
    }
  }

  else
  {
    *v111 = 0xCFE242268B958ADALL;
    v111[1] = "md::ls::ViewConstantDataHandle]";
    v111[2] = 30;
    v113 = (v111 + 3);
  }

  *(v110 + 8) = v113;
  v122 = *a1;
  v123 = *(*a1 + 8);
  v124 = *(*a1 + 16);
  if (v123 >= v124)
  {
    v126 = 0xAAAAAAAAAAAAAAABLL * ((v123 - *v122) >> 3);
    v127 = v126 + 1;
    if (v126 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v128 = 0xAAAAAAAAAAAAAAABLL * ((v124 - *v122) >> 3);
    if (2 * v128 > v127)
    {
      v127 = 2 * v128;
    }

    if (v128 >= 0x555555555555555)
    {
      v129 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v129 = v127;
    }

    if (v129)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v129);
    }

    v130 = 24 * v126;
    *v130 = 0x74DC502726E97929;
    *(v130 + 8) = "md::ls::TransformConstantDataHandle]";
    *(v130 + 16) = 35;
    v125 = 24 * v126 + 24;
    v131 = *(v122 + 8) - *v122;
    v132 = 24 * v126 - v131;
    memcpy((v130 - v131), *v122, v131);
    v133 = *v122;
    *v122 = v132;
    *(v122 + 8) = v125;
    *(v122 + 16) = 0;
    if (v133)
    {
      operator delete(v133);
    }
  }

  else
  {
    *v123 = 0x74DC502726E97929;
    v123[1] = "md::ls::TransformConstantDataHandle]";
    v123[2] = 35;
    v125 = (v123 + 3);
  }

  *(v122 + 8) = v125;
  v134 = *a1;
  v135 = *(*a1 + 8);
  v136 = *(*a1 + 16);
  if (v135 >= v136)
  {
    v138 = 0xAAAAAAAAAAAAAAABLL * ((v135 - *v134) >> 3);
    v139 = v138 + 1;
    if (v138 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v140 = 0xAAAAAAAAAAAAAAABLL * ((v136 - *v134) >> 3);
    if (2 * v140 > v139)
    {
      v139 = 2 * v140;
    }

    if (v140 >= 0x555555555555555)
    {
      v141 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v141 = v139;
    }

    if (v141)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v141);
    }

    v142 = 24 * v138;
    *v142 = 0x1BB343378E1EE5BLL;
    *(v142 + 8) = "md::ls::StyleDataKeyHandle]";
    *(v142 + 16) = 26;
    v137 = 24 * v138 + 24;
    v143 = *(v134 + 8) - *v134;
    v144 = 24 * v138 - v143;
    memcpy((v142 - v143), *v134, v143);
    v145 = *v134;
    *v134 = v144;
    *(v134 + 8) = v137;
    *(v134 + 16) = 0;
    if (v145)
    {
      operator delete(v145);
    }
  }

  else
  {
    *v135 = 0x1BB343378E1EE5BLL;
    v135[1] = "md::ls::StyleDataKeyHandle]";
    v135[2] = 26;
    v137 = (v135 + 3);
  }

  *(v134 + 8) = v137;
  v146 = *a1;
  v147 = *(*a1 + 8);
  v148 = *(*a1 + 16);
  if (v147 >= v148)
  {
    v150 = 0xAAAAAAAAAAAAAAABLL * ((v147 - *v146) >> 3);
    v151 = v150 + 1;
    if (v150 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v152 = 0xAAAAAAAAAAAAAAABLL * ((v148 - *v146) >> 3);
    if (2 * v152 > v151)
    {
      v151 = 2 * v152;
    }

    if (v152 >= 0x555555555555555)
    {
      v153 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v153 = v151;
    }

    if (v153)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v153);
    }

    v154 = 24 * v150;
    *v154 = 0x3AC919C8A5243F9;
    *(v154 + 8) = "md::ls::StyleSSAODataKeyHandle]";
    *(v154 + 16) = 30;
    v149 = 24 * v150 + 24;
    v155 = *(v146 + 8) - *v146;
    v156 = 24 * v150 - v155;
    memcpy((v154 - v155), *v146, v155);
    v157 = *v146;
    *v146 = v156;
    *(v146 + 8) = v149;
    *(v146 + 16) = 0;
    if (v157)
    {
      operator delete(v157);
    }
  }

  else
  {
    *v147 = 0x3AC919C8A5243F9;
    v147[1] = "md::ls::StyleSSAODataKeyHandle]";
    v147[2] = 30;
    v149 = (v147 + 3);
  }

  *(v146 + 8) = v149;
  v158 = *a1;
  v159 = *(*a1 + 8);
  v160 = *(*a1 + 16);
  if (v159 >= v160)
  {
    v162 = 0xAAAAAAAAAAAAAAABLL * ((v159 - *v158) >> 3);
    v163 = v162 + 1;
    if (v162 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v164 = 0xAAAAAAAAAAAAAAABLL * ((v160 - *v158) >> 3);
    if (2 * v164 > v163)
    {
      v163 = 2 * v164;
    }

    if (v164 >= 0x555555555555555)
    {
      v165 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v165 = v163;
    }

    if (v165)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v165);
    }

    v166 = 24 * v162;
    *v166 = 0xA50DD2A5BD75DBD6;
    *(v166 + 8) = "md::ls::StyleEmissiveDataKeyHandle]";
    *(v166 + 16) = 34;
    v161 = 24 * v162 + 24;
    v167 = *(v158 + 8) - *v158;
    v168 = 24 * v162 - v167;
    memcpy((v166 - v167), *v158, v167);
    v169 = *v158;
    *v158 = v168;
    *(v158 + 8) = v161;
    *(v158 + 16) = 0;
    if (v169)
    {
      operator delete(v169);
    }
  }

  else
  {
    *v159 = 0xA50DD2A5BD75DBD6;
    v159[1] = "md::ls::StyleEmissiveDataKeyHandle]";
    v159[2] = 34;
    v161 = (v159 + 3);
  }

  *(v158 + 8) = v161;
  v170 = *a1;
  v171 = *(*a1 + 8);
  v172 = *(*a1 + 16);
  if (v171 >= v172)
  {
    v174 = 0xAAAAAAAAAAAAAAABLL * ((v171 - *v170) >> 3);
    v175 = v174 + 1;
    if (v174 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v176 = 0xAAAAAAAAAAAAAAABLL * ((v172 - *v170) >> 3);
    if (2 * v176 > v175)
    {
      v175 = 2 * v176;
    }

    if (v176 >= 0x555555555555555)
    {
      v177 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v177 = v175;
    }

    if (v177)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v177);
    }

    v178 = 24 * v174;
    *v178 = 0xFA89E73840C3EC51;
    *(v178 + 8) = "md::ls::ColorCorrectionDataKeyHandle]";
    *(v178 + 16) = 36;
    v173 = 24 * v174 + 24;
    v179 = *(v170 + 8) - *v170;
    v180 = 24 * v174 - v179;
    memcpy((v178 - v179), *v170, v179);
    v181 = *v170;
    *v170 = v180;
    *(v170 + 8) = v173;
    *(v170 + 16) = 0;
    if (v181)
    {
      operator delete(v181);
    }
  }

  else
  {
    *v171 = 0xFA89E73840C3EC51;
    v171[1] = "md::ls::ColorCorrectionDataKeyHandle]";
    v171[2] = 36;
    v173 = (v171 + 3);
  }

  *(v170 + 8) = v173;
  v182 = *a1;
  v183 = *(*a1 + 8);
  v184 = *(*a1 + 16);
  if (v183 >= v184)
  {
    v186 = 0xAAAAAAAAAAAAAAABLL * ((v183 - *v182) >> 3);
    v187 = v186 + 1;
    if (v186 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v188 = 0xAAAAAAAAAAAAAAABLL * ((v184 - *v182) >> 3);
    if (2 * v188 > v187)
    {
      v187 = 2 * v188;
    }

    if (v188 >= 0x555555555555555)
    {
      v189 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v189 = v187;
    }

    if (v189)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v189);
    }

    v190 = 24 * v186;
    *v190 = 0x96F87A2692FE4013;
    *(v190 + 8) = "md::ls::StyleCameraConstantDataHandle]";
    *(v190 + 16) = 37;
    v185 = 24 * v186 + 24;
    v191 = *(v182 + 8) - *v182;
    v192 = 24 * v186 - v191;
    memcpy((v190 - v191), *v182, v191);
    v193 = *v182;
    *v182 = v192;
    *(v182 + 8) = v185;
    *(v182 + 16) = 0;
    if (v193)
    {
      operator delete(v193);
    }
  }

  else
  {
    *v183 = 0x96F87A2692FE4013;
    v183[1] = "md::ls::StyleCameraConstantDataHandle]";
    v183[2] = 37;
    v185 = (v183 + 3);
  }

  *(v182 + 8) = v185;
  v194 = *a1;
  v195 = *(*a1 + 8);
  v196 = *(*a1 + 16);
  if (v195 >= v196)
  {
    v198 = 0xAAAAAAAAAAAAAAABLL * ((v195 - *v194) >> 3);
    v199 = v198 + 1;
    if (v198 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v200 = 0xAAAAAAAAAAAAAAABLL * ((v196 - *v194) >> 3);
    if (2 * v200 > v199)
    {
      v199 = 2 * v200;
    }

    if (v200 >= 0x555555555555555)
    {
      v201 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v201 = v199;
    }

    if (v201)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v201);
    }

    v202 = 24 * v198;
    *v202 = 0xA3F884E4E2541296;
    *(v202 + 8) = "md::ls::ColorDataHandle]";
    *(v202 + 16) = 23;
    v197 = 24 * v198 + 24;
    v203 = *(v194 + 8) - *v194;
    v204 = 24 * v198 - v203;
    memcpy((v202 - v203), *v194, v203);
    v205 = *v194;
    *v194 = v204;
    *(v194 + 8) = v197;
    *(v194 + 16) = 0;
    if (v205)
    {
      operator delete(v205);
    }
  }

  else
  {
    *v195 = 0xA3F884E4E2541296;
    v195[1] = "md::ls::ColorDataHandle]";
    v195[2] = 23;
    v197 = (v195 + 3);
  }

  *(v194 + 8) = v197;
  v206 = *a1;
  v207 = *(*a1 + 8);
  v208 = *(*a1 + 16);
  if (v207 >= v208)
  {
    v210 = 0xAAAAAAAAAAAAAAABLL * ((v207 - *v206) >> 3);
    v211 = v210 + 1;
    if (v210 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v212 = 0xAAAAAAAAAAAAAAABLL * ((v208 - *v206) >> 3);
    if (2 * v212 > v211)
    {
      v211 = 2 * v212;
    }

    if (v212 >= 0x555555555555555)
    {
      v213 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v213 = v211;
    }

    if (v213)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v213);
    }

    v214 = 24 * v210;
    *v214 = 0x71CBA64B1A9CA230;
    *(v214 + 8) = "md::ls::IndexRange]";
    *(v214 + 16) = 18;
    v209 = 24 * v210 + 24;
    v215 = *(v206 + 8) - *v206;
    v216 = 24 * v210 - v215;
    memcpy((v214 - v215), *v206, v215);
    v217 = *v206;
    *v206 = v216;
    *(v206 + 8) = v209;
    *(v206 + 16) = 0;
    if (v217)
    {
      operator delete(v217);
    }
  }

  else
  {
    *v207 = 0x71CBA64B1A9CA230;
    v207[1] = "md::ls::IndexRange]";
    v207[2] = 18;
    v209 = (v207 + 3);
  }

  *(v206 + 8) = v209;
  v218 = *a1;
  v219 = *(*a1 + 8);
  v220 = *(*a1 + 16);
  if (v219 >= v220)
  {
    v222 = 0xAAAAAAAAAAAAAAABLL * ((v219 - *v218) >> 3);
    v223 = v222 + 1;
    if (v222 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v224 = 0xAAAAAAAAAAAAAAABLL * ((v220 - *v218) >> 3);
    if (2 * v224 > v223)
    {
      v223 = 2 * v224;
    }

    if (v224 >= 0x555555555555555)
    {
      v225 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v225 = v223;
    }

    if (v225)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v225);
    }

    v226 = 24 * v222;
    *v226 = 0xD5AD9B8C3FE62EE8;
    *(v226 + 8) = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    *(v226 + 16) = 46;
    v221 = 24 * v222 + 24;
    v227 = *(v218 + 8) - *v218;
    v228 = 24 * v222 - v227;
    memcpy((v226 - v227), *v218, v227);
    v229 = *v218;
    *v218 = v228;
    *(v218 + 8) = v221;
    *(v218 + 16) = 0;
    if (v229)
    {
      operator delete(v229);
    }
  }

  else
  {
    *v219 = 0xD5AD9B8C3FE62EE8;
    v219[1] = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    v219[2] = 46;
    v221 = (v219 + 3);
  }

  *(v218 + 8) = v221;
  v230 = *a1;
  v231 = *(*a1 + 8);
  v232 = *(*a1 + 16);
  if (v231 >= v232)
  {
    v234 = 0xAAAAAAAAAAAAAAABLL * ((v231 - *v230) >> 3);
    v235 = v234 + 1;
    if (v234 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v236 = 0xAAAAAAAAAAAAAAABLL * ((v232 - *v230) >> 3);
    if (2 * v236 > v235)
    {
      v235 = 2 * v236;
    }

    if (v236 >= 0x555555555555555)
    {
      v237 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v237 = v235;
    }

    if (v237)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v237);
    }

    v238 = 24 * v234;
    *v238 = 0x9705908F280836EDLL;
    *(v238 + 8) = "md::ls::SharedMaterialZIndexHandle]";
    *(v238 + 16) = 34;
    v233 = 24 * v234 + 24;
    v239 = *(v230 + 8) - *v230;
    v240 = 24 * v234 - v239;
    memcpy((v238 - v239), *v230, v239);
    v241 = *v230;
    *v230 = v240;
    *(v230 + 8) = v233;
    *(v230 + 16) = 0;
    if (v241)
    {
      operator delete(v241);
    }
  }

  else
  {
    *v231 = 0x9705908F280836EDLL;
    v231[1] = "md::ls::SharedMaterialZIndexHandle]";
    v231[2] = 34;
    v233 = (v231 + 3);
  }

  *(v230 + 8) = v233;
  v242 = *a1;
  v243 = *(*a1 + 8);
  v244 = *(*a1 + 16);
  if (v243 >= v244)
  {
    v246 = 0xAAAAAAAAAAAAAAABLL * ((v243 - *v242) >> 3);
    v247 = v246 + 1;
    if (v246 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v248 = 0xAAAAAAAAAAAAAAABLL * ((v244 - *v242) >> 3);
    if (2 * v248 > v247)
    {
      v247 = 2 * v248;
    }

    if (v248 >= 0x555555555555555)
    {
      v249 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v249 = v247;
    }

    if (v249)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v249);
    }

    v250 = 24 * v246;
    *v250 = 0x3218EFD67197A145;
    *(v250 + 8) = "md::ls::NormalsHandle]";
    *(v250 + 16) = 21;
    v245 = 24 * v246 + 24;
    v251 = *(v242 + 8) - *v242;
    v252 = 24 * v246 - v251;
    memcpy((v250 - v251), *v242, v251);
    v253 = *v242;
    *v242 = v252;
    *(v242 + 8) = v245;
    *(v242 + 16) = 0;
    if (v253)
    {
      operator delete(v253);
    }
  }

  else
  {
    *v243 = 0x3218EFD67197A145;
    v243[1] = "md::ls::NormalsHandle]";
    v243[2] = 21;
    v245 = (v243 + 3);
  }

  *(v242 + 8) = v245;
  v254 = *a1;
  v255 = *(*a1 + 8);
  v256 = *(*a1 + 16);
  if (v255 >= v256)
  {
    v258 = 0xAAAAAAAAAAAAAAABLL * ((v255 - *v254) >> 3);
    v259 = v258 + 1;
    if (v258 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v260 = 0xAAAAAAAAAAAAAAABLL * ((v256 - *v254) >> 3);
    if (2 * v260 > v259)
    {
      v259 = 2 * v260;
    }

    if (v260 >= 0x555555555555555)
    {
      v261 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v261 = v259;
    }

    if (v261)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v261);
    }

    v262 = 24 * v258;
    *v262 = 0xAF179EFD8A4C83D4;
    *(v262 + 8) = "md::ls::InstanceTransformHandle]";
    *(v262 + 16) = 31;
    v257 = 24 * v258 + 24;
    v263 = *(v254 + 8) - *v254;
    v264 = 24 * v258 - v263;
    memcpy((v262 - v263), *v254, v263);
    v265 = *v254;
    *v254 = v264;
    *(v254 + 8) = v257;
    *(v254 + 16) = 0;
    if (v265)
    {
      operator delete(v265);
    }
  }

  else
  {
    *v255 = 0xAF179EFD8A4C83D4;
    v255[1] = "md::ls::InstanceTransformHandle]";
    v255[2] = 31;
    v257 = (v255 + 3);
  }

  *(v254 + 8) = v257;
  v266 = *a1;
  v267 = *(*a1 + 8);
  v268 = *(*a1 + 16);
  if (v267 >= v268)
  {
    v270 = 0xAAAAAAAAAAAAAAABLL * ((v267 - *v266) >> 3);
    v271 = v270 + 1;
    if (v270 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v272 = 0xAAAAAAAAAAAAAAABLL * ((v268 - *v266) >> 3);
    if (2 * v272 > v271)
    {
      v271 = 2 * v272;
    }

    if (v272 >= 0x555555555555555)
    {
      v273 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v273 = v271;
    }

    if (v273)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v273);
    }

    v274 = 24 * v270;
    *v274 = 0xCBB77B1CBD05D7C5;
    *(v274 + 8) = "md::ls::UVsHandle]";
    *(v274 + 16) = 17;
    v269 = 24 * v270 + 24;
    v275 = *(v266 + 8) - *v266;
    v276 = 24 * v270 - v275;
    memcpy((v274 - v275), *v266, v275);
    v277 = *v266;
    *v266 = v276;
    *(v266 + 8) = v269;
    *(v266 + 16) = 0;
    if (v277)
    {
      operator delete(v277);
    }
  }

  else
  {
    *v267 = 0xCBB77B1CBD05D7C5;
    v267[1] = "md::ls::UVsHandle]";
    v267[2] = 17;
    v269 = (v267 + 3);
  }

  *(v266 + 8) = v269;
  v278 = *a1;
  v279 = *(*a1 + 8);
  v280 = *(*a1 + 16);
  if (v279 >= v280)
  {
    v282 = 0xAAAAAAAAAAAAAAABLL * ((v279 - *v278) >> 3);
    v283 = v282 + 1;
    if (v282 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v284 = 0xAAAAAAAAAAAAAAABLL * ((v280 - *v278) >> 3);
    if (2 * v284 > v283)
    {
      v283 = 2 * v284;
    }

    if (v284 >= 0x555555555555555)
    {
      v285 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v285 = v283;
    }

    if (v285)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v285);
    }

    v286 = 24 * v282;
    *v286 = 0x8E45E81B6E5A8E0ELL;
    *(v286 + 8) = "md::ls::StyleRouteLineMaskDataKeyHandle]";
    *(v286 + 16) = 39;
    v281 = 24 * v282 + 24;
    v287 = *(v278 + 8) - *v278;
    v288 = 24 * v282 - v287;
    memcpy((v286 - v287), *v278, v287);
    v289 = *v278;
    *v278 = v288;
    *(v278 + 8) = v281;
    *(v278 + 16) = 0;
    if (v289)
    {
      operator delete(v289);
    }
  }

  else
  {
    *v279 = 0x8E45E81B6E5A8E0ELL;
    v279[1] = "md::ls::StyleRouteLineMaskDataKeyHandle]";
    v279[2] = 39;
    v281 = (v279 + 3);
  }

  *(v278 + 8) = v281;
  v290 = *a1;
  v291 = *(*a1 + 8);
  v292 = *(*a1 + 16);
  if (v291 >= v292)
  {
    v294 = 0xAAAAAAAAAAAAAAABLL * ((v291 - *v290) >> 3);
    v295 = v294 + 1;
    if (v294 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v296 = 0xAAAAAAAAAAAAAAABLL * ((v292 - *v290) >> 3);
    if (2 * v296 > v295)
    {
      v295 = 2 * v296;
    }

    if (v296 >= 0x555555555555555)
    {
      v297 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v297 = v295;
    }

    if (v297)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v297);
    }

    v298 = 24 * v294;
    *v298 = 0xD443D3DCBB78491ALL;
    *(v298 + 8) = "md::ls::ElevationHandle]";
    *(v298 + 16) = 23;
    v293 = 24 * v294 + 24;
    v299 = *(v290 + 8) - *v290;
    v300 = 24 * v294 - v299;
    memcpy((v298 - v299), *v290, v299);
    v301 = *v290;
    *v290 = v300;
    *(v290 + 8) = v293;
    *(v290 + 16) = 0;
    if (v301)
    {
      operator delete(v301);
    }
  }

  else
  {
    *v291 = 0xD443D3DCBB78491ALL;
    v291[1] = "md::ls::ElevationHandle]";
    v291[2] = 23;
    v293 = (v291 + 3);
  }

  *(v290 + 8) = v293;
  v302 = *a1;
  v303 = *(*a1 + 8);
  v304 = *(*a1 + 16);
  if (v303 >= v304)
  {
    v306 = 0xAAAAAAAAAAAAAAABLL * ((v303 - *v302) >> 3);
    v307 = v306 + 1;
    if (v306 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v308 = 0xAAAAAAAAAAAAAAABLL * ((v304 - *v302) >> 3);
    if (2 * v308 > v307)
    {
      v307 = 2 * v308;
    }

    if (v308 >= 0x555555555555555)
    {
      v309 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v309 = v307;
    }

    if (v309)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v309);
    }

    v310 = 24 * v306;
    *v310 = 0xDD9825BCFA7911B2;
    *(v310 + 8) = "md::ls::TextureHandleForType<DaVinci::DiffuseTexture>]";
    *(v310 + 16) = 53;
    v305 = 24 * v306 + 24;
    v311 = *(v302 + 8) - *v302;
    v312 = 24 * v306 - v311;
    memcpy((v310 - v311), *v302, v311);
    v313 = *v302;
    *v302 = v312;
    *(v302 + 8) = v305;
    *(v302 + 16) = 0;
    if (v313)
    {
      operator delete(v313);
    }
  }

  else
  {
    *v303 = 0xDD9825BCFA7911B2;
    v303[1] = "md::ls::TextureHandleForType<DaVinci::DiffuseTexture>]";
    v303[2] = 53;
    v305 = (v303 + 3);
  }

  *(v302 + 8) = v305;
  v314 = *a1;
  v315 = *(*a1 + 8);
  v316 = *(*a1 + 16);
  if (v315 >= v316)
  {
    v318 = 0xAAAAAAAAAAAAAAABLL * ((v315 - *v314) >> 3);
    v319 = v318 + 1;
    if (v318 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v320 = 0xAAAAAAAAAAAAAAABLL * ((v316 - *v314) >> 3);
    if (2 * v320 > v319)
    {
      v319 = 2 * v320;
    }

    if (v320 >= 0x555555555555555)
    {
      v321 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v321 = v319;
    }

    if (v321)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v321);
    }

    v322 = 24 * v318;
    *v322 = 0xDC98991DB7473274;
    *(v322 + 8) = "md::ls::LandCoverSettingsConstantDataHandle]";
    *(v322 + 16) = 43;
    v317 = 24 * v318 + 24;
    v323 = *(v314 + 8) - *v314;
    v324 = 24 * v318 - v323;
    memcpy((v322 - v323), *v314, v323);
    v325 = *v314;
    *v314 = v324;
    *(v314 + 8) = v317;
    *(v314 + 16) = 0;
    if (v325)
    {
      operator delete(v325);
    }
  }

  else
  {
    *v315 = 0xDC98991DB7473274;
    v315[1] = "md::ls::LandCoverSettingsConstantDataHandle]";
    v315[2] = 43;
    v317 = (v315 + 3);
  }

  *(v314 + 8) = v317;
  v326 = *a1;
  v327 = *(*a1 + 8);
  v328 = *(*a1 + 16);
  if (v327 >= v328)
  {
    v330 = 0xAAAAAAAAAAAAAAABLL * ((v327 - *v326) >> 3);
    v331 = v330 + 1;
    if (v330 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v332 = 0xAAAAAAAAAAAAAAABLL * ((v328 - *v326) >> 3);
    if (2 * v332 > v331)
    {
      v331 = 2 * v332;
    }

    if (v332 >= 0x555555555555555)
    {
      v333 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v333 = v331;
    }

    if (v333)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v333);
    }

    v334 = 24 * v330;
    *v334 = 0xEAA0B82FC49F7277;
    *(v334 + 8) = "md::ls::ShadowConstantDataHandle]";
    *(v334 + 16) = 32;
    v329 = 24 * v330 + 24;
    v335 = *(v326 + 8) - *v326;
    v336 = 24 * v330 - v335;
    memcpy((v334 - v335), *v326, v335);
    v337 = *v326;
    *v326 = v336;
    *(v326 + 8) = v329;
    *(v326 + 16) = 0;
    if (v337)
    {
      operator delete(v337);
    }
  }

  else
  {
    *v327 = 0xEAA0B82FC49F7277;
    v327[1] = "md::ls::ShadowConstantDataHandle]";
    v327[2] = 32;
    v329 = (v327 + 3);
  }

  *(v326 + 8) = v329;
  v338 = *a1;
  v339 = *(*a1 + 8);
  v340 = *(*a1 + 16);
  if (v339 >= v340)
  {
    v342 = 0xAAAAAAAAAAAAAAABLL * ((v339 - *v338) >> 3);
    v343 = v342 + 1;
    if (v342 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v344 = 0xAAAAAAAAAAAAAAABLL * ((v340 - *v338) >> 3);
    if (2 * v344 > v343)
    {
      v343 = 2 * v344;
    }

    if (v344 >= 0x555555555555555)
    {
      v345 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v345 = v343;
    }

    if (v345)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v345);
    }

    v346 = 24 * v342;
    *v346 = 0x1EBB3E0519E8FF9DLL;
    *(v346 + 8) = "md::ls::PrepassConstantDataHandle]";
    *(v346 + 16) = 33;
    v341 = 24 * v342 + 24;
    v347 = *(v338 + 8) - *v338;
    v348 = 24 * v342 - v347;
    memcpy((v346 - v347), *v338, v347);
    v349 = *v338;
    *v338 = v348;
    *(v338 + 8) = v341;
    *(v338 + 16) = 0;
    if (v349)
    {
      operator delete(v349);
    }
  }

  else
  {
    *v339 = 0x1EBB3E0519E8FF9DLL;
    v339[1] = "md::ls::PrepassConstantDataHandle]";
    v339[2] = 33;
    v341 = (v339 + 3);
  }

  *(v338 + 8) = v341;
  v350 = *a1;
  v351 = *(*a1 + 8);
  v352 = *(*a1 + 16);
  if (v351 >= v352)
  {
    v354 = 0xAAAAAAAAAAAAAAABLL * ((v351 - *v350) >> 3);
    v355 = v354 + 1;
    if (v354 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v356 = 0xAAAAAAAAAAAAAAABLL * ((v352 - *v350) >> 3);
    if (2 * v356 > v355)
    {
      v355 = 2 * v356;
    }

    if (v356 >= 0x555555555555555)
    {
      v357 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v357 = v355;
    }

    if (v357)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v357);
    }

    v358 = 24 * v354;
    *v358 = 0x9292F9031FE6DB5;
    *(v358 + 8) = "md::ls::ClippingConstantDataHandle]";
    *(v358 + 16) = 34;
    v353 = 24 * v354 + 24;
    v359 = *(v350 + 8) - *v350;
    v360 = 24 * v354 - v359;
    memcpy((v358 - v359), *v350, v359);
    v361 = *v350;
    *v350 = v360;
    *(v350 + 8) = v353;
    *(v350 + 16) = 0;
    if (v361)
    {
      operator delete(v361);
    }
  }

  else
  {
    *v351 = 0x9292F9031FE6DB5;
    v351[1] = "md::ls::ClippingConstantDataHandle]";
    v351[2] = 34;
    v353 = (v351 + 3);
  }

  *(v350 + 8) = v353;
  v362 = *a1;
  v363 = *(*a1 + 8);
  v364 = *(*a1 + 16);
  if (v363 >= v364)
  {
    v366 = 0xAAAAAAAAAAAAAAABLL * ((v363 - *v362) >> 3);
    v367 = v366 + 1;
    if (v366 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v368 = 0xAAAAAAAAAAAAAAABLL * ((v364 - *v362) >> 3);
    if (2 * v368 > v367)
    {
      v367 = 2 * v368;
    }

    if (v368 >= 0x555555555555555)
    {
      v369 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v369 = v367;
    }

    if (v369)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v369);
    }

    v370 = 24 * v366;
    *v370 = 0xD02B5FD100F36AA2;
    *(v370 + 8) = "md::ls::PlanarParametersCacheKeyHandle]";
    *(v370 + 16) = 38;
    v365 = 24 * v366 + 24;
    v371 = *(v362 + 8) - *v362;
    v372 = 24 * v366 - v371;
    memcpy((v370 - v371), *v362, v371);
    v373 = *v362;
    *v362 = v372;
    *(v362 + 8) = v365;
    *(v362 + 16) = 0;
    if (v373)
    {
      operator delete(v373);
    }
  }

  else
  {
    *v363 = 0xD02B5FD100F36AA2;
    v363[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v363[2] = 38;
    v365 = (v363 + 3);
  }

  *(v362 + 8) = v365;
  v374 = *a1;
  v375 = *(*a1 + 8);
  v376 = *(*a1 + 16);
  if (v375 >= v376)
  {
    v378 = 0xAAAAAAAAAAAAAAABLL * ((v375 - *v374) >> 3);
    v379 = v378 + 1;
    if (v378 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v380 = 0xAAAAAAAAAAAAAAABLL * ((v376 - *v374) >> 3);
    if (2 * v380 > v379)
    {
      v379 = 2 * v380;
    }

    if (v380 >= 0x555555555555555)
    {
      v381 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v381 = v379;
    }

    if (v381)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v381);
    }

    v382 = 24 * v378;
    *v382 = 0x1D932F2BF291491;
    *(v382 + 8) = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    *(v382 + 16) = 49;
    v377 = 24 * v378 + 24;
    v383 = *(v374 + 8) - *v374;
    v384 = 24 * v378 - v383;
    memcpy((v382 - v383), *v374, v383);
    v385 = *v374;
    *v374 = v384;
    *(v374 + 8) = v377;
    *(v374 + 16) = 0;
    if (v385)
    {
      operator delete(v385);
    }
  }

  else
  {
    *v375 = 0x1D932F2BF291491;
    v375[1] = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    v375[2] = 49;
    v377 = (v375 + 3);
  }

  *(v374 + 8) = v377;
  v386 = *a1;
  v387 = *(*a1 + 8);
  v388 = *(*a1 + 16);
  if (v387 >= v388)
  {
    v390 = 0xAAAAAAAAAAAAAAABLL * ((v387 - *v386) >> 3);
    v391 = v390 + 1;
    if (v390 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v392 = 0xAAAAAAAAAAAAAAABLL * ((v388 - *v386) >> 3);
    if (2 * v392 > v391)
    {
      v391 = 2 * v392;
    }

    if (v392 >= 0x555555555555555)
    {
      v393 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v393 = v391;
    }

    if (v393)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v393);
    }

    v394 = 24 * v390;
    *v394 = 0xCE03281732FA0019;
    *(v394 + 8) = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    *(v394 + 16) = 54;
    v389 = 24 * v390 + 24;
    v395 = *(v386 + 8) - *v386;
    v396 = 24 * v390 - v395;
    memcpy((v394 - v395), *v386, v395);
    v397 = *v386;
    *v386 = v396;
    *(v386 + 8) = v389;
    *(v386 + 16) = 0;
    if (v397)
    {
      operator delete(v397);
    }
  }

  else
  {
    *v387 = 0xCE03281732FA0019;
    v387[1] = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    v387[2] = 54;
    v389 = (v387 + 3);
  }

  *(v386 + 8) = v389;
  v398 = *a1;
  v399 = *(*a1 + 8);
  v400 = *(*a1 + 16);
  if (v399 >= v400)
  {
    v402 = 0xAAAAAAAAAAAAAAABLL * ((v399 - *v398) >> 3);
    v403 = v402 + 1;
    if (v402 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v404 = 0xAAAAAAAAAAAAAAABLL * ((v400 - *v398) >> 3);
    if (2 * v404 > v403)
    {
      v403 = 2 * v404;
    }

    if (v404 >= 0x555555555555555)
    {
      v405 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v405 = v403;
    }

    if (v405)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v405);
    }

    v406 = 24 * v402;
    *v406 = 0xD2D99CA7D5B116C8;
    *(v406 + 8) = "md::ls::TextureHandleForType<DaVinci::OverlayTexture>]";
    *(v406 + 16) = 53;
    v401 = 24 * v402 + 24;
    v407 = *(v398 + 8) - *v398;
    v408 = 24 * v402 - v407;
    memcpy((v406 - v407), *v398, v407);
    v409 = *v398;
    *v398 = v408;
    *(v398 + 8) = v401;
    *(v398 + 16) = 0;
    if (v409)
    {
      operator delete(v409);
    }
  }

  else
  {
    *v399 = 0xD2D99CA7D5B116C8;
    v399[1] = "md::ls::TextureHandleForType<DaVinci::OverlayTexture>]";
    v399[2] = 53;
    v401 = (v399 + 3);
  }

  *(v398 + 8) = v401;
  v410 = *a1;
  v411 = *(*a1 + 8);
  v412 = *(*a1 + 16);
  if (v411 >= v412)
  {
    v414 = 0xAAAAAAAAAAAAAAABLL * ((v411 - *v410) >> 3);
    v415 = v414 + 1;
    if (v414 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v416 = 0xAAAAAAAAAAAAAAABLL * ((v412 - *v410) >> 3);
    if (2 * v416 > v415)
    {
      v415 = 2 * v416;
    }

    if (v416 >= 0x555555555555555)
    {
      v417 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v417 = v415;
    }

    if (v417)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v417);
    }

    v418 = 24 * v414;
    *v418 = 0xDF0018B9242ADFDBLL;
    *(v418 + 8) = "md::ls::BlendRasterConstantDataHandle]";
    *(v418 + 16) = 37;
    v413 = 24 * v414 + 24;
    v419 = *(v410 + 8) - *v410;
    v420 = 24 * v414 - v419;
    memcpy((v418 - v419), *v410, v419);
    v421 = *v410;
    *v410 = v420;
    *(v410 + 8) = v413;
    *(v410 + 16) = 0;
    if (v421)
    {
      operator delete(v421);
    }
  }

  else
  {
    *v411 = 0xDF0018B9242ADFDBLL;
    v411[1] = "md::ls::BlendRasterConstantDataHandle]";
    v411[2] = 37;
    v413 = (v411 + 3);
  }

  *(v410 + 8) = v413;
  v422 = *a1;
  v423 = *(*a1 + 8);
  v424 = *(*a1 + 16);
  if (v423 >= v424)
  {
    v426 = 0xAAAAAAAAAAAAAAABLL * ((v423 - *v422) >> 3);
    v427 = v426 + 1;
    if (v426 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v428 = 0xAAAAAAAAAAAAAAABLL * ((v424 - *v422) >> 3);
    if (2 * v428 > v427)
    {
      v427 = 2 * v428;
    }

    if (v428 >= 0x555555555555555)
    {
      v429 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v429 = v427;
    }

    if (v429)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v429);
    }

    v430 = 24 * v426;
    *v430 = 0xDC66BF6D06F6D0BALL;
    *(v430 + 8) = "md::ls::RasterOverlayConstantDataHandle]";
    *(v430 + 16) = 39;
    v425 = 24 * v426 + 24;
    v431 = *(v422 + 8) - *v422;
    v432 = 24 * v426 - v431;
    memcpy((v430 - v431), *v422, v431);
    v433 = *v422;
    *v422 = v432;
    *(v422 + 8) = v425;
    *(v422 + 16) = 0;
    if (v433)
    {
      operator delete(v433);
    }
  }

  else
  {
    *v423 = 0xDC66BF6D06F6D0BALL;
    v423[1] = "md::ls::RasterOverlayConstantDataHandle]";
    v423[2] = 39;
    v425 = (v423 + 3);
  }

  *(v422 + 8) = v425;
  v434 = *a1;
  v435 = *(*a1 + 8);
  v436 = *(*a1 + 16);
  if (v435 >= v436)
  {
    v438 = 0xAAAAAAAAAAAAAAABLL * ((v435 - *v434) >> 3);
    v439 = v438 + 1;
    if (v438 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v440 = 0xAAAAAAAAAAAAAAABLL * ((v436 - *v434) >> 3);
    if (2 * v440 > v439)
    {
      v439 = 2 * v440;
    }

    if (v440 >= 0x555555555555555)
    {
      v441 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v441 = v439;
    }

    if (v441)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v441);
    }

    v442 = 24 * v438;
    *v442 = 0x7D9191A7B57B7B35;
    *(v442 + 8) = "md::ls::FlyoverCommonTransformConstantDataHandle]";
    *(v442 + 16) = 48;
    v437 = 24 * v438 + 24;
    v443 = *(v434 + 8) - *v434;
    v444 = 24 * v438 - v443;
    memcpy((v442 - v443), *v434, v443);
    v445 = *v434;
    *v434 = v444;
    *(v434 + 8) = v437;
    *(v434 + 16) = 0;
    if (v445)
    {
      operator delete(v445);
    }
  }

  else
  {
    *v435 = 0x7D9191A7B57B7B35;
    v435[1] = "md::ls::FlyoverCommonTransformConstantDataHandle]";
    v435[2] = 48;
    v437 = (v435 + 3);
  }

  *(v434 + 8) = v437;
  v446 = *a1;
  v447 = *(*a1 + 8);
  v448 = *(*a1 + 16);
  if (v447 >= v448)
  {
    v450 = 0xAAAAAAAAAAAAAAABLL * ((v447 - *v446) >> 3);
    v451 = v450 + 1;
    if (v450 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v452 = 0xAAAAAAAAAAAAAAABLL * ((v448 - *v446) >> 3);
    if (2 * v452 > v451)
    {
      v451 = 2 * v452;
    }

    if (v452 >= 0x555555555555555)
    {
      v453 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v453 = v451;
    }

    if (v453)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v453);
    }

    v454 = 24 * v450;
    *v454 = 0x81BF69EEE736436;
    *(v454 + 8) = "md::ls::FlyoverCommonS2TransformHandle]";
    *(v454 + 16) = 38;
    v449 = 24 * v450 + 24;
    v455 = *(v446 + 8) - *v446;
    v456 = 24 * v450 - v455;
    memcpy((v454 - v455), *v446, v455);
    v457 = *v446;
    *v446 = v456;
    *(v446 + 8) = v449;
    *(v446 + 16) = 0;
    if (v457)
    {
      operator delete(v457);
    }
  }

  else
  {
    *v447 = 0x81BF69EEE736436;
    v447[1] = "md::ls::FlyoverCommonS2TransformHandle]";
    v447[2] = 38;
    v449 = (v447 + 3);
  }

  *(v446 + 8) = v449;
  v458 = *a1;
  v459 = *(*a1 + 8);
  v460 = *(*a1 + 16);
  if (v459 >= v460)
  {
    v462 = 0xAAAAAAAAAAAAAAABLL * ((v459 - *v458) >> 3);
    v463 = v462 + 1;
    if (v462 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v464 = 0xAAAAAAAAAAAAAAABLL * ((v460 - *v458) >> 3);
    if (2 * v464 > v463)
    {
      v463 = 2 * v464;
    }

    if (v464 >= 0x555555555555555)
    {
      v465 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v465 = v463;
    }

    if (v465)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v465);
    }

    v466 = 24 * v462;
    *v466 = 0x5B12559DCF20DC9ALL;
    *(v466 + 8) = "md::ls::FlyoverCommonTexcoordsHandle]";
    *(v466 + 16) = 36;
    v461 = 24 * v462 + 24;
    v467 = *(v458 + 8) - *v458;
    v468 = 24 * v462 - v467;
    memcpy((v466 - v467), *v458, v467);
    v469 = *v458;
    *v458 = v468;
    *(v458 + 8) = v461;
    *(v458 + 16) = 0;
    if (v469)
    {
      operator delete(v469);
    }
  }

  else
  {
    *v459 = 0x5B12559DCF20DC9ALL;
    v459[1] = "md::ls::FlyoverCommonTexcoordsHandle]";
    v459[2] = 36;
    v461 = (v459 + 3);
  }

  *(v458 + 8) = v461;
  v470 = *a1;
  v471 = *(*a1 + 8);
  v472 = *(*a1 + 16);
  if (v471 >= v472)
  {
    v474 = 0xAAAAAAAAAAAAAAABLL * ((v471 - *v470) >> 3);
    v475 = v474 + 1;
    if (v474 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v476 = 0xAAAAAAAAAAAAAAABLL * ((v472 - *v470) >> 3);
    if (2 * v476 > v475)
    {
      v475 = 2 * v476;
    }

    if (v476 >= 0x555555555555555)
    {
      v477 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v477 = v475;
    }

    if (v477)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v477);
    }

    v478 = 24 * v474;
    *v478 = 0xB70B6DE024A5B9DALL;
    *(v478 + 8) = "md::ls::FlyoverCommonMaterialHandle]";
    *(v478 + 16) = 35;
    v473 = 24 * v474 + 24;
    v479 = *(v470 + 8) - *v470;
    v480 = 24 * v474 - v479;
    memcpy((v478 - v479), *v470, v479);
    v481 = *v470;
    *v470 = v480;
    *(v470 + 8) = v473;
    *(v470 + 16) = 0;
    if (v481)
    {
      operator delete(v481);
    }
  }

  else
  {
    *v471 = 0xB70B6DE024A5B9DALL;
    v471[1] = "md::ls::FlyoverCommonMaterialHandle]";
    v471[2] = 35;
    v473 = (v471 + 3);
  }

  *(v470 + 8) = v473;
  v482 = *a1;
  v483 = *(*a1 + 8);
  v484 = *(*a1 + 16);
  if (v483 >= v484)
  {
    v486 = 0xAAAAAAAAAAAAAAABLL * ((v483 - *v482) >> 3);
    v487 = v486 + 1;
    if (v486 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v488 = 0xAAAAAAAAAAAAAAABLL * ((v484 - *v482) >> 3);
    if (2 * v488 > v487)
    {
      v487 = 2 * v488;
    }

    if (v488 >= 0x555555555555555)
    {
      v489 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v489 = v487;
    }

    if (v489)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v489);
    }

    v490 = 24 * v486;
    *v490 = 0x5E4DB6CB13CB5848;
    *(v490 + 8) = "md::ls::FlyoverClipConstantDataHandle]";
    *(v490 + 16) = 37;
    v485 = 24 * v486 + 24;
    v491 = *(v482 + 8) - *v482;
    v492 = 24 * v486 - v491;
    memcpy((v490 - v491), *v482, v491);
    v493 = *v482;
    *v482 = v492;
    *(v482 + 8) = v485;
    *(v482 + 16) = 0;
    if (v493)
    {
      operator delete(v493);
    }
  }

  else
  {
    *v483 = 0x5E4DB6CB13CB5848;
    v483[1] = "md::ls::FlyoverClipConstantDataHandle]";
    v483[2] = 37;
    v485 = (v483 + 3);
  }

  *(v482 + 8) = v485;
  v494 = *a1;
  v495 = *(*a1 + 8);
  v496 = *(*a1 + 16);
  if (v495 >= v496)
  {
    v498 = 0xAAAAAAAAAAAAAAABLL * ((v495 - *v494) >> 3);
    v499 = v498 + 1;
    if (v498 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v500 = 0xAAAAAAAAAAAAAAABLL * ((v496 - *v494) >> 3);
    if (2 * v500 > v499)
    {
      v499 = 2 * v500;
    }

    if (v500 >= 0x555555555555555)
    {
      v501 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v501 = v499;
    }

    if (v501)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v501);
    }

    v502 = 24 * v498;
    *v502 = 0xBAA35DF429A7267FLL;
    *(v502 + 8) = "md::ls::TextureHandleForType<Flyover::DiffuseTexture>]";
    *(v502 + 16) = 53;
    v497 = 24 * v498 + 24;
    v503 = *(v494 + 8) - *v494;
    v504 = 24 * v498 - v503;
    memcpy((v502 - v503), *v494, v503);
    v505 = *v494;
    *v494 = v504;
    *(v494 + 8) = v497;
    *(v494 + 16) = 0;
    if (v505)
    {
      operator delete(v505);
    }
  }

  else
  {
    *v495 = 0xBAA35DF429A7267FLL;
    v495[1] = "md::ls::TextureHandleForType<Flyover::DiffuseTexture>]";
    v495[2] = 53;
    v497 = (v495 + 3);
  }

  *(v494 + 8) = v497;
  v506 = *a1;
  v507 = *(*a1 + 8);
  v508 = *(*a1 + 16);
  if (v507 >= v508)
  {
    v510 = 0xAAAAAAAAAAAAAAABLL * ((v507 - *v506) >> 3);
    v511 = v510 + 1;
    if (v510 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v512 = 0xAAAAAAAAAAAAAAABLL * ((v508 - *v506) >> 3);
    if (2 * v512 > v511)
    {
      v511 = 2 * v512;
    }

    if (v512 >= 0x555555555555555)
    {
      v513 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v513 = v511;
    }

    if (v513)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v513);
    }

    v514 = 24 * v510;
    *v514 = 0xD49B968135FE1A73;
    *(v514 + 8) = "md::ls::TextureHandleForType<Flyover::NightTexture>]";
    *(v514 + 16) = 51;
    v509 = 24 * v510 + 24;
    v515 = *(v506 + 8) - *v506;
    v516 = 24 * v510 - v515;
    memcpy((v514 - v515), *v506, v515);
    v517 = *v506;
    *v506 = v516;
    *(v506 + 8) = v509;
    *(v506 + 16) = 0;
    if (v517)
    {
      operator delete(v517);
    }
  }

  else
  {
    *v507 = 0xD49B968135FE1A73;
    v507[1] = "md::ls::TextureHandleForType<Flyover::NightTexture>]";
    v507[2] = 51;
    v509 = (v507 + 3);
  }

  *(v506 + 8) = v509;
  v518 = *a1;
  v519 = *(*a1 + 8);
  v520 = *(*a1 + 16);
  if (v519 >= v520)
  {
    v522 = 0xAAAAAAAAAAAAAAABLL * ((v519 - *v518) >> 3);
    v523 = v522 + 1;
    if (v522 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v524 = 0xAAAAAAAAAAAAAAABLL * ((v520 - *v518) >> 3);
    if (2 * v524 > v523)
    {
      v523 = 2 * v524;
    }

    if (v524 >= 0x555555555555555)
    {
      v525 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v525 = v523;
    }

    if (v525)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v525);
    }

    v526 = 24 * v522;
    *v526 = 0x985FB09D9DF9959FLL;
    *(v526 + 8) = "md::ls::HasStyleAttributeRasterSet]";
    *(v526 + 16) = 34;
    v521 = 24 * v522 + 24;
    v527 = *(v518 + 8) - *v518;
    v528 = 24 * v522 - v527;
    memcpy((v526 - v527), *v518, v527);
    v529 = *v518;
    *v518 = v528;
    *(v518 + 8) = v521;
    *(v518 + 16) = 0;
    if (v529)
    {
      operator delete(v529);
    }
  }

  else
  {
    *v519 = 0x985FB09D9DF9959FLL;
    v519[1] = "md::ls::HasStyleAttributeRasterSet]";
    v519[2] = 34;
    v521 = (v519 + 3);
  }

  *(v518 + 8) = v521;
  v530 = *a1;
  v531 = *(*a1 + 8);
  v532 = *(*a1 + 16);
  if (v531 >= v532)
  {
    v534 = 0xAAAAAAAAAAAAAAABLL * ((v531 - *v530) >> 3);
    v535 = v534 + 1;
    if (v534 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v536 = 0xAAAAAAAAAAAAAAABLL * ((v532 - *v530) >> 3);
    if (2 * v536 > v535)
    {
      v535 = 2 * v536;
    }

    if (v536 >= 0x555555555555555)
    {
      v537 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v537 = v535;
    }

    if (v537)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v537);
    }

    v538 = 24 * v534;
    *v538 = 0x9D7520A01DC69D83;
    *(v538 + 8) = "md::ls::HasMaterialRaster]";
    *(v538 + 16) = 25;
    v533 = 24 * v534 + 24;
    v539 = *(v530 + 8) - *v530;
    v540 = 24 * v534 - v539;
    memcpy((v538 - v539), *v530, v539);
    v541 = *v530;
    *v530 = v540;
    *(v530 + 8) = v533;
    *(v530 + 16) = 0;
    if (v541)
    {
      operator delete(v541);
    }
  }

  else
  {
    *v531 = 0x9D7520A01DC69D83;
    v531[1] = "md::ls::HasMaterialRaster]";
    v531[2] = 25;
    v533 = (v531 + 3);
  }

  *(v530 + 8) = v533;
  v542 = *a1;
  v543 = *(*a1 + 8);
  v544 = *(*a1 + 16);
  if (v543 >= v544)
  {
    v546 = 0xAAAAAAAAAAAAAAABLL * ((v543 - *v542) >> 3);
    v547 = v546 + 1;
    if (v546 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v548 = 0xAAAAAAAAAAAAAAABLL * ((v544 - *v542) >> 3);
    if (2 * v548 > v547)
    {
      v547 = 2 * v548;
    }

    if (v548 >= 0x555555555555555)
    {
      v549 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v549 = v547;
    }

    if (v549)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v549);
    }

    v550 = 24 * v546;
    *v550 = 0x11BB47B172EB0B40;
    *(v550 + 8) = "md::ls::NeedsClimateTint]";
    *(v550 + 16) = 24;
    v545 = 24 * v546 + 24;
    v551 = *(v542 + 8) - *v542;
    v552 = 24 * v546 - v551;
    memcpy((v550 - v551), *v542, v551);
    v553 = *v542;
    *v542 = v552;
    *(v542 + 8) = v545;
    *(v542 + 16) = 0;
    if (v553)
    {
      operator delete(v553);
    }
  }

  else
  {
    *v543 = 0x11BB47B172EB0B40;
    v543[1] = "md::ls::NeedsClimateTint]";
    v543[2] = 24;
    v545 = (v543 + 3);
  }

  *(v542 + 8) = v545;
  v554 = *a1;
  v555 = *(*a1 + 8);
  v556 = *(*a1 + 16);
  if (v555 >= v556)
  {
    v558 = 0xAAAAAAAAAAAAAAABLL * ((v555 - *v554) >> 3);
    v559 = v558 + 1;
    if (v558 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v560 = 0xAAAAAAAAAAAAAAABLL * ((v556 - *v554) >> 3);
    if (2 * v560 > v559)
    {
      v559 = 2 * v560;
    }

    if (v560 >= 0x555555555555555)
    {
      v561 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v561 = v559;
    }

    if (v561)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v561);
    }

    v562 = 24 * v558;
    *v562 = 0xA0C97F52893883B7;
    *(v562 + 8) = "md::ls::CustomRenderState]";
    *(v562 + 16) = 25;
    v557 = 24 * v558 + 24;
    v563 = *(v554 + 8) - *v554;
    v564 = 24 * v558 - v563;
    memcpy((v562 - v563), *v554, v563);
    v565 = *v554;
    *v554 = v564;
    *(v554 + 8) = v557;
    *(v554 + 16) = 0;
    if (v565)
    {
      operator delete(v565);
    }
  }

  else
  {
    *v555 = 0xA0C97F52893883B7;
    v555[1] = "md::ls::CustomRenderState]";
    v555[2] = 25;
    v557 = (v555 + 3);
  }

  *(v554 + 8) = v557;
  v566 = *a1;
  v567 = *(*a1 + 8);
  v568 = *(*a1 + 16);
  if (v567 >= v568)
  {
    v570 = 0xAAAAAAAAAAAAAAABLL * ((v567 - *v566) >> 3);
    v571 = v570 + 1;
    if (v570 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v572 = 0xAAAAAAAAAAAAAAABLL * ((v568 - *v566) >> 3);
    if (2 * v572 > v571)
    {
      v571 = 2 * v572;
    }

    if (v572 >= 0x555555555555555)
    {
      v573 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v573 = v571;
    }

    if (v573)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v573);
    }

    v574 = 24 * v570;
    *v574 = 0xE103B5C60804137ELL;
    *(v574 + 8) = "md::ls::ColorRampDataHandle]";
    *(v574 + 16) = 27;
    v569 = 24 * v570 + 24;
    v575 = *(v566 + 8) - *v566;
    v576 = 24 * v570 - v575;
    memcpy((v574 - v575), *v566, v575);
    v577 = *v566;
    *v566 = v576;
    *(v566 + 8) = v569;
    *(v566 + 16) = 0;
    if (v577)
    {
      operator delete(v577);
    }
  }

  else
  {
    *v567 = 0xE103B5C60804137ELL;
    v567[1] = "md::ls::ColorRampDataHandle]";
    v567[2] = 27;
    v569 = (v567 + 3);
  }

  *(v566 + 8) = v569;
  v578 = *a1;
  v579 = *(*a1 + 8);
  v580 = *(*a1 + 16);
  if (v579 >= v580)
  {
    v582 = 0xAAAAAAAAAAAAAAABLL * ((v579 - *v578) >> 3);
    v583 = v582 + 1;
    if (v582 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v584 = 0xAAAAAAAAAAAAAAABLL * ((v580 - *v578) >> 3);
    if (2 * v584 > v583)
    {
      v583 = 2 * v584;
    }

    if (v584 >= 0x555555555555555)
    {
      v585 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v585 = v583;
    }

    if (v585)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v585);
    }

    v586 = 24 * v582;
    *v586 = 0x7931433C9A6EB2C6;
    *(v586 + 8) = "md::ls::SharedUniqueID]";
    *(v586 + 16) = 22;
    v581 = 24 * v582 + 24;
    v587 = *(v578 + 8) - *v578;
    v588 = 24 * v582 - v587;
    memcpy((v586 - v587), *v578, v587);
    v589 = *v578;
    *v578 = v588;
    *(v578 + 8) = v581;
    *(v578 + 16) = 0;
    if (v589)
    {
      operator delete(v589);
    }
  }

  else
  {
    *v579 = 0x7931433C9A6EB2C6;
    v579[1] = "md::ls::SharedUniqueID]";
    v579[2] = 22;
    v581 = (v579 + 3);
  }

  *(v578 + 8) = v581;
  v590 = *a1;
  v591 = *(*a1 + 8);
  v592 = *(*a1 + 16);
  if (v591 >= v592)
  {
    v594 = 0xAAAAAAAAAAAAAAABLL * ((v591 - *v590) >> 3);
    v595 = v594 + 1;
    if (v594 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v596 = 0xAAAAAAAAAAAAAAABLL * ((v592 - *v590) >> 3);
    if (2 * v596 > v595)
    {
      v595 = 2 * v596;
    }

    if (v596 >= 0x555555555555555)
    {
      v597 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v597 = v595;
    }

    if (v597)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v597);
    }

    v598 = 24 * v594;
    *v598 = 0x7087983DEF28DBFELL;
    *(v598 + 8) = "md::ls::IsOpaque]";
    *(v598 + 16) = 16;
    v593 = 24 * v594 + 24;
    v599 = *(v590 + 8) - *v590;
    v600 = 24 * v594 - v599;
    memcpy((v598 - v599), *v590, v599);
    v601 = *v590;
    *v590 = v600;
    *(v590 + 8) = v593;
    *(v590 + 16) = 0;
    if (v601)
    {
      operator delete(v601);
    }
  }

  else
  {
    *v591 = 0x7087983DEF28DBFELL;
    v591[1] = "md::ls::IsOpaque]";
    v591[2] = 16;
    v593 = (v591 + 3);
  }

  *(v590 + 8) = v593;
  v602 = *a1;
  v603 = *(*a1 + 8);
  v604 = *(*a1 + 16);
  if (v603 >= v604)
  {
    v606 = 0xAAAAAAAAAAAAAAABLL * ((v603 - *v602) >> 3);
    v607 = v606 + 1;
    if (v606 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v608 = 0xAAAAAAAAAAAAAAABLL * ((v604 - *v602) >> 3);
    if (2 * v608 > v607)
    {
      v607 = 2 * v608;
    }

    if (v608 >= 0x555555555555555)
    {
      v609 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v609 = v607;
    }

    if (v609)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v609);
    }

    v610 = 24 * v606;
    *v610 = 0x73F0259EC1934FB1;
    *(v610 + 8) = "md::ls::IsTransparent]";
    *(v610 + 16) = 21;
    v605 = 24 * v606 + 24;
    v611 = *(v602 + 8) - *v602;
    v612 = 24 * v606 - v611;
    memcpy((v610 - v611), *v602, v611);
    v613 = *v602;
    *v602 = v612;
    *(v602 + 8) = v605;
    *(v602 + 16) = 0;
    if (v613)
    {
      operator delete(v613);
    }
  }

  else
  {
    *v603 = 0x73F0259EC1934FB1;
    v603[1] = "md::ls::IsTransparent]";
    v603[2] = 21;
    v605 = (v603 + 3);
  }

  *(v602 + 8) = v605;
  v614 = *a1;
  v615 = *(*a1 + 8);
  v616 = *(*a1 + 16);
  if (v615 >= v616)
  {
    v618 = 0xAAAAAAAAAAAAAAABLL * ((v615 - *v614) >> 3);
    v619 = v618 + 1;
    if (v618 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v620 = 0xAAAAAAAAAAAAAAABLL * ((v616 - *v614) >> 3);
    if (2 * v620 > v619)
    {
      v619 = 2 * v620;
    }

    if (v620 >= 0x555555555555555)
    {
      v621 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v621 = v619;
    }

    if (v621)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v621);
    }

    v622 = 24 * v618;
    *v622 = 0x499CE17DBD9A1615;
    *(v622 + 8) = "md::ls::NeedsZBias]";
    *(v622 + 16) = 18;
    v617 = 24 * v618 + 24;
    v623 = *(v614 + 8) - *v614;
    v624 = 24 * v618 - v623;
    memcpy((v622 - v623), *v614, v623);
    v625 = *v614;
    *v614 = v624;
    *(v614 + 8) = v617;
    *(v614 + 16) = 0;
    if (v625)
    {
      operator delete(v625);
    }
  }

  else
  {
    *v615 = 0x499CE17DBD9A1615;
    v615[1] = "md::ls::NeedsZBias]";
    v615[2] = 18;
    v617 = (v615 + 3);
  }

  *(v614 + 8) = v617;
  v626 = *a1;
  v627 = *(*a1 + 8);
  v628 = *(*a1 + 16);
  if (v627 >= v628)
  {
    v630 = 0xAAAAAAAAAAAAAAABLL * ((v627 - *v626) >> 3);
    v631 = v630 + 1;
    if (v630 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v632 = 0xAAAAAAAAAAAAAAABLL * ((v628 - *v626) >> 3);
    if (2 * v632 > v631)
    {
      v631 = 2 * v632;
    }

    if (v632 >= 0x555555555555555)
    {
      v633 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v633 = v631;
    }

    if (v633)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v633);
    }

    v634 = 24 * v630;
    *v634 = 0x98A9F01DBB8BCCCELL;
    *(v634 + 8) = "md::ls::PreserveHeight]";
    *(v634 + 16) = 22;
    v629 = 24 * v630 + 24;
    v635 = *(v626 + 8) - *v626;
    v636 = 24 * v630 - v635;
    memcpy((v634 - v635), *v626, v635);
    v637 = *v626;
    *v626 = v636;
    *(v626 + 8) = v629;
    *(v626 + 16) = 0;
    if (v637)
    {
      operator delete(v637);
    }
  }

  else
  {
    *v627 = 0x98A9F01DBB8BCCCELL;
    v627[1] = "md::ls::PreserveHeight]";
    v627[2] = 22;
    v629 = (v627 + 3);
  }

  *(v626 + 8) = v629;
  v638 = *a1;
  v639 = *(*a1 + 8);
  v640 = *(*a1 + 16);
  if (v639 >= v640)
  {
    v642 = 0xAAAAAAAAAAAAAAABLL * ((v639 - *v638) >> 3);
    v643 = v642 + 1;
    if (v642 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v644 = 0xAAAAAAAAAAAAAAABLL * ((v640 - *v638) >> 3);
    if (2 * v644 > v643)
    {
      v643 = 2 * v644;
    }

    if (v644 >= 0x555555555555555)
    {
      v645 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v645 = v643;
    }

    if (v645)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v645);
    }

    v646 = 24 * v642;
    *v646 = 0xE53EF176130D7769;
    *(v646 + 8) = "md::ls::InstanceCount]";
    *(v646 + 16) = 21;
    v641 = 24 * v642 + 24;
    v647 = *(v638 + 8) - *v638;
    v648 = 24 * v642 - v647;
    memcpy((v646 - v647), *v638, v647);
    v649 = *v638;
    *v638 = v648;
    *(v638 + 8) = v641;
    *(v638 + 16) = 0;
    if (v649)
    {
      operator delete(v649);
    }
  }

  else
  {
    *v639 = 0xE53EF176130D7769;
    v639[1] = "md::ls::InstanceCount]";
    v639[2] = 21;
    v641 = (v639 + 3);
  }

  *(v638 + 8) = v641;
  v650 = *a1;
  v651 = *(*a1 + 8);
  v652 = *(*a1 + 16);
  if (v651 >= v652)
  {
    v654 = 0xAAAAAAAAAAAAAAABLL * ((v651 - *v650) >> 3);
    v655 = v654 + 1;
    if (v654 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v656 = 0xAAAAAAAAAAAAAAABLL * ((v652 - *v650) >> 3);
    if (2 * v656 > v655)
    {
      v655 = 2 * v656;
    }

    if (v656 >= 0x555555555555555)
    {
      v657 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v657 = v655;
    }

    if (v657)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v657);
    }

    v658 = 24 * v654;
    *v658 = 0x76B9BA390004E44ELL;
    *(v658 + 8) = "md::ls::IsDecal]";
    *(v658 + 16) = 15;
    v653 = 24 * v654 + 24;
    v659 = *(v650 + 8) - *v650;
    v660 = 24 * v654 - v659;
    memcpy((v658 - v659), *v650, v659);
    v661 = *v650;
    *v650 = v660;
    *(v650 + 8) = v653;
    *(v650 + 16) = 0;
    if (v661)
    {
      operator delete(v661);
    }
  }

  else
  {
    *v651 = 0x76B9BA390004E44ELL;
    v651[1] = "md::ls::IsDecal]";
    v651[2] = 15;
    v653 = (v651 + 3);
  }

  *(v650 + 8) = v653;
  v662 = *a1;
  v663 = *(*a1 + 8);
  v664 = *(*a1 + 16);
  if (v663 >= v664)
  {
    v666 = 0xAAAAAAAAAAAAAAABLL * ((v663 - *v662) >> 3);
    v667 = v666 + 1;
    if (v666 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v668 = 0xAAAAAAAAAAAAAAABLL * ((v664 - *v662) >> 3);
    if (2 * v668 > v667)
    {
      v667 = 2 * v668;
    }

    if (v668 >= 0x555555555555555)
    {
      v669 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v669 = v667;
    }

    if (v669)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v669);
    }

    v670 = 24 * v666;
    *v670 = 0x3E8485C60908F920;
    *(v670 + 8) = "md::ls::IsMaterial]";
    *(v670 + 16) = 18;
    v665 = 24 * v666 + 24;
    v671 = *(v662 + 8) - *v662;
    v672 = 24 * v666 - v671;
    memcpy((v670 - v671), *v662, v671);
    v673 = *v662;
    *v662 = v672;
    *(v662 + 8) = v665;
    *(v662 + 16) = 0;
    if (v673)
    {
      operator delete(v673);
    }
  }

  else
  {
    *v663 = 0x3E8485C60908F920;
    v663[1] = "md::ls::IsMaterial]";
    v663[2] = 18;
    v665 = (v663 + 3);
  }

  *(v662 + 8) = v665;
  v674 = *a1;
  v675 = *(*a1 + 8);
  v676 = *(*a1 + 16);
  if (v675 >= v676)
  {
    v678 = 0xAAAAAAAAAAAAAAABLL * ((v675 - *v674) >> 3);
    v679 = v678 + 1;
    if (v678 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v680 = 0xAAAAAAAAAAAAAAABLL * ((v676 - *v674) >> 3);
    if (2 * v680 > v679)
    {
      v679 = 2 * v680;
    }

    if (v680 >= 0x555555555555555)
    {
      v681 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v681 = v679;
    }

    if (v681)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v681);
    }

    v682 = 24 * v678;
    *v682 = 0x1223E23132DA4D6ALL;
    *(v682 + 8) = "md::ls::TriPlanar]";
    *(v682 + 16) = 17;
    v677 = 24 * v678 + 24;
    v683 = *(v674 + 8) - *v674;
    v684 = 24 * v678 - v683;
    memcpy((v682 - v683), *v674, v683);
    v685 = *v674;
    *v674 = v684;
    *(v674 + 8) = v677;
    *(v674 + 16) = 0;
    if (v685)
    {
      operator delete(v685);
    }
  }

  else
  {
    *v675 = 0x1223E23132DA4D6ALL;
    v675[1] = "md::ls::TriPlanar]";
    v675[2] = 17;
    v677 = (v675 + 3);
  }

  *(v674 + 8) = v677;
  v686 = *a1;
  v687 = *(*a1 + 8);
  v688 = *(*a1 + 16);
  if (v687 >= v688)
  {
    v690 = 0xAAAAAAAAAAAAAAABLL * ((v687 - *v686) >> 3);
    v691 = v690 + 1;
    if (v690 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v692 = 0xAAAAAAAAAAAAAAABLL * ((v688 - *v686) >> 3);
    if (2 * v692 > v691)
    {
      v691 = 2 * v692;
    }

    if (v692 >= 0x555555555555555)
    {
      v693 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v693 = v691;
    }

    if (v693)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v693);
    }

    v694 = 24 * v690;
    *v694 = 0x237F9D3BCC905318;
    *(v694 + 8) = "md::ls::IsMercator]";
    *(v694 + 16) = 18;
    v689 = 24 * v690 + 24;
    v695 = *(v686 + 8) - *v686;
    v696 = 24 * v690 - v695;
    memcpy((v694 - v695), *v686, v695);
    v697 = *v686;
    *v686 = v696;
    *(v686 + 8) = v689;
    *(v686 + 16) = 0;
    if (v697)
    {
      operator delete(v697);
    }
  }

  else
  {
    *v687 = 0x237F9D3BCC905318;
    v687[1] = "md::ls::IsMercator]";
    v687[2] = 18;
    v689 = (v687 + 3);
  }

  *(v686 + 8) = v689;
  v698 = *a1;
  v699 = *(*a1 + 8);
  v700 = *(*a1 + 16);
  if (v699 >= v700)
  {
    v702 = 0xAAAAAAAAAAAAAAABLL * ((v699 - *v698) >> 3);
    v703 = v702 + 1;
    if (v702 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v704 = 0xAAAAAAAAAAAAAAABLL * ((v700 - *v698) >> 3);
    if (2 * v704 > v703)
    {
      v703 = 2 * v704;
    }

    if (v704 >= 0x555555555555555)
    {
      v705 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v705 = v703;
    }

    if (v705)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v705);
    }

    v706 = 24 * v702;
    *v706 = 0x6E6C3F5AAEB152E5;
    *(v706 + 8) = "md::ls::SupportsStylizedShading]";
    *(v706 + 16) = 31;
    v701 = 24 * v702 + 24;
    v707 = *(v698 + 8) - *v698;
    v708 = 24 * v702 - v707;
    memcpy((v706 - v707), *v698, v707);
    v709 = *v698;
    *v698 = v708;
    *(v698 + 8) = v701;
    *(v698 + 16) = 0;
    if (v709)
    {
      operator delete(v709);
    }
  }

  else
  {
    *v699 = 0x6E6C3F5AAEB152E5;
    v699[1] = "md::ls::SupportsStylizedShading]";
    v699[2] = 31;
    v701 = (v699 + 3);
  }

  *(v698 + 8) = v701;
  v710 = *a1;
  v711 = *(*a1 + 8);
  v712 = *(*a1 + 16);
  if (v711 >= v712)
  {
    v714 = 0xAAAAAAAAAAAAAAABLL * ((v711 - *v710) >> 3);
    v715 = v714 + 1;
    if (v714 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v716 = 0xAAAAAAAAAAAAAAABLL * ((v712 - *v710) >> 3);
    if (2 * v716 > v715)
    {
      v715 = 2 * v716;
    }

    if (v716 >= 0x555555555555555)
    {
      v717 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v717 = v715;
    }

    if (v717)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v717);
    }

    v718 = 24 * v714;
    *v718 = 0xC48764EACEE66A08;
    *(v718 + 8) = "md::ls::SupportsSteepnessDarkening]";
    *(v718 + 16) = 34;
    v713 = 24 * v714 + 24;
    v719 = *(v710 + 8) - *v710;
    v720 = 24 * v714 - v719;
    memcpy((v718 - v719), *v710, v719);
    v721 = *v710;
    *v710 = v720;
    *(v710 + 8) = v713;
    *(v710 + 16) = 0;
    if (v721)
    {
      operator delete(v721);
    }
  }

  else
  {
    *v711 = 0xC48764EACEE66A08;
    v711[1] = "md::ls::SupportsSteepnessDarkening]";
    v711[2] = 34;
    v713 = (v711 + 3);
  }

  *(v710 + 8) = v713;
  v722 = *a1;
  v723 = *(*a1 + 8);
  v724 = *(*a1 + 16);
  if (v723 >= v724)
  {
    v726 = 0xAAAAAAAAAAAAAAABLL * ((v723 - *v722) >> 3);
    v727 = v726 + 1;
    if (v726 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v728 = 0xAAAAAAAAAAAAAAABLL * ((v724 - *v722) >> 3);
    if (2 * v728 > v727)
    {
      v727 = 2 * v728;
    }

    if (v728 >= 0x555555555555555)
    {
      v729 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v729 = v727;
    }

    if (v729)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v729);
    }

    v730 = 24 * v726;
    *v730 = 0x69465F3BE0BF85FBLL;
    *(v730 + 8) = "md::ls::FlyoverInstance]";
    *(v730 + 16) = 23;
    v725 = 24 * v726 + 24;
    v731 = *(v722 + 8) - *v722;
    v732 = 24 * v726 - v731;
    memcpy((v730 - v731), *v722, v731);
    v733 = *v722;
    *v722 = v732;
    *(v722 + 8) = v725;
    *(v722 + 16) = 0;
    if (v733)
    {
      operator delete(v733);
    }
  }

  else
  {
    *v723 = 0x69465F3BE0BF85FBLL;
    v723[1] = "md::ls::FlyoverInstance]";
    v723[2] = 23;
    v725 = (v723 + 3);
  }

  *(v722 + 8) = v725;
  v734 = *a1;
  v735 = *(*a1 + 8);
  v736 = *(*a1 + 16);
  if (v735 >= v736)
  {
    v738 = 0xAAAAAAAAAAAAAAABLL * ((v735 - *v734) >> 3);
    v739 = v738 + 1;
    if (v738 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v740 = 0xAAAAAAAAAAAAAAABLL * ((v736 - *v734) >> 3);
    if (2 * v740 > v739)
    {
      v739 = 2 * v740;
    }

    if (v740 >= 0x555555555555555)
    {
      v741 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v741 = v739;
    }

    if (v741)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v741);
    }

    v742 = 24 * v738;
    *v742 = 0x3EAAB620EAA88EC8;
    *(v742 + 8) = "md::ls::CustomZIndex]";
    *(v742 + 16) = 20;
    v737 = 24 * v738 + 24;
    v743 = *(v734 + 8) - *v734;
    v744 = 24 * v738 - v743;
    memcpy((v742 - v743), *v734, v743);
    v745 = *v734;
    *v734 = v744;
    *(v734 + 8) = v737;
    *(v734 + 16) = 0;
    if (v745)
    {
      operator delete(v745);
    }
  }

  else
  {
    *v735 = 0x3EAAB620EAA88EC8;
    v735[1] = "md::ls::CustomZIndex]";
    v735[2] = 20;
    v737 = (v735 + 3);
  }

  *(v734 + 8) = v737;
  v746 = *a1;
  v747 = *(*a1 + 8);
  v748 = *(*a1 + 16);
  if (v747 >= v748)
  {
    v750 = 0xAAAAAAAAAAAAAAABLL * ((v747 - *v746) >> 3);
    v751 = v750 + 1;
    if (v750 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v752 = 0xAAAAAAAAAAAAAAABLL * ((v748 - *v746) >> 3);
    if (2 * v752 > v751)
    {
      v751 = 2 * v752;
    }

    if (v752 >= 0x555555555555555)
    {
      v753 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v753 = v751;
    }

    if (v753)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v753);
    }

    v754 = 24 * v750;
    *v754 = 0x763953A644184BA9;
    *(v754 + 8) = "md::ls::RenderableHash]";
    *(v754 + 16) = 22;
    v749 = 24 * v750 + 24;
    v755 = *(v746 + 8) - *v746;
    v756 = 24 * v750 - v755;
    memcpy((v754 - v755), *v746, v755);
    v757 = *v746;
    *v746 = v756;
    *(v746 + 8) = v749;
    *(v746 + 16) = 0;
    if (v757)
    {
      operator delete(v757);
    }
  }

  else
  {
    *v747 = 0x763953A644184BA9;
    v747[1] = "md::ls::RenderableHash]";
    v747[2] = 22;
    v749 = (v747 + 3);
  }

  *(v746 + 8) = v749;
  v758 = *a1;
  v759 = *(*a1 + 8);
  v760 = *(*a1 + 16);
  if (v759 < v760)
  {
    *v759 = 0xCB8AA7FBA6BCD25CLL;
    v759[1] = "md::ls::PredefinedRenderState]";
    v759[2] = 29;
    v761 = (v759 + 3);
    goto LABEL_769;
  }

  v762 = 0xAAAAAAAAAAAAAAABLL * ((v759 - *v758) >> 3);
  v763 = v762 + 1;
  if (v762 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_770:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v764 = 0xAAAAAAAAAAAAAAABLL * ((v760 - *v758) >> 3);
  if (2 * v764 > v763)
  {
    v763 = 2 * v764;
  }

  if (v764 >= 0x555555555555555)
  {
    v765 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v765 = v763;
  }

  if (v765)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v765);
  }

  v766 = 24 * v762;
  *v766 = 0xCB8AA7FBA6BCD25CLL;
  *(v766 + 8) = "md::ls::PredefinedRenderState]";
  *(v766 + 16) = 29;
  v761 = 24 * v762 + 24;
  v767 = *(v758 + 8) - *v758;
  v768 = 24 * v762 - v767;
  memcpy((v766 - v767), *v758, v767);
  v769 = *v758;
  *v758 = v768;
  *(v758 + 8) = v761;
  *(v758 + 16) = 0;
  if (v769)
  {
    operator delete(v769);
  }

LABEL_769:
  *(v758 + 8) = v761;
}

char *_ZN4ecs27Runtime9_entitiesIN2md3ita21CreateMainRenderItemsEJRKNS2_2ls16MeshRenderableIDERKNS5_16SliceAssignmentTILNS2_9SliceTypeE7EEERKNS5_26RenderableMeshVertexFormatERKNS5_8TileTypeERKNS5_17PendingProcessingERKNS5_14MeshLayerTypeVERKNS5_18IntendedSceneLayerEPKNS5_13HasMeshHandleEPKNS5_35PositionScaleInfoConstantDataHandleEPKNS5_22ViewConstantDataHandleEPKNS5_27TransformConstantDataHandleEPKNS5_18StyleDataKeyHandleEPKNS5_22StyleSSAODataKeyHandleEPKNS5_26StyleEmissiveDataKeyHandleEPKNS5_28ColorCorrectionDataKeyHandleEPKNS5_29StyleCameraConstantDataHandleEPKNS5_15ColorDataHandleEPKNS5_10IndexRangeEPKNS5_38StyleGroundOcclusionConstantDataHandleEPKNS5_26SharedMaterialZIndexHandleEPNS5_17AssociationHandleEPKNS5_13NormalsHandleEPKNS5_23InstanceTransformHandleEPKNS5_9UVsHandleEPKNS5_31StyleRouteLineMaskDataKeyHandleEPKNS5_15ElevationHandleEPKNS5_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS5_35LandCoverSettingsConstantDataHandleEPKNS5_24ShadowConstantDataHandleEPKNS5_25PrepassConstantDataHandleEPKNS5_26ClippingConstantDataHandleEPKNS5_30PlanarParametersCacheKeyHandleEPKNS2D_INS2E_10TexTextureEEEPKNS2D_INS2E_15EmissiveTextureEEEPKNS2D_INS2E_14OverlayTextureEEEPKNS5_29BlendRasterConstantDataHandleEPKNS5_31RasterOverlayConstantDataHandleEPKNS5_40FlyoverCommonTransformConstantDataHandleEPKNS5_30FlyoverCommonS2TransformHandleEPKNS5_28FlyoverCommonTexcoordsHandleEPKNS5_27FlyoverCommonMaterialHandleEPKNS5_29FlyoverClipConstantDataHandleEPKNS2D_IN7Flyover14DiffuseTextureEEEPKNS2D_INS3V_12NightTextureEEEPKNS5_26HasStyleAttributeRasterSetEPKNS5_17HasMaterialRasterEPKNS5_16NeedsClimateTintEPKNS5_17CustomRenderStateEPKNS5_19ColorRampDataHandleEPKNS5_14SharedUniqueIDEPKNS5_8IsOpaqueEPKNS5_13IsTransparentEPKNS5_10NeedsZBiasEPKNS5_14PreserveHeightEPKNS5_13InstanceCountEPKNS5_7IsDecalEPKNS5_10IsMaterialEPKNS5_9TriPlanarEPKNS5_10IsMercatorEPKNS5_23SupportsStylizedShadingEPKNS5_26SupportsSteepnessDarkeningEPKNS5_15FlyoverInstanceEPKNS5_12CustomZIndexEPKNS5_14RenderableHashEPKNS5_21PredefinedRenderStateEEJEEEvOT_NSt3__113type_identityINS5X_5tupleIJDpT0_EEEEERKNS_16ComponentFiltersIJDpT1_EEE(uint64_t a1, uint64_t **a2)
{
  v177 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v2);
  v160 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)7>>(v2);
  v156 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshVertexFormat>(v2);
  v152 = ecs2::BasicRegistry<void>::storage<md::ls::TileType>(v2);
  v149 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessing>(v2);
  v147 = ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(v2);
  v145 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayer>(v2);
  HasMesh = ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(v2);
  v168 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v2);
  v166 = ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(v2);
  v164 = ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(v2);
  v162 = ecs2::BasicRegistry<void>::storage<md::ls::StyleDataKeyHandle>(v2);
  v158 = ecs2::BasicRegistry<void>::storage<md::ls::StyleSSAODataKeyHandle>(v2);
  v154 = ecs2::BasicRegistry<void>::storage<md::ls::StyleEmissiveDataKeyHandle>(v2);
  v151 = ecs2::BasicRegistry<void>::storage<md::ls::ColorCorrectionDataKeyHandle>(v2);
  v150 = ecs2::BasicRegistry<void>::storage<md::ls::StyleCameraConstantDataHandle>(v2);
  v148 = ecs2::BasicRegistry<void>::storage<md::ls::ColorDataHandle>(v2);
  v146 = ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(v2);
  v144 = ecs2::BasicRegistry<void>::storage<md::ls::StyleGroundOcclusionConstantDataHandle>(v2);
  v143 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialZIndexHandle>(v2);
  v142 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(v2);
  v141 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v2);
  v140 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v2);
  v139 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v2);
  v138 = ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskDataKeyHandle>(v2);
  v137 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v2);
  v136 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(v2);
  v135 = ecs2::BasicRegistry<void>::storage<md::ls::LandCoverSettingsConstantDataHandle>(v2);
  v134 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowConstantDataHandle>(v2);
  v133 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassConstantDataHandle>(v2);
  v132 = ecs2::BasicRegistry<void>::storage<md::ls::ClippingConstantDataHandle>(v2);
  v131 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v2);
  v130 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::TexTexture>>(v2);
  v129 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(v2);
  v128 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(v2);
  v127 = ecs2::BasicRegistry<void>::storage<md::ls::BlendRasterConstantDataHandle>(v2);
  v126 = ecs2::BasicRegistry<void>::storage<md::ls::RasterOverlayConstantDataHandle>(v2);
  v125 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTransformConstantDataHandle>(v2);
  v124 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonS2TransformHandle>(v2);
  v123 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTexcoordsHandle>(v2);
  v122 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonMaterialHandle>(v2);
  v121 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipConstantDataHandle>(v2);
  v120 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(v2);
  v119 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::NightTexture>>(v2);
  HasStyleAttributeRaster = ecs2::BasicRegistry<void>::storage<md::ls::HasStyleAttributeRasterSet>(v2);
  HasMaterial = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRaster>(v2);
  v116 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsClimateTint>(v2);
  v115 = ecs2::BasicRegistry<void>::storage<md::ls::CustomRenderState>(v2);
  v114 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(v2);
  v113 = ecs2::BasicRegistry<void>::storage<md::ls::SharedUniqueID>(v2);
  v112 = ecs2::BasicRegistry<void>::storage<md::ls::IsOpaque>(v2);
  v111 = ecs2::BasicRegistry<void>::storage<md::ls::IsTransparent>(v2);
  v110 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsZBias>(v2);
  v109 = ecs2::BasicRegistry<void>::storage<md::ls::PreserveHeight>(v2);
  v108 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceCount>(v2);
  v107 = ecs2::BasicRegistry<void>::storage<md::ls::IsDecal>(v2);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::IsMaterial>(v2);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TriPlanar>(v2);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v2);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsStylizedShading>(v2);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsSteepnessDarkening>(v2);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(v2);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::CustomZIndex>(v2);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableHash>(v2);
  v12 = ecs2::BasicRegistry<void>::storage<md::ls::PredefinedRenderState>(v2);
  *&__src[0] = v3;
  *(&__src[0] + 1) = v160;
  *&__src[1] = v156;
  *(&__src[1] + 1) = v152;
  *&__src[2] = v149;
  *(&__src[2] + 1) = v147;
  v13 = __src;
  v14 = 8;
  v15 = v3;
  *&__src[3] = v145;
  do
  {
    if (*(*(__src + v14) + 40) - *(*(__src + v14) + 32) < *(v15 + 40) - *(v15 + 32))
    {
      v15 = *(__src + v14);
      v13 = (__src + v14);
    }

    v14 += 8;
  }

  while (v14 != 56);
  v16 = *v13;
  *&__src[1] = v3;
  *(&__src[1] + 1) = v160;
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  *&__src[2] = v156;
  *(&__src[2] + 1) = v152;
  *&__src[3] = v149;
  *(&__src[3] + 1) = v147;
  *&__src[4] = v145;
  *(&__src[4] + 1) = HasMesh;
  *&__src[5] = v168;
  *(&__src[5] + 1) = v166;
  *&__src[6] = v164;
  *(&__src[6] + 1) = v162;
  *&__src[7] = v158;
  *(&__src[7] + 1) = v154;
  *&__src[8] = v151;
  *(&__src[8] + 1) = v150;
  *&__src[9] = v148;
  *(&__src[9] + 1) = v146;
  *&__src[10] = v144;
  *(&__src[10] + 1) = v143;
  *&__src[11] = v142;
  *(&__src[11] + 1) = v141;
  *&__src[12] = v140;
  *(&__src[12] + 1) = v139;
  *&__src[13] = v138;
  *(&__src[13] + 1) = v137;
  *&__src[14] = v136;
  *(&__src[14] + 1) = v135;
  *&__src[15] = v134;
  *(&__src[15] + 1) = v133;
  *&__src[16] = v132;
  *(&__src[16] + 1) = v131;
  *&__src[17] = v130;
  *(&__src[17] + 1) = v129;
  *&__src[18] = v128;
  *(&__src[18] + 1) = v127;
  *&__src[0] = v17;
  *(&__src[0] + 1) = v18;
  *&__src[19] = v126;
  *(&__src[19] + 1) = v125;
  *&__src[20] = v124;
  *(&__src[20] + 1) = v123;
  *&__src[21] = v122;
  *(&__src[21] + 1) = v121;
  *&__src[22] = v120;
  *(&__src[22] + 1) = v119;
  *&__src[23] = HasStyleAttributeRaster;
  *(&__src[23] + 1) = HasMaterial;
  *&__src[24] = v116;
  *(&__src[24] + 1) = v115;
  *&__src[25] = v114;
  *(&__src[25] + 1) = v113;
  *&__src[26] = v112;
  *(&__src[26] + 1) = v111;
  *&__src[27] = v110;
  *(&__src[27] + 1) = v109;
  *&__src[28] = v108;
  *(&__src[28] + 1) = v107;
  *&__src[29] = v4;
  *(&__src[29] + 1) = v5;
  *&__src[30] = v6;
  *(&__src[30] + 1) = v7;
  *&__src[31] = v8;
  *(&__src[31] + 1) = v9;
  *&__src[32] = v10;
  *(&__src[32] + 1) = v11;
  *&__src[33] = v12;
  v104 = v18;
  if (v17 != v18)
  {
    v19 = *(&__src[0] + 1);
    v20 = *&__src[0];
    do
    {
      if (_ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16MeshRenderableIDERKNS4_16SliceAssignmentTILNS3_9SliceTypeE7EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_17PendingProcessingERKNS4_14MeshLayerTypeVERKNS4_18IntendedSceneLayerEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleEPKNS4_26SharedMaterialZIndexHandleEPNS4_17AssociationHandleEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_31StyleRouteLineMaskDataKeyHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS2C_INS2D_10TexTextureEEEPKNS2C_INS2D_15EmissiveTextureEEEPKNS2C_INS2D_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_40FlyoverCommonTransformConstantDataHandleEPKNS4_30FlyoverCommonS2TransformHandleEPKNS4_28FlyoverCommonTexcoordsHandleEPKNS4_27FlyoverCommonMaterialHandleEPKNS4_29FlyoverClipConstantDataHandleEPKNS2C_IN7Flyover14DiffuseTextureEEEPKNS2C_INS3U_12NightTextureEEEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(__src, *v17, v17[1]))
      {
        break;
      }

      v20 += 2;
      *&__src[0] = v20;
      v17 = v20;
    }

    while (v20 != v19);
  }

  memcpy(__dst, __src, sizeof(__dst));
  v21 = __dst[0];
  if (__dst[0] == v104)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v24 = 0;
  }

  else
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v24 = 0;
    v102 = v22;
    v103 = v23;
    do
    {
      v25 = v21[1];
      v26 = v25 >> 6;
      v27 = v25 & 0x3F;
      v28 = *(__dst[0] + 2);
      v29 = *__dst[0];
      v30 = v28 >> 6;
      v169 = v24;
      v31 = *(*(*(__dst[4] + 8) + 8 * (v25 >> 6)) + 4 * v27 + 2);
      v32 = *(*(__dst[4] + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(*(*(__dst[5] + 8) + 8 * (v25 >> 6)) + 4 * v27 + 2);
      v34 = *(*(*(__dst[7] + 8) + 8 * (v25 >> 6)) + 4 * v27 + 2);
      v35 = *(*(__dst[7] + 56) + ((v34 >> 3) & 0x1FF8));
      v36 = *(*(*(__dst[8] + 8) + 8 * v26) + 4 * v27 + 2);
      v167 = *(*(__dst[8] + 56) + ((v36 >> 3) & 0x1FF8));
      v37 = *(__dst[22] + 8);
      if (v28 >> 6 < (*(__dst[22] + 16) - v37) >> 3 && (v38 = *(v37 + 8 * v30)) != 0 && *(v38 + 4 * (v28 & 0x3F)) == v29)
      {
        v39 = *(v38 + 4 * (v28 & 0x3F) + 2);
        v171 = (*(*(__dst[22] + 56) + ((v39 >> 3) & 0x1FF8)) + 24 * (v39 & 0x3F));
      }

      else
      {
        v171 = 0;
      }

      v40 = *(__dst[47] + 8);
      if (v30 < (*(__dst[47] + 16) - v40) >> 3 && (v41 = *(v40 + 8 * v30)) != 0 && *(v41 + 4 * (v28 & 0x3F)) == v29)
      {
        v42 = *(v41 + 4 * (v28 & 0x3F) + 2);
        v163 = (*(*(__dst[47] + 56) + ((v42 >> 3) & 0x1FF8)) + 8 * (v42 & 0x3F));
      }

      else
      {
        v163 = 0;
      }

      v43 = *(__dst[48] + 8);
      if (v30 < (*(__dst[48] + 16) - v43) >> 3 && (v44 = *(v43 + 8 * v30)) != 0 && *(v44 + 4 * (v28 & 0x3F)) == v29)
      {
        v45 = *(v44 + 4 * (v28 & 0x3F) + 2);
        v161 = (*(*(__dst[48] + 56) + ((v45 >> 3) & 0x1FF8)) + 8 * (v45 & 0x3F));
      }

      else
      {
        v161 = 0;
      }

      v46 = *(__dst[49] + 8);
      if (v30 < (*(__dst[49] + 16) - v46) >> 3 && (v47 = *(v46 + 8 * v30)) != 0 && *(v47 + 4 * (v28 & 0x3F)) == v29)
      {
        v48 = *(v47 + 4 * (v28 & 0x3F) + 2);
        v49 = *(*(__dst[49] + 56) + ((v48 >> 3) & 0x1FF8)) + 24 * (v48 & 0x3F);
      }

      else
      {
        v49 = 0;
      }

      v50 = *(__dst[51] + 8);
      if (v30 < (*(__dst[51] + 16) - v50) >> 3 && (v51 = *(v50 + 8 * v30)) != 0 && *(v51 + 4 * (v28 & 0x3F)) == v29)
      {
        v52 = *(v51 + 4 * (v28 & 0x3F) + 2);
        v165 = *(*(__dst[51] + 56) + ((v52 >> 3) & 0x1FF8)) + 16 * (v52 & 0x3F);
      }

      else
      {
        v165 = 0;
      }

      v53 = *(__dst[60] + 8);
      v56 = v30 >= (*(__dst[60] + 16) - v53) >> 3 || (v54 = *(v53 + 8 * v30)) == 0 || (v55 = v28 & 0x3F, *(v54 + 4 * v55) != v29) || *(__dst[60] + 32) + 4 * *(v54 + 4 * v55 + 2) == 0;
      v157 = v56;
      v57 = *(__dst[0] + 2);
      v58 = *(__dst[61] + 8);
      v60 = v57 >> 6 >= (*(__dst[61] + 16) - v58) >> 3 || (v59 = *(v58 + 8 * (v57 >> 6))) == 0 || *(v59 + 4 * (v57 & 0x3F)) != *__dst[0] || *(__dst[61] + 32) + 4 * *(v59 + 4 * (v57 & 0x3F) + 2) == 0;
      v155 = v60;
      v61 = *(__dst[0] + 2);
      v62 = *__dst[0];
      v63 = v61 >> 6;
      v64 = *(__dst[62] + 8);
      v66 = v61 >> 6 >= (*(__dst[62] + 16) - v64) >> 3 || (v65 = *(v64 + 8 * v63)) == 0 || *(v65 + 4 * (v61 & 0x3F)) != v62 || *(__dst[62] + 32) + 4 * *(v65 + 4 * (v61 & 0x3F) + 2) == 0;
      v153 = v66;
      v67 = *(__dst[63] + 8);
      v69 = v63 >= (*(__dst[63] + 16) - v67) >> 3 || (v68 = *(v67 + 8 * v63)) == 0 || *(v68 + 4 * (v61 & 0x3F)) != v62 || *(__dst[63] + 32) + 4 * *(v68 + 4 * (v61 & 0x3F) + 2) == 0;
      v159 = v69;
      v70 = *(__dst[66] + 8);
      v105 = v33;
      v106 = *(*(__dst[5] + 56) + ((v33 >> 3) & 0x1FF8));
      if (v63 < (*(__dst[66] + 16) - v70) >> 3 && (v71 = *(v70 + 8 * v63)) != 0 && (v72 = v61 & 0x3F, *(v71 + 4 * v72) == v62))
      {
        v73 = *(v71 + 4 * v72 + 2);
        v74 = (*(*(__dst[66] + 56) + ((v73 >> 3) & 0x1FF8)) + (v73 & 0x3F));
      }

      else
      {
        v74 = 0;
      }

      v75 = v34 & 0x3F;
      v76 = v36 & 0x3F;
      *(v23 + 104 * *v22 + 24) = *v21;
      v77 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a2);
      v78 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v79 = v78;
      if (*(v35 + v75) == 4)
      {
        v80 = *(v167 + v76);
        if (v80 != 1 && v80 != 3)
        {
          if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
          }

          v81 = GEOGetVectorKitVKDefaultLog_log;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            v82 = *(v167 + v76);
            LODWORD(__src[0]) = 67109890;
            DWORD1(__src[0]) = v82;
            WORD4(__src[0]) = 2080;
            *(__src + 10) = "false";
            WORD1(__src[1]) = 2080;
            *(&__src[1] + 4) = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
            WORD6(__src[1]) = 1024;
            *(&__src[1] + 14) = 223;
            _os_log_impl(&dword_1B2754000, v81, OS_LOG_TYPE_ERROR, "Unexpected SceneLayer (%d) for MeshLayer::Flyover renderItem: Assertion with expression - %s : Failed in file - %s line - %i", __src, 0x22u);
          }
        }
      }

      v83 = *a2;
      v84 = ecs2::ExecutionTaskContext::currentEntity(v78);
      ecs2::addComponent<md::ls::FinishedProcessing>(v83, v84);
      Entity = ecs2::ExecutionTaskContext::createEntity((*a2)[1]);
      if (v171)
      {
        createRenderItemForEntity(&v174, Entity, v79, v171);
        if (!v175)
        {
          if (v163)
          {
            ecs2::addComponent<md::ls::HasMaterialRasterRenderItem>(*a2, Entity, *v163);
          }

          if (v161)
          {
            ecs2::addComponent<md::ls::NeedsClimateTint>(*a2, Entity, *v161);
          }

          if (v165)
          {
            ecs2::addComponent<md::ls::UniqueRenderArrayID>(*a2, Entity, 0);
          }

          (*(*v77 + 112))(v77, 9, *(v167 + v76));
          addIntendedSceneLayer<ecs2::Runtime>(*a2, Entity, *(v167 + v76));
          if (*(v32 + (v31 & 0x3F)) == 1)
          {
            ecs2::addComponent<md::ls::IsElevated>(*a2, Entity);
          }

          if (v159)
          {
            if (v49)
            {
              v88 = *(v49 + 8);
              *&__src[0] = *v49;
              *(&__src[0] + 1) = v88;
              if (v88)
              {
                atomic_fetch_add_explicit((v88 + 8), 1uLL, memory_order_relaxed);
              }

              LOWORD(__src[1]) = *(v49 + 16);
              ecs2::addComponent<md::ls::CustomRenderState>(*a2, Entity, __src);
            }
          }

          else
          {
            ecs2::addComponent<md::ls::FlyoverInstance>(*a2, Entity);
          }

          if (v74)
          {
            ecs2::addComponent<md::ls::PredefinedRenderState>(*a2, Entity, *v74);
          }

          ecs2::addComponent<md::ls::NeedsRenderState>(*a2, Entity);
          v89 = *a2;
          if (v157)
          {
            ecs2::addComponent<md::ls::IsNotMercator>(v89, Entity);
            ecs2::addComponent<md::ls::IsS2>(*a2, Entity, *(v106 + (v105 & 0x3F)));
          }

          else
          {
            ecs2::addComponent<md::ls::IsMercator>(v89, Entity);
          }

          if (!v155)
          {
            ecs2::addComponent<md::ls::SupportsStylizedShading>(*a2, Entity);
          }

          if (!v153)
          {
            ecs2::addComponent<md::ls::SupportsSteepnessDarkening>(*a2, Entity);
          }

          operator new();
        }

        if (v175 != 1)
        {
          std::__throw_bad_variant_access[abi:nn200100]();
        }
      }

      else
      {
        LOBYTE(v174) = 2;
      }

      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v86 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v87 = "";
        if (v174 <= 2uLL)
        {
          v87 = off_1E7B3D650[v174];
        }

        LODWORD(__src[0]) = 136315906;
        *(__src + 4) = v87;
        WORD6(__src[0]) = 2080;
        *(__src + 14) = "false";
        WORD3(__src[1]) = 2080;
        *(&__src[1] + 1) = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
        LOWORD(__src[2]) = 1024;
        *(&__src[2] + 2) = 234;
        _os_log_impl(&dword_1B2754000, v86, OS_LOG_TYPE_ERROR, "Failed to create main render item (%s): Assertion with expression - %s : Failed in file - %s line - %i", __src, 0x26u);
      }

      ecs2::ExecutionTaskContext::destroyEntity(*a2, Entity);
      v24 = v169 + 1;
      v90 = __dst[1];
      v91 = (__dst[0] + 4);
      while (1)
      {
        v21 = v91;
        __dst[0] = v91;
        if (v91 == v90)
        {
          break;
        }

        IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE = _ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16MeshRenderableIDERKNS4_16SliceAssignmentTILNS3_9SliceTypeE7EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_17PendingProcessingERKNS4_14MeshLayerTypeVERKNS4_18IntendedSceneLayerEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleEPKNS4_26SharedMaterialZIndexHandleEPNS4_17AssociationHandleEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_31StyleRouteLineMaskDataKeyHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS2C_INS2D_10TexTextureEEEPKNS2C_INS2D_15EmissiveTextureEEEPKNS2C_INS2D_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_40FlyoverCommonTransformConstantDataHandleEPKNS4_30FlyoverCommonS2TransformHandleEPKNS4_28FlyoverCommonTexcoordsHandleEPKNS4_27FlyoverCommonMaterialHandleEPKNS4_29FlyoverClipConstantDataHandleEPKNS2C_IN7Flyover14DiffuseTextureEEEPKNS2C_INS3U_12NightTextureEEEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(__dst, *v91, v91[1]);
        v91 = v21 + 2;
        if (IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE)
        {
          v90 = v21;
          break;
        }
      }

      v23 = v103;
      v22 = v102;
    }

    while (v90 != v104);
    v93 = *(a1 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
    result = v102;
    v95 = v103;
    *(v93 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata) = *(v93 + 4096);
  }

  *(v95 + 104 * *result + 24) = -65536;
  v96 = v95 + 104 * *result;
  v97 = *(v96 + 92);
  *(v96 + 92) = v97 + 1;
  *(v96 + 4 * v97 + 28) = v24;
  v98 = v95 + 104 * *result;
  v100 = *(v98 + 92);
  v99 = (v98 + 92);
  if (v100 >= 0x10)
  {
    *v99 = 0;
  }

  return result;
}

void sub_1B2DAF318(_Unwind_Exception *a1)
{
  if (STACK[0x498])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x498]);
  }

  _Unwind_Resume(a1);
}

BOOL _ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16MeshRenderableIDERKNS4_16SliceAssignmentTILNS3_9SliceTypeE7EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_17PendingProcessingERKNS4_14MeshLayerTypeVERKNS4_18IntendedSceneLayerEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleEPKNS4_26SharedMaterialZIndexHandleEPNS4_17AssociationHandleEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_31StyleRouteLineMaskDataKeyHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS2C_INS2D_10TexTextureEEEPKNS2C_INS2D_15EmissiveTextureEEEPKNS2C_INS2D_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_40FlyoverCommonTransformConstantDataHandleEPKNS4_30FlyoverCommonS2TransformHandleEPKNS4_28FlyoverCommonTexcoordsHandleEPKNS4_27FlyoverCommonMaterialHandleEPKNS4_29FlyoverClipConstantDataHandleEPKNS2C_IN7Flyover14DiffuseTextureEEEPKNS2C_INS3U_12NightTextureEEEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0 && *(v13 + 4 * (a3 & 0x3F)) == a2 && (v14 = *(a1[7] + 8), v3 < (*(a1[7] + 16) - v14) >> 3) && (v15 = *(v14 + 8 * v3)) != 0 && *(v15 + 4 * (a3 & 0x3F)) == a2 && (v16 = *(a1[8] + 8), v3 < (*(a1[8] + 16) - v16) >> 3) && (v17 = *(v16 + 8 * v3)) != 0)
  {
    return *(v17 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12CustomZIndexEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::CustomZIndex>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CustomZIndex>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CustomZIndex>();
    *algn_1EB83DB38 = 0x3EAAB620EAA88EC8;
    qword_1EB83DB40 = "md::ls::CustomZIndex]";
    qword_1EB83DB48 = 20;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A506A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A506C0;
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

void ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A506A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::CustomZIndex,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7Flyover14DiffuseTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A525B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A525D0;
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

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A525B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29FlyoverClipConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverClipConstantDataHandle>();
    *algn_1EB83BDC8 = 0x5E4DB6CB13CB5848;
    qword_1EB83BDD0 = "md::ls::FlyoverClipConstantDataHandle]";
    qword_1EB83BDD8 = 37;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A524E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52500;
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

void ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A524E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverClipConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27FlyoverCommonMaterialHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonMaterialHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonMaterialHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonMaterialHandle>();
    unk_1EB83C4E0 = 0xB70B6DE024A5B9DALL;
    qword_1EB83C4E8 = "md::ls::FlyoverCommonMaterialHandle]";
    qword_1EB83C4F0 = 35;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52410;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52430;
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

void ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52410;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonMaterialHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28FlyoverCommonTexcoordsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTexcoordsHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTexcoordsHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonTexcoordsHandle>();
    *algn_1EB83C398 = 0x5B12559DCF20DC9ALL;
    qword_1EB83C3A0 = "md::ls::FlyoverCommonTexcoordsHandle]";
    qword_1EB83C3A8 = 36;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52340;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52360;
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

void ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52340;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTexcoordsHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30FlyoverCommonS2TransformHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>();
  v7 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata;
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonS2TransformHandle>(v6);
  v9 = v5 >> 22;
  v10 = v8[1];
  if (v5 >> 22 < (v8[2] - v10) >> 3)
  {
    v11 = *(v10 + 8 * v9);
    if (v11)
    {
      v12 = (v5 >> 16) & 0x3F;
      if (*(v11 + 4 * v12) == v5)
      {
        v13 = v8;
        v14 = v8[31];
        v15 = v8[32];
        if (v14 != v15)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), v5);
            v14 += 32;
          }

          while (v14 != v15);
          v11 = *(v13[1] + 8 * v9);
        }

        v16 = *(v11 + 4 * v12 + 2);
        v17 = ((v13[5] - v13[4]) >> 2) - 1;
        v18 = v17 & 0x3F;
        v19 = v13[7];
        v20 = *(v19 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v21 = v16 & 0x3F;
        v22 = *(v19 + ((v16 >> 3) & 0x1FF8));
        v23 = *(v22 + 8 * v21);
        *(v22 + 8 * v21) = *(v20 + 8 * v18);
        *(v20 + 8 * v18) = v23;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v13, v5, WORD1(v5));
      }
    }
  }

  *(*(v6 + 41016) + (v5 >> 16 << 6) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v7);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>();
  *(v6 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata) = *(v6 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonS2TransformHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonS2TransformHandle>();
    unk_1EB83BCD0 = 0x81BF69EEE736436;
    qword_1EB83BCD8 = "md::ls::FlyoverCommonS2TransformHandle]";
    qword_1EB83BCE0 = 38;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52270;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52290;
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

void ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52270;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonS2TransformHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls40FlyoverCommonTransformConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTransformConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverCommonTransformConstantDataHandle>();
    *algn_1EB83B9B8 = 0x7D9191A7B57B7B35;
    qword_1EB83B9C0 = "md::ls::FlyoverCommonTransformConstantDataHandle]";
    qword_1EB83B9C8 = 48;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A521A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A521C0;
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

void ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A521A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverCommonTransformConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31StyleRouteLineMaskDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskDataKeyHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50500;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50520;
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

void ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50500;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26SharedMaterialZIndexHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedMaterialZIndexHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialZIndexHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialZIndexHandle>();
    *algn_1EB83C588 = 0x9705908F280836EDLL;
    qword_1EB83C590 = "md::ls::SharedMaterialZIndexHandle]";
    qword_1EB83C598 = 34;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50360;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50380;
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

void ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50360;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedMaterialZIndexHandle,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateMainRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateMainRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F89F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<SetLegacyStencilOffsetAndBucketCount>,std::allocator<ecs2::ForwardToExecute<SetLegacyStencilOffsetAndBucketCount>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8920;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::KeepColorRampTextureAlive>(md::ita::KeepColorRampTextureAlive &&)::{lambda(void)#1},std::allocator<md::ita::KeepColorRampTextureAlive &&>,std::vector<gdc::TypeInfo,ecs2::ExecutionTaskFunction::ExecutionTaskFunction<md::ita::KeepColorRampTextureAlive>(md::ita::KeepColorRampTextureAlive &&)::{lambda(void)#1}<gdc>> ()(void)>::operator()(void **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0x7EDF0608EB36DCA6;
    v10[1] = "md::ls::HasGradientRampTexture]";
    v10[2] = 30;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0x7EDF0608EB36DCA6;
    *(v2 + 1) = "md::ls::HasGradientRampTexture]";
    *(v2 + 2) = 30;
    v4 = v2 + 24;
  }

  a1[1] = v4;
}

void sub_1B2DB1BC0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::KeepColorRampTextureAlive>,std::allocator<ecs2::ForwardToExecute<md::ita::KeepColorRampTextureAlive>>,void ()(ecs2::Runtime &)>::operator()(void *a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  a1[1] = a2;
  v4 = (a1 + 1);
  v5 = a1[2];
  if (!v5)
  {
    v5 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(**a2, *(*a2 + 8));
    a1[2] = v5;
  }

  v6 = (**v5)(v5);
  md::LayoutContext::frameState(v6);
  v43 = *(v7 + 624);
  v8 = a1[3];
  if (!v8)
  {
    v9 = **v4;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v10 == v11)
    {
      goto LABEL_5;
    }

    while (*v10 != 0x41D4E9297E100630)
    {
      v8 = 0;
      v10 += 5;
      if (v10 == v11)
      {
        goto LABEL_8;
      }
    }

    if (v10 == v11)
    {
LABEL_5:
      v8 = 0;
    }

    else
    {
      v8 = v10[3];
      v41 = v10[4];
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v41);
      }
    }

LABEL_8:
    a1[3] = v8;
  }

  v42 = v8;
  v51[0] = &unk_1F2A0D3E8;
  v51[1] = &v42;
  v51[2] = &v43;
  v52 = v51;
  v12 = *(a2 + 8);
  v13 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(v12);
  HasGradientRamp = ecs2::BasicRegistry<void>::storage<md::ls::HasGradientRampTexture>(v12);
  v15 = HasGradientRamp;
  if (*(HasGradientRamp + 40) - *(HasGradientRamp + 32) >= *(v13 + 40) - *(v13 + 32))
  {
    v16 = v13;
  }

  else
  {
    v16 = HasGradientRamp;
  }

  v17 = *(v16 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v48, *(v16 + 32), v17, v13, HasGradientRamp);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v47, v17, v17, v13, v15);
  v18 = v48;
  v46 = v50;
  v44 = v48;
  v45 = v49;
  v19 = v47;
  if (v48 == v47)
  {
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
  }

  else
  {
    v20 = v49;
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
    v24 = *(&v48 + 1);
    do
    {
      v25 = v18[1];
      v26 = v25 & 0x3F;
      v27 = (v25 >> 3) & 0x1FF8;
      v28 = *(*(*(v20 + 8) + v27) + 4 * v26 + 2);
      v29 = *(*(v20 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(&v20 + 1) + 32);
      v31 = *(*(*(*(&v20 + 1) + 8) + v27) + 4 * v26 + 2);
      *(v21 + 104 * *v22 + 24) = *v18;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v29 + 8 * (v28 & 0x3F), v30 + 4 * v31);
      ++v23;
      v32 = v18 + 2;
      do
      {
        v18 = v32;
        *&v48 = v32;
        if (v32 == v24)
        {
          break;
        }

        v33 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v48, *v32, v32[1]);
        v32 = v18 + 2;
      }

      while (!v33);
    }

    while (v18 != v19);
    v34 = *(a2 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>();
    *(v34 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata) = *(v34 + 4096);
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v35 = v21 + 104 * *v22;
  v36 = *(v35 + 92);
  *(v35 + 92) = v36 + 1;
  *(v35 + 4 * v36 + 28) = v23;
  v37 = v21 + 104 * *v22;
  v39 = *(v37 + 92);
  v38 = (v37 + 92);
  if (v39 >= 0x10)
  {
    *v38 = 0;
  }

  result = std::__function::__value_func<void ()(md::ls::ColorRampDataHandle &,md::ls::HasGradientRampTexture const&)>::~__value_func[abi:nn200100](v51);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::KeepColorRampTextureAlive>,std::allocator<ecs2::ForwardToExecute<md::ita::KeepColorRampTextureAlive>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8770;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareGradientParametersConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareGradientParametersConstantDataHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8698;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareColorCorrectionFactorsConstantHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareColorCorrectionFactorsConstantHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F85C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfOpaque>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfOpaque>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F84E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15AlbedoTintColorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::AlbedoTintColor>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = (*(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 16 * (v15 & 0x3F));
        v18 = (*(v16 + ((v14 >> 3) & 0x1FF8)) + 16 * (v14 & 0x3F));
        v19 = *v18;
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 4;
        }

        while (v13 != 16);
        *v17 = v19;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42998;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A429B8;
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

void ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42998;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::AlbedoTintColor,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21UniqueColorDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41568;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41588;
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

void ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41568;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueColorDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21SharedColorDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedColorDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42F08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42F28;
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

void ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42F08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedColorDataHandle,64ul>::~storage(a1);
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForSSAOConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForSSAOConstantData>>,void ()(ecs2::Runtime &)>::operator()(void *a1, void **a2)
{
  v26 = *MEMORY[0x1E69E9840];
  a1[1] = a2;
  v3 = (a1 + 1);
  v4 = a1[3];
  if (!v4)
  {
    v5 = **a2;
    v6 = (*a2)[1];
    if (v5 == v6)
    {
      goto LABEL_5;
    }

    while (*v5 != 0x22D45F5AAD4BF408)
    {
      v5 += 5;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    if (v5 == v6)
    {
LABEL_5:
      v4 = 0;
    }

    else
    {
      v4 = v5[3];
      v7 = v5[4];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }

    a1[3] = v4;
  }

  v8 = (**v4)(v4);
  v9 = md::LayoutContext::get<md::LightingLogicContext>(*(v8 + 8));
  if (v9)
  {
    v10 = *(v9 + 124);
    v24 = *(v9 + 61);
    v25 = v10;
    v11 = a1[2];
    if (!v11)
    {
      v12 = **v3;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v13 == v14)
      {
        goto LABEL_15;
      }

      while (*v13 != 0x41D4E9297E100630)
      {
        v13 += 5;
        if (v13 == v14)
        {
          goto LABEL_15;
        }
      }

      if (v13 == v14)
      {
LABEL_15:
        v11 = 0;
      }

      else
      {
        v11 = v13[3];
        v15 = v13[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        }
      }

      a1[2] = v11;
    }

    v23 = v11;
    v16 = a1[4];
    if (!v16)
    {
      v17 = **v3;
      v18 = *v17;
      v19 = *(v17 + 8);
      if (v18 == v19)
      {
        goto LABEL_24;
      }

      while (*v18 != 0x4EDAD23DFB014132)
      {
        v18 += 5;
        if (v18 == v19)
        {
          goto LABEL_24;
        }
      }

      if (v18 == v19)
      {
LABEL_24:
        v16 = 0;
      }

      else
      {
        v16 = v18[3];
        v20 = v18[4];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v20);
        }
      }

      a1[4] = v16;
    }

    v22 = v16;
    operator new();
  }

  result = 0.0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  return result;
}

void sub_1B2DB372C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::__function::__value_func<void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedSSAOIntensityDataHandle const&,md::ls::StyleSSAODataKeyHandle *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForSSAOConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForSSAOConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8260;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForStyleRouteLineMask>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForStyleRouteLineMask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8188;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessaryPendingOnly>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessaryPendingOnly>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F80B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessary>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessary>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7FD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMaterialStyleConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMaterialStyleConstantDataHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7F00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14MercatorBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MercatorBounds>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 48 * (v15 & 0x3F);
        v18 = (*(v16 + ((v14 >> 3) & 0x1FF8)) + 48 * (v14 & 0x3F));
        v22 = *v18;
        *v23 = v18[1];
        *&v23[16] = v18[2];
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 8;
        }

        while (v13 != 24);
        v19 = 0;
        v20 = v18 + 24;
        v21 = (v17 + 24);
        do
        {
          *&v20[v19] = *(v21 + v19);
          v19 += 8;
        }

        while (v19 != 24);
        *v17 = v22;
        *(v17 + 16) = *v23;
        *v21 = *&v23[8];
        *(v17 + 40) = *&v23[24];
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MercatorBounds>();
    *algn_1EB83D868 = 0x8D1BF84D316565E9;
    qword_1EB83D870 = "md::ls::MercatorBounds]";
    qword_1EB83D878 = 22;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F7D10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F7D30;
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

void ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F7D10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MercatorBounds,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13InstanceDataVEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceDataV>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 16 * (v14 & 0x3F);
        v17 = (*(v15 + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F));
        v19 = *v17;
        v18 = v17[1];
        *v17 = 0;
        v17[1] = 0;
        v20 = *v16;
        *v16 = 0;
        *(v16 + 8) = 0;
        v21 = v17[1];
        *v17 = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        }

        v22 = *(v16 + 8);
        *v16 = v19;
        *(v16 + 8) = v18;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
          v18 = *(v16 + 8);
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41DD8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41DF8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 16 * (v4 & 0x3F) + 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[7];
  v7 = a1[8];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41DD8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::InstanceDataV,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForStyleGroundOcclusion>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForStyleGroundOcclusion>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7968;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFlyoverS2TransformConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFlyoverS2TransformConstantDataHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7890;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFlyoverTransformConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFlyoverTransformConstantDataHandle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F77B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18ModelTransformDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ModelTransformData>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = (*(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 48 * (v15 & 0x3F));
        v18 = (*(v16 + ((v14 >> 3) & 0x1FF8)) + 48 * (v14 & 0x3F));
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 4;
        }

        while (v13 != 48);
        *v17 = v19;
        v17[1] = v20;
        v17[2] = v21;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ModelTransformData>();
    *algn_1EB83D158 = 0xBED6A4C8B7C54422;
    qword_1EB83D160 = "md::ls::ModelTransformData]";
    qword_1EB83D168 = 26;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D0E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1D108;
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

void ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D0E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ModelTransformData,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20FlyoverClipPlaneDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipPlaneData>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = (*(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 240 * (v14 & 0x3F));
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 240 * (v13 & 0x3F);
        LOBYTE(v29) = 0;
        v37 = 0;
        if (*(v17 + 104) == 1)
        {
          v29 = *v17;
          v30 = *(v17 + 16);
          v31 = *(v17 + 24);
          v32 = *(v17 + 40);
          v33 = *(v17 + 48);
          v34 = *(v17 + 56);
          v35 = *(v17 + 72);
          v36 = *(v17 + 88);
          v37 = 1;
        }

        v18 = v17 + 112;
        v19 = *(v17 + 192);
        v42 = *(v17 + 176);
        v43 = v19;
        v20 = *(v17 + 224);
        v44 = *(v17 + 208);
        v45 = v20;
        v21 = *(v17 + 128);
        v38 = *(v17 + 112);
        v39 = v21;
        v22 = *(v17 + 160);
        v40 = *(v17 + 144);
        v41 = v22;
        std::__optional_storage_base<geo::OrientedBox<double,3u,double,double>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<geo::OrientedBox<double,3u,double,double>,false>>(v17, v16);
        v23 = 0;
        v24 = v16 + 7;
        do
        {
          *(v18 + v23) = *(v24 + v23);
          v23 += 8;
        }

        while (v23 != 128);
        std::__optional_storage_base<geo::OrientedBox<double,3u,double,double>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<geo::OrientedBox<double,3u,double,double>,false>>(v16, &v29);
        v25 = v43;
        v16[11] = v42;
        v16[12] = v25;
        v26 = v45;
        v16[13] = v44;
        v16[14] = v26;
        v27 = v39;
        *v24 = v38;
        v16[8] = v27;
        v28 = v41;
        v16[9] = v40;
        v16[10] = v28;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>(void)::metadata) = *(v3 + 4096);
}

__n128 std::__optional_storage_base<geo::OrientedBox<double,3u,double,double>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<geo::OrientedBox<double,3u,double,double>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == *(a2 + 104))
  {
    if (*(a1 + 104))
    {
      result.n128_f64[0] = geo::OrientedBox<double,3u,double,double>::operator=(a1, a2);
    }
  }

  else if (*(a1 + 104))
  {
    *(a1 + 104) = 0;
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v3;
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
    *(a1 + 48) = *(a2 + 48);
    result = *(a2 + 56);
    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v5;
    *(a1 + 56) = result;
    *(a1 + 104) = 1;
  }

  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D1B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1D1D8;
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

void ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D1B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverClipPlaneData,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForFlyoverClip>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForFlyoverClip>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F76E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateFlyoverSharedConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateFlyoverSharedConstantData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7608;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareShadowPassCommandBuffers>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareShadowPassCommandBuffers>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7458;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareCulledDepthPrePassSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareCulledDepthPrePassSlice>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F7380;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareCulledShadowSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareCulledShadowSlice>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F72A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareShadowSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareShadowSlice>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F71D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareUnflattenedCulledSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareUnflattenedCulledSlice>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F70F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31AppliedWantsDynamicShadowBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::AppliedWantsDynamicShadowBounds>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AppliedWantsDynamicShadowBounds,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A338B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AppliedWantsDynamicShadowBounds,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A338B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareCulledSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareCulledSlice>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6D98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMeshRenderableBounds>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMeshRenderableBounds>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6CC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareSlices>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareSlices>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6BE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ResolveMaterialEmissiveTexture>,std::allocator<ecs2::ForwardToExecute<md::ita::ResolveMaterialEmissiveTexture>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6B10;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ResolveMaterialDiffuseTexture>,std::allocator<ecs2::ForwardToExecute<md::ita::ResolveMaterialDiffuseTexture>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6A38;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18UniqueMaterialDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *(v17 + 16);
        v19 = *v17;
        v20 = *(v16 + 16);
        *v17 = *v16;
        *(v17 + 16) = v20;
        *v16 = v19;
        *(v16 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialData>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A417F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41810;
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

void ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A417F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialData,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CollectMaterialColorData>,std::allocator<ecs2::ForwardToExecute<md::ita::CollectMaterialColorData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6960;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void gdc::typelist_as_vector<std::tuple<md::ls::PlanarParametersCacheKeyHandle>>(void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 1uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = v2 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = (8 * (v6 >> 3));
    *v10 = 0xD02B5FD100F36AA2;
    v10[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v10[2] = 38;
    v4 = v10 + 3;
    v11 = v10 - v6;
    memcpy(v10 - v6, v5, v6);
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v2 = 0xD02B5FD100F36AA2;
    *(v2 + 1) = "md::ls::PlanarParametersCacheKeyHandle]";
    *(v2 + 2) = 38;
    v4 = v2 + 24;
  }

  a1[1] = v4;
}

void sub_1B2DB70F4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParametersPendingOnly>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParametersPendingOnly>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v59[5] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v49 = a1 + 8;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialAlbedoTexture>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::UnitsPerMeter>(v3);
  v59[0] = v4;
  v59[1] = v5;
  v59[2] = v6;
  v59[3] = v7;
  v9 = 1;
  v10 = v4;
  v11 = v59;
  v59[4] = v8;
  do
  {
    if (*(v59[v9] + 40) - *(v59[v9] + 32) < *(v10 + 40) - *(v10 + 32))
    {
      v10 = v59[v9];
      v11 = &v59[v9];
    }

    ++v9;
  }

  while (v9 != 5);
  v13 = *(*v11 + 32);
  v12 = *(*v11 + 40);
  v52 = v13;
  v53 = v12;
  v54 = v4;
  v55 = v5;
  v56 = v6;
  v57 = v7;
  v58 = v8;
  v50 = v12;
  while (v13 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v52, *v13, v13[1]))
  {
    v13 += 2;
    v52 = v13;
    v12 = v50;
  }

  v14 = v52;
  if (v52 == v50)
  {
    v15 = _ZTWN4ecs27Runtime11_localStateE();
    v16 = _ZTWN4ecs27Runtime11_stackIndexE();
    v17 = 0;
  }

  else
  {
    v46 = v56;
    v47 = v55;
    v45 = v57;
    v43 = a2;
    v44 = v58;
    v15 = _ZTWN4ecs27Runtime11_localStateE();
    v16 = _ZTWN4ecs27Runtime11_stackIndexE();
    v17 = 0;
    v18 = v53;
    v48 = v16;
    do
    {
      v51 = v17;
      v19 = v14[1];
      v20 = v19 & 0x3F;
      v21 = (v19 >> 3) & 0x1FF8;
      v22 = *(*(*(v47 + 8) + v21) + 4 * v20 + 2);
      v23 = (*(*(v47 + 56) + ((v22 >> 3) & 0x1FF8)) + 24 * (v22 & 0x3F));
      v24 = *(*(*(v46 + 8) + v21) + 4 * v20 + 2);
      v25 = (*(*(v46 + 56) + ((v24 >> 3) & 0x1FF8)) + 32 * (v24 & 0x3F));
      v26 = *(*(*(v45 + 8) + v21) + 4 * v20 + 2);
      v27 = (*(*(v45 + 56) + ((v26 >> 3) & 0x1FF8)) + 8 * (v26 & 0x3F));
      v28 = *(*(*(v44 + 8) + v21) + 4 * v20 + 2);
      v29 = (*(*(v44 + 56) + ((v28 >> 3) & 0x1FF8)) + 12 * (v28 & 0x3F));
      *(v15 + 104 * *v16 + 24) = *v14;
      v30 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v49);
      v31 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(v49);
      v32 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,mre::GGLResourceStore *>::service<mre::GGLResourceStore>(v49);
      processMaterialPlanarParameters(v30, v31, v32, v23, v25, v27, v29);
      v17 = v51 + 1;
      v33 = v14 + 2;
      while (1)
      {
        v14 = v33;
        v52 = v33;
        if (v33 == v18)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v52, *v33, v33[1]);
        v33 = v14 + 2;
        if (v34)
        {
          v35 = v14;
          goto LABEL_16;
        }
      }

      v35 = v18;
LABEL_16:
      v16 = v48;
    }

    while (v35 != v50);
    v36 = *(v43 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>();
    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PlanarParametersCacheKeyHandle>(void)::metadata) = *(v36 + 4096);
  }

  *(v15 + 104 * *v16 + 24) = -65536;
  v37 = v15 + 104 * *v16;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v17;
  v39 = v15 + 104 * *v16;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  result = 0.0;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13UnitsPerMeterEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UnitsPerMeter>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 12 * (v14 & 0x3F);
        v19 = *v18;
        v20 = *(v18 + 8);
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 4;
        }

        while (v13 != 12);
        *v17 = v19;
        *(v17 + 8) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UnitsPerMeter>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A56080;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A560A0;
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

void ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A56080;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UnitsPerMeter,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27UniqueMaterialAlbedoTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialAlbedoTexture>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F);
        v23 = *v17;
        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        LOBYTE(v14) = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v14;
        v20 = *(v16 + 16);
        *(v16 + 16) = 0;
        *(v16 + 24) = 0;
        v21 = *(v17 + 24);
        *(v17 + 16) = v20;
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        }

        *v16 = v23;
        *(v16 + 8) = BYTE8(v23);
        v22 = *(v16 + 24);
        *(v16 + 16) = v19;
        *(v16 + 24) = v18;
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
          v18 = *(v16 + 24);
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A412F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41318;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v4 & 0x3F) + 24);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[7];
  v7 = a1[8];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}