__n128 std::__function::__func<re::makeConditionedMeshForGPU(re::GeomMesh const&,re::MeshCompileOptions const&,re::GeomMesh&,re::GeomIndexMap &,re::GeomIndexMap &)::$_0,std::allocator<re::makeConditionedMeshForGPU(re::GeomMesh const&,re::MeshCompileOptions const&,re::GeomMesh&,re::GeomIndexMap &,re::GeomIndexMap &)::$_0>,BOOL ()(unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0BC38;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<re::makeConditionedMeshForGPU(re::GeomMesh const&,re::MeshCompileOptions const&,re::GeomMesh&,re::GeomIndexMap &,re::GeomIndexMap &)::$_0,std::allocator<re::makeConditionedMeshForGPU(re::GeomMesh const&,re::MeshCompileOptions const&,re::GeomMesh&,re::GeomIndexMap &,re::GeomIndexMap &)::$_0>,BOOL ()(unsigned int,unsigned int)>::operator()(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = *a3;
  if (*(a1 + 56) == 1)
  {
    if (v8)
    {
      v3 = (v8 - 1);
      v10 = *(a1 + 48);
      if (v10 <= v3)
      {
LABEL_65:
        v49 = 0;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        v42 = MEMORY[0x1E69E9C10];
        v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v50 = 136315906;
        v51 = "operator[]";
        v52 = 1024;
        if (v43)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        v53 = 613;
        v54 = 2048;
        v55 = v3;
        v56 = 2048;
        v57 = v10;
        _os_log_send_and_compose_impl(v44, &v49, &v58, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
        _os_crash_msg();
        __break(1u);
LABEL_69:
        v49 = 0;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        v45 = MEMORY[0x1E69E9C10];
        v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v50 = 136315906;
        v51 = "operator[]";
        if (v46)
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        v52 = 1024;
        v53 = 613;
        v54 = 2048;
        v55 = v3;
        v56 = 2048;
        v57 = v10;
        _os_log_send_and_compose_impl(v47, &v49, &v58, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
        _os_crash_msg();
        __break(1u);
      }

      v11 = *(*(a1 + 40) + 4 * v3);
    }

    else
    {
      v11 = 0;
      v10 = *(a1 + 48);
    }

    if (v10 <= v8)
    {
      goto LABEL_57;
    }

    v12 = *(a1 + 40);
    v13 = *(v12 + 4 * v8);
    if (v9)
    {
      v3 = (v9 - 1);
      if (v10 <= v3)
      {
        goto LABEL_69;
      }

      v14 = *(v12 + 4 * v3);
    }

    else
    {
      v14 = 0;
    }

    if (v10 <= v9)
    {
      goto LABEL_61;
    }

    if (v13 - v11 != *(v12 + 4 * v9) - v14)
    {
      return 0;
    }

    if (v13 != v11)
    {
      v10 = *(a1 + 16);
      v3 = v14;
      if (v11 <= v10)
      {
        v5 = v10;
      }

      else
      {
        v5 = v11;
      }

      v15 = *(a1 + 8);
      v4 = *(a1 + 32);
      v16 = *(a1 + 24);
      if (v11 <= v4)
      {
        v6 = *(a1 + 32);
      }

      else
      {
        v6 = v11;
      }

      v17 = (v16 + 4 * v11);
      v18 = v13 - v11;
      v19 = (v15 + 4 * v11);
      v20 = v6 - v11;
      v21 = v5 - v11;
      while (v21)
      {
        if (v10 <= v14)
        {
          goto LABEL_45;
        }

        if (*v19 != *(v15 + 4 * v14))
        {
          return 0;
        }

        if (!v20)
        {
          goto LABEL_49;
        }

        if (v4 <= v14)
        {
          goto LABEL_53;
        }

        if (*v17 != *(v16 + 4 * v14))
        {
          return 0;
        }

        ++v17;
        ++v19;
        --v20;
        --v21;
        if (!--v18)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_41;
    }
  }

LABEL_28:
  if (*(a1 + 64))
  {
    v10 = 0;
    while (1)
    {
      v22 = *(a1 + 72);
      v3 = *(v22 + 16);
      if (v3 <= v10)
      {
        break;
      }

      result = re::GeomAttribute::areValuesAtIndexEqual(*(*(v22 + 32) + 8 * v10), v8, v9);
      if (result)
      {
        if (++v10 < *(a1 + 64))
        {
          continue;
        }
      }

      return result;
    }

    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v53 = 789;
    v54 = 2048;
    v55 = v10;
    v56 = 2048;
    v57 = v3;
    _os_log_send_and_compose_impl(v25, &v49, &v58, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
LABEL_41:
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v53 = 613;
    v54 = 2048;
    v55 = v5;
    v56 = 2048;
    v57 = v10;
    _os_log_send_and_compose_impl(v28, &v49, &v58, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
LABEL_45:
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v53 = 613;
    v54 = 2048;
    v55 = v3;
    v56 = 2048;
    v57 = v10;
    _os_log_send_and_compose_impl(v31, &v49, &v58, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
LABEL_49:
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v53 = 613;
    v54 = 2048;
    v55 = v6;
    v56 = 2048;
    v57 = v4;
    _os_log_send_and_compose_impl(v34, &v49, &v58, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
LABEL_53:
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    v52 = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v53 = 613;
    v54 = 2048;
    v55 = v3;
    v56 = 2048;
    v57 = v4;
    _os_log_send_and_compose_impl(v36, &v49, &v58, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    if (v37)
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    v52 = 1024;
    v53 = 613;
    v54 = 2048;
    v55 = v8;
    v56 = 2048;
    v57 = v10;
    _os_log_send_and_compose_impl(v38, &v49, &v58, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
LABEL_61:
    v49 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v39 = MEMORY[0x1E69E9C10];
    v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v50 = 136315906;
    v51 = "operator[]";
    if (v40)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v52 = 1024;
    v53 = 613;
    v54 = 2048;
    v55 = v9;
    v56 = 2048;
    v57 = v10;
    _os_log_send_and_compose_impl(v41, &v49, &v58, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v48);
    _os_crash_msg();
    __break(1u);
    goto LABEL_65;
  }

  return 1;
}

uint64_t std::__function::__func<re::makeConditionedMeshForGPU(re::GeomMesh const&,re::MeshCompileOptions const&,re::GeomMesh&,re::GeomIndexMap &,re::GeomIndexMap &)::$_0,std::allocator<re::makeConditionedMeshForGPU(re::GeomMesh const&,re::MeshCompileOptions const&,re::GeomMesh&,re::GeomIndexMap &,re::GeomIndexMap &)::$_0>,BOOL ()(unsigned int,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::loadGeomSceneFromFile(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v34, 4502, 0, 0, 0, 0);
  v25 = 0;
  v24 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v29 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  memset(v32, 0, sizeof(v32));
  v33 = 0x7FFFFFFFLL;
  if (re::convertMDLAssetToGeomScene(a1, &v24, (a2 + 10)))
  {
    re::DynamicArray<re::GeomModelWithLods>::DynamicArray(&v12, &v24);
    re::DynamicArray<re::GeomInstance>::DynamicArray(&v15 + 8, &v27 + 1);
    re::DynamicArray<re::GeomSkeleton>::DynamicArray(&v18 + 8, &v30[1]);
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(&v21 + 8, &v32[8]);
    *(a3 + 16) = v13;
    v6 = v16;
    *(a3 + 40) = v15;
    *(a3 + 56) = v6;
    v7 = v19;
    *(a3 + 80) = v18;
    *(a3 + 96) = v7;
    v8 = v22;
    *(a3 + 120) = v21;
    *a3 = 1;
    *(a3 + 8) = v12;
    v12 = 0;
    v13 = 0u;
    ++v14;
    *(a3 + 32) = 1;
    v15 = 0u;
    v16 = 0u;
    ++v17;
    *(a3 + 72) = 1;
    v18 = 0u;
    v19 = 0u;
    ++v20;
    *(a3 + 112) = 1;
    *(a3 + 136) = v8;
    v21 = 0u;
    v22 = 0u;
    *(a3 + 152) = v23;
    v23 = xmmword_1E3058120;
    *(a3 + 168) = 1;
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v21 + 1);
    re::DynamicArray<re::GeomSkeleton>::deinit(&v18 + 8);
    if (*(&v15 + 1))
    {
      if (v18)
      {
        (*(**(&v15 + 1) + 40))();
      }

      *&v18 = 0;
      v16 = 0uLL;
      *(&v15 + 1) = 0;
      ++v17;
    }

    re::DynamicArray<re::GeomModelWithLods>::deinit(&v12);
  }

  else
  {
    v9 = std::system_category();
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = v9;
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v32[8]);
  re::DynamicArray<re::GeomSkeleton>::deinit(&v30[1]);
  if (*(&v27 + 1))
  {
    if (v30[0])
    {
      (*(**(&v27 + 1) + 40))();
    }

    v30[0] = 0;
    v28 = 0uLL;
    *(&v27 + 1) = 0;
    ++v29;
  }

  re::DynamicArray<re::GeomModelWithLods>::deinit(&v24);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v34, v10, v11);
}

void re::makeMeshAssetDataFromGeomScene(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v430 = *MEMORY[0x1E69E9840];
  v4 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v324, 4506, 0, 0, 0, 0);
  v306 = 0;
  v307 = 0uLL;
  v308 = 0;
  v318 = 0;
  v319 = 0;
  v323 = 0;
  v320 = 0;
  v321 = 0uLL;
  v322 = 0;
  v5 = 0uLL;
  v309 = 0u;
  v310 = 0u;
  v312 = 0u;
  v313 = 0u;
  v311 = 0;
  v314 = 0;
  v317 = 0;
  v315 = 0u;
  v316 = 0u;
  v297 = a1;
  v6 = a1[12];
  if (v6)
  {
    v4 = re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(&v312 + 1, a1[12]);
    v5 = 0uLL;
  }

  v304 = 0;
  v303[0] = v5;
  v303[1] = v5;
  v305 = 0x7FFFFFFFLL;
  if ((2 * v6) <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * v6;
  }

  v8 = a1[12];
  if (v8)
  {
    v9 = (a1[14] + 64);
    v10 = 160 * v8;
    do
    {
      re::UniqueNameGenerator::uniqueName(v332, v303, *(v9 - 7), "MeshSkeleton");
      re::FixedArray<re::StringID>::FixedArray(&v332[1], v9 - 6);
      re::FixedArray<unsigned int>::FixedArray(&v333 + 1, v9 - 3);
      re::FixedArray<re::GenericSRT<float>>::FixedArray(v335, v9);
      re::FixedArray<re::Matrix4x4<float>>::FixedArray(&v335[24], v9 + 3);
      re::DynamicArray<re::MeshAssetSkeleton>::add((&v312 + 8), v332);
      if (*&v335[24])
      {
        if (*&v335[32])
        {
          (*(**&v335[24] + 40))();
          *&v335[32] = 0;
          *&v335[40] = 0;
        }

        *&v335[24] = 0;
      }

      if (*v335)
      {
        if (*&v335[8])
        {
          (*(**v335 + 40))();
          *&v335[8] = 0;
          *&v335[16] = 0;
        }

        *v335 = 0;
      }

      if (*(&v333 + 1))
      {
        if (v334)
        {
          (*(**(&v333 + 1) + 40))();
          v334 = 0uLL;
        }

        *(&v333 + 1) = 0;
      }

      v11 = re::FixedArray<re::StringID>::deinit(&v332[1]);
      if (v332[0])
      {
        if (v332[0])
        {
        }
      }

      v9 += 20;
      v10 -= 160;
    }

    while (v10);
  }

  v12 = v389;
  v13 = v297[2];
  re::DynamicArray<re::MeshAssetModel>::resize(&v306, v13);
  v301 = 0;
  memset(v300, 0, sizeof(v300));
  v302 = 0x7FFFFFFFLL;
  if ((2 * v13) <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v13;
  }

  v278 = v13;
  if (v13)
  {
    v16 = 0;
    v17 = &v359[8];
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    v287 = vnegq_f32(v18);
    v19 = 248;
    do
    {
      v20 = v297[2];
      if (v20 <= v16)
      {
        goto LABEL_408;
      }

      v20 = *(&v307 + 1);
      if (*(&v307 + 1) <= v16)
      {
        goto LABEL_412;
      }

      v280 = v16;
      v21 = (v297[4] + 152 * v16);
      v277 = v309;
      v298[0] = *a2;
      *(v298 + 7) = *(a2 + 7);
      re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v299, (a2 + 2));
      v22 = v21[1];
      if (v22)
      {
        v23 = v22 >> 1;
      }

      else
      {
        v23 = v22 >> 1;
      }

      if (v23)
      {
        v24 = re::Hash<re::DynamicString>::operator()(v332, v21);
        re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v332, (a2 + 8), v21, v24);
        if (HIDWORD(v332[0]) != 0x7FFFFFFF)
        {
          v25 = re::Hash<re::DynamicString>::operator()(v332, v21);
          re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v332, (a2 + 8), v21, v25);
          v26 = a2[10] + 112 * HIDWORD(v332[0]);
          v27 = *(v26 + 47);
          v298[0] = *(v26 + 40);
          *(v298 + 7) = v27;
          re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v299, v26 + 56);
        }
      }

      HasSkinningData = v21[6];
      *v389 = 0;
      *&v389[8] = &str_67;
      *&v389[16] = v287;
      *&v29 = 0x7F0000007FLL;
      *(&v29 + 1) = 0x7F0000007FLL;
      *&v389[32] = v29;
      v422 = 0;
      v390 = 0u;
      v391 = 0u;
      v392 = 0u;
      v393 = 0u;
      memset(v394, 0, 28);
      v395 = 0u;
      v396 = 0u;
      v397 = 0;
      v398 = 0u;
      v399 = 0u;
      v400 = 0;
      v401 = 0u;
      v402 = 0u;
      v403 = 0;
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
      v407 = 0u;
      v408 = 0u;
      v409 = 0;
      v410 = 0u;
      v411 = 0u;
      v412 = 0;
      v413 = 0u;
      v414 = 0u;
      v415 = 0;
      v416 = 0u;
      v417 = 0u;
      v418 = 0;
      v419 = 0u;
      v420 = 0u;
      v421 = 0;
      if (v21[1])
      {
        v30 = v21[2];
      }

      else
      {
        v30 = v21 + 9;
      }

      v31 = re::UniqueNameGenerator::uniqueName(v359, v300, v30, "MeshModel");
      v33 = *v359;
      *&v359[8] = &str_67;
      *v359 = 0;
      v34 = v389[0];
      v20 = *&v389[8];
      *v389 = v33;
      if (v34)
      {
        if (v359[0])
        {
          if (v359[0])
          {
          }
        }
      }

      v283 = HasSkinningData;
      v35 = (HasSkinningData - 1);
      if (HasSkinningData == 1)
      {
        if (!v21[6])
        {
          goto LABEL_432;
        }

        v36 = *(v21[8] + 48);
        goto LABEL_101;
      }

      if (HasSkinningData)
      {
        re::DynamicArray<re::MeshLodLevelInfo>::resize(&v404 + 1, HasSkinningData);
        v12 = 0;
        v36 = 0;
        do
        {
          v20 = v21[6];
          if (v20 <= v12)
          {
            goto LABEL_332;
          }

          v20 = *(v21[8] + 248 * v12 + 48);
          *&v387[32] = 0;
          memset(v387, 0, 28);
          re::DynamicArray<double>::resize(v387, v20);
          if (v20)
          {
            v37 = 0;
            v19 = *&v387[16];
            v38 = *&v387[32];
            v39 = v36;
            while (v19 != v37)
            {
              *(v38 + 8 * v37++) = v39++;
              if (v20 == v37)
              {
                goto LABEL_55;
              }
            }

            *&v328[0] = 0;
            memset(v359, 0, 80);
            v161 = MEMORY[0x1E69E9C10];
            v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v385 = 136315906;
            *&v385[4] = "operator[]";
            *&v385[12] = 1024;
            if (v162)
            {
              v163 = 3;
            }

            else
            {
              v163 = 2;
            }

            *&v385[14] = 789;
            *&v385[18] = 2048;
            *&v385[20] = v19;
            *&v385[28] = 2048;
            *&v385[30] = v19;
            _os_log_send_and_compose_impl(v163, v328, v359, 80, &dword_1E1C61000, v161, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v385, 38, v274, v275);
            _os_crash_msg();
            __break(1u);
            goto LABEL_292;
          }

LABEL_55:
          v19 = *(&v405 + 1);
          if (*(&v405 + 1) <= v12)
          {
            goto LABEL_336;
          }

          re::DynamicArray<unsigned long long>::operator=((v407 + 48 * v12 + 8), v387);
          if (*v387)
          {
            v32 = *&v387[32];
            if (*&v387[32])
            {
              (*(**v387 + 40))();
            }
          }

          v36 += v20;
          ++v12;
          v19 = 248;
        }

        while (v12 != HasSkinningData);
        v20 = v21[16];
        if (v35 != v20)
        {
          goto LABEL_83;
        }

        if (v20 >= 2)
        {
          v40 = v21[18];
          v41 = *v40;
          if (*v40 < v40[1])
          {
            goto LABEL_83;
          }

          v129 = 0;
          do
          {
            if (v20 - 2 == v129)
            {
              goto LABEL_64;
            }

            v130 = &v40[v129++];
          }

          while (v130[1] >= v130[2]);
          if (v129 + 1 < v20)
          {
LABEL_83:
            v48 = 0;
            v49 = 0;
            v20 = *(&v405 + 1);
            v46 = v407;
            while (1)
            {
              v12 = v49;
              if (v20 <= v49)
              {
                goto LABEL_340;
              }

              *(v46 + 48 * v49++) = (1.0 / (v48 + 2)) * (1.0 / (v48 + 2));
              v48 = (v12 + 1);
              if (v48 >= HasSkinningData)
              {
                goto LABEL_86;
              }
            }
          }
        }

        if (v20)
        {
          v40 = v21[18];
          v41 = *v40;
LABEL_64:
          v42 = v41 >= 0.0 && v41 <= 1.0;
          if (!v42)
          {
            goto LABEL_83;
          }

          v43 = 0;
          do
          {
            if (v20 - 1 == v43)
            {
              goto LABEL_76;
            }

            v44 = v40[++v43];
          }

          while (v44 >= 0.0 && v44 <= 1.0);
          if (v43 < v20)
          {
            goto LABEL_83;
          }

LABEL_76:
          v46 = v407;
          if (v20)
          {
            v47 = 0;
            v19 = *(&v405 + 1);
            while (1)
            {
              v12 = v47;
              if (v20 <= v47)
              {
                break;
              }

              if (v19 <= v47)
              {
                goto LABEL_428;
              }

              *(v46 + 48 * v47) = v40[v47];
              ++v47;
              if (v20 <= (v12 + 1))
              {
                goto LABEL_256;
              }
            }

LABEL_424:
            *v385 = 0;
            memset(v359, 0, 80);
            v265 = MEMORY[0x1E69E9C10];
            v266 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v387 = 136315906;
            *&v387[4] = "operator[]";
            *&v387[12] = 1024;
            if (v266)
            {
              v267 = 3;
            }

            else
            {
              v267 = 2;
            }

            *&v387[14] = 797;
            *&v387[18] = 2048;
            *&v387[20] = v12;
            *&v387[28] = 2048;
            *&v387[30] = v20;
            _os_log_send_and_compose_impl(v267, v385, v359, 80, &dword_1E1C61000, v265, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
            _os_crash_msg();
            __break(1u);
LABEL_428:
            *v385 = 0;
            memset(v359, 0, 80);
            v268 = MEMORY[0x1E69E9C10];
            v269 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v387 = 136315906;
            *&v387[4] = "operator[]";
            *&v387[12] = 1024;
            if (v269)
            {
              v270 = 3;
            }

            else
            {
              v270 = 2;
            }

            *&v387[14] = 789;
            *&v387[18] = 2048;
            *&v387[20] = v12;
            *&v387[28] = 2048;
            *&v387[30] = v19;
            _os_log_send_and_compose_impl(v270, v385, v359, 80, &dword_1E1C61000, v268, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
            _os_crash_msg();
            __break(1u);
LABEL_432:
            *v385 = 0;
            memset(v359, 0, 80);
            v271 = MEMORY[0x1E69E9C10];
            v272 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v387 = 136315906;
            *&v387[4] = "operator[]";
            *&v387[12] = 1024;
            if (v272)
            {
              v273 = 3;
            }

            else
            {
              v273 = 2;
            }

            *&v387[14] = 797;
            *&v387[18] = 2048;
            *&v387[20] = 0;
            *&v387[28] = 2048;
            *&v387[30] = 0;
            _os_log_send_and_compose_impl(v273, v385, v359, 80, &dword_1E1C61000, v271, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
            _os_crash_msg();
            __break(1u);
LABEL_436:
            re::internal::assertLog(4, v111, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
            _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
            __break(1u);
LABEL_437:
            re::internal::assertLog(4, v111, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
            _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
            __break(1u);
LABEL_438:
            re::internal::assertLog(4, v100, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
            _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
            __break(1u);
LABEL_439:
            re::internal::assertLog(4, v100, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
            _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
            __break(1u);
          }
        }

        else
        {
          v46 = v407;
        }

        v19 = *(&v405 + 1);
LABEL_256:
        *(v46 + 48 * v19 - 48) = 0;
LABEL_86:
        v20 = v21[11];
        if (v35 != v20)
        {
          goto LABEL_95;
        }

        v50 = v20 - 2;
        if (v20 >= 2)
        {
          v53 = v21[13];
          if (*v53 > v53[1])
          {
            goto LABEL_95;
          }

          v131 = v53 + 2;
          v132 = -1;
          do
          {
            if (!v50)
            {
              goto LABEL_88;
            }

            v133 = *(v131 - 1);
            v134 = *v131++;
            --v132;
            --v50;
          }

          while (v133 <= v134);
          if (-v132 < v20)
          {
LABEL_95:
            v54 = 0;
            v55 = 0;
            v35 = *(&v405 + 1);
            v56 = v407;
            while (1)
            {
              v20 = v55;
              if (v35 <= v55)
              {
                goto LABEL_360;
              }

              if (v54 > 4)
              {
                v57 = ((100 * v54) - 300);
              }

              else
              {
                v57 = __const__ZN2re29computeDefaultLodMaxViewDepthEjj_kViewDepthTable[v54];
              }

              *(v56 + 48 * v55++ + 4) = v57;
              v54 = (v20 + 1);
              if (v54 >= HasSkinningData)
              {
                goto LABEL_101;
              }
            }
          }
        }

LABEL_88:
        v12 = *(&v405 + 1);
        v51 = 0;
        v52 = v21[13];
        do
        {
          HasSkinningData = v51;
          if (v20 <= v51)
          {
            goto LABEL_400;
          }

          if (v12 <= v51)
          {
            goto LABEL_404;
          }

          *(v46 + 48 * v51 + 4) = *(v52 + 4 * v51);
          ++v51;
        }

        while (v35 > (HasSkinningData + 1));
        *(v46 + 48 * v12 - 44) = 2139095040;
LABEL_101:
        if (!v21[6])
        {
          goto LABEL_416;
        }

        v284 = v36;
        v35 = v21[8];
        v12 = *(v35 + 48);
        if (v12)
        {
          v20 = 0;
          v58.i64[0] = 0x7F0000007FLL;
          v58.i64[1] = 0x7F0000007FLL;
          v59 = vnegq_f32(v58);
          v19 = 1;
          while (1)
          {
            HasSkinningData = *(v35 + 48);
            if (HasSkinningData <= v20)
            {
              goto LABEL_328;
            }

            v290 = v59;
            v293 = v58;
            v60 = *(v35 + 64) + 736 * v20;
            HasSkinningData = re::meshHasSkinningData(v60, v32);
            re::computeAABB(v385, v60);
            if (HasSkinningData)
            {
              v61 = re::internal::GeomAttributeManager::attributeByName((v60 + 64), "skinnedAnimationGeometryBindTransform");
              v62 = re::GeomAttribute::accessValues<int>(v61);
              v20 = v63;
              if (!v63)
              {
                goto LABEL_344;
              }

              if (v63 == 1)
              {
                goto LABEL_348;
              }

              if (v63 <= 2)
              {
                goto LABEL_352;
              }

              if (v63 == 3)
              {
                goto LABEL_356;
              }

              v64 = v62[1];
              v65 = v62[2];
              v66 = v62[3];
              *v359 = *v62;
              *&v359[16] = v64;
              *&v359[32] = v65;
              *&v359[48] = v66;
              re::AABB::transform(v385, v359, v387);
              v67 = v290;
              v67.i32[3] = 0;
              v68 = *v387;
              v69 = *&v387[16];
            }

            else
            {
              v67 = v290;
              v67.i32[3] = 0;
              v68 = *v385;
              v69 = *&v385[16];
            }

            v68.i32[3] = 0;
            v59 = vminnmq_f32(v67, v68);
            v70 = v293;
            v70.i32[3] = 0;
            v69.i32[3] = 0;
            v58 = vmaxnmq_f32(v70, v69);
            v20 = v19;
            v42 = v12 > v19;
            v19 = (v19 + 1);
            if (!v42)
            {
              goto LABEL_115;
            }
          }
        }

        v58.i64[0] = 0x7F0000007FLL;
        v58.i64[1] = 0x7F0000007FLL;
        v59 = vnegq_f32(v58);
LABEL_115:
        *&v389[16] = v59;
        *&v389[32] = v58;
        if (!v21[6])
        {
          goto LABEL_420;
        }

        v71 = v21[8];
        v72 = *(v71 + 48);
        v281 = v21;
        if (v72)
        {
          LODWORD(v73) = 0;
          v74 = 736 * v72;
          v75 = (*(v71 + 64) + 16);
          do
          {
            v73 = (*v75 + v73);
            v75 += 184;
            v74 -= 736;
          }

          while (v74);
        }

        else
        {
          v73 = 0;
        }

        *&v387[32] = 0;
        memset(v387, 0, 28);
        re::DynamicArray<re::Vector3<float>>::resize(v387, v73);
        v77 = *(v71 + 48);
        if (v77)
        {
          v35 = 0;
          v20 = *(v71 + 64);
          v294 = v20 + 736 * v77;
          do
          {
            v19 = re::meshHasSkinningData(v20, v76);
            v78 = *(v20 + 16);
            HasSkinningData = re::GeomMesh::accessVertexPositions(v20);
            v12 = v76;
            if (v19)
            {
              v79 = re::internal::GeomAttributeManager::attributeByName((v20 + 64), "skinnedAnimationGeometryBindTransform");
              v80 = re::GeomAttribute::accessValues<int>(v79);
              v19 = v76;
              if (!v76)
              {
                goto LABEL_384;
              }

              if (v76 == 1)
              {
                goto LABEL_388;
              }

              if (v76 <= 2)
              {
                goto LABEL_392;
              }

              if (v76 == 3)
              {
                goto LABEL_396;
              }

              if (v78)
              {
                v81 = *v80;
                v82 = v80[1];
                v83 = v80[2];
                v84 = v80[3];
                v12 = v12;
                v85 = v12;
                while (v85)
                {
                  v19 = v35;
                  v36 = *&v387[16];
                  if (*&v387[16] <= v35)
                  {
                    goto LABEL_308;
                  }

                  v35 = (v35 + 1);
                  v86 = *HasSkinningData;
                  HasSkinningData += 16;
                  v87 = vaddq_f32(v84, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v81, v86.f32[0]), v82, *v86.f32, 1), v83, v86, 2));
                  *(*&v387[32] + 16 * v19) = vdivq_f32(v87, vdupq_laneq_s32(v87, 3));
                  --v85;
                  if (!--v78)
                  {
                    goto LABEL_139;
                  }
                }

                goto LABEL_304;
              }
            }

            else if (v78)
            {
              v12 = v76;
              v88 = v76;
              while (v88)
              {
                v19 = v35;
                v36 = *&v387[16];
                if (*&v387[16] <= v35)
                {
                  goto LABEL_300;
                }

                v35 = (v35 + 1);
                v89 = *HasSkinningData;
                HasSkinningData += 16;
                *(*&v387[32] + 16 * v19) = v89;
                --v88;
                if (!--v78)
                {
                  goto LABEL_139;
                }
              }

              goto LABEL_296;
            }

LABEL_139:
            v20 += 736;
          }

          while (v20 != v294);
        }

        MEMORY[0x1E69070C0](*&v387[16], *&v387[32]);
        v94 = *v387;
        if (*v387 && *&v387[32])
        {
          v291 = v91;
          v295 = v90;
          v288 = v92;
          v285 = v93;
          v94 = (*(**v387 + 40))();
          v93 = v285;
          v92 = v288;
          v91 = v291;
          v90 = v295;
        }

        v390 = v90;
        v391 = v91;
        v392 = v92;
        v393 = v93;
        v19 = 248;
        HasSkinningData = v281;
        if (v399 < v284)
        {
          v94 = re::DynamicArray<re::MeshAssetPart>::setCapacity(&v398 + 1, v284);
        }

        v329 = 0;
        memset(v328, 0, sizeof(v328));
        v330 = 0x7FFFFFFFLL;
        v326 = 0;
        memset(v325, 0, sizeof(v325));
        if ((2 * v284) <= 1)
        {
          v95 = 1;
        }

        else
        {
          v95 = 2 * v284;
        }

        v327 = 0x7FFFFFFFLL;
        if (v283)
        {
          v20 = 0;
          while (1)
          {
            v35 = *(HasSkinningData + 48);
            if (v35 <= v20)
            {
              goto LABEL_380;
            }

            v282 = v20;
            v36 = *(HasSkinningData + 64) + 248 * v20;
            v96 = *(v36 + 48);
            if (v96)
            {
              break;
            }

LABEL_222:
            v20 = v282 + 1;
            v19 = 248;
            HasSkinningData = v281;
            if (v282 + 1 == v283)
            {
              goto LABEL_223;
            }
          }

          v19 = 0;
          v292 = *(v36 + 112);
          v289 = *(v36 + 160);
          v286 = v96 * v20;
          v296 = *(v36 + 224);
          while (1)
          {
            v35 = *(v36 + 48);
            if (v35 <= v19)
            {
              break;
            }

            v12 = *(v36 + 64) + 736 * v19;
            if (*(v12 + 40))
            {
              v365 = 0u;
              *&v359[88] = 0;
              memset(v359, 0, 80);
              v359[44] = 1;
              *&v359[52] = 1;
              *&v359[56] = -1;
              *&v359[80] = &str_67;
              *&v359[96] = v287;
              *&v97 = 0x7F0000007FLL;
              *(&v97 + 1) = 0x7F0000007FLL;
              *&v359[112] = v97;
              *&v364[16] = 0x7FFFFFFF00000000;
              *v364 = 0u;
              v363 = 0u;
              *&v359[128] = 0u;
              v360 = 0u;
              v361 = 0u;
              memset(v362, 0, sizeof(v362));
              re::DynamicArray<re::MeshAssetPart>::add((&v398 + 8), v359);
              re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v363);
              if (v359[72])
              {
                if (v359[72])
                {
                }
              }

              *&v359[80] = &str_67;
              *&v359[72] = 0;
              re::DynamicArray<re::MeshAssetBuffer>::deinit(v359);
              HasSkinningData = re::meshHasSkinningData(v12, v99);
              if (HasSkinningData)
              {
                v100 = v284;
                if (v396 < v284)
                {
                  re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(&v395 + 1, v284);
                }

                v20 = v19 + v286;
                for (i = *(&v396 + 1); i <= v20; ++i)
                {
                  *v359 = 0xFFFFFFFFLL;
                  memset(&v359[8], 0, 136);
                  v102 = re::DynamicArray<re::MeshAssetSkinningData>::add((&v395 + 8), v359);
                  if (*&v359[56])
                  {
                    if (*&v359[64])
                    {
                      (*(**&v359[56] + 40))(v102);
                      *&v359[64] = 0uLL;
                    }

                    *&v359[56] = 0;
                  }

                  if (*&v359[32])
                  {
                    if (*&v359[40])
                    {
                      (*(**&v359[32] + 40))(v102);
                      *&v359[40] = 0;
                      *&v359[48] = 0;
                    }

                    *&v359[32] = 0;
                  }

                  if (*&v359[8] && *&v359[16])
                  {
                    (*(**&v359[8] + 40))(v102);
                  }
                }
              }

              if (v296 == v96)
              {
                v35 = *(v36 + 224);
                if (v35 <= v19)
                {
                  goto LABEL_316;
                }

                v20 = *(v36 + 240) + 48 * v19;
              }

              else
              {
                v20 = v328;
              }

              if (v292)
              {
                v35 = *(v36 + 136);
                if (v35 <= v19)
                {
                  goto LABEL_320;
                }

                v103 = *(v36 + 152) + 80 * v19;
                *v387 = *v103;
                *&v387[8] = *(v103 + 8);
                v387[12] = *(v103 + 12);
                if (v387[12] == 2)
                {
                  re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(&v387[16], v103 + 16);
                }

                else if (v387[12] == 1)
                {
                  re::DynamicArray<float>::DynamicArray(&v387[16], (v103 + 16));
                }

                else
                {
                  if (v387[12])
                  {
                    goto LABEL_438;
                  }

                  *&v387[16] = *(v103 + 16);
                }
              }

              else
              {
                v104 = 0;
                v105 = *(v12 + 16);
                *v387 = 0xFFFFFFFF00000000;
                *&v387[8] = -1;
                v387[12] = 0;
                if (v105 - 1 <= 0xFFFFFFFD)
                {
                  *&v387[8] = v105 - 1;
                  v104 = v105;
                  *v387 = v105;
                }

                *&v387[16] = v104;
              }

              if (v289)
              {
                v35 = *(v36 + 184);
                if (v35 <= v19)
                {
                  goto LABEL_324;
                }

                v106 = *(v36 + 200) + 80 * v19;
                *v385 = *v106;
                *&v385[8] = *(v106 + 8);
                v385[12] = *(v106 + 12);
                if (v385[12] == 2)
                {
                  re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(&v385[16], v106 + 16);
                }

                else if (v385[12] == 1)
                {
                  re::DynamicArray<float>::DynamicArray(&v385[16], (v106 + 16));
                }

                else
                {
                  if (v385[12])
                  {
                    goto LABEL_439;
                  }

                  *&v385[16] = *(v106 + 16);
                }
              }

              else
              {
                v107 = 0;
                v108 = *(v12 + 40);
                *v385 = 0xFFFFFFFF00000000;
                *&v385[8] = -1;
                v385[12] = 0;
                if (v108 - 1 <= 0xFFFFFFFD)
                {
                  *&v385[8] = v108 - 1;
                  v107 = v108;
                  *v385 = v108;
                }

                *&v385[16] = v107;
              }

              v35 = *(v36 + 88);
              if (v35)
              {
                if (v35 <= v19)
                {
                  goto LABEL_312;
                }

                v109 = *(*(v36 + 104) + 4 * v19);
              }

              else
              {
                LOWORD(v109) = 0;
              }

              v110 = v398 + 144 * *(&v396 + 1) - 144;
              if (!HasSkinningData)
              {
                v110 = 0;
              }

              if (v385[12])
              {
                if (v385[12] == 2)
                {
                  v112.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v385[16]);
                }

                else
                {
                  if (v385[12] != 1)
                  {
                    goto LABEL_436;
                  }

                  if (*&v385[16])
                  {
                    v111 = v386;
                    if (v386)
                    {
                      (*(**&v385[16] + 40))();
                    }
                  }
                }
              }

              if (v387[12])
              {
                if (v387[12] == 2)
                {
                  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v387[16]);
                }

                else
                {
                  if (v387[12] != 1)
                  {
                    goto LABEL_437;
                  }

                  if (*&v387[16] && v388)
                  {
                    (*(**&v387[16] + 40))(v112);
                  }
                }
              }
            }

            if (++v19 == v96)
            {
              goto LABEL_222;
            }
          }

LABEL_292:
          *v385 = 0;
          memset(v359, 0, 80);
          v164 = MEMORY[0x1E69E9C10];
          v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v387 = 136315906;
          *&v387[4] = "operator[]";
          *&v387[12] = 1024;
          if (v165)
          {
            v166 = 3;
          }

          else
          {
            v166 = 2;
          }

          *&v387[14] = 797;
          *&v387[18] = 2048;
          *&v387[20] = v19;
          *&v387[28] = 2048;
          *&v387[30] = v35;
          _os_log_send_and_compose_impl(v166, v385, v359, 80, &dword_1E1C61000, v164, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_296:
          *&v328[0] = 0;
          memset(v359, 0, 80);
          v167 = MEMORY[0x1E69E9C10];
          v168 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v385 = 136315906;
          *&v385[4] = "operator[]";
          *&v385[12] = 1024;
          if (v168)
          {
            v169 = 3;
          }

          else
          {
            v169 = 2;
          }

          *&v385[14] = 613;
          *&v385[18] = 2048;
          *&v385[20] = v12;
          *&v385[28] = 2048;
          *&v385[30] = v12;
          _os_log_send_and_compose_impl(v169, v328, v359, 80, &dword_1E1C61000, v167, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v385, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_300:
          *&v328[0] = 0;
          memset(v359, 0, 80);
          v170 = MEMORY[0x1E69E9C10];
          v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v385 = 136315906;
          *&v385[4] = "operator[]";
          *&v385[12] = 1024;
          if (v171)
          {
            v172 = 3;
          }

          else
          {
            v172 = 2;
          }

          *&v385[14] = 789;
          *&v385[18] = 2048;
          *&v385[20] = v19;
          *&v385[28] = 2048;
          *&v385[30] = v36;
          _os_log_send_and_compose_impl(v172, v328, v359, 80, &dword_1E1C61000, v170, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v385, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_304:
          *&v328[0] = 0;
          memset(v359, 0, 80);
          v173 = MEMORY[0x1E69E9C10];
          v174 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v385 = 136315906;
          *&v385[4] = "operator[]";
          *&v385[12] = 1024;
          if (v174)
          {
            v175 = 3;
          }

          else
          {
            v175 = 2;
          }

          *&v385[14] = 613;
          *&v385[18] = 2048;
          *&v385[20] = v12;
          *&v385[28] = 2048;
          *&v385[30] = v12;
          _os_log_send_and_compose_impl(v175, v328, v359, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v385, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_308:
          *&v328[0] = 0;
          memset(v359, 0, 80);
          v176 = MEMORY[0x1E69E9C10];
          v177 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v385 = 136315906;
          *&v385[4] = "operator[]";
          *&v385[12] = 1024;
          if (v177)
          {
            v178 = 3;
          }

          else
          {
            v178 = 2;
          }

          *&v385[14] = 789;
          *&v385[18] = 2048;
          *&v385[20] = v19;
          *&v385[28] = 2048;
          *&v385[30] = v36;
          _os_log_send_and_compose_impl(v178, v328, v359, 80, &dword_1E1C61000, v176, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v385, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_312:
          v331 = 0;
          memset(v359, 0, 80);
          v179 = MEMORY[0x1E69E9C10];
          v180 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          v424 = 1024;
          if (v180)
          {
            v181 = 3;
          }

          else
          {
            v181 = 2;
          }

          v425 = 797;
          v426 = 2048;
          v427 = v19;
          v428 = 2048;
          v429 = v35;
          _os_log_send_and_compose_impl(v181, &v331, v359, 80, &dword_1E1C61000, v179, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_316:
          *v385 = 0;
          memset(v359, 0, 80);
          v182 = MEMORY[0x1E69E9C10];
          v183 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v387 = 136315906;
          *&v387[4] = "operator[]";
          *&v387[12] = 1024;
          if (v183)
          {
            v184 = 3;
          }

          else
          {
            v184 = 2;
          }

          *&v387[14] = 797;
          *&v387[18] = 2048;
          *&v387[20] = v19;
          *&v387[28] = 2048;
          *&v387[30] = v35;
          _os_log_send_and_compose_impl(v184, v385, v359, 80, &dword_1E1C61000, v182, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_320:
          *v423 = 0;
          memset(v359, 0, 80);
          v185 = MEMORY[0x1E69E9C10];
          v186 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v385 = 136315906;
          *&v385[4] = "operator[]";
          *&v385[12] = 1024;
          if (v186)
          {
            v187 = 3;
          }

          else
          {
            v187 = 2;
          }

          *&v385[14] = 797;
          *&v385[18] = 2048;
          *&v385[20] = v19;
          *&v385[28] = 2048;
          *&v385[30] = v35;
          _os_log_send_and_compose_impl(v187, v423, v359, 80, &dword_1E1C61000, v185, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v385, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_324:
          v331 = 0;
          memset(v359, 0, 80);
          v188 = MEMORY[0x1E69E9C10];
          v189 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v423 = 136315906;
          *&v423[4] = "operator[]";
          v424 = 1024;
          if (v189)
          {
            v190 = 3;
          }

          else
          {
            v190 = 2;
          }

          v425 = 797;
          v426 = 2048;
          v427 = v19;
          v428 = 2048;
          v429 = v35;
          _os_log_send_and_compose_impl(v190, &v331, v359, 80, &dword_1E1C61000, v188, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v423, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_328:
          *v385 = 0;
          memset(v359, 0, 80);
          v191 = MEMORY[0x1E69E9C10];
          v192 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v387 = 136315906;
          *&v387[4] = "operator[]";
          *&v387[12] = 1024;
          if (v192)
          {
            v193 = 3;
          }

          else
          {
            v193 = 2;
          }

          *&v387[14] = 797;
          *&v387[18] = 2048;
          *&v387[20] = v20;
          *&v387[28] = 2048;
          *&v387[30] = HasSkinningData;
          _os_log_send_and_compose_impl(v193, v385, v359, 80, &dword_1E1C61000, v191, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_332:
          *v385 = 0;
          memset(v359, 0, 80);
          v194 = MEMORY[0x1E69E9C10];
          v195 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v387 = 136315906;
          *&v387[4] = "operator[]";
          *&v387[12] = 1024;
          if (v195)
          {
            v196 = 3;
          }

          else
          {
            v196 = 2;
          }

          *&v387[14] = 797;
          *&v387[18] = 2048;
          *&v387[20] = v12;
          *&v387[28] = 2048;
          *&v387[30] = v20;
          _os_log_send_and_compose_impl(v196, v385, v359, 80, &dword_1E1C61000, v194, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_336:
          *&v328[0] = 0;
          memset(v359, 0, 80);
          v197 = MEMORY[0x1E69E9C10];
          v198 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v385 = 136315906;
          *&v385[4] = "operator[]";
          *&v385[12] = 1024;
          if (v198)
          {
            v199 = 3;
          }

          else
          {
            v199 = 2;
          }

          *&v385[14] = 789;
          *&v385[18] = 2048;
          *&v385[20] = v12;
          *&v385[28] = 2048;
          *&v385[30] = v19;
          _os_log_send_and_compose_impl(v199, v328, v359, 80, &dword_1E1C61000, v197, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v385, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_340:
          *v385 = 0;
          memset(v359, 0, 80);
          v200 = MEMORY[0x1E69E9C10];
          v201 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v387 = 136315906;
          *&v387[4] = "operator[]";
          *&v387[12] = 1024;
          if (v201)
          {
            v202 = 3;
          }

          else
          {
            v202 = 2;
          }

          *&v387[14] = 789;
          *&v387[18] = 2048;
          *&v387[20] = v12;
          *&v387[28] = 2048;
          *&v387[30] = v20;
          _os_log_send_and_compose_impl(v202, v385, v359, 80, &dword_1E1C61000, v200, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_344:
          *&v328[0] = 0;
          memset(v359, 0, 80);
          v203 = MEMORY[0x1E69E9C10];
          v204 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v387 = 136315906;
          *&v387[4] = "operator[]";
          *&v387[12] = 1024;
          if (v204)
          {
            v205 = 3;
          }

          else
          {
            v205 = 2;
          }

          *&v387[14] = 613;
          *&v387[18] = 2048;
          *&v387[20] = 0;
          *&v387[28] = 2048;
          *&v387[30] = 0;
          _os_log_send_and_compose_impl(v205, v328, v359, 80, &dword_1E1C61000, v203, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_348:
          *&v328[0] = 0;
          memset(v359, 0, 80);
          v206 = MEMORY[0x1E69E9C10];
          v207 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v387 = 136315906;
          *&v387[4] = "operator[]";
          *&v387[12] = 1024;
          if (v207)
          {
            v208 = 3;
          }

          else
          {
            v208 = 2;
          }

          *&v387[14] = 613;
          *&v387[18] = 2048;
          *&v387[20] = 1;
          *&v387[28] = 2048;
          *&v387[30] = 1;
          _os_log_send_and_compose_impl(v208, v328, v359, 80, &dword_1E1C61000, v206, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_352:
          *&v328[0] = 0;
          memset(v359, 0, 80);
          v209 = MEMORY[0x1E69E9C10];
          v210 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v387 = 136315906;
          *&v387[4] = "operator[]";
          *&v387[12] = 1024;
          if (v210)
          {
            v211 = 3;
          }

          else
          {
            v211 = 2;
          }

          *&v387[14] = 613;
          *&v387[18] = 2048;
          *&v387[20] = 2;
          *&v387[28] = 2048;
          *&v387[30] = v20 & 3;
          _os_log_send_and_compose_impl(v211, v328, v359, 80, &dword_1E1C61000, v209, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_356:
          *&v328[0] = 0;
          memset(v359, 0, 80);
          v212 = MEMORY[0x1E69E9C10];
          v213 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v387 = 136315906;
          *&v387[4] = "operator[]";
          *&v387[12] = 1024;
          if (v213)
          {
            v214 = 3;
          }

          else
          {
            v214 = 2;
          }

          *&v387[14] = 613;
          *&v387[18] = 2048;
          *&v387[20] = 3;
          *&v387[28] = 2048;
          *&v387[30] = 3;
          _os_log_send_and_compose_impl(v214, v328, v359, 80, &dword_1E1C61000, v212, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
LABEL_360:
          *v385 = 0;
          memset(v359, 0, 80);
          v215 = MEMORY[0x1E69E9C10];
          v216 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v387 = 136315906;
          *&v387[4] = "operator[]";
          *&v387[12] = 1024;
          if (v216)
          {
            v217 = 3;
          }

          else
          {
            v217 = 2;
          }

          *&v387[14] = 789;
          *&v387[18] = 2048;
          *&v387[20] = v20;
          *&v387[28] = 2048;
          *&v387[30] = v35;
          _os_log_send_and_compose_impl(v217, v385, v359, 80, &dword_1E1C61000, v215, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
          _os_crash_msg();
          __break(1u);
          goto LABEL_364;
        }

LABEL_223:
        *v359 = *v389;
        *&v389[8] = &str_67;
        *v389 = 0;
        *&v359[48] = v390;
        *&v359[64] = v391;
        *&v359[80] = v392;
        *&v359[96] = v393;
        *&v359[16] = *&v389[16];
        *&v359[32] = *&v389[32];
        *&v359[112] = v394[0];
        memset(v394, 0, 24);
        ++LODWORD(v394[3]);
        v360 = v395;
        v361 = v396;
        v395 = 0u;
        v396 = 0u;
        *&v362[8] = v398;
        v398 = 0u;
        v363 = v399;
        v12 = v389;
        v399 = 0u;
        ++v397;
        ++v400;
        *&v364[8] = v401;
        v365 = v402;
        v401 = 0u;
        v402 = 0u;
        ++v403;
        v367 = v404;
        v368 = v405;
        v404 = 0u;
        v405 = 0u;
        ++v406;
        v370 = v407;
        v371 = v408;
        v407 = 0u;
        v408 = 0u;
        ++v409;
        v113 = v410;
        v114 = v411;
        v410 = 0u;
        v411 = 0u;
        v373 = v113;
        v374 = v114;
        ++v412;
        v376 = v413;
        v377 = v414;
        v413 = 0u;
        v414 = 0u;
        ++v415;
        v115 = v416;
        v116 = v417;
        v416 = 0u;
        v417 = 0u;
        ++v418;
        v381 = v419;
        v382 = v420;
        v419 = 0u;
        v420 = 0u;
        v384 = v422;
        v422 = 0;
        ++v421;
        LOBYTE(v332[0]) = 1;
        v332[1] = *v359;
        *&v359[8] = &str_67;
        *v359 = 0;
        v333 = *&v389[16];
        v334 = *&v389[32];
        *&v335[32] = v392;
        v336 = v393;
        *v335 = v390;
        *&v335[16] = v391;
        *v337 = *&v359[112];
        memset(&v359[112], 0, 24);
        *&v337[8] = *&v359[120];
        *&v359[136] = 2;
        LODWORD(v338) = 1;
        v339 = v360;
        v340 = v361;
        v360 = 0u;
        v361 = 0u;
        v342[0] = *&v362[8];
        *&v362[8] = 0u;
        v342[1] = v363;
        v363 = 0u;
        *v362 = 2;
        *v364 = 2;
        v341 = 1;
        v343 = 1;
        v344[0] = *&v364[8];
        v344[1] = v365;
        *&v364[8] = 0u;
        v365 = 0u;
        v366 = 2;
        v345 = 1;
        v346[0] = v367;
        v346[1] = v368;
        v367 = 0u;
        v368 = 0u;
        v369 = 2;
        v347 = 1;
        v348[0] = v370;
        v348[1] = v371;
        v370 = 0u;
        v371 = 0u;
        v372 = 2;
        v349 = 1;
        v350[0] = v373;
        v350[1] = v374;
        v373 = 0u;
        v374 = 0u;
        v375 = 2;
        v351 = 1;
        v352[0] = v376;
        v352[1] = v377;
        v376 = 0u;
        v377 = 0u;
        v378 = 2;
        v353 = 1;
        v354[0] = v115;
        v354[1] = v116;
        memset(v379, 0, sizeof(v379));
        v380 = 2;
        v355 = 1;
        v356[0] = v381;
        v356[1] = v382;
        v381 = 0u;
        v382 = 0u;
        v358 = v384;
        v384 = 0;
        v383 = 2;
        v357 = 1;
        re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(&v381 + 8);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v379 + 8);
        re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(&v376 + 8);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v373 + 8);
        re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(&v370 + 8);
        re::DynamicArray<re::MeshLodLevelInfo>::deinit(&v367 + 8);
        re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v364[16]);
        re::DynamicArray<re::MeshAssetPart>::deinit(&v362[16]);
        re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v360 + 8);
        v117 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(&v359[112]);
        if (v359[0])
        {
          if (v359[0])
          {
          }
        }

        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v325);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v328);
      }

      else
      {
        LOBYTE(v332[0]) = 0;
        *&v332[1] = 100;
        *(&v332[1] + 1) = re::AssetErrorCategory(void)::instance;
        v333 = *v359;
        v334 = *&v359[16];
      }

      re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(&v419 + 8);
      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v416 + 8);
      re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(&v413 + 8);
      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v410 + 8);
      re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(&v407 + 8);
      re::DynamicArray<re::MeshLodLevelInfo>::deinit(&v404 + 8);
      re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v401 + 8);
      re::DynamicArray<re::MeshAssetPart>::deinit(&v398 + 8);
      re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v395 + 8);
      v118 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v394);
      if (v389[0])
      {
        if (v389[0])
        {
        }
      }

      v119 = LOBYTE(v332[0]);
      if (LOBYTE(v332[0]) == 1)
      {
        v120 = (v277 + (v280 << 9));
        re::StringID::operator=(v120, &v332[1]);
        v121 = v334;
        *(v120 + 1) = v333;
        *(v120 + 2) = v121;
        v122 = *v335;
        v123 = *&v335[16];
        v124 = v336;
        *(v120 + 5) = *&v335[32];
        *(v120 + 6) = v124;
        *(v120 + 3) = v122;
        *(v120 + 4) = v123;
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 112, v337);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 152, &v339 + 1);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 192, v342 + 1);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 232, v344 + 1);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 272, v346 + 1);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 312, v348 + 1);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 352, v350 + 1);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 392, v352 + 1);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 432, v354 + 1);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v120 + 472, v356 + 1);
        re::DynamicArray<re::MeshAssetSkeleton>::operator=(v120 + 232, &v312 + 1);
      }

      else
      {
        *v389 = v332[1];
        re::DynamicString::DynamicString(&v389[16], &v333);
        *a3 = 0;
        *(a3 + 8) = *v389;
        v125 = *&v389[40];
        *(a3 + 24) = *&v389[16];
        *(a3 + 48) = v125;
        *(a3 + 32) = *&v389[24];
      }

      if (LOBYTE(v332[0]) == 1)
      {
        re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v356 + 8);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v354 + 8);
        re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v352 + 8);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v350 + 8);
        re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v348 + 8);
        re::DynamicArray<re::MeshLodLevelInfo>::deinit(v346 + 8);
        re::DynamicArray<re::MeshAssetSkeleton>::deinit(v344 + 8);
        re::DynamicArray<re::MeshAssetPart>::deinit(v342 + 8);
        re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v339 + 8);
        v126 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v337);
        if ((v332[1] & 1) == 0)
        {
          goto LABEL_241;
        }

        if ((v332[1] & 1) == 0)
        {
          goto LABEL_241;
        }

        v127 = *(&v332[1] + 1);
      }

      else
      {
        v128 = v333;
        if (!v333 || (BYTE8(v333) & 1) == 0)
        {
          goto LABEL_241;
        }

        v127 = v334;
      }

      (*(*v128 + 40))(v128, v127);
LABEL_241:
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v299);
      if (!v119)
      {
        goto LABEL_283;
      }

      v16 = v280 + 1;
    }

    while (v280 + 1 != v278);
  }

  v20 = v297[7];
  re::DynamicArray<re::MeshAssetInstance>::resize(&v309 + 8, v20);
  memset(v387, 0, 24);
  if (v20)
  {
    v137 = 0;
    v19 = 0;
    v35 = 0;
    while (1)
    {
      v17 = v297[7];
      if (v17 <= v35)
      {
        break;
      }

      v17 = *(&v310 + 1);
      if (*(&v310 + 1) <= v35)
      {
        goto LABEL_368;
      }

      v138 = (v297[9] + v137);
      v12 = *(v138 + 16);
      v17 = *(&v307 + 1);
      if (*(&v307 + 1) <= v12)
      {
        goto LABEL_372;
      }

      v17 = *&v387[8];
      if (*&v387[8] <= v12)
      {
        goto LABEL_376;
      }

      v139 = v312;
      v140 = *(v309 + (v12 << 9) + 8);
      v141 = *(*&v387[16] + 4 * v12);
      *(*&v387[16] + 4 * v12) = v141 + 1;
      v142 = re::DynamicString::format(v359, "%s-%u", v136, v140, v141);
      if (v359[8])
      {
        v12 = *&v359[16];
      }

      else
      {
        v12 = &v359[9];
      }

      *&v332[0] = 0;
      *(&v332[0] + 1) = &str_67;
      v143 = re::StringID::operator=((v139 + v19), v332);
      if (v332[0])
      {
        if (v332[0])
        {
        }
      }

      *(&v332[0] + 1) = &str_67;
      *&v332[0] = 0;
      if (*v359 && (v359[8] & 1) != 0)
      {
        (*(**v359 + 40))();
      }

      v144 = v139 + v19;
      v145 = *v138;
      v146 = v138[1];
      v147 = v138[3];
      *(v144 + 48) = v138[2];
      *(v144 + 64) = v147;
      *(v144 + 16) = v145;
      *(v144 + 32) = v146;
      *(v144 + 80) = *(v138 + 16);
      ++v35;
      v19 += 96;
      v137 += 80;
      if (v20 == v35)
      {
        goto LABEL_273;
      }
    }

LABEL_364:
    *v359 = 0;
    v334 = 0u;
    *v335 = 0u;
    v333 = 0u;
    memset(v332, 0, sizeof(v332));
    v218 = MEMORY[0x1E69E9C10];
    v219 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v389 = 136315906;
    *&v389[4] = "operator[]";
    *&v389[12] = 1024;
    if (v219)
    {
      v220 = 3;
    }

    else
    {
      v220 = 2;
    }

    *&v389[14] = 797;
    *&v389[18] = 2048;
    *&v389[20] = v35;
    *&v389[28] = 2048;
    *&v389[30] = v17;
    _os_log_send_and_compose_impl(v220, v359, v332, 80, &dword_1E1C61000, v218, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v389, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_368:
    *v359 = 0;
    v334 = 0u;
    *v335 = 0u;
    v333 = 0u;
    memset(v332, 0, sizeof(v332));
    v221 = MEMORY[0x1E69E9C10];
    v222 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v389 = 136315906;
    *&v389[4] = "operator[]";
    *&v389[12] = 1024;
    if (v222)
    {
      v223 = 3;
    }

    else
    {
      v223 = 2;
    }

    *&v389[14] = 789;
    *&v389[18] = 2048;
    *&v389[20] = v35;
    *&v389[28] = 2048;
    *&v389[30] = v17;
    _os_log_send_and_compose_impl(v223, v359, v332, 80, &dword_1E1C61000, v221, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v389, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_372:
    *v385 = 0;
    v334 = 0u;
    *v335 = 0u;
    v333 = 0u;
    memset(v332, 0, sizeof(v332));
    v224 = MEMORY[0x1E69E9C10];
    v225 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v389 = 136315906;
    *&v389[4] = "operator[]";
    *&v389[12] = 1024;
    if (v225)
    {
      v226 = 3;
    }

    else
    {
      v226 = 2;
    }

    *&v389[14] = 789;
    *&v389[18] = 2048;
    *&v389[20] = v12;
    *&v389[28] = 2048;
    *&v389[30] = v17;
    _os_log_send_and_compose_impl(v226, v385, v332, 80, &dword_1E1C61000, v224, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v389, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_376:
    *v385 = 0;
    v334 = 0u;
    *v335 = 0u;
    v333 = 0u;
    memset(v332, 0, sizeof(v332));
    v227 = MEMORY[0x1E69E9C10];
    v228 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v389 = 136315906;
    *&v389[4] = "operator[]";
    *&v389[12] = 1024;
    if (v228)
    {
      v229 = 3;
    }

    else
    {
      v229 = 2;
    }

    *&v389[14] = 468;
    *&v389[18] = 2048;
    *&v389[20] = v12;
    *&v389[28] = 2048;
    *&v389[30] = v17;
    _os_log_send_and_compose_impl(v229, v385, v332, 80, &dword_1E1C61000, v227, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v389, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_380:
    *v385 = 0;
    memset(v359, 0, 80);
    v230 = MEMORY[0x1E69E9C10];
    v231 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v387 = 136315906;
    *&v387[4] = "operator[]";
    *&v387[12] = 1024;
    if (v231)
    {
      v232 = 3;
    }

    else
    {
      v232 = 2;
    }

    *&v387[14] = 797;
    *&v387[18] = 2048;
    *&v387[20] = v20;
    *&v387[28] = 2048;
    *&v387[30] = v35;
    _os_log_send_and_compose_impl(v232, v385, v359, 80, &dword_1E1C61000, v230, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_384:
    *&v328[0] = 0;
    memset(v359, 0, 80);
    v233 = MEMORY[0x1E69E9C10];
    v234 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v385 = 136315906;
    *&v385[4] = "operator[]";
    *&v385[12] = 1024;
    if (v234)
    {
      v235 = 3;
    }

    else
    {
      v235 = 2;
    }

    *&v385[14] = 613;
    *&v385[18] = 2048;
    *&v385[20] = 0;
    *&v385[28] = 2048;
    *&v385[30] = 0;
    _os_log_send_and_compose_impl(v235, v328, v359, 80, &dword_1E1C61000, v233, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v385, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_388:
    *&v328[0] = 0;
    memset(v359, 0, 80);
    v236 = MEMORY[0x1E69E9C10];
    v237 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v385 = 136315906;
    *&v385[4] = "operator[]";
    *&v385[12] = 1024;
    if (v237)
    {
      v238 = 3;
    }

    else
    {
      v238 = 2;
    }

    *&v385[14] = 613;
    *&v385[18] = 2048;
    *&v385[20] = 1;
    *&v385[28] = 2048;
    *&v385[30] = 1;
    _os_log_send_and_compose_impl(v238, v328, v359, 80, &dword_1E1C61000, v236, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v385, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_392:
    *&v328[0] = 0;
    memset(v359, 0, 80);
    v239 = MEMORY[0x1E69E9C10];
    v240 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v385 = 136315906;
    *&v385[4] = "operator[]";
    *&v385[12] = 1024;
    if (v240)
    {
      v241 = 3;
    }

    else
    {
      v241 = 2;
    }

    *&v385[14] = 613;
    *&v385[18] = 2048;
    *&v385[20] = 2;
    *&v385[28] = 2048;
    *&v385[30] = v19 & 3;
    _os_log_send_and_compose_impl(v241, v328, v359, 80, &dword_1E1C61000, v239, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v385, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_396:
    *&v328[0] = 0;
    memset(v359, 0, 80);
    v242 = MEMORY[0x1E69E9C10];
    v243 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v385 = 136315906;
    *&v385[4] = "operator[]";
    *&v385[12] = 1024;
    if (v243)
    {
      v244 = 3;
    }

    else
    {
      v244 = 2;
    }

    *&v385[14] = 613;
    *&v385[18] = 2048;
    *&v385[20] = 3;
    *&v385[28] = 2048;
    *&v385[30] = 3;
    _os_log_send_and_compose_impl(v244, v328, v359, 80, &dword_1E1C61000, v242, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v385, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_400:
    *v385 = 0;
    memset(v359, 0, 80);
    v245 = MEMORY[0x1E69E9C10];
    v246 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v387 = 136315906;
    *&v387[4] = "operator[]";
    *&v387[12] = 1024;
    if (v246)
    {
      v247 = 3;
    }

    else
    {
      v247 = 2;
    }

    *&v387[14] = 797;
    *&v387[18] = 2048;
    *&v387[20] = HasSkinningData;
    *&v387[28] = 2048;
    *&v387[30] = v20;
    _os_log_send_and_compose_impl(v247, v385, v359, 80, &dword_1E1C61000, v245, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_404:
    *v385 = 0;
    memset(v359, 0, 80);
    v248 = MEMORY[0x1E69E9C10];
    v249 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v387 = 136315906;
    *&v387[4] = "operator[]";
    *&v387[12] = 1024;
    if (v249)
    {
      v250 = 3;
    }

    else
    {
      v250 = 2;
    }

    *&v387[14] = 789;
    *&v387[18] = 2048;
    *&v387[20] = HasSkinningData;
    *&v387[28] = 2048;
    *&v387[30] = v12;
    _os_log_send_and_compose_impl(v250, v385, v359, 80, &dword_1E1C61000, v248, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_408:
    *v359 = 0;
    v334 = 0u;
    *v335 = 0u;
    v333 = 0u;
    memset(v332, 0, sizeof(v332));
    v251 = MEMORY[0x1E69E9C10];
    v252 = v16;
    v253 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v389 = 136315906;
    *&v389[4] = "operator[]";
    *&v389[12] = 1024;
    if (v253)
    {
      v254 = 3;
    }

    else
    {
      v254 = 2;
    }

    *&v389[14] = 797;
    *&v389[18] = 2048;
    *&v389[20] = v252;
    *&v389[28] = 2048;
    *&v389[30] = v20;
    _os_log_send_and_compose_impl(v254, v359, v332, 80, &dword_1E1C61000, v251, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v389, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_412:
    *v359 = 0;
    v334 = 0u;
    *v335 = 0u;
    v333 = 0u;
    memset(v332, 0, sizeof(v332));
    v255 = MEMORY[0x1E69E9C10];
    v256 = v16;
    v257 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v389 = 136315906;
    *&v389[4] = "operator[]";
    *&v389[12] = 1024;
    if (v257)
    {
      v258 = 3;
    }

    else
    {
      v258 = 2;
    }

    *&v389[14] = 789;
    *&v389[18] = 2048;
    *&v389[20] = v256;
    *&v389[28] = 2048;
    *&v389[30] = v20;
    _os_log_send_and_compose_impl(v258, v359, v332, 80, &dword_1E1C61000, v255, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v389, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_416:
    *v385 = 0;
    memset(v359, 0, 80);
    v259 = MEMORY[0x1E69E9C10];
    v260 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v387 = 136315906;
    *&v387[4] = "operator[]";
    *&v387[12] = 1024;
    if (v260)
    {
      v261 = 3;
    }

    else
    {
      v261 = 2;
    }

    *&v387[14] = 797;
    *&v387[18] = 2048;
    *&v387[20] = 0;
    *&v387[28] = 2048;
    *&v387[30] = 0;
    _os_log_send_and_compose_impl(v261, v385, v359, 80, &dword_1E1C61000, v259, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
LABEL_420:
    *v385 = 0;
    memset(v359, 0, 80);
    v262 = MEMORY[0x1E69E9C10];
    v263 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v387 = 136315906;
    *&v387[4] = "operator[]";
    *&v387[12] = 1024;
    if (v263)
    {
      v264 = 3;
    }

    else
    {
      v264 = 2;
    }

    *&v387[14] = 797;
    *&v387[18] = 2048;
    *&v387[20] = 0;
    *&v387[28] = 2048;
    *&v387[30] = 0;
    _os_log_send_and_compose_impl(v264, v385, v359, 80, &dword_1E1C61000, v262, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v387, 38, v274, v275);
    _os_crash_msg();
    __break(1u);
    goto LABEL_424;
  }

LABEL_273:
  if (*(&v307 + 1))
  {
    v148 = v309;
    v149 = *(&v307 + 1) << 9;
    do
    {
      re::importModelBlendShapes(v148);
      v148 = (v148 + 512);
      v149 -= 512;
    }

    while (v149);
  }

  re::MeshAssetData::generateMetaData(&v306);
  v150 = v306;
  v306 = 0;
  ++v308;
  ++v311;
  ++v314;
  v151 = v318;
  ++v317;
  v152 = v319;
  LODWORD(v339) = v319;
  v153 = v320;
  v318 = 0;
  v320 = 0;
  v154 = v323;
  v323 = 0;
  ++v322;
  *a3 = 1;
  *(a3 + 8) = v150;
  *&v332[0] = 0;
  *(a3 + 16) = v307;
  v155 = v310;
  *(a3 + 40) = v309;
  *(a3 + 56) = v155;
  v156 = v313;
  *(a3 + 80) = v312;
  *(a3 + 96) = v156;
  v157 = v316;
  *(a3 + 120) = v315;
  v307 = 0u;
  *(v332 + 8) = 0u;
  DWORD2(v332[1]) = 2;
  *(a3 + 32) = 1;
  v309 = 0u;
  v310 = 0u;
  v333 = 0u;
  v334 = 0u;
  *(a3 + 72) = 1;
  v312 = 0u;
  memset(&v335[8], 0, 32);
  v313 = 0u;
  *v335 = 2;
  *&v335[40] = 2;
  *(a3 + 112) = 1;
  v315 = 0u;
  v316 = 0u;
  *(a3 + 136) = v157;
  v336 = 0u;
  *v337 = 0u;
  *(a3 + 160) = v151;
  v338 = 0;
  *&v337[16] = 2;
  *(a3 + 152) = 1;
  *(a3 + 168) = v152;
  *(a3 + 176) = v153;
  *(&v339 + 1) = 0;
  v158 = v321;
  v321 = 0u;
  *(a3 + 184) = v158;
  v340 = 0u;
  *(a3 + 208) = v154;
  *&v342[0] = 0;
  v341 = 2;
  *(a3 + 200) = 1;
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v339 + 8);
  if (*(&v336 + 1))
  {
    if (v338)
    {
      (*(**(&v336 + 1) + 40))();
    }

    v338 = 0;
    *v337 = 0uLL;
    *(&v336 + 1) = 0;
    ++*&v337[16];
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v335[16]);
  re::DynamicArray<re::MeshAssetInstance>::deinit(&v333 + 8);
  re::DynamicArray<re::MeshAssetModel>::deinit(v332);
  if (*v387 && *&v387[8])
  {
    (*(**v387 + 40))();
  }

LABEL_283:
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v300);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v303);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v320);
  if (*(&v315 + 1))
  {
    if (v318)
    {
      (*(**(&v315 + 1) + 40))();
    }

    v318 = 0;
    v316 = 0uLL;
    *(&v315 + 1) = 0;
    ++v317;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v312 + 8);
  re::DynamicArray<re::MeshAssetInstance>::deinit(&v309 + 8);
  re::DynamicArray<re::MeshAssetModel>::deinit(&v306);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v324, v159, v160);
}

double re::makeMeshAssetDataFromGeomScene@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  memset(v7, 0, sizeof(v7));
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  DWORD1(v8) = 0x7FFFFFFF;
  v10 = 0;
  v11 = 0x7FFFFFFFLL;
  v6[0] = *a2;
  *(v6 + 7) = *(a2 + 7);
  re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v7, (a2 + 2));
  re::makeMeshAssetDataFromGeomScene(a1, v6, a3);
  re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v7);
}

uint64_t *re::createMeshCollectionFromMeshAsset@<X0>(re::Allocator **__return_ptr a1@<X8>, re *this@<X0>, const re::mtl::Device *a3@<X1>)
{
  v4 = a3;
  v158 = *MEMORY[0x1E69E9840];
  a1[4] = 0;
  a1[1] = 0;
  a1[2] = 0;
  *(a1 + 6) = 0;
  v6 = *(a3 + 2);
  v115 = re::globalAllocators(this)[2];
  *a1 = v115;
  v112 = v6;
  re::DynamicArray<re::MeshModel>::setCapacity(a1, v6);
  v109 = a1;
  ++*(a1 + 6);
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v7 = *(v4 + 12);
  if (v7)
  {
    re::FixedArray<re::BufferSlice>::init<>(&v118, v115, *(v4 + 12));
    v8 = 0;
    v9 = 0;
    v10 = 32;
    do
    {
      v11 = *(v4 + 12);
      if (v11 <= v9)
      {
        goto LABEL_128;
      }

      v12 = [*this newBufferWithBytes:*(*(v4 + 14) + v8 + 104) length:*(*(v4 + 14) + v8 + 96) << 6 options:0];
      *&v135[0] = v12;
      DWORD2(v135[1]) = 0;
      LODWORD(v135[2]) = 0;
      DWORD1(v135[2]) = [v12 length];
      v3 = v119;
      if (v119 <= v9)
      {
LABEL_132:
        *v133 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        v101 = MEMORY[0x1E69E9C10];
        v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v155[0]) = 136315906;
        *(v155 + 4) = "operator[]";
        WORD6(v155[0]) = 1024;
        if (v102)
        {
          v103 = 3;
        }

        else
        {
          v103 = 2;
        }

        *(v155 + 14) = 468;
        WORD1(v155[1]) = 2048;
        *(&v155[1] + 4) = v9;
        WORD6(v155[1]) = 2048;
        *(&v155[1] + 14) = v3;
        _os_log_send_and_compose_impl(v103, v133, &v122, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v155, 38, v107, v108);
        _os_crash_msg();
        __break(1u);
LABEL_136:
        *&v155[0] = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        v104 = MEMORY[0x1E69E9C10];
        v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v135[0]) = 136315906;
        *(v135 + 4) = "operator[]";
        WORD6(v135[0]) = 1024;
        if (v105)
        {
          v106 = 3;
        }

        else
        {
          v106 = 2;
        }

        *(v135 + 14) = 797;
        WORD1(v135[1]) = 2048;
        *(&v135[1] + 4) = v10;
        WORD6(v135[1]) = 2048;
        *(&v135[1] + 14) = v9;
        _os_log_send_and_compose_impl(v106, v155, &v122, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v107, v108);
        _os_crash_msg();
        __break(1u);
LABEL_140:
        re::internal::assertLog(4, v56, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
        _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
        __break(1u);
      }

      v3 = (v120 + v10);
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v120 + v10 - 32, v135);
      *v3 = *&v135[2];
      if (DWORD2(v135[1]) != -1)
      {
        (off_1F5D0BCB8[DWORD2(v135[1])])(&v122, v135);
      }

      DWORD2(v135[1]) = -1;
      if (v12)
      {
      }

      ++v9;
      v10 += 40;
      v8 += 112;
    }

    while (v7 != v9);
  }

  v13 = this;
  if (v112)
  {
    v10 = 0;
    v14 = &v122;
    v15.i64[0] = 0x7F0000007FLL;
    v15.i64[1] = 0x7F0000007FLL;
    v111 = vnegq_f32(v15);
    v110 = v4;
    while (1)
    {
      v9 = *(v4 + 2);
      if (v9 <= v10)
      {
        goto LABEL_136;
      }

      v16 = 0;
      v17 = *(v4 + 4);
      *&v122 = 0;
      *(&v122 + 1) = &str_67;
      *&v18 = 0x7F0000007FLL;
      *(&v18 + 1) = 0x7F0000007FLL;
      v123 = v111;
      v124 = v18;
      *&v126 = 0;
      v125 = 0uLL;
      v127 = v111;
      v128 = v18;
      v130 = 0;
      v131 = 0;
      v129 = 0;
      do
      {
        v19 = &v122 + v16;
        *(v19 + 18) = 0;
        *(v19 + 22) = 0;
        v16 += 40;
      }

      while (v16 != 720);
      v113 = v10;
      v11 = v17 + (v10 << 9);
      v20 = re::StringID::operator=(&v122, v11);
      v21 = *(v11 + 208);
      v116 = v21;
      v3 = *(v11 + 128);
      if (v3)
      {
        break;
      }

LABEL_20:
      if (*(v11 + 168) && v119)
      {
        *&v135[2] = 0;
        *&v137 = 0;
        v136 = 0uLL;
        DWORD2(v137) = 0;
        v138 = 0;
        v139 = 0;
        DWORD2(v135[2]) = 1;
        v140 = 1;
        v142 = 0;
        v143 = 0;
        v141 = 0;
        v144 = 0;
        *&v135[0] = v115;
        *(&v135[0] + 1) = v120;
        v135[1] = v119;
        re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::init(&v135[1] + 8, v115, 1uLL);
        re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::init(&v138, v115, 1uLL);
        if (v116 && *(v11 + 168))
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = (*(v11 + 184) + v25);
            v10 = *v27;
            v29 = v27[2];
            v28 = v27[3];
            v31 = v27[5];
            v30 = v27[6];
            v32 = v27[9];
            v117 = v27[8];
            v33 = re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::addUninitialized(&v135[1] + 8);
            *v33 = v10;
            *(v33 + 8) = v28;
            *(v33 + 16) = v29;
            *(v33 + 24) = v30;
            *(v33 + 32) = v31;
            *(v33 + 40) = v32;
            *(v33 + 48) = v117;
            if (v26 >= v116)
            {
              break;
            }

            v25 += 144;
          }

          while (v26++ < *(v11 + 168));
        }

        v14 = &v122;
        v13 = this;
        re::SkinningModelBuilder::buildDeformationModel(v135, this, &v132);
        re::BucketArray<re::SkinningModelBuilder::PreparedSkinnedMeshPartData,4ul>::deinit(&v138);
        if (v138)
        {
          v35 = v140;
          if ((v140 & 1) == 0)
          {
            (*(*v138 + 40))();
            v35 = v140;
          }

          v138 = 0;
          v139 = 0;
          v140 = (v35 | 1) + 2;
        }

        re::BucketArray<re::SkinningModelBuilder::RawSkinnedMeshPartData,4ul>::deinit(&v135[1] + 8);
        inited = *(&v135[1] + 1);
        v4 = v110;
        if (*(&v135[1] + 1) && (BYTE8(v135[2]) & 1) == 0)
        {
          inited = (*(**(&v135[1] + 1) + 40))();
        }
      }

      v3 = *(v11 + 408);
      if (v3)
      {
        re::WrapDeformerModelBuilder::WrapDeformerModelBuilder(v133, v115, v13, v116, *(v11 + 408), &v132);
        v24 = 0;
        v36 = 64;
        do
        {
          v9 = *(v11 + 408);
          if (v9 <= v24)
          {
            goto LABEL_88;
          }

          v37 = *(v11 + 424) + v36;
          v10 = *(v37 + 40);
          v38 = strlen(*(v37 - 56));
          *&v135[0] = *(v37 - 56);
          *(&v135[0] + 1) = v38;
          v39 = *(v37 - 24);
          *&v135[1] = *(v37 - 16);
          *(&v135[1] + 1) = v39;
          v40 = *v37;
          *&v135[2] = *(v37 + 8);
          *(&v135[2] + 1) = v40;
          v41 = *(v37 + 24);
          *&v136 = *(v37 + 32);
          *(&v136 + 1) = v41;
          re::WrapDeformerModelBuilder::addWrapTarget(v133, v10, v24, v135);
          inited = re::WrapDeformerModelBuilder::setEnvelopeBufferName(v133, *(v37 + 40), v24++, (v37 - 48));
          v36 += 112;
        }

        while (v3 != v24);
        v4 = v110;
      }

      v3 = *(v11 + 328);
      if (v3)
      {
        re::ContactDeformerModelBuilder::ContactDeformerModelBuilder(v133, v115, v13, v116, *(v11 + 328), &v132);
        v24 = 0;
        do
        {
          v9 = *(v11 + 328);
          if (v9 <= v24)
          {
            goto LABEL_92;
          }

          v10 = *(v11 + 344) + 48 * v24;
          inited = re::ContactDeformerModelBuilder::initTargetsForMeshPart(v133, *(v10 + 40), v24, *(v10 + 24), v10);
          v42 = *(v10 + 24);
          if (v42)
          {
            v43 = *(v10 + 32);
            v44 = &v43[4 * v42];
            do
            {
              v135[0] = *v43;
              *&v135[1] = 0;
              v45 = v43[2];
              *(&v135[0] + 1) = v43[3];
              *&v135[1] = v45;
              re::ContactDeformerModelBuilder::addContactTarget(v133, v24, v135);
              v43 += 4;
            }

            while (v43 != v44);
          }
        }

        while (++v24 != v3);
      }

      v3 = *(v11 + 368);
      if (v3)
      {
        re::SmoothDeformerModelBuilder::SmoothDeformerModelBuilder(v148, v115, v116, *(v11 + 368), &v132);
        v46 = 0;
        v24 = 0;
        do
        {
          v9 = *(v11 + 368);
          if (v9 <= v24)
          {
            goto LABEL_96;
          }

          inited = re::SmoothDeformerModelBuilder::setEnvelopeBufferName(v148, *(*(v11 + 384) + v46 + 16), v24++, (*(v11 + 384) + v46));
          v46 += 24;
        }

        while (v3 != v24);
      }

      v47 = *(v11 + 488);
      v3 = &str_67;
      if (v47)
      {
        re::JiggleDeformerModelBuilder::JiggleDeformerModelBuilder(v148, v115, v116, *(v11 + 488), &v132);
        v24 = 0;
        v9 = 0;
        do
        {
          v10 = *(v11 + 488);
          if (v10 <= v9)
          {
            goto LABEL_100;
          }

          v48 = *(v11 + 504) + v24;
          inited = re::JiggleDeformerModelBuilder::setData(v148, *(v48 + 40), v9++, v48, (v48 + 16), *(v48 + 32), *(v48 + 36));
          v24 += 48;
        }

        while (v47 != v9);
      }

      v24 = *(v11 + 448);
      if (v24)
      {
        re::OffsetsDeformerModelBuilder::OffsetsDeformerModelBuilder(v148, v115, v116, *(v11 + 448), &v132);
        v49 = 0;
        v14 = 0;
        do
        {
          v9 = *(v11 + 448);
          if (v9 <= v14)
          {
            goto LABEL_104;
          }

          inited = re::OffsetsDeformerModelBuilder::setEnvelopeBufferName(v148, *(*(v11 + 464) + v49 + 16), v14++, (*(v11 + 464) + v49));
          v49 += 24;
        }

        while (v24 != v14);
      }

      v9 = *(v11 + 208);
      if (*(v11 + 168))
      {
        if (v9)
        {
          v14 = 0;
          v10 = 1;
          while (1)
          {
            v24 = *(v11 + 208);
            if (v24 <= v14)
            {
              break;
            }

            v24 = *(v11 + 168);
            if (v24 <= v14)
            {
              goto LABEL_112;
            }

            v24 = *(&v125 + 1);
            if (*(&v125 + 1) <= v14)
            {
              goto LABEL_116;
            }

            v50 = re::MeshPart::operator=(v126 + 544 * v14, v135);
            if (v146)
            {
              if (v146)
              {
              }
            }

            v147 = &str_67;
            v146 = 0;
            re::FixedArray<re::StringID>::deinit(v145);
            re::AttributeTable::~AttributeTable(v135);
            v14 = v10;
            v51 = v9 > v10;
            v10 = (v10 + 1);
            if (!v51)
            {
              goto LABEL_78;
            }
          }

LABEL_108:
          *v133 = 0;
          v137 = 0u;
          v136 = 0u;
          memset(v135, 0, sizeof(v135));
          v83 = MEMORY[0x1E69E9C10];
          v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v155[0]) = 136315906;
          *(v155 + 4) = "operator[]";
          WORD6(v155[0]) = 1024;
          if (v84)
          {
            v85 = 3;
          }

          else
          {
            v85 = 2;
          }

          *(v155 + 14) = 797;
          WORD1(v155[1]) = 2048;
          *(&v155[1] + 4) = v14;
          WORD6(v155[1]) = 2048;
          *(&v155[1] + 14) = v24;
          _os_log_send_and_compose_impl(v85, v133, v135, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v155, 38, v107, v108);
          _os_crash_msg();
          __break(1u);
LABEL_112:
          *v148 = 0;
          v156 = 0u;
          v157 = 0u;
          memset(v155, 0, sizeof(v155));
          v86 = MEMORY[0x1E69E9C10];
          v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v133 = 136315906;
          *&v133[4] = "operator[]";
          *&v133[12] = 1024;
          if (v87)
          {
            v88 = 3;
          }

          else
          {
            v88 = 2;
          }

          *&v133[14] = 797;
          *&v133[18] = 2048;
          *&v133[20] = v14;
          *&v133[28] = 2048;
          *&v133[30] = v24;
          _os_log_send_and_compose_impl(v88, v148, v155, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v133, 38, v107, v108);
          _os_crash_msg();
          __break(1u);
LABEL_116:
          *v148 = 0;
          v156 = 0u;
          v157 = 0u;
          memset(v155, 0, sizeof(v155));
          v89 = MEMORY[0x1E69E9C10];
          v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v133 = 136315906;
          *&v133[4] = "operator[]";
          *&v133[12] = 1024;
          if (v90)
          {
            v91 = 3;
          }

          else
          {
            v91 = 2;
          }

          *&v133[14] = 468;
          *&v133[18] = 2048;
          *&v133[20] = v14;
          *&v133[28] = 2048;
          *&v133[30] = v24;
          _os_log_send_and_compose_impl(v91, v148, v155, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v133, 38, v107, v108);
          _os_crash_msg();
          __break(1u);
          goto LABEL_120;
        }
      }

      else
      {
        *v133 = xmmword_1E3047670;
        *&v133[16] = xmmword_1E3047680;
        *&v133[32] = xmmword_1E30476A0;
        v134 = xmmword_1E30474D0;
        if (v9)
        {
          v14 = 0;
          v10 = 1;
          while (1)
          {
            v24 = *(v11 + 208);
            if (v24 <= v14)
            {
              break;
            }

            v24 = *(&v125 + 1);
            if (*(&v125 + 1) <= v14)
            {
              goto LABEL_124;
            }

            v52 = re::MeshPart::operator=(v126 + 544 * v14, v135);
            if (v146)
            {
              if (v146)
              {
              }
            }

            v147 = &str_67;
            v146 = 0;
            re::FixedArray<re::StringID>::deinit(v145);
            re::AttributeTable::~AttributeTable(v135);
            v14 = v10;
            v51 = v9 > v10;
            v10 = (v10 + 1);
            if (!v51)
            {
              goto LABEL_78;
            }
          }

LABEL_120:
          *v148 = 0;
          v137 = 0u;
          v136 = 0u;
          memset(v135, 0, sizeof(v135));
          v92 = MEMORY[0x1E69E9C10];
          v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v155[0]) = 136315906;
          *(v155 + 4) = "operator[]";
          WORD6(v155[0]) = 1024;
          if (v93)
          {
            v94 = 3;
          }

          else
          {
            v94 = 2;
          }

          *(v155 + 14) = 797;
          WORD1(v155[1]) = 2048;
          *(&v155[1] + 4) = v14;
          WORD6(v155[1]) = 2048;
          *(&v155[1] + 14) = v24;
          _os_log_send_and_compose_impl(v94, v148, v135, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v155, 38, v107, v108);
          _os_crash_msg();
          __break(1u);
LABEL_124:
          v121 = 0;
          v156 = 0u;
          v157 = 0u;
          memset(v155, 0, sizeof(v155));
          v95 = MEMORY[0x1E69E9C10];
          v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v148 = 136315906;
          *&v148[4] = "operator[]";
          v149 = 1024;
          if (v96)
          {
            v97 = 3;
          }

          else
          {
            v97 = 2;
          }

          v150 = 468;
          v151 = 2048;
          v152 = v14;
          v153 = 2048;
          v154 = v24;
          _os_log_send_and_compose_impl(v97, &v121, v155, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v148, 38, v107, v108);
          _os_crash_msg();
          __break(1u);
LABEL_128:
          *&v155[0] = 0;
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v122 = 0u;
          v98 = MEMORY[0x1E69E9C10];
          v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v135[0]) = 136315906;
          *(v135 + 4) = "operator[]";
          WORD6(v135[0]) = 1024;
          if (v99)
          {
            v100 = 3;
          }

          else
          {
            v100 = 2;
          }

          *(v135 + 14) = 797;
          WORD1(v135[1]) = 2048;
          *(&v135[1] + 4) = v9;
          WORD6(v135[1]) = 2048;
          *(&v135[1] + 14) = v11;
          _os_log_send_and_compose_impl(v100, v155, &v122, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v107, v108);
          _os_crash_msg();
          __break(1u);
          goto LABEL_132;
        }
      }

LABEL_78:
      v53 = *(v11 + 32);
      v14 = &v122;
      v123 = *(v11 + 16);
      v124 = v53;
      v54 = *(v11 + 32);
      v127 = *(v11 + 16);
      v128 = v54;
      v55 = *(v11 + 288);
      v57 = *(v11 + 288);
      if (v130 != v57)
      {
        goto LABEL_140;
      }

      if (v57)
      {
        v58 = *(v11 + 304);
        v59 = &v58[6 * v57];
        v60 = v131;
        v61 = v58;
        v62 = v131;
        do
        {
          v63 = *v61;
          v61 += 6;
          *v62 = v63;
          v62 += 6;
          re::DynamicArray<unsigned long long>::operator=((v60 + 1), v58 + 1);
          v60 = v62;
          v58 = v61;
        }

        while (v61 != v59);
      }

      re::DynamicArray<re::MeshModel>::add(v109, &v122);
      re::MeshModel::~MeshModel(&v122);
      v10 = v113 + 1;
      if (v113 + 1 == v112)
      {
        return re::FixedArray<re::BufferSlice>::deinit(&v118);
      }
    }

    re::BlendShapeModelBuilder::BlendShapeModelBuilder(v133, v115, v13, v21, *(v11 + 128), &v132);
    v23 = 0;
    v24 = 0;
    while (1)
    {
      v9 = *(v11 + 128);
      if (v9 <= v24)
      {
        break;
      }

      re::BlendShapeModelBuilder::addBlendShapeGroup(v133, *(v11 + 144) + v23, *(*(v11 + 144) + v23 + 48), v24++, 0);
      v23 += 56;
      if (v3 == v24)
      {

        goto LABEL_20;
      }
    }

    *v148 = 0;
    v137 = 0u;
    v136 = 0u;
    memset(v135, 0, sizeof(v135));
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v155[0]) = 136315906;
    *(v155 + 4) = "operator[]";
    WORD6(v155[0]) = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    *(v155 + 14) = 797;
    WORD1(v155[1]) = 2048;
    *(&v155[1] + 4) = v24;
    WORD6(v155[1]) = 2048;
    *(&v155[1] + 14) = v9;
    _os_log_send_and_compose_impl(v67, v148, v135, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v155, 38, v107, v108);
    _os_crash_msg();
    __break(1u);
LABEL_88:
    *v148 = 0;
    v137 = 0u;
    v136 = 0u;
    memset(v135, 0, sizeof(v135));
    v68 = MEMORY[0x1E69E9C10];
    v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v155[0]) = 136315906;
    *(v155 + 4) = "operator[]";
    WORD6(v155[0]) = 1024;
    if (v69)
    {
      v70 = 3;
    }

    else
    {
      v70 = 2;
    }

    *(v155 + 14) = 797;
    WORD1(v155[1]) = 2048;
    *(&v155[1] + 4) = v24;
    WORD6(v155[1]) = 2048;
    *(&v155[1] + 14) = v9;
    _os_log_send_and_compose_impl(v70, v148, v135, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v155, 38, v107, v108);
    _os_crash_msg();
    __break(1u);
LABEL_92:
    *v148 = 0;
    v137 = 0u;
    v136 = 0u;
    memset(v135, 0, sizeof(v135));
    v71 = MEMORY[0x1E69E9C10];
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v155[0]) = 136315906;
    *(v155 + 4) = "operator[]";
    WORD6(v155[0]) = 1024;
    if (v72)
    {
      v73 = 3;
    }

    else
    {
      v73 = 2;
    }

    *(v155 + 14) = 797;
    WORD1(v155[1]) = 2048;
    *(&v155[1] + 4) = v24;
    WORD6(v155[1]) = 2048;
    *(&v155[1] + 14) = v9;
    _os_log_send_and_compose_impl(v73, v148, v135, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v155, 38, v107, v108);
    _os_crash_msg();
    __break(1u);
LABEL_96:
    *v133 = 0;
    v137 = 0u;
    v136 = 0u;
    memset(v135, 0, sizeof(v135));
    v74 = MEMORY[0x1E69E9C10];
    v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v155[0]) = 136315906;
    *(v155 + 4) = "operator[]";
    WORD6(v155[0]) = 1024;
    if (v75)
    {
      v76 = 3;
    }

    else
    {
      v76 = 2;
    }

    *(v155 + 14) = 797;
    WORD1(v155[1]) = 2048;
    *(&v155[1] + 4) = v24;
    WORD6(v155[1]) = 2048;
    *(&v155[1] + 14) = v9;
    _os_log_send_and_compose_impl(v76, v133, v135, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v155, 38, v107, v108);
    _os_crash_msg();
    __break(1u);
LABEL_100:
    *v133 = 0;
    v137 = 0u;
    v136 = 0u;
    memset(v135, 0, sizeof(v135));
    v77 = MEMORY[0x1E69E9C10];
    v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v155[0]) = 136315906;
    *(v155 + 4) = "operator[]";
    WORD6(v155[0]) = 1024;
    if (v78)
    {
      v79 = 3;
    }

    else
    {
      v79 = 2;
    }

    *(v155 + 14) = 797;
    WORD1(v155[1]) = 2048;
    *(&v155[1] + 4) = v9;
    WORD6(v155[1]) = 2048;
    *(&v155[1] + 14) = v10;
    _os_log_send_and_compose_impl(v79, v133, v135, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v155, 38, v107, v108);
    _os_crash_msg();
    __break(1u);
LABEL_104:
    *v133 = 0;
    v137 = 0u;
    v136 = 0u;
    memset(v135, 0, sizeof(v135));
    v80 = MEMORY[0x1E69E9C10];
    v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v155[0]) = 136315906;
    *(v155 + 4) = "operator[]";
    WORD6(v155[0]) = 1024;
    if (v81)
    {
      v82 = 3;
    }

    else
    {
      v82 = 2;
    }

    *(v155 + 14) = 797;
    WORD1(v155[1]) = 2048;
    *(&v155[1] + 4) = v14;
    WORD6(v155[1]) = 2048;
    *(&v155[1] + 14) = v9;
    _os_log_send_and_compose_impl(v82, v133, v135, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v155, 38, v107, v108);
    _os_crash_msg();
    __break(1u);
    goto LABEL_108;
  }

  return re::FixedArray<re::BufferSlice>::deinit(&v118);
}

uint64_t re::makeMeshAssetDataFromDescriptor@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2;
  v117 = *MEMORY[0x1E69E9840];
  v7 = &v85;
  v63 = 0;
  v62 = 0;
  v61 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0;
  v67 = 0u;
  v68 = 0u;
  v69 = 0;
  memset(v70, 0, sizeof(v70));
  v71 = 0x7FFFFFFFLL;
  v8 = a1[2];
  v54 = v8;
  if (!v8)
  {
LABEL_50:
    v20 = a1[12];
    if (v8 >= v20)
    {
      if (!v20)
      {
LABEL_67:
        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(&v70[8], (a1 + 15));
        v21 = a1[7];
        if (v65 >= v21)
        {
          if (!v21)
          {
LABEL_73:
            re::makeMeshAssetDataFromGeomScene(&v61, v4, a3);
            goto LABEL_74;
          }
        }

        else
        {
          re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v64 + 1, a1[7]);
        }

        v9 = 0;
        while (1)
        {
          v10 = a1[7];
          if (v10 <= v9)
          {
            goto LABEL_91;
          }

          re::DynamicArray<re::GeomInstance>::add((&v64 + 8), *(a1[9] + 8 * v9++) + 32);
          if (v21 == v9)
          {
            goto LABEL_73;
          }
        }
      }
    }

    else
    {
      re::DynamicArray<re::GeomSkeleton>::setCapacity(&v67 + 1, a1[12]);
    }

    v9 = 0;
    while (1)
    {
      v10 = a1[12];
      if (v10 <= v9)
      {
        break;
      }

      re::DynamicArray<re::GeomSkeleton>::add((&v67 + 8), (*(a1[14] + 8 * v9++) + 24));
      if (v20 == v9)
      {
        goto LABEL_67;
      }
    }

LABEL_87:
    *&v112 = 0;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    memset(v73, 0, sizeof(v73));
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v85) = 136315906;
    *(v7 + 4) = "operator[]";
    v87 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    *(v7 + 14) = 797;
    WORD1(v88) = 2048;
    *(v7 + 20) = v9;
    v89 = 2048;
    *(v7 + 30) = v10;
    _os_log_send_and_compose_impl(v31, &v112, v73, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v85, 38, v53, v54);
    _os_crash_msg();
    __break(1u);
LABEL_91:
    *&v112 = 0;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    memset(v73, 0, sizeof(v73));
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v85) = 136315906;
    *(v7 + 4) = "operator[]";
    v87 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    *(v7 + 14) = 797;
    WORD1(v88) = 2048;
    *(v7 + 20) = v9;
    v89 = 2048;
    *(v7 + 30) = v10;
    _os_log_send_and_compose_impl(v34, &v112, v73, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v85, 38, v53, v54);
    _os_crash_msg();
    __break(1u);
LABEL_95:
    *(v60 + 40) = v55;
    *(v60 + 48) = v57;
    *(v60 + 24) = v56;
    *(v60 + 32) = v58;
    *v60 = v59;
    *v105 = 0;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    memset(v73, 0, sizeof(v73));
    v35 = MEMORY[0x1E69E9C10];
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v112) = 136315906;
    *(v7 + 212) = "operator[]";
    WORD6(v112) = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    *(v7 + 222) = 797;
    WORD1(v113) = 2048;
    *(v7 + 228) = v3;
    WORD6(v113) = 2048;
    *(v7 + 238) = v4;
    _os_log_send_and_compose_impl(v37, v105, v73, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v112, 38, v53, v54);
    _os_crash_msg();
    __break(1u);
LABEL_99:
    *(v60 + 40) = v55;
    *(v60 + 48) = v57;
    *(v60 + 24) = v56;
    *(v60 + 32) = v58;
    *v60 = v59;
    *v105 = 0;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    memset(v73, 0, sizeof(v73));
    v38 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v112) = 136315906;
    *(v7 + 212) = "operator[]";
    WORD6(v112) = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    *(v7 + 222) = 797;
    WORD1(v113) = 2048;
    *(v7 + 228) = v3;
    WORD6(v113) = 2048;
    *(v7 + 238) = v4;
    _os_log_send_and_compose_impl(v40, v105, v73, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v112, 38, v53, v54);
    _os_crash_msg();
    __break(1u);
LABEL_103:
    *(v60 + 40) = v55;
    *(v60 + 48) = v57;
    *(v60 + 24) = v56;
    *(v60 + 32) = v58;
    *v60 = v59;
    *v105 = 0;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    memset(v73, 0, sizeof(v73));
    v41 = MEMORY[0x1E69E9C10];
    v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v112) = 136315906;
    *(v7 + 212) = "operator[]";
    WORD6(v112) = 1024;
    if (v42)
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    *(v7 + 222) = 797;
    WORD1(v113) = 2048;
    *(v7 + 228) = v3;
    WORD6(v113) = 2048;
    *(v7 + 238) = a3;
    _os_log_send_and_compose_impl(v43, v105, v73, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v112, 38, v53, v54);
    _os_crash_msg();
    __break(1u);
LABEL_107:
    *(v60 + 40) = v55;
    *(v60 + 48) = v57;
    *(v60 + 24) = v56;
    *(v60 + 32) = v58;
    *v60 = v59;
    *v105 = 0;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    memset(v73, 0, sizeof(v73));
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v112) = 136315906;
    *(v7 + 212) = "operator[]";
    WORD6(v112) = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    *(v7 + 222) = 797;
    WORD1(v113) = 2048;
    *(v7 + 228) = v3;
    WORD6(v113) = 2048;
    *(v7 + 238) = a3;
    _os_log_send_and_compose_impl(v46, v105, v73, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v112, 38, v53, v54);
    _os_crash_msg();
    __break(1u);
LABEL_111:
    *(v60 + 40) = v55;
    *(v60 + 48) = v57;
    *(v60 + 24) = v56;
    *(v60 + 32) = v58;
    *v60 = v59;
    *v105 = 0;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    memset(v73, 0, sizeof(v73));
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v112) = 136315906;
    *(v7 + 212) = "operator[]";
    WORD6(v112) = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    *(v7 + 222) = 797;
    WORD1(v113) = 2048;
    *(v7 + 228) = v3;
    WORD6(v113) = 2048;
    *(v7 + 238) = a3;
    _os_log_send_and_compose_impl(v49, v105, v73, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v112, 38, v53, v54);
    _os_crash_msg();
    __break(1u);
LABEL_115:
    *(v60 + 40) = v55;
    *(v60 + 48) = v57;
    *(v60 + 24) = v56;
    *(v60 + 32) = v58;
    *v60 = v59;
    *v105 = 0;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    memset(v73, 0, sizeof(v73));
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v112) = 136315906;
    *(v7 + 212) = "operator[]";
    WORD6(v112) = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *(v7 + 222) = 797;
    WORD1(v113) = 2048;
    *(v7 + 228) = v3;
    WORD6(v113) = 2048;
    *(v7 + 238) = a3;
    _os_log_send_and_compose_impl(v52, v105, v73, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v112, 38, v53, v54);
    _os_crash_msg();
    __break(1u);
  }

  v53 = a2;
  v3 = 0;
  v9 = v73;
  v10 = &v73[1] + 8;
  v59 = *a3;
  v55 = a3[5];
  v56 = a3[3];
  v60 = a3;
  v57 = a3[6];
  v58 = a3[4];
  while (1)
  {
    re::GeomModelWithLods::GeomModelWithLods(&v85);
    v4 = a1[2];
    if (v4 <= v3)
    {
      goto LABEL_95;
    }

    a3 = *(a1[4] + 152 * v3 + 48);
    if (v91 < a3)
    {
      break;
    }

    if (a3)
    {
      goto LABEL_7;
    }

LABEL_32:
    if (v4 <= v3)
    {
      goto LABEL_99;
    }

    re::DynamicString::operator=(&v85, (a1[4] + 152 * v3));
    a3 = a1[2];
    if (a3 <= v3)
    {
      goto LABEL_103;
    }

    re::DynamicArray<float>::resize(&v100, *(a1[4] + 152 * v3 + 128));
    a3 = a1[2];
    if (a3 <= v3)
    {
      goto LABEL_107;
    }

    re::DynamicArray<float>::resize(&v95, *(a1[4] + 152 * v3 + 88));
    a3 = a1[2];
    if (a3 <= v3)
    {
      goto LABEL_111;
    }

    memcpy(__dst, *(a1[4] + 152 * v3 + 144), 4 * *(a1[4] + 152 * v3 + 128));
    a3 = a1[2];
    if (a3 <= v3)
    {
      goto LABEL_115;
    }

    memcpy(v99, *(a1[4] + 152 * v3 + 104), 4 * *(a1[4] + 152 * v3 + 88));
    v19.n128_f64[0] = re::DynamicArray<re::GeomModelWithLods>::add(&v61, &v85);
    if (v100)
    {
      if (__dst)
      {
        (*(*v100 + 40))(v19.n128_f64[0]);
      }

      __dst = 0;
      v101 = 0;
      v102 = 0;
      v100 = 0;
      ++v103;
    }

    if (v95)
    {
      if (v99)
      {
        (*(*v95 + 40))(v19);
      }

      v99 = 0;
      v96 = 0;
      v97 = 0;
      v95 = 0;
      ++v98;
    }

    re::DynamicArray<re::GeomModel>::deinit(&v90);
    if (v85 && (v86 & 1) != 0)
    {
      (*(*v85 + 40))();
    }

    if (++v3 == v54)
    {
      a3 = v60;
      *(v60 + 40) = v55;
      *(v60 + 48) = v57;
      *(v60 + 24) = v56;
      *(v60 + 32) = v58;
      *v60 = v59;
      v8 = v68;
      v4 = v53;
      goto LABEL_50;
    }
  }

  re::DynamicArray<re::GeomModel>::setCapacity(&v90, *(a1[4] + 152 * v3 + 48));
LABEL_7:
  v7 = 0;
  while (1)
  {
    v4 = a1[2];
    if (v4 <= v3)
    {
      *(v60 + 40) = v55;
      *(v60 + 48) = v57;
      *(v60 + 24) = v56;
      *(v60 + 32) = v58;
      *v60 = v59;
      v72 = 0;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v112 = 0u;
      v23 = MEMORY[0x1E69E9C10];
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      v106 = 1024;
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v107 = 797;
      v108 = 2048;
      v109 = v3;
      v110 = 2048;
      v111 = v4;
      _os_log_send_and_compose_impl(v25, &v72, &v112, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v105, 38, v53, v54);
      _os_crash_msg();
      __break(1u);
LABEL_83:
      *(v60 + 40) = v55;
      *(v60 + 48) = v57;
      *(v60 + 24) = v56;
      *(v60 + 32) = v58;
      *v60 = v59;
      v72 = 0;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v112 = 0u;
      v26 = MEMORY[0x1E69E9C10];
      v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v105 = 136315906;
      *&v105[4] = "operator[]";
      v106 = 1024;
      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      v107 = 797;
      v108 = 2048;
      v109 = v7;
      v110 = 2048;
      v111 = v4;
      _os_log_send_and_compose_impl(v28, &v72, &v112, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v105, 38, v53, v54);
      _os_crash_msg();
      __break(1u);
      goto LABEL_87;
    }

    v11 = a1[4] + 152 * v3;
    v4 = *(v11 + 48);
    if (v4 <= v7)
    {
      goto LABEL_83;
    }

    re::makeGeomModelFromModelDescriptor(v73, (*(*(v11 + 64) + 8 * v7) + 24));
    v12 = LOBYTE(v73[0]);
    if (LOBYTE(v73[0]) == 1)
    {
      v13 = v92;
      if (v92 >= v91)
      {
        re::DynamicArray<re::GeomModel>::growCapacity(&v90, v92 + 1);
        v13 = v92;
      }

      v14 = (v94 + 248 * v13);
      re::DynamicString::DynamicString(v14, (v73 + 8));
      re::DynamicArray<re::GeomMesh>::DynamicArray(v14 + 32, &v74 + 1);
      re::DynamicArray<float>::DynamicArray(v14 + 72, v77);
      v15 = v80;
      *(v14 + 112) = v80;
      if (v15 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::DynamicArray(v14 + 120, v81);
      }

      v16 = v82;
      *(v14 + 160) = v82;
      if (v16 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::DynamicArray(v14 + 168, v83);
      }

      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::DynamicArray(v14 + 208, v84);
      ++v92;
      ++v93;
    }

    else
    {
      v112 = *(v73 + 8);
      re::DynamicString::DynamicString(&v113, (&v73[1] + 8));
      v59 = 0;
      *(v60 + 8) = v112;
      v55 = v114;
      v56 = v113;
      v57 = *(&v114 + 1);
      v58 = *(&v113 + 1);
    }

    v17 = (&v73[1] + 8);
    if (LOBYTE(v73[0]) == 1)
    {
      re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v84);
      if (v82 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v83);
      }

      if (v80 == 1)
      {
        re::DynamicArray<re::GeomIndexMap>::deinit(v81);
      }

      if (v77[0])
      {
        if (v79)
        {
          (*(*v77[0] + 40))();
        }

        v79 = 0;
        memset(v77, 0, sizeof(v77));
        ++v78;
      }

      re::DynamicArray<re::GeomMesh>::deinit(&v74 + 8);
      v17 = (v73 + 8);
    }

    v18.n128_f64[0] = re::DynamicString::deinit(v17);
    if (!v12)
    {
      break;
    }

    v7 = (v7 + 1);
    if (a3 == v7)
    {
      v4 = a1[2];
      v7 = &v85;
      goto LABEL_32;
    }
  }

  *(v60 + 40) = v55;
  *(v60 + 48) = v57;
  *(v60 + 24) = v56;
  *(v60 + 32) = v58;
  *v60 = v59;
  if (v100)
  {
    if (__dst)
    {
      (*(*v100 + 40))(v18.n128_f64[0]);
    }

    __dst = 0;
    v101 = 0;
    v102 = 0;
    v100 = 0;
    ++v103;
  }

  if (v95)
  {
    if (v99)
    {
      (*(*v95 + 40))(v18);
    }

    v99 = 0;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    ++v98;
  }

  re::DynamicArray<re::GeomModel>::deinit(&v90);
  if (v85 && (v86 & 1) != 0)
  {
    (*(*v85 + 40))();
  }

LABEL_74:
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v70[8]);
  re::DynamicArray<re::GeomSkeleton>::deinit(&v67 + 8);
  if (*(&v64 + 1))
  {
    if (v67)
    {
      (*(**(&v64 + 1) + 40))();
    }

    *&v67 = 0;
    v65 = 0uLL;
    *(&v64 + 1) = 0;
    ++v66;
  }

  return re::DynamicArray<re::GeomModelWithLods>::deinit(&v61);
}

uint64_t re::DynamicArray<re::GeomSkeleton>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::GeomSkeleton>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 160 * v4);
  re::StringID::StringID(v5, a2);
  re::FixedArray<re::StringID>::FixedArray(v5 + 2, &a2[1]);
  re::FixedArray<unsigned int>::FixedArray(v5 + 5, &a2[2].var1);
  re::FixedArray<re::GenericSRT<float>>::FixedArray(v5 + 8, &a2[4]);
  re::FixedArray<re::Matrix4x4<float>>::FixedArray(v5 + 11, &a2[5].var1);
  result = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable((v5 + 14), &a2[7]);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::makeMeshAssetDataWithGeomModel@<X0>(uint64_t a1@<X1>, __int128 *a2@<X2>, uint64_t a3@<X8>, re::DynamicString *a4@<X0>)
{
  re::GeomScene::makeSceneWithSingleInstanceModel(a4, v13);
  if (a1)
  {
    v7 = *(a1 + 16);
    *&v10 = *(a1 + 32);
    *(&v10 + 1) = v7;
    re::GeomScene::setSkeletons(v13, &v10);
  }

  LODWORD(v10) = 16842752;
  BYTE4(v10) = 1;
  *(&v10 + 5) = 0;
  *(&v10 + 9) = 0;
  *(&v10 + 11) = 65793;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  DWORD1(v12) = 0x7FFFFFFF;
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = &v10;
  }

  re::makeMeshAssetDataFromGeomScene(v13, v8, a3);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v11);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v20);
  re::DynamicArray<re::GeomSkeleton>::deinit(&v19);
  if (v14)
  {
    if (v18)
    {
      (*(*v14 + 40))();
    }

    v18 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    ++v17;
  }

  return re::DynamicArray<re::GeomModelWithLods>::deinit(v13);
}

uint64_t re::GeomScene::makeSceneWithSingleInstanceModel@<X0>(re::DynamicString *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  re::GeomModelWithLods::GeomModelWithLods(&v6);
  re::DynamicString::operator=(&v6, a1);
  re::DynamicArray<re::GeomModel>::add(v8, a1);
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *a2 = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 140) = 0u;
  *(a2 + 156) = 0x7FFFFFFFLL;
  re::DynamicArray<re::GeomModelWithLods>::add(a2, &v6);
  v19[0] = xmmword_1E3047670;
  v19[1] = xmmword_1E3047680;
  v19[2] = xmmword_1E30476A0;
  v19[3] = xmmword_1E30474D0;
  v20 = 0;
  v4 = re::DynamicArray<re::GeomInstance>::add((a2 + 40), v19);
  if (v14)
  {
    if (v18)
    {
      (*(*v14 + 40))(v4);
    }

    v18 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    ++v17;
  }

  if (v9)
  {
    if (v13)
    {
      (*(*v9 + 40))(v4);
    }

    v13 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ++v12;
  }

  re::DynamicArray<re::GeomModel>::deinit(v8);
  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))();
    }
  }

  return result;
}

uint64_t re::makeMeshAssetDataWithGeomMeshArray@<X0>(_anonymous_namespace_ *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, void *a5@<X8>)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  re::makeMeshAssetDataWithGeomMeshArray(a1, a2, v15, v14, a3, a4, a5);
  result = v13;
  if (v13)
  {
    v11 = v14 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    return (*(*v13 + 40))();
  }

  return result;
}

uint64_t re::makeMeshAssetDataWithGeomMeshArray@<X0>(int8x16_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X8>)
{
  v75[5] = *MEMORY[0x1E69E9840];
  v49 = 0;
  v48 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0;
  v53 = 0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  memset(v57, 0, sizeof(v57));
  v58 = 0x7FFFFFFFLL;
  re::GeomModelWithLods::GeomModelWithLods(&v35);
  re::GeomModel::GeomModel(&v63);
  re::DynamicArray<re::GeomModel>::add(v37, &v63);
  re::DynamicArray<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::deinit(v75);
  if (v73[40] == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(&v74);
  }

  if (v72 == 1)
  {
    re::DynamicArray<re::GeomIndexMap>::deinit(v73);
  }

  if (*(&v67 + 1))
  {
    if (v71)
    {
      (*(**(&v67 + 1) + 40))();
    }

    v71 = 0;
    v68 = 0;
    v69 = 0;
    *(&v67 + 1) = 0;
    ++v70;
  }

  re::DynamicArray<re::GeomMesh>::deinit(&v65);
  if (v63 && (BYTE8(v63) & 1) != 0)
  {
    (*(*v63 + 40))();
  }

  re::DynamicArray<re::GeomModelWithLods>::add(&v48, &v35);
  if (!v49)
  {
LABEL_54:
    v59 = 0;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v60 = 136315906;
    *v61 = "operator[]";
    *&v61[8] = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    *&v61[10] = 789;
    *&v61[14] = 2048;
    *&v61[16] = 0;
    *&v61[24] = 2048;
    *&v61[26] = 0;
    _os_log_send_and_compose_impl(v30, &v59, &v63, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v60, 38, v34, v35);
    _os_crash_msg();
    __break(1u);
LABEL_58:
    v59 = 0;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v60 = 136315906;
    *v61 = "operator[]";
    *&v61[8] = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    *&v61[10] = 789;
    *&v61[14] = 2048;
    *&v61[16] = 0;
    *&v61[24] = 2048;
    *&v61[26] = 0;
    _os_log_send_and_compose_impl(v33, &v59, &v63, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v60, 38, v34, v35);
    _os_crash_msg();
    __break(1u);
  }

  if (!*(v51 + 48))
  {
    goto LABEL_58;
  }

  v14 = *(v51 + 64);
  v15 = a2;
  if (v14[5] < a2)
  {
    re::DynamicArray<re::GeomMesh>::setCapacity(v14 + 4, a2);
  }

  LODWORD(v63) = 0;
  re::DynamicArray<unsigned int>::resize(v14 + 9, a2, &v63);
  if (a2)
  {
    v16 = 736 * a2;
    do
    {
      re::DynamicArray<re::GeomMesh>::add((v14 + 4), a1);
      a1 += 92;
      v16 -= 736;
    }

    while (v16);
  }

  if (a4)
  {
    for (i = 0; a4 != i; ++i)
    {
      if (i < v15)
      {
        v18 = v14[11];
        if (v18 <= i)
        {
          v59 = 0;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v63 = 0u;
          v25 = MEMORY[0x1E69E9C10];
          v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v60 = 136315906;
          *v61 = "operator[]";
          *&v61[8] = 1024;
          if (v26)
          {
            v27 = 3;
          }

          else
          {
            v27 = 2;
          }

          *&v61[10] = 789;
          *&v61[14] = 2048;
          *&v61[16] = i;
          *&v61[24] = 2048;
          *&v61[26] = v18;
          _os_log_send_and_compose_impl(v27, &v59, &v63, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v60, 38, v34, v35);
          _os_crash_msg();
          __break(1u);
          goto LABEL_54;
        }

        *(v14[13] + 4 * i) = *(a3 + 4 * i);
      }
    }
  }

  if (a5)
  {
    v19 = *(a5 + 32);
    v20 = *(a5 + 16);
    if (v55 < v20)
    {
      re::DynamicArray<re::GeomSkeleton>::setCapacity(&v54 + 1, v20);
      goto LABEL_29;
    }

    if (v20)
    {
LABEL_29:
      v21 = 160 * v20;
      do
      {
        re::DynamicArray<re::GeomSkeleton>::add((&v54 + 8), v19);
        LODWORD(v63) = DWORD2(v55) - 1;
        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(&v57[8], v19, &v63);
        v19 += 10;
        v21 -= 160;
      }

      while (v21);
    }
  }

  v63 = xmmword_1E3047670;
  v64 = xmmword_1E3047680;
  v65 = xmmword_1E30476A0;
  v66 = xmmword_1E30474D0;
  LODWORD(v67) = 0;
  re::DynamicArray<re::GeomInstance>::add((&v51 + 8), &v63);
  v60 = 16842752;
  v61[0] = 1;
  *&v61[1] = 0;
  *&v61[5] = 0;
  *&v61[7] = 65793;
  v62 = 0u;
  memset(&v61[12], 0, 32);
  DWORD1(v62) = 0x7FFFFFFF;
  if (a6)
  {
    v22 = a6;
  }

  else
  {
    v22 = &v60;
  }

  re::makeMeshAssetDataFromGeomScene(&v48, v22, a7);
  v23.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v61[12]);
  if (v43)
  {
    if (v47)
    {
      (*(*v43 + 40))(v23.n128_f64[0]);
    }

    v47 = 0;
    v44 = 0;
    v45 = 0;
    v43 = 0;
    ++v46;
  }

  if (v38)
  {
    if (v42)
    {
      (*(*v38 + 40))(v23);
    }

    v42 = 0;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    ++v41;
  }

  re::DynamicArray<re::GeomModel>::deinit(v37);
  if (v35 && (v36 & 1) != 0)
  {
    (*(*v35 + 40))();
  }

  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v57[8]);
  re::DynamicArray<re::GeomSkeleton>::deinit(&v54 + 8);
  if (*(&v51 + 1))
  {
    if (v54)
    {
      (*(**(&v51 + 1) + 40))();
    }

    *&v54 = 0;
    v52 = 0uLL;
    *(&v51 + 1) = 0;
    ++v53;
  }

  return re::DynamicArray<re::GeomModelWithLods>::deinit(&v48);
}

void re::anonymous namespace::populateAssetPartFromGeomMesh(uint64_t a1, int8x16_t **a2, uint64_t *a3, uint64_t *a4, __int16 a5, uint64_t a6, uint64_t a7, re::UniqueNameGenerator *a8, uint64_t *a9, unint64_t a10)
{
  v372 = *MEMORY[0x1E69E9840];
  re::GeomMesh::GeomMesh(&v336, 0);
  v304 = (a2 + 5);
  v17 = *(a2 + 2) == *(a2 + 10) && *(a2 + 106) == 0;
  v298 = a5;
  if (!v17 || (*a1 & 1) != 0 || (*(a1 + 8) & 1) != 0 || (*(a1 + 1) & 1) != 0 || (*(a1 + 2) & 1) != 0 || (*(a1 + 3) & 1) != 0 || (v18 = re::internal::GeomAttributeManager::attributeByName((a2 + 8), "vertexNormal")) == 0 || *(v18 + 16) != 1 || (v19 = re::internal::GeomAttributeManager::attributeByName((a2 + 8), "vertexTangent")) == 0 || *(v19 + 16) != 1)
  {
    v20 = (a2 + 8);
  }

  else
  {
    v20 = (a2 + 8);
    v21 = re::internal::GeomAttributeManager::attributeByName((a2 + 8), "vertexBitangent");
    if (!v21 || *(v21 + 16) == 1)
    {
      v22 = v21 != 0;
      goto LABEL_20;
    }
  }

  v22 = 0;
LABEL_20:
  v332 = *a3;
  v333 = *(a3 + 2);
  v334 = *(a3 + 12);
  if (v334 == 2)
  {
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(v335, (a3 + 2));
  }

  else if (v334 == 1)
  {
    re::DynamicArray<float>::DynamicArray(v335, a3 + 2);
  }

  else
  {
    if (v334)
    {
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
      _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
      goto LABEL_592;
    }

    LODWORD(v335[0]) = *(a3 + 4);
  }

  v327 = *a4;
  v328 = *(a4 + 2);
  v329 = *(a4 + 12);
  switch(v329)
  {
    case 2:
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(v330, (a4 + 2));
      break;
    case 1:
      re::DynamicArray<float>::DynamicArray(v330, a4 + 2);
      break;
    case 0:
      LODWORD(v330[0]) = *(a4 + 4);
      break;
    default:
LABEL_592:
      re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
      _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
      goto LABEL_593;
  }

  v322 = *a3;
  v323 = *(a3 + 2);
  v324 = *(a3 + 12);
  if (v324 == 2)
  {
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(v325, (a3 + 2));
    goto LABEL_38;
  }

  if (v324 == 1)
  {
    re::DynamicArray<float>::DynamicArray(v325, a3 + 2);
    goto LABEL_38;
  }

  if (v324)
  {
LABEL_593:
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
    goto LABEL_594;
  }

  LODWORD(v325[0]) = *(a3 + 4);
LABEL_38:
  v301 = a2;
  v296 = a8;
  v297 = (a2 + 2);
  if (v22)
  {
    v299 = (a2 + 1);
    v295 = (a2 + 2);
    v23 = v20;
  }

  else
  {
    *buf = 0xFFFFFFFF00000000;
    *&buf[8] = -1;
    buf[12] = 0;
    LODWORD(v368) = 0;
    re::makeConditionedMeshForGPU(a2, a1, &v336, &v322, buf, v348);
    re::remapIndexMap(&v322, a3, v355);
    re::GeomIndexMap::operator=(&v332, v355);
    if (v355[12])
    {
      if (v355[12] == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v355[16]);
      }

      else
      {
        if (v355[12] != 1)
        {
          goto LABEL_597;
        }

        if (*&v355[16] && *(&v356 + 1))
        {
          (*(**&v355[16] + 40))();
        }
      }
    }

    re::remapIndexMap(buf, a4, v355);
    re::GeomIndexMap::operator=(&v327, v355);
    if (v355[12])
    {
      if (v355[12] == 2)
      {
        v26.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v355[16]);
      }

      else
      {
        if (v355[12] != 1)
        {
          goto LABEL_598;
        }

        if (*&v355[16])
        {
          v25 = *(&v356 + 1);
          if (*(&v356 + 1))
          {
            (*(**&v355[16] + 40))();
          }
        }
      }
    }

    if (v348[0] & 1) == 0 && *(&v348[1] + 1) && (v349)
    {
      (*(**(&v348[1] + 1) + 40))(v26);
    }

    if (buf[12])
    {
      if (buf[12] == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v368);
      }

      else
      {
        if (buf[12] != 1)
        {
          goto LABEL_599;
        }

        if (v368 && v370)
        {
          (*(*v368 + 40))(v26);
        }
      }
    }

    v295 = &v338;
    v23 = &v340;
    v304 = &v339;
    v299 = &v337;
    a2 = &v336;
  }

  v307 = *(a2 + 4);
  v309 = a2;
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v342, 4508, v23[144], v307, *(a2 + 10), 0);
  v314[0] = 0;
  v312 = 0uLL;
  v310 = v23;
  v311 = 0;
  v313 = 0;
  v29 = *(v23 + 72);
  v305 = a1;
  if (v29)
  {
    re::DynamicArray<re::MeshAssetBuffer>::setCapacity(&v311, v29);
    v30 = 0;
    v20 = "skinnedAnimationRemappedJointIndices";
    while (1)
    {
      v31 = re::internal::GeomAttributeManager::attributeByIndex(v23, v30);
      v32 = *(v31 + 8);
      if (strcmp("skinnedAnimationGeometryBindTransform", v32))
      {
        if (strcmp("skinnedAnimationWeights", v32) && strcmp("skinnedAnimationJointIndices", v32) && strcmp("skinnedAnimationRemappedJointIndices", v32) && strcmp("skinnedAnimationInfluenceEndIndices", v32) && strcmp("skeletonPath", v32))
        {
          break;
        }
      }

LABEL_247:
      if (++v30 == v29)
      {
        goto LABEL_248;
      }
    }

    *&v348[0] = v32;
    v33 = re::Hash<re::DynamicString>::operator()(buf, v32);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1 + 16, v348, v33, buf);
    LODWORD(v20) = *&buf[12];
    a1 = *(a1 + 32) + 56 * *&buf[12] + 40;
    v34 = *(v31 + 16);
    v35 = (*(*v31 + 16))(v31);
    LODWORD(v306) = v35;
    v37 = *(v31 + 17);
    LOBYTE(v38) = 30;
    if (v37 <= 4)
    {
      if (*(v31 + 17) <= 1u)
      {
        if (*(v31 + 17))
        {
          if (v20 != 0x7FFFFFFF)
          {
            v43 = *re::pipelineLogObjects(v35);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kUInt16 is not supported for compression.", buf, 2u);
            }
          }

          LOBYTE(v38) = 49;
        }

        else
        {
          if (v20 != 0x7FFFFFFF)
          {
            v44 = *re::pipelineLogObjects(v35);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kInt16 is not supported for compression.", buf, 2u);
            }
          }

          LOBYTE(v38) = 50;
        }

        goto LABEL_131;
      }

      if (v37 == 2)
      {
        if (v20 != 0x7FFFFFFF)
        {
          v48 = *re::pipelineLogObjects(v35);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kInt32 is not supported for compression.", buf, 2u);
          }
        }

        LOBYTE(v38) = 32;
        goto LABEL_131;
      }

      if (v37 == 3)
      {
        if (v20 != 0x7FFFFFFF)
        {
          v45 = *re::pipelineLogObjects(v35);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kUInt32 is not supported for compression.", buf, 2u);
          }
        }

        LOBYTE(v38) = 36;
        goto LABEL_131;
      }

      if (v37 != 4)
      {
        goto LABEL_131;
      }

      if (v20 != 0x7FFFFFFF)
      {
        if (*a1)
        {
          LOBYTE(v38) = 28;
        }

        else
        {
          LOBYTE(v38) = 53;
        }

        goto LABEL_131;
      }
    }

    else
    {
      if (*(v31 + 17) > 7u)
      {
        switch(v37)
        {
          case 8u:
            if (v20 != 0x7FFFFFFF)
            {
              v50 = *a1;
              if (v50 < 3)
              {
                v40 = 8 * (v50 & 0x1F);
                v41 = 788763;
                goto LABEL_128;
              }
            }

            LOBYTE(v38) = 31;
            break;
          case 9u:
            if (v20 != 0x7FFFFFFF)
            {
              v47 = *re::pipelineLogObjects(v35);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kUInt8 is not supported for compression.", buf, 2u);
              }
            }

            LOBYTE(v38) = 45;
            break;
          case 0xAu:
            if (v20 != 0x7FFFFFFF)
            {
              v42 = *re::pipelineLogObjects(v35);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kInt8 is not supported for compression.", buf, 2u);
              }
            }

            LOBYTE(v38) = 46;
            break;
        }

LABEL_131:
        v349 = 0;
        memset(v348, 0, 28);
        v51 = re::sizeFromVertexFormat(v38, v36);
        LODWORD(v52) = v51;
        if (v34 == 1)
        {
          v53 = (v51 + 3) & 0x1FC;
        }

        else
        {
          v53 = v51;
        }

        re::DynamicArray<BOOL>::resize(v348, v306 * v53);
        v55 = *(v31 + 17);
        v302 = v38;
        v303 = v34;
        if (v20 == 0x7FFFFFFF)
        {
          if (*(v31 + 17) > 4u)
          {
            if (*(v31 + 17) <= 7u)
            {
              v56 = v53;
              if (v55 != 5)
              {
                if (v55 == 6)
                {
                  v74 = v349;
                  if ((*(*v31 + 16))(v31))
                  {
                    if (!*(v31 + 40))
                    {
                      goto LABEL_587;
                    }

                    v20 = *(v31 + 56);
                    v58 = (*(*v31 + 16))(v31);
                  }

                  else
                  {
                    v58 = 0;
                    v20 = 0;
                  }

                  v54 = (*(*v31 + 16))(v31);
                  if (v54)
                  {
                    v87 = 0;
                    v88 = v56;
                    v89 = v54;
                    do
                    {
                      if (v58 == v87)
                      {
                        goto LABEL_546;
                      }

                      v54 = memcpy(v74, (v20 + 8 * v87++), v52);
                      v74 = (v74 + v88);
                    }

                    while (v89 != v87);
                  }
                }

                else
                {
                  v57 = v349;
                  if ((*(*v31 + 16))(v31))
                  {
                    if (!*(v31 + 40))
                    {
                      goto LABEL_583;
                    }

                    v20 = *(v31 + 56);
                    v306 = (*(*v31 + 16))(v31);
                  }

                  else
                  {
                    v306 = 0;
                    v20 = 0;
                  }

                  v54 = (*(*v31 + 16))(v31);
                  if (v54)
                  {
                    v90 = v306;
                    v58 = v54;
                    do
                    {
                      if (!v90)
                      {
                        goto LABEL_542;
                      }

                      v54 = memcpy(v57, v20, v52);
                      v57 = (v57 + v56);
                      v20 += 16;
                      --v90;
                      --v58;
                    }

                    while (v58);
                  }
                }

                goto LABEL_240;
              }

              goto LABEL_146;
            }

            if (v55 != 8)
            {
LABEL_168:
              if (v55 == 9)
              {
                a1 = v349;
                if ((*(*v31 + 16))(v31))
                {
                  if (!*(v31 + 40))
                  {
                    goto LABEL_579;
                  }

                  v73 = v53;
                  v20 = *(v31 + 56);
                  v58 = (*(*v31 + 16))(v31);
                }

                else
                {
                  v73 = v53;
                  v58 = 0;
                  v20 = 0;
                }

                v54 = (*(*v31 + 16))(v31);
                if (v54)
                {
                  v34 = 0;
                  v52 = v52;
                  v86 = v73;
                  v56 = v54;
                  do
                  {
                    if (v58 == v34)
                    {
                      goto LABEL_510;
                    }

                    v54 = memcpy(a1, (v20 + v34++), v52);
                    a1 += v86;
                  }

                  while (v56 != v34);
                }
              }

              else
              {
                v66 = v53;
                if (v55 == 10)
                {
                  a1 = v349;
                  if ((*(*v31 + 16))(v31))
                  {
                    if (!*(v31 + 40))
                    {
                      goto LABEL_567;
                    }

                    v20 = *(v31 + 56);
                    v58 = (*(*v31 + 16))(v31);
                  }

                  else
                  {
                    v58 = 0;
                    v20 = 0;
                  }

                  v54 = (*(*v31 + 16))(v31);
                  if (v54)
                  {
                    v34 = 0;
                    v52 = v52;
                    v82 = v66;
                    v56 = v54;
                    do
                    {
                      if (v58 == v34)
                      {
                        goto LABEL_514;
                      }

                      v54 = memcpy(a1, (v20 + v34++), v52);
                      a1 += v82;
                    }

                    while (v56 != v34);
                  }
                }
              }

              goto LABEL_240;
            }

            v20 = v349;
            v75 = re::GeomAttribute::accessValues<int>(v31);
            v77 = v76;
            v54 = (*(*v31 + 16))(v31);
            if (v54)
            {
              v78 = v53;
              v56 = v77;
              v79 = v54;
              v58 = v56;
              do
              {
                if (!v58)
                {
                  goto LABEL_538;
                }

                v54 = memcpy(v20, v75, v52);
                v20 += v78;
                v75 += 16;
                --v58;
                --v79;
              }

              while (v79);
            }

LABEL_240:
            *&v355[32] = *&v348[0];
            v356 = *(v348 + 8);
            v358 = v349;
            v357 = 1;
            LOBYTE(v359) = v302;
            HIBYTE(v359) = v303 == 1;
            v91.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(&v311, v355);
            a1 = v305;
            v23 = v310;
            v20 = "skinnedAnimationRemappedJointIndices";
            if (*&v355[32])
            {
              v27 = v358;
              if (v358)
              {
                (*(**&v355[32] + 40))(v91.n128_f64[0]);
              }

              v358 = 0;
              v356 = 0uLL;
              *&v355[32] = 0;
              ++v357;
            }

            if (*v355 && (v355[8] & 1) != 0)
            {
              (*(**v355 + 40))(v91);
            }

            goto LABEL_247;
          }

          if (*(v31 + 17) > 1u)
          {
            if (v55 != 2)
            {
              LOBYTE(v56) = v53;
              if (v55 != 3)
              {
                v20 = v349;
                v59 = re::GeomAttribute::accessValues<int>(v31);
                v61 = v60;
                v54 = (*(*v31 + 16))(v31);
                if (v54)
                {
                  v62 = v53;
                  v56 = v61;
                  v63 = v54;
                  v58 = v56;
                  do
                  {
                    if (!v58)
                    {
                      goto LABEL_534;
                    }

                    v54 = memcpy(v20, v59, v52);
                    v20 += v62;
                    v59 += 4;
                    --v58;
                    --v63;
                  }

                  while (v63);
                }

                goto LABEL_240;
              }

              goto LABEL_176;
            }

LABEL_181:
            v20 = v349;
            a1 = re::GeomAttribute::accessValues<int>(v31);
            v71 = v70;
            v54 = (*(*v31 + 16))(v31);
            if (v54)
            {
              v52 = v52;
              v72 = v53;
              v56 = v71;
              v34 = v54;
              v58 = v56;
              do
              {
                if (!v58)
                {
                  goto LABEL_498;
                }

                v54 = memcpy(v20, a1, v52);
                v20 += v72;
                a1 += 4;
                --v58;
                --v34;
              }

              while (v34);
            }

            goto LABEL_240;
          }

LABEL_164:
          if (*(v31 + 17))
          {
            a1 = v349;
            if ((*(*v31 + 16))(v31))
            {
              v20 = re::internal::GeomTypedAttribute<unsigned short>::operator[](v31);
              v56 = (*(*v31 + 16))(v31);
            }

            else
            {
              v56 = 0;
              v20 = 0;
            }

            v54 = (*(*v31 + 16))(v31);
            if (v54)
            {
              v52 = v52;
              v34 = v53;
              v81 = v56;
              v58 = v54;
              do
              {
                if (!v81)
                {
                  goto LABEL_502;
                }

                v54 = memcpy(a1, v20, v52);
                a1 += v34;
                v20 += 2;
                --v81;
                --v58;
              }

              while (v58);
            }
          }

          else
          {
            a1 = v349;
            if ((*(*v31 + 16))(v31))
            {
              if (!*(v31 + 40))
              {
                goto LABEL_571;
              }

              v20 = *(v31 + 56);
              v56 = (*(*v31 + 16))(v31);
            }

            else
            {
              v56 = 0;
              v20 = 0;
            }

            v54 = (*(*v31 + 16))(v31);
            if (v54)
            {
              v52 = v52;
              v34 = v53;
              v80 = v56;
              v58 = v54;
              do
              {
                if (!v80)
                {
                  goto LABEL_518;
                }

                v54 = memcpy(a1, v20, v52);
                a1 += v34;
                v20 += 2;
                --v80;
                --v58;
              }

              while (v58);
            }
          }

          goto LABEL_240;
        }

        if (*(v31 + 17) <= 4u)
        {
          if (*(v31 + 17) <= 1u)
          {
            goto LABEL_164;
          }

          if (v55 == 2)
          {
            goto LABEL_181;
          }

          LOBYTE(v56) = v53;
          if (v55 == 3)
          {
LABEL_176:
            v20 = v349;
            a1 = re::GeomAttribute::accessValues<int>(v31);
            v68 = v67;
            v54 = (*(*v31 + 16))(v31);
            if (v54)
            {
              v52 = v52;
              v69 = v56;
              v56 = v68;
              v34 = v54;
              v58 = v56;
              do
              {
                if (!v58)
                {
                  goto LABEL_506;
                }

                v54 = memcpy(v20, a1, v52);
                v20 += v69;
                a1 += 4;
                --v58;
                --v34;
              }

              while (v34);
            }

            goto LABEL_240;
          }
        }

        else
        {
          if (*(v31 + 17) > 8u)
          {
            goto LABEL_168;
          }

          v56 = v53;
          if ((v55 - 6) >= 3)
          {
            if (v55 == 5)
            {
LABEL_146:
              v54 = (*(*v31 + 16))(v31);
              if (v54)
              {
                if (!*(v31 + 40))
                {
                  goto LABEL_575;
                }

                v58 = *(v31 + 56);
                v54 = (*(*v31 + 16))(v31);
                v52 = v54;
              }

              else
              {
                v52 = 0;
                v58 = 0;
              }

              if (v306)
              {
                v83 = 0;
                v84 = v349;
                do
                {
                  if (v52 == v83)
                  {
                    goto LABEL_522;
                  }

                  v85 = *(v58 + 8 * v83);
                  *v84 = v85;
                  ++v83;
                  v84 = (v84 + v56);
                }

                while (v306 != v83);
              }

              goto LABEL_240;
            }

            goto LABEL_240;
          }
        }

        v64 = *(a1 + 4);
        v65 = *a1;
        if (v65 == 2)
        {
          v54 = re::fillStreamSN8(v31, v349, v56, 0, v64);
        }

        else if (v65 == 1)
        {
          v54 = re::fillStreamUN8(v31, v349, v56, 0, v64);
        }

        else if (!*a1)
        {
          v54 = re::fillStreamFP16(v31, v349, v56, 0, v64);
        }

        goto LABEL_240;
      }

      if (v37 != 5)
      {
        if (v37 != 6)
        {
          if (v37 != 7)
          {
            goto LABEL_131;
          }

          if (v20 == 0x7FFFFFFF)
          {
            goto LABEL_131;
          }

          v39 = *a1;
          if (v39 >= 3)
          {
            goto LABEL_131;
          }

          v40 = 8 * (v39 & 0x1F);
          v41 = 722970;
          goto LABEL_128;
        }

        if (v20 != 0x7FFFFFFF)
        {
          v46 = *a1;
          if (v46 < 3)
          {
            v40 = 8 * (v46 & 0x1F);
            v41 = 657177;
LABEL_128:
            v38 = v41 >> v40;
            goto LABEL_131;
          }
        }

        LOBYTE(v38) = 29;
        goto LABEL_131;
      }

      if (v20 != 0x7FFFFFFF)
      {
        v49 = *re::pipelineLogObjects(v35);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEFAULT, "Mesh attribute type kDouble is not supported for compression.", buf, 2u);
        }
      }
    }

    LOBYTE(v38) = 28;
    goto LABEL_131;
  }

LABEL_248:
  v92 = a9;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v342, v27, v28);
  v56 = v304;
  if (&v311 != a9)
  {
    v94 = *a9;
    if (*a9 && v311 && v94 != v311)
    {
      goto LABEL_566;
    }

    *a9 = v311;
    v311 = v94;
    v95 = *(a9 + 1);
    *(a9 + 1) = v312;
    v312 = v95;
    v96 = a9[4];
    a9[4] = v314[0];
    v314[0] = v96;
    ++v313;
    ++*(a9 + 6);
  }

  re::DynamicArray<re::MeshAssetBuffer>::deinit(&v311);
  v97 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a9 + 25), a7);
  v98 = v299;
  if (v334 && v332)
  {
    if (v370)
    {
      v99.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(a9, buf);
    }

    if (v369)
    {
      if (v371)
      {
        (*(*v369 + 40))(v99);
      }

      *&v371 = 0;
      *&v370 = 0;
      v369 = 0uLL;
      ++DWORD2(v370);
    }

    v97 = *buf;
    if (*buf && (buf[8] & 1) != 0)
    {
      v97 = (*(**buf + 40))(v99);
    }
  }

  v100 = v309;
  if (v329 && v327)
  {
    if (v370)
    {
      v101.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(a9, buf);
    }

    if (v369)
    {
      if (v371)
      {
        (*(*v369 + 40))(v101);
      }

      *&v371 = 0;
      *&v370 = 0;
      v369 = 0uLL;
      ++DWORD2(v370);
    }

    v97 = *buf;
    if (*buf && (buf[8] & 1) != 0)
    {
      v97 = (*(**buf + 40))(v101);
    }
  }

  if (v324 && v322)
  {
    if (v370)
    {
      v102.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(a9, buf);
    }

    if (v369)
    {
      if (v371)
      {
        (*(*v369 + 40))(v102);
      }

      *&v371 = 0;
      *&v370 = 0;
      v369 = 0uLL;
      ++DWORD2(v370);
    }

    v97 = *buf;
    if (*buf && (buf[8] & 1) != 0)
    {
      v97 = (*(**buf + 40))(v102);
    }
  }

  v34 = *v304;
  v58 = (3 * *v299);
  v319 = 0;
  v320 = 0;
  v321 = 0;
  if (v34 <= 0)
  {
    v52 = v320;
    v56 = v321;
    goto LABEL_295;
  }

  v103 = 0;
  v104 = 0;
  v105 = *v304;
  v52 = v320;
  do
  {
    if (v104 == v105)
    {
      goto LABEL_442;
    }

    v348[0] = *(*(v309 + 7) + 16 * v104);
    v106 = v348;
    v56 = v321;
    v20 = v103;
    v107 = 3;
    do
    {
      if (v52 <= v20)
      {
        v311 = 0;
        v370 = 0u;
        v371 = 0u;
        v368 = 0u;
        v369 = 0u;
        *buf = 0u;
        v92 = MEMORY[0x1E69E9C10];
        v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v355 = 136315906;
        *&v355[4] = "operator[]";
        *&v355[12] = 1024;
        if (v139)
        {
          v140 = 3;
        }

        else
        {
          v140 = 2;
        }

        *&v355[14] = 468;
        *&v355[18] = 2048;
        *&v355[20] = v20;
        *&v355[28] = 2048;
        *&v355[30] = v52;
        _os_log_send_and_compose_impl(v140, &v311, buf, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v355, 38, v292, v293);
        _os_crash_msg();
        __break(1u);
        goto LABEL_342;
      }

      v108 = *v106++;
      *(v56 + 4 * v20++) = v108;
      --v107;
    }

    while (v107);
    ++v104;
    v103 += 3;
  }

  while (v104 != (v34 & 0x7FFFFFFF));
LABEL_295:
  v109 = 1;
  *&v369 = 0;
  if (HIWORD(v307))
  {
    v109 = 2;
  }

  *&v368 = 0;
  memset(buf, 0, sizeof(buf));
  DWORD2(v368) = 0;
  re::DynamicArray<BOOL>::resize(buf, ((v52 << v109) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v111 = v369;
  if (HIWORD(v307))
  {
    for (; v52; --v52)
    {
      v112 = *v56;
      v56 += 4;
      *v111++ = v112;
    }

    v113 = 36;
  }

  else
  {
    for (; v52; --v52)
    {
      v114 = *v56;
      v56 += 4;
      *v111 = v114;
      v111 = (v111 + 2);
    }

    v113 = 49;
  }

  re::DynamicArray<BOOL>::DynamicArray(v314, buf);
  v317 = v113;
  v318 = 0;
  if (*buf && v369)
  {
    (*(**buf + 40))();
  }

  v115 = re::DynamicArray<re::MeshAssetBuffer>::add(a9, &v311);
  *(a9 + 10) = v58;
  *(a9 + 44) = HIWORD(v307) != 0;
  *(a9 + 12) = v307;
  *(a9 + 15) = *v297;
  *(a9 + 28) = v298;
  if ((*(a1 + 9) & 1) == 0)
  {
    goto LABEL_363;
  }

  v52 = *v295;
  v116 = v320;
  memset(v355, 0, 32);
  v56 = v355;
  re::DynamicString::setCapacity(v355, 0);
  v358 = 0;
  *&v355[32] = 0;
  v356 = 0uLL;
  v357 = 0;
  v359 = 256;
  *buf = "tension";
  *&buf[8] = 7;
  re::DynamicString::operator=(v355, buf);
  v359 = 284;
  re::DynamicArray<BOOL>::resize(&v355[32], 4 * v52);
  re::DynamicArray<re::MeshAssetBuffer>::add(a9, v355);
  if (!re::internal::GeomAttributeManager::attributeByName(v310, "vertexAdjacencies"))
  {
    goto LABEL_356;
  }

  v117 = re::internal::GeomAttributeManager::attributeByName(v310, "accumulatedVertexValence");
  if (!v117)
  {
    goto LABEL_356;
  }

  memset(v348, 0, sizeof(v348));
  v34 = v348;
  re::DynamicString::setCapacity(v348, 0);
  __dst = 0;
  __n = 0;
  v349 = 0;
  v350 = 0;
  v352 = 0;
  v354 = 256;
  *buf = "adjacentFaceArea";
  *&buf[8] = 16;
  re::DynamicString::operator=(v348, buf);
  v354 = 284;
  re::DynamicArray<BOOL>::resize(&v349, 4 * v52);
  *&v347[2] = 0;
  memset(v345, 0, sizeof(v345));
  v118 = *v299;
  if (v118)
  {
    re::DynamicArray<int>::setCapacity(v345, v118);
  }

  v119 = re::GeomMesh::accessVertexPositions(v309);
  if (v116)
  {
    v20 = v119;
    v105 = v120;
    v58 = 0;
    while (1)
    {
      a1 = v320;
      if (v320 <= v58)
      {
        goto LABEL_466;
      }

      v56 = *(v321 + v58);
      if (v56 >= v105)
      {
        break;
      }

      v98 = v58 + 1;
      if (v320 <= v58 + 1)
      {
        goto LABEL_474;
      }

      v121 = v321 + 4 * v58;
      v98 = *(v121 + 1);
      if (v98 >= v105)
      {
        goto LABEL_478;
      }

      v34 = v58 + 2;
      if (v320 <= v58 + 2)
      {
        goto LABEL_482;
      }

      a1 = *(v121 + 2);
      if (a1 >= v105)
      {
        goto LABEL_486;
      }

      v122 = *(v20 + 16 * v56);
      v123 = vsubq_f32(*(v20 + 16 * v98), v122);
      v124 = vsubq_f32(*(v20 + 16 * a1), v122);
      v125 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v124, v124), v124, 0xCuLL), vnegq_f32(v123)), v124, vextq_s8(vuzp1q_s32(v123, v123), v123, 0xCuLL));
      v126 = vmulq_f32(v125, v125);
      *buf = sqrtf(v126.f32[1] + (v126.f32[2] + v126.f32[0])) * 0.5;
      re::DynamicArray<float>::add(v345, buf);
      v58 += 3;
      if (v58 >= v116)
      {
        goto LABEL_321;
      }
    }

LABEL_470:
    *v360 = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v202 = MEMORY[0x1E69E9C10];
    v203 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v342 = 136315906;
    *&v342[4] = "operator[]";
    *&v342[12] = 1024;
    if (v203)
    {
      v204 = 3;
    }

    else
    {
      v204 = 2;
    }

    *&v342[14] = 613;
    *&v342[18] = 2048;
    *&v342[20] = v56;
    v343 = 2048;
    *v344 = v105;
    _os_log_send_and_compose_impl(v204, v360, buf, 80, &dword_1E1C61000, v202, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v342, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_474:
    *v360 = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v205 = MEMORY[0x1E69E9C10];
    v206 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v342 = 136315906;
    *&v342[4] = "operator[]";
    *&v342[12] = 1024;
    if (v206)
    {
      v207 = 3;
    }

    else
    {
      v207 = 2;
    }

    *&v342[14] = 476;
    *&v342[18] = 2048;
    *&v342[20] = v98;
    v343 = 2048;
    *v344 = a1;
    _os_log_send_and_compose_impl(v207, v360, buf, 80, &dword_1E1C61000, v205, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v342, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_478:
    *v360 = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v208 = MEMORY[0x1E69E9C10];
    v209 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v342 = 136315906;
    *&v342[4] = "operator[]";
    *&v342[12] = 1024;
    if (v209)
    {
      v210 = 3;
    }

    else
    {
      v210 = 2;
    }

    *&v342[14] = 613;
    *&v342[18] = 2048;
    *&v342[20] = v98;
    v343 = 2048;
    *v344 = v105;
    _os_log_send_and_compose_impl(v210, v360, buf, 80, &dword_1E1C61000, v208, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v342, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_482:
    *v360 = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v211 = MEMORY[0x1E69E9C10];
    v212 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v342 = 136315906;
    *&v342[4] = "operator[]";
    *&v342[12] = 1024;
    if (v212)
    {
      v213 = 3;
    }

    else
    {
      v213 = 2;
    }

    *&v342[14] = 476;
    *&v342[18] = 2048;
    *&v342[20] = v34;
    v343 = 2048;
    *v344 = a1;
    _os_log_send_and_compose_impl(v213, v360, buf, 80, &dword_1E1C61000, v211, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v342, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_486:
    *v360 = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v214 = MEMORY[0x1E69E9C10];
    v215 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v342 = 136315906;
    *&v342[4] = "operator[]";
    *&v342[12] = 1024;
    if (v215)
    {
      v216 = 3;
    }

    else
    {
      v216 = 2;
    }

    *&v342[14] = 613;
    *&v342[18] = 2048;
    *&v342[20] = a1;
    v343 = 2048;
    *v344 = v105;
    _os_log_send_and_compose_impl(v216, v360, buf, 80, &dword_1E1C61000, v214, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v342, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
    goto LABEL_490;
  }

LABEL_321:
  v127 = re::internal::GeomAttributeManager::attributeByName(v310, "vertexAdjacencies");
  v308 = re::GeomAttribute::accessValues<int>(v127);
  v105 = v128;
  v129 = re::internal::GeomAttributeManager::attributeByName(v310, "accumulatedVertexValence");
  v130 = re::GeomAttribute::accessValues<int>(v129);
  *&v344[2] = 0;
  memset(v342, 0, sizeof(v342));
  if (!v52)
  {
LABEL_342:
    v138 = 0;
    goto LABEL_343;
  }

  v100 = v130;
  LODWORD(a1) = v131;
  v34 = v360;
  re::DynamicArray<int>::setCapacity(v342, v52);
  v58 = 0;
  a1 = a1;
  do
  {
    if (v58)
    {
      v56 = v58 - 1;
      if (v58 - 1 >= a1)
      {
        goto LABEL_530;
      }

      v132 = *(v100 + 4 * v56);
    }

    else
    {
      v132 = 0;
    }

    if (v58 == a1)
    {
      goto LABEL_526;
    }

    v133 = *(v100 + 4 * v58);
    v134 = 0.0;
    v135 = v133 - v132;
    if (v133 > v132)
    {
      v98 = *&v345[16];
      if (v132 <= v105)
      {
        v56 = v105;
      }

      else
      {
        v56 = v132;
      }

      v136 = (v308 + 4 * v132);
      v137 = (v56 - v132);
      while (v137)
      {
        v20 = *v136;
        if (*&v345[16] <= v20)
        {
          goto LABEL_438;
        }

        v134 = v134 + *(*&v347[2] + 4 * v20);
        ++v136;
        ++v132;
        --v137;
        if (v133 <= v132)
        {
          goto LABEL_336;
        }
      }

      v341 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v175 = MEMORY[0x1E69E9C10];
      v176 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v360 = 136315906;
      *&v360[4] = "operator[]";
      v361 = 1024;
      if (v176)
      {
        v177 = 3;
      }

      else
      {
        v177 = 2;
      }

      v362 = 613;
      v363 = 2048;
      v364 = v56;
      v365 = 2048;
      v366 = v105;
      _os_log_send_and_compose_impl(v177, &v341, buf, 80, &dword_1E1C61000, v175, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v360, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_438:
      v341 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v178 = MEMORY[0x1E69E9C10];
      v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v360 = 136315906;
      *&v360[4] = "operator[]";
      v361 = 1024;
      if (v179)
      {
        v180 = 3;
      }

      else
      {
        v180 = 2;
      }

      v362 = 789;
      v363 = 2048;
      v364 = v20;
      v365 = 2048;
      v366 = v98;
      _os_log_send_and_compose_impl(v180, &v341, buf, 80, &dword_1E1C61000, v178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v360, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_442:
      *&v348[0] = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v181 = MEMORY[0x1E69E9C10];
      v182 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v355 = 136315906;
      *&v355[4] = "operator[]";
      *&v355[12] = 1024;
      if (v182)
      {
        v183 = 3;
      }

      else
      {
        v183 = 2;
      }

      *&v355[14] = 797;
      *&v355[18] = 2048;
      *&v355[20] = v105;
      *&v355[28] = 2048;
      *&v355[30] = v105;
      _os_log_send_and_compose_impl(v183, v348, buf, 80, &dword_1E1C61000, v181, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v355, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
      goto LABEL_446;
    }

LABEL_336:
    *buf = v134 / v135;
    re::DynamicArray<float>::add(v342, buf);
    ++v58;
  }

  while (v58 != v52);
  v138 = *&v344[2];
LABEL_343:
  memcpy(__dst, v138, __n);
  re::DynamicArray<re::MeshAssetBuffer>::add(v92, v348);
  a1 = v305;
  if (*v342 && *&v344[2])
  {
    (*(**v342 + 40))();
  }

  if (*v345 && *&v347[2])
  {
    (*(**v345 + 40))();
  }

  if (v349)
  {
    if (__dst)
    {
      (*(*v349 + 40))();
    }

    __dst = 0;
    v350 = 0;
    __n = 0;
    v349 = 0;
    ++v352;
  }

  if (*&v348[0] && (BYTE8(v348[0]) & 1) != 0)
  {
    (*(**&v348[0] + 40))();
  }

LABEL_356:
  v100 = v309;
  if (*&v355[32])
  {
    if (v358)
    {
      (*(**&v355[32] + 40))();
    }

    v358 = 0;
    v356 = 0uLL;
    *&v355[32] = 0;
    ++v357;
  }

  if (*v355 && (v355[8] & 1) != 0)
  {
    (*(**v355 + 40))();
  }

LABEL_363:
  v58 = a10;
  re::UniqueNameGenerator::uniqueName(buf, v296, *v301, "MeshPart");
  v141 = re::StringID::operator=((v92 + 9), buf);
  if (buf[0])
  {
    if (buf[0])
    {
    }
  }

  if (!a10 || !re::meshHasSkinningData(v100, v142))
  {
    goto LABEL_400;
  }

  v144 = re::internal::GeomAttributeManager::attributeByName(v310, "skeletonPath");
  v20 = re::internal::GeomAttributeManager::attributeByName(v310, "skinnedAnimationGeometryBindTransform");
  v145 = re::internal::GeomAttributeManager::attributeByName(v310, "skinnedAnimationWeights");
  v146 = re::internal::GeomAttributeManager::attributeByName(v310, "skinnedAnimationJointIndices");
  v52 = re::internal::GeomAttributeManager::attributeByName(v310, "skinnedAnimationInfluenceEndIndices");
  v147 = re::internal::GeomTypedAttribute<unsigned short>::operator[](v144);
  *v355 = 0;
  *&v355[8] = &str_67;
  v148 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v355 >> 31) ^ (*v355 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v355 >> 31) ^ (*v355 >> 1))) >> 27));
  v34 = a6;
  v149 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a6, v355, v148 ^ (v148 >> 31), buf);
  if (*&buf[12] == 0x7FFFFFFF)
  {
    if (v355[0])
    {
      if (v355[0])
      {
      }
    }

    v150 = 0;
  }

  else
  {
    v34 = *(a6 + 16) + 32 * *&buf[12];
    if (v355[0])
    {
      if (v355[0])
      {
      }
    }

    v150 = *(v34 + 24);
  }

  *a10 = v150;
  v151 = re::GeomAttribute::accessValues<int>(v20);
  LOBYTE(v20) = v152;
  if (!v152)
  {
    goto LABEL_550;
  }

  if (v152 == 1)
  {
LABEL_554:
    *&v348[0] = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v265 = MEMORY[0x1E69E9C10];
    v266 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v355 = 136315906;
    *&v355[4] = "operator[]";
    *&v355[12] = 1024;
    if (v266)
    {
      v267 = 3;
    }

    else
    {
      v267 = 2;
    }

    *&v355[14] = 613;
    *&v355[18] = 2048;
    *&v355[20] = 1;
    *&v355[28] = 2048;
    *&v355[30] = 1;
    _os_log_send_and_compose_impl(v267, v348, buf, 80, &dword_1E1C61000, v265, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v355, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
    goto LABEL_558;
  }

  if (v152 <= 2)
  {
LABEL_558:
    *&v348[0] = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v268 = MEMORY[0x1E69E9C10];
    v269 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v355 = 136315906;
    *&v355[4] = "operator[]";
    *&v355[12] = 1024;
    if (v269)
    {
      v270 = 3;
    }

    else
    {
      v270 = 2;
    }

    *&v355[14] = 613;
    *&v355[18] = 2048;
    *&v355[20] = 2;
    *&v355[28] = 2048;
    *&v355[30] = v20 & 3;
    _os_log_send_and_compose_impl(v270, v348, buf, 80, &dword_1E1C61000, v268, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v355, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
    goto LABEL_562;
  }

  if (v152 == 3)
  {
LABEL_562:
    *&v348[0] = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v271 = MEMORY[0x1E69E9C10];
    v272 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v355 = 136315906;
    *&v355[4] = "operator[]";
    *&v355[12] = 1024;
    if (v272)
    {
      v273 = 3;
    }

    else
    {
      v273 = 2;
    }

    *&v355[14] = 613;
    *&v355[18] = 2048;
    *&v355[20] = 3;
    *&v355[28] = 2048;
    *&v355[30] = 3;
    _os_log_send_and_compose_impl(v273, v348, buf, 80, &dword_1E1C61000, v271, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v355, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_566:
    re::internal::assertLog(4, v93, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
    __break(1u);
LABEL_567:
    *v360 = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v274 = MEMORY[0x1E69E9C10];
    v275 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v345 = 136315906;
    *&v345[4] = "operator[]";
    *&v345[12] = 1024;
    if (v275)
    {
      v276 = 3;
    }

    else
    {
      v276 = 2;
    }

    *&v345[14] = 797;
    *&v345[18] = 2048;
    *&v345[20] = 0;
    v346 = 2048;
    *v347 = 0;
    _os_log_send_and_compose_impl(v276, v360, buf, 80, &dword_1E1C61000, v274, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_571:
    *v360 = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v277 = MEMORY[0x1E69E9C10];
    v278 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v345 = 136315906;
    *&v345[4] = "operator[]";
    *&v345[12] = 1024;
    if (v278)
    {
      v279 = 3;
    }

    else
    {
      v279 = 2;
    }

    *&v345[14] = 797;
    *&v345[18] = 2048;
    *&v345[20] = 0;
    v346 = 2048;
    *v347 = 0;
    _os_log_send_and_compose_impl(v279, v360, buf, 80, &dword_1E1C61000, v277, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_575:
    *v360 = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v280 = MEMORY[0x1E69E9C10];
    v281 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v345 = 136315906;
    *&v345[4] = "operator[]";
    *&v345[12] = 1024;
    if (v281)
    {
      v282 = 3;
    }

    else
    {
      v282 = 2;
    }

    *&v345[14] = 797;
    *&v345[18] = 2048;
    *&v345[20] = 0;
    v346 = 2048;
    *v347 = 0;
    _os_log_send_and_compose_impl(v282, v360, buf, 80, &dword_1E1C61000, v280, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_579:
    *v360 = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v283 = MEMORY[0x1E69E9C10];
    v284 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v345 = 136315906;
    *&v345[4] = "operator[]";
    *&v345[12] = 1024;
    if (v284)
    {
      v285 = 3;
    }

    else
    {
      v285 = 2;
    }

    *&v345[14] = 797;
    *&v345[18] = 2048;
    *&v345[20] = 0;
    v346 = 2048;
    *v347 = 0;
    _os_log_send_and_compose_impl(v285, v360, buf, 80, &dword_1E1C61000, v283, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_583:
    *v360 = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v286 = MEMORY[0x1E69E9C10];
    v287 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v345 = 136315906;
    *&v345[4] = "operator[]";
    *&v345[12] = 1024;
    if (v287)
    {
      v288 = 3;
    }

    else
    {
      v288 = 2;
    }

    *&v345[14] = 797;
    *&v345[18] = 2048;
    *&v345[20] = 0;
    v346 = 2048;
    *v347 = 0;
    _os_log_send_and_compose_impl(v288, v360, buf, 80, &dword_1E1C61000, v286, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_587:
    *v360 = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v289 = MEMORY[0x1E69E9C10];
    v290 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v345 = 136315906;
    *&v345[4] = "operator[]";
    *&v345[12] = 1024;
    if (v290)
    {
      v291 = 3;
    }

    else
    {
      v291 = 2;
    }

    *&v345[14] = 797;
    *&v345[18] = 2048;
    *&v345[20] = 0;
    v346 = 2048;
    *v347 = 0;
    _os_log_send_and_compose_impl(v291, v360, buf, 80, &dword_1E1C61000, v289, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
  }

  v153 = v151[1];
  v154 = v151[2];
  v155 = v151[3];
  *(a10 + 80) = *v151;
  *(a10 + 96) = v153;
  *(a10 + 112) = v154;
  *(a10 + 128) = v155;
  v98 = (*(*v145 + 16))(v145);
  (*(*v146 + 16))(v146);
  v56 = re::GeomAttribute::accessValues<int>(v145);
  LODWORD(v100) = v156;
  v105 = re::GeomAttribute::accessValues<int>(v146);
  LODWORD(a1) = v157;
  v20 = v98;
  if (v98)
  {
    v158 = 0;
    v98 = *(a10 + 16);
    v100 = v100;
    a1 = a1;
    v159 = (*(a10 + 24) + 4);
    while (v100 != v158)
    {
      if (a1 == v158)
      {
        goto LABEL_450;
      }

      if (v98 == v158)
      {
        goto LABEL_454;
      }

      v160 = *(v56 + 4 * v158);
      *(v159 - 1) = *(v105 + 4 * v158);
      *v159 = v160;
      v159 += 2;
      if (v20 == ++v158)
      {
        goto LABEL_387;
      }
    }

LABEL_446:
    *&v348[0] = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v184 = MEMORY[0x1E69E9C10];
    v185 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v355 = 136315906;
    *&v355[4] = "operator[]";
    *&v355[12] = 1024;
    if (v185)
    {
      v186 = 3;
    }

    else
    {
      v186 = 2;
    }

    *&v355[14] = 613;
    *&v355[18] = 2048;
    *&v355[20] = v100;
    *&v355[28] = 2048;
    *&v355[30] = v100;
    _os_log_send_and_compose_impl(v186, v348, buf, 80, &dword_1E1C61000, v184, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v355, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_450:
    *&v348[0] = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v187 = MEMORY[0x1E69E9C10];
    v188 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v355 = 136315906;
    *&v355[4] = "operator[]";
    *&v355[12] = 1024;
    if (v188)
    {
      v189 = 3;
    }

    else
    {
      v189 = 2;
    }

    *&v355[14] = 613;
    *&v355[18] = 2048;
    *&v355[20] = a1;
    *&v355[28] = 2048;
    *&v355[30] = a1;
    _os_log_send_and_compose_impl(v189, v348, buf, 80, &dword_1E1C61000, v187, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v355, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_454:
    *&v348[0] = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v190 = MEMORY[0x1E69E9C10];
    v191 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v355 = 136315906;
    *&v355[4] = "operator[]";
    *&v355[12] = 1024;
    if (v191)
    {
      v192 = 3;
    }

    else
    {
      v192 = 2;
    }

    *&v355[14] = 468;
    *&v355[18] = 2048;
    *&v355[20] = v98;
    *&v355[28] = 2048;
    *&v355[30] = v98;
    _os_log_send_and_compose_impl(v192, v348, buf, 80, &dword_1E1C61000, v190, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v355, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_458:
    *&v348[0] = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v193 = MEMORY[0x1E69E9C10];
    v194 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v355 = 136315906;
    *&v355[4] = "operator[]";
    *&v355[12] = 1024;
    if (v194)
    {
      v195 = 3;
    }

    else
    {
      v195 = 2;
    }

    *&v355[14] = 613;
    *&v355[18] = 2048;
    *&v355[20] = v20;
    *&v355[28] = 2048;
    *&v355[30] = v20;
    _os_log_send_and_compose_impl(v195, v348, buf, 80, &dword_1E1C61000, v193, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v355, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_462:
    *&v348[0] = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v196 = MEMORY[0x1E69E9C10];
    v197 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v355 = 136315906;
    *&v355[4] = "operator[]";
    *&v355[12] = 1024;
    if (v197)
    {
      v198 = 3;
    }

    else
    {
      v198 = 2;
    }

    *&v355[14] = 468;
    *&v355[18] = 2048;
    *&v355[20] = v100;
    *&v355[28] = 2048;
    *&v355[30] = v100;
    _os_log_send_and_compose_impl(v198, v348, buf, 80, &dword_1E1C61000, v196, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v355, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
LABEL_466:
    *v360 = 0;
    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    *buf = 0u;
    v199 = MEMORY[0x1E69E9C10];
    v200 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v342 = 136315906;
    *&v342[4] = "operator[]";
    *&v342[12] = 1024;
    if (v200)
    {
      v201 = 3;
    }

    else
    {
      v201 = 2;
    }

    *&v342[14] = 476;
    *&v342[18] = 2048;
    *&v342[20] = v58;
    v343 = 2048;
    *v344 = a1;
    _os_log_send_and_compose_impl(v201, v360, buf, 80, &dword_1E1C61000, v199, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v342, 38, v292, v293);
    _os_crash_msg();
    __break(1u);
    goto LABEL_470;
  }

LABEL_387:
  v161 = (*(*v52 + 16))(v52);
  v56 = re::GeomAttribute::accessValues<int>(v52);
  LODWORD(v20) = v162;
  v105 = v161;
  a1 = v305;
  if (v161)
  {
    v163 = 0;
    v100 = *(a10 + 40);
    v164 = *(a10 + 48);
    v20 = v20;
    while (v20 != v163)
    {
      if (v100 == v163)
      {
        goto LABEL_462;
      }

      *(v164 + 4 * v163) = *(v56 + 4 * v163);
      v163 = (v163 + 1);
      if (v105 == v163)
      {
        goto LABEL_392;
      }
    }

    goto LABEL_458;
  }

LABEL_392:
  v165 = re::internal::GeomAttributeManager::attributeByName(v310, "skinnedAnimationRemappedJointIndices");
  if (v165)
  {
    v166 = v165;
    v167 = (*(*v165 + 16))(v165);
    v52 = re::GeomAttribute::accessValues<int>(v166);
    LODWORD(v56) = v168;
    v34 = v167;
    v100 = v309;
    if (v167)
    {
      v169 = 0;
      v105 = *(a10 + 64);
      v170 = *(a10 + 72);
      v56 = v56;
      while (v56 != v169)
      {
        if (v105 == v169)
        {
          goto LABEL_494;
        }

        *(v170 + 4 * v169) = *(v52 + 4 * v169);
        if (v34 == ++v169)
        {
          goto LABEL_400;
        }
      }

LABEL_490:
      *&v348[0] = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v217 = MEMORY[0x1E69E9C10];
      v218 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v355 = 136315906;
      *&v355[4] = "operator[]";
      *&v355[12] = 1024;
      if (v218)
      {
        v219 = 3;
      }

      else
      {
        v219 = 2;
      }

      *&v355[14] = 613;
      *&v355[18] = 2048;
      *&v355[20] = v56;
      *&v355[28] = 2048;
      *&v355[30] = v56;
      _os_log_send_and_compose_impl(v219, v348, buf, 80, &dword_1E1C61000, v217, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v355, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_494:
      *&v348[0] = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v220 = MEMORY[0x1E69E9C10];
      v221 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v355 = 136315906;
      *&v355[4] = "operator[]";
      *&v355[12] = 1024;
      if (v221)
      {
        v222 = 3;
      }

      else
      {
        v222 = 2;
      }

      *&v355[14] = 468;
      *&v355[18] = 2048;
      *&v355[20] = v105;
      *&v355[28] = 2048;
      *&v355[30] = v105;
      _os_log_send_and_compose_impl(v222, v348, buf, 80, &dword_1E1C61000, v220, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v355, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_498:
      *v360 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v223 = MEMORY[0x1E69E9C10];
      v224 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v345 = 136315906;
      *&v345[4] = "operator[]";
      *&v345[12] = 1024;
      if (v224)
      {
        v225 = 3;
      }

      else
      {
        v225 = 2;
      }

      *&v345[14] = 613;
      *&v345[18] = 2048;
      *&v345[20] = v56;
      v346 = 2048;
      *v347 = v56;
      _os_log_send_and_compose_impl(v225, v360, buf, 80, &dword_1E1C61000, v223, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_502:
      *v360 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v226 = MEMORY[0x1E69E9C10];
      v227 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v345 = 136315906;
      *&v345[4] = "operator[]";
      *&v345[12] = 1024;
      if (v227)
      {
        v228 = 3;
      }

      else
      {
        v228 = 2;
      }

      *&v345[14] = 613;
      *&v345[18] = 2048;
      *&v345[20] = v56;
      v346 = 2048;
      *v347 = v56;
      _os_log_send_and_compose_impl(v228, v360, buf, 80, &dword_1E1C61000, v226, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_506:
      *v360 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v229 = MEMORY[0x1E69E9C10];
      v230 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v345 = 136315906;
      *&v345[4] = "operator[]";
      *&v345[12] = 1024;
      if (v230)
      {
        v231 = 3;
      }

      else
      {
        v231 = 2;
      }

      *&v345[14] = 613;
      *&v345[18] = 2048;
      *&v345[20] = v56;
      v346 = 2048;
      *v347 = v56;
      _os_log_send_and_compose_impl(v231, v360, buf, 80, &dword_1E1C61000, v229, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_510:
      *v360 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v232 = MEMORY[0x1E69E9C10];
      v233 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v345 = 136315906;
      *&v345[4] = "operator[]";
      *&v345[12] = 1024;
      if (v233)
      {
        v234 = 3;
      }

      else
      {
        v234 = 2;
      }

      *&v345[14] = 613;
      *&v345[18] = 2048;
      *&v345[20] = v58;
      v346 = 2048;
      *v347 = v58;
      _os_log_send_and_compose_impl(v234, v360, buf, 80, &dword_1E1C61000, v232, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_514:
      *v360 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v235 = MEMORY[0x1E69E9C10];
      v236 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v345 = 136315906;
      *&v345[4] = "operator[]";
      *&v345[12] = 1024;
      if (v236)
      {
        v237 = 3;
      }

      else
      {
        v237 = 2;
      }

      *&v345[14] = 613;
      *&v345[18] = 2048;
      *&v345[20] = v58;
      v346 = 2048;
      *v347 = v58;
      _os_log_send_and_compose_impl(v237, v360, buf, 80, &dword_1E1C61000, v235, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_518:
      *v360 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v238 = MEMORY[0x1E69E9C10];
      v239 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v345 = 136315906;
      *&v345[4] = "operator[]";
      *&v345[12] = 1024;
      if (v239)
      {
        v240 = 3;
      }

      else
      {
        v240 = 2;
      }

      *&v345[14] = 613;
      *&v345[18] = 2048;
      *&v345[20] = v56;
      v346 = 2048;
      *v347 = v56;
      _os_log_send_and_compose_impl(v240, v360, buf, 80, &dword_1E1C61000, v238, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_522:
      *v360 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v241 = MEMORY[0x1E69E9C10];
      v242 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v345 = 136315906;
      *&v345[4] = "operator[]";
      *&v345[12] = 1024;
      if (v242)
      {
        v243 = 3;
      }

      else
      {
        v243 = 2;
      }

      *&v345[14] = 613;
      *&v345[18] = 2048;
      *&v345[20] = v52;
      v346 = 2048;
      *v347 = v52;
      _os_log_send_and_compose_impl(v243, v360, buf, 80, &dword_1E1C61000, v241, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_526:
      v341 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v244 = MEMORY[0x1E69E9C10];
      v245 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v360 = 136315906;
      *(v34 + 4) = "operator[]";
      v361 = 1024;
      if (v245)
      {
        v246 = 3;
      }

      else
      {
        v246 = 2;
      }

      *(v34 + 14) = 613;
      v363 = 2048;
      *(v34 + 20) = a1;
      v365 = 2048;
      *(v34 + 30) = a1;
      _os_log_send_and_compose_impl(v246, &v341, buf, 80, &dword_1E1C61000, v244, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v360, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_530:
      v341 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v247 = MEMORY[0x1E69E9C10];
      v248 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v360 = 136315906;
      *(v34 + 4) = "operator[]";
      v361 = 1024;
      if (v248)
      {
        v249 = 3;
      }

      else
      {
        v249 = 2;
      }

      *(v34 + 14) = 613;
      v363 = 2048;
      *(v34 + 20) = v56;
      v365 = 2048;
      *(v34 + 30) = a1;
      _os_log_send_and_compose_impl(v249, &v341, buf, 80, &dword_1E1C61000, v247, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v360, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_534:
      *v360 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v250 = MEMORY[0x1E69E9C10];
      v251 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v345 = 136315906;
      *&v345[4] = "operator[]";
      *&v345[12] = 1024;
      if (v251)
      {
        v252 = 3;
      }

      else
      {
        v252 = 2;
      }

      *&v345[14] = 613;
      *&v345[18] = 2048;
      *&v345[20] = v56;
      v346 = 2048;
      *v347 = v56;
      _os_log_send_and_compose_impl(v252, v360, buf, 80, &dword_1E1C61000, v250, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_538:
      *v360 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v253 = MEMORY[0x1E69E9C10];
      v254 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v345 = 136315906;
      *&v345[4] = "operator[]";
      *&v345[12] = 1024;
      if (v254)
      {
        v255 = 3;
      }

      else
      {
        v255 = 2;
      }

      *&v345[14] = 613;
      *&v345[18] = 2048;
      *&v345[20] = v56;
      v346 = 2048;
      *v347 = v56;
      _os_log_send_and_compose_impl(v255, v360, buf, 80, &dword_1E1C61000, v253, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_542:
      *v360 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v256 = MEMORY[0x1E69E9C10];
      v257 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v345 = 136315906;
      *&v345[4] = "operator[]";
      *&v345[12] = 1024;
      if (v257)
      {
        v258 = 3;
      }

      else
      {
        v258 = 2;
      }

      *&v345[14] = 613;
      *&v345[18] = 2048;
      *&v345[20] = v306;
      v346 = 2048;
      *v347 = v306;
      _os_log_send_and_compose_impl(v258, v360, buf, 80, &dword_1E1C61000, v256, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_546:
      *v360 = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v259 = MEMORY[0x1E69E9C10];
      v260 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v345 = 136315906;
      *&v345[4] = "operator[]";
      *&v345[12] = 1024;
      if (v260)
      {
        v261 = 3;
      }

      else
      {
        v261 = 2;
      }

      *&v345[14] = 613;
      *&v345[18] = 2048;
      *&v345[20] = v58;
      v346 = 2048;
      *v347 = v58;
      _os_log_send_and_compose_impl(v261, v360, buf, 80, &dword_1E1C61000, v259, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v345, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
LABEL_550:
      *&v348[0] = 0;
      v370 = 0u;
      v371 = 0u;
      v368 = 0u;
      v369 = 0u;
      *buf = 0u;
      v262 = MEMORY[0x1E69E9C10];
      v263 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v355 = 136315906;
      *&v355[4] = "operator[]";
      *&v355[12] = 1024;
      if (v263)
      {
        v264 = 3;
      }

      else
      {
        v264 = 2;
      }

      *&v355[14] = 613;
      *&v355[18] = 2048;
      *&v355[20] = 0;
      *&v355[28] = 2048;
      *&v355[30] = 0;
      _os_log_send_and_compose_impl(v264, v348, buf, 80, &dword_1E1C61000, v262, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v355, 38, v292, v293);
      _os_crash_msg();
      __break(1u);
      goto LABEL_554;
    }
  }

  else
  {
    *(a10 + 64) = 0;
    v100 = v309;
  }

LABEL_400:
  if (*(a1 + 6) == 1)
  {
    re::internal::makeOpenSubdivAssetBuffersAndAppendToAssetPart(v301, v92, v143);
  }

  re::computeAABB(buf, v100);
  v171 = v368;
  *(v92 + 6) = *buf;
  *(v92 + 7) = v171;
  re::computeOrientedBoundingBox(v100, buf);
  v173 = v368;
  *(v92 + 8) = *buf;
  *(v92 + 9) = v173;
  v174 = v370;
  *(v92 + 10) = v369;
  *(v92 + 11) = v174;
  if (v314[0])
  {
    v172 = v316;
    if (v316)
    {
      (*(*v314[0] + 40))();
    }

    v316 = 0;
    memset(v314, 0, sizeof(v314));
    ++v315;
  }

  if (v311 && (v312 & 1) != 0)
  {
    (*(*v311 + 40))();
  }

  if (v319 && v320)
  {
    (*(*v319 + 40))();
  }

  if (v324)
  {
    if (v324 == 2)
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v325);
      goto LABEL_419;
    }

    if (v324 == 1)
    {
      if (v325[0])
      {
        v172 = v326;
        if (v326)
        {
          (*(*v325[0] + 40))();
        }
      }

      goto LABEL_419;
    }

LABEL_594:
    re::internal::assertLog(4, v172, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_595:
    re::internal::assertLog(4, v172, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_596:
    re::internal::assertLog(4, v172, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_597:
    re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_598:
    re::internal::assertLog(4, v25, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
LABEL_599:
    re::internal::assertLog(4, v25, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
  }

  else
  {
LABEL_419:
    if (v329)
    {
      if (v329 == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v330);
      }

      else
      {
        if (v329 != 1)
        {
          goto LABEL_595;
        }

        if (v330[0])
        {
          v172 = v331;
          if (v331)
          {
            (*(*v330[0] + 40))();
          }
        }
      }
    }

    if (v334)
    {
      if (v334 == 2)
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v335);
      }

      else
      {
        if (v334 != 1)
        {
          goto LABEL_596;
        }

        if (v335[0])
        {
          if (v335[4])
          {
            (*(*v335[0] + 40))();
          }
        }
      }
    }

    re::GeomMesh::~GeomMesh(&v336);
  }
}

uint64_t re::DynamicArray<re::MeshAssetBuffer>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshAssetBuffer>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 80 * v4);
  re::DynamicString::DynamicString(v5, a2);
  result = re::DynamicArray<BOOL>::DynamicArray(v5 + 32, a2 + 4);
  *(v5 + 36) = *(a2 + 36);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned short>::operator[](uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 40))
  {
    v5 = 0;
    memset(v14, 0, sizeof(v14));
    v2 = MEMORY[0x1E69E9C10];
    v6 = 136315906;
    v7 = "operator[]";
    v8 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v9 = 797;
    v10 = 2048;
    v11 = 0;
    v12 = 2048;
    v13 = 0;
    _os_log_send_and_compose_impl(v3, &v5, v14, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v6, 38, v4);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 56);
}

{
  v15 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 40))
  {
    v5 = 0;
    memset(v14, 0, sizeof(v14));
    v2 = MEMORY[0x1E69E9C10];
    v6 = 136315906;
    v7 = "operator[]";
    v8 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v9 = 789;
    v10 = 2048;
    v11 = 0;
    v12 = 2048;
    v13 = 0;
    _os_log_send_and_compose_impl(v3, &v5, v14, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v6, 38, v4);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 56);
}

void re::anonymous namespace::anonymous namespace::makePartToModelIndexMappingHelper(uint64_t a1, uint64_t a2, char a3, unsigned int *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = 0;
  *(a1 + 72) = 256;
  v15[0] = *(a2 + 8);
  v15[1] = strlen(v15[0]);
  re::DynamicString::operator=(a1, v15);
  re::DynamicArray<BOOL>::resize(a1 + 32, 4 * *a4);
  *(a1 + 73) = a3;
  *(a1 + 72) = 36;
  v9 = *a4;
  if (v9)
  {
    v10 = 0;
    v11 = *(a1 + 64);
    do
    {
      LODWORD(v15[0]) = v10;
      v12 = *(a4 + 12);
      if (v12 == 2)
      {
        v14 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a4 + 2, v15);
        if (v14 == -1)
        {
LABEL_13:
          v13 = -1;
          goto LABEL_14;
        }

        v13 = *(*(a4 + 3) + 8 * v14 + 4);
      }

      else if (v12 == 1)
      {
        if (*(a4 + 4) <= v10)
        {
          goto LABEL_13;
        }

        v13 = *(*(a4 + 6) + 4 * v10);
      }

      else
      {
        if (*(a4 + 12))
        {
          re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680, v15[0]);
          _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
          __break(1u);
          return;
        }

        if (v10 >= a4[4])
        {
          v13 = -1;
        }

        else
        {
          v13 = v10;
        }
      }

LABEL_14:
      *(v11 + 4 * v10++) = v13;
    }

    while (v9 != v10);
  }
}

uint64_t re::anonymous namespace::loadMeshPartFromAssetPart(_anonymous_namespace_ *a1, id *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 16);
  v45 = 0;
  v42[1] = 0;
  v43 = 0;
  v42[0] = 0;
  v44 = 0;
  memset(v41, 0, sizeof(v41));
  v9 = v8 + *(a3 + 228);
  if (v9)
  {
    re::DynamicArray<re::NamedVertexBuffer>::setCapacity(v42, v9);
  }

  if (v8)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *(a3 + 16);
      if (v12 <= v11)
      {
        v46 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v26 = MEMORY[0x1E69E9C10];
        v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        if (v27)
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        v56 = 797;
        v57 = 2048;
        v58 = v11;
        v59 = 2048;
        v60 = v12;
        _os_log_send_and_compose_impl(v28, &v46, &v47, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v35, v36);
        _os_crash_msg();
        __break(1u);
LABEL_52:
        v46 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v29 = MEMORY[0x1E69E9C10];
        v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        if (v30)
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        v56 = 797;
        v57 = 2048;
        v58 = 0;
        v59 = 2048;
        v60 = 0;
        _os_log_send_and_compose_impl(v31, &v46, &v47, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v35, v36);
        _os_crash_msg();
        __break(1u);
LABEL_56:
        v46 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v32 = MEMORY[0x1E69E9C10];
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        if (v33)
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        v56 = 789;
        v57 = 2048;
        v58 = v5;
        v59 = 2048;
        v60 = v12;
        _os_log_send_and_compose_impl(v34, &v46, &v47, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v35, v36);
        _os_crash_msg();
        __break(1u);
      }

      v12 = *(a3 + 32) + v10;
      v5 = *(v12 + 48);
      v13 = [*a2 newBufferWithLength:v5 options:0];
      v14 = [v13 contents];
      if (!*(v12 + 48))
      {
        goto LABEL_52;
      }

      memcpy(v14, *(v12 + 64), v5);
      re::DynamicString::DynamicString(&v47, v12);
      LOWORD(v49) = *(v12 + 72);
      *(&v49 + 1) = v13;
      LODWORD(v51) = 0;
      DWORD2(v51) = 0;
      HIDWORD(v51) = [v13 length];
      v52 = 0xFFFFFFFF00000000;
      re::DynamicArray<re::NamedVertexBuffer>::add(v42, &v47);
      if (v51 != -1)
      {
        (off_1F5D0BCB8[v51])(&v53, &v49 + 8);
      }

      LODWORD(v51) = -1;
      if (v47 && (BYTE8(v47) & 1) != 0)
      {
        (*(*v47 + 40))();
      }

      *&v47 = v11;
      if (re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(v41, v12) == -1)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++v11;
      v10 += 80;
      if (v8 == v11)
      {
        goto LABEL_19;
      }
    }

    re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(v41, v12, &v47);
    if (!v13)
    {
      goto LABEL_15;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_19:
  v15 = *(a3 + 232);
  if (v15)
  {
    v16 = 0;
    v17 = *(a3 + 216);
    while (1)
    {
      v18 = *v17;
      v17 += 20;
      if (v18 < 0)
      {
        break;
      }

      if (v15 == ++v16)
      {
        LODWORD(v16) = *(a3 + 232);
        break;
      }
    }
  }

  else
  {
    LODWORD(v16) = 0;
  }

  if (v16 != v15)
  {
    v19 = *(a3 + 216);
    do
    {
      v20 = v19 + 80 * v16;
      v21 = re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(v41, (v20 + 40));
      if (v21 != -1)
      {
        v5 = *(*(&v41[0] + 1) + 40 * v21 + 32);
        if (v5 < v8)
        {
          v12 = v43;
          if (v43 <= v5)
          {
            goto LABEL_56;
          }

          v22 = v45 + 88 * v5;
          re::DynamicString::DynamicString(&v47, (v20 + 8));
          LOWORD(v49) = *(v22 + 32);
          BYTE8(v49) = 0;
          LODWORD(v51) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v49 + 8, v22 + 40);
          *(&v51 + 1) = *(v22 + 72);
          v52 = 0xFFFFFFFF00000000;
          re::DynamicArray<re::NamedVertexBuffer>::add(v42, &v47);
          if (v51 != -1)
          {
            (off_1F5D0BCB8[v51])(&v53, &v49 + 8);
          }

          LODWORD(v51) = -1;
          if (v47 && (BYTE8(v47) & 1) != 0)
          {
            (*(*v47 + 40))();
          }
        }
      }

      if (*(a3 + 232) <= (v16 + 1))
      {
        v23 = v16 + 1;
      }

      else
      {
        v23 = *(a3 + 232);
      }

      v19 = *(a3 + 216);
      while (v23 - 1 != v16)
      {
        LODWORD(v16) = v16 + 1;
        if ((*(v19 + 80 * v16) & 0x80000000) != 0)
        {
          goto LABEL_43;
        }
      }

      LODWORD(v16) = v23;
LABEL_43:
      ;
    }

    while (v16 != v15);
  }

  re::StringID::StringID(v40, (a3 + 72));
  v24 = re::MeshPart::MeshPart(a1, v40, *(a3 + 56), v45, v43, *(a3 + 40), *(a3 + 48), *(a3 + 52), (a3 + 96), a5, a4, (a3 + 192), *(a3 + 60), *(a3 + 64));
  if (v40[0])
  {
    if (v40[0])
    {
    }
  }

  v40[0] = 0;
  v40[1] = &str_67;
  re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v41);
  return re::DynamicArray<re::NamedVertexBuffer>::deinit(v42);
}

uint64_t re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::find(uint64_t *a1, void *a2)
{
  if (!a1[7] || a1[2] < 0x10 || !a1[3])
  {
    return -1;
  }

  v4 = re::Hash<re::DynamicString>::operator()(&v15, a2) % (a1[2] >> 4);
  while (1)
  {
    v5 = *a1;
    v6 = re::Hash<re::DynamicString>::operator()(&v16, a2);
    v14 = *(v5 + 16 * v4);
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(vdupq_n_s8(v6 & 0x7F), v14), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = __clz(__rbit64(v7));
    if (v8 <= 0x3F)
    {
      break;
    }

LABEL_10:
    v12.i64[0] = -1;
    v12.i64[1] = -1;
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v14, v12), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (++v4 == a1[2] >> 4)
    {
      v4 = 0;
    }

    v11 = -1;
    if (v4 == re::Hash<re::DynamicString>::operator()(&v17, a2) % (a1[2] >> 4))
    {
      return v11;
    }
  }

  v9 = 16 * v4;
  v10 = a1[1];
  while (1)
  {
    v11 = v8 + v9;
    if (re::DynamicString::operator==(a2, v10 + 40 * (v8 + v9)))
    {
      return v11;
    }

    if (v8 <= 0x3E)
    {
      v8 = __clz(__rbit64((-2 << v8) & v7));
      if (v8 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

unint64_t re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(uint64_t *a1, const re::DynamicString *a2, void *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || a1[2] > (8 * v6))
  {
    re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::resize(a1);
  }

  v7 = re::Hash<re::DynamicString>::operator()(&v19, a2) % (a1[2] >> 4);
  v8 = *a1;
  v9 = re::Hash<re::DynamicString>::operator()(&v20, a2);
  v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v10 >= 0x40)
  {
    do
    {
      if (v7 + 1 == a1[2] >> 4)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      v8 = *a1;
      v9 = re::Hash<re::DynamicString>::operator()(&v20, a2);
      v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v10 > 0x3F);
  }

  v11 = v8 + 16 * v7;
  v12 = *(v11 + v10);
  *(v11 + v10) = v9 & 0x7F;
  v13 = v10 + 16 * v7;
  v14 = 5 * v13;
  re::DynamicString::DynamicString((a1[1] + 40 * v13), a2);
  v15 = (a1[1] + 8 * v14);
  v15[4] = *a3;
  if (v12 == 255)
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v17.i64[1] = v16;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v17);
  result = re::Hash<re::DynamicString>::operator()(&v21, v15);
  a1[5] ^= result;
  return result;
}

double re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::resize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + 1;
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

  v8 = *(a1 + 56);
  memset(v25, 0, sizeof(v25));
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(v25, v8, v3);
  v23[0] = a1;
  v9 = *(a1 + 16);
  if (v9 >= 0x10)
  {
    v10 = 0;
    v11 = *a1;
    v12 = v9 >> 4;
    while (1)
    {
      v13 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v11), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v23[1] = v13 ^ 0xFFFFLL;
      if (v13 != 0xFFFFLL)
      {
        break;
      }

      v10 -= 16;
      ++v11;
      if (!--v12)
      {
        goto LABEL_13;
      }
    }

    v14 = __clz(__rbit64(v13 ^ 0xFFFFLL));
    v15 = v14 - v10;
    v24 = v14 - v10;
    if (v14 + 1 != v10)
    {
      do
      {
        re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::internalAdd(v25, (*(v23[0] + 8) + 40 * v15), (*(v23[0] + 8) + 40 * v15 + 32));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v23);
        v15 = v24;
      }

      while (v24 != -1);
      v9 = *(a1 + 16);
    }
  }

LABEL_13:
  v16 = *(&v25[3] + 1);
  *(&v25[3] + 1) = *(a1 + 56);
  v17 = v25[0];
  v18 = v25[1];
  v25[0] = *a1;
  *&v25[1] = v9;
  v19 = v25[2];
  v20 = *(a1 + 40);
  *(a1 + 48) = *&v25[3];
  *(a1 + 56) = v16;
  *(&v25[2] + 8) = v20;
  v21 = *(a1 + 24);
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  *(&v25[1] + 8) = v21;
  return re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v25);
}

double re::HashBrown<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v10[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v11 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            re::DynamicString::deinit((*(a1 + 8) + 40 * v8));
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
            v8 = v11;
          }

          while (v11 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

BOOL re::HashTable<re::DynamicString,re::MeshCompileOptions,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + 112 * v8 + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 112 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 112 * v11 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 112 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

void re::gatherMaterialConstants(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [MEMORY[0x1E69DED88] USDPreviewSurfaceDefaults];
  v12 = [v11 objectForKeyedSubscript:@"opacityThreshold"];
  [v12 floatValue];
  HIDWORD(v94) = v13;

  v14 = [v11 objectForKeyedSubscript:@"emissiveColor"];
  [v14 float3Value];
  v97 = v15;

  v16 = [v11 objectForKeyedSubscript:@"metallic"];
  [v16 floatValue];
  HIDWORD(v96) = v17;

  v18 = [v11 objectForKeyedSubscript:@"roughness"];
  [v18 floatValue];
  LODWORD(v96) = v19;

  v20 = [v11 objectForKeyedSubscript:@"clearcoat"];
  [v20 floatValue];
  HIDWORD(v95) = v21;

  v22 = [v11 objectForKeyedSubscript:@"clearcoatRoughness"];
  [v22 floatValue];
  LODWORD(v95) = v23;

  v24 = [v11 objectForKeyedSubscript:@"textureFallback"];
  [v24 float4Value];
  v73 = v25;

  v26 = [v11 objectForKeyedSubscript:@"ior"];
  [v26 floatValue];
  LODWORD(v94) = v27;

  re::DynamicString::appendf(&v91, "[%f, %f, %f, %f, srgb]", BaseColorTintAndOpacity.n128_f32[0], BaseColorTintAndOpacity.n128_f32[1], BaseColorTintAndOpacity.n128_f32[2], BaseColorTintAndOpacity.n128_f32[3]);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "baseColorTint", &v91);
  v30 = [v9 path];
  v31 = [v30 stringValue];
  v32 = [v31 hash];
  v90.__x_[0] = v32;
  for (i = 1; i != 624; ++i)
  {
    v32 = i + 1812433253 * (v32 ^ (v32 >> 30));
    v90.__x_[i] = v32;
  }

  v90.__i_ = 0;

  v35 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v90), 0x20uLL) + 0.0);
  v36 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v90), 0x20uLL) + 0.0);
  v37 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v90);
  re::DynamicString::appendf(&v88, "[%f, %f, %f, srgb]", v35, v36, (vcvts_n_f32_u32(v37, 0x20uLL) + 0.0));
  v38 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "partDebugColor", &v88);
  if (re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a4, "textureEmissive"))
  {
    v39 = *re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(a4, "textureEmissive");
    v40 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a5, "textureEmissive");
    TextureScaleFloat3 = re::getTextureScaleFloat3(v39, v40, v73);
    v42 = re::DynamicString::appendf(&v86, "[%f, %f, %f, 1.0]", TextureScaleFloat3.n128_f32[0], TextureScaleFloat3.n128_f32[1], TextureScaleFloat3.n128_f32[2]);
  }

  else
  {
    re::getConstantFloat3(v10, @"inputs:emissiveColor", &v97);
    re::DynamicString::appendf(&v84, "[%f, %f, %f, srgb]", *&v97, *(&v97 + 1), *(&v97 + 2));
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "emissiveColor", &v84);
    re::DynamicString::appendf(&v86, "[1,1,1,1]");
    v42 = v84;
    if (v84 && (v85 & 1) != 0)
    {
      v42 = (*(*v84 + 40))();
    }
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(a1, "emissiveScale", &v84);
  if (v84 && (v85 & 1) != 0)
  {
    (*(*v84 + 40))();
  }

  v44 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "emissiveScaleRGBA", &v86);
  v47 = v46;
  v48 = v84;
  if (v84 && (v85 & 1) != 0)
  {
    v48 = (*(*v84 + 40))();
  }

  if (v45)
  {
    LODWORD(v50) = re::getTextureScaleFloat(v45, v47 & 1, v73).n128_u32[0];
  }

  else
  {
    re::getConstantFloat(v10, @"inputs:metallic", (&v96 + 4), v49);
    v50 = *(&v96 + 1);
  }

  re::DynamicString::appendf(&v84, "%f", v50);
  v51 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "metallicScale", &v84);
  v54 = v53;
  v55 = v82;
  if (v82 && (v83 & 1) != 0)
  {
    v55 = (*(*v82 + 40))();
  }

  if (v52)
  {
    LODWORD(v57) = re::getTextureScaleFloat(v52, v54 & 1, v73).n128_u32[0];
  }

  else
  {
    re::getConstantFloat(v10, @"inputs:roughness", &v96, v56);
    v57 = *&v96;
  }

  re::DynamicString::appendf(&v82, "%f", v57);
  v58 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "roughnessScale", &v82);
  if (re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a4, "textureClearcoat"))
  {
    v60 = *re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(a4, "textureClearcoat");
    v61 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a5, "textureClearcoat");
    LODWORD(v62) = re::getTextureScaleFloat(v60, v61, v73).n128_u32[0];
  }

  else
  {
    re::getConstantFloat(v10, @"inputs:clearcoat", (&v95 + 4), v59);
    v62 = *(&v95 + 1);
  }

  re::DynamicString::appendf(&v80, "%f", v62);
  v63 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "clearcoatScale", &v80);
  if (re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a4, "textureClearcoatRoughness"))
  {
    v65 = *re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(a4, "textureClearcoatRoughness");
    v66 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a5, "textureClearcoatRoughness");
    LODWORD(v67) = re::getTextureScaleFloat(v65, v66, v73).n128_u32[0];
  }

  else
  {
    re::getConstantFloat(v10, @"inputs:clearcoatRoughness", &v95, v64);
    v67 = *&v95;
  }

  re::DynamicString::appendf(&v78, "%f", v67);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "clearcoatRoughnessScale", &v78);
  ConstantFloat = re::getConstantFloat(v10, @"inputs:opacityThreshold", (&v94 + 4), v68);
  re::DynamicString::appendf(&v76, "%f", *(&v94 + 1));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "opacityThreshold", &v76);
  v71 = re::getConstantFloat(v10, @"inputs:ior", &v94, v70);
  if (((((1.0 - *&v94) / (*&v94 + 1.0)) * ((1.0 - *&v94) / (*&v94 + 1.0))) / 0.08) <= 1.0)
  {
    v72 = (((1.0 - *&v94) / (*&v94 + 1.0)) * ((1.0 - *&v94) / (*&v94 + 1.0))) / 0.08;
  }

  else
  {
    v72 = 1.0;
  }

  re::DynamicString::appendf(&v74, "%f", v72);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a1, "specularScale", &v74);
  if (v74 && (v75 & 1) != 0)
  {
    (*(*v74 + 40))();
  }

  if (v76 && (v77 & 1) != 0)
  {
    (*(*v76 + 40))();
  }

  if (v78 && (v79 & 1) != 0)
  {
    (*(*v78 + 40))();
  }

  if (v80 && (v81 & 1) != 0)
  {
    (*(*v80 + 40))();
  }

  if (v82 && (v83 & 1) != 0)
  {
    (*(*v82 + 40))();
  }

  if (v84 && (v85 & 1) != 0)
  {
    (*(*v84 + 40))();
  }

  if (v86 && (v87 & 1) != 0)
  {
    (*(*v86 + 40))();
  }

  if (v88 && (v89 & 1) != 0)
  {
    (*(*v88 + 40))();
  }

  if (v91 && (v92 & 1) != 0)
  {
    (*(*v91 + 40))(v91, v93);
  }
}

__n128 re::anonymous namespace::getBaseColorTintAndOpacity(void *a1, uint64_t a2, uint64_t a3)
{
  __asm { FMOV            V0.4S, #1.0 }

  *&v34[4] = _Q0;
  v10 = MEMORY[0x1E69DED88];
  v11 = a1;
  v12 = [v10 USDPreviewSurfaceDefaults];
  v13 = [v12 objectForKeyedSubscript:@"diffuseColor"];
  [v13 float3Value];
  v35 = v14;

  v15 = [v12 objectForKeyedSubscript:@"opacity"];
  [v15 floatValue];
  *v34 = v16;

  v17 = [v12 objectForKeyedSubscript:@"textureFallback"];
  [v17 float4Value];
  v31 = v18;

  re::getConstantFloat3(v11, @"inputs:diffuseColor", &v35);
  re::getConstantFloat(v11, @"inputs:opacity", v34, v19);
  re::getConstantFloat3(v11, @"inputs:realitykit:tint", &v34[4]);

  v30 = *&v34[4];
  v32 = vmulq_f32(*&v34[4], v35);
  if (!re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureBaseColor") && !re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureOpacity"))
  {
    v26 = v32;
LABEL_11:
    v26.i32[3] = *v34;
    v33 = v26;
    goto LABEL_12;
  }

  if (!re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureBaseColor") && re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureOpacity"))
  {
    goto LABEL_8;
  }

  if (re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureBaseColor") && !re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureOpacity"))
  {
    v27 = *re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(a2, "textureBaseColor");
    v28 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a3, "textureBaseColor");
    v26 = vmulq_f32(v30, re::getTextureScaleFloat3(v27, v28, v31));
    goto LABEL_11;
  }

  v20 = *re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(a2, "textureBaseColor");
  v21 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a3, "textureBaseColor");
  v32 = vmulq_f32(v30, re::getTextureScaleFloat3(v20, v21, v31));
LABEL_8:
  v22 = *re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(a2, "textureOpacity");
  v23 = re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a3, "textureOpacity");
  v24 = re::getTextureScaleFloat(v22, v23, v31).n128_u32[0];
  v25 = v32;
  v25.i32[3] = v24;
  v33 = v25;
LABEL_12:

  return v33;
}

void re::getConstantFloat3(void *a1, uint64_t a2, _OWORD *a3)
{
  v4 = [a1 objectForKey:a2];
  if (v4)
  {
    v8 = v4;
    v5 = [v4 type];
    v6 = *MEMORY[0x1E69DEDC8];

    v4 = v8;
    if (v5 == v6)
    {
      [v8 float3Value];
      v4 = v8;
      *a3 = v7;
    }
  }
}

__n128 re::getTextureScaleFloat3(void *a1, int a2, __n128 a3)
{
  v4 = a1;
  __asm { FMOV            V0.4S, #1.0 }

  PropertyValueWithOutputProperty = re::getPropertyValueWithOutputProperty(v4, @"inputs:scale", _Q0);
  v11 = re::getDataComponentWithPropertyOutput(&v24, PropertyValueWithOutputProperty);
  if (v24)
  {
    if (BYTE8(v24))
    {
      (*(*v24 + 40))(v24, v25);
    }

    v24 = 0u;
    v25 = 0u;
  }

  if (a2)
  {
    [v11 float3Value];
    v20 = v12;
  }

  else
  {
    v21 = re::getPropertyValueWithOutputProperty(v4, @"inputs:fallback", a3);
    v14 = re::getDataComponentWithPropertyOutput(v23, v21);
    if (*&v23[0])
    {
      if (BYTE8(v23[0]))
      {
        (*(**&v23[0] + 40))();
      }

      memset(v23, 0, sizeof(v23));
    }

    [v11 float3Value];
    v22 = v15;
    [v14 float3Value];
    v20 = vmulq_f32(v22, v16);
  }

  return v20;
}

uint64_t re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]<void>(uint64_t a1, char *a2)
{
  v6 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v5, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v6, v3, v5);
  return *(a1 + 16) + 56 * v5[3] + 40;
}

id re::anonymous namespace::resolveTextureConnection(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = re::Hash<re::DynamicString>::operator()(v13, a3);
  re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v13, a1, a3, v8);
  if (v14 == 0x7FFFFFFF)
  {
    if (v7 && re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a1, "textureRMAS"))
    {
      v9 = v7;
      re::HashTable<re::DynamicString,re::SharedPtr<re::AssetProvider>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey<void>(a2, "textureRMAS");
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = re::Hash<re::DynamicString>::operator()(v13, a3);
    re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v13, a1, a3, v10);
    v9 = *(*(a1 + 16) + 56 * v14 + 40);
    v11 = re::Hash<re::DynamicString>::operator()(v13, a3);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a2, v11, v13, a3);
  }

  return v9;
}

uint64_t re::getConstantFloat(re *this, NSDictionary *a2, NSString *a3, float *a4)
{
  v5 = [(re *)this objectForKey:a2, a4];
  v6 = v5;
  if (v5 && ([v5 type], v7 = objc_claimAutoreleasedReturnValue(), v8 = *MEMORY[0x1E69DEDB8], v7, v7 == v8))
  {
    [v6 floatValue];
    *a3 = v10;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

__n128 re::getTextureScaleFloat(void *a1, int a2, __n128 a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a1;
  __asm { FMOV            V0.4S, #1.0 }

  PropertyValueWithOutputProperty = re::getPropertyValueWithOutputProperty(v4, @"inputs:scale", _Q0);
  v10 = [v4 name];
  v11 = [v10 stringValue];
  v12 = [v11 componentsSeparatedByString:@":"];

  v13 = [v12 lastObject];
  v14 = [v13 UTF8String];

  if (v36)
  {
    v16 = v39;
  }

  else
  {
    v16 = &v37;
  }

  v17 = *v16;
  if (v17 > 102)
  {
    if (v17 != 103 && v17 != 114)
    {
      goto LABEL_14;
    }
  }

  else if (v17 != 97 && v17 != 98)
  {
    goto LABEL_14;
  }

  if (v36)
  {
    v18 = v39 + 1;
  }

  else
  {
    v18 = v38;
  }

  if (*v18)
  {
LABEL_14:
    v19 = *re::pipelineLogObjects(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      if (v36)
      {
        v20 = v39;
      }

      else
      {
        v20 = &v37;
      }

      *buf = 136315138;
      v41 = v20;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Invalid USD texture shader node output %s for single texture component.", buf, 0xCu);
    }

    goto LABEL_31;
  }

  re::DynamicString::DynamicString(&v33, &v35);
  v21 = re::getDataComponentWithPropertyOutput(&v33, PropertyValueWithOutputProperty);
  if (v33)
  {
    if (BYTE8(v33))
    {
      (*(*v33 + 40))(v33, v34);
    }

    v33 = 0u;
    v34 = 0u;
  }

  if (a2)
  {
    [v21 floatValue];
    PropertyValueWithOutputProperty = v22;
  }

  else
  {
    v31 = re::getPropertyValueWithOutputProperty(v4, @"inputs:fallback", a3);
    re::DynamicString::DynamicString(v32, &v35);
    v23 = re::getDataComponentWithPropertyOutput(v32, v31);
    if (*&v32[0])
    {
      if (BYTE8(v32[0]))
      {
        (*(**&v32[0] + 40))();
      }

      memset(v32, 0, sizeof(v32));
    }

    [v21 floatValue];
    v25 = v24;
    [v23 floatValue];
    v27.n128_f32[0] = v25 * v26;
    PropertyValueWithOutputProperty = v27;
  }

LABEL_31:
  if (v35 && (v36 & 1) != 0)
  {
    (*(*v35 + 40))();
  }

  return PropertyValueWithOutputProperty;
}

void re::gatherMaterialTextureProperties(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DED88] textureMaterialPropertiesWithMaterial:a1];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  v72 = [v3 objectForKey:@"inputs:diffuseColor"];
  v58 = v72;
  if (v72)
  {
    re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureBaseColor", &v72);
  }

  v71 = [v3 objectForKey:@"inputs:normal"];
  v59 = v71;
  if (v71)
  {
    re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureNormal", &v71);
  }

  v4 = [v3 objectForKey:@"inputs:metallic"];
  v70 = v4;
  v5 = [v3 objectForKey:@"inputs:roughness"];
  v69 = v5;
  v6 = [v3 objectForKey:@"inputs:specularColor"];
  v68 = v6;
  v63 = [v3 objectForKey:@"inputs:occlusion"];
  v67 = v63;
  if (v4)
  {
    v7 = [v4 parentNode];
    v8 = [v7 property:@"inputs:file"];
    v9 = [v8 stringValue];

    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    v12 = 0;
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v9 = 0;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = [v5 parentNode];
  v11 = [v10 property:@"inputs:file"];
  v12 = [v11 stringValue];

  if (v6)
  {
LABEL_8:
    v13 = [v6 parentNode];
    v14 = [v13 property:@"inputs:file"];
    v15 = [v14 stringValue];

    goto LABEL_12;
  }

LABEL_11:
  v15 = 0;
LABEL_12:
  v62 = v6;
  if (v63)
  {
    v16 = [v63 parentNode];
    v17 = [v16 property:@"inputs:file"];
    v18 = [v17 stringValue];
  }

  else
  {
    v18 = 0;
  }

  v19 = v9;
  v20 = v19;
  if (!v19)
  {
    v21 = v12;
    if (!v21)
    {
      v21 = v15;
      if (!v21)
      {
        v21 = v18;
      }
    }

    v20 = v21;
  }

  if (v18 && ([v18 isEqualToString:v20] & 1) == 0)
  {
    re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureAmbientOcclusion", &v67);
    v67 = 0;

    v63 = 0;
    v18 = 0;
  }

  v22 = [MEMORY[0x1E695DFA8] set];
  v60 = v5;
  v61 = v4;
  if (v19 && [v19 isEqualToString:v20])
  {
    v23 = [v4 name];
    v24 = [v23 stringValue];
    [v22 addObject:v24];

    v5 = v60;
    v4 = v61;
  }

  if (v12 && [v12 isEqualToString:v20])
  {
    v25 = [v5 name];
    v26 = [v25 stringValue];
    [v22 addObject:v26];

    v5 = v60;
    v4 = v61;
  }

  if (v15 && [v15 isEqualToString:v20])
  {
    v27 = [v62 name];
    v28 = [v27 stringValue];
    [v22 addObject:v28];

    v5 = v60;
    v4 = v61;
  }

  if (v18 && [v18 isEqualToString:v20])
  {
    v29 = [v63 name];
    v30 = [v29 stringValue];
    [v22 addObject:v30];

    v5 = v60;
    v4 = v61;
  }

  if ([v22 count] < 2 || v19 && !objc_msgSend(v19, "isEqualToString:", v20) || v12 && !objc_msgSend(v12, "isEqualToString:", v20))
  {
    goto LABEL_52;
  }

  if (v15)
  {
    v31 = [v15 isEqualToString:v20];
    if (!v18 || (v31 & 1) == 0)
    {
      if (!v31)
      {
        goto LABEL_52;
      }

      goto LABEL_47;
    }
  }

  else if (!v18)
  {
    goto LABEL_47;
  }

  if (([v18 isEqualToString:v20] & 1) == 0)
  {
LABEL_52:
    if (v4)
    {
      re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureMetallic", &v70);
    }

    if (v5)
    {
      re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureRoughness", &v69);
    }

    if (v62)
    {
      re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureSpecular", &v68);
    }

    if (v63)
    {
      re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureAmbientOcclusion", &v67);
    }

    goto LABEL_60;
  }

LABEL_47:
  v57 = v15;
  v32 = v4;
  v33 = v32;
  *buf = v32;
  if (!v4)
  {
    v32 = v5;
    *buf = v32;
    if (!v5)
    {
      v32 = v62;
      *buf = v32;
      if (!v62)
      {
        v32 = v63;
        *buf = v32;
      }
    }
  }

  v56 = v32;
  re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureRMAS", buf);
  v34 = v5;
  v35 = v33;
  v55 = v63;
  v36 = v62;
  v37 = *(a2 + 48);
  *(a2 + 48) = v34;
  v4 = v61;

  v38 = *(a2 + 56);
  *(a2 + 56) = v35;
  v5 = v60;

  v39 = *(a2 + 64);
  *(a2 + 64) = v55;

  v40 = *(a2 + 72);
  *(a2 + 72) = v36;

  v15 = v57;
LABEL_60:

  v41 = [v3 objectForKey:@"inputs:emissiveColor"];
  v66 = v41;
  if (v41)
  {
    re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureEmissive", &v66);
  }

  v42 = v58;
  v43 = [v3 objectForKey:@"inputs:opacity"];
  v65 = v43;
  if (v43)
  {
    v44 = re::gatherMaterialTextureProperties(USKNode *)::$_0::operator()(v42, v43);
    *(a2 + 80) = v44;
    if ((v44 & 1) == 0)
    {
      re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureOpacity", &v65);
    }
  }

  v45 = [v3 objectForKey:{@"inputs:realitykit:tintMask", v55}];
  if (v45)
  {
    v46 = re::gatherMaterialTextureProperties(USKNode *)::$_0::operator()(v42, v45);
    if (v46)
    {
      *(a2 + 81) = 1;
    }

    else
    {
      v47 = *re::pipelineLogObjects(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v51 = v47;
        v52 = [v45 objectPath];
        v53 = [v52 stringValue];
        v54 = [v53 UTF8String];
        *buf = 136315138;
        *&buf[4] = v54;
        _os_log_error_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_ERROR, "Unsupported connection to the tintMask at %s: only connections to the alpha channel of the diffuseColor texture are supported.", buf, 0xCu);

        v4 = v61;
        v5 = v60;
      }
    }
  }

  v48 = [v3 objectForKey:@"inputs:clearcoatRoughness"];
  *buf = v48;
  if (v48)
  {
    re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureClearcoatRoughness", buf);
  }

  v49 = [v3 objectForKey:@"inputs:clearcoat"];
  v64 = v49;
  if (v49)
  {
    v50 = v49;
    re::HashTable<re::DynamicString,USKProperty * {__strong},re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a2, "textureClearcoat", &v64);
  }
}