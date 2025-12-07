uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackAddFence(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 2);
    if (v5 > a2)
    {
      v6 = (*(v4 + 4) + 40 * a2);
      *buf = 0x4425D6C2BB3546C6;
      *&buf[8] = "FenceDeformer";
      *v14 = &REMeshDeformationDefinitionAssetBuilderDeformationStackAddFence::kDefaultDeformerOptions;
      *&v14[8] = 257;
      *&v21 = 0;
      v20 = 0uLL;
      re::FixedArray<unsigned char>::copy(&v20, v14);
      re::DynamicArray<re::DeformationDefinition>::add(v6, buf);
      v7 = v20;
      if (v20)
      {
        if (*(&v20 + 1))
        {
          v7 = (*(*v20 + 40))();
          *(&v20 + 1) = 0;
          *&v21 = 0;
        }

        *&v20 = 0;
      }

      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      return *(v6 + 2) - 1;
    }

    v13 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    v10 = MEMORY[0x1E69E9C10];
    *v14 = 136315906;
    *&v14[4] = "operator[]";
    *&v14[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    *&v14[14] = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v11, &v13, buf, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v14, 38, v12);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v9 = CoreRELog::log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
  }

  return -1;
}

BOOL REMeshDeformationDefinitionAssetBuilderDeformerIsFence(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_8:
      v12 = CoreRELog::log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformer index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = (*(v8 + 32) + 40 * a3);
  if (*v9 >> 1 != 0x2212EB615D9AA363)
  {
    return 0;
  }

  v10 = v9[1];
  return v10 == "FenceDeformer" || strcmp(v10, "FenceDeformer") == 0;
}

uint64_t REMeshDeformationDefinitionAssetBuilderFenceGetFenceIDName(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_32:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
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

    v22 = 797;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v7;
    _os_log_send_and_compose_impl(v16, &v18, buf, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Invalid deformer index: %zu";
    goto LABEL_27;
  }

  v9 = (*(v8 + 32) + 40 * a3);
  if (*v9 >> 1 != 0x2212EB615D9AA363 || (v10 = v9[1], v10 != "FenceDeformer") && strcmp(v10, "FenceDeformer"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Not a fence deformer index: %zu";
LABEL_27:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_18:

    return 0;
  }

  if (v9[3] != 257)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Unexpected fence deformer options size for deformer index: %zu";
    goto LABEL_27;
  }

  return v9[4];
}

uint64_t REMeshDeformationDefinitionAssetBuilderFenceSetFenceIDName(uint64_t a1, unint64_t a2, unint64_t a3, char *__s)
{
  v35 = *MEMORY[0x1E69E9840];
  if (strlen(__s) >= 0x80)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = 128;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Fence ID name is longer than max size of %zu", buf, 0xCu);
    }
  }

  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_18:
      v16 = CoreRELog::log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_38:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_18;
  }

  v10 = *(v9 + 2);
  if (v10 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *buf = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v10;
    _os_log_send_and_compose_impl(v19, &v21, buf, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  v11 = *(v9 + 4) + 40 * a2;
  if (*(v11 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v15 = "Invalid deformer index: %zu";
    goto LABEL_33;
  }

  v12 = *(v11 + 32) + 40 * a3;
  if (*v12 >> 1 != 0x2212EB615D9AA363 || (v13 = *(v12 + 8), v13 != "FenceDeformer") && strcmp(v13, "FenceDeformer"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v15 = "Not a fence deformer index: %zu";
LABEL_33:
    _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
LABEL_24:

    return 0;
  }

  if (*(v12 + 24) != 257)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v15 = "Unexpected fence deformer options size for deformer index: %zu";
    goto LABEL_33;
  }

  strlcpy(*(v12 + 32), __s, 0x80uLL);
  return 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderFenceGetWaitFenceIDName(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_32:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
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

    v22 = 797;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v7;
    _os_log_send_and_compose_impl(v16, &v18, buf, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Invalid deformer index: %zu";
    goto LABEL_27;
  }

  v9 = (*(v8 + 32) + 40 * a3);
  if (*v9 >> 1 != 0x2212EB615D9AA363 || (v10 = v9[1], v10 != "FenceDeformer") && strcmp(v10, "FenceDeformer"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Not a fence deformer index: %zu";
LABEL_27:
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_18:

    return 0;
  }

  if (v9[3] != 257)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Unexpected fence deformer options size for deformer index: %zu";
    goto LABEL_27;
  }

  return v9[4] + 128;
}

uint64_t REMeshDeformationDefinitionAssetBuilderFenceSetWaitFenceIDName(uint64_t a1, unint64_t a2, unint64_t a3, char *__s)
{
  v36 = *MEMORY[0x1E69E9840];
  if (strlen(__s) >= 0x80)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = 128;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Wait fence ID name is longer than max size of %zu", buf, 0xCu);
    }
  }

  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_18:
      v16 = CoreRELog::log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_38:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_18;
  }

  v10 = *(v9 + 2);
  if (v10 <= a2)
  {
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *buf = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v20, &v22, buf, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  v11 = *(v9 + 4) + 40 * a2;
  if (*(v11 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v15 = "Invalid deformer index: %zu";
    goto LABEL_33;
  }

  v12 = (*(v11 + 32) + 40 * a3);
  if (*v12 >> 1 != 0x2212EB615D9AA363 || (v13 = v12[1], v13 != "FenceDeformer") && strcmp(v13, "FenceDeformer"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v15 = "Not a fence deformer index: %zu";
LABEL_33:
    _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
LABEL_24:

    return 0;
  }

  if (v12[3] != 257)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v15 = "Unexpected fence deformer options size for deformer index: %zu";
    goto LABEL_33;
  }

  v18 = v12[4];
  *(v18 + 256) = 13;
  strlcpy((v18 + 128), __s, 0x80uLL);
  return 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackAddOpenSubdivComputeSteps(uint64_t a1, unint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 2);
    if (v5 > a2)
    {
      v6 = (*(v4 + 4) + 40 * a2);
      *buf = 0xA6B838C1BF1BB512;
      *&buf[8] = "OpenSubdivViewIndependentComputeStep";
      *&v25 = 0;
      v24 = 0uLL;
      re::DynamicArray<re::DeformationDefinition>::add(v6, buf);
      v7 = v24;
      if (v24)
      {
        if (*(&v24 + 1))
        {
          v7 = (*(*v24 + 40))();
          *(&v24 + 1) = 0;
          *&v25 = 0;
        }

        *&v24 = 0;
      }

      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      *buf = 0xC6F7B7A81D0D03C8;
      *&buf[8] = "OpenSubdivViewDependentComputeStep";
      *&v25 = 0;
      v24 = 0uLL;
      re::DynamicArray<re::DeformationDefinition>::add(v6, buf);
      v8 = v24;
      if (v24)
      {
        if (*(&v24 + 1))
        {
          v8 = (*(*v24 + 40))();
          *(&v24 + 1) = 0;
          *&v25 = 0;
        }

        *&v24 = 0;
      }

      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      return *(v6 + 2) - 1;
    }

    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v12, &v14, buf, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_26:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
  }

  return -1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackIsOpenSubdivComputeSteps(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_16:
      v15 = CoreRELog::log;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_21:

        return 0;
      }

      *buf = 134217984;
      *&buf[4] = a2;
      v17 = "Invalid deformation stack index: %zu";
LABEL_29:
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
      goto LABEL_21;
    }

LABEL_35:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_16;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *buf = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 797;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v7;
    _os_log_send_and_compose_impl(v20, &v22, buf, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
    goto LABEL_35;
  }

  v8 = *(v6 + 32) + 40 * a2;
  v9 = *(v8 + 16);
  if (v9 <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v17 = "Invalid deformer index: %zu";
    goto LABEL_29;
  }

  v10 = *(v8 + 32);
  v11 = (v10 + 40 * a3);
  if (*v11 >> 1 != 0x535C1C60DF8DDA89)
  {
    return 0;
  }

  v12 = v11[1];
  if (v12 != "OpenSubdivViewIndependentComputeStep")
  {
    if (strcmp(v12, "OpenSubdivViewIndependentComputeStep"))
    {
      return 0;
    }
  }

  if (a3 + 1 >= v9)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v16 = "deformer index: %zu is OpenSubdivViewIndependentComputeStep, but is not followed by dependent step. No more deformers in stack.";
LABEL_27:
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
    goto LABEL_21;
  }

  v13 = (v10 + 40 * (a3 + 1));
  if (*v13 >> 1 != 0x637BDBD40E8681E4 || (v14 = v13[1], v14 != "OpenSubdivViewDependentComputeStep") && strcmp(v14, "OpenSubdivViewDependentComputeStep"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v16 = "deformer index: %zu is OpenSubdivViewIndependentComputeStep, but is not followed by dependent step";
    goto LABEL_27;
  }

  return 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderDeformationStackAddWrap(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  {
    v5 = *(v4 + 2);
    if (v5 > a2)
    {
      v6 = (*(v4 + 4) + 40 * a2);
      *buf = 0x4005A4B50800FD78;
      *&buf[8] = "WrapDeformer";
      *v14 = &REMeshDeformationDefinitionAssetBuilderDeformationStackAddWrap::kDefaultDeformerOptions;
      *&v14[8] = 1;
      *&v21 = 0;
      v20 = 0uLL;
      re::FixedArray<unsigned char>::copy(&v20, v14);
      re::DynamicArray<re::DeformationDefinition>::add(v6, buf);
      v7 = v20;
      if (v20)
      {
        if (*(&v20 + 1))
        {
          v7 = (*(*v20 + 40))();
          *(&v20 + 1) = 0;
          *&v21 = 0;
        }

        *&v20 = 0;
      }

      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      return *(v6 + 2) - 1;
    }

    v13 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    v10 = MEMORY[0x1E69E9C10];
    *v14 = 136315906;
    *&v14[4] = "operator[]";
    *&v14[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    *&v14[14] = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v11, &v13, buf, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v14, 38, v12);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  if (CoreRELog::onceToken != -1)
  {
LABEL_19:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v9 = CoreRELog::log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
  }

  return -1;
}

BOOL REMeshDeformationDefinitionAssetBuilderDeformerIsWrap(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_8:
      v12 = CoreRELog::log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_22:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, buf, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformer index: %zu", buf, 0xCu);
    }

    return 0;
  }

  v9 = (*(v8 + 32) + 40 * a3);
  if (*v9 >> 1 != 0x2002D25A84007EBCLL)
  {
    return 0;
  }

  v10 = v9[1];
  return v10 == "WrapDeformer" || strcmp(v10, "WrapDeformer") == 0;
}

uint64_t REMeshDeformationDefinitionAssetBuilderWrapGetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_33:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v7 = *(v6 + 16);
  if (v7 <= a2)
  {
    v19 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *buf = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 797;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v7;
    _os_log_send_and_compose_impl(v17, &v19, buf, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_33;
  }

  v8 = *(v6 + 32) + 40 * a2;
  if (*(v8 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v12 = "Invalid deformer index: %zu";
  }

  else
  {
    v9 = *(v8 + 32) + 40 * a3;
    if (*v9 >> 1 == 0x2002D25A84007EBCLL && ((v10 = *(v9 + 8), v10 == "WrapDeformer") || !strcmp(v10, "WrapDeformer")))
    {
      if (*(v9 + 24) == 1)
      {
        v14 = **(v9 + 32);
        return v14 & 1;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Unexpected wrap deformer options size for deformer index: %zu";
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v11 = CoreRELog::log;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      *&buf[4] = a3;
      v12 = "Not a wrap deformer index: %zu";
    }
  }

  _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_18:

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t REMeshDeformationDefinitionAssetBuilderWrapSetForceCPU(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v34 = *MEMORY[0x1E69E9840];
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_12:
      v15 = CoreRELog::log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Invalid deformation stack index: %zu", buf, 0xCu);
      }

      return 0;
    }

LABEL_32:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_12;
  }

  v9 = *(v8 + 2);
  if (v9 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *buf = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v9;
    _os_log_send_and_compose_impl(v18, &v20, buf, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  v10 = *(v8 + 4) + 40 * a2;
  if (*(v10 + 16) <= a3)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Invalid deformer index: %zu";
    goto LABEL_27;
  }

  v11 = *(v10 + 32) + 40 * a3;
  if (*v11 >> 1 != 0x2002D25A84007EBCLL || (v12 = *(v11 + 8), v12 != "WrapDeformer") && strcmp(v12, "WrapDeformer"))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Not a wrap deformer index: %zu";
LABEL_27:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
LABEL_18:

    return 0;
  }

  if (*(v11 + 24) != 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    *&buf[4] = a3;
    v14 = "Unexpected wrap deformer options size for deformer index: %zu";
    goto LABEL_27;
  }

  **(v11 + 32) = a4;
  return 1;
}

_anonymous_namespace_ *anonymous namespace::MeshDeformationDefinitionAssetBuilder::init(_anonymous_namespace_::MeshDeformationDefinitionAssetBuilder *this)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 80, 8);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v6[0] = &unk_1F5D2B6B8;
  v6[3] = v6;
  v7 = v3;
  v8[3] = v8;
  v8[0] = &unk_1F5D2B6B8;
  std::unique_ptr<re::MeshDeformationAsset,std::function<void ()(re::MeshDeformationAsset*)>>::operator=[abi:nn200100](this + 6, &v7);
  std::unique_ptr<re::MeshDeformationAsset,std::function<void ()(re::MeshDeformationAsset*)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(re::MeshDeformationAsset *)>::~__value_func[abi:nn200100](v6);
  if (result)
  {
    v5 = result;
  }

  return result;
}

uint64_t *std::unique_ptr<re::MeshDeformationAsset,std::function<void ()(re::MeshDeformationAsset*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::MeshDeformationAsset *)>::operator()((a1 + 1), v5);
  }

  v6 = a1[4];
  a1[4] = 0;
  if (v6 == a1 + 1)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = a2[4];
  if (v7)
  {
    if (v7 == a2 + 1)
    {
      a1[4] = (a1 + 1);
      (*(*a2[4] + 24))(a2[4], a1 + 1);
    }

    else
    {
      a1[4] = v7;
      a2[4] = 0;
    }
  }

  else
  {
    a1[4] = 0;
  }

  return a1;
}

uint64_t std::__function::__func<anonymous namespace::MutableAssetRef<re::MeshDeformationAsset>::init(void)::{lambda(re::MeshDeformationAsset*)#1},std::allocator<anonymous namespace::MutableAssetRef<re::MeshDeformationAsset>::init(void)::{lambda(re::MeshDeformationAsset*)#1}>,void ()(re::MeshDeformationAsset*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<anonymous namespace::MutableAssetRef<re::MeshDeformationAsset>::get(void)::{lambda(re::MeshDeformationAsset*)#1},std::allocator<anonymous namespace::MutableAssetRef<re::MeshDeformationAsset>::get(void)::{lambda(re::MeshDeformationAsset*)#1}>,void ()(re::MeshDeformationAsset*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::MeshDeformationDefinitionAssetBuilder::~MeshDeformationDefinitionAssetBuilder(_anonymous_namespace_::MeshDeformationDefinitionAssetBuilder *this)
{
  *this = &unk_1F5D2B7B8;
  std::unique_ptr<re::MeshDeformationAsset,std::function<void ()(re::MeshDeformationAsset*)>>::~unique_ptr[abi:nn200100](this + 6);
  re::AssetHandle::~AssetHandle((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x1E6906520);
}

unint64_t *std::__copy_impl::operator()[abi:nn200100]<re::MeshDeformationIndex const*,re::MeshDeformationIndex const*,re::MeshDeformationIndex*>(unint64_t *result, unint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 24);
    v5 = (result + 3);
    do
    {
      *(v4 - 24) = *(v5 - 24);
      re::StringID::operator=(v4 - 2, v5 - 2);
      result = re::StringID::operator=(v4, v5);
      v4[2] = v5[2];
      v4 += 6;
      v6 = (v5 + 3);
      v5 += 6;
    }

    while (v6 != a2);
  }

  return result;
}

void REAssetDisableNetworkSyncing(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v1);
  re::AssetHandle::setNetworkSharingMode(v1, 2);
  re::AssetHandle::~AssetHandle(v1);
}

BOOL REAssetSetNetworkSharingMode(uint64_t a1, int a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v5);
  v3 = re::AssetHandle::setNetworkSharingMode(v5, a2);
  re::AssetHandle::~AssetHandle(v5);
  return v3;
}

uint64_t REAssetIsMemoryAsset(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = *(v3[1] + 328);
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

BOOL REAssetIsMemoryAssetWithNetworkSyncingEnabled(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  isMemoryAssetWithNetworkingSyncingEnabled = re::AssetHandle::isMemoryAssetWithNetworkingSyncingEnabled(v3);
  re::AssetHandle::~AssetHandle(v3);
  return isMemoryAssetWithNetworkingSyncingEnabled;
}

id *_RETestingTextureAssetGetUnderlyingTexture(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v5);
  v1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v5);
  if (v1)
  {
    if (*(v1 + 30))
    {
      v1 = 0;
    }

    else
    {
      v1 = v1[14];
    }
  }

  v2 = v1;
  v3 = v2;
  if (v2)
  {
  }

  re::AssetHandle::~AssetHandle(v5);

  return v3;
}

id _RETestingTextureAssetGetUnderlyingLegacyTexture(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v6);
  if (v1 && *(v1 + 104) && *(v1 + 96))
  {
    re::TextureHandle::unsynchronizedMetalTexture(&v5, (v1 + 96));
    v2 = v5;
    v3 = v2;
    if (v2)
    {
    }
  }

  else
  {
    v3 = 0;
  }

  re::AssetHandle::~AssetHandle(v6);

  return v3;
}

uint64_t _RETestingTextureAssetGetPixelFormat(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = *(re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v3) + 344);
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

uint64_t _RETestingTextureAssetGetImportReport(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = *(re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v3) + 128);
  re::AssetHandle::~AssetHandle(v3);
  return v1 & 0x3FF;
}

CFTypeRef REAssetGetType(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = CFStringCreateWithCString(0, **(v4[1] + 280), 0x8000100u);
  v2 = CFAutorelease(v1);
  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t REAssetGetAssetId(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::assetInfo(v4);
  if (v1[10] == -1)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1[10];
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

CFStringRef REAssetCopyDescription(uint64_t a1, char a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v9);
  re::AssetHandle::getDescription(v9, a2, &v6);
  if (v7)
  {
    v3 = *&v8[7];
  }

  else
  {
    v3 = v8;
  }

  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  re::AssetHandle::~AssetHandle(v9);
  return v4;
}

uint64_t REAssetComputeEstimatedMemorySize(uint64_t a1, re::StringID *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v3 = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  v4 = re::AssetManager::assetByteSize(v3, v6);
  re::AssetHandle::~AssetHandle(v6);
  return v4;
}

uint64_t REAssetComputeNonSharedMemorySize(uint64_t a1, re::StringID *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v3 = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  v4 = re::AssetManager::assetNonSharedDataByteSize(v3, v6);
  re::AssetHandle::~AssetHandle(v6);
  return v4;
}

uint64_t REAssetSerializeToJSON(uint64_t a1, re::FileStreamWriter *a2)
{
  v23[5] = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, &v20);
  if (!v21)
  {
    v5 = 0;
    v3 = 0;
    goto LABEL_5;
  }

  v3 = *(v21 + 280);
  v4 = atomic_load((v21 + 896));
  if (v4 != 2)
  {
    v5 = v21;
LABEL_5:
    re::AssetHandle::loadNow(v5, 0);
  }

  if (v21)
  {
    v6 = atomic_load((v21 + 896));
    if (v6 == 2)
    {
      re::AssetHandle::serializableAsset(v23, &v20);
      re::FileStreamWriter::open(&v15, a2);
      if (v15 == 1)
      {
        v7 = *(*(v21 + 24) + 1808);
        v22 = v3;
        v8 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v7, &v22);
        (*(**v8 + 128))(*v8);
        v9 = *v8;
        v10 = v23[0];
        v11 = (*(*v9 + 128))(v9);
        v12 = re::AssetHandle::legacy_assetPath(&v20);
        v13 = re::AssetUtilities::serializeIntrospectedAsset(&v16, v10, v12, v11, 1, 0, 1);
        if (v15)
        {
          if (v17 && v18 == 1)
          {
            fclose(v17);
          }

LABEL_18:
          std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v23);
          goto LABEL_19;
        }
      }

      else
      {
        v13 = 0;
      }

      if (v18 && (v19 & 1) != 0)
      {
        (*(*v18 + 40))();
      }

      goto LABEL_18;
    }
  }

  v13 = 0;
LABEL_19:
  re::AssetHandle::~AssetHandle(&v20);
  return v13;
}

uint64_t REAssetGetSwiftObject(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      return *(v1 + 784);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void REAssetSetSwiftObjectAndRetain()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_ERROR, "REAssetSetSwiftObjectAndRetain is deprecated and no longer supported. NOP", v1, 2u);
  }
}

void *re::allocInfo_UnsupportedTestAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_587, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_587))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C4B70, "UnsupportedTestAsset");
    __cxa_guard_release(&_MergedGlobals_587);
  }

  return &unk_1EE1C4B70;
}

void re::initInfo_UnsupportedTestAsset(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xD81F23B2DE9B3DD2;
  v6[1] = "UnsupportedTestAsset";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x100000008;
  *(this + 6) = 1;
  *(this + 14) = 1;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_UnsupportedTestAsset(re::IntrospectionBase *)::structureAttributes;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::allocInfo_UnsupportedTestComponent(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C4B00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4B00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C4C00, "UnsupportedTestComponent");
    __cxa_guard_release(&qword_1EE1C4B00);
  }

  return &unk_1EE1C4C00;
}

void re::initInfo_UnsupportedTestComponent(re *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xA7AE3E843CE658ECLL;
  v18[1] = "UnsupportedTestComponent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1C4B08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4B08))
  {
    v5 = re::introspectionAllocator();
    v11 = re::ecs2::introspect_Component(1, v6, v7, v8, v9, v10);
    v12 = (*(*v5 + 32))(v5, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "ecs2::Component";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 3;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1C4B48 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_AssetHandle(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "asset";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x2000000001;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1C4B50 = v16;
    __cxa_guard_release(&qword_1EE1C4B08);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1C4B48;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionIN12_GLOBAL__N_124UnsupportedTestComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultConstruct<anonymous namespace::UnsupportedTestComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2B978;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<anonymous namespace::UnsupportedTestComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5D2B978;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
}

uint64_t *_RETestingRegisterUnsupportedTestAsset(re *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = re::introspectionSharedMutex(a1);
  std::__shared_mutex_base::lock(v2);
  if ((atomic_load_explicit(&qword_1EE1C4B40, memory_order_acquire) & 1) == 0)
  {
    v22 = __cxa_guard_acquire(&qword_1EE1C4B40);
    if (v22)
    {
      v23 = qword_1EE1C4B10;
      if (!qword_1EE1C4B10)
      {
        v23 = re::allocInfo_UnsupportedTestComponent(v22);
        qword_1EE1C4B10 = v23;
        re::initInfo_UnsupportedTestComponent(v23, v24);
      }

      qword_1EE1C4B38 = v23;
      __cxa_guard_release(&qword_1EE1C4B40);
    }
  }

  v3 = strlen(*(qword_1EE1C4B38 + 48));
  v28[0] = re::ecs2::Component::dropComponentSuffix(*(qword_1EE1C4B38 + 48), v3);
  v28[1] = v4;
  v5 = re::globalAllocators(v28[0]);
  v6 = (*(*v5[2] + 32))(v5[2], 80, 8);
  v7 = re::ecs2::ComponentTypeBase::ComponentTypeBase(v6, v28, 0, 0);
  *v7 = &unk_1F5D2BA00;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0xFFFFFFFFLL;
  *(v6 + 56) = re::ecs2::ComponentTypeBase::makeAllocator((v7 + 24), 0x38);
  if ((atomic_load_explicit(&qword_1EE1C4B40, memory_order_acquire) & 1) == 0)
  {
    v25 = __cxa_guard_acquire(&qword_1EE1C4B40);
    if (v25)
    {
      v26 = qword_1EE1C4B10;
      if (!qword_1EE1C4B10)
      {
        v26 = re::allocInfo_UnsupportedTestComponent(v25);
        qword_1EE1C4B10 = v26;
        re::initInfo_UnsupportedTestComponent(v26, v27);
      }

      qword_1EE1C4B38 = v26;
      __cxa_guard_release(&qword_1EE1C4B40);
    }
  }

  v8 = qword_1EE1C4B38;
  v9 = *(v8 + 48);
  if (v9)
  {
    v10 = *v9;
    if (*v9)
    {
      v11 = v9[1];
      if (v11)
      {
        v12 = (v9 + 2);
        do
        {
          v10 = 31 * v10 + v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v32[0] = 2 * v10;
  v32[1] = v9;
  *(v6 + 64) = v33[0];
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  qword_1EE1C4B30 = v6;
  v15 = re::ecs2::ComponentTypeRegistry::instance(v14);
  re::ecs2::ComponentTypeRegistry::add(v15, qword_1EE1C4B30, 1);
  std::__shared_mutex_base::unlock(v2);
  v17 = re::globalAllocators(v16);
  v18 = (*(*v17[2] + 32))(v17[2], 8, 8);
  *v18 = &unk_1F5D2B800;
  v32[0] = &unk_1F5D2BAE0;
  v32[3] = v32;
  *&v33[0] = v18;
  v34 = v33 + 1;
  *(&v33[0] + 1) = &unk_1F5D2BAE0;
  v19 = std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](v32);
  v20 = *&v33[0];
  *&v33[0] = 0;
  v29 = v20;
  if (v34)
  {
    if (v34 == (v33 + 8))
    {
      v31 = &v30;
      (*(*v34 + 24))();
    }

    else
    {
      v31 = v34;
      v34 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  re::AssetManager::registerAssetType(a1, &qword_1EE1C4B58, &v29);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v29);
  return std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](v33);
}

void anonymous namespace::UnsupportedTestAsset::assetType(_anonymous_namespace_::UnsupportedTestAsset *this)
{
  if ((atomic_load_explicit(&qword_1EE1C4B28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4B28))
  {
    qword_1EE1C4B58 = "UnsupportedTestAsset";
    qword_1EE1C4B68 = 0;
    re::AssetType::generateCompiledExtension(&qword_1EE1C4B58);

    __cxa_guard_release(&qword_1EE1C4B28);
  }
}

re *_RETestingUnregisterUnsupportedTestAsset(re::ecs2::ComponentTypeRegistry *a1)
{
  v1 = re::ecs2::ComponentTypeRegistry::instance(a1);
  result = re::ecs2::ComponentTypeRegistry::remove(v1, qword_1EE1C4B30);
  v3 = qword_1EE1C4B30;
  if (qword_1EE1C4B30)
  {
    v4 = re::globalAllocators(result)[2];
    (*(*v3 + 16))(v3);
    result = (*(*v4 + 40))(v4, v3);
  }

  qword_1EE1C4B30 = 0;
  return result;
}

void _RETestingEntityAddUnsupportedTestAsset(void *a1, uint64_t a2, int a3)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 1, 1);
  (*(*a2 + 424))(v10, a2, v7, &qword_1EE1C4B58, 0, 0, 0);
  if (a3)
  {
    v8 = re::ecs2::EntityComponentCollection::getOrAdd((a1 + 6), qword_1EE1C4B30);
    re::AssetHandle::operator=(v8 + 32, v10);
  }

  else
  {
    v9 = a1[24];
    if (!v9)
    {
      v9 = re::ecs2::EntityComponentCollection::add((a1 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
    }

    if (*(v9 + 40) != v10[1])
    {
      re::AssetHandle::operator=(v9 + 32, v10);
      re::ecs2::Component::enqueueMarkDirty(v9);
    }
  }

  re::AssetHandle::~AssetHandle(v10);
}

uint64_t RECustomAssetGetObject(uint64_t a1, const re::AssetType *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v6);
  if (v7 && (v3 = atomic_load((v7 + 896)), v3 == 2))
  {
    v4 = *(re::AssetHandle::assetWithType(&v6, a2, 0) + 8);
  }

  else
  {
    v4 = 0;
  }

  re::AssetHandle::~AssetHandle(&v6);
  return v4;
}

re::SharedAssetHandle *RESerializableAssetHandleCreate(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v2 = re::globalAllocators(v1);
  v3 = (*(*v2[2] + 32))(v2[2], 48, 8);
  v4 = re::SharedAssetHandle::SharedAssetHandle(v3, v6) + 8;
  re::AssetHandle::~AssetHandle(v6);
  return v3;
}

re::SharedAssetHandle *RESerializableAssetHandleCreateRetained(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v5);
  v2 = re::globalAllocators(v1);
  v3 = (*(*v2[2] + 32))(v2[2], 48, 8);
  re::SharedAssetHandle::SharedAssetHandle(v3, v5);
  re::AssetHandle::~AssetHandle(v5);
  return v3;
}

void REAssetSetMetadataString(uint64_t a1, const char *a2, const char *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v5);
  re::AssetHandle::setOrClearMetadataString(v5, a2, a3);
  re::AssetHandle::~AssetHandle(v5);
}

void REAssetClearMetadataString(uint64_t a1, const char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  re::AssetHandle::setOrClearMetadataString(v3, a2, 0);
  re::AssetHandle::~AssetHandle(v3);
}

CFStringRef REAssetCopyMetadataString(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v10);
  re::internal::AssetEntry::getMetadataString(v10[1], a2, 1, v6);
  if (v6[0] == 1)
  {
    if (v8)
    {
      v3 = *&v9[7];
    }

    else
    {
      v3 = v9;
    }

    v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
    if (v6[0] & 1) != 0 && v7 && (v8)
    {
      (*(*v7 + 40))();
    }
  }

  else
  {
    v4 = 0;
  }

  re::AssetHandle::~AssetHandle(v10);
  return v4;
}

__CFDictionary *REAssetCopyMetadata(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = re::AssetHandle::copyComposedMetadataCFDR(v3);
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

void REAssetSetDebugName(uint64_t a1, const char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  re::AssetHandle::setOrClearMetadataString(v3, "Engine/RE-debugName", a2);
  re::AssetHandle::~AssetHandle(v3);
}

CFStringRef REAssetCopyDebugName(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v8);
  re::internal::AssetEntry::getMetadataString(v8[1], "Engine/RE-debugName", 1, v4);
  if (v4[0] == 1)
  {
    if (v6)
    {
      v1 = *&v7[7];
    }

    else
    {
      v1 = v7;
    }

    v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
    if (v4[0] & 1) != 0 && v5 && (v6)
    {
      (*(*v5 + 40))();
    }
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v8);
  return v2;
}

uint64_t _RERenderManagerExportTextureAssetToKTXWithErrorHandling(int a1, uint64_t a2, re::FileStreamWriter *this, char *a4)
{
  re::FileStreamWriter::open(&v18, this);
  if (v18)
  {
    re::AssetAPIHelper::assetHandleCreate(a2, v17);
    v6 = re::AssetHandle::loadedAsset<re::TextureAsset>(v17);
    v7 = v6;
    if (v6)
    {
      v8 = *(v6 + 176);
      v9 = v8;
      re::exportToKtx(v19, (v7 + 112), v8, 0, 0, v13);
      v7 = v13[0];
      if ((v13[0] & 1) == 0)
      {
        v10 = (v15 & 1) != 0 ? *&v16[7] : v16;
        re::CoreREAssetUtils::logAndSetErrorFromString(v10, a4, @"REPipelineErrorDomain", 0x64);
        if (v13[0] & 1) == 0 && v14 && (v15)
        {
          (*(*v14 + 40))();
        }
      }
    }

    else
    {
      re::CoreREAssetUtils::logAndSetErrorFromString("Failed to retrieve metalTexture from Asset", a4, @"REPipelineErrorDomain", 0x64);
    }

    re::AssetHandle::~AssetHandle(v17);
  }

  else
  {
    if (v22)
    {
      v11 = *&v23[7];
    }

    else
    {
      v11 = v23;
    }

    re::CoreREAssetUtils::logAndSetErrorFromString(v11, a4, @"REPipelineErrorDomain", 0x64);
    v7 = 0;
  }

  if (v18 == 1)
  {
    if (v20 && v21 == 1)
    {
      fclose(v20);
    }
  }

  else if (v21 && (v22 & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  return v7;
}

CFStringRef REAssetCopyMemoryAttributionID(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v8);
  if (*(v9 + 336) == 1)
  {
    re::DynamicString::format(&v5, "%llu", v1, *(v9 + 344));
    if (v6)
    {
      v2 = *&v7[7];
    }

    else
    {
      v2 = v7;
    }

    v3 = CFStringCreateWithCString(0, v2, 0x8000100u);
    if (v5 && (v6 & 1) != 0)
    {
      (*(*v5 + 40))();
    }
  }

  else
  {
    v3 = 0;
  }

  re::AssetHandle::~AssetHandle(&v8);
  return v3;
}

uint64_t REAssetSetMemoryAttributionTarget(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, v8);
  v7 = 0;
  if (a2 && sscanf(a2, "%llu", &v7) == 1)
  {
    buf[0] = 1;
    *&v10[4] = v7;
    v3 = re::AssetHandle::setMemoryAttributionID(v8, buf);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = "<null>";
      if (a2)
      {
        v6 = a2;
      }

      *buf = 136315138;
      *v10 = v6;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid attribution target: %s", buf, 0xCu);
    }

    v3 = 0;
  }

  re::AssetHandle::~AssetHandle(v8);
  return v3;
}

re *anonymous namespace::UnsupportedTestAssetLoader::unloadAsset(re *this, void *a2)
{
  if (a2)
  {
    v2 = *(*re::globalAllocators(this)[2] + 40);

    return v2();
  }

  return this;
}

uint64_t anonymous namespace::UnsupportedTestAssetLoader::introspectionType(_anonymous_namespace_::UnsupportedTestAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE1C4B20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4B20))
  {
    qword_1EE1C4B18 = re::internal::getOrCreateInfo("UnsupportedTestAsset", re::allocInfo_UnsupportedTestAsset, re::initInfo_UnsupportedTestAsset, &unk_1EE1C4AF8, 0);
    __cxa_guard_release(&qword_1EE1C4B20);
  }

  return qword_1EE1C4B18;
}

void anonymous namespace::UnsupportedTestComponent::~UnsupportedTestComponent(_anonymous_namespace_::UnsupportedTestComponent *this)
{
  *this = &unk_1F5D2B978;
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2B978;
  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionIN12_GLOBAL__N_124UnsupportedTestComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

double re::ecs2::ComponentType<anonymous namespace::UnsupportedTestComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

uint64_t re::ecs2::ComponentType<anonymous namespace::UnsupportedTestComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5D2BA00;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::ComponentType<anonymous namespace::UnsupportedTestComponent>::~ComponentType(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<anonymous namespace::UnsupportedTestComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(qword_1EE1C4B30 + 56) + 32))(*(qword_1EE1C4B30 + 56), 56, 0);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2B978;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<anonymous namespace::UnsupportedTestComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5D2BA70;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<anonymous namespace::UnsupportedTestComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1C4B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4B40))
  {
    qword_1EE1C4B38 = re::internal::getOrCreateInfo("UnsupportedTestComponent", re::allocInfo_UnsupportedTestComponent, re::initInfo_UnsupportedTestComponent, &qword_1EE1C4B10, 0);
    __cxa_guard_release(&qword_1EE1C4B40);
  }

  return qword_1EE1C4B38;
}

__n128 re::ecs2::ComponentType<anonymous namespace::UnsupportedTestComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

void re::ecs2::SceneComponentCollection<anonymous namespace::UnsupportedTestComponent>::~SceneComponentCollection(uint64_t a1)
{
  *a1 = &unk_1F5D2BA70;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

{

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<_RETestingRegisterUnsupportedTestAsset::$_0,std::allocator<_RETestingRegisterUnsupportedTestAsset::$_0>,void ()(re::AssetLoader *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::SharedAssetHandle *re::SharedAssetHandle::SharedAssetHandle(re::SharedAssetHandle *this, const re::AssetHandle *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CBB540;
  re::AssetHandle::AssetHandle((this + 24), a2);
  return this;
}

re *re::internal::destroyPersistent<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

re *re::internal::destroyPersistent<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

re *REEntityQueryDestroy(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    v3 = *(v1 + 1);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(*v2 + 40);

    return v4(v2, v1);
  }

  return result;
}

re *REComponentQueryDestroy(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    v3 = *(v1 + 1);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(*v2 + 40);

    return v4(v2, v1);
  }

  return result;
}

void *REQueryCreateCustomEntityPredicate(void *a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _Block_copy(v1);
  v3 = re::globalAllocators(v2)[2];
  v4 = *(*v3 + 32);

  v5 = v4(v3, 80, 8);
  v6 = _Block_copy(v2);
  v8[0] = &unk_1F5D2C2A8;
  v8[1] = v6;
  v8[3] = v8;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v5 + 3;
  v5[4] = v5 + 3;
  *v5 = &unk_1F5D2C338;
  v5[9] = v5 + 6;
  v5[5] = 0;
  v5[6] = &unk_1F5D2C2A8;
  v5[7] = _Block_copy(v6);
  std::__function::__value_func<BOOL ()(re::ecs2::Entity const*)>::~__value_func[abi:nn200100](v8);

  return v5;
}

void *REQueryCreateCustomComponentPredicate(void *a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _Block_copy(v1);
  v3 = re::globalAllocators(v2)[2];
  v4 = *(*v3 + 32);

  v5 = v4(v3, 80, 8);
  v6 = _Block_copy(v2);
  v8[0] = &unk_1F5D2C398;
  v8[1] = v6;
  v8[3] = v8;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = v5 + 3;
  v5[4] = v5 + 3;
  *v5 = &unk_1F5D2C428;
  v5[9] = v5 + 6;
  v5[5] = 0;
  v5[6] = &unk_1F5D2C398;
  v5[7] = _Block_copy(v6);
  std::__function::__value_func<BOOL ()(re::ecs2::Component const*)>::~__value_func[abi:nn200100](v8);

  return v5;
}

void *REQueryCreateAndEntityPredicate(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 48, 8);
  result[1] = 0;
  result[2] = 0;
  result[3] = result + 3;
  result[4] = result + 3;
  result[5] = 0;
  *result = &unk_1F5D2BB60;
  return result;
}

void *REQueryCreateAndComponentPredicate(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 48, 8);
  result[1] = 0;
  result[2] = 0;
  result[3] = result + 3;
  result[4] = result + 3;
  result[5] = 0;
  *result = &unk_1F5D2BBD8;
  return result;
}

void *REQueryCreateOrEntityPredicate(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 48, 8);
  result[1] = 0;
  result[2] = 0;
  result[3] = result + 3;
  result[4] = result + 3;
  result[5] = 0;
  *result = &unk_1F5D2BCC0;
  return result;
}

void *REQueryCreateOrComponentPredicate(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 48, 8);
  result[1] = 0;
  result[2] = 0;
  result[3] = result + 3;
  result[4] = result + 3;
  result[5] = 0;
  *result = &unk_1F5D2BE00;
  return result;
}

void *REQueryCreateNotEntityPredicate(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 48, 8);
  result[1] = 0;
  result[2] = 0;
  result[3] = result + 3;
  result[4] = result + 3;
  result[5] = 0;
  *result = &unk_1F5D2BF40;
  return result;
}

void *REQueryCreateNotComponentPredicate(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 48, 8);
  result[1] = 0;
  result[2] = 0;
  result[3] = result + 3;
  result[4] = result + 3;
  result[5] = 0;
  *result = &unk_1F5D2C040;
  return result;
}

void *REQueryCreateHasEntityPredicate(re *a1)
{
  v2 = re::globalAllocators(a1);
  result = (*(*v2[2] + 32))(v2[2], 56, 8);
  result[1] = 0;
  result[2] = 0;
  result[3] = result + 3;
  result[4] = result + 3;
  result[5] = 0;
  result[6] = a1;
  *result = &unk_1F5D1AC58;
  return result;
}

uint64_t REQueryCreateEntityIsActivePredicate(re *a1)
{
  v1 = a1;
  v2 = re::globalAllocators(a1);
  result = (*(*v2[2] + 32))(v2[2], 56, 8);
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = result + 24;
  *(result + 32) = result + 24;
  *(result + 40) = 0;
  *result = &unk_1F5D2C140;
  *(result + 48) = v1;
  return result;
}

__n128 REQueryCreateEntityInBoundsPredicate(re *a1, __n128 a2, __n128 a3)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 80, 16);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 24) = v4 + 24;
  *(v4 + 32) = v4 + 24;
  *(v4 + 40) = 0;
  *v4 = &unk_1F5D1ABA8;
  result = a3;
  *(v4 + 48) = a2;
  *(v4 + 64) = a3;
  return result;
}

void *REQueryCreateIsDescendantEntityPredicate(re *a1)
{
  v2 = re::globalAllocators(a1);
  result = (*(*v2[2] + 32))(v2[2], 88, 8);
  result[1] = 0;
  result[2] = 0;
  result[3] = result + 3;
  result[4] = result + 3;
  result[5] = 0;
  result[6] = a1;
  *result = &unk_1F5D2C1B8;
  result[10] = 0;
  return result;
}

void *REQueryCreateIsDescendantCallbackEntityPredicate(void *a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = re::globalAllocators(v1);
  v3 = (*(*v2[2] + 32))(v2[2], 88, 8);
  v4 = _Block_copy(v1);

  v6[0] = &unk_1F5D2C488;
  v6[1] = v4;
  v6[3] = v6;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = v3 + 3;
  v3[4] = v3 + 3;
  v3[5] = 0;
  v3[6] = 0;
  *v3 = &unk_1F5D2C1B8;
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::__value_func[abi:nn200100]((v3 + 7), v6);
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::~__value_func[abi:nn200100](v6);
  return v3;
}

void *REQueryCreateIsChildEntityPredicate(re *a1)
{
  v2 = re::globalAllocators(a1);
  result = (*(*v2[2] + 32))(v2[2], 88, 8);
  result[1] = 0;
  result[2] = 0;
  result[3] = result + 3;
  result[4] = result + 3;
  result[5] = 0;
  result[6] = a1;
  *result = &unk_1F5D2C218;
  result[10] = 0;
  return result;
}

void *REQueryCreateIsChildCallbackEntityPredicate(void *a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = re::globalAllocators(v1);
  v3 = (*(*v2[2] + 32))(v2[2], 88, 8);
  v4 = _Block_copy(v1);

  v6[0] = &unk_1F5D2C518;
  v6[1] = v4;
  v6[3] = v6;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = v3 + 3;
  v3[4] = v3 + 3;
  v3[5] = 0;
  v3[6] = 0;
  *v3 = &unk_1F5D2C218;
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::__value_func[abi:nn200100]((v3 + 7), v6);
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::~__value_func[abi:nn200100](v6);
  return v3;
}

void REQueryEvaluateEntityQuery(void *a1, uint64_t a2, void *a3)
{
  v7[6] = *MEMORY[0x1E69E9840];
  v5[1] = a2;
  v5[2] = a3;
  v5[0] = &unk_1F5D2C278;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = &v4->__vftable;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  else
  {
    csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(v7);
  }

  v6[1] = 0;
  v6[2] = 0;
  v6[0] = v5;
  csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource>::reset(v6);
}

void REQueryEvaluateEntityQueryWithRootEntity(void *a1, uint64_t a2, void *a3, const re::ecs2::Entity *a4)
{
  v9[6] = *MEMORY[0x1E69E9840];
  v7[2] = a4;
  v7[3] = a3;
  v7[0] = &unk_1F5D2C278;
  v7[1] = a2;
  v6 = a1[1];
  v9[0] = *a1;
  v9[1] = &v6->__vftable;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(v9);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  else
  {
    csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(v9);
  }

  v8[1] = 0;
  v8[2] = 0;
  v8[0] = v7;
  csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource>::reset(v8);
}

void REQueryEvaluateComponentQuery(void *a1, void *a2, uint64_t a3, void *a4)
{
  v14[6] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v12 = v7;
  if (a3)
  {
    v8 = *(a3 + 16);
    if (a2[28] > v8)
    {
      v9 = *(a2[30] + 8 * v8);
      if (v9)
      {
        v10 = a2 + 1;
        v11 = a1[1];
        v14[0] = *a1;
        v14[1] = &v11->__vftable;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          csq::v2::Query<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::notifyPerformQuery(v14);
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        else
        {
          csq::v2::Query<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::notifyPerformQuery(v14);
        }

        v13[1] = 0;
        v13[2] = 0;
        v13[0] = v9 + 368;
        csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::reset(v13);
      }
    }
  }
}

void csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::~AndPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::evaluate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == (a1 + 24))
  {
    return 1;
  }

  do
  {
    v7 = v4[2];
    v8 = v4[3];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = (*(*v7 + 16))(v7, a2, a3);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    if ((v9 & 1) == 0)
    {
      break;
    }

    v4 = v4[1];
  }

  while (v4 != v3);
  return v9;
}

void csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::postCreateOptimize(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v22, (a1 + 8));
  csq::v2::applyDominantAndIdentityLaws<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>(&v24, &v22, 0, a2);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  if (v24)
  {
    v6 = v25;
    *a3 = v24;
    a3[1] = v6;
  }

  else
  {
    std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v20, (a1 + 8));
    v7 = v20;
    v8 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v8;
    v9 = *(v7 + 32);
    for (i = v7 + 24; v9 != i; v9 = v9[1])
    {
      v11 = v9[2];
      if (v11)
      {
        if (v12)
        {
          v13 = v12;
          v14 = v9[3];
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v12[5])
          {
            v15 = std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__insert_with_sentinel[abi:nn200100]<std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>,std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>>(i, v9, v12[4], v12 + 3);
            std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(i, v9);
            v16 = v13[5];
            v9 = v15;
            v17 = v16 - 1;
            if ((v16 - 1) < 0)
            {
              do
              {
                v9 = *v9;
              }

              while (!__CFADD__(v17++, 1));
            }

            else if (v16 != 1)
            {
              do
              {
                v9 = v9[1];
                --v16;
              }

              while (v16 > 1);
            }

            *(a2 + 24) = 1;
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v14);
          }
        }
      }
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

    *a3 = 0;
    a3[1] = 0;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    }
  }
}

void csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(void *a1, uint64_t a2)
{
  v19[0] = v19;
  v19[1] = v19;
  v20 = 0;
  *v16 = 0u;
  *__p = 0u;
  v18 = 1065353216;
  v4 = a1 + 3;
  v5 = a1[4];
  if (v5 == a1 + 3)
  {
    v6 = 0;
    v7 = -1;
  }

  else
  {
    v6 = 0;
    v7 = -1;
    do
    {
      (*(*v5[2] + 40))(v5[2], a2);
      if (*(*(a2 + 8) + 64))
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = -1;
        *(a2 + 32) = -1;
      }

      *&v15 = v5 + 2;
      std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v16, v5[2], &v15)[4] = v8;
      v9 = *(a2 + 8);
      if (*(v9 + 64))
      {
        v10 = *(a2 + 32);
        if (v10 < v7)
        {
          std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__move_assign(v19, (v9 + 16));
          v6 = 3;
          v7 = v10;
        }
      }

      v5 = v5[1];
    }

    while (v5 != v4);
    if (v20)
    {
      std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v15, a1 + 1);
      operator new();
    }
  }

  std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__move_assign((*(a2 + 8) + 16), v19);
  *(a2 + 32) = v7;
  *(*(a2 + 8) + 64) = v6;
  *&v15 = v16;
  std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__sort<csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(csq::v2::OptimizationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &)::{lambda(std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>)#1}>(a1[4], v4, a1[5], &v15);
  *(a2 + 24) = 1;
  v11 = __p[0];
  if (__p[0])
  {
    do
    {
      v12 = *v11;
      v13 = v11[3];
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v14 = v16[0];
  v16[0] = 0;
  if (v14)
  {
    operator delete(v14);
  }

  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(v19);
}

void csq::v2::applyDominantAndIdentityLaws<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>(void *a1, uint64_t *a2, char a3, uint64_t a4)
{
  v5 = *(*a2 + 32);
  v6 = *a2 + 24;
  if (v5 == v6)
  {
    goto LABEL_32;
  }

  v10 = 0;
  v11 = 0;
  v12 = a1[1];
  v25 = a1;
  v26 = *a1;
  do
  {
    if (v10)
    {
      std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(v6, v11);
      *(a4 + 24) = 1;
    }

    (*(**(v5 + 16) + 32))(&v27);
    v13 = v27;
    if (v27)
    {
      v14 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(v5 + 24);
      *(v5 + 16) = v13;
      *(v5 + 24) = v14;
      if (!v15)
      {
        goto LABEL_11;
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v13 = *(v5 + 16);
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_11:
    if (!v16)
    {
LABEL_21:
      v10 = 0;
      v20 = 1;
      goto LABEL_22;
    }

    v17 = v16;
    v18 = *(v5 + 24);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v17[48] ^ a3;
    v19 = v5;
    if ((v10 & 1) == 0)
    {
      *(a4 + 24) = 1;
      v12 = *(v5 + 24);
      v26 = *(v5 + 16);
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = v11;
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    v20 = v10;
    v11 = v19;
LABEL_22:
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    if ((v20 & 1) == 0)
    {
      *v25 = v26;
      v25[1] = v12;
      return;
    }

    v5 = *(v5 + 8);
    v21 = *a2;
    v6 = *a2 + 24;
  }

  while (v5 != v6);
  a1 = v25;
  if ((v10 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(v21 + 40) != 1)
  {
    std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(v6, v11);
    *(a4 + 24) = 1;
LABEL_32:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v22 = *(v21 + 32);
  v24 = *(v22 + 16);
  v23 = *(v22 + 24);
  *v25 = v24;
  v25[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }
}

void std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(uint64_t a1, uint64_t *__p)
{
  v4 = *__p;
  v3 = __p[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  --*(a1 + 16);
  v5 = __p[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  operator delete(__p);
}

uint64_t *std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__insert_with_sentinel[abi:nn200100]<std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>,std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>>(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
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
    v8 = (*&v6 - 1) & v5;
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

  return v10;
}

uint64_t *std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__sort<csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(csq::v2::OptimizationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &)::{lambda(std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>)#1}>(uint64_t a1, uint64_t *a2, unint64_t a3, float **a4)
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      v9 = *(*a2 + 16);
      v10 = *(*a2 + 24);
      v84 = v9;
      v85 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v82 = v12;
      v83 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *a4;
      v86[0] = &v84;
      v14 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v13, v9, v86)[4];
      v15 = *a4;
      v86[0] = &v82;
      v16 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v15, v12, v86)[4];
      if (v83)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v83);
      }

      if (v85)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v85);
      }

      if (v14 < v16)
      {
        v18 = *v8;
        v17 = v8[1];
        *(v18 + 8) = v17;
        *v17 = v18;
        v19 = *v4;
        *(v19 + 8) = v8;
        *v8 = v19;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v21 = a3 >> 1;
      v22 = (a3 >> 1) + 1;
      v23 = a1;
      do
      {
        v23 = v23[1];
        --v22;
      }

      while (v22 > 1);
      v24 = std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__sort<csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(csq::v2::OptimizationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &)::{lambda(std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>)#1}>(a1, v23, a3 >> 1, a4);
      v4 = std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__sort<csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(csq::v2::OptimizationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &)::{lambda(std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>)#1}>(v23, a2, a3 - v21, a4);
      v25 = v4[2];
      v26 = v4[3];
      v80 = v25;
      v81 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v27 = v24[3];
      v78 = v24[2];
      v79 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = *a4;
      v86[0] = &v80;
      v29 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v28, v25, v86)[4];
      v30 = *a4;
      v86[0] = &v78;
      v31 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v30, v78, v86)[4];
      if (v79)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v79);
      }

      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v81);
      }

      if (v29 >= v31)
      {
        v44 = v24[1];
        i = v4;
        v4 = v24;
      }

      else
      {
        for (i = v4[1]; i != a2; i = i[1])
        {
          v33 = i[2];
          v34 = i[3];
          v76 = v33;
          v77 = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v35 = v24[3];
          v74 = v24[2];
          v75 = v35;
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v36 = *a4;
          v86[0] = &v76;
          v37 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v36, v33, v86)[4];
          v38 = *a4;
          v86[0] = &v74;
          v39 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v38, v74, v86)[4];
          if (v75)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v75);
          }

          if (v77)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v77);
          }

          if (v37 >= v39)
          {
            break;
          }
        }

        v40 = *i;
        v41 = *(*i + 8);
        v42 = *v4;
        *(v42 + 8) = v41;
        *v41 = v42;
        v43 = *v24;
        v44 = v24[1];
        *(v43 + 8) = v4;
        *v4 = v43;
        *v24 = v40;
        *(v40 + 8) = v24;
      }

      if (v44 != i && i != a2)
      {
        v45 = i;
        do
        {
          v46 = i[2];
          v47 = i[3];
          v72 = v46;
          v73 = v47;
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v48 = v44[3];
          v70 = v44[2];
          v71 = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v49 = *a4;
          v86[0] = &v72;
          v50 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v49, v46, v86)[4];
          v51 = *a4;
          v86[0] = &v70;
          v52 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v51, v70, v86)[4];
          if (v71)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v71);
          }

          if (v73)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v73);
          }

          if (v50 >= v52)
          {
            v44 = v44[1];
          }

          else
          {
            for (j = i[1]; j != a2; j = j[1])
            {
              v54 = j[2];
              v55 = j[3];
              v68 = v54;
              v69 = v55;
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v56 = v44[3];
              v66 = v44[2];
              v67 = v56;
              if (v56)
              {
                atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v57 = *a4;
              v86[0] = &v68;
              v58 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v57, v54, v86)[4];
              v59 = *a4;
              v86[0] = &v66;
              v60 = std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v59, v66, v86)[4];
              if (v67)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v67);
              }

              if (v69)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v69);
              }

              if (v58 >= v60)
              {
                break;
              }
            }

            v61 = *j;
            v62 = *(*j + 8);
            v63 = *i;
            *(v63 + 8) = v62;
            *v62 = v63;
            if (v45 == i)
            {
              v45 = j;
            }

            v65 = *v44;
            v64 = v44[1];
            *(v65 + 8) = i;
            *i = v65;
            *v44 = v61;
            *(v61 + 8) = v44;
            v44 = v64;
            i = j;
          }
        }

        while (v44 != v45 && i != a2);
      }
    }
  }

  return v4;
}

void csq::v2::AndPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::~AndPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t csq::v2::AndPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::evaluate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == (a1 + 24))
  {
    return 1;
  }

  do
  {
    v7 = v4[2];
    v8 = v4[3];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = (*(*v7 + 16))(v7, a2, a3);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    if ((v9 & 1) == 0)
    {
      break;
    }

    v4 = v4[1];
  }

  while (v4 != v3);
  return v9;
}

void csq::v2::AndPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::postCreateOptimize(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v28[0] = v6;
  if (!v5)
  {
    goto LABEL_28;
  }

  v8 = std::__shared_weak_count::lock(v5);
  v28[1] = v8;
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = v8;
  csq::v2::applyDominantAndIdentityLaws<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>(&v29, v28, 0, a2);
  std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  if (v29)
  {
    v10 = v30;
    *a3 = v29;
    a3[1] = v10;
    return;
  }

  v11 = *(a1 + 16);
  if (!v11 || (v12 = *(a1 + 8), (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
LABEL_28:
    std::__throw_bad_weak_ptr[abi:nn200100]();
    csq::v2::AndPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::preEvaluateOptimize(v25, v26);
    return;
  }

  v27 = v13;
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v12 + 32);
  for (i = v12 + 24; v14 != i; v14 = v14[1])
  {
    v16 = v14[2];
    if (v16)
    {
      if (v17)
      {
        v18 = v17;
        v19 = v14[3];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v17[5])
        {
          v20 = std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__insert_with_sentinel[abi:nn200100]<std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>,std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>>(i, v14, v17[4], v17 + 3);
          std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(i, v14);
          v21 = v18[5];
          v14 = v20;
          v22 = v21 - 1;
          if ((v21 - 1) < 0)
          {
            do
            {
              v14 = *v14;
            }

            while (!__CFADD__(v22++, 1));
          }

          else if (v21 != 1)
          {
            do
            {
              v14 = v14[1];
              --v21;
            }

            while (v21 > 1);
          }

          *(a2 + 24) = 1;
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }
      }
    }
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  *a3 = 0;
  a3[1] = 0;
  v24 = v30;
  if (v30)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }
}

void csq::v2::AndPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::preEvaluateOptimize(void *a1, uint64_t a2)
{
  v19[0] = v19;
  v19[1] = v19;
  v20 = 0;
  *v16 = 0u;
  *__p = 0u;
  v18 = 1065353216;
  v4 = a1 + 3;
  v5 = a1[4];
  if (v5 == a1 + 3)
  {
    v6 = 0;
    v7 = -1;
  }

  else
  {
    v6 = 0;
    v7 = -1;
    do
    {
      (*(**(v5 + 16) + 40))(*(v5 + 16), a2);
      if (*(*(a2 + 8) + 64))
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = -1;
        *(a2 + 32) = -1;
      }

      v21 = (v5 + 16);
      std::__hash_table<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::__unordered_map_equal<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>,std::equal_to<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,std::hash<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>> const&>,std::tuple<>>(v16, *(v5 + 16), &v21)[4] = v8;
      v9 = *(a2 + 8);
      if (*(v9 + 64))
      {
        v10 = *(a2 + 32);
        if (v10 < v7)
        {
          std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__move_assign(v19, (v9 + 16));
          v6 = 3;
          v7 = v10;
        }
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v4);
    if (v20)
    {
      v11 = a1[2];
      if (v11 && std::__shared_weak_count::lock(v11))
      {
        operator new();
      }

      std::__throw_bad_weak_ptr[abi:nn200100]();
      JUMPOUT(0x1E2EE1F0CLL);
    }
  }

  std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__move_assign((*(a2 + 8) + 16), v19);
  *(a2 + 32) = v7;
  *(*(a2 + 8) + 64) = v6;
  v21 = v16;
  std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__sort<csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(csq::v2::OptimizationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &)::{lambda(std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>)#1}>(a1[4], v4, a1[5], &v21);
  *(a2 + 24) = 1;
  v12 = __p[0];
  if (__p[0])
  {
    do
    {
      v13 = *v12;
      v14 = v12[3];
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v15 = v16[0];
  v16[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(v19);
}

void csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

void *csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(void *a1)
{
  *a1 = &unk_1F5D2BC88;
  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(a1 + 3);
  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(a1 + 3);
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void csq::v2::applyDominantAndIdentityLaws<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>(void *a1, uint64_t *a2, char a3, uint64_t a4)
{
  v5 = *(*a2 + 32);
  v6 = *a2 + 24;
  if (v5 == v6)
  {
    goto LABEL_32;
  }

  v10 = 0;
  v11 = 0;
  v12 = a1[1];
  v25 = a1;
  v26 = *a1;
  do
  {
    if (v10)
    {
      std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(v6, v11);
      *(a4 + 24) = 1;
    }

    (*(**(v5 + 16) + 32))(&v27);
    v13 = v27;
    if (v27)
    {
      v14 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(v5 + 24);
      *(v5 + 16) = v13;
      *(v5 + 24) = v14;
      if (!v15)
      {
        goto LABEL_11;
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v13 = *(v5 + 16);
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_11:
    if (!v16)
    {
LABEL_21:
      v10 = 0;
      v20 = 1;
      goto LABEL_22;
    }

    v17 = v16;
    v18 = *(v5 + 24);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = v17[48] ^ a3;
    v19 = v5;
    if ((v10 & 1) == 0)
    {
      *(a4 + 24) = 1;
      v12 = *(v5 + 24);
      v26 = *(v5 + 16);
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = v11;
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    v20 = v10;
    v11 = v19;
LABEL_22:
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    if ((v20 & 1) == 0)
    {
      *v25 = v26;
      v25[1] = v12;
      return;
    }

    v5 = *(v5 + 8);
    v21 = *a2;
    v6 = *a2 + 24;
  }

  while (v5 != v6);
  a1 = v25;
  if ((v10 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(v21 + 40) != 1)
  {
    std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(v6, v11);
    *(a4 + 24) = 1;
LABEL_32:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v22 = *(v21 + 32);
  v24 = *(v22 + 16);
  v23 = *(v22 + 24);
  *v25 = v24;
  v25[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }
}

void csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::~OrPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::evaluate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == (a1 + 24))
  {
    return 0;
  }

  do
  {
    v7 = v4[2];
    v8 = v4[3];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = (*(*v7 + 16))(v7, a2, a3);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    if (v9)
    {
      break;
    }

    v4 = v4[1];
  }

  while (v4 != v3);
  return v9;
}

void csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v6;
  if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), v8 = *(a2 + 8), (v9 = *(a2 + 16)) != 0))
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *(v8 + 48) - *(v8 + 40);
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  else
  {
    v10 = *(v8 + 48) - *(v8 + 40);
  }

  if (v10 >> 4)
  {
    if (v10 >> 4 == 1)
    {
      v25 = v7;
      v26 = v6;
      v27 = *(v6 + 40);
      v29 = *v27;
      v28 = v27[1];
      v30 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = *(a2 + 16);
      *(a2 + 8) = v29;
      *(a2 + 16) = v28;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v31);
      }

      v32 = *(v29 + 24);
      v33 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__function::__value_func<void ()(re::ecs2::Entity *)>::__value_func[abi:nn200100](v41, a4);
      (*(*v33 + 24))(v33, a2, v33, v41);
      std::__function::__value_func<void ()(re::ecs2::Entity *)>::~__value_func[abi:nn200100](v41);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = *(a2 + 16);
      *(a2 + 8) = v26;
      *(a2 + 16) = v25;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v34);
      }

      v24 = v30;
      v7 = v25;
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v35 = v6;
      v36 = v7;
      *v37 = 0u;
      *__p = 0u;
      v39 = 1065353216;
      v11 = *(v6 + 40);
      v12 = *(v6 + 48);
      if (v11 == v12)
      {
        v18 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = *v11;
          v15 = v11[1];
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v16 = *(a2 + 16);
          *(a2 + 8) = v14;
          *(a2 + 16) = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v16);
          }

          v17 = *(v14 + 24);
          v19 = *(v17 + 16);
          v18 = *(v17 + 24);
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v13);
          }

          v40[0] = &unk_1F5D2BD20;
          v40[1] = v37;
          v40[2] = a4;
          v40[3] = v40;
          (*(*v19 + 24))(v19, a2, v19, v40);
          std::__function::__value_func<void ()(re::ecs2::Entity *)>::~__value_func[abi:nn200100](v40);
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v15);
          }

          v11 += 2;
          v13 = v18;
        }

        while (v11 != v12);
      }

      v7 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = *(a2 + 16);
      *(a2 + 8) = v35;
      *(a2 + 16) = v36;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v20);
      }

      v21 = __p[0];
      if (__p[0])
      {
        do
        {
          v22 = *v21;
          operator delete(v21);
          v21 = v22;
        }

        while (v22);
      }

      v23 = v37[0];
      v37[0] = 0;
      if (v23)
      {
        operator delete(v23);
      }

      v24 = 0;
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
LABEL_32:
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::postCreateOptimize(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v22, (a1 + 8));
  csq::v2::applyDominantAndIdentityLaws<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>(&v24, &v22, 1, a2);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  if (v24)
  {
    v6 = v25;
    *a3 = v24;
    a3[1] = v6;
  }

  else
  {
    std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v20, (a1 + 8));
    v7 = v20;
    v8 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v8;
    v9 = *(v7 + 32);
    for (i = v7 + 24; v9 != i; v9 = v9[1])
    {
      v11 = v9[2];
      if (v11)
      {
        if (v12)
        {
          v13 = v12;
          v14 = v9[3];
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v12[5])
          {
            v15 = std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__insert_with_sentinel[abi:nn200100]<std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>,std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>>(i, v9, v12[4], v12 + 3);
            std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(i, v9);
            v16 = v13[5];
            v9 = v15;
            v17 = v16 - 1;
            if ((v16 - 1) < 0)
            {
              do
              {
                v9 = *v9;
              }

              while (!__CFADD__(v17++, 1));
            }

            else if (v16 != 1)
            {
              do
              {
                v9 = v9[1];
                --v16;
              }

              while (v16 > 1);
            }

            *(a2 + 24) = 1;
          }

          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v14);
          }
        }
      }
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

    *a3 = 0;
    a3[1] = 0;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    }
  }
}

void csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::preEvaluateOptimize(uint64_t a1, uint64_t a2)
{
  std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v2, (a1 + 8));
  v4 = v2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  operator new();
}

uint64_t std::__function::__value_func<void ()(re::ecs2::Entity *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(re::ecs2::Entity *)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &,csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,std::function<void ()(re::ecs2::Entity*)>)::{lambda(re::ecs2::Entity*)#1},std::allocator<csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &,csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,std::function<void ()(re::ecs2::Entity*)>)::{lambda(re::ecs2::Entity*)#1}>,void ()(re::ecs2::Entity*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2BD20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &,csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,std::function<void ()(re::ecs2::Entity*)>)::{lambda(re::ecs2::Entity*)#1},std::allocator<csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &,csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,std::function<void ()(re::ecs2::Entity*)>)::{lambda(re::ecs2::Entity*)#1}>,void ()(re::ecs2::Entity*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(*a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = v4[1];
  if (!*&v8)
  {
    goto LABEL_17;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*v4 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_17:
    std::function<void ()(re::ecs2::Entity *)>::operator()(*(a1 + 16), *a2);
    v14 = *(a1 + 8);
    v15 = v14[1];
    if (v15)
    {
      v16 = vcnt_s8(v15);
      v16.i16[0] = vaddlv_u8(v16);
      if (v16.u32[0] > 1uLL)
      {
        v17 = v7;
        if (v7 >= *&v15)
        {
          v17 = v7 % *&v15;
        }
      }

      else
      {
        v17 = (*&v15 - 1) & v7;
      }

      v18 = *(*v14 + 8 * v17);
      if (v18)
      {
        for (i = *v18; i; i = *i)
        {
          v20 = i[1];
          if (v20 == v7)
          {
            if (i[2] == v3)
            {
              return;
            }
          }

          else
          {
            if (v16.u32[0] > 1uLL)
            {
              if (v20 >= *&v15)
              {
                v20 %= *&v15;
              }
            }

            else
            {
              v20 &= *&v15 - 1;
            }

            if (v20 != v17)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_17;
    }

LABEL_16:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if (v12[2] != v3)
  {
    goto LABEL_16;
  }
}

uint64_t std::__function::__func<csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &,csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,std::function<void ()(re::ecs2::Entity*)>)::{lambda(re::ecs2::Entity*)#1},std::allocator<csq::v2::OrPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Entity,re::query::SceneEntityDataSource> &,csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,std::function<void ()(re::ecs2::Entity*)>)::{lambda(re::ecs2::Entity*)#1}>,void ()(re::ecs2::Entity*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<csq::v2::DataSourceTreeNode<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D2BDB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<csq::v2::DataSourceTreeNode<re::ecs2::Entity,re::query::SceneEntityDataSource>>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(a1 + 5);
  v6 = a1[4];
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::~OrPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::evaluate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == (a1 + 24))
  {
    return 0;
  }

  do
  {
    v7 = v4[2];
    v8 = v4[3];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = (*(*v7 + 16))(v7, a2, a3);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    if (v9)
    {
      break;
    }

    v4 = v4[1];
  }

  while (v4 != v3);
  return v9;
}

void csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v6;
  if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), v8 = *(a2 + 8), (v9 = *(a2 + 16)) != 0))
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *(v8 + 48) - *(v8 + 40);
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  else
  {
    v10 = *(v8 + 48) - *(v8 + 40);
  }

  if (v10 >> 4)
  {
    if (v10 >> 4 == 1)
    {
      v25 = v7;
      v26 = v6;
      v27 = *(v6 + 40);
      v29 = *v27;
      v28 = v27[1];
      v30 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v31 = *(a2 + 16);
      *(a2 + 8) = v29;
      *(a2 + 16) = v28;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v31);
      }

      v32 = *(v29 + 24);
      v33 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__function::__value_func<void ()(re::ecs2::Component *)>::__value_func[abi:nn200100](v41, a4);
      (*(*v33 + 24))(v33, a2, v33, v41);
      std::__function::__value_func<void ()(re::ecs2::Component *)>::~__value_func[abi:nn200100](v41);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = *(a2 + 16);
      *(a2 + 8) = v26;
      *(a2 + 16) = v25;
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v34);
      }

      v24 = v30;
      v7 = v25;
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v35 = v6;
      v36 = v7;
      *v37 = 0u;
      *__p = 0u;
      v39 = 1065353216;
      v11 = *(v6 + 40);
      v12 = *(v6 + 48);
      if (v11 == v12)
      {
        v18 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = *v11;
          v15 = v11[1];
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v16 = *(a2 + 16);
          *(a2 + 8) = v14;
          *(a2 + 16) = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v16);
          }

          v17 = *(v14 + 24);
          v19 = *(v17 + 16);
          v18 = *(v17 + 24);
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v13);
          }

          v40[0] = &unk_1F5D2BE60;
          v40[1] = v37;
          v40[2] = a4;
          v40[3] = v40;
          (*(*v19 + 24))(v19, a2, v19, v40);
          std::__function::__value_func<void ()(re::ecs2::Component *)>::~__value_func[abi:nn200100](v40);
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v15);
          }

          v11 += 2;
          v13 = v18;
        }

        while (v11 != v12);
      }

      v7 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = *(a2 + 16);
      *(a2 + 8) = v35;
      *(a2 + 16) = v36;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v20);
      }

      v21 = __p[0];
      if (__p[0])
      {
        do
        {
          v22 = *v21;
          operator delete(v21);
          v21 = v22;
        }

        while (v22);
      }

      v23 = v37[0];
      v37[0] = 0;
      if (v23)
      {
        operator delete(v23);
      }

      v24 = 0;
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
LABEL_32:
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::postCreateOptimize(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v28[0] = v6;
  if (!v5)
  {
    goto LABEL_28;
  }

  v8 = std::__shared_weak_count::lock(v5);
  v28[1] = v8;
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = v8;
  csq::v2::applyDominantAndIdentityLaws<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>(&v29, v28, 1, a2);
  std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  if (v29)
  {
    v10 = v30;
    *a3 = v29;
    a3[1] = v10;
    return;
  }

  v11 = *(a1 + 16);
  if (!v11 || (v12 = *(a1 + 8), (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
LABEL_28:
    std::__throw_bad_weak_ptr[abi:nn200100]();
    csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::preEvaluateOptimize(v25, v26);
    return;
  }

  v27 = v13;
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v12 + 32);
  for (i = v12 + 24; v14 != i; v14 = v14[1])
  {
    v16 = v14[2];
    if (v16)
    {
      if (v17)
      {
        v18 = v17;
        v19 = v14[3];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v17[5])
        {
          v20 = std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__insert_with_sentinel[abi:nn200100]<std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>,std::__list_iterator<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>,void *>>(i, v14, v17[4], v17 + 3);
          std::list<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::erase(i, v14);
          v21 = v18[5];
          v14 = v20;
          v22 = v21 - 1;
          if ((v21 - 1) < 0)
          {
            do
            {
              v14 = *v14;
            }

            while (!__CFADD__(v22++, 1));
          }

          else if (v21 != 1)
          {
            do
            {
              v14 = v14[1];
              --v21;
            }

            while (v21 > 1);
          }

          *(a2 + 24) = 1;
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }
      }
    }
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  *a3 = 0;
  a3[1] = 0;
  v24 = v30;
  if (v30)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }
}

void csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::preEvaluateOptimize(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:nn200100]();
  std::__function::__value_func<void ()(re::ecs2::Component *)>::__value_func[abi:nn200100](v4, v5);
}

uint64_t std::__function::__value_func<void ()(re::ecs2::Component *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(re::ecs2::Component *)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> &,csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,std::function<void ()(re::ecs2::Component*)>)::{lambda(re::ecs2::Component*)#1},std::allocator<csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> &,csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,std::function<void ()(re::ecs2::Component*)>)::{lambda(re::ecs2::Component*)#1}>,void ()(re::ecs2::Component*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2BE60;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> &,csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,std::function<void ()(re::ecs2::Component*)>)::{lambda(re::ecs2::Component*)#1},std::allocator<csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> &,csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,std::function<void ()(re::ecs2::Component*)>)::{lambda(re::ecs2::Component*)#1}>,void ()(re::ecs2::Component*)>::operator()(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(*a2));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = v4[1];
  if (!*&v8)
  {
    goto LABEL_17;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*v4 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_17:
    v14 = *(*(a1 + 16) + 24);
    v22 = *a2;
    if (!v14)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      std::string::__throw_length_error[abi:nn200100]();
    }

    (*(*v14 + 48))(v14, &v22);
    v15 = *(a1 + 8);
    v16 = v15[1];
    if (v16)
    {
      v17 = vcnt_s8(v16);
      v17.i16[0] = vaddlv_u8(v17);
      if (v17.u32[0] > 1uLL)
      {
        v18 = v7;
        if (v7 >= *&v16)
        {
          v18 = v7 % *&v16;
        }
      }

      else
      {
        v18 = (*&v16 - 1) & v7;
      }

      v19 = *(*v15 + 8 * v18);
      if (v19)
      {
        for (i = *v19; i; i = *i)
        {
          v21 = i[1];
          if (v21 == v7)
          {
            if (i[2] == v3)
            {
              return;
            }
          }

          else
          {
            if (v17.u32[0] > 1uLL)
            {
              if (v21 >= *&v16)
              {
                v21 %= *&v16;
              }
            }

            else
            {
              v21 &= *&v16 - 1;
            }

            if (v21 != v18)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_17;
    }

LABEL_16:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  if (v12[2] != v3)
  {
    goto LABEL_16;
  }
}

uint64_t std::__function::__func<csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> &,csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,std::function<void ()(re::ecs2::Component*)>)::{lambda(re::ecs2::Component*)#1},std::allocator<csq::v2::OrPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::forEachInSubset(csq::v2::EvaluationContext<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> &,csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,std::function<void ()(re::ecs2::Component*)>)::{lambda(re::ecs2::Component*)#1}>,void ()(re::ecs2::Component*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<csq::v2::DataSourceTreeNode<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D2BEF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<csq::v2::DataSourceTreeNode<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  std::__list_imp<std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::clear(a1 + 5);
  v6 = a1[4];
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void csq::v2::NotPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::~NotPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

void csq::v2::NotPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::postCreateOptimize(uint64_t a1@<X0>, uint64_t a2@<X1>, std::__shared_weak_count **a3@<X8>)
{
  v6 = a1 + 24;
  v7 = *(a1 + 32);
  if (v7 != a1 + 24)
  {
    do
    {
      (*(**(v7 + 16) + 32))(&v24);
      v8 = v24;
      if (v24)
      {
        v9 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = *(v7 + 24);
        *(v7 + 16) = v8;
        *(v7 + 24) = v9;
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v25);
      }

      v7 = *(v7 + 8);
    }

    while (v7 != v6);
    v7 = *(a1 + 32);
  }

  v11 = *(v7 + 16);
  if (!v11)
  {
    goto LABEL_29;
  }

  if (!v12)
  {
    v17 = 0;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = *(v7 + 24);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = 1;
  v15 = v13[4];
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  if (v16)
  {
    *a3 = v16;
    a3[1] = v17;
    return;
  }

  v7 = *(a1 + 32);
  v11 = *(v7 + 16);
  if (v11)
  {
LABEL_23:
    {
      v18 = *(v7 + 24);
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    if (v17)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v17)
  {
LABEL_28:
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

LABEL_29:
  v19 = *(a1 + 32);
  v20 = *(v19 + 16);
  if (v20)
  {
    v22 = v21;
    if (v21)
    {
      v23 = *(v19 + 24);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      LOBYTE(v21[2].__vftable) ^= 1u;
      *(a2 + 24) = 1;
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
      goto LABEL_34;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = 0;
LABEL_34:
  if (v22)
  {
    *a3 = v22;
    a3[1] = v23;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }
}

void std::__shared_ptr_emplace<csq::v2::AndPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D2BFA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<csq::v2::NotPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D2BFF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void csq::v2::NotPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::~NotPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

void csq::v2::NotPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::postCreateOptimize(uint64_t a1@<X0>, uint64_t a2@<X1>, std::__shared_weak_count **a3@<X8>)
{
  v6 = a1 + 24;
  v7 = *(a1 + 32);
  if (v7 != a1 + 24)
  {
    do
    {
      (*(**(v7 + 16) + 32))(&v24);
      v8 = v24;
      if (v24)
      {
        v9 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = *(v7 + 24);
        *(v7 + 16) = v8;
        *(v7 + 24) = v9;
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v25);
      }

      v7 = *(v7 + 8);
    }

    while (v7 != v6);
    v7 = *(a1 + 32);
  }

  v11 = *(v7 + 16);
  if (!v11)
  {
    goto LABEL_29;
  }

  if (!v12)
  {
    v17 = 0;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = *(v7 + 24);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = 1;
  v15 = v13[4];
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  if (v16)
  {
    *a3 = v16;
    a3[1] = v17;
    return;
  }

  v7 = *(a1 + 32);
  v11 = *(v7 + 16);
  if (v11)
  {
LABEL_23:
    {
      v18 = *(v7 + 24);
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    if (v17)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v17)
  {
LABEL_28:
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

LABEL_29:
  v19 = *(a1 + 32);
  v20 = *(v19 + 16);
  if (v20)
  {
    v22 = v21;
    if (v21)
    {
      v23 = *(v19 + 24);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      LOBYTE(v21[2].__vftable) ^= 1u;
      *(a2 + 24) = 1;
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
      goto LABEL_34;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = 0;
LABEL_34:
  if (v22)
  {
    *a3 = v22;
    a3[1] = v23;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }
  }
}

void std::__shared_ptr_emplace<csq::v2::AndPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D2C0A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<csq::v2::NotPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5D2C0F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void csq::v2::FunctorBasedPropertyPredicate<csq::v2::PropertyValueBasedFunctor<re::query::EntityActiveProperty,std::equal_to<BOOL>>,re::query::EntityActiveProperty,re::ecs2::Entity,re::query::SceneEntityDataSource>::~FunctorBasedPropertyPredicate(void *a1)
{
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

void re::query::IsDescendantPredicate::~IsDescendantPredicate(re::query::IsDescendantPredicate *this)
{
  *this = &unk_1F5D2C1B8;
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::~__value_func[abi:nn200100](this + 56);

  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(this);
}

{
  *this = &unk_1F5D2C1B8;
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::~__value_func[abi:nn200100](this + 56);
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::query::IsDescendantPredicate::evaluate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a2 + 32);
    if (!v3 || (*(v3 + 304) & 0x80) != 0)
    {
      return 0;
    }

    else
    {
      do
      {
        result = v2 == v3;
        if (v2 == v3)
        {
          break;
        }

        v3 = *(v3 + 32);
        if (!v3)
        {
          break;
        }
      }

      while ((*(v3 + 304) & 0x80) == 0);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_ancester != nullptr", "evaluate", 28);
    result = _os_crash("assertion failure: (m_ancester != nullptr) ");
    __break(1u);
  }

  return result;
}

uint64_t re::query::IsDescendantPredicate::onPerformQuery(re::query::IsDescendantPredicate *this)
{
  result = *(this + 10);
  if (result)
  {
    result = (*(*result + 48))(result);
    *(this + 6) = result;
  }

  return result;
}

uint64_t std::__function::__value_func<re::ecs2::Entity const* ()(void)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void re::query::IsChildPredicate::~IsChildPredicate(re::query::IsChildPredicate *this)
{
  *this = &unk_1F5D2C218;
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::~__value_func[abi:nn200100](this + 56);

  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(this);
}

{
  *this = &unk_1F5D2C218;
  std::__function::__value_func<re::ecs2::Entity const* ()(void)>::~__value_func[abi:nn200100](this + 56);
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::query::IsChildPredicate::evaluate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    if (*(*(*(a3 + 8) + 16) + 16) == a1)
    {
      return 1;
    }

    else
    {
      v6 = *(a2 + 32);
      if (v6)
      {
        if ((*(v6 + 304) & 0x80) != 0)
        {
          v6 = 0;
        }
      }

      return v5 == v6;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) ", "m_parent != nullptr", "evaluate", 81, v3, v4);
    result = _os_crash("assertion failure: (m_parent != nullptr) ");
    __break(1u);
  }

  return result;
}

void re::query::IsChildPredicate::forEachInSubset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 344);
  if (v5)
  {
    v9 = *(v4 + 360);
    v10 = 8 * v5;
    do
    {
      v11 = *v9;
      if ((*(*v9 + 305) & 4) == 0)
      {
        if ((*(*a3 + 16))(a3, *v9, a2))
        {
          std::function<void ()(re::ecs2::Entity *)>::operator()(a4, v11);
        }
      }

      ++v9;
      v10 -= 8;
    }

    while (v10);
  }
}

void re::query::IsChildPredicate::preEvaluateOptimize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v2 = *(v2 + 344);
  }

  *(a2 + 32) = v2;
  v4[0] = v4;
  v4[1] = v4;
  v4[2] = 0;
  std::shared_ptr<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::shared_ptr[abi:nn200100]<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>,0>(&v3, (a1 + 8));
  operator new();
}

uint64_t re::query::IsChildPredicate::onPerformQuery(re::query::IsChildPredicate *this)
{
  result = *(this + 10);
  if (result)
  {
    result = (*(*result + 48))(result);
    *(this + 6) = result;
  }

  return result;
}

uint64_t std::__function::__value_func<re::ecs2::Entity const* ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<REQueryCreateCustomEntityPredicate::$_0,std::allocator<REQueryCreateCustomEntityPredicate::$_0>,BOOL ()(re::ecs2::Entity const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<REQueryCreateCustomEntityPredicate::$_0,std::allocator<REQueryCreateCustomEntityPredicate::$_0>,BOOL ()(re::ecs2::Entity const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2C2A8;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<REQueryCreateCustomEntityPredicate::$_0,std::allocator<REQueryCreateCustomEntityPredicate::$_0>,BOOL ()(re::ecs2::Entity const*)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<REQueryCreateCustomEntityPredicate::$_0,std::allocator<REQueryCreateCustomEntityPredicate::$_0>,BOOL ()(re::ecs2::Entity const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(re::ecs2::Entity const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *csq::v2::CustomPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::~CustomPredicate(void *a1)
{
  *a1 = &unk_1F5D2C338;
  std::__function::__value_func<BOOL ()(re::ecs2::Entity const*)>::~__value_func[abi:nn200100]((a1 + 6));

  return csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(a1);
}

void csq::v2::CustomPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::~CustomPredicate(void *a1)
{
  *a1 = &unk_1F5D2C338;
  std::__function::__value_func<BOOL ()(re::ecs2::Entity const*)>::~__value_func[abi:nn200100]((a1 + 6));
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t csq::v2::CustomPredicate<re::ecs2::Entity,re::query::SceneEntityDataSource>::evaluate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v5 = a2;
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<REQueryCreateCustomComponentPredicate::$_0,std::allocator<REQueryCreateCustomComponentPredicate::$_0>,BOOL ()(re::ecs2::Component const*)>::~__func(v4);
}

void std::__function::__func<REQueryCreateCustomComponentPredicate::$_0,std::allocator<REQueryCreateCustomComponentPredicate::$_0>,BOOL ()(re::ecs2::Component const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<REQueryCreateCustomComponentPredicate::$_0,std::allocator<REQueryCreateCustomComponentPredicate::$_0>,BOOL ()(re::ecs2::Component const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2C398;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<REQueryCreateCustomComponentPredicate::$_0,std::allocator<REQueryCreateCustomComponentPredicate::$_0>,BOOL ()(re::ecs2::Component const*)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<REQueryCreateCustomComponentPredicate::$_0,std::allocator<REQueryCreateCustomComponentPredicate::$_0>,BOOL ()(re::ecs2::Component const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(re::ecs2::Component const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *csq::v2::CustomPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::~CustomPredicate(void *a1)
{
  *a1 = &unk_1F5D2C428;
  std::__function::__value_func<BOOL ()(re::ecs2::Component const*)>::~__value_func[abi:nn200100]((a1 + 6));

  return csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(a1);
}

void csq::v2::CustomPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::~CustomPredicate(void *a1)
{
  *a1 = &unk_1F5D2C428;
  std::__function::__value_func<BOOL ()(re::ecs2::Component const*)>::~__value_func[abi:nn200100]((a1 + 6));
  csq::graph::DirectedGraphNode<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>::~DirectedGraphNode(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t csq::v2::CustomPredicate<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::evaluate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v5 = a2;
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<REQueryCreateIsDescendantCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsDescendantCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::~__func(v4);
}

void std::__function::__func<REQueryCreateIsDescendantCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsDescendantCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<REQueryCreateIsDescendantCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsDescendantCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2C488;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<REQueryCreateIsDescendantCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsDescendantCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<REQueryCreateIsDescendantCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsDescendantCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<REQueryCreateIsChildCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsChildCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<REQueryCreateIsChildCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsChildCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D2C518;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<REQueryCreateIsChildCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsChildCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__func<REQueryCreateIsChildCallbackEntityPredicate::$_0,std::allocator<REQueryCreateIsChildCallbackEntityPredicate::$_0>,re::ecs2::Entity const* ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,REQueryConnectEntityPredicates::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,REQueryConnectEntityPredicates::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,REQueryConnectComponentPredicates::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,REQueryConnectComponentPredicates::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,REQueryCreateEntityQuery::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource> *,REQueryCreateEntityQuery::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Entity,re::query::SceneEntityDataSource>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,REQueryCreateComponentQuery::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__shared_ptr_pointer<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>> *,REQueryCreateComponentQuery::$_0,std::allocator<csq::v2::PredicateBase<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(void **a1)
{
  v2 = *a1;
  v3 = v2 + 3;
  v4 = v2[4];
  if (v4 != v2 + 3)
  {
    do
    {
      v5 = *(v4 + 24);
      v8[0] = *(v4 + 16);
      v8[1] = &v5->__vftable;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(v8);
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      else
      {
        csq::v2::Query<re::ecs2::Entity,re::query::SceneEntityDataSource>::notifyPerformQuery(v8);
      }

      v4 = *(v4 + 8);
    }

    while (v4 != v3);
    v2 = *a1;
  }

  v6 = *(*v2 + 48);

  return v6();
}

uint64_t std::__function::__func<REQueryEvaluateEntityQuery::$_0,std::allocator<REQueryEvaluateEntityQuery::$_0>,void ()(re::ecs2::Entity *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D2C718;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<REQueryEvaluateEntityQuery::$_0,std::allocator<REQueryEvaluateEntityQuery::$_0>,void ()(re::ecs2::Entity *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<REQueryEvaluateEntityQueryWithRootEntity::$_0,std::allocator<REQueryEvaluateEntityQueryWithRootEntity::$_0>,void ()(re::ecs2::Entity *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2C798;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<REQueryEvaluateEntityQueryWithRootEntity::$_0,std::allocator<REQueryEvaluateEntityQueryWithRootEntity::$_0>,void ()(re::ecs2::Entity *)>::operator()(uint64_t result, re::ecs2::ECSHelper **a2, const re::ecs2::Entity *a3)
{
  v3 = *a2;
  if ((*(*a2 + 305) & 4) == 0)
  {
    v4 = result;
    v5 = **(result + 8);
    v6 = !v5 || v3 == v5;
    if (v6 || (result = re::ecs2::ECSHelper::isDescendant(v3, v5, a3), result))
    {
      v7 = *(**(v4 + 16) + 16);

      return v7();
    }
  }

  return result;
}

uint64_t std::__function::__func<REQueryEvaluateEntityQueryWithRootEntity::$_0,std::allocator<REQueryEvaluateEntityQueryWithRootEntity::$_0>,void ()(re::ecs2::Entity *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t csq::v2::Query<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::notifyPerformQuery(void **a1)
{
  v2 = *a1;
  v3 = v2 + 3;
  v4 = v2[4];
  if (v4 != v2 + 3)
  {
    do
    {
      v5 = *(v4 + 24);
      v8[0] = *(v4 + 16);
      v8[1] = &v5->__vftable;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        csq::v2::Query<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::notifyPerformQuery(v8);
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      else
      {
        csq::v2::Query<re::ecs2::Component,re::DynamicArray<re::ecs2::Component*>>::notifyPerformQuery(v8);
      }

      v4 = *(v4 + 8);
    }

    while (v4 != v3);
    v2 = *a1;
  }

  v6 = *(*v2 + 48);

  return v6();
}

uint64_t std::__function::__func<REQueryEvaluateComponentQuery::$_0,std::allocator<REQueryEvaluateComponentQuery::$_0>,void ()(re::ecs2::Component *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D2C818;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<REQueryEvaluateComponentQuery::$_0,std::allocator<REQueryEvaluateComponentQuery::$_0>,void ()(re::ecs2::Component *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t RECIntrospectionAlloc(re *a1, uint64_t a2)
{
  if ((a1 & 0x80000000) != 0)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) byteCount must not be negative.", "byteCount >= 0", "RECIntrospectionAlloc", 9);
    result = _os_crash("assertion failure: (byteCount >= 0) byteCount must not be negative.");
    __break(1u);
  }

  else
  {
    v2 = *(*re::globalAllocators(a1)[2] + 32);

    return v2();
  }

  return result;
}

re *RECIntrospectionFree(re *result)
{
  if (result)
  {
    v1 = *(*re::globalAllocators(result)[2] + 40);

    return v1();
  }

  return result;
}

void REFromToByAnimationDefaultParameters(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x3FF0000000000000;
}

double RESampledAnimationDefaultParameters@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 1;
  *(a1 + 20) = 1023969417;
  return result;
}

int64x2_t REAnimationClipDefaultParameters@<Q0>(int64x2_t *a1@<X8>)
{
  a1->i8[0] = 0;
  a1->i64[1] = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[1] = result;
  a1[2] = 0uLL;
  a1[3].i64[0] = 0x7FF8000000000000;
  a1[3].i32[2] = 1065353216;
  a1[3].i16[6] = 0;
  return result;
}

int64x2_t REAnimationClipDefaultParametersEx@<Q0>(int64x2_t *a1@<X8>)
{
  a1->i8[0] = 0;
  a1->i64[1] = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[1] = result;
  a1[2] = 0uLL;
  a1[3].i64[0] = 0x7FF8000000000000;
  a1[3].i32[2] = 1065353216;
  a1[3].i16[6] = 0;
  a1[3].i8[14] = 0;
  return result;
}

void RECreateBackEase(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = &unk_1F5CAE400;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
}

uint64_t RECreateBounceEase@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *(a2 + 8) = 1;
  *a2 = &unk_1F5CAE458;
  *(a2 + 16) = result;
  *(a2 + 20) = a3;
  return result;
}

double RECreateCircleEase@<D0>(void *a1@<X8>)
{
  *&result = 2;
  a1[1] = 2;
  *a1 = &unk_1F5CAE4B0;
  return result;
}

uint64_t RECreateElasticEase@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *(a2 + 8) = 3;
  *a2 = &unk_1F5CAE508;
  *(a2 + 16) = result;
  *(a2 + 20) = a3;
  return result;
}

void RECreateExponentialEase(uint64_t a1@<X8>, float a2@<S0>)
{
  *(a1 + 8) = 4;
  *a1 = &unk_1F5CAE560;
  *(a1 + 16) = a2;
}

double RECreateHermiteEase@<D0>(void *a1@<X8>)
{
  *&result = 5;
  a1[1] = 5;
  *a1 = &unk_1F5CADE60;
  return result;
}

void RECreateLogarithmicEase(uint64_t a1@<X8>, float a2@<S0>)
{
  *(a1 + 8) = 6;
  *a1 = &unk_1F5CAE5B8;
  *(a1 + 16) = a2;
}

void RECreatePowerEase(uint64_t a1@<X8>, float a2@<S0>)
{
  *(a1 + 8) = 7;
  *a1 = &unk_1F5CAE610;
  *(a1 + 16) = a2;
}

double RECreateSineEase@<D0>(void *a1@<X8>)
{
  *&result = 8;
  a1[1] = 8;
  *a1 = &unk_1F5CAE668;
  return result;
}

void RECreateCubicBezierEase(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *(a1 + 8) = 9;
  *a1 = &unk_1F5CAE6C0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

float REEasingFunctionEvaluateBackEase(float a1, float a2)
{
  v4 = a2 * a2;
  v5 = sinf(a2 * -3.1416);
  v6 = 0.0;
  if (a1 > 0.0)
  {
    v6 = a1;
  }

  return (v5 * (v6 * a2)) + (v4 * a2);
}

float REEasingFunctionEvaluateCircleEase(float a1)
{
  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  if (a1 < -1.0)
  {
    a1 = -1.0;
  }

  return 1.0 - sqrtf(1.0 - (a1 * a1));
}

float REEasingFunctionEvaluateElasticEase(unsigned int a1, float a2, float a3)
{
  v5 = fmaxf(a2, 0.0);
  v6 = a3;
  if (v5 >= 0.00001)
  {
    v7 = 1.0 - expf(v5 * a3);
    v6 = v7 / (1.0 - expf(v5));
  }

  return sinf(((fmaxf(a1, 0.0) + 0.25) * 6.2832) * a3) * v6;
}

float REEasingFunctionEvaluateExponentialEase(float a1, float a2)
{
  if (fabsf(a1) >= 0.00001)
  {
    v3 = 1.0 - expf(a1 * a2);
    return v3 / (1.0 - expf(a1));
  }

  return a2;
}

float REEasingFunctionEvaluateHermiteEase(float a1)
{
  v1 = 0.0;
  if (a1 > 0.0)
  {
    v1 = 1.0;
    if (a1 < 1.0)
    {
      return ((a1 * a1) * (3.0 - a1)) * 0.5;
    }
  }

  return v1;
}

void REEasingFunctionEvaluateLogarithmicEase(float a1, float a2)
{
  if (a2 >= 0.0)
  {
    logf(((a1 + -1.0) * a2) + 1.0);
    logf(a1);
  }
}

uint64_t REEasingFunctionSetMode(uint64_t result, int a2)
{
  if (*(result + 8) <= 8u)
  {
    *(result + 12) = a2;
  }

  return result;
}

uint64_t REEasingFunctionGetMode(uint64_t a1)
{
  if (*(a1 + 8) > 8u)
  {
    return 0;
  }

  else
  {
    return *(a1 + 12);
  }
}

uint64_t REEasingFunctionEvaluate(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

_anonymous_namespace_ *RECreateBackEaseEx(re *a1, float a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *v4 = &unk_1F5CAE400;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1065353216;
  v7[0] = &unk_1F5D2C898;
  v7[3] = v7;
  v8 = v4;
  v9[3] = v9;
  v9[0] = &unk_1F5D2C898;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v7);
  *(v8 + 16) = a2;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v8, v7);
  v5 = v7[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v8);
  return v5;
}

_anonymous_namespace_ *RECreateBounceEaseEx(re *a1, float a2)
{
  v3 = a1;
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 24, 8);
  v5[1] = 1;
  *v5 = &unk_1F5CAE458;
  v5[2] = 0x4000000000000003;
  v9[0] = &unk_1F5D2C918;
  v9[3] = v9;
  v10 = v5;
  v11[3] = v11;
  v11[0] = &unk_1F5D2C918;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v9);
  v6 = v10;
  *(v10 + 4) = v3;
  *(v6 + 20) = a2;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v10, v9);
  v7 = v9[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v10);
  return v7;
}

_anonymous_namespace_ *RECreateCircleEaseEx(re *a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 16, 8);
  v2[1] = 2;
  *v2 = &unk_1F5CAE4B0;
  v5[0] = &unk_1F5D2C998;
  v5[3] = v5;
  v6 = v2;
  v7[3] = v7;
  v7[0] = &unk_1F5D2C998;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v5);
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v6, v5);
  v3 = v5[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v6);
  return v3;
}

_anonymous_namespace_ *RECreateElasticEaseEx(re *a1, float a2)
{
  v3 = a1;
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 24, 8);
  v5[1] = 3;
  *v5 = &unk_1F5CAE508;
  v5[2] = 0x4040000000000003;
  v9[0] = &unk_1F5D2CA18;
  v9[3] = v9;
  v10 = v5;
  v11[3] = v11;
  v11[0] = &unk_1F5D2CA18;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v9);
  v6 = v10;
  *(v10 + 4) = v3;
  *(v6 + 20) = a2;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v10, v9);
  v7 = v9[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v10);
  return v7;
}

_anonymous_namespace_ *RECreateExponentialEaseEx(re *a1, float a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = 4;
  *v4 = &unk_1F5CAE560;
  *(v4 + 16) = 0x40000000;
  v7[0] = &unk_1F5D2CA98;
  v7[3] = v7;
  v8 = v4;
  v9[3] = v9;
  v9[0] = &unk_1F5D2CA98;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v7);
  *(v8 + 16) = a2;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v8, v7);
  v5 = v7[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v8);
  return v5;
}

_anonymous_namespace_ *RECreateHermiteEaseEx(re *a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 16, 8);
  v2[1] = 5;
  *v2 = &unk_1F5CADE60;
  v5[0] = &unk_1F5D2CB18;
  v5[3] = v5;
  v6 = v2;
  v7[3] = v7;
  v7[0] = &unk_1F5D2CB18;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v5);
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v6, v5);
  v3 = v5[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v6);
  return v3;
}

_anonymous_namespace_ *RECreateLogarithmicEaseEx(re *a1, float a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = 6;
  *v4 = &unk_1F5CAE5B8;
  *(v4 + 16) = 0x40000000;
  v7[0] = &unk_1F5D2CB98;
  v7[3] = v7;
  v8 = v4;
  v9[3] = v9;
  v9[0] = &unk_1F5D2CB98;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v7);
  *(v8 + 16) = a2;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v8, v7);
  v5 = v7[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v8);
  return v5;
}

_anonymous_namespace_ *RECreatePowerEaseEx(re *a1, float a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 24, 8);
  *(v4 + 8) = 7;
  *v4 = &unk_1F5CAE610;
  *(v4 + 16) = 0x40000000;
  v7[0] = &unk_1F5D2CC18;
  v7[3] = v7;
  v8 = v4;
  v9[3] = v9;
  v9[0] = &unk_1F5D2CC18;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v7);
  *(v8 + 16) = a2;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v8, v7);
  v5 = v7[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v8);
  return v5;
}

_anonymous_namespace_ *RECreateSineEaseEx(re *a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 16, 8);
  v2[1] = 8;
  *v2 = &unk_1F5CAE668;
  v5[0] = &unk_1F5D2CC98;
  v5[3] = v5;
  v6 = v2;
  v7[3] = v7;
  v7[0] = &unk_1F5D2CC98;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v5);
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v6, v5);
  v3 = v5[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v6);
  return v3;
}

_anonymous_namespace_ *RECreateCubicBezierEaseEx(re *a1, double a2, double a3)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 32, 8);
  *(v6 + 8) = 9;
  *v6 = &unk_1F5CAE6C0;
  *(v6 + 16) = 0x3DCCCCCD3E800000;
  *(v6 + 24) = 0x3F8000003E800000;
  v10[0] = &unk_1F5D2CD18;
  v10[3] = v10;
  v11 = v6;
  v12[3] = v12;
  v12[0] = &unk_1F5D2CD18;
  std::__function::__value_func<void ()(re::EasingFunction *)>::~__value_func[abi:nn200100](v10);
  v7 = v11;
  *(v11 + 16) = a2;
  *(v7 + 24) = a3;
  re::make::shared::object<re::Shareable<std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>,std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>>(&v11, v10);
  v8 = v10[0];
  std::unique_ptr<re::EasingFunction,std::function<void ()(re::EasingFunction*)>>::~unique_ptr[abi:nn200100](&v11);
  return v8;
}

uint64_t REEasingFunctionSetModeEx(uint64_t result, int a2)
{
  v2 = *(result + 24);
  if (*(v2 + 8) <= 8u)
  {
    *(v2 + 12) = a2;
  }

  return result;
}

uint64_t REEasingFunctionGetModeEx(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(v1 + 8) > 8u)
  {
    return 0;
  }

  else
  {
    return *(v1 + 12);
  }
}

void REAnimationHandoffDefaultDescEx(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0x80000000;
  *(a1 + 16) = "";
  *(a1 + 24) = 0;
}

double REAnimationAssetGetTotalDuration(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v5);
  v1 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v5);
  v2 = 0.0;
  if (v1)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      v2 = (*(*v3 + 40))(v3);
    }
  }

  re::AssetHandle::~AssetHandle(v5);
  return v2;
}

uint64_t REAnimationAssetGetName(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v4);
  if (v1)
  {
    v2 = *(*(v1 + 8) + 32);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

void REAnimationAssetGetFromToBy2(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  re::AssetAPIHelper::assetHandleCreate(a1, &v12);
  re::AssetHandle::loadNow(v13, 0);
  ++*(v13 + 276);
  v9 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v12);
  if (!v9)
  {
    goto LABEL_64;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_64;
  }

  if (a2 > 2)
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        if (*(v10 + 8) != 14)
        {
          goto LABEL_64;
        }
      }

      else if (*(v10 + 8) != 15)
      {
        goto LABEL_64;
      }

LABEL_44:
      if (a3 && *(v10 + 96) == 1)
      {
        *a3 = v10 + 112;
      }

      if (a4 && *(v10 + 128) == 1)
      {
        *a4 = v10 + 144;
      }

      if (a5 && (*(v10 + 160) & 1) != 0)
      {
        v11 = 176;
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    if (a2 == 5)
    {
      if (*(v10 + 8) != 16)
      {
        goto LABEL_64;
      }

      goto LABEL_44;
    }

    if (a2 != 6 || *(v10 + 8) != 17)
    {
      goto LABEL_64;
    }

    if (a3 && *(v10 + 96) == 1)
    {
      *a3 = v10 + 112;
    }

    if (a4 && *(v10 + 160) == 1)
    {
      *a4 = v10 + 176;
    }

    if (!a5 || *(v10 + 224) != 1)
    {
      goto LABEL_64;
    }

    v11 = 240;
LABEL_63:
    *a5 = v10 + v11;
    goto LABEL_64;
  }

  if (!a2)
  {
    if (*(v10 + 8) != 11)
    {
      goto LABEL_64;
    }

    if (a3 && *(v10 + 88) == 1)
    {
      *a3 = v10 + 92;
    }

    if (a4 && *(v10 + 96) == 1)
    {
      *a4 = v10 + 100;
    }

    if (!a5 || (*(v10 + 104) & 1) == 0)
    {
      goto LABEL_64;
    }

    v11 = 108;
    goto LABEL_63;
  }

  if (a2 == 1)
  {
    if (*(v10 + 8) != 12)
    {
      goto LABEL_64;
    }
  }

  else if (a2 != 2 || *(v10 + 8) != 13)
  {
    goto LABEL_64;
  }

  if (a3 && *(v10 + 88) == 1)
  {
    *a3 = v10 + 96;
  }

  if (a4 && *(v10 + 104) == 1)
  {
    *a4 = v10 + 112;
  }

  if (a5 && (*(v10 + 120) & 1) != 0)
  {
    v11 = 128;
    goto LABEL_63;
  }

LABEL_64:
  re::AssetHandle::~AssetHandle(&v12);
}

uint64_t REAnimationIsInterpolationEnabled(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v15);
  if (!v16)
  {
    goto LABEL_15;
  }

  v1 = atomic_load((v16 + 896));
  if (v1 != 2)
  {
    goto LABEL_15;
  }

  v2 = re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::assetType();
  v3 = v16;
  if (v16)
  {
    v3 = *(v16 + 280);
  }

  if (v2 == v3)
  {
    v10 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>>(&v15);
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = *(v10 + 1);
    if (v11)
    {
      v12 = atomic_load((v11 + 896));
      if (v12 == 2)
      {
        v7 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(v10);
        goto LABEL_8;
      }

      re::AssetHandle::loadAsync(v10);
    }

LABEL_15:
    IsInterpolationEnabled = 1;
    goto LABEL_16;
  }

  v4 = re::TimelineAsset::assetType(v2);
  v6 = *(v16 + 280);
  if (v4 == v6)
  {
    v7 = re::AssetHandle::blockUntilLoaded<re::TimelineAsset>(&v15);
    if (v7)
    {
LABEL_8:
LABEL_16:
      re::AssetHandle::~AssetHandle(&v15);
      return IsInterpolationEnabled;
    }

LABEL_13:
    IsInterpolationEnabled = 0;
    goto LABEL_16;
  }

  re::internal::assertLog(5, v5, "assertion failure: '%s' (%s:line %i) Unknown timeline asset handle type: %s", "!Unreachable code", "REAnimationIsInterpolationEnabled", 925, *v6);
  result = _os_crash("assertion failure: (!Unreachable code) Unknown timeline asset handle type: %s", v14);
  __break(1u);
  return result;
}

uint64_t anonymous namespace::processIsInterpolationEnabled(_anonymous_namespace_ *this, const re::Timeline *a2)
{
  if (this)
  {
    v2 = this;
    v3 = *(this + 2);
    if ((v3 - 19) < 0x10 || v3 == 61)
    {
      LOBYTE(this) = *(this + 73);
    }

    else
    {
      this = (*(*this + 24))(this, a2);
      if (this)
      {
        v5 = this;
        v6 = 1;
        do
        {
          v7 = (*(*v2 + 32))(v2, v6 - 1);
          if (v6 >= v5)
          {
            break;
          }

          ++v6;
        }

        while ((this & 1) == 0);
      }
    }
  }

  return this & 1;
}

uint64_t REAnimationServiceStartAnimation(re::AnimationManager *a1, uint64_t a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v22);
  re::AssetHandle::loadNow(v23, 0);
  ++*(v23 + 276);
  v5 = re::AssetHandle::loadedAsset<re::TimelineAsset>(&v22);
  v6 = 0;
  if (!v5)
  {
    goto LABEL_49;
  }

  v7 = *(v5 + 16);
  v8 = *(a3 + 24);
  if (v8 > 3)
  {
    if (*(a3 + 24) > 5u)
    {
      if (v8 == 6)
      {
        v6 = 0;
        if (!a1 || !v7)
        {
          goto LABEL_49;
        }

        {
          re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
        }

        v9 = re::introspect<re::GenericSRT<float>>(BOOL)::info;
        v10 = (a3 + 25);
        v11 = (a3 + 32);
        v12 = (a3 + 80);
      }

      else
      {
        if (v8 != 7)
        {
          goto LABEL_49;
        }

        v6 = 0;
        if (!a1 || !v7)
        {
          goto LABEL_49;
        }

        {
          re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0, v17, v18, v19, v20, v21);
        }

        v9 = re::introspect<re::SkeletalPose>(BOOL)::info;
        v10 = (a3 + 25);
        v11 = (a3 + 32);
        v12 = (a3 + 120);
      }

      goto LABEL_46;
    }

    if (v8 == 4)
    {
      v6 = 0;
      if (!a1 || !v7)
      {
        goto LABEL_49;
      }

      {
        re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
      }

      v9 = re::introspect<re::Vector4<float>>(BOOL)::info;
    }

    else
    {
      if (v8 != 5)
      {
        goto LABEL_49;
      }

      v6 = 0;
      if (!a1 || !v7)
      {
        goto LABEL_49;
      }

      {
        re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
      }

      v9 = re::introspect<re::Quaternion<float>>(BOOL)::info;
    }
  }

  else
  {
    if (*(a3 + 24) <= 1u)
    {
      if (!*(a3 + 24))
      {
        v6 = 0;
        if (!a1 || !v7)
        {
          goto LABEL_49;
        }

        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v15);
        }

        v9 = re::introspect<float>(BOOL)::info;
        v10 = (a3 + 25);
        v11 = (a3 + 28);
        v12 = (a3 + 32);
        goto LABEL_46;
      }

      v6 = 0;
      if (!a1 || !v7)
      {
        goto LABEL_49;
      }

      {
        re::introspect<double>(BOOL)::info = re::introspect_double(0, v16);
      }

      v9 = re::introspect<double>(BOOL)::info;
      goto LABEL_41;
    }

    if (v8 == 2)
    {
      v6 = 0;
      if (!a1 || !v7)
      {
        goto LABEL_49;
      }

      {
        re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      }

      v9 = re::introspect<re::Vector2<float>>(BOOL)::info;
LABEL_41:
      v10 = (a3 + 25);
      v11 = (a3 + 32);
      v12 = (a3 + 40);
      goto LABEL_46;
    }

    if (v8 != 3)
    {
      goto LABEL_49;
    }

    v6 = 0;
    if (!a1 || !v7)
    {
      goto LABEL_49;
    }

    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
    }

    v9 = re::introspect<re::Vector3<float>>(BOOL)::info;
  }

  v10 = (a3 + 25);
  v11 = (a3 + 32);
  v12 = (a3 + 48);
LABEL_46:
  re::makeBindPoint(v9, v10, v11, v12, &v24);
  v27.n128_u8[8] = 0;
  v26 = 0;
  v27.n128_u64[0] = 0;
  v27.n128_u32[3] = 0x80000000;
  v28 = "";
  v27.n128_u64[0] = re::AnimationManager::startAnimation(a1, v7, 0, &v24, &v27, 0, 0, &v26, 0, 0);
  v27.n128_u64[1] = v13;
  if (v26)
  {
  }

  re::make::shared::object<re::internal::AnimationControllerData,decltype(nullptr),re::AnimationController const&>(&v26, &v27);
  v6 = v26;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v25);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v25);
LABEL_49:
  re::AssetHandle::~AssetHandle(&v22);
  return v6;
}

uint64_t REAnimatableValueCreate(int a1, uint64_t *a2)
{
  result = 0;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 != 6)
      {
        if (a1 != 7)
        {
          return result;
        }

        v10 = re::globalAllocators(0);
        v6 = (*(*v10[2] + 32))(v10[2], 208, 8);
        *v6 = 0u;
        *(v6 + 16) = 0u;
        *(v6 + 32) = 0u;
        *(v6 + 48) = 0u;
        *(v6 + 64) = 0u;
        *(v6 + 80) = 0u;
        *(v6 + 96) = 0u;
        *(v6 + 112) = 0u;
        *(v6 + 128) = 0u;
        *(v6 + 144) = 0u;
        *(v6 + 160) = 0u;
        *(v6 + 176) = 0u;
        *(v6 + 192) = 0u;
        ArcSharedObject::ArcSharedObject(v6, 0);
        *(v6 + 25) = 0;
        *v6 = &unk_1F5D2CFF0;
        *(v6 + 32) = 0;
        *(v6 + 40) = &str_67;
        *(v6 + 48) = 0u;
        *(v6 + 64) = 0u;
        *(v6 + 80) = 0u;
        *(v6 + 96) = 0;
        *(v6 + 104) = 0;
        *(v6 + 112) = 0;
        *(v6 + 120) = 0;
        *(v6 + 128) = &str_67;
        *(v6 + 136) = 0u;
        *(v6 + 152) = 0u;
        *(v6 + 168) = 0u;
        *(v6 + 184) = 0;
        *(v6 + 192) = 0;
        *(v6 + 200) = 0;
        *(v6 + 24) = 7;
        goto LABEL_19;
      }

      v14 = re::globalAllocators(0);
      v6 = (*(*v14[2] + 32))(v14[2], 128, 16);
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      *(v6 + 64) = 0u;
      *(v6 + 80) = 0u;
      *(v6 + 96) = 0u;
      *(v6 + 112) = 0u;
      ArcSharedObject::ArcSharedObject(v6, 0);
      *v6 = &unk_1F5D2CFA8;
      *(v6 + 32) = 0x3F8000003F800000;
      *(v6 + 40) = 1065353216;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0x3F80000000000000;
      *(v6 + 64) = 0u;
      *(v6 + 80) = 0x3F8000003F800000;
      *(v6 + 88) = 1065353216;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0x3F80000000000000;
      *(v6 + 112) = 0u;
      v7 = 6;
    }

    else if (a1 == 4)
    {
      v12 = re::globalAllocators(0);
      v6 = (*(*v12[2] + 32))(v12[2], 64, 16);
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      ArcSharedObject::ArcSharedObject(v6, 0);
      *v6 = &unk_1F5D2CF18;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      v7 = 4;
    }

    else
    {
      v8 = re::globalAllocators(0);
      v6 = (*(*v8[2] + 32))(v8[2], 64, 16);
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      ArcSharedObject::ArcSharedObject(v6, 0);
      *v6 = &unk_1F5D2CF60;
      *(v6 + 32) = xmmword_1E30474D0;
      *(v6 + 48) = xmmword_1E30474D0;
      v7 = 5;
    }

LABEL_18:
    *(v6 + 24) = v7;
    goto LABEL_19;
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v13 = re::globalAllocators(0);
      v6 = (*(*v13[2] + 32))(v13[2], 48, 8);
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      ArcSharedObject::ArcSharedObject(v6, 0);
      *v6 = &unk_1F5D2CE88;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v7 = 2;
    }

    else
    {
      v9 = re::globalAllocators(0);
      v6 = (*(*v9[2] + 32))(v9[2], 64, 16);
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      ArcSharedObject::ArcSharedObject(v6, 0);
      *v6 = &unk_1F5D2CED0;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
      v7 = 3;
    }

    goto LABEL_18;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    v5 = re::globalAllocators(0);
    v6 = (*(*v5[2] + 32))(v5[2], 48, 8);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    ArcSharedObject::ArcSharedObject(v6, 0);
    *v6 = &unk_1F5D2CE40;
    v7 = 1;
    goto LABEL_18;
  }

  v11 = re::globalAllocators(0);
  v6 = (*(*v11[2] + 32))(v11[2], 40, 8);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  ArcSharedObject::ArcSharedObject(v6, 0);
  *v6 = &unk_1F5D2CDE0;
  *(v6 + 24) = 0;
LABEL_19:
  *a2 = v6;
  return 1;
}

float REAnimatableValueGetFloat(uint64_t a1)
{
  v1 = 28;
  if (*(a1 + 25))
  {
    v1 = 32;
  }

  return *(a1 + v1);
}

double REAnimatableValueGetDouble(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 25))
  {
    v1 = 40;
  }

  return *(a1 + v1);
}

double REAnimatableValueGetVector2F(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 25))
  {
    v1 = 40;
  }

  return *(a1 + v1);
}

__n128 REAnimatableValueGetVector3F(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 25))
  {
    v1 = 48;
  }

  return *(a1 + v1);
}

__n128 REAnimatableValueGetVector4F(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 25))
  {
    v1 = 48;
  }

  return *(a1 + v1);
}

__n128 REAnimatableValueGetQuaternionF(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 25))
  {
    v1 = 48;
  }

  return *(a1 + v1);
}

__n128 REAnimatableValueGetSRT(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 25))
  {
    v1 = 80;
  }

  return *(a1 + v1);
}

__n128 *REAnimatableValueSetSRT(__n128 *result, __n128 a2, __n128 a3, __n128 a4)
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

uint64_t std::__function::__func<RECreateBackEaseEx::$_0,std::allocator<RECreateBackEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateBounceEaseEx::$_0,std::allocator<RECreateBounceEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateCircleEaseEx::$_0,std::allocator<RECreateCircleEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateElasticEaseEx::$_0,std::allocator<RECreateElasticEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateExponentialEaseEx::$_0,std::allocator<RECreateExponentialEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateHermiteEaseEx::$_0,std::allocator<RECreateHermiteEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateLogarithmicEaseEx::$_0,std::allocator<RECreateLogarithmicEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreatePowerEaseEx::$_0,std::allocator<RECreatePowerEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateSineEaseEx::$_0,std::allocator<RECreateSineEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RECreateCubicBezierEaseEx::$_0,std::allocator<RECreateCubicBezierEaseEx::$_0>,void ()(re::EasingFunction *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 re::make::shared::object<re::internal::AnimationControllerData,decltype(nullptr),re::AnimationController const&>(re *a1, __n128 *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 48, 8);
  ArcSharedObject::ArcSharedObject(v5, 0);
  v5[1].n128_u64[1] = 0;
  v5->n128_u64[0] = &unk_1F5D2CD98;
  result = *a2;
  v5[2] = *a2;
  *a1 = v5;
  return result;
}

void re::internal::AnimationControllerData::~AnimationControllerData(re::internal::AnimationControllerData *this)
{
  *this = &unk_1F5D2CD98;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2CD98;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<float>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<float>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<double>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<double>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<re::Vector2<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<re::Vector2<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<re::Vector3<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<re::Vector3<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<re::Vector4<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<re::Vector4<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<re::Quaternion<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<re::Quaternion<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<re::GenericSRT<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<re::GenericSRT<float>>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *anonymous namespace::SharedAnimatableValue<re::SkeletalPose>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5D2CFF0;
  v2 = (a1 + 4);
  re::SkeletalPose::~SkeletalPose((a1 + 15));
  re::SkeletalPose::~SkeletalPose(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void anonymous namespace::SharedAnimatableValue<re::SkeletalPose>::~SharedAnimatableValue(void *a1)
{
  *a1 = &unk_1F5D2CFF0;
  v2 = (a1 + 4);
  re::SkeletalPose::~SkeletalPose((a1 + 15));
  re::SkeletalPose::~SkeletalPose(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *RERayCastResultComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
}

char *RERayCastResultComponentGetHitEntity(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::safeCast(a1, a2);
  v3 = *(v2 + 16);
  v4 = (v2 + 64);

  return re::ecs2::EntityHandle::resolve(v4, v3);
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::safeCast(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &unk_1EE187000;
    if ((*(*a1 + 40))(a1, a2) == re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType)
    {
      return v2;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) component must not be null.", "component", "safeCast", 97);
    _os_crash("assertion failure: (component) component must not be null.");
    __break(1u);
  }

  (*(*v2 + 40))(v2);
  v5 = *(v3[500] + 32);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash("assertion failure: (&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()) Component is wrong type. Expected type: %s, but got: %s", v8, v9);
  __break(1u);
  return result;
}

void *REAudioMixerComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AudioMixerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

void *REVideoPlayerStatusComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void *REVideoPlayerStatusComponentDidUpdateInApp(void *this)
{
  if (this)
  {
    return re::ecs2::VideoPlayerStatusComponent::didUpdateInApp(this);
  }

  return this;
}

uint64_t REVideoPlayerStatusComponentGetContentInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 66);
  }

  return result;
}

uint64_t REVideoPlayerStatusComponentGetMediaInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 65);
  }

  return result;
}

double REVideoPlayerStatusComponentGetCurrentPlayerScreenSize(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 72);
  }

  else
  {
    return 0.0;
  }
}

double REVideoPlayerStatusComponentGetCurrentPlayerScreenVideoDimension(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 80);
  }

  else
  {
    return 0.0;
  }
}

float REVideoPlayerStatusComponentGetSafeZoneRadius(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 28);
  }

  else
  {
    return -1.0;
  }
}

uint64_t REVideoPlayerStatusComponentGetInsets@<X0>(uint64_t result@<X0>, float64x2_t *a2@<X8>)
{
  if (result)
  {
    v4 = *(result + 48);
    v2.i64[1] = v4 >> 64;
    v3 = v4;
    *v2.f32 = v3;
    v5 = vcvt_hight_f64_f32(v2);
    v6 = vcvtq_f64_f32(v3);
  }

  else
  {
    v6 = 0uLL;
    v5 = 0uLL;
  }

  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t REVideoPlayerStatusComponentGetIsPlayControlsOn(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 64);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

double REVideoPlayerStatusComponentGetCurrentSceneSize(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
  }

  else
  {
    *&v1 = 0;
  }

  return *&v1;
}

uint64_t REVideoPlayerStatusComponentGetCurrentViewingMode(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t REVideoPlayerStatusComponentGetCurrentSpatialVideoMode(unsigned __int8 *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &unk_1EE187000;
    if ((*(*a1 + 40))(a1, a2) == re::ecs2::ComponentImpl<re::ecs2::VideoPlayerStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      return v2[208];
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) component must not be null.", "component", "safeCast", 97);
    _os_crash("assertion failure: (component) component must not be null.");
    __break(1u);
  }

  (*(*v2 + 40))(v2);
  v5 = *(v3[448] + 32);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash("assertion failure: (&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()) Component is wrong type. Expected type: %s, but got: %s", v8, v9);
  __break(1u);
  return result;
}

re *REAnimationControllerCopyEx(re::ecs2::AnimationComponent *a1, uint64_t a2)
{
  result = re::ecs2::AnimationComponent::shadowAnimationController(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = re::globalAllocators(result);
    v6 = (*(*v5[2] + 32))(v5[2], 48, 8);
    return re::internal::AnimationControllerData::AnimationControllerData(v6, a1, v4);
  }

  return result;
}

re::internal::AnimationControllerData *REAnimationControllerCopy(re *a1, unint64_t a2)
{
  if (*(a1 + 6) <= a2)
  {
    return 0;
  }

  v3 = *(a1 + 8) + 72 * a2;
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 48, 8);
  return re::internal::AnimationControllerData::AnimationControllerData(v5, a1, (v3 + 56));
}

double REAnimationControllerGetDuration(uint64_t a1)
{
  v1 = re::AnimationController::timeline((a1 + 32));
  if (!v1)
  {
    return 0.0;
  }

  v2 = *(*v1 + 40);

  v2();
  return result;
}

double REAnimationControllerGetTime(uint64_t a1, double *a2)
{
  re::AnimationController::time((a1 + 32), v4);
  if (v4[0] == 1)
  {
    result = v5;
    *a2 = v5;
  }

  return result;
}

re::internal::AnimationControllerData *re::internal::AnimationControllerData::AnimationControllerData(re::internal::AnimationControllerData *this, re::ecs2::AnimationComponent *a2, const re::AnimationController *a3)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = a2;
  *this = &unk_1F5D2CD98;
  if (a2)
  {
    v6 = a2 + 8;
  }

  *(this + 2) = *a3;
  return this;
}

_anonymous_namespace_ *REPerformanceMetricsGetFrameMetrics(_anonymous_namespace_ *result, uint64_t a2)
{
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  if ((*(result + 428) & 0x10) != 0)
  {
    result = re::ServiceLocator::service<re::RenderManager>(*(result + 86));
    v3 = *(result + 14);
    if (v3)
    {
      v4 = *(v3 + 1648);
      if (v4)
      {
        *(a2 + 4) = *(v4 + 236) - *(v4 + 240);
        *(a2 + 8) = *(v4 + 232);
        if (*a2 >= 2u)
        {
          *(a2 + 16) = 0;
          *(a2 + 12) = 0;
        }
      }
    }
  }

  return result;
}

void *REMaterialParameterBlockArrayComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REMaterialParameterBlockArrayComponentClear(uint64_t a1)
{
  re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::clear(a1 + 32);
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(a1 + 72);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentResize(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2)
{
  re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetParameterCountAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v4 = *(a1 + 6);
  if (v4 <= a2)
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
    v17 = a2;
    v18 = 2048;
    v19 = v4;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(a1 + 8) + 32 * a2);
  v6 = *v5;
  if (!*v5)
  {
    v6 = v5[1];
  }

  return *(v6 + 332);
}

uint64_t REMaterialParameterBlockArrayComponentClearBlockAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v4 = *(a1 + 6);
  if (v4 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v4;
    _os_log_send_and_compose_impl(v13, &v21, &v30, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
LABEL_22:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v4;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v4;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(a1 + 8) + 32 * a2;
  v6 = *v5;
  if ((*v5 || (v6 = *(v5 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v6);
    ++*(v5 + 16);
    v7 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v5, v30);
    *(v5 + 8) = 0;
    if (v7)
    {
    }
  }

  v4 = *(a1 + 6);
  if (v4 <= a2)
  {
    goto LABEL_22;
  }

  v8 = *(a1 + 8) + 32 * a2;
  ++*(v8 + 16);
  re::ecs2::SerializableMaterialParameterBlock::clearParameters(*v8);
  v4 = *(a1 + 11);
  if (v4 <= a2)
  {
    goto LABEL_26;
  }

  v9 = *(a1 + 13);
  v10 = *(v9 + 8 * a2);
  if (v10)
  {

    *(v9 + 8 * a2) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

CFStringRef REMaterialParameterBlockArrayComponentCopyParameterNameAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v6 = *(a1 + 6);
  if (v6 <= a2)
  {
    v19 = 0;
    memset(v28, 0, sizeof(v28));
    v16 = MEMORY[0x1E69E9C10];
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 789;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v6;
    _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
    _os_crash_msg();
    __break(1u);
  }

  v7 = (*(a1 + 8) + 32 * a2);
  v8 = *v7;
  if (!*v7)
  {
    v8 = v7[1];
  }

  v9 = *(v8 + 336);
  if (v9)
  {
    v10 = 0;
    v11 = *(v8 + 320);
    while ((*v11 & 0x80000000) == 0)
    {
      v11 += 80;
      if (v9 == ++v10)
      {
        LODWORD(v10) = *(v8 + 336);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 == v9)
  {
    return 0;
  }

  v12 = 0;
  while (v12 != a3)
  {
    ++v12;
    if (v9 <= v10 + 1)
    {
      v13 = v10 + 1;
    }

    else
    {
      v13 = *(v8 + 336);
    }

    while (v13 - 1 != v10)
    {
      LODWORD(v10) = v10 + 1;
      if ((*(*(v8 + 320) + 320 * v10) & 0x80000000) != 0)
      {
        goto LABEL_24;
      }
    }

    LODWORD(v10) = v13;
LABEL_24:
    if (v10 == v9)
    {
      return 0;
    }
  }

  v15 = *(*(v8 + 320) + 320 * v10 + 16);

  return CFStringCreateWithCString(0, v15, 0x8000100u);
}

_anonymous_namespace_ *REMaterialParameterBlockArrayComponentGetParameterTypeAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (a3)
  {
    v6 = *a3;
    if (*a3)
    {
      v7 = a3[1];
      if (v7)
      {
        v8 = a3 + 2;
        do
        {
          v6 = 31 * v6 + v7;
          v9 = *v8++;
          v7 = v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v20[0] = 2 * v6;
  v20[1] = a3;
  v10 = *(a1 + 6);
  if (v10 <= a2)
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

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v10;
    _os_log_send_and_compose_impl(v18, &v21, v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20[0]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = (*(a1 + 8) + 32 * a2);
  v12 = *v11;
  if (!*v11)
  {
    v12 = v11[1];
  }

  v13 = (0xBF58476D1CE4E5B9 * (v6 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v6) >> 31))) ^ ((0xBF58476D1CE4E5B9 * (v6 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v6) >> 31))) >> 27);
  v14 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v12 + 304, v20, (0x94D049BB133111EBLL * v13) ^ ((0x94D049BB133111EBLL * v13) >> 31), v30);
  if (HIDWORD(v30[0]) == 0x7FFFFFFF)
  {
    v15 = 0;
  }

  else
  {
    v14 = re::convert(*(*(v12 + 320) + 320 * HIDWORD(v30[0]) + 32));
    v15 = v14;
  }

  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  return v15;
}

uint64_t REMaterialParameterBlockArrayComponentGetParameterTypeWithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v6 = *(a1 + 6);
  if (v6 <= a2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v6;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v7 = (*(a1 + 8) + 32 * a2);
  v8 = *v7;
  if (!*v7)
  {
    v8 = v7[1];
  }

  v9 = 0xBF58476D1CE4E5B9 * ((*(a3 + 24) >> 31) ^ (*(a3 + 24) >> 1));
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v8 + 304, (a3 + 24), (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v23);
  if (HIDWORD(v23[0]) == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return re::convert(*(*(v8 + 320) + 320 * HIDWORD(v23[0]) + 32));
  }
}

uint64_t REMaterialAssetGetTextureParameterType(uint64_t a1, const char *a2, _DWORD *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, v18);
  v5 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v18);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *(v5 + 1776);
  if (!v6)
  {
    goto LABEL_11;
  }

  if (!*(v6 + 280))
  {
    v19 = 0;
    memset(v28, 0, sizeof(v28));
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v20 = 136315906;
    v21 = "operator[]";
    v22 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v23 = 468;
    v24 = 2048;
    v25 = 0;
    v26 = 2048;
    v27 = 0;
    _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18[0], v18[1]);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(*(v6 + 288) + 48);
  if (v7)
  {
    v8 = (v7 + 8);
    CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(v7);
    v10 = *(CustomUniformsArgument + 9);
    if (v10)
    {
      v11 = *(CustomUniformsArgument + 10) + 64;
      v12 = 80 * v10;
      while (*(v11 + 13) != 1 || strcmp(*(v11 - 40), a2))
      {
        v11 += 80;
        v12 -= 80;
        if (!v12)
        {
          goto LABEL_10;
        }
      }

      *a3 = *v11;
      v13 = 1;
    }

    else
    {
LABEL_10:
      v13 = 0;
    }
  }

  else
  {
LABEL_11:
    v13 = 0;
  }

  re::AssetHandle::~AssetHandle(v18);
  return v13;
}

uint64_t REMaterialAssetGetParameterType(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v22);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v22);
  if (!v3)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v4 = v3;
  v5 = re::AssetHandle::AssetHandle(v31, (v3 + 40));
  v6 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v5);
  OriginalConstantParameterType = re::MaterialDefinitionAsset::getOriginalConstantParameterType(v6, a2);
  if (OriginalConstantParameterType)
  {
    goto LABEL_4;
  }

  OriginalConstantParameterType = re::MaterialAsset::getOriginalConstantParameterType(v4, a2);
  if (OriginalConstantParameterType)
  {
    goto LABEL_4;
  }

  re::MaterialParameterBlock::handle(&v28, *(v4 + 1784), a2);
  v10 = BYTE4(v29);
  if ((BYTE4(v29) & 7) == 0)
  {
    v11 = *(v4 + 1776);
    if (a2)
    {
      v12 = *a2;
      if (*a2)
      {
        v13 = a2[1];
        if (v13)
        {
          v14 = a2 + 2;
          do
          {
            v12 = 31 * v12 + v13;
            v15 = *v14++;
            v13 = v15;
          }

          while (v15);
        }

        v12 &= ~0x8000000000000000;
      }
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v24 = v12;
    re::MaterialParameterTable::handle((v11 + 304), &v24, v25);
    v29 = v26;
    v30 = v27;
    v24 = 0;
    v10 = BYTE4(v26);
    if ((BYTE4(v26) & 7) == 0)
    {
      v16 = *(*(v4 + 1776) + 16);
      if (a2)
      {
        v17 = *a2;
        if (*a2)
        {
          v18 = a2[1];
          if (v18)
          {
            v19 = a2 + 2;
            do
            {
              v17 = 31 * v17 + v18;
              v20 = *v19++;
              v18 = v20;
            }

            while (v20);
          }

          v17 &= ~0x8000000000000000;
        }
      }

      else
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v23 = v17;
      re::MaterialParameterTable::handle((v16 + 248), &v23, v25);
      v30 = v27;
      v29 = v26;
      v23 = 0;
      v10 = BYTE4(v26);
      if ((BYTE4(v26) & 7) == 0)
      {
        v8 = 0;
        goto LABEL_5;
      }
    }
  }

  v21 = v10 & 7;
  if (v21 > 2)
  {
    if (v21 == 3)
    {
      OriginalConstantParameterType = 128;
      goto LABEL_4;
    }

    if (v21 == 4)
    {
      OriginalConstantParameterType = 192;
      goto LABEL_4;
    }

LABEL_32:
    OriginalConstantParameterType = 0;
    goto LABEL_4;
  }

  if (v21 == 1)
  {
    OriginalConstantParameterType = v30;
    goto LABEL_4;
  }

  if (v21 != 2)
  {
    goto LABEL_32;
  }

  OriginalConstantParameterType = 64;
LABEL_4:
  v8 = re::convert(OriginalConstantParameterType);
LABEL_5:
  re::AssetHandle::~AssetHandle(v31);
LABEL_7:
  re::AssetHandle::~AssetHandle(v22);
  return v8;
}

uint64_t REMaterialAssetGetParameterTypeWithHandle(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v17);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v17);
  if (v3)
  {
    v4 = v3;
    v5 = re::AssetHandle::AssetHandle(v27, (v3 + 40));
    v6 = re::AssetHandle::blockUntilLoaded<re::MaterialDefinitionAsset>(v5);
    v24 = *(a2 + 24) >> 1;
    v7 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v6 + 2280, &v24);
    if (v7)
    {
      v8 = *(v7 + 20);
      if (v8)
      {
        goto LABEL_20;
      }
    }

    v24 = *(a2 + 24) >> 1;
    v9 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v4 + 1792, &v24);
    if (v9)
    {
      v8 = *(v9 + 20);
      if (v8)
      {
        goto LABEL_20;
      }
    }

    v10 = *(v4 + 1784);
    v23 = *(a2 + 24) >> 1;
    re::MaterialParameterBlock::handle(v10, &v23, &v24);
    v23 = 0;
    v11 = BYTE4(v25);
    if ((BYTE4(v25) & 7) == 0)
    {
      v12 = *(v4 + 1776);
      v19 = *(a2 + 24) >> 1;
      re::MaterialParameterTable::handle((v12 + 304), &v19, v20);
      v25 = v21;
      v26 = v22;
      v19 = 0;
      v11 = BYTE4(v21);
      if ((BYTE4(v21) & 7) == 0)
      {
        v13 = *(*(v4 + 1776) + 16);
        v18 = *(a2 + 24) >> 1;
        re::MaterialParameterTable::handle((v13 + 248), &v18, v20);
        v26 = v22;
        v25 = v21;
        v18 = 0;
        v11 = BYTE4(v21);
        if ((BYTE4(v21) & 7) == 0)
        {
          v15 = 0;
          goto LABEL_21;
        }
      }
    }

    v14 = v11 & 7;
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v8 = 128;
        goto LABEL_20;
      }

      if (v14 == 4)
      {
        v8 = 192;
        goto LABEL_20;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v8 = v26;
        goto LABEL_20;
      }

      if (v14 == 2)
      {
        v8 = 64;
LABEL_20:
        v15 = re::convert(v8);
LABEL_21:
        re::AssetHandle::~AssetHandle(v27);
        goto LABEL_22;
      }
    }

    v8 = 0;
    goto LABEL_20;
  }

  v15 = 0;
LABEL_22:
  re::AssetHandle::~AssetHandle(v17);
  return v15;
}

uint64_t REMaterialAssetGetMetalShaderParameterType(uint64_t a1, char *a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v14);
  v3 = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(v14);
  if (v3)
  {
    v4 = *(v3 + 1776);
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

    if (*(v4 + 120))
    {
      v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
      v10 = *(*(v4 + 128) + 4 * ((v9 ^ (v9 >> 31)) % *(v4 + 144)));
      if (v10 != 0x7FFFFFFF)
      {
        v13 = *(v4 + 136);
        if (*(v13 + 24 * v10 + 8) == v5)
        {
LABEL_16:
          v11 = re::convert(*(v13 + 24 * v10 + 16));
          goto LABEL_12;
        }

        while (1)
        {
          LODWORD(v10) = *(v13 + 24 * v10) & 0x7FFFFFFF;
          if (v10 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v13 + 24 * v10 + 8) == v5)
          {
            goto LABEL_16;
          }
        }
      }
    }
  }

  v11 = 0;
LABEL_12:
  re::AssetHandle::~AssetHandle(v14);
  return v11;
}

uint64_t REMaterialParameterBlockArrayComponentSetBlockAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (a3)
  {
    v6 = (a3 + 8);
  }

  v7 = *(a1 + 11);
  if (v7 <= a2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v7;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(a1 + 13);
  v9 = *(v8 + 8 * a2);
  *(v8 + 8 * a2) = a3;
  if (v9)
  {
  }

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetBlockAtIndex(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 88) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 104) + 8 * a2);
  }
}

void REMaterialParameterBlockArrayComponentClearParameterAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v6 = *(a1 + 6);
  if (v6 <= a2)
  {
    *&v26.var0 = 0;
    v40 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v31 = 789;
    v32 = 2048;
    v33 = a2;
    v34 = 2048;
    v35 = v6;
    _os_log_send_and_compose_impl(v18, &v26, &v36, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v25);
    _os_crash_msg();
    __break(1u);
LABEL_34:
    v27 = 0;
    v40 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v31 = 789;
    v32 = 2048;
    v33 = a2;
    v34 = 2048;
    v35 = v6;
    _os_log_send_and_compose_impl(v21, &v27, &v36, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v25, *&v26.var0);
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  v7 = *(a1 + 8) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v36, v8);
    ++*(v7 + 16);
    v9 = v36;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v36);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  if (a3)
  {
    v10 = *a3;
    if (*a3)
    {
      v11 = a3[1];
      if (v11)
      {
        v12 = a3 + 2;
        do
        {
          v10 = 31 * v10 + v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  *&v26.var0 = 2 * v10;
  v26.var1 = a3;
  v6 = *(a1 + 6);
  if (v6 <= a2)
  {
    goto LABEL_34;
  }

  v14 = *(a1 + 8) + 32 * a2;
  ++*(v14 + 16);
  if (re::ecs2::SerializableMaterialParameterBlock::removeParameter(*v14, &v26))
  {
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v6 = *(a1 + 11);
  if (v6 <= a2)
  {
LABEL_38:
    v27 = 0;
    v40 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v31 = 789;
    v32 = 2048;
    v33 = a2;
    v34 = 2048;
    v35 = v6;
    _os_log_send_and_compose_impl(v24, &v27, &v36, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v25, *&v26.var0);
    _os_crash_msg();
    __break(1u);
  }

  v15 = *(a1 + 13);
  v16 = *(v15 + 8 * a2);
  if (v16)
  {
    re::MaterialParameterBlock::handle(&v36, v16, a3);
    if ((BYTE12(v36) & 7) != 0)
    {
      re::MaterialParameterBlock::removeParameter(*(v15 + 8 * a2), a3);
    }

    v16 = re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }
}

uint64_t REMaterialParameterBlockArrayComponentClearParameterWithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v6 = *(a1 + 6);
  if (v6 <= a2)
  {
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v22 = 789;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v6;
    _os_log_send_and_compose_impl(v13, &v18, &v27, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v7 = *(a1 + 8) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v27, v8);
    ++*(v7 + 16);
    v9 = v27;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v27);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  v6 = *(a1 + 6);
  if (v6 <= a2)
  {
LABEL_21:
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v22 = 789;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v6;
    _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 8) + 32 * a2;
  ++*(v10 + 16);
  result = re::ecs2::SerializableMaterialParameterBlock::removeParameter(*v10, (a3 + 24));
  if (result)
  {

    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetBoolAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, char a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  LOBYTE(v30) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, a3, 2, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetBoolWithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, char a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  LOBYTE(v30) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, (a3 + 24), 2, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetBoolAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, _BYTE *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::BOOLValue(v10, a3, &v19 + 6);
  if (BYTE6(v19) == 1)
  {
    v11 = HIBYTE(v19);
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 13);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v29, result, a3);
    if ((BYTE12(v29) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v29, 2))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v29);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}