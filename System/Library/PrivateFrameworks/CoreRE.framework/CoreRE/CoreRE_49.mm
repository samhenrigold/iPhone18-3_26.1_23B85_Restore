uint64_t *re::MeshDeformationAsset::assetType(re::MeshDeformationAsset *this)
{
  {
    re::MeshDeformationAsset::assetType(void)::type = "MeshDeformation";
    qword_1EE1C69E0 = 0;
    re::AssetType::generateCompiledExtension(&re::MeshDeformationAsset::assetType(void)::type);
  }

  return &re::MeshDeformationAsset::assetType(void)::type;
}

void *re::MeshDeformationAsset::init(re::MeshDeformationAsset *this, re::Allocator *a2)
{
  v2 = a2;
  if (!a2)
  {
  }

  *this = v2;
  re::DynamicArray<re::DeformationStackDefinition>::setCapacity(this, 0);
  *(this + 5) = v2;
  v4 = this + 40;
  ++*(v4 - 4);
  result = re::DynamicArray<re::MeshDeformationIndex>::setCapacity(v4, 0);
  ++*(v4 + 6);
  return result;
}

void re::MeshDeformationAsset::init(_anonymous_namespace_ *result, uint64_t a2, void *a3, uint64_t *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a2 + 632))
  {
    v4 = a4;
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = &re::MeshDeformationAsset::init(re::MeshAsset const&,re::DefaultDeformationOptions const*,re::Allocator *)::kDefaultDeformationOptions;
    }

    if (!a4)
    {
    }

    *result = v4;
    re::DynamicArray<re::DeformationStackDefinition>::setCapacity(result, 0);
    *(result + 5) = v4;
    ++*(result + 6);
    re::DynamicArray<re::MeshDeformationIndex>::setCapacity(result + 5, 0);
    ++*(result + 16);
    v8 = 32;
    if (*(a2 + 1264))
    {
      v8 = 608;
    }

    v9 = *(a2 + v8);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = *(a2 + 608);
        if (v11 <= i)
        {
          v19 = 0;
          memset(v28, 0, sizeof(v28));
          v14 = MEMORY[0x1E69E9C10];
          v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v20 = 136315906;
          v21 = "operator[]";
          v22 = 1024;
          if (v15)
          {
            v16 = 3;
          }

          else
          {
            v16 = 2;
          }

          v23 = 797;
          v24 = 2048;
          v25 = i;
          v26 = 2048;
          v27 = v11;
          _os_log_send_and_compose_impl(v16, &v19, v28, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v17, *&v18.var0);
          _os_crash_msg();
          __break(1u);
        }

        v12 = re::DataArray<re::MeshModel>::tryGet(*(a2 + 632) + 8, *(*(a2 + 624) + 8 * i));
        re::StringID::StringID(&v18, v12);
        re::MeshDeformationAsset::addDefaultModelStackDefinitions(result, v12, 2, &v18, v7);
        if (*&v18.var0)
        {
          if (*&v18.var0)
          {
          }
        }

        *&v18.var0 = 0;
        v18.var1 = &str_67;
      }
    }
  }
}

void re::MeshDeformationAsset::addDefaultModelStackDefinitions(_anonymous_namespace_ *a1, void *a2, uint64_t a3, StringID *a4, uint64_t a5)
{
  v6 = a3;
  re::StringID::StringID(&v10, a4);
  v9 = re::MeshDeformationAsset::addDefaultModelStackDefinitionsImpl<re::MeshModel>(a1, a2, v6, &v10, a5);
  if (*&v10.var0)
  {
    if (*&v10.var0)
    {
    }
  }
}

void re::MeshDeformationAsset::init(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = a4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &re::MeshDeformationAsset::init(re::MeshAssetData const&,re::DefaultDeformationOptions const*,re::Allocator *)::kDefaultDeformationOptions;
  }

  if (!a4)
  {
  }

  *a1 = v4;
  re::DynamicArray<re::DeformationStackDefinition>::setCapacity(a1, 0);
  *(a1 + 40) = v4;
  ++*(a1 + 24);
  re::DynamicArray<re::MeshDeformationIndex>::setCapacity((a1 + 40), 0);
  ++*(a1 + 64);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(a2 + 32);
    v10 = v8 << 9;
    do
    {
      re::StringID::StringID(&v12, v9);
      v11 = re::MeshDeformationAsset::addDefaultModelStackDefinitionsImpl<re::MeshAssetModel>(a1, v9, 2, &v12, v7);
      if (*&v12.var0)
      {
        if (*&v12.var0)
        {
        }
      }

      *&v12.var0 = 0;
      v12.var1 = &str_67;
      v9 += 32;
      v10 -= 512;
    }

    while (v10);
  }
}

_anonymous_namespace_ *re::MeshDeformationAsset::addDefaultModelStackDefinitionsImpl<re::MeshAssetModel>(_anonymous_namespace_ *result, void *a2, int a3, const StringID *a4, uint64_t a5)
{
  HIDWORD(v78) = a3;
  v98 = *MEMORY[0x1E69E9840];
  v6 = a2[26];
  if (v6)
  {
    v8 = a2;
    v80 = result;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v11 = 0;
    v83 = v6;
    v77 = a5 + 19;
    v81 = v8;
    do
    {
      v12 = v8[26];
      if (v12 <= v11)
      {
        *v90 = 0;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        v59 = MEMORY[0x1E69E9C10];
        v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v88 = 136315906;
        *&v88[4] = "operator[]";
        *&v88[12] = 1024;
        if (v60)
        {
          v61 = 3;
        }

        else
        {
          v61 = 2;
        }

        *&v88[14] = 797;
        *&v88[18] = 2048;
        *&v88[20] = v11;
        *&v88[28] = 2048;
        *&v88[30] = v12;
        _os_log_send_and_compose_impl(v61, v90, &v93, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v77, v78);
        _os_crash_msg();
        __break(1u);
LABEL_170:
        v87 = 0;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        v62 = MEMORY[0x1E69E9C10];
        v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v90 = 136315906;
        *&v90[4] = "operator[]";
        *&v90[12] = 1024;
        if (v63)
        {
          v64 = 3;
        }

        else
        {
          v64 = 2;
        }

        *&v90[14] = 468;
        *&v90[18] = 2048;
        *&v90[20] = v11;
        v91 = 2048;
        v92 = v5;
        _os_log_send_and_compose_impl(v64, &v87, &v93, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v77, v78);
        _os_crash_msg();
        __break(1u);
LABEL_174:
        *v90 = 0;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        v65 = MEMORY[0x1E69E9C10];
        v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v88 = 136315906;
        *&v88[4] = "operator[]";
        *&v88[12] = 1024;
        if (v66)
        {
          v67 = 3;
        }

        else
        {
          v67 = 2;
        }

        *&v88[14] = 468;
        *&v88[18] = 2048;
        *&v88[20] = v5;
        *&v88[28] = 2048;
        *&v88[30] = v5;
        _os_log_send_and_compose_impl(v67, v90, &v93, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v77, v78);
        _os_crash_msg();
        __break(1u);
LABEL_178:
        *v90 = 0;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        v68 = MEMORY[0x1E69E9C10];
        v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v88 = 136315906;
        *&v88[4] = "operator[]";
        *&v88[12] = 1024;
        if (v69)
        {
          v70 = 3;
        }

        else
        {
          v70 = 2;
        }

        *&v88[14] = 468;
        *&v88[18] = 2048;
        *&v88[20] = v5;
        *&v88[28] = 2048;
        *&v88[30] = v5;
        _os_log_send_and_compose_impl(v70, v90, &v93, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v77, v78);
        _os_crash_msg();
        __break(1u);
LABEL_182:
        v87 = 0;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        v71 = MEMORY[0x1E69E9C10];
        v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v90 = 136315906;
        *&v90[4] = "operator[]";
        *&v90[12] = 1024;
        if (v72)
        {
          v73 = 3;
        }

        else
        {
          v73 = 2;
        }

        *&v90[14] = 797;
        *&v90[18] = 2048;
        *&v90[20] = v12;
        v91 = 2048;
        v92 = v9;
        _os_log_send_and_compose_impl(v73, &v87, &v93, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v77, v78);
        _os_crash_msg();
        __break(1u);
LABEL_186:
        v87 = 0;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        v74 = MEMORY[0x1E69E9C10];
        v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v90 = 136315906;
        *&v90[4] = "operator[]";
        *&v90[12] = 1024;
        if (v75)
        {
          v76 = 3;
        }

        else
        {
          v76 = 2;
        }

        *&v90[14] = 797;
        *&v90[18] = 2048;
        *&v90[20] = v12;
        v91 = 2048;
        v92 = v9;
        _os_log_send_and_compose_impl(v76, &v87, &v93, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v77, v78);
        _os_crash_msg();
        __break(1u);
      }

      v13 = v8[28];
      *&v88[32] = 0;
      memset(v88, 0, 28);
      if (*a5 == 1 && (v14 = v8[16]) != 0)
      {
        v15 = (v8[18] + 48);
        v16 = 56 * v14;
        while (1)
        {
          v17 = *v15;
          v15 += 28;
          if (v11 == v17)
          {
            break;
          }

          v16 -= 56;
          if (!v16)
          {
            goto LABEL_9;
          }
        }

        memset(v90, 0, 24);
        v31 = *&v90[16];
        v32 = *(a5 + 8);
        *(*&v90[16] + 4) = *(a5 + 12);
        *v31 = v32;
        *&v93 = 0x1954B86F1FEF5A4;
        *(&v93 + 1) = "Blend Shape";
        v94 = *v90;
        memset(v90, 0, 24);
        *&v95 = *&v90[16];
        re::DynamicArray<re::DeformationDefinition>::add(v88, &v93);
        v33 = v94;
        if (v94)
        {
          if (*(&v94 + 1))
          {
            v33 = (*(*v94 + 40))(v94, v95);
            *(&v94 + 1) = 0;
            *&v95 = 0;
          }

          *&v94 = 0;
        }

        if (v93)
        {
          if (v93)
          {
          }
        }

        v10 = *v90;
        if (*v90 && *&v90[8])
        {
          v10 = (*(**v90 + 40))();
        }

        v18 = 1;
      }

      else
      {
LABEL_9:
        v18 = 0;
      }

      if (*(a5 + 6) == 1)
      {
        memset(v90, 0, 24);
        **&v90[16] = *(a5 + 18);
        *&v93 = 0x70EBDC9CD6B5D4E4;
        *(&v93 + 1) = "OffsetsDeformer";
        v94 = *v90;
        v19 = *&v90[16];
        memset(v90, 0, 24);
        *&v95 = v19;
        re::DynamicArray<re::DeformationDefinition>::add(v88, &v93);
        v20 = v94;
        if (v94)
        {
          if (*(&v94 + 1))
          {
            v20 = (*(*v94 + 40))(v94, v95);
            *(&v94 + 1) = 0;
            *&v95 = 0;
          }

          *&v94 = 0;
        }

        if (v93)
        {
          if (v93)
          {
          }
        }

        v10 = *v90;
        if (*v90 && *&v90[8])
        {
          v10 = (*(**v90 + 40))();
        }

        v18 = 1;
      }

      v21 = 0;
      v22 = v13 + (v11 << 8);
      if (*(a5 + 1) == 1 && v8[21] > v11)
      {
        if (*(v8[23] + 144 * v11) == -1)
        {
          v21 = 0;
        }

        else
        {
          v23 = *(a5 + 13);
          v24 = *(v22 + 16);
          if (v24)
          {
            v25 = 0;
            v26 = 0;
            v82 = *(a5 + 14);
            v27 = 80 * v24;
            v28 = (*(v22 + 32) + 16);
            do
            {
              if (*(v28 - 1))
              {
                v29 = *v28;
              }

              else
              {
                v29 = v28 - 7;
              }

              v10 = strcmp(v29, "vertexAdjacencies");
              if (v10)
              {
                v10 = strcmp(v29, "accumulatedVertexValence");
                v25 |= v10 == 0;
              }

              else
              {
                v26 = 1;
              }

              v28 += 10;
              v27 -= 80;
            }

            while (v27);
            v30 = v26 & v25;
            if (v26 & v25)
            {
              v12 = v82;
            }

            else
            {
              v12 = 1;
            }

            v8 = v81;
            v6 = v83;
          }

          else
          {
            v30 = 0;
            v12 = 1;
          }

          memset(v90, 0, 24);
          v34 = *&v90[16];
          **&v90[16] = v23;
          *(v34 + 1) = v12;
          *&v93 = 0x4550755B7A2;
          *(&v93 + 1) = "Skinning";
          v94 = *v90;
          v35 = *&v90[16];
          memset(v90, 0, 24);
          *&v95 = v35;
          re::DynamicArray<re::DeformationDefinition>::add(v88, &v93);
          v36 = v94;
          if (v94)
          {
            if (*(&v94 + 1))
            {
              v36 = (*(*v94 + 40))();
              *(&v94 + 1) = 0;
              *&v95 = 0;
            }

            *&v94 = 0;
          }

          if (v93)
          {
            if (v93)
            {
            }
          }

          v10 = *v90;
          if (*v90 && *&v90[8])
          {
            v10 = (*(**v90 + 40))();
          }

          v18 |= v30;
          v21 = 1;
        }
      }

      if (*(a5 + 5) == 1)
      {
        *&v93 = a5 + 17;
        *(&v93 + 1) = 1;
        memset(v90, 0, 24);
        re::FixedArray<unsigned char>::copy(v90, &v93);
        *&v93 = 0x5ADE39698BF7F040;
        *(&v93 + 1) = "SmoothDeformer";
        v94 = *v90;
        v37 = *&v90[16];
        memset(v90, 0, 24);
        *&v95 = v37;
        re::DynamicArray<re::DeformationDefinition>::add(v88, &v93);
        v38 = v94;
        if (v94)
        {
          if (*(&v94 + 1))
          {
            v38 = (*(*v94 + 40))();
            *(&v94 + 1) = 0;
            *&v95 = 0;
          }

          *&v94 = 0;
        }

        if (v93)
        {
          if (v93)
          {
          }
        }

        v10 = *v90;
        if (*v90 && *&v90[8])
        {
          v10 = (*(**v90 + 40))();
        }

        v21 = 1;
        v18 = 1;
      }

      if (v18 & 1) != 0 && (*(a5 + 2))
      {
        memset(v90, 0, 24);
        **&v90[16] = *(a5 + 15);
        *&v93 = 0xABCEC87F22A13454;
        *(&v93 + 1) = "Renormalization";
        v94 = *v90;
        v39 = *&v90[16];
        memset(v90, 0, 24);
        *&v95 = v39;
        re::DynamicArray<re::DeformationDefinition>::add(v88, &v93);
        v40 = v94;
        if (v94)
        {
          if (*(&v94 + 1))
          {
            v40 = (*(*v94 + 40))();
            *(&v94 + 1) = 0;
            *&v95 = 0;
          }

          *&v94 = 0;
        }

        if (v93)
        {
          if (v93)
          {
          }
        }

        v10 = *v90;
        if (*v90 && *&v90[8])
        {
          v10 = (*(**v90 + 40))();
        }
      }

      if (*(a5 + 3) == 1 && *(v22 + 64))
      {
        *&v93 = 0xA6B838C1BF1BB512;
        *(&v93 + 1) = "OpenSubdivViewIndependentComputeStep";
        *&v95 = 0;
        v94 = 0uLL;
        re::DynamicArray<re::DeformationDefinition>::add(v88, &v93);
        v41 = v94;
        if (v94)
        {
          if (*(&v94 + 1))
          {
            v41 = (*(*v94 + 40))();
            *(&v94 + 1) = 0;
            *&v95 = 0;
          }

          *&v94 = 0;
        }

        if (v93)
        {
          if (v93)
          {
          }
        }

        *&v93 = 0xC6F7B7A81D0D03C8;
        *(&v93 + 1) = "OpenSubdivViewDependentComputeStep";
        *&v95 = 0;
        v94 = 0uLL;
        re::DynamicArray<re::DeformationDefinition>::add(v88, &v93);
        v10 = v94;
        if (v94)
        {
          if (*(&v94 + 1))
          {
            v10 = (*(*v94 + 40))();
            *(&v94 + 1) = 0;
            *&v95 = 0;
          }

          *&v94 = 0;
        }

        if (v93)
        {
          if (v93)
          {
          }
        }
      }

      if ((v21 & *(a5 + 4)) == 1)
      {
        memset(v90, 0, 24);
        **&v90[16] = *(a5 + 16);
        *&v93 = 0x32458CCC0A585AB0;
        *(&v93 + 1) = "Bounding Box Calculation";
        v94 = *v90;
        v42 = *&v90[16];
        memset(v90, 0, 24);
        *&v95 = v42;
        re::DynamicArray<re::DeformationDefinition>::add(v88, &v93);
        v43 = v94;
        if (v94)
        {
          if (*(&v94 + 1))
          {
            v43 = (*(*v94 + 40))();
            *(&v94 + 1) = 0;
            *&v95 = 0;
          }

          *&v94 = 0;
        }

        if (v93)
        {
          if (v93)
          {
          }
        }

        if (*v90 && *&v90[8])
        {
          (*(**v90 + 40))();
        }
      }

      if (*(a5 + 7) == 1)
      {
        v44 = *(v22 + 16);
        if (v44)
        {
          v45 = (*(v22 + 32) + 16);
          v12 = 80 * v44;
          while (1)
          {
            v46 = (*(v45 - 1) & 1) != 0 ? *v45 : v45 - 7;
            v47 = strcmp(v46, "tension");
            if (!v47)
            {
              break;
            }

            v45 += 10;
            v12 -= 80;
            if (!v12)
            {
              goto LABEL_132;
            }
          }

          *&v93 = a5 + 19;
          *(&v93 + 1) = 1;
          memset(v90, 0, 24);
          re::FixedArray<unsigned char>::copy(v90, &v93);
          *&v93 = 0x241C51C064;
          *(&v93 + 1) = "Tension";
          v94 = *v90;
          v48 = *&v90[16];
          memset(v90, 0, 24);
          *&v95 = v48;
          re::DynamicArray<re::DeformationDefinition>::add(v88, &v93);
          v49 = v94;
          if (v94)
          {
            if (*(&v94 + 1))
            {
              v49 = (*(*v94 + 40))();
              *(&v94 + 1) = 0;
              *&v95 = 0;
            }

            *&v94 = 0;
          }

          if (v93)
          {
            if (v93)
            {
            }
          }

          if (*v90 && *&v90[8])
          {
            (*(**v90 + 40))();
          }
        }
      }

LABEL_132:
      v5 = v85;
      if (v85 <= v11)
      {
        goto LABEL_170;
      }

      v50 = v86;
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v86 + 40 * v11, v88);
      v10 = re::DynamicArray<re::DeformationDefinition>::deinit(v88);
      ++v11;
    }

    while (v11 != v6);
    v9 = v80;
    if (v6 != 1)
    {
      v51 = (v50 + 72);
      v12 = 1;
      while (1)
      {
        if (v5 == v12)
        {
          goto LABEL_174;
        }

        if (!re::DynamicArray<re::DeformationDefinition>::operator==(v50, *(v51 - 2), *v51))
        {
          break;
        }

        ++v12;
        v51 += 5;
        if (v6 == v12)
        {
          goto LABEL_139;
        }
      }

      v12 = 0;
      while (1)
      {
        if (v12 == v5)
        {
          goto LABEL_178;
        }

        v53 = *(v50 + 40 * v12 + 16);
        if (v53)
        {
          break;
        }

LABEL_163:
        if (++v12 == v83)
        {
          return re::FixedArray<re::DeformationStackDefinition>::deinit(&v84);
        }
      }

      v54 = v9[2];
      if (v54)
      {
        v55 = 0;
        v56 = *(v80 + 4);
        v57 = *(v50 + 40 * v12 + 32);
        while (!re::DynamicArray<re::DeformationDefinition>::operator==(v56, v53, v57))
        {
          ++v55;
          v56 += 40;
          if (v54 == v55)
          {
            goto LABEL_153;
          }
        }

        v88[0] = BYTE4(v78);
        re::StringID::StringID(&v88[8], a4);
        v9 = v81[26];
        if (v9 <= v12)
        {
          goto LABEL_186;
        }

        re::StringID::StringID(&v88[24], (v81[28] + (v12 << 8) + 72));
        v89 = v55;
        v9 = v80;
        v58 = re::DynamicArray<re::MeshDeformationIndex>::add((v80 + 40), v88);
        if ((v88[24] & 1) == 0)
        {
          goto LABEL_160;
        }
      }

      else
      {
LABEL_153:
        re::DynamicArray<re::DeformationStackDefinition>::add(v80, v50 + 40 * v12);
        v88[0] = BYTE4(v78);
        re::StringID::StringID(&v88[8], a4);
        v9 = v81[26];
        if (v9 <= v12)
        {
          goto LABEL_182;
        }

        re::StringID::StringID(&v88[24], (v81[28] + (v12 << 8) + 72));
        v89 = *(v80 + 2) - 1;
        v58 = re::DynamicArray<re::MeshDeformationIndex>::add((v80 + 40), v88);
        v9 = v80;
        if ((v88[24] & 1) == 0)
        {
          goto LABEL_160;
        }
      }

      if (v88[24])
      {
      }

LABEL_160:
      *&v88[24] = 0;
      *&v88[32] = &str_67;
      if (v88[8])
      {
        if (v88[8])
        {
        }
      }

      goto LABEL_163;
    }

LABEL_139:
    if (*(v50 + 16))
    {
      re::DynamicArray<re::DeformationStackDefinition>::add(v80, v50);
      LOBYTE(v93) = BYTE4(v78);
      re::StringID::StringID((&v93 + 8), a4);
      *(&v94 + 1) = 0;
      *&v95 = &str_67;
      *(&v95 + 1) = *(v80 + 2) - 1;
      v52 = re::DynamicArray<re::MeshDeformationIndex>::add((v80 + 40), &v93);
      if (BYTE8(v94))
      {
        if (BYTE8(v94))
        {
        }
      }

      *(&v94 + 1) = 0;
      *&v95 = &str_67;
      if (BYTE8(v93))
      {
        if (BYTE8(v93))
        {
        }
      }
    }

    return re::FixedArray<re::DeformationStackDefinition>::deinit(&v84);
  }

  return result;
}

uint64_t re::DynamicArray<re::DeformationStackDefinition>::deinit(uint64_t a1)
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
        do
        {
          re::DynamicArray<re::DeformationDefinition>::deinit(v3);
          v3 += 40;
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

uint64_t re::DynamicArray<re::MeshDeformationIndex>::deinit(uint64_t a1)
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
        v5 = 48 * v4;
        v6 = (v3 + 24);
        do
        {
          re::StringID::destroyString(v6);
          re::StringID::destroyString((v6 - 16));
          v6 = (v6 + 48);
          v5 -= 48;
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

void re::MeshDeformationAsset::addDefaultModelStackDefinitionsForAllInstances(_anonymous_namespace_ *this, const re::MeshAsset *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a2 + 79))
  {
    v3 = *(a2 + 71);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        v6 = *(a2 + 71);
        if (v6 <= i)
        {
          v15 = 0;
          memset(v24, 0, sizeof(v24));
          v10 = MEMORY[0x1E69E9C10];
          v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v16 = 136315906;
          v17 = "operator[]";
          v18 = 1024;
          if (v11)
          {
            v12 = 3;
          }

          else
          {
            v12 = 2;
          }

          v19 = 797;
          v20 = 2048;
          v21 = i;
          v22 = 2048;
          v23 = v6;
          _os_log_send_and_compose_impl(v12, &v15, v24, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v13, *&v14.var0);
          _os_crash_msg();
          __break(1u);
        }

        v7 = re::DataArray<re::MeshInstance>::tryGet(*(a2 + 79) + 72, *(*(a2 + 73) + 8 * i));
        v8 = re::DataArray<re::MeshModel>::tryGet(*(a2 + 79) + 8, *(v7 + 16));
        re::StringID::StringID(&v14, v7);
        re::MeshDeformationAsset::addDefaultModelStackDefinitions(this, v8, 1, &v14, &re::MeshDeformationAsset::addDefaultModelStackDefinitionsForAllInstances(re::MeshAsset const&)::kDefaultDeformationOptions);
        if (*&v14.var0)
        {
          if (*&v14.var0)
          {
          }
        }

        *&v14.var0 = 0;
        v14.var1 = &str_67;
      }
    }
  }
}

uint64_t re::MeshDeformationAsset::addDefaultModelStackDefinitionForModel(re::MeshDeformationAsset *this, const re::MeshAsset *a2, unint64_t a3)
{
  if (*(a2 + 76) <= a3)
  {
    return 0;
  }

  v5 = *(a2 + 79);
  if (!v5)
  {
    return 0;
  }

  v11 = v3;
  v12 = v4;
  v7 = re::DataArray<re::MeshModel>::tryGet(v5 + 8, *(*(a2 + 78) + 8 * a3));
  re::StringID::StringID(&v10, v7);
  re::MeshDeformationAsset::addDefaultModelStackDefinitions(this, v7, 2, &v10, &re::MeshDeformationAsset::addDefaultModelStackDefinitionForModel(re::MeshAsset const&,unsigned long)::kDefaultDeformationOptions);
  if (*&v10.var0)
  {
    if (*&v10.var0)
    {
    }
  }

  return 1;
}

uint64_t re::MeshDeformationAsset::addDefaultModelStackDefinitionForInstance(re::MeshDeformationAsset *this, const re::MeshAsset *a2, unint64_t a3)
{
  if (*(a2 + 71) <= a3)
  {
    return 0;
  }

  v4 = *(a2 + 79);
  if (!v4)
  {
    return 0;
  }

  v6 = re::DataArray<re::MeshInstance>::tryGet(v4 + 72, *(*(a2 + 73) + 8 * a3));
  v7 = re::DataArray<re::MeshModel>::tryGet(*(a2 + 79) + 8, *(v6 + 16));
  re::StringID::StringID(&v11, v6);
  v8 = 1;
  re::MeshDeformationAsset::addDefaultModelStackDefinitions(this, v7, 1, &v11, &re::MeshDeformationAsset::addDefaultModelStackDefinitionForInstance(re::MeshAsset const&,unsigned long)::kDefaultDeformationOptions);
  if (*&v11.var0)
  {
    if (*&v11.var0)
    {
    }
  }

  return v8;
}

_anonymous_namespace_ *re::MeshDeformationAsset::addDefaultModelStackDefinitionsImpl<re::MeshModel>(_anonymous_namespace_ *result, void *a2, char a3, const StringID *a4, uint64_t a5)
{
  v100 = *MEMORY[0x1E69E9840];
  v6 = a2[7];
  if (v6)
  {
    v8 = a2;
    v9 = result;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v12 = 0;
    v13 = &v95;
    v84 = v9;
    v79 = a5 + 19;
    v83 = v8;
    for (i = v6; i != v12; v48 = i)
    {
      v14 = v8[7];
      if (v14 <= v12)
      {
        *v92 = 0;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v95 = 0u;
        v60 = MEMORY[0x1E69E9C10];
        v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v90 = 136315906;
        *&v90[4] = "operator[]";
        *&v90[12] = 1024;
        if (v61)
        {
          v62 = 3;
        }

        else
        {
          v62 = 2;
        }

        *&v90[14] = 476;
        *&v90[18] = 2048;
        *&v90[20] = v12;
        *&v90[28] = 2048;
        *&v90[30] = v14;
        _os_log_send_and_compose_impl(v62, v92, &v95, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v78, v79);
        _os_crash_msg();
        __break(1u);
LABEL_165:
        v89 = 0;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v95 = 0u;
        v63 = MEMORY[0x1E69E9C10];
        v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v92 = 136315906;
        *&v92[4] = "operator[]";
        *&v92[12] = 1024;
        if (v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        *&v92[14] = 468;
        *&v92[18] = 2048;
        *&v92[20] = v12;
        v93 = 2048;
        v94 = v5;
        _os_log_send_and_compose_impl(v65, &v89, &v95, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v78, v79);
        _os_crash_msg();
        __break(1u);
LABEL_169:
        *v92 = 0;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v95 = 0u;
        v66 = MEMORY[0x1E69E9C10];
        v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v90 = 136315906;
        *&v90[4] = "operator[]";
        *&v90[12] = 1024;
        if (v67)
        {
          v68 = 3;
        }

        else
        {
          v68 = 2;
        }

        *&v90[14] = 468;
        *&v90[18] = 2048;
        *&v90[20] = v5;
        *&v90[28] = 2048;
        *&v90[30] = v5;
        _os_log_send_and_compose_impl(v68, v92, &v95, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v78, v79);
        _os_crash_msg();
        __break(1u);
LABEL_173:
        *v92 = 0;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v95 = 0u;
        v69 = MEMORY[0x1E69E9C10];
        v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v90 = 136315906;
        *&v90[4] = "operator[]";
        *&v90[12] = 1024;
        if (v70)
        {
          v71 = 3;
        }

        else
        {
          v71 = 2;
        }

        *&v90[14] = 468;
        *&v90[18] = 2048;
        *&v90[20] = v5;
        *&v90[28] = 2048;
        *&v90[30] = v5;
        _os_log_send_and_compose_impl(v71, v92, &v95, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v78, v79);
        _os_crash_msg();
        __break(1u);
LABEL_177:
        v89 = 0;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v95 = 0u;
        v72 = MEMORY[0x1E69E9C10];
        v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v92 = 136315906;
        *&v92[4] = "operator[]";
        *&v92[12] = 1024;
        if (v73)
        {
          v74 = 3;
        }

        else
        {
          v74 = 2;
        }

        *&v92[14] = 476;
        *&v92[18] = 2048;
        *&v92[20] = v13;
        v93 = 2048;
        v94 = v10;
        _os_log_send_and_compose_impl(v74, &v89, &v95, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v78, v79);
        _os_crash_msg();
        __break(1u);
LABEL_181:
        v89 = 0;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v95 = 0u;
        v75 = MEMORY[0x1E69E9C10];
        v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v92 = 136315906;
        *&v92[4] = "operator[]";
        *&v92[12] = 1024;
        if (v76)
        {
          v77 = 3;
        }

        else
        {
          v77 = 2;
        }

        *&v92[14] = 476;
        *&v92[18] = 2048;
        *&v92[20] = v13;
        v93 = 2048;
        v94 = v10;
        _os_log_send_and_compose_impl(v77, &v89, &v95, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v92, 38, v78, v79);
        _os_crash_msg();
        __break(1u);
      }

      v15 = v8[8];
      *&v90[32] = 0;
      memset(v90, 0, 28);
      if (*a5 == 1 && (v16 = v8[18]) != 0 && *(v16 + 40) > v12 && *(*(v16 + 48) + 4 * v12) != -1)
      {
        memset(v92, 0, 24);
        v17 = *&v92[16];
        v18 = *(a5 + 8);
        *(*&v92[16] + 4) = *(a5 + 12);
        *v17 = v18;
        *&v95 = 0x1954B86F1FEF5A4;
        *(&v95 + 1) = "Blend Shape";
        v96 = *v92;
        memset(v92, 0, 24);
        *&v97 = *&v92[16];
        re::DynamicArray<re::DeformationDefinition>::add(v90, &v95);
        v19 = v96;
        if (v96)
        {
          if (*(&v96 + 1))
          {
            v19 = (*(*v96 + 40))(v96, v97);
            *(&v96 + 1) = 0;
            *&v97 = 0;
          }

          *&v96 = 0;
        }

        if (v95)
        {
          if (v95)
          {
          }
        }

        v11 = *v92;
        if (*v92 && *&v92[8])
        {
          v11 = (*(**v92 + 40))();
        }

        v20 = 1;
      }

      else
      {
        v20 = 0;
      }

      if (*(a5 + 6) == 1)
      {
        memset(v92, 0, 24);
        **&v92[16] = *(a5 + 18);
        *&v95 = 0x70EBDC9CD6B5D4E4;
        *(&v95 + 1) = "OffsetsDeformer";
        v96 = *v92;
        v21 = *&v92[16];
        memset(v92, 0, 24);
        *&v97 = v21;
        re::DynamicArray<re::DeformationDefinition>::add(v90, &v95);
        v22 = v96;
        if (v96)
        {
          if (*(&v96 + 1))
          {
            v22 = (*(*v96 + 40))(v96, v97);
            *(&v96 + 1) = 0;
            *&v97 = 0;
          }

          *&v96 = 0;
        }

        if (v95)
        {
          if (v95)
          {
          }
        }

        v11 = *v92;
        if (*v92 && *&v92[8])
        {
          v11 = (*(**v92 + 40))();
        }

        v20 = 1;
      }

      v23 = v15 + 544 * v12;
      if (*(a5 + 1) == 1 && (v24 = v8[28]) != 0 && *(v24 + 8) > v12 && *(*(v24 + 16) + 88 * v12 + 4) != -1)
      {
        v80 = *(a5 + 13);
        v25 = *(v23 + 336);
        if (v25)
        {
          v26 = 0;
          v27 = 0;
          HIDWORD(v78) = *(a5 + 14);
          v28 = 16 * v25;
          v29 = (*(v23 + 344) + 8);
          do
          {
            v30 = *v29;
            v11 = strcmp(*v29, "vertexAdjacencies");
            if (v11)
            {
              v11 = strcmp(v30, "accumulatedVertexValence");
              v27 |= v11 == 0;
            }

            else
            {
              v26 = 1;
            }

            v29 += 2;
            v28 -= 16;
          }

          while (v28);
          v31 = v26 & v27;
          if (v26 & v27)
          {
            v32 = BYTE4(v78);
          }

          else
          {
            v32 = 1;
          }

          v8 = v83;
          v9 = v84;
        }

        else
        {
          v31 = 0;
          v32 = 1;
        }

        memset(v92, 0, 24);
        v49 = *&v92[16];
        **&v92[16] = v80;
        *(v49 + 1) = v32;
        *&v95 = 0x4550755B7A2;
        *(&v95 + 1) = "Skinning";
        v96 = *v92;
        v50 = *&v92[16];
        memset(v92, 0, 24);
        *&v97 = v50;
        re::DynamicArray<re::DeformationDefinition>::add(v90, &v95);
        v51 = v96;
        if (v96)
        {
          if (*(&v96 + 1))
          {
            v51 = (*(*v96 + 40))(v96, v97);
            *(&v96 + 1) = 0;
            *&v97 = 0;
          }

          *&v96 = 0;
        }

        if (v95)
        {
          if (v95)
          {
          }
        }

        v11 = *v92;
        if (*v92 && *&v92[8])
        {
          v11 = (*(**v92 + 40))();
        }

        v20 |= v31;
        v33 = 1;
      }

      else
      {
        v33 = 0;
      }

      if (*(a5 + 5) == 1)
      {
        *&v95 = a5 + 17;
        *(&v95 + 1) = 1;
        memset(v92, 0, 24);
        re::FixedArray<unsigned char>::copy(v92, &v95);
        *&v95 = 0x5ADE39698BF7F040;
        *(&v95 + 1) = "SmoothDeformer";
        v96 = *v92;
        v34 = *&v92[16];
        memset(v92, 0, 24);
        *&v97 = v34;
        re::DynamicArray<re::DeformationDefinition>::add(v90, &v95);
        v35 = v96;
        if (v96)
        {
          if (*(&v96 + 1))
          {
            v35 = (*(*v96 + 40))(v96, v97);
            *(&v96 + 1) = 0;
            *&v97 = 0;
          }

          *&v96 = 0;
        }

        if (v95)
        {
          if (v95)
          {
          }
        }

        v11 = *v92;
        if (*v92 && *&v92[8])
        {
          v11 = (*(**v92 + 40))();
        }

        v33 = 1;
        v20 = 1;
      }

      if (v20 & 1) != 0 && (*(a5 + 2))
      {
        memset(v92, 0, 24);
        **&v92[16] = *(a5 + 15);
        *&v95 = 0xABCEC87F22A13454;
        *(&v95 + 1) = "Renormalization";
        v96 = *v92;
        v36 = *&v92[16];
        memset(v92, 0, 24);
        *&v97 = v36;
        re::DynamicArray<re::DeformationDefinition>::add(v90, &v95);
        v37 = v96;
        if (v96)
        {
          if (*(&v96 + 1))
          {
            v37 = (*(*v96 + 40))(v96, v97);
            *(&v96 + 1) = 0;
            *&v97 = 0;
          }

          *&v96 = 0;
        }

        if (v95)
        {
          if (v95)
          {
          }
        }

        v11 = *v92;
        if (*v92 && *&v92[8])
        {
          v11 = (*(**v92 + 40))();
        }
      }

      if (*(a5 + 3) == 1 && *(v23 + 516))
      {
        *&v95 = 0xA6B838C1BF1BB512;
        *(&v95 + 1) = "OpenSubdivViewIndependentComputeStep";
        *&v97 = 0;
        v96 = 0uLL;
        re::DynamicArray<re::DeformationDefinition>::add(v90, &v95);
        v38 = v96;
        if (v96)
        {
          if (*(&v96 + 1))
          {
            v38 = (*(*v96 + 40))(v96, v97);
            *(&v96 + 1) = 0;
            *&v97 = 0;
          }

          *&v96 = 0;
        }

        if (v95)
        {
          if (v95)
          {
          }
        }

        *&v95 = 0xC6F7B7A81D0D03C8;
        *(&v95 + 1) = "OpenSubdivViewDependentComputeStep";
        *&v97 = 0;
        v96 = 0uLL;
        re::DynamicArray<re::DeformationDefinition>::add(v90, &v95);
        v11 = v96;
        if (v96)
        {
          if (*(&v96 + 1))
          {
            v11 = (*(*v96 + 40))(v96, v97);
            *(&v96 + 1) = 0;
            *&v97 = 0;
          }

          *&v96 = 0;
        }

        if (v95)
        {
          if (v95)
          {
          }
        }
      }

      if ((v33 & *(a5 + 4)) == 1)
      {
        memset(v92, 0, 24);
        **&v92[16] = *(a5 + 16);
        *&v95 = 0x32458CCC0A585AB0;
        *(&v95 + 1) = "Bounding Box Calculation";
        v96 = *v92;
        v39 = *&v92[16];
        memset(v92, 0, 24);
        *&v97 = v39;
        re::DynamicArray<re::DeformationDefinition>::add(v90, &v95);
        v40 = v96;
        if (v96)
        {
          if (*(&v96 + 1))
          {
            v40 = (*(*v96 + 40))(v96, v97);
            *(&v96 + 1) = 0;
            *&v97 = 0;
          }

          *&v96 = 0;
        }

        if (v95)
        {
          if (v95)
          {
          }
        }

        if (*v92 && *&v92[8])
        {
          (*(**v92 + 40))();
        }
      }

      if (*(a5 + 7) == 1)
      {
        v41 = *(v23 + 336);
        if (v41)
        {
          v42 = (*(v23 + 344) + 8);
          v43 = 16 * v41;
          while (1)
          {
            v44 = strcmp(*v42, "tension");
            if (!v44)
            {
              break;
            }

            v42 += 2;
            v43 -= 16;
            if (!v43)
            {
              goto LABEL_114;
            }
          }

          *&v95 = a5 + 19;
          *(&v95 + 1) = 1;
          memset(v92, 0, 24);
          re::FixedArray<unsigned char>::copy(v92, &v95);
          *&v95 = 0x241C51C064;
          *(&v95 + 1) = "Tension";
          v96 = *v92;
          v45 = *&v92[16];
          memset(v92, 0, 24);
          *&v97 = v45;
          re::DynamicArray<re::DeformationDefinition>::add(v90, &v95);
          v46 = v96;
          if (v96)
          {
            if (*(&v96 + 1))
            {
              v46 = (*(*v96 + 40))(v96, v97);
              *(&v96 + 1) = 0;
              *&v97 = 0;
            }

            *&v96 = 0;
          }

          if (v95)
          {
            if (v95)
            {
            }
          }

          if (*v92 && *&v92[8])
          {
            (*(**v92 + 40))();
          }
        }
      }

LABEL_114:
      v5 = v87;
      if (v87 <= v12)
      {
        goto LABEL_165;
      }

      v47 = v88;
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v88 + 40 * v12, v90);
      v11 = re::DynamicArray<re::DeformationDefinition>::deinit(v90);
      ++v12;
    }

    if (i != 1)
    {
      v52 = (v47 + 72);
      v13 = 1;
      while (1)
      {
        if (v5 == v13)
        {
          goto LABEL_169;
        }

        if (!re::DynamicArray<re::DeformationDefinition>::operator==(v47, *(v52 - 2), *v52))
        {
          break;
        }

        ++v13;
        v52 += 5;
        if (i == v13)
        {
          goto LABEL_134;
        }
      }

      v13 = 0;
      while (v13 != v5)
      {
        v54 = *(v47 + 40 * v13 + 16);
        if (v54)
        {
          v55 = *(v9 + 2);
          if (v55)
          {
            v56 = 0;
            v57 = *(v84 + 4);
            v58 = *(v47 + 40 * v13 + 32);
            while (!re::DynamicArray<re::DeformationDefinition>::operator==(v57, v54, v58))
            {
              ++v56;
              v57 += 40;
              if (v55 == v56)
              {
                goto LABEL_148;
              }
            }

            v90[0] = a3;
            re::StringID::StringID(&v90[8], a4);
            v10 = v83[7];
            if (v10 <= v13)
            {
              goto LABEL_181;
            }

            re::StringID::StringID(&v90[24], (v83[8] + 544 * v13 + 488));
            v91 = v56;
            v9 = v84;
          }

          else
          {
LABEL_148:
            v9 = v84;
            re::DynamicArray<re::DeformationStackDefinition>::add(v84, v47 + 40 * v13);
            v90[0] = a3;
            re::StringID::StringID(&v90[8], a4);
            v10 = v83[7];
            if (v10 <= v13)
            {
              goto LABEL_177;
            }

            re::StringID::StringID(&v90[24], (v83[8] + 544 * v13 + 488));
            v91 = *(v84 + 2) - 1;
          }

          v59 = re::DynamicArray<re::MeshDeformationIndex>::add((v9 + 40), v90);
          if (v90[24])
          {
            if (v90[24])
            {
            }
          }

          *&v90[24] = 0;
          *&v90[32] = &str_67;
          v48 = i;
          if (v90[8])
          {
            if (v90[8])
            {
            }
          }
        }

        if (++v13 == v48)
        {
          return re::FixedArray<re::DeformationStackDefinition>::deinit(&v86);
        }
      }

      goto LABEL_173;
    }

LABEL_134:
    if (*(v47 + 16))
    {
      re::DynamicArray<re::DeformationStackDefinition>::add(v9, v47);
      LOBYTE(v95) = a3;
      re::StringID::StringID((&v95 + 8), a4);
      *(&v96 + 1) = 0;
      *&v97 = &str_67;
      *(&v97 + 1) = *(v9 + 2) - 1;
      v53 = re::DynamicArray<re::MeshDeformationIndex>::add((v9 + 40), &v95);
      if (BYTE8(v96))
      {
        if (BYTE8(v96))
        {
        }
      }

      *(&v96 + 1) = 0;
      *&v97 = &str_67;
      if (BYTE8(v95))
      {
        if (BYTE8(v95))
        {
        }
      }
    }

    return re::FixedArray<re::DeformationStackDefinition>::deinit(&v86);
  }

  return result;
}

void re::MeshDeformationAsset::forceVertexFrameSkinning(uint64_t this)
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = *(this + 16);
  if (!v1)
  {
    return;
  }

  v2 = *(this + 32);
  v3 = v2 + 40 * v1;
  do
  {
    v4 = *(v2 + 16);
    if (!v4)
    {
      goto LABEL_24;
    }

    v5 = 0;
    v6 = 0;
    v7 = *(v2 + 32);
    v8 = 16;
    while (1)
    {
      v9 = *(v7 + v8 - 16) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 && v9 == 0xABCEC87F22A13454)
      {
        break;
      }

      if (v9 == 0x4550755B7A2)
      {
        v11 = *(v7 + v8 - 8);
        v5 = v11 == "Skinning" || strcmp(v11, "Skinning") == 0;
        goto LABEL_14;
      }

LABEL_13:
      v5 = 0;
LABEL_14:
      ++v6;
      v8 += 40;
      if (v4 == v6)
      {
        goto LABEL_24;
      }
    }

    v10 = *(v7 + v8 - 8);
    if (v10 != "Renormalization" && strcmp(v10, "Renormalization"))
    {
      goto LABEL_13;
    }

    v12 = v3;
    if (v4 <= v6 - 1)
    {
      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v20 = MEMORY[0x1E69E9C10];
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      v30 = 789;
      v31 = 2048;
      v32 = v6 - 1;
      v33 = 2048;
      v34 = v4;
      _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
LABEL_30:
      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v22 = MEMORY[0x1E69E9C10];
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v27 = 136315906;
      v28 = "removeAt";
      v29 = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v30 = 931;
      v31 = 2048;
      v32 = v6;
      v33 = 2048;
      v34 = v4;
      _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
    }

    v13 = v7 + v8;
    if (*(v7 + v8 - 32) != 2)
    {
      v14 = re::FixedArray<CoreIKTransform>::deinit((v13 - 40));
      **(v13 - 24) = 0;
      v4 = *(v2 + 16);
    }

    *(*(v13 - 24) + 1) = 1;
    if (v4 <= v6)
    {
      goto LABEL_30;
    }

    v15 = *(v2 + 32);
    if (v4 - 1 > v6)
    {
      v16 = v15 + 40 * v4;
      v17 = (v15 + v8);
      re::StringID::operator=((v15 + v8 - 16), (v16 - 40));
      re::FixedArray<float>::operator=(v17, (v16 - 24));
      v4 = *(v2 + 16);
      v15 = *(v2 + 32);
    }

    v3 = v12;
    v18 = v15 + 40 * v4;
    v19 = (v18 - 40);
    re::FixedArray<CoreIKTransform>::deinit((v18 - 24));
    re::StringID::destroyString(v19);
    --*(v2 + 16);
    ++*(v2 + 24);
LABEL_24:
    v2 += 40;
  }

  while (v2 != v3);
}

void re::MeshDeformationAssetLoader::initializeUsedDeformers(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    os_unfair_lock_lock((a1 + 16));
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = *(a2 + 32);
      v6 = v5 + 40 * v4;
      do
      {
        v7 = *(v5 + 16);
        if (v7)
        {
          v8 = *(v5 + 32);
          v9 = 40 * v7;
          do
          {
            (*(**(a1 + 8) + 24))(&v10);
            if (v10 == 1)
            {
              (*(**(a1 + 8) + 16))(*(a1 + 8), BYTE1(v10));
            }

            v8 += 40;
            v9 -= 40;
          }

          while (v9);
        }

        v5 += 40;
      }

      while (v5 != v6);
    }

    os_unfair_lock_unlock((a1 + 16));
  }
}

re *re::internal::destroyPersistent<re::MeshDeformationAsset>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicArray<re::MeshDeformationIndex>::deinit(a3 + 40);
    re::DynamicArray<re::DeformationStackDefinition>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::MeshDeformationAssetLoader::introspectionType(re::MeshDeformationAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE1945A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1945A8))
  {
    qword_1EE1945A0 = re::internal::getOrCreateInfo("MeshDeformationAsset", re::allocInfo_MeshDeformationAsset, re::initInfo_MeshDeformationAsset, &unk_1EE194588, 0);
    __cxa_guard_release(&qword_1EE1945A8);
  }

  return qword_1EE1945A0;
}

void *re::IntrospectionDynamicArray<re::DeformationStackDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DeformationStackDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DeformationStackDefinition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DeformationStackDefinition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DeformationStackDefinition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DeformationStackDefinition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::DeformationStackDefinition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DeformationStackDefinition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::DeformationStackDefinition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DeformationStackDefinition>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  re::DynamicArray<re::DeformationStackDefinition>::add(this, v10);
  re::DynamicArray<re::DeformationDefinition>::deinit(v10);
  v8 = (*(this + 4) + 40 * *(this + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::DeformationStackDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::DeformationStackDefinition>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 40 * a2;
    v9 = a2;
    do
    {
      result = re::DynamicArray<re::DeformationDefinition>::deinit(v3[4] + v8);
      ++v9;
      v8 += 40;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::DeformationStackDefinition>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 32) = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(v7 + 24) = 0;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<re::DeformationStackDefinition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DeformationStackDefinition>::setCapacity(v5, a2);
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
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 40 * v9;
        v11 = v7 + 4;
        do
        {
          *v11 = 0;
          *(v11 - 3) = 0;
          *(v11 - 2) = 0;
          *(v11 - 4) = 0;
          *(v11 - 2) = 0;
          v12 = *(v8 + 8);
          *(v11 - 4) = *v8;
          *(v11 - 3) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 2);
          *(v11 - 2) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = *v11;
          *v11 = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*(v11 - 2);
          re::DynamicArray<re::DeformationDefinition>::deinit(v8);
          v8 += 40;
          v11 += 5;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::DeformationDefinition>::deinit(uint64_t a1)
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
        do
        {
          re::FixedArray<CoreIKTransform>::deinit(v3 + 2);
          re::StringID::destroyString(v3);
          v3 += 5;
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

_anonymous_namespace_ *re::DynamicArray<re::DeformationStackDefinition>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::DeformationStackDefinition>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 40 * v4;
  *(v5 + 32) = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 24) = 0;
  v6 = *(a2 + 8);
  *v5 = *a2;
  *(v5 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v5 + 16);
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v5 + 32);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v5 + 24);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::DeformationStackDefinition>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::DeformationStackDefinition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DeformationStackDefinition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::DeformationStackDefinition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::DeformationStackDefinition>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::DeformationStackDefinition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::DeformationStackDefinition>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::DeformationStackDefinition>::resize(a1, a4);
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

uint64_t re::DynamicArray<re::DeformationStackDefinition>::clear(uint64_t result)
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
      result = re::DynamicArray<re::DeformationDefinition>::deinit(v3);
      v3 += 40;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DeformationStackDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshDeformationIndex>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshDeformationIndex>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshDeformationIndex>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshDeformationIndex>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshDeformationIndex>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshDeformationIndex>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshDeformationIndex>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshDeformationIndex>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshDeformationIndex>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshDeformationIndex>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0;
  v12 = 0;
  v13 = &str_67;
  v14 = 0;
  v15 = &str_67;
  v16 = 0;
  v8 = re::DynamicArray<re::MeshDeformationIndex>::add(this, &v11);
  if (v14)
  {
    if (v14)
    {
    }
  }

  v14 = 0;
  v15 = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  v9 = (*(this + 4) + 48 * *(this + 2) - 48);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::MeshDeformationIndex>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 48 * a3;
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

  return *(a2 + 32) + 48 * a3;
}

void re::DynamicArray<re::MeshDeformationIndex>::resize(uint64_t result, unint64_t a2)
{
  v4 = *(result + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 48 * a2 + 24;
    v9 = a2;
    do
    {
      v10 = (*(result + 32) + v8);
      re::StringID::destroyString(v10);
      re::StringID::destroyString((v10 - 16));
      ++v9;
      v8 += 48;
    }

    while (v9 < *(result + 16));
  }

  else
  {
    if (*(result + 8) < a2)
    {
      re::DynamicArray<re::MeshDeformationIndex>::setCapacity(result, a2);
      v4 = *(result + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 48 * v4;
      do
      {
        v7 = *(result + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = &str_67;
        *(v7 + 24) = 0;
        *(v7 + 32) = &str_67;
        *(v7 + 40) = 0;
        v6 += 48;
        --v5;
      }

      while (v5);
    }
  }

  *(result + 16) = a2;
  ++*(result + 24);
}

void *re::DynamicArray<re::MeshDeformationIndex>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshDeformationIndex>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v17, v19);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v18, v20);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = (v8 + 1);
          v12 = v8[1];
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v8[1] & 1;
          v11[1] = v8[1] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[2] = v8[2];
          v8[2] = &str_67;
          v8[1] = 0;
          v15 = v8[3];
          v14 = (v8 + 3);
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[3] = *v14 & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v16 = *(v14 + 2);
          v11[4] = *(v14 + 1);
          *v14 = 0;
          *(v14 + 1) = &str_67;
          v11[5] = v16;
          re::StringID::destroyString(v14);
          re::StringID::destroyString(v13);
          v11 += 6;
          v8 = (v14 + 24);
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshDeformationIndex>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::MeshDeformationIndex>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 48 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = *(v5 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  v7 = *(a2 + 24);
  *(v5 + 24) = *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v8 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  *(v5 + 40) = v8;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshDeformationIndex>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshDeformationIndex>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshDeformationIndex>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshDeformationIndex>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MeshDeformationIndex>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MeshDeformationIndex>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshDeformationIndex>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MeshDeformationIndex>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 48 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 48;
        v11 -= 48;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::MeshDeformationIndex>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 48 * v2;
    v4 = (*(result + 32) + 24);
    do
    {
      re::StringID::destroyString(v4);
      re::StringID::destroyString((v4 - 16));
      v4 = (v4 + 48);
      v3 -= 48;
    }

    while (v3);
  }

  ++*(result + 24);
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 48 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 48 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshDeformationIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::FixedArray<re::DeformationStackDefinition>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3 >= 0x666666666666667)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v8, v9);
    __break(1u);
    goto LABEL_7;
  }

  result = (*(*a2 + 32))(a2, 40 * a3, 8);
  a1[2] = result;
  if (!result)
  {
LABEL_7:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v7 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *(result + 32) = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 0;
      *(result + 24) = 0;
      result += 40;
      --v7;
    }

    while (v7);
  }

  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::DeformationDefinition>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::DeformationDefinition>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = (*(v3 + 4) + 40 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v7 = a2[3];
  v5[2] = a2[2];
  v5[3] = v7;
  a2[2] = 0;
  a2[3] = 0;
  v8 = v5[4];
  v5[4] = a2[4];
  a2[4] = v8;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::DeformationDefinition>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::DeformationDefinition>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DeformationDefinition>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::DeformationDefinition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DeformationDefinition>::setCapacity(v5, a2);
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
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v11[2] = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = v8[2];
          v8[2] = 0;
          v13 = v11[4];
          v14 = v8[4];
          v11[3] = v8[3];
          v11[4] = v14;
          v8[3] = 0;
          v8[4] = v13;
          re::FixedArray<CoreIKTransform>::deinit(v8 + 2);
          re::StringID::destroyString(v8);
          v11 += 5;
          v8 += 5;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::FixedArray<unsigned char>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v2, v3);
    result = _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
  }

  return result;
}

BOOL re::DynamicArray<re::DeformationDefinition>::operator==(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) != a2)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v4 = *(a1 + 32);
  v5 = v4 + 40 * a2;
  while (1)
  {
    result = re::StringID::operator==(v4, a3);
    if (!result)
    {
      break;
    }

    v7 = *(v4 + 24);
    if (v7 != *(a3 + 24) || memcmp(*(v4 + 32), *(a3 + 32), v7))
    {
      return 0;
    }

    v4 += 40;
    a3 += 40;
    if (v4 == v5)
    {
      return 1;
    }
  }

  return result;
}

void *re::FixedArray<re::DeformationStackDefinition>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 40 * v2;
      do
      {
        re::DynamicArray<re::DeformationDefinition>::deinit(v4);
        v4 += 40;
        v5 -= 40;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t *re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType()
{
  {
    re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType(void)::type = "AnimationScene";
    qword_1EE187828 = 0;
    re::AssetType::generateCompiledExtension(&re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType(void)::type);
  }

  return &re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType(void)::type;
}

void re::AnimationSceneEntityData::prepareEntityHierarchyForAnimationScene(re::AnimationSceneEntityData *this, re::ecs2::Entity *a2, re::ecs2::Entity *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 23);
  v7 = snprintf(__str, 0x2BuLL, "%s%p", "animationsceneintialized::", this);
  if (v7 >= 42)
  {
    v8 = 42;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  *&v14.var0 = 0;
  v14.var1 = &str_67;
  if (v6)
  {
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v14.var0 >> 31) ^ (*&v14.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v14.var0 >> 31) ^ (*&v14.var0 >> 1))) >> 27));
    v11 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v6 + 88, &v14, v10 ^ (v10 >> 31), __str);
    if (v16 != 0x7FFFFFFF)
    {
      goto LABEL_9;
    }

    __str[0] = 1;
    v12 = (v6 + 32);
  }

  else
  {
    v13 = re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    __str[0] = 1;
    v12 = (v13 + 32);
  }

  re::KeyValueStore::addOrReplaceValue<BOOL>(v12, &v14, __str);
LABEL_9:
  if (*&v14.var0)
  {
    if (*&v14.var0)
    {
    }
  }
}

uint64_t re::KeyValueStore::addOrReplaceValue<BOOL>(re::KeyValueStore *a1, StringID *a2, _BYTE *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v6 ^ (v6 >> 31), &v17);
  if (v18 != 0x7FFFFFFF)
  {
    v7 = *(a1 + 3) + 32 * v18;
    v10 = *(v7 + 24);
    v9 = (v7 + 24);
    v8 = v10;
    {
      v16 = v8;
      v8 = v16;
      if (v14)
      {
        re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v15);
        v8 = v16;
      }
    }

    if (v8 == re::introspect<BOOL>(BOOL)::info)
    {
      return re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 56, a2, a3);
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 8, a2, v11 ^ (v11 >> 31), &v17);
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(a1 + 8, &v17);
    re::KeyValueStore::removeValue(a1, *v9, a2);
  }

  {
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v13);
    }
  }

  v17 = re::introspect<BOOL>(BOOL)::info;
  re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 8, a2, &v17);
  return re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 56, a2, a3);
}

void anonymous namespace::doPrepareEntityHierarchyForAnimationScene(uint64_t this, const re::AnimationSceneEntityData *a2, re::ecs2::Entity *a3)
{
  v5 = this;
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 27);
  if (*(this + 56) == 1)
  {
    if (!*(a2 + 23))
    {
      this = re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    v7 = *(a2 + 32);
    if (!v7)
    {
      this = re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      v7 = this;
    }

    if (a3 && v6)
    {
      re::ecs2::NetworkComponent::markDirty(v6, v7);
    }
  }

  if (v5[9])
  {
    if (!*(a2 + 23))
    {
      re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    v8 = *(a2 + 31);
    if (!v8)
    {
      v8 = re::ecs2::EntityComponentCollection::add((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    re::AssetHandle::operator=((v8 + 4), v5 + 8);
    this = re::AssetHandle::loadedAsset<re::SkeletalPoseDefinitionAsset>((v8 + 4));
    if (this)
    {
      v9 = this;
    }

    if (a3 && v6)
    {
      re::ecs2::NetworkComponent::markDirty(v6, v8);
    }
  }

  v10 = v5[4];
  if (v10)
  {
    v11 = v5[6];
    v12 = &v11[11 * v10];
    do
    {
      v13 = *(a2 + 43);
      if (!v13)
      {
        goto LABEL_28;
      }

      v14 = *(a2 + 45);
      v15 = 8 * v13;
      while (1)
      {
        v16 = *v14;
        this = re::StringID::operator==(*v14 + 36, v11);
        if (this)
        {
          break;
        }

        ++v14;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_28;
        }
      }

      if (v16)
      {
      }

      else
      {
LABEL_28:
        v17 = *re::assetTypesLogObjects(this);
        this = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (this)
        {
          v18 = *(a2 + 37);
          v19 = v11[1];
          *buf = 136315394;
          v21 = v18;
          v22 = 2080;
          v23 = v19;
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Animation Scene entity (%s) could not locate expected child (%s).", buf, 0x16u);
        }
      }

      v11 += 11;
    }

    while (v11 != v12);
  }
}

void re::AnimationSceneEntityData::markTargetEntityAsDirty(uint64_t this, re::ecs2::Entity *a2, _BOOL4 a3)
{
  v6 = *(a2 + 27);
  if (v6 && (!*(v6 + 4) || RESyncableIsAuthoritative()))
  {
    if (*(this + 56) == 1)
    {
      if (!a3)
      {
        v7 = *(a2 + 32);
        if (!v7)
        {
          goto LABEL_12;
        }

LABEL_11:
        re::ecs2::NetworkComponent::markDirty(v6, v7);
        goto LABEL_12;
      }

LABEL_10:
      v7 = *(a2 + 23);
      if (!v7)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (!*(this + 72))
    {
      goto LABEL_12;
    }

    if (a3)
    {
      goto LABEL_10;
    }

    v7 = *(a2 + 31);
    if (v7)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v8 = *(this + 32);
  if (v8)
  {
    v9 = *(this + 48);
    v10 = &v9[11 * v8];
    do
    {
      v11 = *(a2 + 43);
      if (v11)
      {
        v12 = *(a2 + 45);
        v13 = 8 * v11;
        while (1)
        {
          v14 = *v12;
          if (re::StringID::operator==(*v12 + 36, v9))
          {
            break;
          }

          ++v12;
          v13 -= 8;
          if (!v13)
          {
            goto LABEL_21;
          }
        }

        if (v14)
        {
          re::AnimationSceneEntityData::markTargetEntityAsDirty(v9, v14, a3);
        }
      }

LABEL_21:
      v9 += 11;
    }

    while (v9 != v10);
  }
}

void re::AnimationSceneEntityData::logAnimationSceneEntityData(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  v5 = re::AnimationLogObjects::loggingEnabled(v4);
  if (v5)
  {
    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v17 = *re::animationLogObjects(v7);
      v7 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (*(a2 + 8))
        {
          v18 = *(a2 + 16);
        }

        else
        {
          v18 = a2 + 9;
        }

        *buf = 136315138;
        v32 = v18;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "ANIM: %s-------------------------\n", buf, 0xCu);
      }
    }

    v8 = re::animationLogObjects(v7);
    v9 = re::AnimationLogObjects::loggingEnabled(v8);
    if (v9)
    {
      v19 = *re::animationLogObjects(v9);
      v9 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (*(a2 + 8))
        {
          v20 = *(a2 + 16);
        }

        else
        {
          v20 = a2 + 9;
        }

        *buf = 136315138;
        v32 = v20;
        _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "ANIM: %sAnimationSceneEntityData:\n", buf, 0xCu);
      }
    }

    v10 = re::animationLogObjects(v9);
    v11 = re::AnimationLogObjects::loggingEnabled(v10);
    if (v11)
    {
      v21 = *re::animationLogObjects(v11);
      v11 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (*(a2 + 8))
        {
          v22 = *(a2 + 16);
        }

        else
        {
          v22 = a2 + 9;
        }

        v25 = *(a1 + 8);
        v26 = "false";
        if (*(a1 + 56))
        {
          v27 = "true";
        }

        else
        {
          v27 = "false";
        }

        v28 = *(a1 + 72);
        if (v28)
        {
          v29 = atomic_load((v28 + 896));
          if (v29 == 2)
          {
            v26 = "true";
          }
        }

        *buf = 136315906;
        v32 = v22;
        v33 = 2080;
        v34 = v25;
        v35 = 2080;
        v36 = v27;
        v37 = 2080;
        v38 = v26;
        _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "ANIM: %s  Entity Name: %s, TransformAnim: %s, SkeletalPoseDefinition.isLoaded(): %s\n", buf, 0x2Au);
      }
    }

    v12 = re::animationLogObjects(v11);
    v13 = re::AnimationLogObjects::loggingEnabled(v12);
    if (v13)
    {
      v23 = *re::animationLogObjects(v13);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v24 = *(a2 + 16);
        }

        else
        {
          v24 = a2 + 9;
        }

        *buf = 136315138;
        v32 = v24;
        _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "ANIM: %s-------------------------\n", buf, 0xCu);
      }
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = *(a1 + 48);
      v16 = 88 * v14;
      do
      {
        re::DynamicString::operator+(v30, a2, "  ");
        re::AnimationSceneEntityData::logAnimationSceneEntityData(v15, v30);
        if (*&v30[0])
        {
          if (BYTE8(v30[0]))
          {
            (*(**&v30[0] + 40))();
          }

          memset(v30, 0, sizeof(v30));
        }

        v15 += 88;
        v16 -= 88;
      }

      while (v16);
    }
  }
}

re *re::AnimationScene::debugLogAnimationSceneData(re::AnimationScene *this)
{
  v2 = re::animationLogObjects(this);
  result = re::AnimationLogObjects::loggingEnabled(v2);
  if (result)
  {
    v4 = re::animationLogObjects(result);
    v5 = re::AnimationLogObjects::loggingEnabled(v4);
    if (v5)
    {
      v10 = *re::animationLogObjects(v5);
      v5 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "ANIM: Logging Animation Scene...\n", buf, 2u);
      }
    }

    re::AnimationSceneEntityData::logAnimationSceneEntityData(this + 24, v14);
    v6 = *&v14[0];
    if (*&v14[0])
    {
      if (BYTE8(v14[0]))
      {
        v6 = (*(**&v14[0] + 40))();
      }

      memset(v14, 0, sizeof(v14));
    }

    v7 = re::animationLogObjects(v6);
    v8 = re::AnimationLogObjects::loggingEnabled(v7);
    if (v8)
    {
      v11 = *re::animationLogObjects(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "ANIM: Timeline Hierarchy...\n", buf, 2u);
      }
    }

    result = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(this);
    v9 = *(result + 2);
    if (v9)
    {
      (*(*v9 + 96))(v9, &v12);
      result = v12;
      if (v12)
      {
        if (v13)
        {
          return (*(*v12 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(re::TimelineAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::TimelineAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return v3;
}

void *re::allocInfo_AnimationSceneEntityData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194778))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194838, "AnimationSceneEntityData");
    __cxa_guard_release(&qword_1EE194778);
  }

  return &unk_1EE194838;
}

void re::initInfo_AnimationSceneEntityData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v22[0] = 0xAD7EB69D45DE37AALL;
  v22[1] = "AnimationSceneEntityData";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE194780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194780))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "entityName";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1947D8 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::AnimationSceneEntityData>>::get(v11);
    v12 = (*(*v11 + 32))(v11, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "childrenData";
    *(v12 + 16) = &qword_1EE1947F8;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x1000000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1947E0 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_BOOL(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "transformAnimation";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x3800000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1947E8 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::introspect_AssetHandle(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "skeletalPoseDefinition";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x4000000004;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1947F0 = v20;
    __cxa_guard_release(&qword_1EE194780);
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1947D8;
  *(this + 9) = re::internal::defaultConstruct<re::AnimationSceneEntityData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AnimationSceneEntityData>;
  *(this + 13) = re::internal::defaultConstructV2<re::AnimationSceneEntityData>;
  *(this + 14) = re::internal::defaultDestructV2<re::AnimationSceneEntityData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v21 = v23;
}

void re::IntrospectionInfo<re::DynamicArray<re::AnimationSceneEntityData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1947C0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1947C0);
    if (a1)
    {
      re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::IntrospectionDynamicArray();
      __cxa_guard_release(&qword_1EE1947C0);
    }
  }

  if ((_MergedGlobals_66 & 1) == 0)
  {
    v1 = qword_1EE194788;
    if (qword_1EE194788 || (v1 = re::allocInfo_AnimationSceneEntityData(a1), qword_1EE194788 = v1, re::initInfo_AnimationSceneEntityData(v1, v2, v3, v4), (_MergedGlobals_66 & 1) == 0))
    {
      _MergedGlobals_66 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1947F8, 0);
      qword_1EE194808 = 0x2800000003;
      dword_1EE194810 = v5;
      word_1EE194814 = 0;
      *&xmmword_1EE194818 = 0;
      *(&xmmword_1EE194818 + 1) = 0xFFFFFFFFLL;
      qword_1EE194828 = v1;
      qword_1EE194830 = 0;
      qword_1EE1947F8 = &unk_1F5CBE318;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1947F8);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE194818 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::AnimationSceneEntityData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 48) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 64) = 0;
}

void re::internal::defaultDestruct<re::AnimationSceneEntityData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 64));
  re::DynamicArray<re::AnimationSceneEntityData>::deinit(a3 + 16);

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::AnimationSceneEntityData>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 48) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 64) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::AnimationSceneEntityData>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 64));
  re::DynamicArray<re::AnimationSceneEntityData>::deinit(a1 + 16);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_AnimationScene(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194790))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1948C8, "AnimationScene");
    __cxa_guard_release(&qword_1EE194790);
  }

  return &unk_1EE1948C8;
}

void re::initInfo_AnimationScene(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0xC56CB686DAA8D710;
  v19[1] = "AnimationScene";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE194798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194798))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_AssetHandle(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "rootTimeline";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1947C8 = v10;
    v11 = re::introspectionAllocator();
    v12 = v11;
    v13 = qword_1EE194788;
    if (!qword_1EE194788)
    {
      v13 = re::allocInfo_AnimationSceneEntityData(v11);
      qword_1EE194788 = v13;
      re::initInfo_AnimationSceneEntityData(v13, v14, v15, v16);
    }

    v17 = (*(*v12 + 32))(v12, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "rootEntityData";
    *(v17 + 16) = v13;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1800000002;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1947D0 = v17;
    __cxa_guard_release(&qword_1EE194798);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1947C8;
  *(this + 9) = re::internal::defaultConstruct<re::AnimationScene>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AnimationScene>;
  *(this + 13) = re::internal::defaultConstructV2<re::AnimationScene>;
  *(this + 14) = re::internal::defaultDestructV2<re::AnimationScene>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

double re::internal::defaultConstruct<re::AnimationScene>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 32) = &str_67;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 80) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  return result;
}

void re::internal::defaultDestruct<re::AnimationScene>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetHandle::~AssetHandle((a3 + 88));
  re::DynamicArray<re::AnimationSceneEntityData>::deinit(a3 + 40);
  re::StringID::destroyString((a3 + 24));

  re::AssetHandle::~AssetHandle(a3);
}

double re::internal::defaultConstructV2<re::AnimationScene>(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::AnimationScene>(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 88));
  re::DynamicArray<re::AnimationSceneEntityData>::deinit(a1 + 40);
  re::StringID::destroyString((a1 + 24));

  re::AssetHandle::~AssetHandle(a1);
}

void *re::allocInfo_AnimationSceneAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1947A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1947A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194958, "AnimationSceneAsset");
    __cxa_guard_release(&qword_1EE1947A8);
  }

  return &unk_1EE194958;
}

void re::initInfo_AnimationSceneAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0x36338DCE93270890;
  v15[1] = "AnimationSceneAsset";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1947B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1947B8))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE1947A0;
    if (!qword_1EE1947A0)
    {
      v9 = re::allocInfo_AnimationScene(v7);
      qword_1EE1947A0 = v9;
      re::initInfo_AnimationScene(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "data";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1947B0 = v13;
    __cxa_guard_release(&qword_1EE1947B8);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1947B0;
  *(this + 9) = re::internal::defaultConstruct<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>;
  *(this + 13) = re::internal::defaultConstructV2<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>;
  *(this + 14) = re::internal::defaultDestructV2<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

double re::internal::defaultConstruct<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 32) = &str_67;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 80) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return result;
}

uint64_t re::AssetHandle::loadedAsset<re::SkeletalPoseDefinitionAsset>(re::SkeletalPoseDefinitionAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::SkeletalPoseDefinitionAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, _BYTE *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v13, v12);
    re::StringID::StringID((v8 + 8), a2);
    *(v8 + 24) = *a3;
    v9 = v8 + 24;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 32 * v7;
    *(v10 + 24) = *a3;
    return v10 + 24;
  }

  return v9;
}

uint64_t re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _BYTE *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,BOOL,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 8) = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        *(result + 16) = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        v7 = *(a2 + 16);
        *(result + 24) = *(v7 + v5 + 24);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 32 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 32 * v4;
}

void re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

void *re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::IntrospectionBase const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 6), v9);
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        result[1] = result[1] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[1] = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        result[2] = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        result[3] = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

uint64_t re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1947F8, 0);
  *(&qword_1EE194808 + 6) = 0;
  qword_1EE194808 = 0;
  *&xmmword_1EE194818 = 0;
  *(&xmmword_1EE194818 + 1) = 0xFFFFFFFFLL;
  qword_1EE1947F8 = &unk_1F5CADA48;
  qword_1EE194830 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE194828);
  qword_1EE1947F8 = &unk_1F5CBE318;
  return result;
}

void *re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::AnimationSceneEntityData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::AnimationSceneEntityData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  memset(v12, 0, sizeof(v12));
  v11[1] = &str_67;
  memset(v13, 0, 24);
  re::DynamicArray<re::AnimationSceneEntityData>::add(this, v11);
  re::AssetHandle::~AssetHandle(v13);
  v8 = re::DynamicArray<re::AnimationSceneEntityData>::deinit(v12);
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 88 * *(this + 2) - 88);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::AnimationSceneEntityData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 88 * a3;
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

  return *(a2 + 32) + 88 * a3;
}

uint64_t re::DynamicArray<re::AnimationSceneEntityData>::deinit(uint64_t a1)
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
        v5 = 88 * v4;
        do
        {
          re::AssetHandle::~AssetHandle((v3 + 64));
          re::DynamicArray<re::AnimationSceneEntityData>::deinit(v3 + 16);
          re::StringID::destroyString(v3);
          v3 += 88;
          v5 -= 88;
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

void *re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v20, v22);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v21, v23);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 88 * v9);
        v11 = (v8 + 64);
        v12 = v7;
        do
        {
          v13 = *(v11 - 8);
          *v12 = *v12 & 0xFFFFFFFFFFFFFFFELL | *(v11 - 8) & 1;
          *v12 = *(v11 - 8) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v12[1] = *(v11 - 7);
          *(v11 - 7) = &str_67;
          *(v11 - 8) = 0;
          v12[6] = 0;
          *(v12 + 10) = 0;
          v12[3] = 0;
          v12[4] = 0;
          v12[2] = 0;
          v14 = *(v11 - 5);
          v12[2] = *(v11 - 6);
          *(v11 - 6) = 0;
          v12[3] = v14;
          *(v11 - 5) = 0;
          v15 = v12[4];
          v12[4] = *(v11 - 4);
          *(v11 - 4) = v15;
          v16 = v12[6];
          v12[6] = *(v11 - 2);
          *(v11 - 2) = v16;
          ++*(v11 - 6);
          ++*(v12 + 10);
          *(v12 + 56) = *(v11 - 8);
          v12[9] = 0;
          v12[10] = 0;
          v12[8] = 0;
          v12[9] = v11[1];
          v11[1] = 0;
          v17 = v12[8];
          v12[8] = 0;
          v12[8] = *v11;
          *v11 = v17;
          v18 = v12[10];
          v12[10] = v11[2];
          v11[2] = v18;
          re::AssetHandle::~AssetHandle(v11);
          re::DynamicArray<re::AnimationSceneEntityData>::deinit((v11 - 6));
          re::StringID::destroyString((v11 - 8));
          v12 += 11;
          v19 = v11 + 3;
          v11 += 11;
        }

        while (v19 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::DynamicArray<re::AnimationSceneEntityData>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 88 * a2;
    v9 = a2;
    do
    {
      v10 = result[4] + v8;
      re::AssetHandle::~AssetHandle((v10 + 64));
      re::DynamicArray<re::AnimationSceneEntityData>::deinit(v10 + 16);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 88;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 88 * v4;
      do
      {
        v7 = result[4] + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 48) = 0;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 16) = 0;
        *(v7 + 40) = 0;
        *(v7 + 56) = 0;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 64) = 0;
        v6 += 88;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

_anonymous_namespace_ *re::DynamicArray<re::AnimationSceneEntityData>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::AnimationSceneEntityData>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 88 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v5 + 48) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  v7 = a2[3];
  *(v5 + 16) = a2[2];
  *(v5 + 24) = v7;
  a2[2] = 0;
  a2[3] = 0;
  v8 = *(v5 + 32);
  *(v5 + 32) = a2[4];
  a2[4] = v8;
  v9 = *(v5 + 48);
  *(v5 + 48) = a2[6];
  a2[6] = v9;
  ++*(a2 + 10);
  ++*(v5 + 40);
  *(v5 + 56) = *(a2 + 56);
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = a2[9];
  a2[9] = 0;
  v10 = *(v5 + 64);
  *(v5 + 64) = 0;
  *(v5 + 64) = a2[8];
  a2[8] = v10;
  v11 = *(v5 + 80);
  *(v5 + 80) = a2[10];
  a2[10] = v11;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::AnimationSceneEntityData>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 88 * v8;
      do
      {
        re::AssetHandle::~AssetHandle((v9 + 64));
        re::DynamicArray<re::AnimationSceneEntityData>::deinit(v9 + 16);
        re::StringID::destroyString(v9);
        v9 += 88;
        v10 -= 88;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::AnimationSceneEntityData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::AnimationSceneEntityData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::AnimationSceneEntityData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 88 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 88;
        v14 -= 88;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 88 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 88 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationSceneEntityData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::~BasicAsset(uint64_t a1)
{
  re::AssetHandle::~AssetHandle((a1 + 88));
  re::DynamicArray<re::AnimationSceneEntityData>::deinit(a1 + 40);
  re::StringID::destroyString((a1 + 24));

  re::AssetHandle::~AssetHandle(a1);
}

uint64_t *re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType()
{
  {
    re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType(void)::type = "AssignedMeshDeformation";
    qword_1EE1877F8 = 0;
    re::AssetType::generateCompiledExtension(&re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType(void)::type);
  }

  return &re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType(void)::type;
}

void *re::allocInfo_AssignedMeshDeformation(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1949F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1949F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194A70, "AssignedMeshDeformation");
    __cxa_guard_release(&qword_1EE1949F0);
  }

  return &unk_1EE194A70;
}

void re::initInfo_AssignedMeshDeformation(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0x100A83A7AE6FEAAALL;
  v15[1] = "AssignedMeshDeformation";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE194A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194A00))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshIdentifierAsset>>::get(v7, v8, v9, v10, v11, v12);
    v13 = (*(*v7 + 32))(v7, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "deformedMeshAssets";
    *(v13 + 16) = &qword_1EE194A30;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1949F8 = v13;
    __cxa_guard_release(&qword_1EE194A00);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1949F8;
  *(this + 9) = re::internal::defaultConstruct<re::AssignedMeshDeformation>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AssignedMeshDeformation>;
  *(this + 13) = re::internal::defaultConstructV2<re::AssignedMeshDeformation>;
  *(this + 14) = re::internal::defaultDestructV2<re::AssignedMeshDeformation>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshIdentifierAsset>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE194A28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194A28))
  {
    re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::IntrospectionDynamicArray();
    __cxa_guard_release(&qword_1EE194A28);
  }

  if ((_MergedGlobals_67 & 1) == 0)
  {
    v6 = re::introspect_MeshIdentifierAsset(1, a2, a3, a4, a5, a6);
    if ((_MergedGlobals_67 & 1) == 0)
    {
      v7 = v6;
      _MergedGlobals_67 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE194A30, 0);
      qword_1EE194A40 = 0x2800000003;
      dword_1EE194A48 = v8;
      word_1EE194A4C = 0;
      *&xmmword_1EE194A50 = 0;
      *(&xmmword_1EE194A50 + 1) = 0xFFFFFFFFLL;
      qword_1EE194A60 = v7;
      qword_1EE194A68 = 0;
      qword_1EE194A30 = &unk_1F5CBE3B0;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE194A30);
      if (v19)
      {
        v11 = *&v20[7];
      }

      else
      {
        v11 = v20;
      }

      if (v18 && (v19 & 1) != 0)
      {
        (*(*v18 + 40))();
      }

      v15 = *(v7 + 32);
      if (v22)
      {
        v14 = v22;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v21);
        re::TypeBuilder::TypeBuilder(&v18, v21);
        v17 = v15;
        re::TypeBuilder::beginListType(&v18, &v16, 1, 0x28uLL, 8uLL, &v17);
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE194A50 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::AssignedMeshDeformation>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::AssignedMeshDeformation>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::allocInfo_AssignedMeshDeformationAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194A10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194B00, "AssignedMeshDeformationAsset");
    __cxa_guard_release(&qword_1EE194A10);
  }

  return &unk_1EE194B00;
}

void re::initInfo_AssignedMeshDeformationAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0xF3256EF769E2536;
  v15[1] = "AssignedMeshDeformationAsset";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE194A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194A20))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE194A08;
    if (!qword_1EE194A08)
    {
      v9 = re::allocInfo_AssignedMeshDeformation(v7);
      qword_1EE194A08 = v9;
      re::initInfo_AssignedMeshDeformation(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "data";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE194A18 = v13;
    __cxa_guard_release(&qword_1EE194A20);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE194A18;
  *(this + 9) = re::internal::defaultConstruct<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>;
  *(this + 13) = re::internal::defaultConstructV2<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>;
  *(this + 14) = re::internal::defaultDestructV2<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

void re::internal::defaultConstruct<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t re::DeformedMeshAssetsMap::deformedIndex(re::DeformedMeshAssetsMap *this, unsigned int a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (v3)
  {
    v4 = a2;
    v5 = *(this + 6);
    if (v5 <= a2)
    {
      v13 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
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

      v17 = 476;
      v18 = 2048;
      v19 = v4;
      v20 = 2048;
      v21 = v5;
      _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v4 = (*(*(this + 7) + 4 * a2) + a3);
      if (v3 > v4)
      {
        return *(*(this + 4) + 4 * v4);
      }
    }

    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 476;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  return 0xFFFFFFFFLL;
}

void *re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(v5, a2);
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
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v16, v18);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = (v8 + 1);
          v12 = v8[1];
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v8[1] & 1;
          v11[1] = v8[1] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[2] = v8[2];
          v8[2] = &str_67;
          v8[1] = 0;
          v15 = v8[3];
          v14 = (v8 + 3);
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[3] = *v14 & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
          v11[4] = *(v14 + 1);
          *v14 = 0;
          *(v14 + 1) = &str_67;
          re::StringID::destroyString(v14);
          re::StringID::destroyString(v13);
          v11 += 5;
          v8 = (v14 + 16);
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE194A30, 0);
  *(&qword_1EE194A40 + 6) = 0;
  qword_1EE194A40 = 0;
  *&xmmword_1EE194A50 = 0;
  *(&xmmword_1EE194A50 + 1) = 0xFFFFFFFFLL;
  qword_1EE194A30 = &unk_1F5CADA48;
  qword_1EE194A68 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE194A60);
  qword_1EE194A30 = &unk_1F5CBE3B0;
  return result;
}

void *re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshIdentifierAsset>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshIdentifierAsset>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0;
  v12 = 0;
  v13 = &str_67;
  v14 = 0;
  v15 = &str_67;
  v8 = re::DynamicArray<re::MeshIdentifierAsset>::add(this, &v11);
  if (v14)
  {
    if (v14)
    {
    }
  }

  v14 = 0;
  v15 = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  v9 = (*(this + 4) + 40 * *(this + 2) - 40);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::MeshIdentifierAsset>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

uint64_t re::DynamicArray<re::MeshIdentifierAsset>::deinit(uint64_t a1)
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
        v6 = (v3 + 24);
        do
        {
          re::StringID::destroyString(v6);
          re::StringID::destroyString((v6 - 16));
          v6 = (v6 + 40);
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

void re::DynamicArray<re::MeshIdentifierAsset>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 40 * a2 + 24;
    v9 = a2;
    do
    {
      v10 = (result[4] + v8);
      re::StringID::destroyString(v10);
      re::StringID::destroyString((v10 - 16));
      ++v9;
      v8 += 40;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = result[4] + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = &str_67;
        *(v7 + 24) = 0;
        *(v7 + 32) = &str_67;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

_anonymous_namespace_ *re::DynamicArray<re::MeshIdentifierAsset>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::MeshIdentifierAsset>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 40 * v4;
  *v5 = *a2;
  v6 = *(a2 + 8);
  *(v5 + 8) = *(v5 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  v7 = *(a2 + 24);
  *(v5 + 24) = *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshIdentifierAsset>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 40 * v8;
      v10 = (*(a1 + 32) + 24);
      do
      {
        re::StringID::destroyString(v10);
        re::StringID::destroyString((v10 - 16));
        v10 = (v10 + 40);
        v9 -= 40;
      }

      while (v9);
    }
  }

  else
  {
    re::DynamicArray<re::MeshIdentifierAsset>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::MeshIdentifierAsset>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 40 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshIdentifierAsset>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::AudioAssetLoadStrategyFactory::getCurrentLoadStrategy(re::AudioAssetLoadStrategyFactory *this, re::AudioService *a2)
{
  if (this)
  {
    (*(*this + 568))(this, a2);
    operator new();
  }

  operator new();
}

uint64_t *re::ShaderLibraryAsset::assetType(re::ShaderLibraryAsset *this)
{
  {
    re::ShaderLibraryAsset::assetType(void)::type = "ShaderLibrary";
    qword_1EE1C6D38 = 0;
    re::AssetType::generateCompiledExtension(&re::ShaderLibraryAsset::assetType(void)::type);
  }

  return &re::ShaderLibraryAsset::assetType(void)::type;
}

uint64_t re::ShaderLibraryAsset::ShaderLibraryAsset(uint64_t a1, id *a2)
{
  *a1 = &unk_1F5CBE448;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  v5 = re::DynamicString::setCapacity(v4, 0);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  re::DynamicString::setCapacity((a1 + 40), 0);
  *(a1 + 80) = 0;
  re::ObjCObject::operator=((a1 + 80), a2);
  return a1;
}

uint64_t re::ShaderLibraryAssetLoaderNameRemapper::remapLibraryName@<X0>(re::ShaderLibraryAssetLoaderNameRemapper *this@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  v5 = *(this + 1);
  re::AssetManager::lookupAssetPathString(v5, a2, &v7, v12);
  if (v10)
  {
    if (BYTE8(v10))
    {
      (*(*v10 + 40))();
    }

    v11 = 0u;
    v10 = 0u;
  }

  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  if (v12[0] == 1)
  {
    LOBYTE(v7) = 1;
    re::DynamicString::DynamicString(&v8, &v13);
    re::Optional<re::DynamicString>::operator=(a3, &v7);
    if (v7 == 1 && v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }
  }

  result = v13;
  if (v13)
  {
    if (v14)
    {
      return (*(*v13 + 40))(v13, v15);
    }
  }

  return result;
}

void sub_1E1F9C998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  if (a15)
  {
    if (a16)
    {
      (*(*a15 + 40))();
    }

    *(v17 + 56) = 0u;
    *(v17 + 40) = 0u;
  }

  if (a11)
  {
    if (a12)
    {
      (*(*a11 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t re::ShaderLibraryAssetLoader::registerAsset(re::StringID **this, id *a2, const re::ExistingAssetInformation *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  result = re::ServiceLocator::serviceOrNull<re::RenderManager>(this[1]);
  if (!result)
  {
    return result;
  }

  v7 = result;
  if (!*(result + 208))
  {
    return 0;
  }

  if (!this[6])
  {
    v8 = re::ServiceLocator::serviceOrNull<re::AssetService>(this[1]);
    if (v8)
    {
      this[6] = v8;
      *(*(v7 + 48) + 424) = this + 5;
    }
  }

  v9 = a2[10];
  if (v9)
  {
    v10 = [v9 hash];
    re::DynamicString::format(&v57, "memorylib_%lu", v11, v10);
    if (v57.st_ino)
    {
      v12 = *&v57.st_uid;
    }

    else
    {
      v12 = &v57.st_ino + 1;
    }

    *&buf = v12;
    *(&buf + 1) = strlen(v12);
    re::DynamicString::operator=((a2 + 5), &buf);
    v13 = *(v7 + 48);
    *&buf = re::ShaderManager::getLibraryHash(v13, v12);
    v14 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v13 + 376, &buf);
    if (v14)
    {
      v15 = *re::assetTypesLogObjects(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v12;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Registering library (%s) that already exists in shader manager. Library will be overwritten.", &buf, 0xCu);
      }
    }

    v16 = *(v7 + 48);
    LibraryHash = re::ShaderManager::getLibraryHash(v16, v12);
    re::ShaderManager::installLibrary(v16, LibraryHash, a2 + 10);
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add((this + 13), (a2 + 1), &v57);
    v18 = *&v57.st_dev;
    if (*&v57.st_dev && (v57.st_ino & 1) != 0)
    {
      v19 = *&v57.st_uid;
LABEL_16:
      (*(*v18 + 40))(v18, v19);
    }
  }

  else
  {
    v20 = a2[2];
    if (v20)
    {
      v21 = v20 >> 1;
    }

    else
    {
      v21 = v20 >> 1;
    }

    if (v21)
    {
      v22 = re::Hash<re::DynamicString>::operator()(&v57, a2 + 1);
      v23 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>((this + 13), v22, &v57, (a2 + 1));
      if (HIDWORD(v57.st_ino) == 0x7FFFFFFF)
      {
        v24 = *re::assetTypesLogObjects(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v49 = *(a3 + 18);
          if ((*(a3 + 136) & 1) == 0)
          {
            v49 = a3 + 137;
          }

          if (a2[2])
          {
            v50 = a2[3];
          }

          else
          {
            v50 = a2 + 17;
          }

          v57.st_dev = 136315394;
          *&v57.st_mode = v49;
          WORD2(v57.st_ino) = 2080;
          *(&v57.st_ino + 6) = v50;
          _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Registration failed for asset '%s'. Could not find library key for %s.", &v57, 0x16u);
        }

        return 2;
      }

      v28 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]((this + 13), a2 + 1);
      if (*(v28 + 8))
      {
        v29 = *(v28 + 16);
      }

      else
      {
        v29 = (v28 + 9);
      }

      v30 = strlen(v29);
      *&v57.st_dev = v29;
      v57.st_ino = v30;
      re::DynamicString::operator=((a2 + 5), &v57);
    }

    else
    {
      v25 = a2[6];
      v26 = v25 >> 1;
      if ((v25 & 1) == 0)
      {
        v26 = v25 >> 1;
      }

      if (!v26)
      {
        v31 = *re::assetTypesLogObjects(0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          if (*(a3 + 17))
          {
            v51 = *(a3 + 18);
          }

          else
          {
            v51 = a3 + 137;
          }

          v57.st_dev = 136315138;
          *&v57.st_mode = v51;
          _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "Registration failed for asset '%s', currentMetallibPath is Empty!", &v57, 0xCu);
        }

        return 2;
      }

      if (v25)
      {
        v27 = a2[7];
      }

      else
      {
        v27 = a2 + 49;
      }

      v32 = *(v7 + 48);
      *&v57.st_dev = re::ShaderManager::getLibraryHash(v32, v27);
      if (!re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v32 + 376, &v57))
      {
        re::ShaderManager::makeLibraryWithURL(*(v7 + 48), v27, v27, v27);
        v42 = re::DynamicString::rfind(&v52, a2 + 5, 46);
        if (v52 == 1)
        {
          v43 = v53;
          if (v53)
          {
            v55 = 0;
            v56 = 0;
            *(&buf + 1) = 0;
            re::DynamicString::setCapacity(&buf, v43 + 25);
            if (a2[6])
            {
              v44 = a2[7];
            }

            else
            {
              v44 = a2 + 49;
            }

            re::DynamicString::append(&buf, v44, v43);
            re::DynamicString::append(&buf, "-binaryarchive.metallib", 0x18uLL);
            if (BYTE8(buf))
            {
              v47 = v55;
            }

            else
            {
              v47 = &buf + 9;
            }

            if (!stat(v47, &v57))
            {
              if (BYTE8(buf))
              {
                v48 = v55;
              }

              else
              {
                v48 = &buf + 9;
              }

              re::ShaderManager::makeAndAddBinaryArchive(*(v7 + 48), v48, v48);
            }

            v18 = buf;
            if (buf)
            {
              if (BYTE8(buf))
              {
                v19 = v55;
                goto LABEL_16;
              }
            }
          }
        }
      }
    }
  }

  v33 = *(v7 + 48);
  if (a2[6])
  {
    v34 = a2[7];
  }

  else
  {
    v34 = a2 + 49;
  }

  *&v57.st_dev = re::ShaderManager::getLibraryHash(v33, v34);
  v35 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v33 + 376, &v57);
  v36 = *&v57.st_dev;
  if (v35)
  {
    v37 = *&v57.st_dev;
  }

  else
  {
    v37 = 0;
  }

  a2[9] = v37;
  if (!v37)
  {
    v39 = *re::assetTypesLogObjects(v35);
    v35 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (a2[6])
      {
        v45 = a2[7];
      }

      else
      {
        v45 = a2 + 49;
      }

      v57.st_dev = 136315138;
      *&v57.st_mode = v45;
      _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "Unable to get a library hash for %s", &v57, 0xCu);
    }

    if (a2[9])
    {
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  if (!v36)
  {
LABEL_50:
    v40 = *re::assetTypesLogObjects(v35);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      if (*(a3 + 17))
      {
        v46 = *(a3 + 18);
      }

      else
      {
        v46 = a3 + 137;
      }

      v57.st_dev = 136315138;
      *&v57.st_mode = v46;
      _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, "Registration failed for asset '%s'", &v57, 0xCu);
    }

    return 2;
  }

LABEL_45:
  v38 = re::Hash<re::DynamicString>::operator()(&v57, a2 + 5);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>((this + 7), v38, &v57, (a2 + 5));
  if (HIDWORD(v57.st_ino) == 0x7FFFFFFF)
  {
    v57.st_dev = 1;
    re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add((this + 7), (a2 + 5), &v57);
    return 0;
  }

  v41 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]((this + 7), a2 + 5);
  result = 0;
  ++*v41;
  return result;
}

void sub_1E1F9D038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19)
{
  if (a13)
  {
    if (a14)
    {
      (*(*a13 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v4, v6, a2);
  return *(a1 + 16) + 80 * v7 + 40;
}

uint64_t re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v10, a2);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v11) + 40;
  }

  v7 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
  re::DynamicString::DynamicString((v7 + 8), a2);
  *(v7 + 40) = *a3;
  v8 = v7 + 40;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[](uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v4, v6, a2);
  return *(a1 + 16) + 56 * v7 + 40;
}

void re::ShaderLibraryAssetLoader::preloadAssets(re::StringID **this)
{
  v2 = re::ServiceLocator::service<re::AssetService>(this[1]);
  (*(*v2 + 8))(&v6);
  v4 = *(this + 1);
  v3 = this + 2;
  *v3 = v6;
  v6 = v4;
  v5 = v3[2];
  v3[2] = v7;
  v7 = v5;
  re::AssetHandle::~AssetHandle(&v6);
  if ((*(*v2 + 360))(v2))
  {
    re::AssetHandle::loadAsync(v3);
  }
}

uint64_t re::ShaderLibraryAssetLoader::unregisterAsset(re::StringID **this, void *a2, const re::ExistingAssetInformation *a3)
{
  result = re::ServiceLocator::serviceOrNull<re::RenderManager>(this[1]);
  if (result)
  {
    v6 = result;
    if (*(result + 208))
    {
      v7 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]((this + 7), a2 + 5);
      --*v7;
      result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator[]((this + 7), a2 + 5);
      if (*result <= 0)
      {
        v22 = 0;
        v19[1] = 0;
        v20 = 0;
        v19[0] = 0;
        v21 = 0;
        v8 = *(this + 34);
        if (v8)
        {
          v9 = 0;
          v10 = this[15];
          while (1)
          {
            v11 = *v10;
            v10 = (v10 + 80);
            if (v11 < 0)
            {
              break;
            }

            if (v8 == ++v9)
            {
              LODWORD(v9) = *(this + 34);
              break;
            }
          }
        }

        else
        {
          LODWORD(v9) = 0;
        }

        if (v9 != v8)
        {
          v12 = *(this + 34);
          do
          {
            v13 = this[15];
            if (re::DynamicString::operator==(v13 + 80 * v9 + 40, (a2 + 5)))
            {
              re::DynamicArray<re::DynamicString>::add(v19, (v13 + 80 * v9 + 8));
              v12 = *(this + 34);
            }

            if (v12 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = v12;
            }

            while (v14 - 1 != v9)
            {
              LODWORD(v9) = v9 + 1;
              if ((*(this[15] + 20 * v9) & 0x80000000) != 0)
              {
                goto LABEL_21;
              }
            }

            LODWORD(v9) = v14;
LABEL_21:
            ;
          }

          while (v9 != v8);
          if (v20)
          {
            v15 = v22;
            v16 = 32 * v20;
            do
            {
              re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove((this + 13), v15);
              v15 += 4;
              v16 -= 32;
            }

            while (v16);
          }
        }

        v17 = *(v6 + 48);
        v18 = re::Hash<re::DynamicString>::operator()(&v23, a2 + 5);
        re::ShaderManager::releaseLibrary(v17, v18);
        return re::DynamicArray<re::DynamicString>::deinit(v19);
      }
    }
  }

  return result;
}

re *re::internal::destroyPersistent<re::ShaderLibraryAsset>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::ShaderLibraryAssetLoader::findDependencies(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
}

uint64_t re::ShaderLibraryAssetLoader::introspectionType(re::ShaderLibraryAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::ShaderLibraryAsset>(BOOL)::info = re::internal::getOrCreateInfo("ShaderLibraryAsset", re::allocInfo_ShaderLibraryAsset, re::initInfo_ShaderLibraryAsset, &re::internal::introspectionInfoStorage<re::ShaderLibraryAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[208];
}

uint64_t re::ShaderLibraryAssetLoader::allocateSampleAsset(re::ShaderLibraryAssetLoader *this)
{
  v1 = re::AssetHandle::blockUntilLoaded<re::ShaderLibraryAsset>((this + 16));
  v2 = re::globalAllocators(v1);
  v3 = (*(*v2[2] + 32))(v2[2], 88, 8);
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *v3 = &unk_1F5CBE448;
  *(v3 + 24) = 0u;
  *(v3 + 8) = 0u;
  v4 = re::DynamicString::setCapacity((v3 + 8), 0);
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  re::DynamicString::setCapacity((v3 + 40), 0);
  *(v3 + 80) = 0;
  if (*(v1 + 48))
  {
    v5 = *(v1 + 56);
  }

  else
  {
    v5 = (v1 + 49);
  }

  v7[0] = v5;
  v7[1] = strlen(v5);
  re::DynamicString::operator=((v3 + 40), v7);
  return v3;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::ShaderLibraryAsset>(re::ShaderLibraryAsset *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  re::ShaderLibraryAsset::assetType(a1);
  v2 = re::AssetHandle::assetWithType(a1, &re::ShaderLibraryAsset::assetType(void)::type, 0);
  if (!v2)
  {
    v3 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = re::AssetHandle::assetInfo(a1);
      if (v5[17])
      {
        v6 = v5[18];
      }

      else
      {
        v6 = v5 + 137;
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v7, 0xCu);
    }
  }

  return v2;
}

void *re::allocInfo_ShaderLibraryAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE194BB0, "ShaderLibraryAsset");
    __cxa_guard_release(&_MergedGlobals_68);
  }

  return &unk_1EE194BB0;
}

void re::initInfo_ShaderLibraryAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xEC9A67660EC0D734;
  v16[1] = "ShaderLibraryAsset";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE194B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194B98))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "networkIdentifier";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE194BA0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "serializedLibraryPath";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE194BA8 = v14;
    __cxa_guard_release(&qword_1EE194B98);
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE194BA0;
  *(this + 9) = re::internal::defaultConstruct<re::ShaderLibraryAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ShaderLibraryAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::ShaderLibraryAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::ShaderLibraryAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultConstruct<re::ShaderLibraryAsset>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = &unk_1F5CBE448;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  v4 = a3 + 1;
  v5 = re::DynamicString::setCapacity(v4, 0);
  *(v3 + 40) = 0u;
  v3 = (v3 + 40);
  v3[1] = 0u;
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 5) = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ShaderLibraryAsset>(_OWORD *a1)
{
  v1 = a1;
  *a1 = &unk_1F5CBE448;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v2 = a1 + 1;
  v3 = re::DynamicString::setCapacity(v2, 0);
  *(v1 + 40) = 0u;
  v1 = (v1 + 40);
  v1[1] = 0u;
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 5) = 0;
  return result;
}

void re::ShaderLibraryAssetLoader::~ShaderLibraryAssetLoader(re::ShaderLibraryAssetLoader *this)
{
  *this = &unk_1F5CBE4A8;
  v2 = (this + 16);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 13);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 7);
  re::AssetHandle::~AssetHandle(v2);
}

{
  *this = &unk_1F5CBE4A8;
  v2 = (this + 16);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 13);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 7);
  re::AssetHandle::~AssetHandle(v2);

  JUMPOUT(0x1E6906520);
}

void re::ShaderLibraryAsset::~ShaderLibraryAsset(id *this)
{
  re::ShaderLibraryAsset::~ShaderLibraryAsset(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CBE448;

  re::DynamicString::deinit((this + 5));
  re::DynamicString::deinit((this + 1));
}

uint64_t re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, v2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = a1[2];
      a1[2] = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 3);
      *(a1 + 3) = v7;
      ++*&v9[40];
      re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
        v8 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = v8[4];
        v9 = v8[2];
        *(result + 8) = v8[1];
        v8[1] = 0;
        v10 = v8[3];
        v8[4] = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        v8[2] = v12;
        v8[3] = v11;
        v7 = *(a2 + 16);
        *(result + 40) = *(v7 + v5 + 40);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 56;
    }

    while (v6 < v2);
  }

  return result;
}

void re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_27_0, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

void sub_1E1F9F054(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void re::SharedTexturePayload::make(id *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, RESharedTexturePayload **a5@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = [*a1 isShareable];
  if (v10)
  {
    v11 = [RESharedTexturePayload alloc];
    log = *a1;
    if (*(a4 + 8))
    {
      v12 = *(a4 + 16);
    }

    else
    {
      v12 = a4 + 9;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    v15 = [(RESharedTexturePayload *)v11 initWithTexture:log isLimitedRenderAsset:a2 semantic:a3 colorSpace:v14];
    *a5 = v15;
  }

  else
  {
    loga = *re::assetTypesLogObjects(v10);
    if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [objc_msgSend(*a1 label)];
      *buf = 136315138;
      v19 = v13;
      _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "Attempted to share an unshareable texture '%s'", buf, 0xCu);
    }

    *a5 = 0;
  }
}

void re::SharedTexturePayload::dynamicCast(id *this@<X0>, void *a2@<X8>)
{
  v6 = *this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = v6;
    v4 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void *re::SharedTexturePayload::handle(id *this)
{
  v1 = [*this handle];

  return v1;
}

void re::SharedTexturePayload::colorSpace(id *this@<X0>, re::DynamicString *a2@<X8>)
{
  v4 = [*this colorSpace];
  v3 = [v4 UTF8String];
}

void re::IOSurfaceTexturePayload::make(id *a1@<X0>, REIOSurfaceTexturePayload **a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*a1 iosurface];
  if (v4)
  {
    v5 = -[REIOSurfaceTexturePayload initWithIOSurface:plane:pixelFormat:]([REIOSurfaceTexturePayload alloc], "initWithIOSurface:plane:pixelFormat:", v4, [*a1 iosurfacePlane], objc_msgSend(*a1, sel_pixelFormat));
    *a2 = v5;
  }

  else
  {
    v6 = *re::assetTypesLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [objc_msgSend(*a1 label)];
      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "Attempted to share an unshareable texture '%s'", &v8, 0xCu);
    }

    *a2 = 0;
  }
}

void re::IOSurfaceTexturePayload::dynamicCast(id *this@<X0>, void *a2@<X8>)
{
  v6 = *this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = v6;
    v4 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void re::IOSurfaceTexturePayload::makeTextureWithDevice(id *this@<X0>, id *a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *this;
  v6 = [v5 ioSurface];
  v7 = [v5 planeIndex];
  if ([v6 planeCount])
  {
    v8 = [v6 widthOfPlaneAtIndex:v7];
    v9 = [v6 heightOfPlaneAtIndex:v7];
  }

  else
  {
    v8 = [v6 width];
    v9 = [v6 height];
  }

  v10 = v9;
  if (v8 && v9)
  {
    v11 = [v5 pixelFormat];
    v12 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v12 setTextureType_];
    [v12 setWidth_];
    [v12 setHeight_];
    [v12 setPixelFormat_];
    [v12 setMipmapLevelCount_];
    [v12 setUsage_];
    [v12 setStorageMode_];
    re::mtl::Device::makeTextureWithIOSurface(a3, v12, a2, v6, v7);
    if (v12)
    {
    }
  }

  else
  {
    v13 = *re::assetTypesLogObjects(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109376;
      v14[1] = v8;
      v15 = 1024;
      v16 = v10;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Attempted to create an IOSurfaceTexturePayload with invalid size: [%d, %d]", v14, 0xEu);
    }

    *a3 = 0;
  }
}

void re::DrawableQueueTexturePayload::make(id *a1@<X0>, REDrawableQueueTexturePayload **a2@<X8>)
{
  v4 = [REDrawableQueueTexturePayload alloc];
  v6 = *a1;
  v5 = [REDrawableQueueTexturePayload initWithDrawableQueue:v4 placeholderTexture:"initWithDrawableQueue:placeholderTexture:"];
  *a2 = v5;
}

void re::DrawableQueueTexturePayload::dynamicCast(id *this@<X0>, void *a2@<X8>)
{
  v6 = *this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = v6;
    v4 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void re::DrawableQueueTexturePayload::drawableQueue(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this drawableQueue];
  *a2 = v3;
}

void re::DrawableQueueTexturePayload::placeholderTexture(id *this@<X0>, void *a2@<X8>)
{
  v3 = [*this placeholderTexture];
  *a2 = v3;
}

uint64_t re::bufferIdentifierForMeshAttribute(re *this, const re::StringID *a2)
{
  if (re::StringID::operator==(this, re::MeshAttributeNames::kIndexTriangles))
  {
    return 4;
  }

  if (re::StringID::operator==(this, re::MeshAttributeNames::kVertexAdjacentFaces) || re::StringID::operator==(this, re::MeshAttributeNames::kAccumulatedVertexValence) || re::StringID::operator==(this, re::MeshAttributeNames::kSimplifiedAnimationJointIndices) || re::StringID::operator==(this, re::MeshAttributeNames::kSimplifiedAnimationInfluenceEndIndices) || re::StringID::operator==(this, re::MeshAttributeNames::kSimplifiedAnimationSkinningInfluences))
  {
    return 5;
  }

  if (re::StringID::operator==(this, re::MeshAttributeNames::kPatchControlHullIndices) || re::StringID::operator==(this, re::MeshAttributeNames::kOpenSubdivStencilSizes) || re::StringID::operator==(this, re::MeshAttributeNames::kOpenSubdivStencilIndices) || re::StringID::operator==(this, re::MeshAttributeNames::kOpenSubdivStencilOffsets) || re::StringID::operator==(this, re::MeshAttributeNames::kOpenSubdivUVIndices) || re::StringID::operator==(this, re::MeshAttributeNames::kPatchTessellationFactors) || re::StringID::operator==(this, re::MeshAttributeNames::kPatchTessellationPatchVertexOffsets) || re::StringID::operator==(this, re::MeshAttributeNames::kPatchTessellationPatchIndexOffsets))
  {
    return 7;
  }

  v4 = re::StringID::operator==(this, re::MeshAttributeNames::kPostTessellationVertexPatchIDs);
  result = 7;
  if (!v4)
  {
    if (re::StringID::operator==(this, re::MeshAttributeNames::kPostTessellationIndices))
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::MeshPayloadBuffers::areValid(re::MeshPayloadBuffers *this)
{
  v1 = *(this + 48);
  if (v1 == -1)
  {
    v3 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::MeshPayloadBuffers::length(v3, v4);
  }

  else
  {
    v6 = &v5;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_18MeshPayloadBuffers8areValidEvE3__0ZNKS9_8areValidEvE3__1EEEEEJRKNS0_6__implIJNS6_16FixedInlineArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEENSF_INS6_20BufferSliceSourceCPUELm8EEEEEEEEEDcOT_DpOT0____fmatrix[v1])(&v6, this);
  }
}

uint64_t re::MeshPayloadBuffers::length(re::MeshPayloadBuffers *this, int a2)
{
  v8 = a2;
  v9[0] = &v8;
  v9[1] = &v8;
  v2 = *(this + 48);
  if (v2 == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::MeshPayloadBuffers::slice(v4, v5, v6, v7);
  }

  else
  {
    v10 = v9;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_18MeshPayloadBuffers6lengthEjE3__0ZNKS9_6lengthEjE3__1EEEEEJRKNS0_6__implIJNS6_16FixedInlineArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEENSF_INS6_20BufferSliceSourceCPUELm8EEEEEEEEEDcOT_DpOT0____fmatrix[v2])(&v10, this);
  }
}

uint64_t re::MeshPayloadBuffers::slice(re::MeshPayloadBuffers *this, int a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v8 = a4;
  v9 = a3;
  v11[0] = &v10;
  v11[1] = &v9;
  v11[2] = &v8;
  v11[3] = &v10;
  v11[4] = &v9;
  v11[5] = &v8;
  v4 = *(this + 48);
  if (v4 == -1)
  {
    v6 = std::__throw_bad_variant_access[abi:nn200100]();
    return std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::MeshPayloadBuffers::areValid(void)::$_0,re::MeshPayloadBuffers::areValid(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,std::__variant_detail::_Trait<re::BufferSliceSourceCPU,8ul>> const&>(v6, v7);
  }

  else
  {
    v12 = v11;
    return (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNKS6_18MeshPayloadBuffers5sliceEjmmE3__0ZNKS9_5sliceEjmmE3__1EEEEEJRKNS0_6__implIJNS6_16FixedInlineArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEENSF_INS6_20BufferSliceSourceCPUELm8EEEEEEEEEDcOT_DpOT0____fmatrix[v4])(&v12, this);
  }
}

id std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::MeshPayloadBuffers::length(unsigned int)::$_0,re::MeshPayloadBuffers::length(unsigned int)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,std::__variant_detail::_Trait<re::BufferSliceSourceCPU,8ul>> const&>(unsigned int ***a1, uint64_t a2)
{
  v4 = ***a1;
  if (v4 >= 8)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, v4, 8, v2, v3);
    result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v7, v8);
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 8 * v4);

    return [v5 length];
  }

  return result;
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::MeshPayloadBuffers::length(unsigned int)::$_0,re::MeshPayloadBuffers::length(unsigned int)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,std::__variant_detail::_Trait<re::BufferSliceSourceCPU,8ul>> const&>(uint64_t a1, uint64_t a2)
{
  v4 = **(*a1 + 8);
  if (v4 < 8)
  {
    return *(a2 + 24 * v4);
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, v4, 8, v2, v3);
  result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v6, v7);
  __break(1u);
  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::MeshPayloadBuffers::slice(unsigned int,unsigned long,unsigned long)::$_0,re::MeshPayloadBuffers::slice(unsigned int,unsigned long,unsigned long)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,std::__variant_detail::_Trait<re::BufferSliceSourceCPU,8ul>> const&>@<X0>(unsigned int ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = ***a1;
  if (v5 >= 8)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, ***a1, 8);
    result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
  }

  else
  {
    v6 = *v4[1];
    v7 = *v4[2];
    result = *(a2 + 8 * v5);
    *a3 = result;
    *(a3 + 24) = 0;
    *(a3 + 32) = v6;
    *(a3 + 36) = v7;
  }

  return result;
}

id std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<re::internal::overloaded<re::MeshPayloadBuffers::slice(unsigned int,unsigned long,unsigned long)::$_0,re::MeshPayloadBuffers::slice(unsigned int,unsigned long,unsigned long)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,std::__variant_detail::_Trait<re::BufferSliceSourceCPU,8ul>> const&>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = **(*a1 + 24);
  if (v5 >= 8)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, **(*a1 + 24), 8);
    result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v10, v11);
    __break(1u);
  }

  else
  {
    v6 = a2 + 24 * v5;
    v7 = **(v4 + 32);
    v8 = **(v4 + 40);
    *a3 = *v6;
    result = *(v6 + 16);
    *(a3 + 16) = result;
    *(a3 + 24) = 1;
    *(a3 + 32) = v7;
    *(a3 + 36) = v8;
  }

  return result;
}

void re::VideoChannelTextureHandles::invalidate(re::VideoChannelTextureHandles *this)
{
  re::TextureHandle::invalidate(this);
  re::TextureHandle::invalidate(this + 2);
  re::TextureHandle::invalidate(this + 4);
  re::TextureHandle::invalidate(this + 6);
  re::TextureHandle::invalidate(this + 8);
  re::TextureHandle::invalidate(this + 10);
  re::TextureHandle::invalidate(this + 12);
  v2 = *(this + 18);
  *(this + 34) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 35) = 0x10000;
  if (v2)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(this + 18);
  }

  *(this + 18) = 0;
  *(this + 76) = 512;
  *(this + 154) = 2;
}

void anonymous namespace::registerOrSetTexture(uint64_t result, const re::TextureHandle *a2, void **a3)
{
  if (*a3)
  {
    if (*(a2 + 1))
    {
      v4 = *a2 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (result)
      {
        re::TextureManager::registerTexture(result, a3, v5);
        re::TextureHandle::operator=(a2, v5);
        re::TextureHandle::invalidate(v5);
      }
    }

    else
    {

      re::TextureHandle::setMetalTexture(a2, a3);
    }
  }
}

void re::VideoChannelTextureHandles::setTextures(uint64_t a1, uint64_t a2, CVPixelBufferRef *a3, char a4, char a5, char a6, CFTypeRef *a7, __int16 *a8, char a9)
{
  v24 = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(&v24, &v24, a3[13]);
  if (v24)
  {
    v23 = re::VideoPixelBufferTextureBase::asMetalTexture(&v24);
    v17 = v23;
  }

  else
  {
    v23 = *(a2 + 16);
  }

  *(a1 + 112) = [v23 pixelFormat];
  if (v23)
  {
  }

  v23 = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(&v23, &v23, a3[14]);
  if (v23)
  {
    v22 = re::VideoPixelBufferTextureBase::asMetalTexture(&v23);
    v18 = v22;

    *(a1 + 116) = [v22 pixelFormat];
    if (v22)
    {
    }
  }

  else
  {
    re::TextureHandle::invalidate((a1 + 16));
    *(a1 + 116) = 0;
  }

  v22 = 0;
  re::VideoObject<re::VideoPixelBufferBase>::setRef(&v22, &v22, a3[15]);
  if (v22)
  {
    v21 = re::VideoPixelBufferTextureBase::asMetalTexture(&v22);
    v19 = v21;

    *(a1 + 120) = [v21 pixelFormat];
    if (v21)
    {
    }
  }

  else
  {
    re::TextureHandle::invalidate((a1 + 32));
    *(a1 + 120) = 0;
  }

  *(a1 + 140) = a4;
  *(a1 + 143) = a5;
  *(a1 + 141) = a6;
  re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 144, (a1 + 144), *a7);
  v20 = *a8;
  *(a1 + 154) = *(a8 + 2);
  *(a1 + 152) = v20;
  *(a1 + 142) = a9;
  if (v22)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v22);
  }

  if (v23)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v23);
  }

  if (v24)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v24);
  }
}

void sub_1E1FA075C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, id a10, id a11, uint64_t a12)
{
  if (a11)
  {
  }

  if (a12)
  {
    re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&a12);
  }

  _Unwind_Resume(exception_object);
}

void re::VideoChannelTextureHandles::setPlane0AndLoadingFallbackTextures(uint64_t a1, uint64_t a2, id *a3)
{
  if (*(a1 + 24) && *(a1 + 16))
  {
    re::TextureHandle::invalidate((a1 + 16));
    *(a1 + 116) = 0;
  }

  if (*(a1 + 40) && *(a1 + 32))
  {
    re::TextureHandle::invalidate((a1 + 32));
    *(a1 + 120) = 0;
  }

  *(a1 + 112) = [*a3 pixelFormat];
  v6 = [*a3 pixelFormat];
  v8 = *(a1 + 144);
  v7 = (a1 + 144);
  *(v7 - 2) = v6;
  *(v7 - 4) = 0;
  *(v7 - 1) = 0;
  if (v8)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v7);
  }

  *v7 = 0;
}

void re::VideoChannelTextureHandles::setScreenFallbackTextures(re::VideoChannelTextureHandles *this, id *a2)
{
  v9 = a2[2];
  v8 = a2[2];
  v7 = a2[3];
  *(this + 28) = [v9 pixelFormat];
  *(this + 29) = [v8 pixelFormat];
  v4 = [v7 pixelFormat];
  v6 = *(this + 18);
  v5 = (this + 144);
  *(v5 - 6) = v4;
  *(v5 - 4) = 0;
  *(v5 - 1) = 0;
  if (v6)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v5);
  }

  *v5 = 0;
  if (v7)
  {
  }

  if (v8)
  {
  }

  if (v9)
  {
  }
}

void sub_1E1FA09B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, id a11, id a12)
{
  if (a10)
  {
  }

  if (a11)
  {
  }

  if (a12)
  {
  }

  _Unwind_Resume(exception_object);
}

void re::VideoChannelTextureHandles::setTextures(uint64_t a1, uint64_t a2, id *a3, char a4, char a5, char a6, CFTypeRef *a7, __int16 *a8, char a9)
{
  v25 = a3[13];
  v17 = v25;

  if (v25)
  {
    *(a1 + 112) = [v25 pixelFormat];
    v18 = v25;
    if (!v25)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v24 = *(a2 + 16);
  *(a1 + 112) = [v24 pixelFormat];
  v18 = v24;
  if (v24)
  {
LABEL_3:
  }

LABEL_4:
  v19 = a3[14];
  v25 = v19;
  v20 = v19;

  if (v19)
  {
    *(a1 + 116) = [v25 pixelFormat];
    if (v25)
    {
    }
  }

  else
  {
    re::TextureHandle::invalidate((a1 + 16));
    *(a1 + 116) = 0;
  }

  v21 = a3[15];
  v25 = v21;
  v22 = v21;

  if (v21)
  {
    *(a1 + 120) = [v25 pixelFormat];
    if (v25)
    {
    }
  }

  else
  {
    re::TextureHandle::invalidate((a1 + 32));
    *(a1 + 120) = 0;
  }

  *(a1 + 140) = a4;
  *(a1 + 143) = a5;
  *(a1 + 141) = a6;
  re::VideoObject<re::VideoColorTransformBase>::setRef(a1 + 144, (a1 + 144), *a7);
  v23 = *a8;
  *(a1 + 154) = *(a8 + 2);
  *(a1 + 152) = v23;
  *(a1 + 142) = a9;
}

void sub_1E1FA0BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10)
{
  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

void re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(__CVBuffer **a1)
{
  v3 = *a1;
  if (v3)
  {

    CVPixelBufferRelease(v3);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4 = *re::videoLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Video m_object is NULL", v5, 2u);
    }
  }
}

void re::VideoObject<re::VideoColorTransformBase>::setRef(int a1, const void **a2, CFTypeRef cf)
{
  if (*a2)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a2);
  }

  *a2 = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

void re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(const void **a1)
{
  v3 = *a1;
  if (v3)
  {

    CFRelease(v3);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4 = *re::videoLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Video m_object is NULL", v5, 2u);
    }
  }
}

void *re::TimelineGroupAssetData::findDependencies(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[11];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<re::AssetHandle>::setCapacity(this, v6);
    v4 = v3[11];
  }

  if (v4)
  {
    v7 = v3[13];
    v8 = 24 * v4;
    do
    {
      result = re::DynamicArray<re::AssetHandle>::add(this, v7);
      v7 = (v7 + 24);
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void *re::TimelineGroupAssetData::findAssetHandleFields(void *result, _anonymous_namespace_ *this)
{
  v3 = result;
  v4 = result[11];
  v5 = *(this + 1);
  v6 = v4 + *(this + 2);
  if (v5 < v6)
  {
    result = re::DynamicArray<float *>::setCapacity(this, v6);
    v4 = v3[11];
  }

  if (v4)
  {
    v7 = v3[13];
    v8 = 24 * v4;
    do
    {
      v9 = v7;
      result = re::DynamicArray<re::TransitionCondition *>::add(this, &v9);
      v7 += 24;
      v8 -= 24;
    }

    while (v8);
  }

  return result;
}

void re::introspectionTable_TimelineAssetData(re *this)
{
  if ((_MergedGlobals_69 & 1) == 0)
  {
    _MergedGlobals_69 = 1;
    if ((atomic_load_explicit(&qword_1EE194C50, memory_order_acquire) & 1) == 0)
    {
      inited = __cxa_guard_acquire(&qword_1EE194C50);
      if (inited)
      {
        qword_1EE18AC80 = "TimelineClipAssetData";
        v2 = qword_1EE194C80;
        if (!qword_1EE194C80)
        {
          v2 = re::allocInfo_TimelineClipAssetData(inited);
          qword_1EE194C80 = v2;
          re::initInfo_TimelineClipAssetData(v2, v3, v4, v5);
        }

        qword_1EE18AC88 = v2;
        unk_1EE18AC90 = 0;
        qword_1EE18AC98 = 1;
        dword_1EE18ACA0 = 0;
        qword_1EE18ACA8 = "TimelineGroupAssetData";
        v6 = qword_1EE194CD0;
        if (!qword_1EE194CD0)
        {
          v6 = re::allocInfo_TimelineGroupAssetData(inited);
          qword_1EE194CD0 = v6;
          re::initInfo_TimelineGroupAssetData(v6, v7, v8, v9);
        }

        qword_1EE18ACB0 = v6;
        *algn_1EE18ACB8 = 0;
        qword_1EE18ACC0 = 2;
        dword_1EE18ACC8 = 0;
        qword_1EE18ACD0 = "FloatAnimationClipAssetData";
        v10 = qword_1EE194CE8;
        if (!qword_1EE194CE8)
        {
          v10 = re::allocInfo_FloatAnimationClipAssetData(inited);
          qword_1EE194CE8 = v10;
          re::initInfo_FloatAnimationClipAssetData(v10, v11, v12, v13);
        }

        qword_1EE18ACD8 = v10;
        unk_1EE18ACE0 = 0;
        qword_1EE18ACE8 = 3;
        dword_1EE18ACF0 = 0;
        qword_1EE18ACF8 = "DoubleAnimationClipAssetData";
        v14 = qword_1EE194D00;
        if (!qword_1EE194D00)
        {
          v14 = re::allocInfo_DoubleAnimationClipAssetData(inited);
          qword_1EE194D00 = v14;
          re::initInfo_DoubleAnimationClipAssetData(v14, v15, v16, v17);
        }

        qword_1EE18AD00 = v14;
        *algn_1EE18AD08 = 0;
        qword_1EE18AD10 = 4;
        dword_1EE18AD18 = 0;
        qword_1EE18AD20 = "Vector2FAnimationClipAssetData";
        v18 = qword_1EE194D18;
        if (!qword_1EE194D18)
        {
          v18 = re::allocInfo_Vector2FAnimationClipAssetData(inited);
          qword_1EE194D18 = v18;
          re::initInfo_Vector2FAnimationClipAssetData(v18, v19, v20, v21);
        }

        qword_1EE18AD28 = v18;
        unk_1EE18AD30 = 0;
        qword_1EE18AD38 = 5;
        dword_1EE18AD40 = 0;
        qword_1EE18AD48 = "Vector3FAnimationClipAssetData";
        v22 = qword_1EE194D30;
        if (!qword_1EE194D30)
        {
          v22 = re::allocInfo_Vector3FAnimationClipAssetData(inited);
          qword_1EE194D30 = v22;
          re::initInfo_Vector3FAnimationClipAssetData(v22, v23, v24, v25);
        }

        qword_1EE18AD50 = v22;
        *algn_1EE18AD58 = 0;
        qword_1EE18AD60 = 6;
        dword_1EE18AD68 = 0;
        qword_1EE18AD70 = "Vector4FAnimationClipAssetData";
        v26 = qword_1EE194D48;
        if (!qword_1EE194D48)
        {
          v26 = re::allocInfo_Vector4FAnimationClipAssetData(inited);
          qword_1EE194D48 = v26;
          re::initInfo_Vector4FAnimationClipAssetData(v26, v27, v28, v29);
        }

        qword_1EE18AD78 = v26;
        unk_1EE18AD80 = 0;
        qword_1EE18AD88 = 7;
        dword_1EE18AD90 = 0;
        qword_1EE18AD98 = "QuaternionFAnimationClipAssetData";
        v30 = qword_1EE194D60;
        if (!qword_1EE194D60)
        {
          v30 = re::allocInfo_QuaternionFAnimationClipAssetData(inited);
          qword_1EE194D60 = v30;
          re::initInfo_QuaternionFAnimationClipAssetData(v30, v31, v32, v33);
        }

        qword_1EE18ADA0 = v30;
        *algn_1EE18ADA8 = 0;
        qword_1EE18ADB0 = 8;
        dword_1EE18ADB8 = 0;
        qword_1EE18ADC0 = "SRTAnimationClipAssetData";
        v34 = qword_1EE194D78;
        if (!qword_1EE194D78)
        {
          v34 = re::allocInfo_SRTAnimationClipAssetData(inited);
          qword_1EE194D78 = v34;
          re::initInfo_SRTAnimationClipAssetData(v34, v35, v36, v37);
        }

        qword_1EE18ADC8 = v34;
        unk_1EE18ADD0 = 0;
        qword_1EE18ADD8 = 9;
        dword_1EE18ADE0 = 0;
        qword_1EE18ADE8 = "SkeletalPoseAnimationClipAssetData";
        v38 = qword_1EE194D90;
        if (!qword_1EE194D90)
        {
          v38 = re::allocInfo_SkeletalPoseAnimationClipAssetData(inited);
          qword_1EE194D90 = v38;
          re::initInfo_SkeletalPoseAnimationClipAssetData(v38, v39, v40, v41);
        }

        qword_1EE18ADF0 = v38;
        *algn_1EE18ADF8 = 0;
        qword_1EE18AE00 = 10;
        dword_1EE18AE08 = 0;
        qword_1EE18AE10 = "FloatAnimationAssetData";
        v42 = qword_1EE194DC0;
        if (!qword_1EE194DC0)
        {
          v42 = re::allocInfo_FloatAnimationAssetData(inited);
          qword_1EE194DC0 = v42;
          re::initInfo_FloatAnimationAssetData(v42, v43, v44, v45);
        }

        qword_1EE18AE18 = v42;
        unk_1EE18AE20 = 0;
        qword_1EE18AE28 = 11;
        dword_1EE18AE30 = 0;
        qword_1EE18AE38 = "DoubleAnimationAssetData";
        v46 = qword_1EE194DD8;
        if (!qword_1EE194DD8)
        {
          v46 = re::allocInfo_DoubleAnimationAssetData(inited);
          qword_1EE194DD8 = v46;
          re::initInfo_DoubleAnimationAssetData(v46, v47, v48, v49);
        }

        qword_1EE18AE40 = v46;
        *algn_1EE18AE48 = 0;
        qword_1EE18AE50 = 12;
        dword_1EE18AE58 = 0;
        qword_1EE18AE60 = "Vector2FAnimationAssetData";
        v50 = qword_1EE194DF0;
        if (!qword_1EE194DF0)
        {
          v50 = re::allocInfo_Vector2FAnimationAssetData(inited);
          qword_1EE194DF0 = v50;
          re::initInfo_Vector2FAnimationAssetData(v50, v51, v52, v53);
        }

        qword_1EE18AE68 = v50;
        unk_1EE18AE70 = 0;
        qword_1EE18AE78 = 13;
        dword_1EE18AE80 = 0;
        qword_1EE18AE88 = "Vector3FAnimationAssetData";
        v54 = qword_1EE194E08;
        if (!qword_1EE194E08)
        {
          v54 = re::allocInfo_Vector3FAnimationAssetData(inited);
          qword_1EE194E08 = v54;
          re::initInfo_Vector3FAnimationAssetData(v54, v55, v56, v57);
        }

        qword_1EE18AE90 = v54;
        *algn_1EE18AE98 = 0;
        qword_1EE18AEA0 = 14;
        dword_1EE18AEA8 = 0;
        qword_1EE18AEB0 = "Vector4FAnimationAssetData";
        v58 = qword_1EE194E20;
        if (!qword_1EE194E20)
        {
          v58 = re::allocInfo_Vector4FAnimationAssetData(inited);
          qword_1EE194E20 = v58;
          re::initInfo_Vector4FAnimationAssetData(v58, v59, v60, v61);
        }

        qword_1EE18AEB8 = v58;
        unk_1EE18AEC0 = 0;
        qword_1EE18AEC8 = 15;
        dword_1EE18AED0 = 0;
        qword_1EE18AED8 = "QuaternionFAnimationAssetData";
        v62 = qword_1EE194E38;
        if (!qword_1EE194E38)
        {
          v62 = re::allocInfo_QuaternionFAnimationAssetData(inited);
          qword_1EE194E38 = v62;
          re::initInfo_QuaternionFAnimationAssetData(v62, v63, v64, v65);
        }

        qword_1EE18AEE0 = v62;
        *algn_1EE18AEE8 = 0;
        qword_1EE18AEF0 = 16;
        dword_1EE18AEF8 = 0;
        qword_1EE18AF00 = "SRTAnimationAssetData";
        v66 = qword_1EE194E50;
        if (!qword_1EE194E50)
        {
          v66 = re::allocInfo_SRTAnimationAssetData(inited);
          qword_1EE194E50 = v66;
          inited = re::initInfo_SRTAnimationAssetData(v66, v67, v68, v69);
        }

        qword_1EE18AF08 = v66;
        unk_1EE18AF10 = 0;
        qword_1EE18AF18 = 17;
        dword_1EE18AF20 = 0;
        qword_1EE18AF28 = "SkeletalPoseAnimationAssetData";
        v70 = qword_1EE194E68;
        if (!qword_1EE194E68)
        {
          v70 = re::allocInfo_SkeletalPoseAnimationAssetData(inited);
          qword_1EE194E68 = v70;
          re::initInfo_SkeletalPoseAnimationAssetData(v70, v71, v72, v73);
        }

        qword_1EE18AF30 = v70;
        *algn_1EE18AF38 = 0;
        qword_1EE18AF40 = 18;
        dword_1EE18AF48 = 0;
        qword_1EE18AF50 = "FloatKeyframeAnimationAssetData";
        v74 = qword_1EE194E98;
        if (!qword_1EE194E98)
        {
          v74 = re::allocInfo_FloatKeyframeAnimationAssetData(inited);
          qword_1EE194E98 = v74;
          re::initInfo_FloatKeyframeAnimationAssetData(v74, v75, v76, v77);
        }

        qword_1EE18AF58 = v74;
        unk_1EE18AF60 = 0;
        qword_1EE18AF68 = 19;
        dword_1EE18AF70 = 0;
        qword_1EE18AF78 = "DoubleKeyframeAnimationAssetData";
        v78 = qword_1EE194EB0;
        if (!qword_1EE194EB0)
        {
          v78 = re::allocInfo_DoubleKeyframeAnimationAssetData(inited);
          qword_1EE194EB0 = v78;
          re::initInfo_DoubleKeyframeAnimationAssetData(v78, v79, v80, v81);
        }

        qword_1EE18AF80 = v78;
        *algn_1EE18AF88 = 0;
        qword_1EE18AF90 = 20;
        dword_1EE18AF98 = 0;
        qword_1EE18AFA0 = "Vector2FKeyframeAnimationAssetData";
        v82 = qword_1EE194EC8;
        if (!qword_1EE194EC8)
        {
          v82 = re::allocInfo_Vector2FKeyframeAnimationAssetData(inited);
          qword_1EE194EC8 = v82;
          re::initInfo_Vector2FKeyframeAnimationAssetData(v82, v83, v84, v85);
        }

        qword_1EE18AFA8 = v82;
        unk_1EE18AFB0 = 0;
        qword_1EE18AFB8 = 21;
        dword_1EE18AFC0 = 0;
        qword_1EE18AFC8 = "Vector3FKeyframeAnimationAssetData";
        v86 = qword_1EE194EE0;
        if (!qword_1EE194EE0)
        {
          v86 = re::allocInfo_Vector3FKeyframeAnimationAssetData(inited);
          qword_1EE194EE0 = v86;
          re::initInfo_Vector3FKeyframeAnimationAssetData(v86, v87, v88, v89);
        }

        qword_1EE18AFD0 = v86;
        *algn_1EE18AFD8 = 0;
        qword_1EE18AFE0 = 22;
        dword_1EE18AFE8 = 0;
        qword_1EE18AFF0 = "Vector4FKeyframeAnimationAssetData";
        v90 = qword_1EE194EF8;
        if (!qword_1EE194EF8)
        {
          v90 = re::allocInfo_Vector4FKeyframeAnimationAssetData(inited);
          qword_1EE194EF8 = v90;
          re::initInfo_Vector4FKeyframeAnimationAssetData(v90, v91, v92, v93);
        }

        qword_1EE18AFF8 = v90;
        unk_1EE18B000 = 0;
        qword_1EE18B008 = 23;
        dword_1EE18B010 = 0;
        qword_1EE18B018 = "QuaternionFKeyframeAnimationAssetData";
        v94 = qword_1EE194F10;
        if (!qword_1EE194F10)
        {
          v94 = re::allocInfo_QuaternionFKeyframeAnimationAssetData(inited);
          qword_1EE194F10 = v94;
          re::initInfo_QuaternionFKeyframeAnimationAssetData(v94, v95, v96, v97);
        }

        qword_1EE18B020 = v94;
        *algn_1EE18B028 = 0;
        qword_1EE18B030 = 24;
        dword_1EE18B038 = 0;
        qword_1EE18B040 = "SRTKeyframeAnimationAssetData";
        v98 = qword_1EE194F28;
        if (!qword_1EE194F28)
        {
          v98 = re::allocInfo_SRTKeyframeAnimationAssetData(inited);
          qword_1EE194F28 = v98;
          re::initInfo_SRTKeyframeAnimationAssetData(v98, v99, v100, v101);
        }

        qword_1EE18B048 = v98;
        unk_1EE18B050 = 0;
        qword_1EE18B058 = 25;
        dword_1EE18B060 = 0;
        qword_1EE18B068 = "SkeletalPoseKeyframeAnimationAssetData";
        v102 = qword_1EE194F40;
        if (!qword_1EE194F40)
        {
          v102 = re::allocInfo_SkeletalPoseKeyframeAnimationAssetData(inited);
          qword_1EE194F40 = v102;
          re::initInfo_SkeletalPoseKeyframeAnimationAssetData(v102, v103, v104, v105);
        }

        qword_1EE18B070 = v102;
        *algn_1EE18B078 = 0;
        qword_1EE18B080 = 26;
        dword_1EE18B088 = 0;
        qword_1EE18B090 = "FloatSampledAnimationAssetData";
        v106 = qword_1EE194F70;
        if (!qword_1EE194F70)
        {
          v106 = re::allocInfo_FloatSampledAnimationAssetData(inited);
          qword_1EE194F70 = v106;
          re::initInfo_FloatSampledAnimationAssetData(v106, v107, v108, v109);
        }

        qword_1EE18B098 = v106;
        unk_1EE18B0A0 = 0;
        qword_1EE18B0A8 = 27;
        dword_1EE18B0B0 = 0;
        qword_1EE18B0B8 = "DoubleSampledAnimationAssetData";
        v110 = qword_1EE194F88;
        if (!qword_1EE194F88)
        {
          v110 = re::allocInfo_DoubleSampledAnimationAssetData(inited);
          qword_1EE194F88 = v110;
          re::initInfo_DoubleSampledAnimationAssetData(v110, v111, v112, v113);
        }

        qword_1EE18B0C0 = v110;
        *algn_1EE18B0C8 = 0;
        qword_1EE18B0D0 = 28;
        dword_1EE18B0D8 = 0;
        qword_1EE18B0E0 = "Vector2FSampledAnimationAssetData";
        v114 = qword_1EE194FA0;
        if (!qword_1EE194FA0)
        {
          v114 = re::allocInfo_Vector2FSampledAnimationAssetData(inited);
          qword_1EE194FA0 = v114;
          re::initInfo_Vector2FSampledAnimationAssetData(v114, v115, v116, v117);
        }

        qword_1EE18B0E8 = v114;
        unk_1EE18B0F0 = 0;
        qword_1EE18B0F8 = 29;
        dword_1EE18B100 = 0;
        qword_1EE18B108 = "Vector3FSampledAnimationAssetData";
        v118 = qword_1EE194FB8;
        if (!qword_1EE194FB8)
        {
          v118 = re::allocInfo_Vector3FSampledAnimationAssetData(inited);
          qword_1EE194FB8 = v118;
          re::initInfo_Vector3FSampledAnimationAssetData(v118, v119, v120, v121);
        }

        qword_1EE18B110 = v118;
        *algn_1EE18B118 = 0;
        qword_1EE18B120 = 30;
        dword_1EE18B128 = 0;
        qword_1EE18B130 = "Vector4FSampledAnimationAssetData";
        v122 = qword_1EE194FD0;
        if (!qword_1EE194FD0)
        {
          v122 = re::allocInfo_Vector4FSampledAnimationAssetData(inited);
          qword_1EE194FD0 = v122;
          re::initInfo_Vector4FSampledAnimationAssetData(v122, v123, v124, v125);
        }

        qword_1EE18B138 = v122;
        unk_1EE18B140 = 0;
        qword_1EE18B148 = 31;
        dword_1EE18B150 = 0;
        qword_1EE18B158 = "QuaternionFSampledAnimationAssetData";
        v126 = qword_1EE194FE8;
        if (!qword_1EE194FE8)
        {
          v126 = re::allocInfo_QuaternionFSampledAnimationAssetData(inited);
          qword_1EE194FE8 = v126;
          re::initInfo_QuaternionFSampledAnimationAssetData(v126, v127, v128, v129);
        }

        qword_1EE18B160 = v126;
        *algn_1EE18B168 = 0;
        qword_1EE18B170 = 32;
        dword_1EE18B178 = 0;
        qword_1EE18B180 = "SRTSampledAnimationAssetData";
        v130 = qword_1EE195000;
        if (!qword_1EE195000)
        {
          v130 = re::allocInfo_SRTSampledAnimationAssetData(inited);
          qword_1EE195000 = v130;
          re::initInfo_SRTSampledAnimationAssetData(v130, v131, v132, v133);
        }

        qword_1EE18B188 = v130;
        unk_1EE18B190 = 0;
        qword_1EE18B198 = 33;
        dword_1EE18B1A0 = 0;
        qword_1EE18B1A8 = "SkeletalPoseSampledAnimationAssetData";
        v134 = qword_1EE195018;
        if (!qword_1EE195018)
        {
          v134 = re::allocInfo_SkeletalPoseSampledAnimationAssetData(inited);
          qword_1EE195018 = v134;
          re::initInfo_SkeletalPoseSampledAnimationAssetData(v134, v135, v136, v137);
        }

        qword_1EE18B1B0 = v134;
        *algn_1EE18B1B8 = 0;
        qword_1EE18B1C0 = 34;
        dword_1EE18B1C8 = 0;
        qword_1EE18B1D0 = "OrbitAnimationAssetData";
        v138 = qword_1EE195048;
        if (!qword_1EE195048)
        {
          v138 = re::allocInfo_OrbitAnimationAssetData(inited);
          qword_1EE195048 = v138;
          re::initInfo_OrbitAnimationAssetData(v138, v139, v140, v141);
        }

        qword_1EE18B1D8 = v138;
        unk_1EE18B1E0 = 0;
        qword_1EE18B1E8 = 37;
        dword_1EE18B1F0 = 0;
        qword_1EE18B1F8 = "AnimationStateTimelineAssetData";
        v142 = qword_1EE195060;
        if (!qword_1EE195060)
        {
          v142 = re::allocInfo_AnimationStateTimelineAssetData(inited);
          qword_1EE195060 = v142;
          re::initInfo_AnimationStateTimelineAssetData(v142, v143, v144, v145);
        }

        qword_1EE18B200 = v142;
        *algn_1EE18B208 = 0;
        qword_1EE18B210 = 38;
        dword_1EE18B218 = 0;
        qword_1EE18B220 = "FloatAnimationBlendTreeAssetData";
        v146 = qword_1EE195078;
        if (!qword_1EE195078)
        {
          v146 = re::allocInfo_FloatAnimationBlendTreeAssetData(inited);
          qword_1EE195078 = v146;
          re::initInfo_FloatAnimationBlendTreeAssetData(v146, v147, v148, v149);
        }

        qword_1EE18B228 = v146;
        unk_1EE18B230 = 0;
        qword_1EE18B238 = 39;
        dword_1EE18B240 = 0;
        qword_1EE18B248 = "DoubleAnimationBlendTreeAssetData";
        v150 = qword_1EE195090;
        if (!qword_1EE195090)
        {
          v150 = re::allocInfo_DoubleAnimationBlendTreeAssetData(inited);
          qword_1EE195090 = v150;
          re::initInfo_DoubleAnimationBlendTreeAssetData(v150, v151, v152, v153);
        }

        qword_1EE18B250 = v150;
        *algn_1EE18B258 = 0;
        qword_1EE18B260 = 40;
        dword_1EE18B268 = 0;
        qword_1EE18B270 = "Vector2FAnimationBlendTreeAssetData";
        v154 = qword_1EE1950A8;
        if (!qword_1EE1950A8)
        {
          v154 = re::allocInfo_Vector2FAnimationBlendTreeAssetData(inited);
          qword_1EE1950A8 = v154;
          re::initInfo_Vector2FAnimationBlendTreeAssetData(v154, v155, v156, v157);
        }

        qword_1EE18B278 = v154;
        unk_1EE18B280 = 0;
        qword_1EE18B288 = 41;
        dword_1EE18B290 = 0;
        qword_1EE18B298 = "Vector3FAnimationBlendTreeAssetData";
        v158 = qword_1EE1950C0;
        if (!qword_1EE1950C0)
        {
          v158 = re::allocInfo_Vector3FAnimationBlendTreeAssetData(inited);
          qword_1EE1950C0 = v158;
          re::initInfo_Vector3FAnimationBlendTreeAssetData(v158, v159, v160, v161);
        }

        qword_1EE18B2A0 = v158;
        *algn_1EE18B2A8 = 0;
        qword_1EE18B2B0 = 42;
        dword_1EE18B2B8 = 0;
        qword_1EE18B2C0 = "Vector4FAnimationBlendTreeAssetData";
        v162 = qword_1EE1950D8;
        if (!qword_1EE1950D8)
        {
          v162 = re::allocInfo_Vector4FAnimationBlendTreeAssetData(inited);
          qword_1EE1950D8 = v162;
          re::initInfo_Vector4FAnimationBlendTreeAssetData(v162, v163, v164, v165);
        }

        qword_1EE18B2C8 = v162;
        unk_1EE18B2D0 = 0;
        qword_1EE18B2D8 = 43;
        dword_1EE18B2E0 = 0;
        qword_1EE18B2E8 = "QuaternionFAnimationBlendTreeAssetData";
        v166 = qword_1EE1950F0;
        if (!qword_1EE1950F0)
        {
          v166 = re::allocInfo_QuaternionFAnimationBlendTreeAssetData(inited);
          qword_1EE1950F0 = v166;
          re::initInfo_QuaternionFAnimationBlendTreeAssetData(v166, v167, v168, v169);
        }

        qword_1EE18B2F0 = v166;
        *algn_1EE18B2F8 = 0;
        qword_1EE18B300 = 44;
        dword_1EE18B308 = 0;
        qword_1EE18B310 = "SRTAnimationBlendTreeAssetData";
        v170 = qword_1EE195108;
        if (!qword_1EE195108)
        {
          v170 = re::allocInfo_SRTAnimationBlendTreeAssetData(inited);
          qword_1EE195108 = v170;
          re::initInfo_SRTAnimationBlendTreeAssetData(v170, v171, v172, v173);
        }

        qword_1EE18B318 = v170;
        unk_1EE18B320 = 0;
        qword_1EE18B328 = 45;
        dword_1EE18B330 = 0;
        qword_1EE18B338 = "SkeletalPoseAnimationBlendTreeAssetData";
        v174 = qword_1EE195120;
        if (!qword_1EE195120)
        {
          v174 = re::allocInfo_SkeletalPoseAnimationBlendTreeAssetData(inited);
          qword_1EE195120 = v174;
          re::initInfo_SkeletalPoseAnimationBlendTreeAssetData(v174, v175, v176, v177);
        }

        qword_1EE18B340 = v174;
        *algn_1EE18B348 = 0;
        qword_1EE18B350 = 46;
        dword_1EE18B358 = 0;
        qword_1EE18B360 = "EventTimelineAssetData";
        v178 = qword_1EE1951F0;
        if (!qword_1EE1951F0)
        {
          v178 = re::allocInfo_EventTimelineAssetData(inited);
          qword_1EE1951F0 = v178;
          re::initInfo_EventTimelineAssetData(v178, v179, v180, v181);
        }

        qword_1EE18B368 = v178;
        unk_1EE18B370 = 0;
        qword_1EE18B378 = 48;
        dword_1EE18B380 = 0;
        qword_1EE18B388 = "BlendShapeWeightsAnimationAssetData";
        v182 = qword_1EE194E80;
        if (!qword_1EE194E80)
        {
          v182 = re::allocInfo_BlendShapeWeightsAnimationAssetData(inited);
          qword_1EE194E80 = v182;
          re::initInfo_BlendShapeWeightsAnimationAssetData(v182, v183, v184, v185);
        }

        qword_1EE18B390 = v182;
        *algn_1EE18B398 = 0;
        qword_1EE18B3A0 = 50;
        dword_1EE18B3A8 = 0;
        qword_1EE18B3B0 = "BlendShapeWeightsSampledAnimationAssetData";
        v186 = qword_1EE195030;
        if (!qword_1EE195030)
        {
          v186 = re::allocInfo_BlendShapeWeightsSampledAnimationAssetData(inited);
          qword_1EE195030 = v186;
          re::initInfo_BlendShapeWeightsSampledAnimationAssetData(v186, v187, v188, v189);
        }

        qword_1EE18B3B8 = v186;
        unk_1EE18B3C0 = 0;
        qword_1EE18B3C8 = 59;
        dword_1EE18B3D0 = 0;
        qword_1EE18B3D8 = "BlendShapeWeightsAnimationClipAssetData";
        v190 = qword_1EE194DA8;
        if (!qword_1EE194DA8)
        {
          v190 = re::allocInfo_BlendShapeWeightsAnimationClipAssetData(inited);
          qword_1EE194DA8 = v190;
          re::initInfo_BlendShapeWeightsAnimationClipAssetData(v190, v191, v192, v193);
        }

        qword_1EE18B3E0 = v190;
        *algn_1EE18B3E8 = 0;
        qword_1EE18B3F0 = 60;
        dword_1EE18B3F8 = 0;
        qword_1EE18B400 = "BlendShapeWeightsKeyframeAnimationAssetData";
        v194 = qword_1EE194F58;
        if (!qword_1EE194F58)
        {
          v194 = re::allocInfo_BlendShapeWeightsKeyframeAnimationAssetData(inited);
          qword_1EE194F58 = v194;
          re::initInfo_BlendShapeWeightsKeyframeAnimationAssetData(v194, v195, v196, v197);
        }

        qword_1EE18B408 = v194;
        unk_1EE18B410 = 0;
        qword_1EE18B418 = 61;
        dword_1EE18B420 = 0;
        __cxa_guard_release(&qword_1EE194C50);
      }
    }

    dword_1EE195258 = 49;
    qword_1EE195260 = &qword_1EE18AC80;
  }
}

void *re::allocInfo_TimelineAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194C58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18C998, "TimelineAssetData");
    __cxa_guard_release(&qword_1EE194C58);
  }

  return &unk_1EE18C998;
}

void re::initInfo_TimelineAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v30[0] = 0x113B1170876036B2;
  v30[1] = "TimelineAssetData";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&qword_1EE194C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194C60))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_TimelineType(1, v8);
    v10 = (*(*v7 + 32))(v7, 32, 8);
    *v10 = 3;
    *(v10 + 8) = v9;
    *(v10 + 16) = 0;
    *(v10 + 24) = 8;
    qword_1EE195530 = v10;
    v11 = re::introspectionAllocator();
    re::introspectionTable_TimelineAssetData(v11);
    v12 = (*(*v11 + 32))(v11, 16, 8);
    *v12 = 2;
    *(v12 + 8) = &dword_1EE195258;
    qword_1EE195538 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_int(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "animationLayer";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0xC00000001;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE195540 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::introspect_FillMode(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "fillMode";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x1000000002;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE195548 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::IntrospectionInfo<re::StringID>::get(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "name";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x1800000003;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE195550 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::IntrospectionInfo<re::DynamicString>::get(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "targetPath";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x2800000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE195558 = v28;
    __cxa_guard_release(&qword_1EE194C60);
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE195530;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v29 = v31;
}

void *re::allocInfo_TimelineClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194C70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CA28, "TimelineClipAssetData");
    __cxa_guard_release(&qword_1EE194C70);
  }

  return &unk_1EE18CA28;
}

void re::initInfo_TimelineClipAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v51[0] = 0x180D6CB9D5D9D4D2;
  v51[1] = "TimelineClipAssetData";
  if (v51[0])
  {
    if (v51[0])
    {
    }
  }

  *(this + 2) = v52;
  if ((atomic_load_explicit(&qword_1EE194C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194C78))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE194C68;
    if (!qword_1EE194C68)
    {
      v9 = re::allocInfo_TimelineAssetData(v7);
      qword_1EE194C68 = v9;
      re::initInfo_TimelineAssetData(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "TimelineAssetData";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18C478 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_AssetHandle(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "clipSource";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18C480 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::IntrospectionInfo<re::Optional<double>>::get(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "clipStart";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x6000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C488 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<double>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "clipEnd";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x7000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE18C490 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_double(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "clipOffset";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x8000000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE18C498 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_BOOL(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "clipReversed";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x8800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE18C4A0 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_double(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "delay";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x9000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE18C4A8 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::IntrospectionInfo<re::Optional<double>>::get(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "duration";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x9800000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE18C4B0 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::introspect_float(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "speed";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0xA800000008;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE18C4B8 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_LoopBehavior(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "loopBehavior";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0xAC00000009;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE18C4C0 = v49;
    __cxa_guard_release(&qword_1EE194C78);
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE18C478;
  *(this + 9) = re::internal::defaultConstruct<re::TimelineClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TimelineClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::TimelineClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::TimelineClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v50 = v52;
}

uint64_t *re::IntrospectionInfo<re::Optional<double>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionOptionalBase::IntrospectionOptionalBase(&re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info) = &unk_1F5CBE710;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_double(1, a2);
  if ((re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info, 0);
    qword_1EE1864E0 = 0x100000000DLL;
    dword_1EE1864E8 = v8;
    word_1EE1864EC = 0;
    *&xmmword_1EE1864F0 = 0;
    *(&xmmword_1EE1864F0 + 1) = 0xFFFFFFFFLL;
    qword_1EE186500 = v7;
    unk_1EE186508 = 0;
    re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info = &unk_1F5CBE710;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&v15, &re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE1864F0 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::Optional<double>>::get(BOOL)::info;
}

uint64_t re::internal::defaultConstruct<re::TimelineClipAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 1);
  *result = &unk_1F5CBE660;
  *(result + 112) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 96) = 0;
  *(result + 168) = 1065353216;
  *(result + 172) = 0;
  return result;
}

void re::internal::defaultDestruct<re::TimelineClipAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 9));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit((a3 + 5));

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::TimelineClipAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 1);
  *result = &unk_1F5CBE660;
  *(result + 112) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 96) = 0;
  *(result + 168) = 1065353216;
  *(result + 172) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::TimelineClipAssetData>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 9));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 5));

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_SkeletalPoseAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194C88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194C88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CAB8, "SkeletalPoseAssetData");
    __cxa_guard_release(&qword_1EE194C88);
  }

  return &unk_1EE18CAB8;
}

void re::initInfo_SkeletalPoseAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x1C1B4EE87EA175E0;
  v20[1] = "SkeletalPoseAssetData";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE194C90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194C90))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "jointTransforms";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE195268 = v10;
    v11 = re::introspectionAllocator();
    v17 = re::introspect_SkeletalPose(1, v12, v13, v14, v15, v16);
    v18 = (*(*v11 + 32))(v11, 64, 8);
    *v18 = 6;
    *(v18 + 8) = 2;
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = re::skeletalPoseAssetDataUpgrade;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    qword_1EE195270 = v18;
    __cxa_guard_release(&qword_1EE194C90);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195268;
  *(this + 9) = re::internal::defaultConstruct<re::SkeletalPoseAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkeletalPoseAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkeletalPoseAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkeletalPoseAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::SkeletalPoseAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void *re::internal::defaultConstructV2<re::SkeletalPoseAssetData>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void *re::allocInfo_BlendShapeWeightsAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194CA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CB48, "BlendShapeWeightsAssetData");
    __cxa_guard_release(&qword_1EE194CA0);
  }

  return &unk_1EE18CB48;
}

void re::initInfo_BlendShapeWeightsAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0x881012FFB378BC1ELL;
  v12[1] = "BlendShapeWeightsAssetData";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE194CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194CB0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "weights";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE194CA8 = v10;
    __cxa_guard_release(&qword_1EE194CB0);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE194CA8;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeWeightsAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeWeightsAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeWeightsAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeWeightsAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

void re::internal::defaultConstruct<re::BlendShapeWeightsAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void *re::internal::defaultConstructV2<re::BlendShapeWeightsAssetData>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void *re::allocInfo_TimelineGroupAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194CC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194CC0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CBD8, "TimelineGroupAssetData");
    __cxa_guard_release(&qword_1EE194CC0);
  }

  return &unk_1EE18CBD8;
}

void re::initInfo_TimelineGroupAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0x81187C4B31D4B78;
  v19[1] = "TimelineGroupAssetData";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE194CC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194CC8))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE194C68;
    if (!qword_1EE194C68)
    {
      v9 = re::allocInfo_TimelineAssetData(v7);
      qword_1EE194C68 = v9;
      re::initInfo_TimelineAssetData(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "TimelineAssetData";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE195278 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "timelines";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE195280 = v17;
    __cxa_guard_release(&qword_1EE194CC8);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE195278;
  *(this + 9) = re::internal::defaultConstruct<re::TimelineGroupAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TimelineGroupAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::TimelineGroupAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::TimelineGroupAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

uint64_t re::internal::defaultConstruct<re::TimelineGroupAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::TimelineAssetData::TimelineAssetData(a3, 2);
  *result = &unk_1F5CBE6B8;
  *(result + 104) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 96) = 0;
  return result;
}

void re::internal::defaultDestruct<re::TimelineGroupAssetData>(uint64_t a1, uint64_t a2, void *a3)
{
  re::DynamicArray<re::AssetHandle>::deinit((a3 + 9));
  *a3 = &unk_1F5CC3608;
  re::DynamicString::deinit((a3 + 5));

  re::StringID::destroyString((a3 + 3));
}

uint64_t re::internal::defaultConstructV2<re::TimelineGroupAssetData>(uint64_t a1)
{
  result = re::TimelineAssetData::TimelineAssetData(a1, 2);
  *result = &unk_1F5CBE6B8;
  *(result + 104) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 96) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::TimelineGroupAssetData>(void *a1)
{
  re::DynamicArray<re::AssetHandle>::deinit((a1 + 9));
  *a1 = &unk_1F5CC3608;
  re::DynamicString::deinit((a1 + 5));

  re::StringID::destroyString((a1 + 3));
}

void *re::allocInfo_FloatAnimationClipAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE194CD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194CD8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18CC68, "FloatAnimationClipAssetData");
    __cxa_guard_release(&qword_1EE194CD8);
  }

  return &unk_1EE18CC68;
}

void re::initInfo_FloatAnimationClipAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v55[0] = 0x81043F4DEFE98304;
  v55[1] = "FloatAnimationClipAssetData";
  if (v55[0])
  {
    if (v55[0])
    {
    }
  }

  *(this + 2) = v56;
  if ((atomic_load_explicit(&qword_1EE194CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE194CE0))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE194C68;
    if (!qword_1EE194C68)
    {
      v9 = re::allocInfo_TimelineAssetData(v7);
      qword_1EE194C68 = v9;
      re::initInfo_TimelineAssetData(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "TimelineAssetData";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 3;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE18C568 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_BOOL(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "isAdditive";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x4800000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE18C570 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_AssetHandle(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "clipSource";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE18C578 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::Optional<double>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "clipStart";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x6800000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE18C580 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::IntrospectionInfo<re::Optional<double>>::get(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "clipEnd";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x7800000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE18C588 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_double(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "clipOffset";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x8800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE18C590 = v33;
    v34 = re::introspectionAllocator();
    v36 = re::introspect_BOOL(1, v35);
    v37 = (*(*v34 + 32))(v34, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "clipReversed";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x9000000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE18C598 = v37;
    v38 = re::introspectionAllocator();
    v40 = re::introspect_double(1, v39);
    v41 = (*(*v38 + 32))(v38, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "delay";
    *(v41 + 16) = v40;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x9800000007;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE18C5A0 = v41;
    v42 = re::introspectionAllocator();
    v44 = re::IntrospectionInfo<re::Optional<double>>::get(1, v43);
    v45 = (*(*v42 + 32))(v42, 72, 8);
    *v45 = 1;
    *(v45 + 8) = "duration";
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    *(v45 + 32) = 0xA000000008;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 0;
    *(v45 + 64) = 0;
    qword_1EE18C5A8 = v45;
    v46 = re::introspectionAllocator();
    v48 = re::introspect_float(1, v47);
    v49 = (*(*v46 + 32))(v46, 72, 8);
    *v49 = 1;
    *(v49 + 8) = "speed";
    *(v49 + 16) = v48;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0xB000000009;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    qword_1EE18C5B0 = v49;
    v50 = re::introspectionAllocator();
    v52 = re::introspect_LoopBehavior(1, v51);
    v53 = (*(*v50 + 32))(v50, 72, 8);
    *v53 = 1;
    *(v53 + 8) = "loopBehavior";
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0xB40000000ALL;
    *(v53 + 40) = 0;
    *(v53 + 48) = 0;
    *(v53 + 56) = 0;
    *(v53 + 64) = 0;
    qword_1EE18C5B8 = v53;
    __cxa_guard_release(&qword_1EE194CE0);
  }

  *(this + 2) = 0xB800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 11;
  *(this + 8) = &qword_1EE18C568;
  *(this + 9) = re::internal::defaultConstruct<re::FloatAnimationClipAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::FloatAnimationClipAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::FloatAnimationClipAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::FloatAnimationClipAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v54 = v56;
}