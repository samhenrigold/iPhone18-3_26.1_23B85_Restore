unint64_t re::RealityDataPipe::tryGetEmbeddedStereoContentCameraMultiViewArray(re::RealityDataPipe *this)
{
  if (*(this + 147))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1136, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetEmbeddedStereoContentCameraMultiViewArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 147))
  {
    return this + 1136;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addStaticTextInfo(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1232);
  v5 = *(a1 + 1200);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::StaticTextInfo,4ul>::setBucketsCapacity((a1 + 1192), (v4 + 4) >> 2);
    v5 = *(a1 + 1200);
  }

  if (v5 <= v4 >> 2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v10 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v18 = 858;
    v19 = 2048;
    v20 = v4 >> 2;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v11, &v14, v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v12, v13);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1208))
  {
    v6 = a1 + 1216;
  }

  else
  {
    v6 = *(a1 + 1224);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  v8 = *(a1 + 1232);
  ++*(a1 + 1240);
  *(v7 + 8 * (v4 & 3)) = *a2;
  *(a1 + 1232) = v8 + 1;
  if (v8 == -1)
  {
    goto LABEL_15;
  }

  return re::BucketArray<unsigned long,4ul>::operator[](a1 + 1192, v8);
}

unint64_t re::RealityDataPipe::tryGetStaticTextInfo(re::RealityDataPipe *this)
{
  if (*(this + 154))
  {
    return re::BucketArray<unsigned long,4ul>::operator[](this + 1192, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetStaticTextInfoArray(re::RealityDataPipe *this)
{
  if (*(this + 154))
  {
    return this + 1192;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addRenderTextArray(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1288);
  v5 = *(a1 + 1256);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 1248), (v4 + 4) >> 2);
    v5 = *(a1 + 1256);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1264))
  {
    v6 = a1 + 1272;
  }

  else
  {
    v6 = *(a1 + 1280);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1288);
  ++*(a1 + 1296);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1288);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1248, v12 - 1);
}

unint64_t re::RealityDataPipe::tryGetRenderTextArray(re::RealityDataPipe *this)
{
  if (*(this + 161))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1248, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetRenderTextArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 161))
  {
    return this + 1248;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addVFXSceneArray(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1344);
  v5 = *(a1 + 1312);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 1304), (v4 + 4) >> 2);
    v5 = *(a1 + 1312);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1320))
  {
    v6 = a1 + 1328;
  }

  else
  {
    v6 = *(a1 + 1336);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1344);
  ++*(a1 + 1352);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1344);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1304, v12 - 1);
}

unint64_t re::RealityDataPipe::tryGetVFXSceneArray(re::RealityDataPipe *this)
{
  if (*(this + 168))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1304, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetVFXSceneArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 168))
  {
    return this + 1304;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addRenderGraphFileProviderArray(uint64_t a1, uint64_t a2)
{
  v4 = re::BucketArray<re::DynamicArray<re::RenderGraphFileProvider>,4ul>::addUninitialized(a1 + 1360);
  *(v4 + 32) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 0;
  v6 = *(a2 + 8);
  *v4 = *a2;
  *(v4 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v4 + 16);
  *(v4 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v4 + 32);
  *(v4 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v4 + 24);
  v9 = *(a1 + 1400);
  if (v9)
  {

    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1360, v9 - 1);
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  return result;
}

unint64_t re::RealityDataPipe::tryGetRenderGraphFileProviderArray(re::RealityDataPipe *this)
{
  if (*(this + 175))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1360, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetRenderGraphFileProviderArrayArray(re::RealityDataPipe *this)
{
  if (*(this + 175))
  {
    return this + 1360;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addRenderGraphFileProviders(uint64_t a1, uint64_t *a2)
{
  v4 = re::BucketArray<re::DynamicArray<re::RenderGraphFileProvider>,4ul>::addUninitialized(a1 + 1360);
  re::DynamicArray<re::RenderGraphFileProvider>::DynamicArray(v4, a2);
  v6 = *(a1 + 1400);
  if (v6)
  {

    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1360, v6 - 1);
  }

  else
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  return result;
}

unint64_t re::RealityDataPipe::addStencilPortalMap(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1456);
  v3 = *(a1 + 1424);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::setBucketsCapacity((a1 + 1416), (v2 + 4) >> 2);
    v3 = *(a1 + 1424);
  }

  if (v3 <= v2 >> 2)
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v9 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2 >> 2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v10, &v13, v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1432))
  {
    v4 = a1 + 1440;
  }

  else
  {
    v4 = *(a1 + 1448);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 1456);
  ++*(a1 + 1464);
  re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::SmallHashTable(v5 + 6992 * (v2 & 3));
  v7 = *(a1 + 1456);
  if (!v7)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](a1 + 1416, v7 - 1);
}

unint64_t re::RealityDataPipe::tryGetStencilPortalMap(re::RealityDataPipe *this)
{
  if (*(this + 182))
  {
    return re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](this + 1416, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetStencilPortalMapArray(re::RealityDataPipe *this)
{
  if (*(this + 182))
  {
    return this + 1416;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addFilterViewMeshScenes(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1512);
  v5 = *(a1 + 1480);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::FilterViewMeshScenes,4ul>::setBucketsCapacity((a1 + 1472), (v4 + 4) >> 2);
    v5 = *(a1 + 1480);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1488))
  {
    v6 = a1 + 1496;
  }

  else
  {
    v6 = *(a1 + 1504);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1512);
  ++*(a1 + 1520);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1512);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1472, v12 - 1);
}

unint64_t re::RealityDataPipe::tryGetFilterViewMeshScenes(re::RealityDataPipe *this)
{
  if (*(this + 189))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1472, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetFilterViewMeshScenesArray(re::RealityDataPipe *this)
{
  if (*(this + 189))
  {
    return this + 1472;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addProbeLightingEnabledMetadata(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1568);
  v3 = *(a1 + 1536);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::setBucketsCapacity((a1 + 1528), (v2 + 4) >> 2);
    v3 = *(a1 + 1536);
  }

  if (v3 <= v2 >> 2)
  {
    v6 = v2 >> 2;
    v11 = 0;
    memset(v20, 0, sizeof(v20));
    v7 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v15 = 858;
    v16 = 2048;
    v17 = v6;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v8, &v11, v20, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v9, v10);
    _os_crash_msg();
    __break(1u);
LABEL_12:
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  v4 = *(a1 + 1568);
  ++*(a1 + 1576);
  *(a1 + 1568) = v4 + 1;
  if (v4 == -1)
  {
    goto LABEL_12;
  }

  return re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::operator[](a1 + 1528, v4);
}

unint64_t re::RealityDataPipe::tryGetProbeLightingEnabledMetadata(re::RealityDataPipe *this)
{
  if (*(this + 196))
  {
    return re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::operator[](this + 1528, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetProbeLightingEnabledMetadataArray(re::RealityDataPipe *this)
{
  if (*(this + 196))
  {
    return this + 1528;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addSceneCRWSReferencePosition(uint64_t a1, _OWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1624);
  v5 = *(a1 + 1592);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::SceneCRWSReferencePosition,4ul>::setBucketsCapacity((a1 + 1584), (v4 + 4) >> 2);
    v5 = *(a1 + 1592);
  }

  if (v5 <= v4 >> 2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v10 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v18 = 858;
    v19 = 2048;
    v20 = v4 >> 2;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v11, &v14, v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v12, v13);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1600))
  {
    v6 = a1 + 1608;
  }

  else
  {
    v6 = *(a1 + 1616);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1624);
  ++*(a1 + 1632);
  *(v7 + 16 * (v4 & 3)) = *a2;
  v8 = *(a1 + 1624);
  if (!v8)
  {
    goto LABEL_15;
  }

  return re::BucketArray<RESubscriptionHandle,4ul>::operator[](a1 + 1584, v8 - 1);
}

unint64_t re::RealityDataPipe::tryGetSceneCRWSReferencePosition(re::RealityDataPipe *this)
{
  if (*(this + 203))
  {
    return re::BucketArray<RESubscriptionHandle,4ul>::operator[](this + 1584, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetSceneCRWSReferencePositionArray(re::RealityDataPipe *this)
{
  if (*(this + 203))
  {
    return this + 1584;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addPlanarReflectionContext(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1680);
  v5 = *(a1 + 1648);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 1640), (v4 + 4) >> 2);
    v5 = *(a1 + 1648);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1656))
  {
    v6 = a1 + 1664;
  }

  else
  {
    v6 = *(a1 + 1672);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1680);
  ++*(a1 + 1688);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 1680);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 1640, v12 - 1);
}

unint64_t re::RealityDataPipe::tryGetPlanarReflectionContext(re::RealityDataPipe *this)
{
  if (*(this + 210))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 1640, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetPlanarReflectionContextArray(re::RealityDataPipe *this)
{
  if (*(this + 210))
  {
    return this + 1640;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addMeshSortingCollection(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1736);
  v5 = *(a1 + 1704);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MeshSortingCollection,4ul>::setBucketsCapacity((a1 + 1696), (v4 + 4) >> 2);
    v5 = *(a1 + 1704);
  }

  if (v5 <= v4 >> 2)
  {
    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v12 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v20 = 858;
    v21 = 2048;
    v22 = v4 >> 2;
    v23 = 2048;
    v24 = v5;
    _os_log_send_and_compose_impl(v13, &v16, v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v14, v15);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1712))
  {
    v6 = a1 + 1720;
  }

  else
  {
    v6 = *(a1 + 1728);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1736);
  ++*(a1 + 1744);
  v8 = v7 + 200 * (v4 & 3);
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, a2);
  *(v8 + 80) = 0;
  *(v8 + 64) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 84) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v8 + 48), (a2 + 48));
  *(v8 + 128) = 0;
  *(v8 + 112) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 132) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v8 + 96), (a2 + 96));
  *(v8 + 144) = 0u;
  v8 += 144;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0u;
  *(v8 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, (a2 + 144));
  *(v8 + 48) = *(a2 + 192);
  v10 = *(a1 + 1736);
  if (!v10)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::MeshSortingCollection,4ul>::operator[](a1 + 1696, v10 - 1);
}

unint64_t re::RealityDataPipe::tryGetMeshSortingCollection(re::RealityDataPipe *this)
{
  if (*(this + 217))
  {
    return re::BucketArray<re::MeshSortingCollection,4ul>::operator[](this + 1696, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetMeshSortingCollectionArray(re::RealityDataPipe *this)
{
  if (*(this + 217))
  {
    return this + 1696;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addSceneUnderstandingFlagEmitterData(uint64_t a1, int *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1792);
  v5 = *(a1 + 1760);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::setBucketsCapacity((a1 + 1752), (v4 + 4) >> 2);
    v5 = *(a1 + 1760);
  }

  if (v5 <= v4 >> 2)
  {
    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v12 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v20 = 858;
    v21 = 2048;
    v22 = v4 >> 2;
    v23 = 2048;
    v24 = v5;
    _os_log_send_and_compose_impl(v13, &v16, v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v14, v15);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1768))
  {
    v6 = a1 + 1776;
  }

  else
  {
    v6 = *(a1 + 1784);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1792);
  ++*(a1 + 1800);
  v8 = (v7 - (v4 & 3) + 8 * (v4 & 3));
  v9 = *a2;
  *(v8 + 3) = *(a2 + 3);
  *v8 = v9;
  v10 = *(a1 + 1792);
  if (!v10)
  {
    goto LABEL_15;
  }

  return re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::operator[](a1 + 1752, v10 - 1);
}

unint64_t re::RealityDataPipe::tryGetSceneUnderstandingFlagEmitterData(re::RealityDataPipe *this)
{
  if (*(this + 224))
  {
    return re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::operator[](this + 1752, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetSceneUnderstandingFlagEmitterDataArray(re::RealityDataPipe *this)
{
  if (*(this + 224))
  {
    return this + 1752;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addRenderCallbacks(uint64_t a1, uint64_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1848);
  v5 = *(a1 + 1816);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::IBLContext,4ul>::setBucketsCapacity((a1 + 1808), (v4 + 4) >> 2);
    v5 = *(a1 + 1816);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1824))
  {
    v6 = a1 + 1832;
  }

  else
  {
    v6 = *(a1 + 1840);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1848);
  ++*(a1 + 1856);
  v8 = v7 + 56 * (v4 & 3);
  v9 = *a2;
  *a2 = 0;
  *v8 = v9;
  *(v8 + 8) = 0u;
  *(v8 + 40) = 0;
  *(v8 + 24) = 0u;
  *(v8 + 44) = 0x7FFFFFFFLL;
  *(v8 + 8) = a2[1];
  a2[1] = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = a2[2];
  a2[2] = v10;
  v11 = *(v8 + 24);
  *(v8 + 24) = a2[3];
  a2[3] = v11;
  LODWORD(v11) = *(v8 + 32);
  *(v8 + 32) = *(a2 + 8);
  *(a2 + 8) = v11;
  LODWORD(v11) = *(v8 + 36);
  *(v8 + 36) = *(a2 + 9);
  *(a2 + 9) = v11;
  LODWORD(v11) = *(v8 + 40);
  *(v8 + 40) = *(a2 + 10);
  *(a2 + 10) = v11;
  LODWORD(v11) = *(v8 + 44);
  *(v8 + 44) = *(a2 + 11);
  *(a2 + 11) = v11;
  v12 = *(a1 + 1848);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](a1 + 1808, v12 - 1);
}

unint64_t re::RealityDataPipe::tryGetRenderCallbacks(re::RealityDataPipe *this)
{
  if (*(this + 231))
  {
    return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 1808, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetRenderCallbacksArray(re::RealityDataPipe *this)
{
  if (*(this + 231))
  {
    return this + 1808;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addDepthMitigationRenderData(uint64_t a1, _OWORD *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1904);
  v5 = *(a1 + 1872);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::DepthMitigationRenderData,4ul>::setBucketsCapacity((a1 + 1864), (v4 + 4) >> 2);
    v5 = *(a1 + 1872);
  }

  if (v5 <= v4 >> 2)
  {
    v21 = 0;
    memset(v30, 0, sizeof(v30));
    v17 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v25 = 858;
    v26 = 2048;
    v27 = v4 >> 2;
    v28 = 2048;
    v29 = v5;
    _os_log_send_and_compose_impl(v18, &v21, v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1880))
  {
    v6 = a1 + 1888;
  }

  else
  {
    v6 = *(a1 + 1896);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 1904);
  ++*(a1 + 1912);
  v8 = (v7 + 140 * (v4 & 3));
  v9 = a2[4];
  v11 = a2[1];
  v10 = a2[2];
  v8[3] = a2[3];
  v8[4] = v9;
  v8[1] = v11;
  v8[2] = v10;
  v13 = a2[6];
  v12 = a2[7];
  v14 = a2[5];
  *(v8 + 124) = *(a2 + 124);
  v8[6] = v13;
  v8[7] = v12;
  v8[5] = v14;
  *v8 = *a2;
  v15 = *(a1 + 1904);
  if (!v15)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::DepthMitigationRenderData,4ul>::operator[](a1 + 1864, v15 - 1);
}

unint64_t re::RealityDataPipe::tryGetDepthMitigationRenderData(re::RealityDataPipe *this)
{
  if (*(this + 238))
  {
    return re::BucketArray<re::DepthMitigationRenderData,4ul>::operator[](this + 1864, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetDepthMitigationRenderDataArray(re::RealityDataPipe *this)
{
  if (*(this + 238))
  {
    return this + 1864;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addDepthMitigationReductionRenderData(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1960);
  v5 = *(a1 + 1928);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::DepthMitigationReductionRenderData,4ul>::setBucketsCapacity((a1 + 1920), (v4 + 4) >> 2);
    v5 = *(a1 + 1928);
  }

  if (v5 <= v4 >> 2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v10 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v18 = 858;
    v19 = 2048;
    v20 = v4 >> 2;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v11, &v14, v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v12, v13);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1936))
  {
    v6 = a1 + 1944;
  }

  else
  {
    v6 = *(a1 + 1952);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  v8 = *(a1 + 1960);
  ++*(a1 + 1968);
  *(v7 + 8 * (v4 & 3)) = *a2;
  *a2 = 0;
  *(a1 + 1960) = v8 + 1;
  if (v8 == -1)
  {
    goto LABEL_15;
  }

  return re::BucketArray<unsigned long,4ul>::operator[](a1 + 1920, v8);
}

unint64_t re::RealityDataPipe::tryGetDepthMitigationReductionRenderData(re::RealityDataPipe *this)
{
  if (*(this + 245))
  {
    return re::BucketArray<unsigned long,4ul>::operator[](this + 1920, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetDepthMitigationReductionRenderDataArray(re::RealityDataPipe *this)
{
  if (*(this + 245))
  {
    return this + 1920;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addSceneUnderstandingDepthRenderData(uint64_t a1, __int128 *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 2016);
  v5 = *(a1 + 1984);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::SceneUnderstandingDepthRenderData,4ul>::setBucketsCapacity((a1 + 1976), (v4 + 4) >> 2);
    v5 = *(a1 + 1984);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 1992))
  {
    v6 = a1 + 2000;
  }

  else
  {
    v6 = *(a1 + 2008);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 2016);
  ++*(a1 + 2024);
  v8 = v7 + 56 * (v4 & 3);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  *(v8 + 48) = *(a2 + 6);
  *(v8 + 16) = v10;
  *(v8 + 32) = v11;
  *v8 = v9;
  v12 = *(a1 + 2016);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](a1 + 1976, v12 - 1);
}

unint64_t re::RealityDataPipe::tryGetSceneUnderstandingDepthRenderData(re::RealityDataPipe *this)
{
  if (*(this + 252))
  {
    return re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::operator[](this + 1976, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetSceneUnderstandingDepthRenderDataArray(re::RealityDataPipe *this)
{
  if (*(this + 252))
  {
    return this + 1976;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addAnchorTransformData(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 2072);
  v5 = *(a1 + 2040);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity((a1 + 2032), (v4 + 4) >> 2);
    v5 = *(a1 + 2040);
  }

  if (v5 <= v4 >> 2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v22 = 858;
    v23 = 2048;
    v24 = v4 >> 2;
    v25 = 2048;
    v26 = v5;
    _os_log_send_and_compose_impl(v15, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v16, v17);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 2048))
  {
    v6 = a1 + 2056;
  }

  else
  {
    v6 = *(a1 + 2064);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 2072);
  ++*(a1 + 2080);
  v8 = v7 + 40 * (v4 & 3);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a1 + 2072);
  if (!v12)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1 + 2032, v12 - 1);
}

unint64_t re::RealityDataPipe::tryGetAnchorTransformData(re::RealityDataPipe *this)
{
  if (*(this + 259))
  {
    return re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](this + 2032, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetAnchorTransformDataArray(re::RealityDataPipe *this)
{
  if (*(this + 259))
  {
    return this + 2032;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addVirtualEnvironmentProbeContext(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 2128);
  v5 = *(a1 + 2096);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::VirtualEnvironmentProbeContext,4ul>::setBucketsCapacity((a1 + 2088), (v4 + 4) >> 2);
    v5 = *(a1 + 2096);
  }

  if (v5 <= v4 >> 2)
  {
    v21 = 0;
    memset(v30, 0, sizeof(v30));
    v17 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v25 = 858;
    v26 = 2048;
    v27 = v4 >> 2;
    v28 = 2048;
    v29 = v5;
    _os_log_send_and_compose_impl(v18, &v21, v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  if (*(a1 + 2104))
  {
    v6 = a1 + 2112;
  }

  else
  {
    v6 = *(a1 + 2120);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 2128);
  ++*(a1 + 2136);
  v8 = v7 + ((v4 & 3) << 7);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  v12 = *(a2 + 48);
  v13 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v13;
  *(v8 + 48) = v12;
  LODWORD(v11) = *(a2 + 96);
  *(v8 + 96) = v11;
  if (v11 == 1)
  {
    v14 = *(a2 + 104);
    *(v8 + 104) = *(v8 + 104) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
    *(v8 + 104) = *(a2 + 104) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
    *(v8 + 112) = *(a2 + 112);
    *(a2 + 104) = 0;
    *(a2 + 112) = &str_67;
  }

  v15 = *(a1 + 2128);
  if (!v15)
  {
LABEL_17:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  return re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](a1 + 2088, v15 - 1);
}

unint64_t re::RealityDataPipe::tryGetVirtualEnvironmentProbeContext(re::RealityDataPipe *this)
{
  if (*(this + 266))
  {
    return re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::operator[](this + 2088, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetVirtualEnvironmentProbeContextArray(re::RealityDataPipe *this)
{
  if (*(this + 266))
  {
    return this + 2088;
  }

  else
  {
    return 0;
  }
}

unint64_t re::RealityDataPipe::addMXIContext(uint64_t a1, __int128 *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 2184);
  v5 = *(a1 + 2152);
  if (v4 + 1 > 4 * v5)
  {
    re::BucketArray<re::MXIContext,4ul>::setBucketsCapacity((a1 + 2144), (v4 + 4) >> 2);
    v5 = *(a1 + 2152);
  }

  if (v5 <= v4 >> 2)
  {
    v31 = 0;
    memset(v40, 0, sizeof(v40));
    v27 = MEMORY[0x1E69E9C10];
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v35 = 858;
    v36 = 2048;
    v37 = v4 >> 2;
    v38 = 2048;
    v39 = v5;
    _os_log_send_and_compose_impl(v28, &v31, v40, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v29, v30);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 2160))
  {
    v6 = a1 + 2168;
  }

  else
  {
    v6 = *(a1 + 2176);
  }

  v7 = *(v6 + 8 * (v4 >> 2));
  ++*(a1 + 2184);
  ++*(a1 + 2192);
  v8 = v7 + 288 * (v4 & 3);
  v9 = *a2;
  v10 = a2[2];
  *(v8 + 16) = a2[1];
  *(v8 + 32) = v10;
  *v8 = v9;
  v11 = *(a2 + 6);
  *(v8 + 48) = *(v8 + 48) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  *(v8 + 48) = a2[3] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  *(v8 + 56) = *(a2 + 7);
  *(a2 + 6) = 0;
  *(a2 + 7) = &str_67;
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[7];
  *(v8 + 96) = a2[6];
  *(v8 + 112) = v14;
  *(v8 + 64) = v12;
  *(v8 + 80) = v13;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 128) = 0;
  *(v8 + 136) = *(a2 + 17);
  *(a2 + 17) = 0;
  v15 = *(v8 + 128);
  *(v8 + 128) = 0;
  *(v8 + 128) = *(a2 + 16);
  *(a2 + 16) = v15;
  v16 = *(v8 + 144);
  *(v8 + 144) = *(a2 + 18);
  *(a2 + 18) = v16;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 160) = *(a2 + 20);
  *(a2 + 20) = 0;
  v17 = *(v8 + 152);
  *(v8 + 152) = 0;
  *(v8 + 152) = *(a2 + 19);
  *(a2 + 19) = v17;
  v18 = *(v8 + 168);
  *(v8 + 168) = *(a2 + 21);
  *(a2 + 21) = v18;
  *(v8 + 208) = 0;
  *(v8 + 200) = 0;
  *(v8 + 184) = 0;
  *(v8 + 192) = 0;
  *(v8 + 176) = 0;
  v19 = *(a2 + 23);
  *(v8 + 176) = *(a2 + 22);
  *(v8 + 184) = v19;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  v20 = *(v8 + 192);
  *(v8 + 192) = *(a2 + 24);
  *(a2 + 24) = v20;
  v21 = *(v8 + 208);
  *(v8 + 208) = *(a2 + 26);
  *(a2 + 26) = v21;
  ++*(a2 + 50);
  ++*(v8 + 200);
  *(v8 + 216) = *(a2 + 27);
  *(a2 + 27) = 0;
  v22 = a2[14];
  v23 = a2[15];
  v24 = a2[17];
  *(v8 + 256) = a2[16];
  *(v8 + 272) = v24;
  *(v8 + 224) = v22;
  *(v8 + 240) = v23;
  v25 = *(a1 + 2184);
  if (!v25)
  {
    goto LABEL_15;
  }

  return re::BucketArray<re::LightInfoArrays,4ul>::operator[](a1 + 2144, v25 - 1);
}

unint64_t re::RealityDataPipe::tryGetMXIContext(re::RealityDataPipe *this)
{
  if (*(this + 273))
  {
    return re::BucketArray<re::LightInfoArrays,4ul>::operator[](this + 2144, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityDataPipe::tryGetMXIContextArray(re::RealityDataPipe *this)
{
  if (*(this + 273))
  {
    return this + 2144;
  }

  else
  {
    return 0;
  }
}

_anonymous_namespace_ *re::BucketArray<re::DynamicArray<re::RenderProfilerText>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DynamicArray<re::RenderProfilerText>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::DynamicArray<re::RenderProfilerText>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 160, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::CameraViewDescriptorsPerFrameData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::CameraViewDescriptorsPerFrameData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::CameraViewDescriptorsPerFrameData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 64, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 352, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::TintContext,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::TintContext,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::TintContext,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 128, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::MeshSceneCollection,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MeshSceneCollection,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::MeshSceneCollection,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 160, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::StaticTextInfo,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::StaticTextInfo,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::StaticTextInfo,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 32, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::FilterViewMeshScenes,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::FilterViewMeshScenes,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::FilterViewMeshScenes,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 160, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::MeshSortingCollection,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MeshSortingCollection,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::MeshSortingCollection,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 800, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::DepthMitigationRenderData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::DepthMitigationRenderData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::DepthMitigationRenderData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 560, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::SceneCRWSReferencePosition,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::SceneCRWSReferencePosition,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::SceneCRWSReferencePosition,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 64, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::SceneUnderstandingDepthRenderData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::SceneUnderstandingDepthRenderData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::SceneUnderstandingDepthRenderData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 224, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

unint64_t re::BucketArray<re::SFBSystemShellBlurContext,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 32 * (a2 & 3);
}

unint64_t re::BucketArray<re::OpenSkyData,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 208 * (a2 & 3);
}

unint64_t re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 320 * (a2 & 3);
}

unint64_t re::BucketArray<re::BlurPlanesRenderFrameData,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 88 * (a2 & 3);
}

uint64_t re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](a1, i);
      re::DynamicArray<re::VFXScene>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 6992 * (a2 & 3);
}

{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 866;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 6992 * (a2 & 3);
}

unint64_t re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + (a2 & 3);
}

unint64_t re::BucketArray<re::MeshSortingCollection,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 200 * (a2 & 3);
}

unint64_t re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) - (a2 & 3) + 8 * (a2 & 3);
}

unint64_t re::BucketArray<re::DepthMitigationRenderData,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 140 * (a2 & 3);
}

_anonymous_namespace_ *re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 160, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::Slice<re::UberClippingParametersEntry>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 64, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::Slice<re::UberClippingParametersEntry>,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::SFBSystemShellBlurContext,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 128, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::SFBSystemShellBlurContext,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::OpenSkyData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 832, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::OpenSkyData,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 1280, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::ProjectiveMeshShadowBuilderInputGlobalData,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::UIShadowRenderData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 192, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::UIShadowRenderData,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::BucketArray<re::IBLContext,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::IBLContext,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
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

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 56 * (v2 & 3);
}

_anonymous_namespace_ *re::BucketArray<re::IBLContext,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 224, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::IBLContext,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::BucketArray<re::MeshSceneCollection,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::MeshSceneCollection,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
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

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 40 * (v2 & 3);
}

uint64_t re::DynamicArray<re::MeshScene>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::MeshScene>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::MeshScene>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::MeshScene>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::MeshScene>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::MeshScene *,re::MeshScene *,re::MeshScene *>(&v31, *(a2 + 32), *(a2 + 32) + 736 * a1[2], a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = v9 + 736 * v4;
      v11 = a1[4];
      v12 = 736 * v8;
      do
      {
        v13 = v11 + v12;
        v14 = v9 + v12;
        memcpy((v11 + v12), (v9 + v12), 0x160uLL);
        re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(v11 + v12 + 352, v9 + v12 + 352);
        *(v13 + 416) = *(v9 + v12 + 416);
        v15 = *(v9 + v12 + 424);
        *(v13 + 424) = v15;
        if (v15 == 1)
        {
          *(v13 + 432) = *(v14 + 432);
        }

        v16 = *(v14 + 456);
        *(v13 + 440) = *(v14 + 440);
        *(v13 + 456) = v16;
        v17 = *(v14 + 472);
        v18 = *(v14 + 488);
        v19 = *(v14 + 504);
        *(v13 + 517) = *(v14 + 517);
        *(v13 + 488) = v18;
        *(v13 + 504) = v19;
        *(v13 + 472) = v17;
        v20 = *(v14 + 544);
        *(v13 + 544) = v20;
        if (v20 == 1)
        {
          v21 = v11 + v12;
          v22 = *(v9 + v12 + 576);
          *(v21 + 560) = *(v9 + v12 + 560);
          *(v21 + 576) = v22;
        }

        *(v13 + 592) = *(v14 + 592);
        v23 = *(v14 + 608);
        *(v13 + 608) = v23;
        if (v23 == 1)
        {
          v24 = (v11 + v12);
          v25 = *(v9 + v12 + 624);
          v26 = *(v9 + v12 + 640);
          v27 = *(v9 + v12 + 672);
          v24[41] = *(v9 + v12 + 656);
          v24[42] = v27;
          v24[39] = v25;
          v24[40] = v26;
        }

        v28 = *(v14 + 688);
        v29 = *(v14 + 704);
        *(v13 + 720) = *(v14 + 720);
        *(v13 + 688) = v28;
        *(v13 + 704) = v29;
        v11 += 736;
        v9 += 736;
      }

      while (v14 + 736 != v10);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::MeshScene *,re::MeshScene *,re::MeshScene *>(&v30, *(a2 + 32), *(a2 + 32) + 736 * v4, a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = -736 * v4 + 736 * v5;
      v7 = 736 * v4 + a1[4] + 352;
      do
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v7);
        v7 += 736;
        v6 -= 736;
      }

      while (v6);
    }
  }

  a1[2] = v4;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::MeshScene *,re::MeshScene *,re::MeshScene *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    memcpy((a4 + v7), (a2 + v7), 0x160uLL);
    if (a4 != a2)
    {
      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::copy((v8 + 352), v9 + 352);
    }

    *(v8 + 416) = *(v9 + 416);
    if (*(v8 + 424))
    {
      if (*(v9 + 424))
      {
        *(a4 + v7 + 432) = *(a2 + v7 + 432);
      }

      else
      {
        *(v8 + 424) = 0;
      }
    }

    else if (*(v9 + 424))
    {
      *(v8 + 424) = 1;
      *(a4 + v7 + 432) = *(a2 + v7 + 432);
    }

    v10 = a4 + v7;
    v11 = (a4 + v7 + 440);
    v12 = *(v9 + 456);
    *v11 = *(v9 + 440);
    v11[1] = v12;
    v13 = *(v9 + 472);
    v14 = *(v9 + 488);
    v15 = *(v9 + 504);
    *(v11 + 77) = *(v9 + 517);
    v11[3] = v14;
    v11[4] = v15;
    v11[2] = v13;
    if (*(a4 + v7 + 544))
    {
      if (*(v9 + 544))
      {
        v16 = a4 + v7;
        v17 = *(a2 + v7 + 576);
        *(v16 + 560) = *(a2 + v7 + 560);
        *(v16 + 576) = v17;
      }

      else
      {
        *(v10 + 544) = 0;
      }
    }

    else if (*(v9 + 544))
    {
      *(v10 + 544) = 1;
      v18 = a4 + v7;
      v19 = *(a2 + v7 + 576);
      *(v18 + 560) = *(a2 + v7 + 560);
      *(v18 + 576) = v19;
    }

    v20 = a4 + v7;
    *(a4 + v7 + 592) = *(v9 + 592);
    if (*(a4 + v7 + 608))
    {
      if (*(v9 + 608))
      {
        v21 = (a4 + v7);
        v22 = *(a2 + v7 + 624);
        v23 = *(a2 + v7 + 640);
        v24 = *(a2 + v7 + 672);
        v21[41] = *(a2 + v7 + 656);
        v21[42] = v24;
        v21[39] = v22;
        v21[40] = v23;
      }

      else
      {
        *(v20 + 608) = 0;
      }
    }

    else if (*(v9 + 608))
    {
      *(v20 + 608) = 1;
      v25 = (a4 + v7);
      v26 = *(a2 + v7 + 624);
      v27 = *(a2 + v7 + 640);
      v28 = *(a2 + v7 + 672);
      v25[41] = *(a2 + v7 + 656);
      v25[42] = v28;
      v25[39] = v26;
      v25[40] = v27;
    }

    v29 = a4 + v7;
    v30 = *(v9 + 688);
    v31 = *(v9 + 704);
    *(v29 + 720) = *(v9 + 720);
    *(v29 + 688) = v30;
    *(v29 + 704) = v31;
    v7 += 736;
  }

  while (v9 + 736 != v6);
  return v6;
}

uint64_t re::BucketArray<re::DynamicArray<re::RenderGraphFileProvider>,4ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::MipmapGenerationContext,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
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

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 40 * (v2 & 3);
}

_anonymous_namespace_ *re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 27968, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 4, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::ProbeLightingEnabledMetadata,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 28, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<SceneUnderstandingFlagEmitterData,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::DepthMitigationReductionRenderData,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 32, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::DepthMitigationReductionRenderData,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::VirtualEnvironmentProbeContext,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 512, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::VirtualEnvironmentProbeContext,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

_anonymous_namespace_ *re::BucketArray<re::MXIContext,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 1152, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    *(v3 + 5) = 0;
    result = re::BucketArray<re::MXIContext,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::allocInfo_RenderGraphSelectionParams(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_508))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BEA50, "RenderGraphSelectionParams");
    __cxa_guard_release(&_MergedGlobals_508);
  }

  return &unk_1EE1BEA50;
}

void re::initInfo_RenderGraphSelectionParams(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x5F078B5A7D39B3B4;
  v14[1] = "RenderGraphSelectionParams";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BE9E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE9E0))
  {
    v5 = re::introspectionAllocator();
    v11 = re::introspect_RenderGraphData(1, v6, v7, v8, v9, v10);
    v12 = (*(*v5 + 32))(v5, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "RenderGraphData";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 3;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BE9D8 = v12;
    __cxa_guard_release(&qword_1EE1BE9E0);
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1BE9D8;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphSelectionParams>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphSelectionParams>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphSelectionParams>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphSelectionParams>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

float32x4_t re::internal::defaultConstruct<re::RenderGraphSelectionParams>(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  a3->i64[0] = &unk_1F5D10168;
  a3->i64[1] = -1;
  a3[1].i64[0] = -1;
  a3[1].i64[1] = 0xFFFFFFFF00000000;
  a3[2].i32[0] = -1;
  v3.i64[0] = 0x3F0000003FLL;
  v3.i64[1] = 0x3F0000003FLL;
  result = vnegq_f32(v3);
  a3[3] = result;
  a3[4] = result;
  a3[5] = result;
  a3[6] = result;
  a3[7] = result;
  a3[8] = result;
  a3[9] = result;
  a3[10] = result;
  return result;
}

float32x4_t re::internal::defaultConstructV2<re::RenderGraphSelectionParams>(float32x4_t *a1)
{
  a1->i64[0] = &unk_1F5D10168;
  a1->i64[1] = -1;
  a1[1].i64[0] = -1;
  a1[1].i64[1] = 0xFFFFFFFF00000000;
  a1[2].i32[0] = -1;
  v1.i64[0] = 0x3F0000003FLL;
  v1.i64[1] = 0x3F0000003FLL;
  result = vnegq_f32(v1);
  a1[3] = result;
  a1[4] = result;
  a1[5] = result;
  a1[6] = result;
  a1[7] = result;
  a1[8] = result;
  a1[9] = result;
  a1[10] = result;
  return result;
}

re::RenderGraphSelectionEmitter *re::RenderGraphSelectionEmitter::RenderGraphSelectionEmitter(re::RenderGraphSelectionEmitter *this)
{
  *(this + 8) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  *(this + 124) = 0x7FFFFFFFLL;
  *this = &unk_1F5D10100;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 56) = 0;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 260) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 46) = 0;
  *(this + 276) = 0x7FFFFFFFLL;
  *(this + 36) = &unk_1F5D10168;
  *(this + 37) = -1;
  *(this + 38) = -1;
  *(this + 39) = 0xFFFFFFFF00000000;
  *(this + 80) = -1;
  v2.i64[0] = 0x3F0000003FLL;
  v2.i64[1] = 0x3F0000003FLL;
  v3 = vnegq_f32(v2);
  *(this + 21) = v3;
  *(this + 22) = v3;
  *(this + 23) = v3;
  *(this + 24) = v3;
  *(this + 25) = v3;
  *(this + 26) = v3;
  *(this + 27) = v3;
  *(this + 28) = v3;
  re::StringID::invalid((this + 464));
  *(this + 60) = 0;
  *(this + 61) = 0;
  *(this + 62) = &str_67;
  return this;
}

uint64_t re::RenderGraphSelectionEmitter::handleRenderFrameData(uint64_t this, re::RenderFrame *a2)
{
  v3 = this;
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 74);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 35);
    while (1)
    {
      v7 = *v6;
      v6 += 18;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 74);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a2 + 35);
    v24 = *(a2 + 74);
    while (1)
    {
      v9 = v8 + 72 * v5;
      v10 = **(re::RenderFrameData::stream((a2 + 264), (v9 + 8)) + 48);
      this = (*(v10 + 488))();
      v12 = this;
      if (*(v3 + 488) <= 1uLL)
      {
        v13 = *(v3 + 496);
        if (v13)
        {
          if (!*v13)
          {
            break;
          }
        }
      }

      if (this)
      {
        if (!*(this + 40))
        {
          re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 761, v24);
          _os_crash("assertion failure: (m_size > 0) Array is empty");
          __break(1u);
LABEL_42:
          re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 761);
          _os_crash("assertion failure: (m_size > 0) Array is empty");
          __break(1u);
LABEL_43:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        v14 = re::BucketArray<re::SceneName,4ul>::operator[](this, v11);
        this = re::StringID::operator==((v14 + 8), (v3 + 488));
        if (this)
        {
          if (!*(v12 + 40))
          {
            goto LABEL_42;
          }

          this = re::BucketArray<re::SceneName,4ul>::operator[](v12, v15);
          if (!*(this + 24))
          {
            break;
          }
        }
      }

      if (*(a2 + 74) <= (v5 + 1))
      {
        v22 = v5 + 1;
      }

      else
      {
        v22 = *(a2 + 74);
      }

      v8 = *(a2 + 35);
      while (v22 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 72 * v5) & 0x80000000) != 0)
        {
          goto LABEL_37;
        }
      }

      LODWORD(v5) = v22;
LABEL_37:
      if (v5 == v4)
      {
        return this;
      }
    }

    strcpy(v29, "Selection");
    strcpy(v28, "Selection");
    if ((atomic_load_explicit(&qword_1EE1BE9F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BE9F8))
    {
      qword_1EE1BE9F0 = re::getCombinedScopeHash(v29, v28, v23);
      __cxa_guard_release(&qword_1EE1BE9F8);
    }

    v26[0] = &unk_1F5D10710;
    v26[1] = v3;
    v27 = v26;
    v16 = re::RenderFrameData::stream((a2 + 264), (v9 + 8));
    re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v16, &v25, &v30);
    {
LABEL_24:
      if (v27 == v26)
      {
        (*(*v27 + 32))(v27);
      }

      else if (v27)
      {
        (*(*v27 + 40))();
      }

      v30 = v29[0];
      v31 = v29[1];
      v32 = v28[0];
      v33 = v28[1];
      operator new();
    }

    v20 = 0;
    while (1)
    {
      v21 = re::BucketArray<unsigned long,4ul>::operator[](v18, v20);
      if (!v27)
      {
        goto LABEL_43;
      }

      (*(*v27 + 48))(v27, a2, a2 + 32, v21);
      if (v19 == ++v20)
      {
        goto LABEL_24;
      }
    }
  }

  return this;
}

re *re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphSelectionEmitter *this, re::RenderGraphManager *a2, AssetService *a3)
{
  v12[5] = *MEMORY[0x1E69E9840];
  result = re::FontID::isValid((this + 464));
  if ((result & 1) == 0)
  {
    v6 = re::globalAllocators(result);
    v7 = v6[2];
    v12[0] = &unk_1F5D101A8;
    v12[1] = this;
    v12[3] = v7;
    v12[4] = v12;
    v8 = re::globalAllocators(v6)[2];
    v11[0] = &unk_1F5D10328;
    v11[1] = this;
    v11[3] = v8;
    v11[4] = v11;
    re::RenderGraphManager::addProvider(a2, "Selection", v12, v11, 0, v10);
    v9 = re::StringID::operator=((this + 464), v10);
    *(this + 60) = v10[2];
    if (v10[0])
    {
      if (v10[0])
      {
      }
    }

    v10[0] = 0;
    v10[1] = &str_67;
    re::FunctionBase<24ul,void ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v11);
    return re::FunctionBase<24ul,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::destroyCallable(v12);
  }

  return result;
}

void re::RenderGraphSelectionEmitter::unregisterProviders(const StringID *this, re::RenderGraphManager *a2)
{
  if (re::FontID::isValid(&this[29]))
  {
    re::StringID::StringID(v5, this + 29);
    v5[2] = *&this[30].var0;
    v4 = re::RenderGraphManager::removeProvider(a2, v5);
    if (v5[0])
    {
      if (v5[0])
      {
      }
    }

    v5[0] = 0;
    v5[1] = &str_67;
    re::ProviderHandle::invalidate(&this[29]);
  }
}

void re::ProviderHandle::invalidate(re::ProviderHandle *this)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  re::StringID::invalid(v3);
  v4 = 0;
  v2 = re::StringID::operator=(this, v3);
  *(this + 2) = v4;
  if (v3[0])
  {
    if (v3[0])
    {
    }
  }
}

uint64_t re::RenderGraphSelectionEmitter::addSelectionCompleteCallback(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[3] = 0;
  v6 = v4;
  std::function<void ()(re::Slice<unsigned long long> const&)>::operator=(v7, a3);
  re::DynamicArray<re::SelectionCompleteHandler>::add((a1 + 160), &v6);
  return std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100](v7);
}

void *std::function<void ()(re::Slice<unsigned long long> const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::__value_func[abi:nn200100](v4, a2);
  std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t re::DynamicArray<re::SelectionCompleteHandler>::add(_anonymous_namespace_ *this, void *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SelectionCompleteHandler>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 40 * v4);
  *v5 = *a2;
  result = std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::__value_func[abi:nn200100]((v5 + 1), (a2 + 1));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderGraphSelectionEmitter::addSelectionConcludeCallback(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v7[3] = 0;
  v6 = v4;
  std::function<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::operator=(v7, a3);
  re::DynamicArray<re::SelectionConcludeHandler>::add((a1 + 200), &v6);
  return std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100](v7);
}

void *std::function<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::__value_func[abi:nn200100](v4, a2);
  std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t re::DynamicArray<re::SelectionConcludeHandler>::add(_anonymous_namespace_ *this, void *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SelectionConcludeHandler>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 40 * v4);
  *v5 = *a2;
  result = std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::__value_func[abi:nn200100]((v5 + 1), (a2 + 1));
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::RenderGraphSelectionEmitter::setFilteredEntityIDSet(re::RenderGraphSelectionEmitter *this, const __CFArray *a2)
{
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 240);
  result = CFArrayGetCount(a2);
  if (result >= 1)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      valuePtr = 0;
      result = CFNumberGetValue(ValueAtIndex, kCFNumberLongLongType, &valuePtr);
      if (result)
      {
        v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (valuePtr ^ (valuePtr >> 30))) ^ ((0xBF58476D1CE4E5B9 * (valuePtr ^ (valuePtr >> 30))) >> 27));
        v9 = v8 ^ (v8 >> 31);
        v10 = *(this + 66);
        if (v10)
        {
          v11 = v9 % v10;
          v12 = *(*(this + 31) + 4 * (v9 % v10));
          if (v12 != 0x7FFFFFFF)
          {
            v13 = *(this + 32);
            while (*(v13 + 24 * v12 + 16) != valuePtr)
            {
              LODWORD(v12) = *(v13 + 24 * v12 + 8) & 0x7FFFFFFF;
              if (v12 == 0x7FFFFFFF)
              {
                goto LABEL_11;
              }
            }

            continue;
          }
        }

        else
        {
          LODWORD(v11) = 0;
        }

LABEL_11:
        result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(this + 240, v11, v9, &valuePtr, &valuePtr);
        ++*(this + 70);
      }
    }
  }

  return result;
}

void *re::allocInfo_RenderGraphSelectionEmitter(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BEA00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEA00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BEAE0, "RenderGraphSelectionEmitter");
    __cxa_guard_release(&qword_1EE1BEA00);
  }

  return &unk_1EE1BEAE0;
}

void re::initInfo_RenderGraphSelectionEmitter(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x81E9DFF0C63BCB34;
  v13[1] = "RenderGraphSelectionEmitter";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1BEA08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEA08))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphEmitterBase(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphEmitterBase";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1BEA40 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_AssetHandle(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "selectionMaterial";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x8800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1BEA48 = v11;
    __cxa_guard_release(&qword_1EE1BEA08);
  }

  *(this + 2) = 0x20000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BEA40;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphSelectionEmitter>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphSelectionEmitter>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphSelectionEmitter>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphSelectionEmitter>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

double re::internal::defaultDestruct<re::RenderGraphSelectionEmitter>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::StringID::destroyString((a3 + 61));
  re::StringID::destroyString((a3 + 58));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a3 + 30);
  re::DynamicArray<re::SelectionConcludeHandler>::deinit((a3 + 25));
  re::DynamicArray<re::SelectionCompleteHandler>::deinit((a3 + 20));
  re::AssetHandle::~AssetHandle((a3 + 17));
  *a3 = &unk_1F5D151C0;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a3 + 11);
  re::DynamicArray<re::BindPointAndPath>::deinit((a3 + 6));

  return re::BindNode::deinit((a3 + 2));
}

double re::internal::defaultDestructV2<re::RenderGraphSelectionEmitter>(uint64_t *a1)
{
  re::StringID::destroyString((a1 + 61));
  re::StringID::destroyString((a1 + 58));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 30);
  re::DynamicArray<re::SelectionConcludeHandler>::deinit((a1 + 25));
  re::DynamicArray<re::SelectionCompleteHandler>::deinit((a1 + 20));
  re::AssetHandle::~AssetHandle((a1 + 17));
  *a1 = &unk_1F5D151C0;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1 + 11);
  re::DynamicArray<re::BindPointAndPath>::deinit((a1 + 6));

  return re::BindNode::deinit((a1 + 2));
}

void re::RenderGraphSelectionEmitter::~RenderGraphSelectionEmitter(re::RenderGraphSelectionEmitter *this)
{
  re::StringID::destroyString((this + 488));
  re::StringID::destroyString((this + 464));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 30);
  re::DynamicArray<re::SelectionConcludeHandler>::deinit(this + 200);
  re::DynamicArray<re::SelectionCompleteHandler>::deinit(this + 160);
  re::AssetHandle::~AssetHandle((this + 136));
  *this = &unk_1F5D151C0;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 11);
  re::DynamicArray<re::BindPointAndPath>::deinit(this + 48);
  re::BindNode::deinit((this + 16));
}

{
  re::StringID::destroyString((this + 488));
  re::StringID::destroyString((this + 464));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 30);
  re::DynamicArray<re::SelectionConcludeHandler>::deinit(this + 200);
  re::DynamicArray<re::SelectionCompleteHandler>::deinit(this + 160);
  re::AssetHandle::~AssetHandle((this + 136));
  *this = &unk_1F5D151C0;
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 11);
  re::DynamicArray<re::BindPointAndPath>::deinit(this + 48);
  re::BindNode::deinit((this + 16));

  JUMPOUT(0x1E6906520);
}

unint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_0,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::operator()(uint64_t a1, const char **a2, const char **a3, unint64_t *a4)
{
  v171 = *MEMORY[0x1E69E9840];
  v6 = 0x9E3779B97F4A7C17;
  v7 = *a2;
  v8 = *a3;
  v9 = *(a1 + 8);
  v10 = strlen(*a2);
  if (v10)
  {
    MurmurHash3_x64_128(v7, v10, 0, &v163);
    v11 = (v164 - 0x61C8864680B583E9 + (v163 << 6) + (v163 >> 2)) ^ v163;
  }

  else
  {
    v11 = 0;
  }

  v12 = strlen(v8);
  if (v12)
  {
    MurmurHash3_x64_128(v8, v12, 0, &v163);
    v13 = ((v164 - 0x61C8864680B583E9 + (v163 << 6) + (v163 >> 2)) ^ v163) - 0x61C8864680B583E9;
  }

  else
  {
    v13 = 0x9E3779B97F4A7C17;
  }

  v14 = ((v11 >> 2) + (v11 << 6) + v13) ^ v11;
  v15 = "N2re16SkyboxMeshIDDataE";
  if (("N2re16SkyboxMeshIDDataE" & 0x8000000000000000) != 0)
  {
    v16 = ("N2re16SkyboxMeshIDDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  v19 = (v14 - 0x61C8864680B583E9);
  v20 = (a4 + 12);
  if (!a4[12])
  {
    goto LABEL_18;
  }

  v21 = (&v19[4 * v15] + (v15 >> 2)) ^ v15;
  v22 = *(a4[13] + 4 * (v21 % *(a4 + 30)));
  if (v22 == 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  v23 = a4[14];
  while (*(v23 + 24 * v22 + 8) != v21)
  {
    v22 = *(v23 + 24 * v22) & 0x7FFFFFFF;
    if (v22 == 0x7FFFFFFF)
    {
      goto LABEL_18;
    }
  }

  v24 = *(v23 + 24 * v22 + 16);
  if (v24)
  {
    v25 = 0;
    v4 = *(v24 + 8);
  }

  else
  {
LABEL_18:
    v25 = 1;
  }

  v155 = re::RenderGraphDataStore::get<re::CurrentSelectionData>((a4 + 4), v14);
  v156 = v8;
  v158 = *(*(v155 + 8) + 840);
  v157 = *(v158 + 40);
  v154 = a4 + 12;
  if (!v157)
  {
    goto LABEL_39;
  }

  v152 = v19;
  v153 = a4;
  v20 = 0;
  v26 = 0;
  a4 = &v163;
  v19 = v167;
  while (1)
  {
    v27 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v158, v26);
    v28 = *(v27 + 16);
    if (v28)
    {
      break;
    }

LABEL_36:
    if (++v26 == v157)
    {
      v39 = 8 * v20;
      v6 = 0x9E3779B97F4A7C17;
      v19 = v152;
      a4 = v153;
      v20 = v154;
      goto LABEL_40;
    }
  }

  v6 = *(v27 + 32);
  v29 = v6 + 736 * v28;
  while (1)
  {
    if ((v25 & 1) == 0 && *(v6 + 512) == v4 || re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v9 + 240, (v6 + 512)))
    {
      goto LABEL_35;
    }

    v163 = v6;
    v31 = *(v6 + 112);
    v164 = *v31;
    v165 = v31[1];
    v32 = *(v6 + 8);
    *&v167[0] = 0;
    *(&v167[0] + 1) = v32;
    v167[1] = xmmword_1E3047670;
    v167[2] = xmmword_1E3047680;
    v167[3] = xmmword_1E30476A0;
    v167[4] = xmmword_1E30474D0;
    v168 = 0;
    v169 = 0;
    if (!*(v6 + 56))
    {
      break;
    }

    v170 = *(v6 + 48);
    v33 = *(&v170 + 1);
    if (*(&v170 + 1))
    {
      v34 = v170;
      goto LABEL_30;
    }

LABEL_35:
    v6 += 736;
    if (v6 == v29)
    {
      goto LABEL_36;
    }
  }

  *&v170 = v167;
  *(&v170 + 1) = 1;
  v34 = v167;
  v33 = 1;
LABEL_30:
  v35 = v34 + 1;
  v36 = v33;
  while (v36)
  {
    v37 = *(v35 - 1);
    v38 = *v35 - v37;
    if (*v35 < v37)
    {
      v38 = 0;
    }

    v20 += v38;
    v35 += 12;
    if (!--v36)
    {
      goto LABEL_35;
    }
  }

  re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v33 - 1, v33);
  _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v150, v151);
  __break(1u);
LABEL_39:
  v39 = 0;
LABEL_40:
  if (([*(a4[1] + 208) supportsFamily:1007] & 1) == 0)
  {
    [*(a4[1] + 208) supportsFamily:2002];
  }

  v40 = "N2re27SelectionDrawCallBufferDataE";
  if (("N2re27SelectionDrawCallBufferDataE" & 0x8000000000000000) != 0)
  {
    v41 = ("N2re27SelectionDrawCallBufferDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v42 = 5381;
    do
    {
      v40 = v42;
      v43 = *v41++;
      v42 = (33 * v42) ^ v43;
    }

    while (v43);
  }

  v163 = (&v19[4 * v40] + (v40 >> 2)) ^ v40;
  v44 = (*(*a4[5] + 32))(a4[5], 16, 8);
  *v44 = &unk_1F5D10258;
  v44[1] = v39;
  v162 = v44;
  v45 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v20, &v163, &v162);
  v46 = a4[49];
  v162 = 0;
  {
    re::introspect<re::CameraData>(BOOL)::info = re::introspect_CameraData(0, v145, v146, v147, v148, v149);
  }

  v161 = re::introspect<re::CameraData>(BOOL)::info;
  v47 = strlen(*(re::introspect<re::CameraData>(BOOL)::info + 6));
  if (v47)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraData>(BOOL)::info + 6), v47, 0, &v163);
    v48 = (v164 + v6 + (v163 << 6) + (v163 >> 2)) ^ v163;
  }

  else
  {
    v48 = 0;
  }

  v162 = v48;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace((a4 + 26), &v162, &v161);
  v163 = (&v19[4 * v162] + (v162 >> 2)) ^ v162;
  v49 = (*(*a4[5] + 32))(a4[5], 960, 16);
  v161 = re::CameraData::CameraData(v49, v46);
  v50 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v20, &v163, &v161);
  v51 = *(v155 + 8);
  *(v50 + 840) = v51[105];
  *(v50 + 848) = v51[106];
  re::DynamicInlineArray<re::RenderCamera,2ul>::operator=((v50 + 48), v51 + 6);
  v52 = *(v155 + 8);
  if (v50 != v52)
  {
    re::DynamicInlineArray<re::Projection,2ul>::copy((v50 + 128), (v52 + 128));
    ++*(v50 + 136);
  }

  v53 = (*(v9 + 308) * *(v9 + 304));
  v54 = *(v45 + 8);
  if (v54)
  {
    if (v156)
    {
      v55 = *v156;
      if (*v156)
      {
        v56 = v156[1];
        if (v56)
        {
          v57 = (v156 + 2);
          do
          {
            v55 = 31 * v55 + v56;
            v58 = *v57++;
            v56 = v58;
          }

          while (v58);
        }

        v55 &= ~0x8000000000000000;
      }
    }

    else
    {
      v55 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v162 = v55;
    v59 = *(*a4 + 296);
    LOBYTE(v165) = 0;
    HIDWORD(v165) = 1065353216;
    v167[0] = xmmword_1E3062D70;
    v166 = 0xFFFFFFFF00000000;
    v164 = v54;
    LODWORD(v163) = 2;
    v161 = 0x2618A8D597CCFD23;
    v159 = 0x2618A8D597CCFD23;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v59, &v162, &v161, &v159, a4, &v163, &v160, 0);
  }

  if (v53)
  {
    v60 = v19;
    v61 = 16 * v53;
    v62 = *(v50 + 48) * 16 * v53;
    if (v156)
    {
      v63 = *v156;
      if (*v156)
      {
        v64 = v156[1];
        if (v64)
        {
          v65 = (v156 + 2);
          do
          {
            v63 = 31 * v63 + v64;
            v66 = *v65++;
            v64 = v66;
          }

          while (v66);
        }

        v63 &= ~0x8000000000000000;
      }
    }

    else
    {
      v63 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v162 = v63;
    v67 = *(*a4 + 296);
    LOBYTE(v165) = 0;
    HIDWORD(v165) = 1065353216;
    v167[0] = xmmword_1E3062D70;
    v166 = 0xFFFFFFFF00000000;
    v164 = v62;
    LODWORD(v163) = 2;
    v161 = 0x211811B8C8C65228;
    v159 = 0x211811B8C8C65228;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v67, &v162, &v161, &v159, a4, &v163, &v160, 0);
    v68 = *(v50 + 48) * v61;
    if (v156)
    {
      v69 = *v156;
      if (*v156)
      {
        v70 = v156[1];
        if (v70)
        {
          v71 = (v156 + 2);
          do
          {
            v69 = 31 * v69 + v70;
            v72 = *v71++;
            v70 = v72;
          }

          while (v72);
        }

        v69 &= ~0x8000000000000000;
      }
    }

    else
    {
      v69 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v162 = v69;
    v73 = *(*a4 + 296);
    LOBYTE(v165) = 0;
    HIDWORD(v165) = 1065353216;
    v167[0] = xmmword_1E3062D70;
    v166 = 0xFFFFFFFF00000000;
    v164 = v68;
    LODWORD(v163) = 2;
    v161 = 0x211811B8FDAC8D69;
    v159 = 0x211811B8FDAC8D69;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v73, &v162, &v161, &v159, a4, &v163, &v160, 0);
    v74 = *(v50 + 48) * v61;
    if (v156)
    {
      v75 = *v156;
      if (*v156)
      {
        v76 = v156[1];
        if (v76)
        {
          v77 = (v156 + 2);
          do
          {
            v75 = 31 * v75 + v76;
            v78 = *v77++;
            v76 = v78;
          }

          while (v78);
        }

        v75 &= ~0x8000000000000000;
      }
    }

    else
    {
      v75 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v162 = v75;
    v79 = *(*a4 + 296);
    LOBYTE(v165) = 0;
    HIDWORD(v165) = 1065353216;
    v167[0] = xmmword_1E3062D70;
    v166 = 0xFFFFFFFF00000000;
    v164 = v74;
    LODWORD(v163) = 2;
    v161 = 0x211811B93292C8AALL;
    v159 = 0x211811B93292C8AALL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v79, &v162, &v161, &v159, a4, &v163, &v160, 0);
    v80 = *(v50 + 48) * v61;
    if (v156)
    {
      v81 = *v156;
      if (*v156)
      {
        v82 = v156[1];
        if (v82)
        {
          v83 = (v156 + 2);
          do
          {
            v81 = 31 * v81 + v82;
            v84 = *v83++;
            v82 = v84;
          }

          while (v84);
        }

        v81 &= ~0x8000000000000000;
      }
    }

    else
    {
      v81 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v162 = v81;
    v85 = *(*a4 + 296);
    LOBYTE(v165) = 0;
    HIDWORD(v165) = 1065353216;
    v167[0] = xmmword_1E3062D70;
    v166 = 0xFFFFFFFF00000000;
    v164 = v80;
    LODWORD(v163) = 2;
    v161 = 0x211811B9677903EBLL;
    v159 = 0x211811B9677903EBLL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v85, &v162, &v161, &v159, a4, &v163, &v160, 0);
    v86 = *(v50 + 48) * v61;
    if (v156)
    {
      v87 = *v156;
      if (*v156)
      {
        v88 = v156[1];
        if (v88)
        {
          v89 = (v156 + 2);
          do
          {
            v87 = 31 * v87 + v88;
            v90 = *v89++;
            v88 = v90;
          }

          while (v90);
        }

        v87 &= ~0x8000000000000000;
      }
    }

    else
    {
      v87 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v162 = v87;
    v91 = *(*a4 + 296);
    LOBYTE(v165) = 0;
    HIDWORD(v165) = 1065353216;
    v167[0] = xmmword_1E3062D70;
    v166 = 0xFFFFFFFF00000000;
    v164 = v86;
    LODWORD(v163) = 2;
    v161 = 0x211811B99C5F3F2CLL;
    v159 = 0x211811B99C5F3F2CLL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v91, &v162, &v161, &v159, a4, &v163, &v160, 0);
    v92 = *(v50 + 48) * v61;
    if (v156)
    {
      v93 = *v156;
      if (*v156)
      {
        v94 = v156[1];
        if (v94)
        {
          v95 = (v156 + 2);
          do
          {
            v93 = 31 * v93 + v94;
            v96 = *v95++;
            v94 = v96;
          }

          while (v96);
        }

        v93 &= ~0x8000000000000000;
      }
    }

    else
    {
      v93 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v162 = v93;
    v97 = *(*a4 + 296);
    LOBYTE(v165) = 0;
    HIDWORD(v165) = 1065353216;
    v167[0] = xmmword_1E3062D70;
    v166 = 0xFFFFFFFF00000000;
    v164 = v92;
    LODWORD(v163) = 2;
    v161 = 0x211811B9D1457A6DLL;
    v159 = 0x211811B9D1457A6DLL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v97, &v162, &v161, &v159, a4, &v163, &v160, 0);
    v98 = *(v50 + 48) * v61;
    if (v156)
    {
      v99 = *v156;
      if (*v156)
      {
        v100 = v156[1];
        if (v100)
        {
          v101 = (v156 + 2);
          do
          {
            v99 = 31 * v99 + v100;
            v102 = *v101++;
            v100 = v102;
          }

          while (v102);
        }

        v99 &= ~0x8000000000000000;
      }
    }

    else
    {
      v99 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v162 = v99;
    v103 = *(*a4 + 296);
    LOBYTE(v165) = 0;
    HIDWORD(v165) = 1065353216;
    v167[0] = xmmword_1E3062D70;
    v166 = 0xFFFFFFFF00000000;
    v164 = v98;
    LODWORD(v163) = 2;
    v161 = 0x211811BA062BB5AELL;
    v159 = 0x211811BA062BB5AELL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v103, &v162, &v161, &v159, a4, &v163, &v160, 0);
    v104 = *(v50 + 48) * v61;
    if (v156)
    {
      v105 = *v156;
      v19 = v60;
      if (*v156)
      {
        v106 = v156[1];
        if (v106)
        {
          v107 = (v156 + 2);
          do
          {
            v105 = 31 * v105 + v106;
            v108 = *v107++;
            v106 = v108;
          }

          while (v108);
        }

        v105 &= ~0x8000000000000000;
      }
    }

    else
    {
      v105 = 0x7FFFFFFFFFFFFFFFLL;
      v19 = v60;
    }

    v162 = v105;
    v109 = *(*a4 + 296);
    LOBYTE(v165) = 0;
    HIDWORD(v165) = 1065353216;
    v167[0] = xmmword_1E3062D70;
    v166 = 0xFFFFFFFF00000000;
    v164 = v104;
    LODWORD(v163) = 2;
    v161 = 0x211811BA3B11F0EFLL;
    v159 = 0x211811BA3B11F0EFLL;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v109, &v162, &v161, &v159, a4, &v163, &v160, 0);
    v20 = v154;
  }

  v162 = 0;
  if ((atomic_load_explicit(&qword_1EE1BEA18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEA18))
  {
    qword_1EE1BEA10 = re::internal::getOrCreateInfo("RenderGraphSelectionParams", re::allocInfo_RenderGraphSelectionParams, re::initInfo_RenderGraphSelectionParams, &unk_1EE1BE9E8, 0);
    __cxa_guard_release(&qword_1EE1BEA18);
  }

  v161 = qword_1EE1BEA10;
  v110 = strlen(*(qword_1EE1BEA10 + 48));
  if (v110)
  {
    MurmurHash3_x64_128(*(qword_1EE1BEA10 + 48), v110, 0, &v163);
    v111 = (v164 + v6 + (v163 << 6) + (v163 >> 2)) ^ v163;
  }

  else
  {
    v111 = 0;
  }

  v162 = v111;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace((a4 + 26), &v162, &v161);
  v163 = (&v19[4 * v162] + (v162 >> 2)) ^ v162;
  v112 = (*(*a4[5] + 32))(a4[5], 176, 16);
  *v112 = &unk_1F5D10168;
  v114 = *(v9 + 312);
  v113 = *(v9 + 328);
  *(v112 + 8) = *(v9 + 296);
  *(v112 + 24) = v114;
  *(v112 + 40) = v113;
  v115 = *(v9 + 376);
  v116 = *(v9 + 392);
  v117 = *(v9 + 360);
  *(v112 + 56) = *(v9 + 344);
  *(v112 + 104) = v116;
  *(v112 + 88) = v115;
  *(v112 + 72) = v117;
  v119 = *(v9 + 424);
  v118 = *(v9 + 440);
  v120 = *(v9 + 456);
  *(v112 + 120) = *(v9 + 408);
  *(v112 + 168) = v120;
  *(v112 + 152) = v118;
  *(v112 + 136) = v119;
  v161 = v112;
  v121 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v20, &v163, &v161);
  v122 = re::globalAllocators(v121);
  v123 = (*(*v122[2] + 32))(v122[2], 40, 8);
  v124 = v123;
  *(v123 + 32) = 0;
  *(v123 + 8) = 0;
  *(v123 + 16) = 0;
  *v123 = 0;
  v125 = "N2re22DrawCallIdentifierDataE";
  *(v123 + 24) = 0;
  if (("N2re22DrawCallIdentifierDataE" & 0x8000000000000000) != 0)
  {
    v126 = ("N2re22DrawCallIdentifierDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v127 = 5381;
    do
    {
      v125 = v127;
      v128 = *v126++;
      v127 = (33 * v127) ^ v128;
    }

    while (v128);
  }

  v163 = (&v19[4 * v125] + (v125 >> 2)) ^ v125;
  v129 = re::globalAllocators(v123);
  v130 = (*(*v129[2] + 32))(v129[2], 16, 8);
  *v130 = &unk_1F5D10298;
  v130[1] = v124;
  v162 = v130;
  v131 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew((a4 + 6), &v163, &v162);
  v132 = *(*v131 + 8);
  v166 = re::globalAllocators(v131)[2];
  v133 = (*(*v166 + 32))(v166, 32, 0);
  *v133 = &unk_1F5D102C0;
  v133[1] = v9;
  v133[2] = v132;
  v133[3] = a4;
  *&v167[0] = v133;
  re::DynamicArray<re::Function<void ()(re::FrameCount const&)>>::add((a4 + 507), &v163);
  re::FunctionBase<24ul,void ()(re::FrameCount const&)>::destroyCallable(&v163);
  if (!*(v45 + 8))
  {
    return 0;
  }

  v134 = *(re::AssetHandle::assetInfo((v9 + 136)) + 10);
  if (v134 == -1)
  {
    v134 = 0;
  }

  v135 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v134 ^ (v134 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v134 ^ (v134 >> 30))) >> 27));
  v136 = 0xBF58476D1CE4E5B9 * (*(v9 + 316) ^ (*(v9 + 316) >> 30));
  v137 = (0x94D049BB133111EBLL * (v136 ^ (v136 >> 27))) ^ ((0x94D049BB133111EBLL * (v136 ^ (v136 >> 27))) >> 31);
  v138 = 0xBF58476D1CE4E5B9 * (*(v9 + 320) ^ (*(v9 + 320) >> 30));
  v139 = (v6 + ((v135 ^ (v135 >> 31)) << 6) + ((v135 ^ (v135 >> 31)) >> 2) + ((((0x94D049BB133111EBLL * (v138 ^ (v138 >> 27))) ^ ((0x94D049BB133111EBLL * (v138 ^ (v138 >> 27))) >> 31)) + v6 + (v137 << 6) + (v137 >> 2)) ^ v137)) ^ v135 ^ (v135 >> 31);
  v140 = 0xBF58476D1CE4E5B9 * (*(v9 + 304) ^ (*(v9 + 304) >> 30));
  v141 = (0x94D049BB133111EBLL * (v140 ^ (v140 >> 27))) ^ ((0x94D049BB133111EBLL * (v140 ^ (v140 >> 27))) >> 31);
  v142 = *(v9 + 308) ^ (*(v9 + 308) >> 30);
  v143 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v142) ^ ((0xBF58476D1CE4E5B9 * v142) >> 27));
  return ((((v143 ^ (v143 >> 31)) + v6 + (v141 << 6) + (v141 >> 2)) ^ v141) + v6 + (v139 << 6) + (v139 >> 2)) ^ v139;
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_0,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D101A8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_0,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D101A8;
  a2[1] = v2;
  return a2;
}

uint64_t *re::DynamicInlineArray<re::RenderCamera,2ul>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = *a1;
    v5 = *a2 - *a1;
    if (*a2 >= *a1)
    {
      v6 = a2 + 2;
      v7 = &v6[4 * v4];
      v8 = a1 + 2;
      if (v4)
      {
        memmove(a1 + 2, v6, 32 * v4);
      }

      memcpy(&v8[4 * v4], v7, 32 * v5);
    }

    else if (v3)
    {
      memmove(a1 + 2, a2 + 2, 32 * v3);
    }

    *a1 = v3;
    ++*(a1 + 2);
  }

  return a1;
}

uint64_t re::RenderGraphDataStore::get<re::CurrentSelectionData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re20CurrentSelectionDataE";
  if (("N2re20CurrentSelectionDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re20CurrentSelectionDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

__int128 *re::DynamicInlineArray<re::Projection,2ul>::copy(void *a1, __int128 *a2)
{
  v3 = a2 + 1;
  v4 = *a2;
  v5 = a1 + 2;
  if (*a2 >= *a1)
  {
    result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::Projection *,re::Projection *,re::Projection *>(&v24, a2 + 1, &v3[15 * *a1], v5);
    if (*a1 != v4)
    {
      v8 = 240 * *a1 + 112;
      v9 = a1 + v8;
      v10 = a2 + v8;
      do
      {
        *(v9 - 6) = *(v10 - 6);
        v11 = *(v10 - 5);
        v12 = *(v10 - 4);
        v13 = *(v10 - 3);
        *(v9 - 16) = *(v10 - 16);
        *(v9 - 4) = v12;
        *(v9 - 3) = v13;
        *(v9 - 5) = v11;
        v14 = *(v10 - 16);
        *(v9 - 16) = v14;
        if (v14 == 1)
        {
          v15 = *v10;
          v16 = *(v10 + 1);
          v17 = *(v10 + 3);
          *(v9 + 2) = *(v10 + 2);
          *(v9 + 3) = v17;
          *v9 = v15;
          *(v9 + 1) = v16;
        }

        v18 = v10 - 96;
        v19 = v10[64];
        v9[64] = v19;
        if (v19 == 1)
        {
          v20 = *(v10 + 5);
          v21 = *(v10 + 6);
          v22 = *(v10 + 8);
          *(v9 + 7) = *(v10 + 7);
          *(v9 + 8) = v22;
          *(v9 + 5) = v20;
          *(v9 + 6) = v21;
        }

        v9 += 240;
        v10 += 240;
      }

      while (v18 + 240 != &v3[15 * v4]);
    }
  }

  else
  {
    result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::Projection *,re::Projection *,re::Projection *>(&v23, a2 + 1, &v3[15 * v4], v5);
  }

  *a1 = v4;
  return result;
}

void re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_0::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(char const*,char const*,re::RenderFrame &)#1}::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::FrameCount)#1},void ()(re::FrameCount const&)>::operator()(_anonymous_namespace_ *a1, uint64_t *a2, __n128 a3)
{
  v3 = a1;
  v124 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v114 = 0;
  v115 = 0;
  v112 = 0;
  v113 = 0;
  v110 = 0;
  v111 = 0;
  v108 = 0;
  v109 = 0;
  v107 = 0;
  v5 = *(a1 + 1);
  if (*(*(a1 + 2) + 16))
  {
    v6 = *(a1 + 3);
    *(&v119 + 1) = -1;
    LOBYTE(v120) = 0;
    DWORD1(v120) = 1065353216;
    *(&v120 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v119) = 2;
    *&v121 = -1;
    *(&v121 + 1) = 0xBF0B4817E6B68A8;
    re::RenderFrame::getExternalBuffer(v6, &v119, v103);
    re::BufferSlice::buffer(v103, v7);
    a1 = NS::SharedPtr<MTL::Buffer>::operator=(&v115, v103);
    if (v105 != -1)
    {
      a1 = (off_1F5D10308[v105])(v116, v103);
    }
  }

  if (*(v5 + 308) * *(v5 + 304))
  {
    v8 = *(v3 + 3);
    *(&v119 + 1) = -1;
    LOBYTE(v120) = 0;
    DWORD1(v120) = 1065353216;
    *(&v120 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v119) = 2;
    *&v121 = -1;
    *(&v121 + 1) = 0xCD9A3EE13CFD7E25;
    re::RenderFrame::getExternalBuffer(v8, &v119, v103);
    re::BufferSlice::buffer(v103, v9);
    NS::SharedPtr<MTL::Buffer>::operator=(&v114, v103);
    if (v105 != -1)
    {
      (off_1F5D10308[v105])(v116, v103);
    }

    v10 = *(v3 + 3);
    *(&v119 + 1) = -1;
    LOBYTE(v120) = 0;
    DWORD1(v120) = 1065353216;
    *(&v120 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v119) = 2;
    *&v121 = -1;
    *(&v121 + 1) = 0xCD9A3EDFC6AF0674;
    re::RenderFrame::getExternalBuffer(v10, &v119, v103);
    re::BufferSlice::buffer(v103, v11);
    NS::SharedPtr<MTL::Buffer>::operator=(&v113, v103);
    if (v105 != -1)
    {
      (off_1F5D10308[v105])(v116, v103);
    }

    v12 = *(v3 + 3);
    *(&v119 + 1) = -1;
    LOBYTE(v120) = 0;
    DWORD1(v120) = 1065353216;
    *(&v120 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v119) = 2;
    *&v121 = -1;
    *(&v121 + 1) = 0xCD9A3ECDB3592287;
    re::RenderFrame::getExternalBuffer(v12, &v119, v103);
    re::BufferSlice::buffer(v103, v13);
    NS::SharedPtr<MTL::Buffer>::operator=(&v112, v103);
    if (v105 != -1)
    {
      (off_1F5D10308[v105])(v116, v103);
    }

    v14 = *(v3 + 3);
    *(&v119 + 1) = -1;
    LOBYTE(v120) = 0;
    DWORD1(v120) = 1065353216;
    *(&v120 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v119) = 2;
    *&v121 = -1;
    *(&v121 + 1) = 0xCD9A3E38AFED4AD6;
    re::RenderFrame::getExternalBuffer(v14, &v119, v103);
    re::BufferSlice::buffer(v103, v15);
    NS::SharedPtr<MTL::Buffer>::operator=(&v111, v103);
    if (v105 != -1)
    {
      (off_1F5D10308[v105])(v116, v103);
    }

    v16 = *(v3 + 3);
    *(&v119 + 1) = -1;
    LOBYTE(v120) = 0;
    DWORD1(v120) = 1065353216;
    *(&v120 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v119) = 2;
    *&v121 = -1;
    *(&v121 + 1) = 0xCD9A3E3693039762;
    re::RenderFrame::getExternalBuffer(v16, &v119, v103);
    re::BufferSlice::buffer(v103, v17);
    NS::SharedPtr<MTL::Buffer>::operator=(&v110, v103);
    if (v105 != -1)
    {
      (off_1F5D10308[v105])(v116, v103);
    }

    v18 = *(v3 + 3);
    *(&v119 + 1) = -1;
    LOBYTE(v120) = 0;
    DWORD1(v120) = 1065353216;
    *(&v120 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v119) = 2;
    *&v121 = -1;
    *(&v121 + 1) = 0xCD9A3E2587607D33;
    re::RenderFrame::getExternalBuffer(v18, &v119, v103);
    re::BufferSlice::buffer(v103, v19);
    NS::SharedPtr<MTL::Buffer>::operator=(&v109, v103);
    if (v105 != -1)
    {
      (off_1F5D10308[v105])(v116, v103);
    }

    v20 = *(v3 + 3);
    *(&v119 + 1) = -1;
    LOBYTE(v120) = 0;
    DWORD1(v120) = 1065353216;
    *(&v120 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v119) = 2;
    *&v121 = -1;
    *(&v121 + 1) = 0xCD9A3E139AC6D3C0;
    re::RenderFrame::getExternalBuffer(v20, &v119, v103);
    re::BufferSlice::buffer(v103, v21);
    NS::SharedPtr<MTL::Buffer>::operator=(&v108, v103);
    if (v105 != -1)
    {
      (off_1F5D10308[v105])(v116, v103);
    }

    v22 = *(v3 + 3);
    *(&v119 + 1) = -1;
    LOBYTE(v120) = 0;
    DWORD1(v120) = 1065353216;
    *(&v120 + 1) = 0xFFFFFFFF00000020;
    LODWORD(v119) = 2;
    *&v121 = -1;
    *(&v121 + 1) = 0xCD9A3E0CD8A43591;
    re::RenderFrame::getExternalBuffer(v22, &v119, v103);
    re::BufferSlice::buffer(v103, v23);
    a1 = NS::SharedPtr<MTL::Buffer>::operator=(&v107, v103);
    if (v105 != -1)
    {
      a1 = (off_1F5D10308[v105])(v116, v103);
    }
  }

  v106 = 0;
  v103[1] = 0;
  v104 = 0;
  v103[0] = 0;
  v105 = 0;
  if (*(v5 + 176))
  {
    a1 = v115;
    if (v115)
    {
      v24 = *(*(v3 + 2) + 16);
      a1 = [v115 contents];
      if (v24 >= 5)
      {
        v25 = a1;
        v26 = 0;
        v27 = v24 / 5;
        do
        {
          if (*(v25 + v26))
          {
            v28 = *(v3 + 2);
            v29 = *(v28 + 16);
            if (v29 <= v26)
            {
              v98 = 0;
              v122 = 0u;
              v123 = 0u;
              v120 = 0u;
              v121 = 0u;
              v119 = 0u;
              v77 = MEMORY[0x1E69E9C10];
              v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v116 = 136315906;
              *&v116[4] = "operator[]";
              *&v116[12] = 1024;
              if (v78)
              {
                v79 = 3;
              }

              else
              {
                v79 = 2;
              }

              *&v116[14] = 789;
              *&v116[18] = 2048;
              *&v116[20] = v26;
              v117 = 2048;
              *v118 = v29;
              _os_log_send_and_compose_impl(v79, &v98, &v119, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v116, 38, v80, v81);
              _os_crash_msg();
              __break(1u);
LABEL_133:
              std::__throw_bad_function_call[abi:nn200100]();
            }

            *&v119 = *(*(v28 + 32) + 8 * v26);
            a1 = re::DynamicArray<re::TransitionCondition *>::add(v103, &v119);
          }

          ++v26;
        }

        while (v27 != v26);
      }
    }
  }

  v82 = v3;
  v83 = v4;
  *&v121 = 0;
  *&v120 = 0;
  v119 = 0uLL;
  DWORD2(v120) = 0;
  v84 = v5;
  if (*(v5 + 216))
  {
    a1 = v114;
    if (v114)
    {
      if (v113 && v112 && v111 && v110 && v109 && v108)
      {
        v30 = [v114 contents];
        v88 = [v113 contents];
        v87 = [v112 contents];
        v86 = [v111 contents];
        [v110 contents];
        [v109 contents];
        [v108 contents];
        a1 = [v107 contents];
        if (*(v5 + 304) == -1)
        {
          v36 = 1;
        }

        else
        {
          v36 = *(v5 + 304);
        }

        v37 = *(v5 + 308);
        if (v37 == -1)
        {
          v37 = 1;
        }

        v90 = v37;
        if (v37)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v85 = v30 + 8;
          v42 = 1.0;
          v89 = v36;
          do
          {
            v91 = v41;
            if (v36)
            {
              v43 = 16 * v40;
              v45 = v86;
              v44 = v87;
              v46 = v85;
              v47 = v88;
              do
              {
                v48 = *&v46[v43 - 8];
                if (v48)
                {
                  *&v34 = *&v44[v43];
                  DWORD2(v34) = *&v44[v43 + 8];
                  *&v35 = *&v45[v43];
                  DWORD2(v35) = *&v45[v43 + 8];
                  v49 = *&v46[v43];
                  v50 = *&v47[v43];
                  v51 = *&v44[v43 + 12];
                  v52 = *&v45[v43 + 12];
                  v53 = fmaxf(v51, v52);
                  *&v33 = (v42 - v52) - v51;
                  v54 = v53 <= 1.0;
                  if (v53 <= 1.0)
                  {
                    LODWORD(v32) = *&v45[v43 + 12];
                  }

                  else
                  {
                    *&v32 = 0.0;
                  }

                  if (v54)
                  {
                    LODWORD(v31) = *&v44[v43 + 12];
                  }

                  else
                  {
                    *&v33 = 0.0;
                    *&v31 = 0.0;
                  }

                  if (v39 >= *(&v119 + 1))
                  {
                    v55 = v39 + 1;
                    if (*(&v119 + 1) < v39 + 1)
                    {
                      v92 = v33;
                      v93 = v32;
                      v94 = v31;
                      v95 = v35;
                      v96 = v34;
                      if (v119)
                      {
                        v56 = 2 * *(&v119 + 1);
                        if (!*(&v119 + 1))
                        {
                          v56 = 8;
                        }

                        if (v56 <= v55)
                        {
                          v57 = v39 + 1;
                        }

                        else
                        {
                          v57 = v56;
                        }

                        a1 = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v119, v57);
                      }

                      else
                      {
                        a1 = re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v119, v55);
                        ++DWORD2(v120);
                      }

                      v42 = 1.0;
                      v35 = v95;
                      v34 = v96;
                      v32 = v93;
                      v31 = v94;
                      v33 = v92;
                    }

                    v39 = v120;
                    v38 = v121;
                  }

                  HIDWORD(v34) = 0;
                  *(&v35 + 3) = v42;
                  a3.n128_u64[0] = __PAIR64__(v32, v33);
                  a3.n128_u64[1] = v31;
                  v58 = v38 + 80 * v39;
                  *v58 = v48;
                  *(v58 + 16) = v34;
                  *(v58 + 32) = v35;
                  *(v58 + 48) = v49;
                  *(v58 + 56) = v50;
                  *(v58 + 64) = a3;
                  v39 = v120 + 1;
                  *&v120 = v120 + 1;
                  ++DWORD2(v120);
                }

                ++v40;
                v47 += 16;
                v45 += 16;
                v46 += 16;
                v44 += 16;
                --v36;
              }

              while (v36);
            }

            v41 = v91 + 1;
            v36 = v89;
          }

          while (v91 + 1 != v90);
        }
      }
    }
  }

  *&v118[2] = 0;
  memset(v116, 0, sizeof(v116));
  v59 = *(v84 + 176);
  if (v59)
  {
    v60 = *(v84 + 192);
    v61 = 40 * v59;
    do
    {
      if ((*v60 & 0xFFFFFFFFFFFFFFFuLL) <= (v83 & 0xFFFFFFFFFFFFFFFuLL))
      {
        v98 = v106;
        v99 = v104;
        v62 = v60[4];
        if (!v62)
        {
          goto LABEL_133;
        }

        a1 = (*(*v62 + 48))(v62, &v98, a3);
      }

      else
      {
        a1 = re::DynamicArray<re::SelectionCompleteHandler>::add(v116, v60);
      }

      v60 += 5;
      v61 -= 40;
    }

    while (v61);
  }

  if ((v84 + 160) != v116)
  {
    if (*(v84 + 160))
    {
      if (*v116)
      {
        a1 = re::DynamicArray<re::SelectionCompleteHandler>::copy((v84 + 160), v116);
      }

      else
      {
        v64 = *(v84 + 176);
        *(v84 + 176) = 0;
        if (v64)
        {
          v65 = 40 * v64;
          a1 = (*(v84 + 192) + 8);
          do
          {
            a1 = (std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100](a1) + 40);
            v65 -= 40;
          }

          while (v65);
        }
      }

      ++*(v84 + 184);
    }

    else if (*v116)
    {
      v63 = *&v116[16];
      *(v84 + 160) = *v116;
      re::DynamicArray<re::SelectionCompleteHandler>::setCapacity((v84 + 160), v63);
      ++*(v84 + 184);
      a1 = re::DynamicArray<re::SelectionCompleteHandler>::copy((v84 + 160), v116);
    }
  }

  v102 = 0;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  v101 = 0;
  v66 = *(v84 + 216);
  if (v66)
  {
    v67 = *(v84 + 232);
    v68 = v121;
    v69 = v120;
    v70 = 40 * v66;
    do
    {
      if ((*v67 & 0xFFFFFFFFFFFFFFFuLL) <= (v83 & 0xFFFFFFFFFFFFFFFuLL))
      {
        v97[0] = v68;
        v97[1] = v69;
        v71 = v67[4];
        if (!v71)
        {
          goto LABEL_133;
        }

        a1 = (*(*v71 + 48))(v71, v97, a3);
      }

      else
      {
        a1 = re::DynamicArray<re::SelectionConcludeHandler>::add(&v98, v67);
      }

      v67 += 5;
      v70 -= 40;
    }

    while (v70);
  }

  if ((v84 + 200) != &v98)
  {
    if (*(v84 + 200))
    {
      if (v98)
      {
        a1 = re::DynamicArray<re::SelectionConcludeHandler>::copy((v84 + 200), &v98);
      }

      else
      {
        v73 = *(v84 + 216);
        *(v84 + 216) = 0;
        if (v73)
        {
          v74 = 40 * v73;
          a1 = (*(v84 + 232) + 8);
          do
          {
            a1 = (std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100](a1) + 40);
            v74 -= 40;
          }

          while (v74);
        }
      }

      ++*(v84 + 224);
    }

    else if (v98)
    {
      v72 = v100;
      *(v84 + 200) = v98;
      re::DynamicArray<re::SelectionConcludeHandler>::setCapacity((v84 + 200), v72);
      ++*(v84 + 224);
      a1 = re::DynamicArray<re::SelectionConcludeHandler>::copy((v84 + 200), &v98);
    }
  }

  v75 = *(v82 + 2);
  if (v75)
  {
    v76 = re::globalAllocators(a1)[2];
    re::DynamicArray<unsigned long>::deinit(v75);
    (*(*v76 + 40))(v76, v75);
  }

  re::DynamicArray<re::SelectionConcludeHandler>::deinit(&v98);
  re::DynamicArray<re::SelectionCompleteHandler>::deinit(v116);
  if (v119 && v121)
  {
    (*(*v119 + 40))(v119);
  }

  if (v103[0] && v106)
  {
    (*(*v103[0] + 40))();
  }

  if (v107)
  {
  }

  if (v108)
  {
  }

  if (v109)
  {
  }

  if (v110)
  {
  }

  if (v111)
  {
  }

  if (v112)
  {
  }

  if (v113)
  {
  }

  if (v114)
  {
  }

  if (v115)
  {
  }
}

uint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_0::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(char const*,char const*,re::RenderFrame &)#1}::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::FrameCount)#1},void ()(re::FrameCount const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D102C0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_0::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(char const*,char const*,re::RenderFrame &)#1}::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::FrameCount)#1},void ()(re::FrameCount const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D102C0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void *re::DynamicArray<re::SelectionCompleteHandler>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::SelectionCompleteHandler>::setCapacity(result, *(a2 + 16));
    v13 = *(a2 + 32);
    v14 = v3[2];
    v15 = v3[4];
    if (v14)
    {
      v16 = &v13[5 * v14];
      v17 = *(a2 + 32);
      v18 = v3[4];
      do
      {
        v19 = *v17;
        v17 += 5;
        *v18 = v19;
        v18 += 5;
        result = std::function<void ()(re::Slice<unsigned long long> const&)>::operator=(v15 + 1, (v13 + 1));
        v15 = v18;
        v13 = v17;
      }

      while (v17 != v16);
      v15 = v3[4];
      v14 = v3[2];
      v13 = *(a2 + 32);
    }

    if (v14 != v4)
    {
      v20 = 40 * v4 - 40 * v14;
      v21 = 40 * v14 + 8;
      v22 = v13 + v21;
      result = (v15 + v21);
      do
      {
        *(result - 1) = *(v22 - 8);
        v23 = std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::__value_func[abi:nn200100](result, v22);
        v22 += 40;
        result = (v23 + 40);
        v20 -= 40;
      }

      while (v20);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = &v7[5 * v4];
      v9 = v7;
      v10 = result[4];
      do
      {
        v11 = *v9;
        v9 += 5;
        *v10 = v11;
        v10 += 5;
        result = std::function<void ()(re::Slice<unsigned long long> const&)>::operator=(v6 + 1, (v7 + 1));
        v6 = v10;
        v7 = v9;
      }

      while (v9 != v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v12 = 40 * v5 - 40 * v4;
      result = &v6[5 * v4 + 1];
      do
      {
        result = (std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100](result) + 40);
        v12 -= 40;
      }

      while (v12);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::SelectionCompleteHandler>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::SelectionCompleteHandler>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_21;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_21:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v7 + 4);
        v11 = (v8 + 32);
        v12 = 40 * v9;
        do
        {
          *(v10 - 4) = *(v11 - 4);
          v13 = *v11;
          if (*v11)
          {
            if (v11 - 3 == v13)
            {
              *v10 = (v10 - 3);
              (*(**v11 + 24))();
            }

            else
            {
              *v10 = v13;
              *v11 = 0;
            }
          }

          else
          {
            *v10 = 0;
          }

          std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100]((v11 - 3));
          v10 += 5;
          v11 += 5;
          v12 -= 40;
        }

        while (v12);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *re::DynamicArray<re::SelectionConcludeHandler>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::SelectionConcludeHandler>::setCapacity(result, *(a2 + 16));
    v13 = *(a2 + 32);
    v14 = v3[2];
    v15 = v3[4];
    if (v14)
    {
      v16 = &v13[5 * v14];
      v17 = *(a2 + 32);
      v18 = v3[4];
      do
      {
        v19 = *v17;
        v17 += 5;
        *v18 = v19;
        v18 += 5;
        result = std::function<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::operator=(v15 + 1, (v13 + 1));
        v15 = v18;
        v13 = v17;
      }

      while (v17 != v16);
      v15 = v3[4];
      v14 = v3[2];
      v13 = *(a2 + 32);
    }

    if (v14 != v4)
    {
      v20 = 40 * v4 - 40 * v14;
      v21 = 40 * v14 + 8;
      v22 = v13 + v21;
      result = (v15 + v21);
      do
      {
        *(result - 1) = *(v22 - 8);
        v23 = std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::__value_func[abi:nn200100](result, v22);
        v22 += 40;
        result = (v23 + 40);
        v20 -= 40;
      }

      while (v20);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = &v7[5 * v4];
      v9 = v7;
      v10 = result[4];
      do
      {
        v11 = *v9;
        v9 += 5;
        *v10 = v11;
        v10 += 5;
        result = std::function<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::operator=(v6 + 1, (v7 + 1));
        v6 = v10;
        v7 = v9;
      }

      while (v9 != v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v12 = 40 * v5 - 40 * v4;
      result = &v6[5 * v4 + 1];
      do
      {
        result = (std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100](result) + 40);
        v12 -= 40;
      }

      while (v12);
    }
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<re::SelectionConcludeHandler>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::SelectionConcludeHandler>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_21;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_21:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v7 + 4);
        v11 = (v8 + 32);
        v12 = 40 * v9;
        do
        {
          *(v10 - 4) = *(v11 - 4);
          v13 = *v11;
          if (*v11)
          {
            if (v11 - 3 == v13)
            {
              *v10 = (v10 - 3);
              (*(**v11 + 24))();
            }

            else
            {
              *v10 = v13;
              *v11 = 0;
            }
          }

          else
          {
            *v10 = 0;
          }

          std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100]((v11 - 3));
          v10 += 5;
          v11 += 5;
          v12 -= 40;
        }

        while (v12);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t re::DynamicArray<re::SelectionConcludeHandler>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        v6 = v3 + 8;
        do
        {
          v6 = std::__function::__value_func<void ()(re::Slice<re::RenderGraphSelectionConcludeResult> const&)>::~__value_func[abi:nn200100](v6) + 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::SelectionCompleteHandler>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        v6 = v3 + 8;
        do
        {
          v6 = std::__function::__value_func<void ()(re::Slice<unsigned long long> const&)>::~__value_func[abi:nn200100](v6) + 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::operator()(uint64_t a1, const char **a2, char **a3, re::RenderFrame *a4)
{
  v193 = *MEMORY[0x1E69E9840];
  v5 = 0x9E3779B97F4A7C17;
  v6 = *a2;
  v7 = *a3;
  v8 = *(a1 + 8);
  v9 = strlen(*a2);
  if (v9)
  {
    MurmurHash3_x64_128(v6, v9, 0, &v165);
    v10 = (v166 - 0x61C8864680B583E9 + (v165 << 6) + (v165 >> 2)) ^ v165;
  }

  else
  {
    v10 = 0;
  }

  v11 = strlen(v7);
  v12 = 0x9E3779B97F4A7C17;
  if (v11)
  {
    MurmurHash3_x64_128(v7, v11, 0, &v165);
    v12 = ((v166 - 0x61C8864680B583E9 + (v165 << 6) + (v165 >> 2)) ^ v165) - 0x61C8864680B583E9;
  }

  v13 = (v10 >> 2) + (v10 << 6) + v12;
  v14 = re::RenderGraphDataStore::get<re::CurrentSelectionData>(a4 + 32, v13 ^ v10);
  v15 = re::RenderGraphDataStore::get<re::SelectionDrawCallBufferData>(a4 + 32, v13 ^ v10);
  if (v7)
  {
    v16 = *v7;
    if (*v7)
    {
      v17 = v7[1];
      if (v17)
      {
        v18 = (v7 + 2);
        do
        {
          v16 = 31 * v16 + v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }

      v5 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - 0x61C8864680B583E9;
    }
  }

  else
  {
    v5 = 0x1E3779B97F4A7C16;
  }

  v20 = *(v8 + 144);
  if (v20)
  {
    v21 = atomic_load((v20 + 896));
    if (v21 == 2)
    {
      goto LABEL_18;
    }

    v22 = *(v8 + 144);
  }

  else
  {
    v22 = 0;
  }

  re::AssetHandle::loadNow(v22, 0);
LABEL_18:
  if (*(v15 + 8))
  {
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 - 0x704FA064A6CD77F8) ^ 0x2618A8D597CCFD23;
    re::RenderFrame::createBuffer(&v127, a4, &v165, "SelectedQuery0Buffer");
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72A063C61E8ALL) ^ 0x211811B8C8C65228;
    re::RenderFrame::createBuffer(&v125, a4, &v165, "SelectedColor0Buffer");
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72ADAA8E7D9ALL) ^ 0x211811B8FDAC8D69;
    re::RenderFrame::createBuffer(&v123, a4, &v165, "SelectedColor1Buffer");
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72BAF156DCAALL) ^ 0x211811B93292C8AALL;
    re::RenderFrame::createBuffer(&v121, a4, &v165, "SelectedColor2Buffer");
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72C8381F3BBALL) ^ 0x211811B9677903EBLL;
    re::RenderFrame::createBuffer(&v119, a4, &v165, "SelectedColor3Buffer");
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72D57EE79ACBLL) ^ 0x211811B99C5F3F2CLL;
    re::RenderFrame::createBuffer(&v117, a4, &v165, "SelectedColor4Buffer");
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72E2C5AFF9DBLL) ^ 0x211811B9D1457A6DLL;
    re::RenderFrame::createBuffer(&v115, a4, &v165, "SelectedColor5Buffer");
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72F00C7858EBLL) ^ 0x211811BA062BB5AELL;
    re::RenderFrame::createBuffer(&v113, a4, &v165, "SelectedColor6Buffer");
    v166 = -1;
    v167[0] = 0;
    *&v167[4] = 1065353216;
    *&v167[8] = 0xFFFFFFFF00000020;
    LODWORD(v165) = 2;
    *&v167[16] = -1;
    *v168 = (v5 + 0x4E4A72FD5340B7FBLL) ^ 0x211811BA3B11F0EFLL;
    re::RenderFrame::createBuffer(&v111, a4, &v165, "SelectedColor7Buffer");
    v23 = *(v14 + 8);
    if (*(v23 + 16))
    {
      v24 = *(v23 + 24);
    }

    else
    {
      v24 = (v23 + 17);
    }

    ScopeResolution = re::RenderFrame::getScopeResolution(a4, v24);
    v26 = *(v8 + 316);
    v27 = *(v8 + 320);
    if (v26 == -1)
    {
      v28 = ScopeResolution;
    }

    else
    {
      v28 = v26;
    }

    *&v167[12] = -1;
    if (v27 == -1)
    {
      v29 = HIDWORD(ScopeResolution);
    }

    else
    {
      v29 = v27;
    }

    *&v167[4] = -1;
    v168[0] = 0;
    __asm { FMOV            V8.2S, #1.0 }

    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0xFC00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v28;
    v35 = v28;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(&v108, a4, &v165, "Depth0Target");
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7B00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(&v106, a4, &v165, "Color0Target");
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7B00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(&v104, a4, &v165, "Color1Target");
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7D00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(&v102, a4, &v165, "Color2Target");
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7D00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(&v100, a4, &v165, "Color3Target");
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7D00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(&v98, a4, &v165, "Color4Target");
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7D00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(&v96, a4, &v165, "Color5Target");
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7D00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(&v94, a4, &v165, "Color6Target");
    *&v167[12] = -1;
    *&v167[4] = -1;
    v168[0] = 0;
    *&v168[4] = _D8;
    *&v168[12] = xmmword_1E30A3B60;
    *&v168[28] = 0x2000000000;
    memset(&v168[36], 255, 20);
    v169 = 0.0;
    LOBYTE(v170) = 0;
    v165 = 0x7D00000000;
    LODWORD(v166) = 2;
    HIDWORD(v166) = v35;
    *&v167[20] = 0;
    *v167 = v29;
    re::RenderFrame::createTarget(&v92, a4, &v165, "Color7Target");
    RenderGraph = re::RenderFrame::makeRenderGraph(a4, "SelectionGraph", 0);
    v87[0] = v106;
    v87[2] = v104;
    v82[0] = v102;
    v82[1] = v103;
    v82[2] = v100;
    v82[3] = v101;
    v77[0] = v98;
    v77[1] = v99;
    v71[0] = v106;
    v77[2] = v96;
    v71[2] = v104;
    v71[4] = v102;
    v77[3] = v97;
    v71[5] = v103;
    v72[0] = v94;
    v71[6] = v100;
    v71[7] = v101;
    v72[1] = v95;
    v71[8] = v98;
    v72[2] = v92;
    v71[9] = v99;
    v72[3] = v93;
    v71[10] = v96;
    v71[11] = v97;
    v71[12] = v94;
    v71[13] = v95;
    v71[14] = v92;
    v71[15] = v93;
    v71[18] = v125;
    v71[20] = v123;
    v71[22] = v121;
    v71[24] = v119;
    v71[26] = v117;
    v71[28] = v115;
    *&v71[30] = v113;
    v71[32] = v111;
    v165 = *&v106;
    *v167 = v104;
    *&v167[16] = v102;
    *&v168[8] = v100;
    *&v168[24] = v98;
    *&v168[40] = v96;
    v169 = v94;
    v171 = v92;
    v173 = v127;
    v87[1] = v107;
    v87[3] = v105;
    v71[1] = v107;
    v71[3] = v105;
    v71[19] = v126;
    v71[21] = v124;
    v71[23] = v122;
    v71[25] = v120;
    v71[27] = v118;
    v71[29] = v116;
    v71[31] = v114;
    v71[33] = v112;
    v166 = *&v107;
    *&v167[8] = v105;
    *v168 = v103;
    *&v168[16] = v101;
    *&v168[32] = v99;
    *&v168[48] = v97;
    v170 = v95;
    v172 = v93;
    v174 = v128;
    v176 = v126;
    v178 = v124;
    v180 = v122;
    v182 = v120;
    v184 = v118;
    v186 = v116;
    v188 = v114;
    v175 = v125;
    v36 = v108;
    v177 = v123;
    v179 = v121;
    v70 = v8;
    v37 = v109;
    v38 = v110;
    v87[4] = v108;
    v88 = v109;
    v89 = v110;
    v181 = v119;
    v183 = v117;
    v39 = v127;
    v40 = v127;
    v90 = v127;
    v185 = v115;
    v187 = v113;
    v41 = LODWORD(v128);
    v42 = LODWORD(v128);
    v189 = v111;
    v43 = v35 | (v29 << 32);
    v191 = v35;
    v192 = v29;
    v44 = HIDWORD(v128);
    v45 = HIDWORD(v128);
    v91 = v128;
    v82[4] = v108;
    v83 = v109;
    v84 = v110;
    v85 = v127;
    v86 = v128;
    v77[4] = v108;
    v78 = v109;
    v79 = v110;
    v80 = v127;
    v81 = v128;
    v72[4] = v108;
    v73 = v109;
    v74 = v110;
    v75 = v127;
    v76 = v128;
    v71[16] = v127;
    v71[17] = v128;
    v190 = v112;
    v163 = re::globalAllocators(v113)[2];
    v46 = (*(*v163 + 32))(v163, 40, 0);
    *v46 = &unk_1F5D10430;
    *(v46 + 8) = v36;
    *(v46 + 16) = v37;
    *(v46 + 20) = v38;
    *(v46 + 24) = v39;
    *(v46 + 32) = v41;
    *(v46 + 36) = v44;
    v164 = v46;
    v160 = re::globalAllocators(v46)[2];
    v47 = (*(*v160 + 32))(v160, 40, 0);
    *v47 = &unk_1F5D10498;
    *(v47 + 8) = v70;
    *(v47 + 16) = v40;
    *(v47 + 24) = v42;
    *(v47 + 28) = v45;
    *(v47 + 32) = v43;
    v161 = v47;
    re::RenderGraph::addNode(RenderGraph, "SelectionRenderVisibleNode", v162, v159);
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v159);
    v48 = re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v162);
    v49 = re::globalAllocators(v48)[2];
    v157 = v49;
    if (v49)
    {
      v49 = (*(*v49 + 32))(v49, 72, 0);
    }

    re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#2},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(v49, v87);
    v158 = v50;
    v154 = re::globalAllocators(v50)[2];
    v51 = (*(*v154 + 32))(v154, 40, 0);
    *v51 = &unk_1F5D10498;
    *(v51 + 8) = v70;
    *(v51 + 16) = v40;
    *(v51 + 24) = v42;
    *(v51 + 28) = v45;
    *(v51 + 32) = v43;
    v155 = v51;
    re::RenderGraph::addNode(RenderGraph, "SelectionRenderGroup01Node", v156, v153);
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v153);
    v52 = re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v156);
    v53 = re::globalAllocators(v52)[2];
    v151 = v53;
    if (v53)
    {
      v53 = (*(*v53 + 32))(v53, 72, 0);
    }

    re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#3},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(v53, v82);
    v152 = v54;
    v148 = re::globalAllocators(v54)[2];
    v55 = (*(*v148 + 32))(v148, 40, 0);
    *v55 = &unk_1F5D10498;
    *(v55 + 8) = v70;
    *(v55 + 16) = v40;
    *(v55 + 24) = v42;
    *(v55 + 28) = v45;
    *(v55 + 32) = v43;
    v149 = v55;
    re::RenderGraph::addNode(RenderGraph, "SelectionRenderGroup23Node", v150, v147);
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v147);
    v56 = re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v150);
    v57 = re::globalAllocators(v56)[2];
    v145 = v57;
    if (v57)
    {
      v57 = (*(*v57 + 32))(v57, 72, 0);
    }

    re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#4},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(v57, v77);
    v146 = v58;
    v142 = re::globalAllocators(v58)[2];
    v59 = (*(*v142 + 32))(v142, 40, 0);
    *v59 = &unk_1F5D10498;
    *(v59 + 8) = v70;
    *(v59 + 16) = v40;
    *(v59 + 24) = v42;
    *(v59 + 28) = v45;
    *(v59 + 32) = v43;
    v143 = v59;
    re::RenderGraph::addNode(RenderGraph, "SelectionRenderGroup45Node", v144, v141);
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v141);
    v60 = re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v144);
    v61 = re::globalAllocators(v60)[2];
    v139 = v61;
    if (v61)
    {
      v61 = (*(*v61 + 32))(v61, 72, 0);
    }

    re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#5},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(v61, v72);
    v140 = v62;
    v136 = re::globalAllocators(v62)[2];
    v63 = (*(*v136 + 32))(v136, 40, 0);
    *v63 = &unk_1F5D10498;
    *(v63 + 8) = v70;
    *(v63 + 16) = v40;
    *(v63 + 24) = v42;
    *(v63 + 28) = v45;
    *(v63 + 32) = v43;
    v137 = v63;
    re::RenderGraph::addNode(RenderGraph, "SelectionRenderGroup67Node", v138, v135);
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v135);
    v64 = re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v138);
    v65 = re::globalAllocators(v64)[2];
    v133 = v65;
    if (v65)
    {
      v65 = (*(*v65 + 32))(v65, 280, 0);
    }

    re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#6},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::Callable(v65, v71);
    v134 = v66;
    v67 = re::globalAllocators(v66)[2];
    v130 = v67;
    if (v67)
    {
      v67 = (*(*v67 + 32))(v67, 288, 0);
    }

    re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#2},void ()(re::RenderGraphContext &)>::Callable(v67, &v165);
    v131 = v68;
    re::RenderGraph::addNode(RenderGraph, "SelectionGatherResultsNode", v132, v129);
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v129);
    re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v132);
  }
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D10328;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D10328;
  a2[1] = v2;
  return a2;
}

void *re::RenderGraph::addNode(re *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 184, 8);
  v18 = *(a3 + 24);
  v19 = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator=<24ul>(v17, a3);
  v15 = *(a4 + 24);
  v16 = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::operator=<24ul>(v14, a4);
  re::InlineRenderGraphNode::InlineRenderGraphNode(v9, a2, v17, v14);
  re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(v14);
  re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(v17);
  v13 = v9;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v13);
  v10 = *(a1 + 12);
  v11 = *(a1 + 13);
  v9[3] = *(a1 + 10);
  v9[4] = v10;
  v9[6] = v11;
  return v9;
}

uint64_t re::RenderGraphDataStore::get<re::SelectionDrawCallBufferData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27SelectionDrawCallBufferDataE";
  if (("N2re27SelectionDrawCallBufferDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27SelectionDrawCallBufferDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

uint64_t re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::InlineRenderGraphNode::InlineRenderGraphNode(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F5CB52A8;
  *(a1 + 8) = 0;
  v8 = (a1 + 8);
  *(a1 + 16) = &str_67;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *a1 = &unk_1F5D10390;
  *(a1 + 128) = *(a3 + 24);
  *(a1 + 136) = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator=<24ul>(a1 + 104, a3);
  *(a1 + 168) = *(a4 + 24);
  *(a1 + 176) = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::operator=<24ul>(a1 + 144, a4);
  return a1;
}

void re::InlineRenderGraphNode::~InlineRenderGraphNode(id *this)
{
  *this = &unk_1F5D10390;
  re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable((this + 18));
  re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable((this + 13));
  *this = &unk_1F5CB52A8;

  re::StringID::destroyString((this + 1));
}

{
  *this = &unk_1F5D10390;
  re::FunctionBase<24ul,void ()(re::RenderGraphContext &)>::destroyCallable((this + 18));
  re::FunctionBase<24ul,void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::destroyCallable((this + 13));
  *this = &unk_1F5CB52A8;

  re::StringID::destroyString((this + 1));

  JUMPOUT(0x1E6906520);
}

double re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#1},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::operator()(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = 0x200000000;
  v6 = xmmword_1E30474D0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::RenderGraphBuilder::write(a2, a1 + 8, &v5);
  return re::RenderGraphBuilder::setVisibilityResultsBuffer(a2, a1 + 24);
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#1},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::cloneInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D10430;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  return a2;
}

void *re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphBuilder &,re::RenderGraphDataStore &)#1},void ()(re::RenderGraphBuilder &,re::RenderGraphDataStore &)>::moveInto(void *a1, void *a2)
{
  *a2 = &unk_1F5D10430;
  a2[1] = 0;
  a2[2] = -1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = 0;
  a2[4] = -1;
  a2[3] = a1[3];
  a2[4] = a1[4];
  return a2;
}

void re::internal::Callable<re::RenderGraphSelectionEmitter::registerProviders(re::RenderGraphManager &,re::AssetService *)::$_1::operator() const(char const*,char const*,re::RenderFrame &)::{lambda(re::RenderGraphContext &)#1},void ()(re::RenderGraphContext &)>::operator()(int32x2_t *a1, re::RenderGraphContext *a2)
{
  v222 = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  v6 = re::RenderGraphDataStore::get<re::RenderGraphSelectionParams>(*(a2 + 146), *(*(a2 + 5) + 48));
  v7.i32[0] = 0;
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = vbicq_s8(xmmword_1E3102070, vceqq_s32(*(v6 + 8), v8));
  v9.i32[0] = vaddvq_s32(v9);
  v8.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v8.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v7.i64[0] = vceqq_s8(vandq_s8(v9, v8), vandq_s8(v7, v8)).u64[0];
  v10 = vdupq_lane_s8(*v7.i8, 0);
  v11 = a1[4];
  v7.i64[0] = v7.i8[0] & 0xF | (16 * (v10.i8[1] & 0xF)) | ((v10.i8[2] & 0xF) << 8) & 0xFFF | ((v10.i8[3] & 0xFu) << 12) | ((v10.i8[4] & 0xF) << 16) & 0xFFFFFFFFFF0FFFFFLL | ((v10.i8[5] & 0xF) << 20) | ((v10.i8[6] & 0xF) << 24) | ((v10.i8[7] & 0xF) << 28) | ((v10.i8[8] & 0xF) << 32) | ((v10.i8[9] & 0xF) << 36) | ((v10.i8[10] & 0xF) << 40) | ((v10.i8[11] & 0xF) << 44) | ((v10.i8[12] & 0xF) << 48) | ((v10.i8[13] & 0xF) << 52) | ((v10.i8[14] & 0xF) << 56) | (v10.u8[15] << 60);
  v12 = vbsl_s8(*v7.i8, 0x100000001, *(v6 + 16));
  v13 = vbsl_s8(*v7.i8, vshr_n_u32(v11, 1uLL), *(v6 + 8));
  re::RenderGraphContext::acquireManagedRenderCommandEncoder(a2, 0, &v204);
  *&v14 = v13.u32[0];
  *(&v14 + 1) = v13.u32[1];
  v15 = v14;
  v143 = v11;
  v16 = vbsl_s8(vcgt_u32(vadd_s32(v13, v12), v11), vsub_s32(v11, v13), v12);
  *&v14 = v16.u32[0];
  *(&v14 + 1) = v16.u32[1];
  v216 = v15;
  v217 = v14;
  [v204 setScissorRect_];
  *&v216 = 0;
  DWORD2(v216) = 0;
  v218 = 0;
  v219 = 0;
  v221 = 0;
  v202 = 0;
  v200 = 0u;
  v201 = 0u;
  v203 = 0x7FFFFFFFLL;
  v198 = 0;
  memset(v197, 0, sizeof(v197));
  v199 = 0x7FFFFFFFLL;
  v17 = *(re::AssetHandle::blockUntilLoaded<re::MaterialAsset>((*&v5 + 136)) + 1776);
  v18 = re::RenderGraphDataStore::get<re::MeshLodSelectInputData>(*(a2 + 146), *(*(a2 + 5) + 48));
  v19 = *(a2 + 146);
  v20 = *(a2 + 5);
  v21 = "N2re16SkyboxMeshIDDataE";
  if (("N2re16SkyboxMeshIDDataE" & 0x8000000000000000) != 0)
  {
    v22 = ("N2re16SkyboxMeshIDDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v23 = 5381;
    do
    {
      v21 = v23;
      v24 = *v22++;
      v23 = (33 * v23) ^ v24;
    }

    while (v24);
  }

  v25 = *(v20 + 48) - 0x61C8864680B583E9;
  v142 = a1;
  v144 = v6;
  if (!*(v19 + 64))
  {
    goto LABEL_12;
  }

  v26 = (v25 + (v21 << 6) + (v21 >> 2)) ^ v21;
  v27 = *(*(v19 + 72) + 4 * (v26 % *(v19 + 88)));
  if (v27 == 0x7FFFFFFF)
  {
    goto LABEL_12;
  }

  v28 = *(v19 + 80);
  while (*(v28 + 24 * v27 + 8) != v26)
  {
    v27 = *(v28 + 24 * v27) & 0x7FFFFFFF;
    if (v27 == 0x7FFFFFFF)
    {
      goto LABEL_12;
    }
  }

  v29 = *(v28 + 24 * v27 + 16);
  if (v29)
  {
    v2 = *(v29 + 8);
    v30 = 1;
  }

  else
  {
LABEL_12:
    v30 = 0;
  }

  v31 = "N2re22DrawCallIdentifierDataE";
  if (("N2re22DrawCallIdentifierDataE" & 0x8000000000000000) != 0)
  {
    v32 = ("N2re22DrawCallIdentifierDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v33 = 5381;
    do
    {
      v31 = v33;
      v34 = *v32++;
      v33 = (33 * v33) ^ v34;
    }

    while (v34);
  }

  v35 = 0x7FFFFFFFLL;
  if (*(v19 + 16))
  {
    v36 = (v25 + (v31 << 6) + (v31 >> 2)) ^ v31;
    v37 = *(*(v19 + 24) + 4 * (v36 % *(v19 + 40)));
    if (v37 != 0x7FFFFFFF)
    {
      v38 = *(v19 + 32);
      v35 = 0x7FFFFFFFLL;
      while (*(v38 + 24 * v37 + 8) != v36)
      {
        v37 = *(v38 + 24 * v37) & 0x7FFFFFFF;
        if (v37 == 0x7FFFFFFF)
        {
          goto LABEL_23;
        }
      }

      v35 = v37;
    }
  }

LABEL_23:
  v39 = *(*(*(v19 + 32) + 24 * v35 + 16) + 8);
  v145 = a2;
  v40 = *a2;
  memset(&v179[32], 0, 96);
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  memset(v179, 0, 25);
  v180 = v18 + 16;
  v181 = &v216;
  v184 = 0;
  v182 = 0;
  v183 = 0;
  v186 = 0u;
  v187 = 0u;
  v185 = 0;
  v188 = 0;
  v189 = 0;
  v190 = 0xFFFF0100FFFF0100;
  v191 = 0;
  v192 = 0;
  v175 = &unk_1F5D04380;
  v193 = &v200;
  v194 = v39;
  v195 = v17;
  v196 = v40;
  v41 = re::RenderGraphDataStore::get<re::CameraData>(v19, *(v20 + 48));
  v42 = v41;
  v43 = *(v41 + 840);
  v44 = *(v43 + 40);
  if (v44)
  {
    for (i = 0; i != v44; ++i)
    {
      v41 = re::BucketArray<re::MeshSceneCollection,16ul>::operator[](v43, i);
      v46 = *(v41 + 16);
      if (v46)
      {
        v47 = 736 * v46;
        v48 = *(v41 + 32) + 512;
        do
        {
          if (*v48 == v2)
          {
            v49 = v30;
          }

          else
          {
            v49 = 0;
          }

          if (*v48)
          {
            if ((v49 & 1) == 0)
            {
              v41 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(*&v5 + 240, v48);
              if ((v41 & 1) == 0 && (*(v48 + 12) & *(v42 + 904)) != 0)
              {
                v41 = re::mesh_traversal::traverseMeshScene(&v175, (v48 - 512), 0);
              }
            }
          }

          v48 += 736;
          v47 -= 736;
        }

        while (v47);
      }
    }
  }

  v50 = a2;
  v154 = v144[4];
  v156 = v144[3];
  v150 = v144[6];
  v152 = v144[5];
  v174 = 0;
  memset(v172, 0, sizeof(v172));
  v173 = 0;
  if (*(v42 + 48))
  {
    v51 = 0;
    v52 = v42 + 64;
    do
    {
      v223.columns[1] = v154;
      v223.columns[0] = v156;
      v223.columns[3] = v150;
      v223.columns[2] = v152;
      v214 = __invert_f4(v223);
      re::DynamicArray<re::Matrix4x4<float>>::add(v172, &v214);
      ++v51;
      v52 += 32;
    }

    while (v51 < *(v42 + 48));
  }

  v157 = v144[7].i32[0];
  v155 = v144[7].i32[1];
  v153 = v144[7].i32[2];
  v149 = v144[8].i32[0];
  v151 = v144[7].i32[3];
  v147 = v144[8].i32[2];
  v148 = v144[8].i32[1];
  v146 = v144[8].i32[3];
  v53 = v144[9].i32[0];
  v54 = v144[9].i32[1];
  v55 = v144[9].i32[2];
  v56 = v144[9].i32[3];
  v57 = v144[10].i32[0];
  v58 = v144[10].i32[1];
  v60 = v144[10].i32[2];
  v59 = v144[10].i32[3];
  v171 = 0;
  memset(v169, 0, sizeof(v169));
  v170 = 0;
  if (*(v42 + 128))
  {
    v61 = 0;
    v62 = v42 + 144;
    do
    {
      v214.columns[0].i64[0] = __PAIR64__(v155, v157);
      v214.columns[0].i64[1] = __PAIR64__(v151, v153);
      v214.columns[1].i64[0] = __PAIR64__(v148, v149);
      v214.columns[1].i64[1] = __PAIR64__(v146, v147);
      v214.columns[2].i64[0] = __PAIR64__(v54, v53);
      v214.columns[2].i64[1] = __PAIR64__(v56, v55);
      v214.columns[3].i64[0] = __PAIR64__(v58, v57);
      v214.columns[3].i64[1] = __PAIR64__(v59, v60);
      re::DynamicArray<re::Matrix4x4<float>>::add(v169, &v214);
      ++v61;
      v62 += 240;
    }

    while (v61 < *(v42 + 128));
  }

  v63 = *(v42 + 890);
  v166 = 0;
  HIBYTE(v167) = 0;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v168 = -1;
  if (v63 > 1)
  {
    if (v164)
    {
      **(&v164 + 1) = xmmword_1E30DA6E0;
      v65 = v164;
      if (v164)
      {
        if (*(&v162 + 1))
        {
          *v66.f32 = vcvt_f32_u32(v143);
          v66.i64[1] = v66.i64[0];
          v67 = *(&v164 + 1);
          v68 = v163;
          *v163 = vrndaq_f32(vmulq_f32(**(&v164 + 1), v66));
          *(v68 + 16) = 0x3F80000000000000;
          if (v65 != 1)
          {
            *(v67 + 16) = xmmword_1E30DA6F0;
            v50 = v164;
            if (v164 > 1)
            {
              v50 = *(&v162 + 1);
              if (*(&v162 + 1) > 1uLL)
              {
                v69 = v163;
                *(v163 + 24) = vrndaq_f32(vmulq_f32(*(*(&v164 + 1) + 16), v66));
                *(v69 + 40) = 0;
                v70 = (v69 + 44);
                v50 = a2;
                goto LABEL_55;
              }

LABEL_172:
              v158 = 0;
              v215 = 0u;
              memset(&v214, 0, sizeof(v214));
              v137 = MEMORY[0x1E69E9C10];
              v138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v206 = 136315906;
              v207 = "operator[]";
              v208 = 1024;
              if (v138)
              {
                v139 = 3;
              }

              else
              {
                v139 = 2;
              }

              v209 = 468;
              v210 = 2048;
              v211 = 1;
              v212 = 2048;
              v213 = v50;
              _os_log_send_and_compose_impl(v139, &v158, &v214, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v206, 38, v140, v141);
              _os_crash_msg();
              __break(1u);
            }

LABEL_168:
            v158 = 0;
            v215 = 0u;
            memset(&v214, 0, sizeof(v214));
            v134 = MEMORY[0x1E69E9C10];
            v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v206 = 136315906;
            v207 = "operator[]";
            v208 = 1024;
            if (v135)
            {
              v136 = 3;
            }

            else
            {
              v136 = 2;
            }

            v209 = 468;
            v210 = 2048;
            v211 = 1;
            v212 = 2048;
            v213 = v50;
            _os_log_send_and_compose_impl(v136, &v158, &v214, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v206, 38, v140, v141);
            _os_crash_msg();
            __break(1u);
            goto LABEL_172;
          }

LABEL_164:
          v158 = 0;
          v215 = 0u;
          memset(&v214, 0, sizeof(v214));
          v131 = MEMORY[0x1E69E9C10];
          v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v206 = 136315906;
          v207 = "operator[]";
          v208 = 1024;
          if (v132)
          {
            v133 = 3;
          }

          else
          {
            v133 = 2;
          }

          v209 = 468;
          v210 = 2048;
          v211 = 1;
          v212 = 2048;
          v213 = 1;
          _os_log_send_and_compose_impl(v133, &v158, &v214, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v206, 38, v140, v141);
          _os_crash_msg();
          __break(1u);
          goto LABEL_168;
        }

        goto LABEL_156;
      }

      goto LABEL_148;
    }

    v158 = 0;
    v215 = 0u;
    memset(&v214, 0, sizeof(v214));
    v113 = MEMORY[0x1E69E9C10];
    v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v206 = 136315906;
    v207 = "operator[]";
    v208 = 1024;
    if (v114)
    {
      v115 = 3;
    }

    else
    {
      v115 = 2;
    }

    v209 = 468;
    v210 = 2048;
    v211 = 0;
    v212 = 2048;
    v213 = 0;
    _os_log_send_and_compose_impl(v115, &v158, &v214, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v206, 38, v140, v141);
    _os_crash_msg();
    __break(1u);
LABEL_144:
    v158 = 0;
    v215 = 0u;
    memset(&v214, 0, sizeof(v214));
    v116 = MEMORY[0x1E69E9C10];
    v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v206 = 136315906;
    v207 = "operator[]";
    v208 = 1024;
    if (v117)
    {
      v118 = 3;
    }

    else
    {
      v118 = 2;
    }

    v209 = 468;
    v210 = 2048;
    v211 = 0;
    v212 = 2048;
    v213 = 0;
    _os_log_send_and_compose_impl(v118, &v158, &v214, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v206, 38, v140, v141);
    _os_crash_msg();
    __break(1u);
LABEL_148:
    v158 = 0;
    v215 = 0u;
    memset(&v214, 0, sizeof(v214));
    v119 = MEMORY[0x1E69E9C10];
    v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v206 = 136315906;
    v207 = "operator[]";
    v208 = 1024;
    if (v120)
    {
      v121 = 3;
    }

    else
    {
      v121 = 2;
    }

    v209 = 468;
    v210 = 2048;
    v211 = 0;
    v212 = 2048;
    v213 = 0;
    _os_log_send_and_compose_impl(v121, &v158, &v214, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v206, 38, v140, v141);
    _os_crash_msg();
    __break(1u);
    goto LABEL_152;
  }

  if (!v164)
  {
    goto LABEL_144;
  }

  **(&v164 + 1) = xmmword_1E3063230;
  if (!v164)
  {
LABEL_152:
    v158 = 0;
    v215 = 0u;
    memset(&v214, 0, sizeof(v214));
    v122 = MEMORY[0x1E69E9C10];
    v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v206 = 136315906;
    v207 = "operator[]";
    v208 = 1024;
    if (v123)
    {
      v124 = 3;
    }

    else
    {
      v124 = 2;
    }

    v209 = 468;
    v210 = 2048;
    v211 = 0;
    v212 = 2048;
    v213 = 0;
    _os_log_send_and_compose_impl(v124, &v158, &v214, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v206, 38, v140, v141);
    _os_crash_msg();
    __break(1u);
LABEL_156:
    v158 = 0;
    v215 = 0u;
    memset(&v214, 0, sizeof(v214));
    v125 = MEMORY[0x1E69E9C10];
    v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v206 = 136315906;
    v207 = "operator[]";
    v208 = 1024;
    if (v126)
    {
      v127 = 3;
    }

    else
    {
      v127 = 2;
    }

    v209 = 468;
    v210 = 2048;
    v211 = 0;
    v212 = 2048;
    v213 = 0;
    _os_log_send_and_compose_impl(v127, &v158, &v214, 80, &dword_1E1C61000, v125, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v206, 38, v140, v141);
    _os_crash_msg();
    __break(1u);
    goto LABEL_160;
  }

  if (!*(&v162 + 1))
  {
LABEL_160:
    v158 = 0;
    v215 = 0u;
    memset(&v214, 0, sizeof(v214));
    v128 = MEMORY[0x1E69E9C10];
    v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v206 = 136315906;
    v207 = "operator[]";
    v208 = 1024;
    if (v129)
    {
      v130 = 3;
    }

    else
    {
      v130 = 2;
    }

    v209 = 468;
    v210 = 2048;
    v211 = 0;
    v212 = 2048;
    v213 = 0;
    _os_log_send_and_compose_impl(v130, &v158, &v214, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v206, 38, v140, v141);
    _os_crash_msg();
    __break(1u);
    goto LABEL_164;
  }

  v71 = v163;
  *v72.f32 = vcvt_f32_u32(v143);
  v72.i64[1] = v72.i64[0];
  *v163 = vrndaq_f32(vmulq_f32(**(&v164 + 1), v72));
  *(v71 + 16) = 0;
  v70 = (v71 + 20);
LABEL_55:
  *v70 = 1065353216;
  v165 = 2;
  v161[0] = 0;
  v167 = 0;
  v73 = re::RenderGraphContext::rtResolution(v50);
  if (!*(v50 + 338))
  {
    v74 = 0;
    v75 = 0;
    goto LABEL_57;
  }

  v75 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v50 + 169, "SelectionEmitter", "SelectionAll");
  if (!*(v50 + 338))
  {
    v74 = 0;
    goto LABEL_57;
  }

  v74 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v50 + 169, "SelectionEmitter", "SelectionNearestPass1");
  if (!*(v50 + 338))
  {
LABEL_57:
    v76 = 0;
    goto LABEL_58;
  }

  v76 = re::DrawCallRecorder::allocateDrawCallRecorderGroup(v50 + 169, "SelectionEmitter", "SelectionNearestPass2");
LABEL_58:
  (v205[20])(*v205, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:"Selection" encoding:4]);
  v77 = v144[1].i32[2];
  v78 = *(*(v50 + 5) + 16);
  v79 = strcmp(v78, "SelectionRenderGroup01Node");
  if (v77 == 1)
  {
    if (v79)
    {
      if (!strcmp(v78, "SelectionRenderGroup23Node"))
      {
        v80 = "SelectionAllGroup23";
      }

      else if (!strcmp(v78, "SelectionRenderGroup45Node"))
      {
        v80 = "SelectionAllGroup45";
      }

      else if (!strcmp(v78, "SelectionRenderGroup67Node"))
      {
        v80 = "SelectionAllGroup67";
      }

      else
      {
        v80 = "SelectionAll";
      }
    }

    else
    {
      v80 = "SelectionAllGroup01";
    }

    v82 = strlen(v80);
    if (v82)
    {
      MurmurHash3_x64_128(v80, v82, 0, &v214);
      v83 = (v214.columns[0].i64[1] - 0x61C8864680B583E9 + (v214.columns[0].i64[0] << 6) + (v214.columns[0].i64[0] >> 2)) ^ v214.columns[0].i64[0];
    }

    else
    {
      v83 = 0;
    }

    if (v200)
    {
      v84 = *(*(&v200 + 1) + 4 * (v83 % DWORD2(v201)));
      if (v84 != 0x7FFFFFFF)
      {
        while (*(v201 + 344 * v84 + 8) != v83)
        {
          v84 = *(v201 + 344 * v84) & 0x7FFFFFFF;
          if (v84 == 0x7FFFFFFF)
          {
            goto LABEL_115;
          }
        }

        re::DrawTableSlice::DrawTableSlice(&v214, v201 + 344 * v84 + 16);
        v85 = *v145;
        v86 = *(v145 + 1);
        v87 = *(v145 + 3);
        re::RenderGraphContext::rtInfo(&v206, v145, *(v145 + 5));
        v158 = 134217472;
        v159 = 134217472;
        v160 = 0;
        re::encodeDrawCalls(&v204, &v214, v85, v86, v87, &v206, &v158, v80, *(*(v145 + 5) + 16), *(*(v145 + 5) + 24), *(*(v145 + 5) + 32), v174, v171, v161, v73, v75, v80 == "SelectionAll", 0, 0, 0, 0);
      }
    }
  }

  else
  {
    if (v79)
    {
      if (!strcmp(v78, "SelectionRenderGroup23Node"))
      {
        v81 = "SelectionNearestPass1Group23";
      }

      else if (!strcmp(v78, "SelectionRenderGroup45Node"))
      {
        v81 = "SelectionNearestPass1Group45";
      }

      else if (!strcmp(v78, "SelectionRenderGroup67Node"))
      {
        v81 = "SelectionNearestPass1Group67";
      }

      else
      {
        v81 = "SelectionNearestPass1";
      }
    }

    else
    {
      v81 = "SelectionNearestPass1Group01";
    }

    v88 = strlen(v81);
    if (v88)
    {
      MurmurHash3_x64_128(v81, v88, 0, &v214);
      v89 = (v214.columns[0].i64[1] - 0x61C8864680B583E9 + (v214.columns[0].i64[0] << 6) + (v214.columns[0].i64[0] >> 2)) ^ v214.columns[0].i64[0];
    }

    else
    {
      v89 = 0;
    }

    if (v200)
    {
      v90 = *(*(&v200 + 1) + 4 * (v89 % DWORD2(v201)));
      if (v90 != 0x7FFFFFFF)
      {
        while (*(v201 + 344 * v90 + 8) != v89)
        {
          v90 = *(v201 + 344 * v90) & 0x7FFFFFFF;
          if (v90 == 0x7FFFFFFF)
          {
            goto LABEL_95;
          }
        }

        re::DrawTableSlice::DrawTableSlice(&v214, v201 + 344 * v90 + 16);
        v91 = *v50;
        v92 = *(v50 + 1);
        v93 = *(v50 + 3);
        re::RenderGraphContext::rtInfo(&v206, v50, *(v50 + 5));
        v158 = 134217472;
        v159 = 134217472;
        v160 = 0;
        re::encodeDrawCalls(&v204, &v214, v91, v92, v93, &v206, &v158, v81, *(*(v50 + 5) + 16), *(*(v50 + 5) + 24), *(*(v50 + 5) + 32), v174, v171, v161, v73, v74, 0, 0, 0, 0, 0);
      }
    }

LABEL_95:
    v94 = *(v50 + 5);
    v95 = re::RenderGraphDataStore::get<re::SelectionDrawCallBufferData>(*(v50 + 146), *(v94 + 48));
    if (*(v95 + 8))
    {
      v96 = v95;
      v97 = re::RenderGraphContext::metalBuffer(v50, &v142[2]);
      v99 = [*re::BufferSlice::buffer(v97 v98)];
      bzero(v99, *(v96 + 8));
      v94 = *(v50 + 5);
    }

    v100 = *(v94 + 16);
    if (!strcmp(v100, "SelectionRenderGroup01Node"))
    {
      v101 = "SelectionNearestPass2Group01";
    }

    else if (!strcmp(v100, "SelectionRenderGroup23Node"))
    {
      v101 = "SelectionNearestPass2Group23";
    }

    else if (!strcmp(v100, "SelectionRenderGroup45Node"))
    {
      v101 = "SelectionNearestPass2Group45";
    }

    else if (!strcmp(v100, "SelectionRenderGroup67Node"))
    {
      v101 = "SelectionNearestPass2Group67";
    }

    else
    {
      v101 = "SelectionNearestPass2";
    }

    v102 = strlen(v101);
    if (v102)
    {
      MurmurHash3_x64_128(v101, v102, 0, &v214);
      v103 = (v214.columns[0].i64[1] - 0x61C8864680B583E9 + (v214.columns[0].i64[0] << 6) + (v214.columns[0].i64[0] >> 2)) ^ v214.columns[0].i64[0];
    }

    else
    {
      v103 = 0;
    }

    if (v200)
    {
      v104 = *(*(&v200 + 1) + 4 * (v103 % DWORD2(v201)));
      if (v104 != 0x7FFFFFFF)
      {
        while (*(v201 + 344 * v104 + 8) != v103)
        {
          v104 = *(v201 + 344 * v104) & 0x7FFFFFFF;
          if (v104 == 0x7FFFFFFF)
          {
            goto LABEL_115;
          }
        }

        re::DrawTableSlice::DrawTableSlice(&v214, v201 + 344 * v104 + 16);
        v105 = *v145;
        v106 = *(v145 + 1);
        v107 = *(v145 + 3);
        re::RenderGraphContext::rtInfo(&v206, v145, *(v145 + 5));
        v158 = 134217472;
        v159 = 134217472;
        v160 = 0;
        re::encodeDrawCalls(&v204, &v214, v105, v106, v107, &v206, &v158, v101, *(*(v145 + 5) + 16), *(*(v145 + 5) + 24), *(*(v145 + 5) + 32), v174, v171, v161, v73, v76, v101 == "SelectionNearestPass2", 0, 0, 0, 0);
      }
    }
  }

LABEL_115:
  (v205[21])(*v205, sel_popDebugGroup);
  if (*(&v163 + 1))
  {
    if (v164)
    {
      (*(**(&v163 + 1) + 40))();
      v164 = 0uLL;
    }

    *(&v163 + 1) = 0;
  }

  if (v162 && *(&v162 + 1))
  {
    (*(*v162 + 40))();
  }

  if (v169[0] && v171)
  {
    (*(*v169[0] + 40))();
  }

  if (v172[0] && v174)
  {
    (*(*v172[0] + 40))();
  }

  v175 = &unk_1F5D034D8;
  for (j = 240; j != 160; j -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(&v175 + j);
  }

  re::HashTable<unsigned long,re::MeshPassInfo,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v197);
  re::HashTable<unsigned long,re::DrawTable,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(&v200);
  if (v218)
  {
    v109 = &v220[9 * v218];
    v110 = v220;
    do
    {
      *v110 = 0;
      ++*(v110 + 2);
      v110 += 9;
    }

    while (v110 != v109);
  }

  if (v216)
  {
    v111 = &v216 + 7 * v216 + 1;
    v112 = &v217;
    do
    {
      *v112 = 0;
      ++*(v112 + 2);
      v112 += 7;
    }

    while (v112 != v111);
  }

  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&v204);
}